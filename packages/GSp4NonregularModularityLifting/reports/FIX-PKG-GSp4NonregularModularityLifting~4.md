# GSp4NonregularModularityLifting repair report

## F01 (P1) — applied

Scalar adjoint invariant → scalar-derived dual-Selmer class in the actual dyadic strict-conjugacy complex. Replaced the h³=1 and h¹=5/6 comparison by h³=0 for nonempty T, h²=dim dual H¹, and the trace-pairing computation Tr(I₂)=0. Kept the sufficiently deep Taylor–Wiles survival statement and the supplier unchanged.

Evidence: BCGP25 line 5535 defines the local µ_v; line 5554 defines its dual Selmer condition. BCGP25 line 5567 gives vanishing outside degrees 1 and 2 for nonempty T and identifies h² with the dual H¹ dimension (§5.4, pp.122–123). BCGP25 line 5640, Lemma 5.5.3, p.125, places the surviving scalar-derived class in dual H¹; line 5664 computes the scalar-scalar pairing through Tr(Iₙ). For n=2 in characteristic two this factor is 0. With #T=3 and h²=1, the replacement gives h³=0 and dual dimension 1, without fixing h¹.

Pattern search covered the entire README, Lean docstring and permitted plan gaps. The incorrect h³ inference and h¹ comparison occurred only in the regular-ordinary supplier Check. The fixed-multiplier CG presentation in §8.1 concerns a different complex and retains its own exact supplier gap. GlobalGaloisDeformations §8.3 explicitly uses index-two prime-to-p descent in its odd-p polarized Euler formula; it supplies no contrary dyadic formula. The BCGP25 manifest locator now includes §5.4 and Lemma 5.5.3. No Lean Check declaration was introduced.

## F02 (P2) — applied

Fixed-E multiplicity one at arbitrary points → multiplicity one over E′=κ(q′) for closed arithmetic points with finite E′/E. Made finite coefficient extension and dimension descent explicit. Updated conventions, §11.3 and §11.5 Checks, §11.6’s E-rational specialization, the Layer 11 example and the Lean headline description. Preserved component, conductor, stabilization, regularity and support hypotheses.

Evidence: BCGP25 line 8085 specifies an O-valued point before the E-dimension identity at line 8090 and Lemma 7.5.8 at line 8096. After a finite extension L containing the point and refinements, apply that statement over O_L. For V=M_w⊗_RS E′, extension of scalars gives dim_L(V⊗_E′L)=dim_E′V; restriction of scalars gives dim_EV=[E′:E]dim_E′V. These are different operations. The source’s local conductor and refinement arguments remain at BCGP25 line 8119.

The quadratic witness is exact: squares modulo 7 are 0,1,2,4, so t²−3 is irreducible over ℚ₇. For A=ℚ₇[t], M=A, the fiber at (t²−3) has κ-dimension 1 and ℚ₇-dimension 2. An E-rational rank-one fiber has E-dimension 1; a zero fiber has dimension 0. Four rank-one fibers over the quadratic field have total κ-dimension 4 and total E-dimension 8. At the original O-valued weight-two point q, κ(q)=E, so the classicality count remains 4n=4. No theorem name changed.

## F03 (P3) — applied

Refinement contract’s Lemma 7.5.2 → proof of Lemma 7.5.8, pp.176–177, especially p.177, in both README and its matching top-level plan gap. Definitions 7.1.1–7.1.2 → Definition 7.1.1, Lemma 7.1.2 and Hypothesis 7.1.3, pp.153–154. Retained Lemma 7.5.2 for conductor constancy. Recorded BCGP21 refinement locators in the existing manifest entry.

Evidence: BCGP25 line 8026 states conductor equality for two pure points on a common component away from p. BCGP25 line 8119 begins the separate local multiplicity argument; line 8120 treats p, line 8123 treats r. Its cited BCGP21 Propositions 2.4.24 and 2.4.26 are at BCGP21 line 1283 and line 1338, pp.26–27: the regular ordinary line has dimension 1, whereas the weight-two full ordinary block can have dimension 2 before selecting a refinement. BCGP25 line 6927 is Definition 7.1.1; line 6933 is Lemma 7.1.2; line 6959 is Hypothesis 7.1.3. The source versions remain arXiv:2502.20645v1 and arXiv:1812.09269v3.

Pattern search retained every genuine conductor use in §11.3, corrected both occurrences of the refinement-gap sentence, and found no other plural-definition locator in the editable package text. Historical design nodes and earlier reports were not edited; only the permitted top-level gaps value changed in the plan.

## Required checks and scope

- Final `lake env lean` elaboration of `packages/GSp4NonregularModularityLifting/Suggested.lean`, run from the pinned content checkout: exit 0, empty stdout/stderr. No Tau Ceti module import or targeted object build was needed. The file contains one `import Mathlib`, no declarations, no admitted data and no options. Its only change is the missing-carrier description of residue-field multiplicity one.
- Mechanically enumerated all own declarations to construct the requested `#check @name` set: there are zero. Thus there are no dropped binders or README/signature discrepancies to repair. Elaborated one scratch signature-audit file with the native `#check` statements: exit 0. It confirms `ZMod : ℕ → Type`, generalized eigenspaces over a commutative ring/additive group/module, their natural-exponent kernel criterion, and `IsIdempotentElem` requiring only multiplication. No scratch declaration was added to the package.
- Dependency check, with the requested configuration, README, name, order and `--movable`: exit 0:

```text
depcheck: 55 roadmaps, 632 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line was emitted. No merge-order edit was made.

- Citation resolver: exit 0; no cross-roadmap citation or Lean name listed as missing. It reports indexed main bbed953 and 365 open heads, index dated 2026-10-25T16:46:16Z, and explicitly says it did not inspect pinned Lake packages. Direct inspection supplemented that limitation. The actual supplied content checkout is a8132fb2; unmerged suppliers were read using their indexed open heads, not inferred to be on that checkout’s main.
- Pins match the supplied manifest: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Directly inspected `Mathlib/Data/ZMod/Defs.lean:138`, `Mathlib/LinearAlgebra/Eigenspace/Basic.lean:71` and line 89, `Mathlib/Algebra/Group/Idempotent.lean:37`, and `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean:695` and line 712. Generalized eigenspaces provide increasing kernels, without semisimple decomposition; continuous H¹ carries the action/continuity assumptions and no arithmetic finite-generation or discrete-topology conclusion.
- Object searches at those pins found no integral genus-two coherent Hecke carrier, higher-Hida module, ordinary symplectic deformation ring or geometric theta carrier making an omitted headline statable with elementary definitions. Nothing was inserted as a free-predicate substitute.
- All seven manifest works remain certified legal cached texts with their existing unique keys. Read the changed claims at the source lines above; no new work, download, waiver or missing-reference request was necessary. Added only the relevant locators and cited-for fields to BCGP25 and BCGP21. No extracted source text was copied into the package.
- Structural checks: 12 layers, 61 numbered target subsections, 65 Checks blocks, 210 bullets, minimum three bullets per block. All 20 plan gap needs sentences match their README contracts exactly. Structural comparison against HEAD confirms that only `gaps` changed in the plan, and only the needs sentence of `gsp4-ordinary-neat-refinement-lines` changed within it.
- `git diff --check`: exit 0, empty output. No extra gate failures were supplied in the brief. Metadata, other packages, tooling, merge order and pull-request text are unchanged. No commit was made.

## Citation and ownership audit

Read the main-branch `TauCetiRoadmap/ModularForms/README.md` and `TauCetiRoadmap/ClassFieldTheory/README.md` for shape. Used object searches through `roadmaps grep`, supplier reads through `roadmaps show`, the supplied board designs, and direct pinned-source searches. The repairs remain genus-two applications of existing owners; they add no generic Selmer complex, field-base-change theory or local representation construction. Ownership against open pull requests without supplied readable files was not independently checked.

| Supplier | Resolved sections and boundary retained |
| --- | --- |
| ArithmeticGaloisRepresentations | §§5.11, 6.4, 7.3–7.6, 7.9–7.12; §7.6’s semisimplicity criteria require Frobenius-polynomial annihilation and nonzero representation. Integral-enormity and Weil-restriction extensions remain gaps. |
| AutomorphicBundles | B3–B5 and B3.HT.1–3 at the open head; actual boundary coefficients, Schur weights, expansion and period inputs. |
| AutomorphicBundlesPartII | IC.1–IC.8 in `packages/AutomorphicBundlesPartII/design/README.md`; coherent duality, equivariance, normalization, vanishing and boundary decomposition. Selected p-actions and selected rank comparison remain exact gaps. |
| AutomorphicGaloisRepresentationsPartII | AG2.P, AG2.5–AG2.6; the headings include GSp₄ construction/normalization, crystalline Hodge comparison and ordinary triangular shape. Classification and distinct-root premises retained. |
| AutomorphicLFunctionsAndLocalFactors | AL.4; local parameters and determinant normalizations. |
| ModularityAndLanglandsExtensions | §§3.2, 3.5(vii), 3.9, 3.26; weighted stabilization, local generic packets and classification. |
| DeformationAndDerivedPatchingAlgebra | §§3.1–3.3, 5.1–5.9, 6.1–6.7, 7.6–7.10; three distinct patching branches, marked-point comparisons and projective norm comparison. |
| EndoscopicTransferAndUnitaryTraceComparison | §§11.1 and 13.2; GSp₄ transfer and solvable descent with irreducible restriction and the CM Tate twist. |
| GlobalGaloisDeformations | R04.3–R04.6 and G7; CG, P12 and two-direction torus extensions stay separate gaps. The odd-p complex in §8.3 does not identify the dyadic complex. |
| HodgeTateAndCanonicalSubgroups | §§0.2–0.5, 0.14–0.15; Hodge–Tate maps and primary Hasse section, with geometric covers supplied separately. |
| IntegralHeckeAndGaloisDeterminants | §§0.7, 1.1–1.7, 2.1–2.3, IHG.3a–IHG.4; actual images, projectors, full multipliers and determinant reconstruction. §1.5 still has p>2 for prescribed-multiplier symplectic descent; its all-p extension stays a gap. |
| LocalGaloisDeformationRings | §§2.7, 2.17, 2.25, 6.3, 6.14, 6.26–6.27, 6.29 at the indexed head. `GSp4.MinimalAt` is in §2.25 and `GSp4.SiegelOrdinary` in §6.14; these are supplier targets rather than missing pinned declarations. |
| PadicFamiliesPartII | E6, S7, F8 and K2 in `packages/PadicFamiliesPartII/design/README.md`; finite projective modules, field-valued specialization and torus involution retained. |
| OverconvergentAutomorphicForms | §§8.6–8.7 at the supplied open head; analytic coefficients, finite trivializing covers and quasi-Stein hypotheses. |
| PadicHodgeTheory | §§3.2–3.6, 4.4, 5.3–5.4; coefficient extension, twists, Sen and period conventions. |
| ShimuraCompactifications | C3.9–C3.10 and C5.13–C5.18; fans, boundary models, trace and positivity. |
| ShimuraData | §§5.9–5.10 and 5.18; CG, Kostant and Pilloni coordinate dictionaries. |
| SmoothRepresentationsOfLocalGroups | SR.2.1–SR.2.3 and SR.4.1–SR.4.5; generic induction/Satake inputs. The specialized newvector/refinement statements remain requested gaps, with the corrected source pinpoint. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory | R07.1–R07.2; multiplicative-connected filtration, invariant differentials and BT₁ Hasse–Witt maps. |
| PotentialModularityAndCompatibleSystems | §8.3 concerns the rank-two ordinary unitary input, not a replacement for the arbitrary-rank dyadic supplier. |

The OrdinaryAutomorphicFormsAndModularityLiftingPartII design README cited in the incoming review is not present among the readable supplier files in this workspace, and `roadmaps show` finds no main/open-head roadmap under that name. Its existing `gap:dyadic-ordinary-support` and `gap:symplectic-ordinary-component-support` remain unchanged. F01 was verified directly in BCGP25, including its actual cohomology carrier; no claim of rereading the absent supplier is made. Its admission and order placement were already classified as external in the earlier finding and explicitly settled by the incoming review; this round does not reopen that decision or invent a supplier target.

## Adversarial mathematics pass

Each row below gives explicit values for a target, definition, API identity or convention. These are discriminating instances and boundary models, not numerical proofs of conditional deep theorems. In particular the h³=0 statement is read in the actual BCGP complex; it is not deduced by a matrix experiment. Unchanged conditional proof obligations remain obligations. Arithmetic coefficients are integers of a finite extension of ℚₚ with prime p and m≥1; zero rings and equal-characteristic DVRs are rejection controls for that convention. Zero modules, empty auxiliary sets and finite coefficient extensions are genuine admitted inputs.

| Statement | Instances tried | Values computed on the two sides or competing models | Result | Change |
| --- | --- | --- | --- | --- |
| Coefficient objects | m=0,1,2; O=ℤ₂ and 𝔽₂[[t]] | Quotient lengths 0,1,2; characteristics 0 and 2; ϖ(E/O)=E/O but ϖk=0 | Arithmetic and torsion universes distinct | Fiber-field convention clarified |
| Closed arithmetic fiber convention | E′/E quadratic, V=E′; V=0 | dim_E′V=1, dim_EV=2; both zero dimensions 0 | Field must be named | F02 |
| Geometric Frobenius and WD | q=3, r(F)=diag(1,3), N=E₁₂ | r(F)Nr(F)⁻¹=N/3 versus inverse convention 3N | Direction fixed | None |
| Cyclotomic/full multiplier | a=2, ℓ=3; ν=±1 | ε=1/3, ε⁻¹=3, det=9; (±1)²=1 | Determinant does not fix multiplier | None |
| Reciprocal versus monic polynomial | Roots 2,3; evaluate X=0 | X²−5X+6 gives 6; 1−5X+6X² gives 1 | Coefficient reversal required | None |
| Infinity weight and Schur degree | Ω(0,2), Ω(2,2) | λ=(−1,0;4),(−3,0;6); symmetric degrees 0,2 | Coordinate sign fixed | None |
| P12 exponent convention | κ=(2,2) | Automorphic exponents (0,0,−1,−1); deformation exponents (0,0,1,1) | Dictionary needed | None |
| 0.1 root predicate and factor equivalence | (2,3),(2,6),(1,3),(0,2) in 𝔽₁₁ | Four-factor products 7,0,0,5; last pair contains zero | Nonvanishing and units separate | None |
| 0.1 exchange/extension | Swap (2,3); inject into 𝔽₁₂₁ | Products 7 and 4=−7; image of 7≠0 | Predicate preserved/reflected | None |
| 0.1 small residue fields | Unit pairs in 𝔽₂,𝔽₃ | Admissible-pair counts 0,0 | No small-field existence promised | None |
| 0.2 dual-spin dictionary | HT=(0,0,1,1), ν=ε⁻¹ | Dual plus ε⁻³ gives (3,3,2,2), ν=ε⁻⁵ | Twist and multiplier agree | None |
| 0.3 CG weight/oddness datum | p=7, a=4,5,6 | 4<6; a=5 gives ν(c)=1; 6<6 false | Range does not supply oddness | None |
| 0.3 Artinian minimality | N₀=E₂₃; B=E₁₂−E₃₄; N=N₀+ηB | Lie errors 0,0; N₀²=0, N²=η(E₁₃−E₂₄)≠0 | Reduction alone insufficient | None |
| 0.3 split unramified plane | I+ηB over 𝔽₇[η]/η² | Full flag preserved; plane entry (1,2)=η versus required 0 | Full flag insufficient | None |
| 0.4 levels/deck group | Q empty; full levels 2 and 3 | Deck order 1; −I≡I mod2, −I≢I mod3 | Neat prime and trivial cover distinguished | None |
| 0.5 ordered refinements | (2,4,11,9) in 𝔽₁₃; swap middle roots | Paired products 5,5; initial plane products 8,8; after swap 9,10 | Extra separation independent | None |
| 0.5 depth | p=7, x=29, N=1,2 | 29−1=28 divisible by 7, not 49 | Requested depth retained | None |
| 1.1 integral p-action | d=0,r=2; O/p³ | Valuation totals 4,3,3; p³·1=0 in quotient | Divide before reduction | None |
| 1.1 central Qp,2 term | (a,b)=(2,2); discriminant 1 | Qp,2=Z₂+X₂; X₂ coefficient 1 versus deleted contribution 0 | Central subtraction retained | None |
| 1.1 actual Hecke images | Two operators act by 7; Q empty | Difference acts by 0; diamond identity acts by 1 | Image quotient, not free generators | None |
| 1.2 joint selector | T=diag(c,c+1), Q=diag(d+1,d) | Intersection projector 0; union projector I₂ | Correct complement product | None |
| 1.2 idempotence/reduction | Selector diag(1,0) over O/ϖ² | Square diag(1,0); reduction same diagonal | Image splitting compatible | None |
| 1.2 generalized root | Two-step nilpotent Jordan block | Kernel dimensions 1 and 2 for N,N² | Ordinary eigenspace too small | None |
| 1.3 Katz occurrence | Zero section; roots 2,3; candidate eigenpair (5,7) | Zero gives no nonzero witness; required pair (5,6) differs | Nonzero cusp and both eigenvalues needed | None |
| 2.1 coefficient field | Matrix [[0,2],[1,0]]; rational product image | Polynomial X²−2, eigenfield degree 2; ℚ×ℚ gives two degree-1 fields | Occurring finite image essential | None |
| 2.2 Steinberg obstruction | x=3, weights (2,2),(4,2),(3,3) | U eigenvalues 1/3,1,1; valuations −1,0,0 | Only scalar-weight contradiction | None |
| 2.3 all-degree interpolation polynomial | Roots 1,2,3,6 | Reciprocal coefficients (1,−12,47,−72,36), constant 1 | Normalization agrees | None |
| 2.3 independent lattice comparison | Embedded lattices O,ϖO in E | Same E-span E; images in O/ϖ are k,0 | Rational comparison insufficient | None |
| 2.4 crystalline qualification | (m₁,m₂,w)=(1,0,0),(1,0,1); repeated roots | Parities 1=1 and 0≠1; repeated-root difference 0 | Parity and distinct roots retained | None |
| 2.5 ordinary weight-two representation | α,β,β⁻¹ε⁻¹,α⁻¹ε⁻¹ | Pair products ε⁻¹,ε⁻¹; at Frob₃ ν=3, det=9 | Full multiplier correct | None |
| 2.6 monodromy upgrade | Same r(F)=diag(1,3), N=0,E₁₂ | Both satisfy q⁻¹ scaling; ranks 0,1 | Semisimplification cannot choose N | None |
| 2.7 dual-spin characters | w=0,2; χ₂(u)=ζ₃ | Exponents (−1,−1,−2,−2),(−2,−2,−3,−3); smooth factors ζ₃⁻¹ versus ζ₃ | Inverse/twist fixed | None |
| 2.7 compactness control | w=0, trivial smooth data, z=p | Values p⁻¹,p⁻² have nonzero valuations −1,−2 | Formal substitution need not occur | None |
| 2.8 completed isotypy | dim W=1,2; nonzero dimension 3 | Tensor dimensions 4,8; 3≠4n for n≥1 | Actual objects and image hypothesis needed | None |
| 2.8 finite-length support | E[t]/t² | Quotient and socle dimensions 1,1; t≠0 with t²=0 | No eigenspace-exactness inference | None |
| 3.1 Hasse shift/threshold | p=5,m=3,s=5,25; μ=(4,2) | Required divisibility 25; 5 fails,25 passes; shifted difference 2 | Depth and parallel shift retained | None |
| 3.1 ramified lift congruence | p=2, ϖ²=2 | 3²−1=8; (1+ϖ)²−1=ϖ²(1+ϖ) | General DVR valuation suffices | None |
| 3.1a secondary section | μₚ⊕I₁,₁⊕ℤ/p, p=5 | Primary 0, secondary unit; (p−1)(p+1)=24 | Detects rank-one locus | None |
| 3.1a reducedness/nonzerodivisor | k[η]/η²; k[x,y]/xy | η gives nonzero map with zero geometric fiber; xy=0 with y≠0 | Both geometric hypotheses needed | None |
| 3.2 selected annihilator | k×k on first coordinate; selected zero module | Annihilators 0×k and whole ring; quotients k and 0 | Selected module determines quotient | None |
| 3.2 intertwiner direction | Embed k as first factor of k² | Restriction k×k→k is onto; kernel 0×k | Large image maps to small image | None |
| 3.3 residual central system | diag(1,2,3,4) over 𝔽₇ | Trace 3, det3; pair products (4,6),(3,1),(2,5) | No common symplectic multiplier | None |
| 3.3 zero action image | M=0 | Image ring 0, maximal-ideal count 0 | No phantom residual system | None |
| 3.4 regular ordinary shape | (a,b)=(4,3); b=2 | Exponents (0,−1,−3,−4), pair sums −4; b=2 repeats 0 | Singular plane needs doubling | None |
| 4.1 Fourier U direction | Series with coefficient c at pQ only | Coefficient at Q after U is c; at p²Q is 0 | Index direction fixed | None |
| 4.1 X₂ identities | Discriminants 1,2,0 over 𝔽₅ | X₂ multipliers 1,−1,0; cubes identical; d(pQ) divisible by p | X₂³=X₂ and UX₂=0 compatible | None |
| 4.1 primitive index | Q=(1,0,p) | First coefficient 1; determinant p, discriminant −4p | Primitive does not mean unit discriminant | None |
| 4.2 scalar theta | Determinants 1,0; Hasse at p=7,k=6 | Coefficients 1,0; Hasse expansion 1 maps to 0 | Hasse exception necessary | None |
| 4.2 scalar arithmetic range | p=7,k=8,6 | k(2k−1) mod7 equals 1,3; Hasse still excluded at 6 | Arithmetic test alone insufficient | None |
| 4.2 vector construction/injectivity | p=7,(j,k)=(2,2),(4,2),(6,2),(7,2) | Symmetric degrees −2,0,2,3; construction false,true,true,false; injectivity false,true,false,false | Correct earlier repair preserved | None |
| 4.2 contraction linearity | e₂²⊗f₁²; scalar 2; zero | Contractions 5,3,0 over 𝔽₇; determinant-prefactor model gives 0 instead of 5 | Normalization excludes wrong model | None |
| 4.3 normalized primary projector | α=2,β=4 in 𝔽₁₁; two-step α block | β-line projection 1 versus (U−α)²=4; α generalized dimension 2 | Normalized projector required | None |
| 4.4 ordinary envelope | Nilpotent/invertible rank-two blocks | Stable-image dimensions 0,2; span(e₁) with Ue₁=e₂ enlarges from 1 to 2 | Iteration uses envelope | None |
| 4.4 scalar Z₂ injectivity | c=6,1 in 𝔽₁₁ | c³−c=1,0 | Root condition excludes second inference | None |
| 4.5 all-index contraction obligation | det M=p; Q=(1,0,p) | Covariance factor p reduces to 0; discriminant 0 also | No discriminant division | None |
| 4.5 sign witness | Q=diag(1,1),diag(1,2), p=7 | Discriminant symbols −1,−1; determinant symbols 1,1 | Same convention required everywhere | None |
| 4.6 kernel systems | α,β scalar blocks and α-Jordan block | F₀ coordinate of T is α+β; Ue₂−αe₂=e₁≠0 | F₀ retained, spectral reduction required | None |
| 4.7 cuspidal vanishing | β=3 in 𝔽₁₁; scalar p=7 | 3⁻¹=4; scalar comparison (8,8)=(2,2)+(6,6) | Both weight regimes retained | None |
| 4.7 cuspidality boundary | Constant series 1 | Positive-definite coefficient count 0 | Cannot start positive-discriminant argument | None |
| 4.8 actual composite injections | Zero projection after rank-one inclusion; vector ϖe over O/ϖ² | Kernel dimension 1; direct reduction 0, torsion-layer coefficient 1 | Composite and torsion filtration essential | None |
| 5.1 two unramified lines | Reductions (e₁,e₂),(e₁,e₁) | Minors 1,0; spans ranks 2,1 | Actual independent submodules required | None |
| 5.1 isotropy | p=7,a=4; multiplier on generator | ε̄^(−3)=−1 on a primitive tame value; plane inertia 1 | Nontrivial multiplier forces pairing 0 | None |
| 5.2 singular minimal deformation | Q empty/one prime; χ,χ,χ⁻¹,χ⁻¹ | Auxiliary counts 0,1; paired products 1,1; one-line wrong model rank 1 | Fixed multiplier and rank-two condition retained | None |
| 6.1 Klingen projector/augmentation | Q empty/two primes; colliding plane products | Empty product 1; pr{x,y}=prx pry; collision gives excluded zero factor | Labels and augmentation retained | None |
| 6.2 trace inverse | q=11,p=5,δ²=−43 | v=6−5δ/43≡1; v/12=1/2−5δ/516≡3 | Unit v inverse required | None |
| 6.2 Klingen residue constant | x≡1 mod7 | Degree 4, block 1/4=2, product 1 | Selected trace differs from degree | None |
| 6.3 Hasse descent | k×k; k[x,y]/xy | (1,0)(0,1)=0; xy=0 | Componentwise nonvanishing required | None |
| 6.3 H¹ reverse induction | H⁰→divisor H⁰ is 0→k, upper H¹=0 | Cokernel k has dimension 1, not 0 | H⁰ comparison alone insufficient | None |
| 6.4 finite-coefficient comparison | m=0,1,2; Q empty | Lengths 0,1,2, with 1+1=2; all empty-cover maps 1 | H¹ connecting input retained | None |
| 7.1 dual bundle | a=4, L=ω(1,−1) | Symmetric degree 2; dual twist by ω³ yields ω(4,2) | Boundary dual convention agrees | None |
| 7.1 compact fraction-quotient dual | E/O | Hom_O(E/O,O)=0; specified compact dual O has rank 1 | Ordinary O-valued dual wrong | None |
| 7.2 torsion-free homology | E/O versus k | ϖ acts surjectively on E/O, by 0 on k | H² vanishing supplies divisibility | None |
| 7.3 whole-module defect | S=O[Cp], k, S⊕k | Generator/Tor dimensions (1,0),(1,2),(2,2); defects 1,−1,0 | Balance not inherited by summands | None |
| 7.4 selected defect | Project S⊕k to S,k,0 | Selected defects 1,−1,0; zero rank 0 | Projector/rank inputs stay explicit | None |
| 8.1 CG patching presentation | qTW=1,0; trivial diamonds | Variable counts 0, invalid −1; χ=1 under odd-p augmentation | Lower bound needed | None |
| 8.1 inertia/diamond exponent | diag(χ,χ,χ⁻¹,χ⁻¹); untwisted 1,1,u,u | Multipliers 1,u; χ⁻²=u gives u=1 at augmentation | Universal fixed multiplier retained | None |
| 8.2 minimal R=T | T¹,T⁰; O[η]/η²→O | Annihilators 0,T; quotient kernel (η)≠0 | Positive free source action needed | None |
| 8.3 a≥4 endpoint | (p,a)=(7,4),(5,4),(7,2) | Range tests true,false,false | Automatic vanishing does not widen lifting | None |
| 8.4 six-point module | Even subsets modulo complement | Hyperplane size32, radical size2; quotient size16, radical size1 | Dimension4, nondegenerate alternating | None |
| 8.4 exceptional action | All permutations; (12),(123) | 720 distinct actions; fixed vector counts 8,4; Sp₄ order720 | Faithful isomorphism and class dictionary | None |
| 8.4 cyclic/nonabelian controls | C₂ generated by (12), C₃ by (123), S₃ on three letters | Generator orders 2,3; (12)(23) has order3 versus reversed distinct permutation | Not an abelian-action substitute | None |
| 8.4 arithmetic examples | Iwahori5, paramodular3,19; geometric twist pair | Three prescribed local factors; diagonal SL₂ dimension3 versus product dimension6 | Geometric nonisogeny necessary | None |
| 8.5 classical CG endpoint | a=4,2; ℓ=3 | HT lists (0,0,3,3),(0,0,1,1); at a4 multiplier27, determinant729 | Crystalline premise and source range retained | None |
| 8.5 monodromy slope control | Slopes {0,3} and {0,1} | Gap1 absent in first set, present in second | Semistability cannot be omitted | None |
| 9.1 P12 admissibility | Ratio2 over 𝔽₇, reverse ratio4; p=5,7 | 2≠4; neatness required at5, alternative allowed at7 | Flag dictionary remains premise | None |
| 9.2 family R=T/control | Λ=O[[w₁,w₂]], Λ/ϖ | Specialization at0 gives O; ϖ·1=0 in Λ/ϖ | Flatness substantive | None |
| 9.3 ordinary p-adic lifting | κ=(4,2),(2,2),(1,1) | Lists (0,0,−3,−3),(0,0,−1,−1),(0,1,0,1) | Integral weights do not imply classicality | None |
| 9.4 parallel parabolic lifting | k′=2,3; diagonal weights | Lists (0,0,−1,−1),(0,−1,−2,−3); middle ratios ε,ε⁻¹ in opposite prescriptions | Orientation gap retained | None |
| 9.4 one-weight specialization | w₁,w₂↦w | Weight-variable counts2→1; Galois rank4→4 | No rank-two substitution | None |
| 10.1 characteristic-zero datum | p=2,r=7,13 | r mod4=3,1; both mod2=1 | Dyadic neat condition discriminates | F03 locator |
| 10.1 integral enormousness | Trivial group on E⁴ | Invariant subspace dimensions include1,2,3; absolute irreducibility fails | Not automatic from a matrix carrier | F03 object labels |
| 10.2 four modules/tori | Four chambers; p=2,N=1 | Chamber count4; one torus group order4 versus rank-one order2 | Directions not collapsed | None |
| 10.2 torus involution | χ(u)=ζ₃ | Values ζ₃ and ζ₃⁻¹ distinct | Inverse transport and twist retained | None |
| 10.3 finite freeness | Rank d over Λ[C₂²]; d=0 | Λ-ranks4d and0; augmentation rank d; v₂(8)=3 | No averaging or positivity inference | None |
| 10.4 action image | M=0; equal generator actions | End image0; generator difference0 | Faithful image permits zero | None |
| 10.4 image comparison direction | k×k acting on k², quotient k | Image surjection k×k→k, kernel0×k | Intertwining needed for restriction | None |
| 10.6 deformation action | M=0; diamond u=ζ₃ | One map to zero ring; u≠u⁻¹ | Zero case and genuine coefficient case separate | None |
| 10.7 norm comparison | Regular/trivial k[C₂], char2; Δ=1 | Norm [1]↦1+g≠0 versus1↦0; trivial-group norm1 | Projectivity essential | None |
| 10.8 local freeness/cofinal ideals | p=2,N=1,3; rank0 module | t coefficients2,8≠0 in characteristic0; localized rank0 remains0 | Augmentation powers alone insufficient | None |
| 10.8 cotangent comparison | E[[x]]→E[[x]]/(x²) | Relative differentials0, kernel(x²)≠0 | Cotangent bound not ring isomorphism | None |
| 11.1 R-regular weights | R=3, pairs (−4,−1),(0,3),(−1,−4) | Gaps (3,3),(3,−5),(−3,9) | Two walls/order both required | None |
| 11.1 monotonicity/zero bound | Gaps(3,3), R=3,2; R=0 at(0,0) | 3≥3 and3≥2; zero-bound gaps(0,1) | Positive R excludes false boundary | None |
| 11.2 seed conditions | Traces t,t+ϖ; two intersecting components | Reductions equal, traces unequal; component count2 at crossing | Residual match and unique component distinct | None |
| 11.3 multiplicity over κ | ℚ₇[t]/(t²−3); E-rational and zero fibers | Squares0,1,2,4; dimensions over κ/E:1/2,1/1,0/0 | Correct general field | F02 |
| 11.3 extension versus restriction | V=E′ and L/E′ finite | dim_L(V⊗L)=1; dim_EV=2 for quadratic E′ | These operations must not be confused | F02 |
| 11.3 local multiplicities | Selected p,r and conductor lines | Tensor dimensions1·1·1=1; double p-line gives2 | F03 points to actual line argument | F02/F03 |
| 11.4 support/component condition | A=E×E,M=E×0 | Fiber dimensions1,0 on first/second components | Seed elsewhere insufficient | None |
| 11.4 closed support/density | E[x]; E[η]/η² with M=E | Nonzero degree-d polynomial has ≤d roots; nilpotent annihilator(η)≠0 despite full support | No global reduced R=T inference | None |
| 11.4 seed preparation | n4 or2, degree1; q_v7,19 at p3 | Divisibility residues0,2 mod4; q_v mod9=7,1 | Full supplier hypotheses retained | None |
| 11.5 individual chamber rank | Four E′-lines, quadratic E′/E; rank d fiber | E′-sum dimension4, E-sum8; residue-field fiber dimension d | Rank1 in each chamber | F02 |
| 11.5 zero rank | Free module of rank0 | All residue-field fiber dimensions0 | Nonvanishing cannot be dropped | F02 |
| 11.6 classical weight-two endpoint | E-rational q; dim W=n | Four E-dimensions1 sum4; 4n=4 gives n1 | Original endpoint unchanged | F02 field clarification |
| 11.6 repeated Sen block | [[a,1],[0,a]] versus aI₂ | Nilpotent ranks1,0 | De Rham semisimplicity independent | None |

The additional supplier-contract computations keep each of the twenty requested extensions distinct.

| Statement | Instances tried | Values computed on the two sides or competing models | Result | Change |
| --- | --- | --- | --- | --- |
| gsp4-pseudocharacter-reconstruction | Multiplier ν=1,−1, characteristic zero | Determinant squares both1, full multipliers differ | GSp₄ pseudocharacter/full multiplier needed | Existing gap |
| normalized-integral-siegel-p-actions | H⁰,H¹ each k; two candidate degree-one actions | H⁰ actions both1; H¹ actions0 and1 | Degree-zero construction does not determine degree one | Existing gap |
| p12-ordinary-horizontal-control | Λ=O[[w₁,w₂]], module Λᵈ; Δ=C₅ | Weight-zero fiber Oᵈ; Λ[Δ]-free rank d gives Λ-rank5d | Integral control retains actual algebra | Existing gap |
| p12-flag-orientation | κ=(3,3), opposite ordered ratios | Exponent lists (0,−1,−2,−3),(0,1,2,3); middle ratios ε⁻¹,ε | Dictionary essential | Existing gap |
| integral-enormity-and-oddness | Trivial group on E⁴; scalar multiplier ±1 | Invariant-space dimension4; multiplier squares1,1 | Image and full oddness not automatic | Existing gap |
| gsp4-cg-selmer-presentation | qTW=1,0 | Formal-variable counts0 and invalid−1; truncated natural subtraction would give0 in both | Exact Selmer lower bound retained | Existing gap |
| gsp4-torus-tw-data | One prime, p2,N1 | Rank-two diamond order4 versus Klingen order2 | Different presentation input | Existing gap |
| p12-variable-weight-patching-data | Borel and parallel specialization | Weight-variable counts2,1; Galois rank4 in both | Own universal weight algebra retained | Existing gap |
| dyadic-ordinary-local-regularity | p2 torus torsion C₂² over characteristic-zero coefficients | Four characters (±1,±1), all with reduction1 | Odd-p single-factor arguments insufficient | Existing gap |
| gsp4-steinberg-u-eigenvalue | x3, weights(2,2),(4,2) | Eigenvalues1/3,1 and valuations−1,0 | Exact shift retained | Existing gap |
| gsp4-klingen-level-comparison | x≡1 mod7 | Degree4, selected factor2, product1 | Trace constant specified | Existing gap |
| gsp4-paramodular-newvector | Conductor line L; L⊕L | Dimensions1,2 | Conductor condition selects one line | Existing gap |
| gsp4-ordinary-neat-refinement-lines | Regular principal series; selected p and r lines | Local dimensions1,1, tensor1; unselected weight-two ordinary block dimension2 | Correct refinement source | F03 needs locator only |
| gsp4-pure-monodromy-uniqueness | q3, same diagonal r, N0 or E₁₂ | Equal semisimple r; N ranks0,1 | Purity/adjoint hypotheses indispensable | Existing gap |
| projective-finite-group-satake | k[C₂] and trivial k, characteristic2 | Norm ranks1 and0 | Projectivity, not division by8 | Existing gap |
| weil-restriction-big-image | Geometrically isomorphic quadratic-twist pair | Diagonal SL₂ dimension3, product SL₂² dimension6 | Geometric nonisogeny required | Existing gap |
| symplectic-descent-every-residue-characteristic | S=R=𝔽₂, standard Sp₄; trivial group | Generated matrix-algebra dimensions16,1; identity conjugator multiplier1 | Absolute irreducibility cannot be dropped | Existing gap |
| selected-coherent-rank-inequality | S⊕k and projectors to S,k | Total defect0; selected defects1,−1 | Full-module inequality insufficient | Existing gap |
| dyadic-ordinary-support, coefficient rule | n2,u=diag(1,3) | Universal factor1/3; f(gu)=f(g)/3 versus f(g) | Source normalization retained | Existing gap |
| dyadic-ordinary-support, actual cohomology | n2,#T3; h²1; scalar I₂ | h³0, dual H¹ dimension1; Tr(I₂I₂)=0 versus Tr(I₁)=1 | Scalar class in dual H¹ | F01 Check |
| dyadic-ordinary-support, divisibility/depth | n4 or2, degree1; tame ψ=−1 | Products4,2 mod4; ψ reduces1 but inertia eigenvalue−1≠1 | Full theorem premises retained | Existing gap |
| symplectic-ordinary-component-support | p3,q_v7,19; E[x,y]/xy at origin | Residues mod9=7,1; origin on2 components | Tame depth and unique seed component retained | Existing gap |

For the matrix-algebra control, successive products of standard characteristic-two symplectic transvections span all 16 matrix coordinates; scalar matrices for the trivial group span only one. For the infinitesimal descent control in the README, C=I+ηE₁₄ satisfies CᵀJC=J, C modη=I and CρC⁻¹=ρ₀. Thus the prescribed form and congruent-identity conjugator are genuinely tested.

All twelve layer examples were recomputed against the targets they use:

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Layer0 example | p11,a4, roots2,3 | Product7; 4<10; ν(c)=−1 | Numerical data consistent | None |
| Layer1 example | T=diag(5,0), Q=diag(6,0), A=diag(7,9) | Selector diag(1,0); selected A eigenvalue7 | Actual selected image | None |
| Layer2 example | HT(ρ)=(0,0,1,1) | HT(ρ∨ε⁻³)=(3,3,2,2); ν=ε⁻⁵ | Dual-spin convention consistent | None |
| Layer3 example | p7,m2,s=7t₀ | Shift42rt₀; weight difference2; selected quotient k | Depth and quotient separate | None |
| Layer4 example | p11,j4,α2,β3 | Product7; 4<10; inverse β=4; 3θF=0 implies θF=0 | Conditional theta route consistent | None |
| Layer5 example | Independent/dependent line reductions | Minors1,0; direct-summand ranks2,1 | Independence necessary | None |
| Layer6 example | x≡1 mod7,m2 | Degree4; selected factor2; v≡1; lengths1+1=2 | Correct inverse and induction | None |
| Layer7 example | a4,Δ=C₅,M=S⊕k | L=ω(1,−1); total defect0; selected1,−1; Tor dimensions2 over k and1 over O | Selected premise necessary | None |
| Layer8 example | p7,a4,ℓ3 | HT=(0,0,3,3); ν27; det729; 4<6 | Endpoint ranges agree | None |
| Layer9 example | Parallel k′3 | Variables2→1; exponents(0,−1,−2,−3); deformation middle ratio ε, automorphic ε⁻¹ | Dictionary retained | None |
| Layer10 example | p2,N1,Δ=C₂² | #Δ4; Λ-ranks4d,d; d0 remains0 | Support not automatic | None |
| Layer11 example | R3,weights(−4,−1), closed regular point | Gaps3,3; each κ-rank1; at q four E-lines give4n=4, n1 | Field transport explicit | F02 |

## Maintainer consequences

All three findings are applied. The refinement gap keeps its slug, supplier and section; only its source locator changes. No Lean name was added, deleted or renamed, and no consumer needs a name migration. Downstream rank-one arguments must measure the regular fiber over its residue field before specializing at the E-rational singular point. The existing external ordinary-supplier admission issue and all other supplier obligations remain as previously recorded. A fresh independent review remains necessary; elaboration and these finite controls do not certify the deep conditional mathematics.
