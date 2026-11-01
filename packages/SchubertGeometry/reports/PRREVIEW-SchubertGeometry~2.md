# Review of SchubertGeometry (pull request #1224 at 75e613a)
**Verdict:** needs changes

## R01 (P1) — The thirteen-orbit prerequisite still has no owner

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:785–792: “The thirteen-orbit contract is a gap”.

**Claim:** The smaller-block orbit comparison remains required, with its construction supplied elsewhere.

**Witness:** The paragraph expressly excludes LieGroups Layer 8, names no replacement supplier, and has no matching declared gap. Main TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:428–446 supplies full-Borel flags, not this action.

**Repair:** Assign the precise block-Borel construction to a named, order-valid supplier and register the same gap slug in the plan and Exact supplier contracts, or construct it as a target in the appropriate extension. Merely calling it a gap does not declare a contract. Retain separate tests for the six full-Borel GL₃ cells and the thirteen smaller-block orbits; neither count can discharge the other's construction. The thirteen-orbit classification itself was not certified here.

## R02 (P2) — The new obstruction programme remains in the base roadmap

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:418–505: “Own the following concrete finite-type comparison … here.”

**Claim:** The existing SchubertGeometry roadmap acquires the contraction-kernel, cyclicity, irreducibility and arbitrary-basis obstruction programme.

**Witness:** Main TauCetiRoadmap/SchubertGeometry/README.md:65 has the path/component target and an adjoint regression, but no bidegree-(2,1) kernel programme. The new programme is also the sole headline in Suggested.lean:82.

**Repair:** Put the additional kernel programme and its native acceptance theorem in SchubertGeometry Part II, explicitly importing the base and saying where it stops. Correct the base's mistaken adjoint regression without adding the entire extension there. The general characteristic-zero obstruction is sound: recomputation gives kernel dimension 15 and three distinct lines in a two-dimensional weight space, with determinants 16, 32, 16. This is a repairable scope separation, not a reason to reject the mathematics. Previous R10 remains unresolved; no repair report marking it non-actionable was supplied or found in the package reports.

## R03 (P2) — The claimed ownership transfers are not reflected in the other owners

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:923–929: “ComplexComparisonPartII C−1/C0/C1.9/C2 consumes S9.0’s … foundation”. Also :129 and :69–106.

**Claim:** Relative flags, parabolic/integral models and coherent analytification/GAGA have single ownership here, and the previous owners now consume them.

**Witness:** AlgebraicModuliForArithmeticGeometry §1.3 still constructs flagBundle; ShimuraData §§3.8, 3.14–15 constructs parabolic quotients/cells/closures; ComplexComparisonPartII C−1.1/C0.4/C1.9 constructs analytification and proper GAGA. Their retrieved heads contain no SchubertGeometry import for these constructions.

**Repair:** Complete an explicit ownership relocation with those roadmaps, using separate changes in their own folders: duplicated constructions must become imports of precise SchubertGeometry targets, and broader extensions must state the difference. Correct the present-tense consumer claims here until that reconciliation exists. Do not reintroduce an upward supplier edge. Moving a prerequisite below a later owner is allowed and explains the intended direction; declaring a move on only one side does not eliminate two owners. The overlapping instances are identical: rank-three (1,2)-flags have dimension 3; the parabolic GL₂ flag is ℙ¹; the proper dual-number point has H⁰=ℂ[ε]/(ε²) on both GAGA sides. Exact locations appear below.

## R04 (P3) — Add target-level locators and the source manifest

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:129, :153–156, :328–365, :935–955: “Proof routes include the original Knutson … handouts”.

**Claim:** The retained statements have exact, reproducible source support.

**Witness:** The sampled flag/incidence and classical-coordinate targets have no theorem/page locator. The A₂ target has none either; its identifiable source is KnutsonDemazure §4.0.2, p.4, line 142. No sources.toml is present.

**Repair:** Give each target an exact locator or identify it as a deduction with explicitly cited inputs, and record each work once in sources.toml. Distinguish Conrad's root-product theorem from the field-Bruhat deduction, and the A₂ diagram from the new coefficient formula. Preserve the computed controls: dual-number incidence is ε≠0, and the A₂ formula gives 21,15,10 weights of multiplicity 1,2,3. The published LLM copy has Theorems 4 and 6 on pp.299 and 301; certify the claimed 2000-preprint pagination separately or cite the version actually read. This consolidates the remaining locator defects, including the unsourced S2–S8 targets.

## R05 (P3) — Complete the definition APIs, Checks and target dependencies

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:221–236, :521–572, :604–618: “For every finite word … construct the … model”.

**Claim:** Each definition has its API, three discriminating Checks and target-level dependencies.

**Witness:** S2 remains a five-item block with one aggregate Examples paragraph and one Dependencies paragraph; S5's Frobenius-module/trace/splitting construction and S8's characteristic maps similarly lack per-definition three-Check blocks and per-target Needs lines.

**Repair:** Give these definitions their own API and Checks, and split dependencies by statement and proposed route. Do not use a source name as an undeclared prerequisite. Calculated controls: Q=∅, i, ii has (dimension,fixed sections,image dimension)=(0,1,0),(1,2,1),(2,4,1); in characteristic 2 the normalized affine trace sends 1,x,x³ to 0,1,x; the PGL₂ character image has even degree and misses O(1). The new S1.0–1, path/crystal, kernel and S9.0 blocks do not repair the missing structure elsewhere.

## R06 (P3) — Fix the auxiliary file's import header

**Location:** TauCetiRoadmap/SchubertGeometry/SimpleGeneratorTargets.lean:1–5: “import Mathlib.Algebra.MvPolynomial.PDeriv”.

**Claim:** Both reviewed Lean files satisfy the acceptance-file import rules.

**Witness:** The auxiliary file retains five Mathlib submodule imports and no import Mathlib. The worker's passing gate did not report these auxiliary-file violations.

**Repair:** Replace the retained auxiliary header with the single import Mathlib, or delete the obsolete auxiliary file after moving the genuine headline. A scratch combination with import Mathlib elaborated all 51 declarations with only admission warnings, so no subimport is necessary. No change to the gate is requested.

## R07 (P3) — Delete the auxiliary API and calculation padding

**Location:** TauCetiRoadmap/SchubertGeometry/SimpleGeneratorTargets.lean:94–178: rootOperator_apply, traceKernel_finrank, word_1122, three_lines_distinct.

**Claim:** API identities and the README's explicit finite calculations are acceptance targets.

**Witness:** rootOperator_apply is literally proved by rfl; the three word theorems repeat README lines 501–505. The dimension-15, highest-vector, dimension-2 and pairwise-line tests repeat the worked calculations.

**Repair:** Delete these declarations from the acceptance files, rather than prove them in place; keep the mathematics in the README. This includes the elementary preservation/finite-dimension API and explicit plane/word/line calculations. Delete supporting definitions that no retained headline needs. Suggested.lean itself now has no such padding. The one-tactic probe tried simp on all 19 admissions; none closed. Failure of simp does not turn a worked Check into a headline. The three word vectors remain (0,−8,4), (2,−6,2), (4,−4,0) after deletion.

## R08 (P3) — Apply the documentation and name rules to the auxiliary file

**Location:** TauCetiRoadmap/SchubertGeometry/SimpleGeneratorTargets.lean:7–10, :19–29, :98–119: “Illustrative, nonexhaustive target signatures”.

**Claim:** The auxiliary file has the required headline documentation and README correspondence for each declaration.

**Witness:** Its opening is an ordinary block comment, many declarations have no docstring, there are no layer comments, and names such as tensorPiece, target_weight_plane and no_simple_lowering_weight_basis do not occur in the README.

**Repair:** Remove the obsolete catalogue once the genuine headline and its four definitions have their proper owner. If an auxiliary headline remains, give it the required target-signatures module docstring, mathematical declaration docstrings, layer order and exact README name correspondence. Do not add catalogue names merely to preserve padding. The 51 elaborated-signature comparisons found no lost required field, characteristic or basis binder; this is a documentation defect, not a hidden-hypothesis allegation.

## Verified sound

This independent AI review covers all three named files at 75e613a9f0af1e94876d2b658ff5612c64ccd741. All nine layers and worked examples were read, including unchanged passages. Main was checked at fa41b374. The repository writing checklist and CONTRIBUTING were read; IntegralLattices and Completed/UniversalCovers supplied shape comparisons. There were no outside-folder changes, sorry'd data, set_option, source-file copies or modifications to the reviewed worktree. No GitHub write was made.

The eight findings comprise one P1, two P2 and five P3. Numerical tests below are instance checks and proof-route checks, not formal proofs of the general geometric programme.

**Previous findings, checked individually before the full pass.** Quotes are from the repaired head unless marked main.

| Previous finding | Passage checked at this head | Status |
|---|---|---|
| R01 TPC cycle | README:917, “owns the coordinate-path and operator comparison” | Repaired: TPC is downstream; no dependency cycle. |
| R02 nonexistent K4.P/RG7C.5 | README:808, “ReductiveGroups Layer 7b's actual parabolic double-coset map” | Repaired: this target exists on main; K4.P consumption is gone. |
| R03 thirteen-orbit supplier | README:791, “contract is a gap” | Partly: false LieGroups supply acknowledged, prerequisite still unowned; new R01. |
| R04 duplicated ordinary Picard | README:19–21, “belong to GeometricQuantization §§3.3–3.4” | Repaired: S9.8 retains the associated-line adapter, not ordinary Picard. |
| R05 upward ComplexComparisonPartII | README:16, “S9.0 owns the coherent analytic foundations” | Direction repaired; ownership relocation unreconciled, new R03. |
| R06 two-way ShimuraData | README:925–926, “consumes S1.0's relative quotients” | Direction repaired; the other construction needs reconciliation, new R03. |
| R07 generic smooth comparison | README:633–634, “does not construct the additional fixed-model tangent/connection interfaces” | Repaired: retained comparison is flag/word-specific; F2.4 stays downstream. |
| R08 missing native headline | Suggested.lean:82, “theorem no_singleTargetLowerings” | Signature repaired; scope placement is new R02. |
| R09 computational procedures | README:381, “Prove existence of rational normalized presentations” | Repaired: mathematical existence/comparison replaces algorithms. |
| R10 extension in base | README:418, “Own the following concrete finite-type comparison” | Not repaired; new R02. Ordinary Picard removed, new kernel programme retained. |
| R11 sources | README:77, “Theorem 2.3.6, pp. 72–73” | Partly: Conrad/SGA verified; other targets and manifest incomplete, new R04. |
| R12 shape/APIs/Checks | README:65, “Layer 1”; :87, “Checks” | Partly: blocks added, but not throughout; new R05. |
| R13 padding | auxiliary:94, “theorem rootOperator_apply”; :141, “theorem word_1122” | Main acceptance file repaired; auxiliary unchanged, new R07. |
| R14 imports | Suggested.lean:1, “import Mathlib”; auxiliary:1, submodule import | Partly; new R06. |
| R15 frozen links | README:48, relative ModularCurves link | Repaired: frozen-commit and PR supplier links gone. |
| R16 TeX | README:870, plain central-transport formulas | Repaired: zero TeX/LaTeX gate matches. |
| R17 HTML anchors | README:838, Markdown incidence heading | Repaired: residue scanner zero. |
| R18 documentation/names | Suggested.lean:4, “Schubert geometry: target signatures”; auxiliary:8, “Illustrative” | Main file repaired; auxiliary unchanged, new R08. |

**Gate and dependencies.** The worker's exact-head gate reports every check zero and build=0, overall OK. The prescribed dependency check was independently rerun:

    depcheck: 204 roadmaps, 1460 edges, 0 problem(s)

There are no UPWARD, CYCLE or moved lines. Every Needs line was read. This output does not certify ownership or auxiliary Lean form; R01/R03/R06–R08 survive it. The resolver's sole unresolved “SerreGAGA §12” is a false positive: SerreGAGA is a source identifier, not a roadmap supplier.

**Lean evidence and headlines.** Direct elaboration of Suggested.lean exited 0 with its single intended sorry warning. A scratch copy containing both files and #check @name for every declaration elaborated all 51 signatures: five in Suggested.lean and 46 in the auxiliary file, with 19 intended admission warnings. Types were compared with their definitions and prose. The four new definitions retain Field but correctly omit CharZero; the obstruction explicitly retains CharZero and both universe levels. Every auxiliary admission retains CharZero; real polynomial definitions correctly do not require it. No required binder disappeared, and no signature was changed. A separate copy tried simp on every admission: 19 failures, zero solved. The proved rootOperator_apply is a direct rfl witness for padding.

The README headlines are: relative parabolic/flag and Schubert-incidence comparison (S1); all-word image and derived structure/line pushforward (S2/S5.7); geometric Demazure/Weyl characters (S3); LS-chain, character and tensor theorems (S4); the new simple-lowering obstruction (S4.4a); splitting, normality, vanishing and integral base change (S5); all-degree standard monomials/projective normality (S6); Chevalley multiplicities and Chow/cohomology comparison (S7); ordinary/equivariant flag K-presentations (S8); proper coherent GAGA and flag/word, fixed-point, moment–Morse and associated-line comparisons (S9). Suggested.lean names the unavailable geometric/path carriers in its docstring and states the native obstruction with real definitions. No further absent statable headline was established by the pinned search. Scope placement remains R02.

**Adversarial mathematics.** The following table has 105 rows; the native-declaration table adds 51 rows. “Pass” means that the displayed instance agrees with the target, not that a general theorem was proved. Signed strings and GT patterns were independently enumerated using exact integer dictionaries. Polynomial derivatives, all 81 matrix-unit commutators on the 18 monomials, contraction rank, the joint raising kernel and the lowering span were computed with exact rational elimination. The remaining rows give direct small mathematical computations. Zero rings are excluded by Field where appropriate; arbitrary-base statements retain the empty scheme and nilpotent tests. Irrelevant DVR/ramification hypotheses were not introduced into these geometric targets.

| Statement | Instances | Values on the two sides / wrong-model control | Result and change |
|---|---|---|---|
| Conventions: cells/right quotients | SL₂, e and s | B−eB−/B− is a point, ℓ(e)=0; other cell is A¹, ℓ(s)=1 | Pass |
| Conventions: line sign and dual | SL₂, λ=1; SL₃, λ=ω₁ | degree L(1)=1; sections have weights ±1. For SL₃ ordinary dual changes highest weight ω₁ to ω₂ | Pass |
| S1.0 Par_t, ample determinant | GL₂ over ℤ; P=G; torus | Par_B=ℙ¹, deg(det Lie P)*=2; weight-one line degree=1. P=G gives S, relative dimension 0 | Pass; ownership R03 |
| S1.0 nonsplit descent | Hamilton-quaternion adjoint group over ℝ | x²+y²+z²=0 has 0 real projective points; after ℂ-extension it is ℙ¹ | Pass; no rational-section claim |
| S1.0 integral cells | GL₂ at 2,3; GL₃ at 2 | 1+q=3,4; complete flags 1+2+2+4+4+8=21; partial flags 1+2+4=7 | Pass |
| S1.0 arbitrary-base charts | ℤ[ε]/ε² | chart ring is ℤ[ε,z]/ε²; ε²=0 but ε≠0, versus reduced fibres with ε=0 | Pass |
| S1.1 flags/incidence | ranks [],0,N,(1,2) in N=3 | first three give S; (1,2) flag dimension 3 versus ambient dimension 4 | Pass; R03–R05 |
| S1.1 infinitesimal incidence | line e₁+εe₃; plane e₁,e₂ | universal map has value ε≠0; reduction has value 0 | Pass; points alone fail |
| S1.2 quotient inversion | W=S₃, w=(123), W_P trivial | w⁻¹=(132), distinct from w; inversion twice gives (123) | Pass |
| S1.2 pivots/partition | Gr(2,4), pivots (1,2),(1,3),(3,4) | Σ(p_i−i)=0,1,4; λ=(2,2),(2,1),(0,0), hence 4−size=0,1,4 | Pass |
| S1.2 rank-excess/zero | r=0,N,N+1; N=0,1 | valid extremal ranks have 1 point; r>N has 0 points, not the natural-subtraction junk Grassmannian | Pass |
| S1.2 determinantal ideals | dual-number incidence above | ideal (ε), not ideal 0; same reduced point set | Pass; exact locator missing |
| S1.2 symplectic dimension | 2m=4, r=0,1,2,3 | formula gives 0,3,3 in valid range; r=3 excluded by r≤m | Pass |
| S1.2 symplectic form convention | m=1, r=1 | source form [[0,1],[−1,0]]=−Matrix.J; stabilizer u(z)=[[1,z],[0,1]] preserves it | Pass, also mod 2 |
| S1.2 unipotent group law | r=s=1; Y=(1,2),Y′=(3,4), Z=5,Z′=6 | YᵀJY′=−2; product coordinates ((4,6),9); direct matrix product identical | Pass in ℤ and mod 2,3 |
| S1.2 inverse and Levi action | preceding u; scalar A=2,D=I over ℚ | inverse coordinates (−Y,−5), product I₄; conjugation sends Y to 2Y and Z to 4Z | Pass |
| S1.2 radical dimension/endpoints | (m,r)=(2,1),(2,2),(2,0) | dimensions 2+1=3, 0+3=3, 0; r=m gives symmetric 2×2 matrices | Pass |
| S2.1 right/left crank | X=point; X=A¹ with constant map for right crank | right crank ℙ¹ and A¹×ℙ¹ respectively; latter is not proper over k | Pass; R05 |
| S2.2 word schemes | ∅, i, ii | dimensions 0,1,2; fixed sections 1,2,4 | Pass |
| S2.3 tangent and fibre weights | word i, ε=0,1 | tangent α,−α; fibres λ,s_iλ | Pass |
| S2.3 all-word image | ii and ∅ | δ(ii)=s_i but s_i²=e; image dimensions 1 and 0 | Pass; essential distinction retained |
| S2.4 braid/refinement | A₂ words121,212 | products both w₀, length 3; neither word admits a further simple-letter refinement | Pass; no scheme-isomorphism inference |
| S2.5 compact rank-one factor | U(2) | SU₂×U₁→U₂ has kernel {(I,1),(−I,−1)} of order 2 | Pass; direct-product shortcut excluded |
| S3.1 equivariant-line groupoid | torus flag point, chars0,1 | underlying lines both k; actions 1 and t; automorphisms k×, not singleton | Pass |
| S3.1 forgetful kernel/descent | GL₂; P=G | determinant characters have degree0; SL₂ weight1 has degree1; for P=G the coroot-zero characters are precisely central ones | Pass |
| S3.2 sections/extremal spans | SL₂ λ=1, w=e,s | H⁰ dimensions1,2; dual point weight−1, full dual weights−1,+1 | Pass |
| S3.2 wall control | λ=0, full flag SL₂ | both restrictions are k, although X(e)≠X(s); require ample on correct partial quotient | Pass |
| S3.3 signed D strings | m=0,−1,−2 | eλ,0,−e^(λ+α); Euler augmentations1,0,−1; H⁰ at m=−2 is0 | Pass |
| S3.3 positive Δ/inversion | m=0,1,2 | Δeλ=eλ,0,−e^(λ−α), agreeing with ιDι | Pass |
| S3.3 numerator convention | p=1, z=eα=2 | N=−1; sN=1/2=−z⁻¹N, whereas −N=1 | Pass |
| S3.4 idempotence/braid | SL₂ weight1; A₂(2,5) | D(t)=t+t⁻¹, D²(t)=same; A₂ final coefficients identical for121/212 | Pass |
| S3.5 separability | SL₂ Frobenius in char2 | map [x:y]↦[x²:y²] has derivative0, degree2, despite bijection on algebraically closed points | Pass negative control |
| S3.6 χ₁,χ₂ | (7,5,0) lift, start(0,5,7) | Δ₁ then Δ₂ gives6 and33 terms, all multiplicity1 | Pass |
| S3.6 χ₃ multiplicities | all triples a+b+c=12, coordinates0…7 | support46; multiplicity counts(21,15,10); 21+30+30=81; coefficient(4,4,4)=3 | Pass |
| S3.6 alternate word/GT | Δ₂Δ₁Δ₂ chronologically; interlacing rows | dimensions1,3,21,81; GT has81 patterns and exactly the same46 coefficients | Pass; locator R04 |
| S3.6 invariance | apply either Δ to χ₃ | each returns the same46 coefficients and augmentation81 | Pass |
| S4.1 path quotient | straight(t,0), subdivided at1/2; constant | endpoints(1,0) both; constant has0 segments and endpoint0 | Pass |
| S4.1 central-shift wrong model | φ(1/2)=1/4, χ=(1,1) | arbitrary representative gives(3/4,1/2), x−2y=−1/4; distinguished gives(1,1/2), x−2y=0 | Pass |
| S4.1 crystal identities | SL₂ highest weight1 | weights1,−1; lowering/raising are inverses; (ε,φ)=(0,1),(1,0) | Pass |
| S4.2 cut times/heights | straight SL₂ weight1 and its lowering | height t becomes −t; minima0,−1; endpoint change−2=−α | Pass |
| S4.3 LS breaks/finiteness | SL₂ λ=2; λ=0 | three paths/endpoints2,0,−2; internal break1/2 has bond2, product1; λ=0 singleton | Pass |
| S4.3 reflection-order test | λ=ω₁ in A₂, Levi α₂ | pairing0 gives same weight and coset; positive α₁ pairing1 moves e upward | Pass |
| S4.3 bond gcd/a-chain | A₂ λ=ρ, interval e to s₁s₂ | chain bond lists(1,1),(2,1), both gcd1; denominator2 fails on each, denominator1 passes each | Pass |
| S4.3 equal endpoints | u=v; a=1/7 | empty gcd0, 7 divides0; empty chain integrality is true | Pass |
| S4.3 central transport/composition | GL₂ λ=(1,0), χ=ψ=(1,1) | one shift endpoint(2,1); two shifts(3,2)=direct shift; simple height stays1 | Pass |
| S4.3 convexity | pure central λ=(1,1), t=1/2 | π(t)=(1/2,1/2)∈t Conv{λ}; not in Conv{λ}={(1,1)} | Pass |
| S4.4 character/tensor components | SL₂ B(1)⊗B(1) | weights2,0,0,−2; B(2)⊔B(0) has3+1=4 elements | Pass |
| S4.4a irreducibility route | characteristic-zero polynomial kernel | joint E-kernel dimension1; lowering span dimension15 equals ker C dimension15 | Pass; extension R02 |
| S4.4a adjoint/simple actions | E₂₁ on H₁,H₂; E₁₂ on E₂₁ | 2E₂₁,−E₂₁,H₁: each one basis line | Pass; simple-generator positive control |
| S4.4a adjoint/all-root obstruction | pairs12,23,13 | opposite brackets give H₁,H₂,H₁+H₂; pair determinants1,1,−1 in dimension2 | Pass |
| S4.5 chain complex | S₃ Bruhat interval | ranks1,2,2,1; four maximal chains each with4 vertices; finite λ=0 LS set still1 | Pass |
| S4.6 path sections | ℙ¹, O(2), point Schubert | section basis x²,xy,y² has3 entries; restriction at [1:0] gives1 surviving entry | Pass |
| S4.7 opposition/dual | A₂ λ=ω₁, κ=ω₂, w=e | −w₀κ=ω₁; point fibre λ recovered. Full ∇(ω₁) has3 weights, not ordinary dual highest ω₂ | Pass |
| S5.1 Frobenius trace | k=F₂, affine coordinate x | Tr(1)=0, Tr(x)=1, Tr(x³)=x; σ(f)=Tr(xf) gives σ(1)=1 | Pass |
| S5.2 compatible ideals | preceding σ, I=(x) | σ(x)=Tr(x²)=0; σ(x²)=Tr(x³)=x∈I. Unit/zero ideals stay unit/zero | Pass |
| S5.3 inseparable central quotient | SL₂→PGL₂, char2 | kernel μ₂ has length2, differential not an isomorphism; flag quotient is still ℙ¹→ℙ¹ isomorphism | Pass |
| S5.4 normalization | rank-one Schubert point/ℙ¹ | each normal; reduced-word π is identity and π_*O=O | Pass; no claim unions normal |
| S5.5 dominant vanishing | ℙ¹ O(m), m=0,1,2 | H⁰ dimensions1,2,3; H¹=0 in all three cases | Pass |
| S5.5 mixed-union exclusion | Y={0,∞}, L=O | H⁰(Y)=k², constants map k diagonally; cokernel dimension1=H¹(I_Y) | Pass |
| S5.6 integral base change | ℙ¹_ℤ O(0),O(1),O(2) | modules ℤ,ℤ²,ℤ³; reductions dimensions1,2,3 at both2 and3 | Pass |
| S5.6 nonreduced base | base k[ε]/ε² | sections of O(1) are A², ε retained; underlying total scheme not reduced | Pass |
| S5.6 Richardson/Tor | standard and opposite open cells on ℙ¹ | closures both ℙ¹, Tor_i(O,O)=0 for i>0; two opposite closed points intersect in empty scheme | Pass at these instances |
| S5.7 all-word derived O | SL₂ word ii | Z≃ℙ¹×ℙ¹→ℙ¹; fibre H⁰(O)=k,H¹=0, so O→Rπ_*O is identity in degree0 | Pass |
| S6.1 coordinate/section rings | Gr(2,4) Plücker O(1), degrees0,1,2 | dimensions1,6,21−1=20, agreeing with section dimensions | Pass |
| S6.2 polynomial relation | columns e₁,e₂,e₁+e₂,e₁−e₂ | (p12,p13,p14,p23,p24,p34)=(1,1,−1,−1,−1,−2); relation −2+1+1=0 | Pass also mod2 |
| S6.3 minuscule exact sequence | ℙ¹, hyperplane point, m=1 | section dimensions1→2→1; kernel dimension1; at m=0, H⁰(O(−1))=0→k→k | Pass |
| S6.4 multidegrees/common chains | SL₂ degree2 vs tensor square | standard monomials3; raw tensor sections2×2=4, one relation | Pass |
| S6.5 unions/projective normality | two lines meeting, section ring k[x,y,z]/(xy) | dimension of degree1 is3; normality fails at intersection, while components are normal | Pass negative control |
| S7.1 Chevalley coefficient | SL₂ λ=2, w=s,v=e | coroot pairing2, section divisor order2; minuscule λ=1 gives1 | Pass |
| S7.2 Cartier/boundary distinction | ℙ¹ λ=0,1,2 | divisor coefficients0,1,2; reduced support alone loses the last multiplicity | Pass |
| S7.3 Chow/cohomology | ℙ¹ | A⁰=A¹=ℤ; H⁰=H²=ℤ; degree(point)=1 and c₁(O(1)) pairs to1 | Pass |
| S8.1 regular ambient comparison | smooth ℙ¹, point structure sheaf | [O_point]=[O]−[O(−1)] in K₀; Euler value1 | Pass |
| S8.2 integral presentation | SL₂, t=[O(−1)] | relation t+t⁻¹−2=0 becomes (1−t)²=0; free rank2 | Pass |
| S8.3 equivariant/partial flag | SL₂ full flag and P=G | full equivariant K has rank2 over R(T); point case rank1 and tensor over R(G) collapses correctly | Pass |
| S8.4 adjoint lattice | PGL₂ | [O(2)]=1+2h with h²=0; image ℤ+2ℤh, h missing; after ℚ all h obtained | Pass |
| S8.5 K push-pull | SL₂ O(0),O(1),O(−2) | Euler pushforwards1,2,−1 match signed-string augmentations | Pass |
| S9.0 analytic carrier/stalks | affine n-space, n=0,1,2; node | completions ℂ,ℂ[[z]],ℂ[[z₁,z₂]]; node completion ℂ[[x,y]]/(xy), x,y≠0, xy=0 | Pass |
| S9.0 nilpotents/faithfulness | Spec ℂ[ε]/ε² | both structure rings have basis1,ε and dimension2; reduction would have dimension1 | Pass |
| S9.0 relative proper exchange | ℙ¹ over A¹, O(−2) | R⁰=0,R¹=O on both sides; analytic O includes exp(s) | Pass |
| S9.0 equivalence/properness | proper dual-number point; affine line | proper H⁰ dimension2 and H^q=0 for q>0; analytic endomorphism exp(z) on A¹ is not polynomial | Pass |
| S9.0 base-change limit | extension class t over A=ℂ[t] | complex [A --t→ A] has H⁰=0; at t=0 complex [ℂ --0→ ℂ] has H⁰=ℂ; base-change0→ℂ fails | Pass |
| S9.1 flag/word analytification | SL₂ flag and word i | both analytic carriers ℂP¹; associated L(1) degree+1 on both | Pass |
| S9.2 fixed-map hypothesis | t=id acting on ℙ¹ | whole-torus fixed locus has2 points, but det(1−d id)=0; formula cannot be evaluated | Pass negative control |
| S9.3 localization signs | SL₂ t=diag(2,1/2), λ=1 | 2/(1−1/4)+(1/2)/(1−4)=5/2=2+1/2 | Pass |
| S9.4 Euler cancellation | same t, λ=−2 | (1/4)/(1−1/4)+4/(1−4)=−1=Euler H⁰−H¹ | Pass |
| S9.5 type-A specialization | GL₂ λ=(1,0), central χ=(1,1) | height t; lowered endpoint(0,1); shifted endpoint(2,1), height still t | Pass |
| S9.6 normalizer transfer | SU₂; torus | ℝP² has H⁰(ℚ)=ℚ,H^positive(ℚ)=0; integral H²=ℤ/2. Torus quotient point | Pass |
| S9.7 moment/Morse signs | SO₃ radius1, X=aZ, north pole | Hessian=−aI; a=1 gives index2, a=−1 index0, agreeing with chamber reversal | Pass |
| S9.7 walls and metric | μ=0; X=0 on positive-radius sphere | point orbit index0/Poincaré1; constant sphere height has Hessian0 and full critical sphere, not isolated cells | Pass |
| S9.7 Kähler comparison | root plane α(p)=r≠0 | ω(v,Jv)=B(v,v)/abs(r)>0; omitting sign for r<0 makes it negative | Pass |
| S9.8 associated-line adapter | SL₂ λ=1, λ=0; torus | root degrees1,0; fibre [1,z] maps to z; tensor fibre z,w maps to zw; torus chars0,1 stay distinct | Pass |
| Thirteen-orbit application | full Borel GL₃ vs proposed upper-left B₂ | supplied Bruhat count6; requested count13; 6≠13, and no declared supplier | R01; smaller action not certified |
| Fixed-plane stabilizer orbits | n=4,k₀=2; k₀=0,4 | d=0,1,2 gives3=min(2,2)+1; endpoint ranks give1 orbit | Pass |
| Fixed-plane closure order | same n,k₀ | Z₀ whole dimension4; Z₁ incidence divisor dimension3; Z₂ point dimension0; inclusions reverse d | Pass |
| Exterior decomposability | r=2,N=4; θ=e12+e34 | contraction by e₁* gives e₂; e₂∧θ=e234≠0. θ=e12 gives0 for every contraction | Pass also char2 |
| Exterior endpoints | r=0,N+1 | Λ⁰=k gives1 projective point; Λ^(N+1)=0 gives empty projectivization | Pass |
| Tautological sections | N=2,d=0,1,2 | H⁰(S_d) dimensions0,0,2; d=1 dual has dimension2 | Pass |
| Function field/open comparison | X=ℙ¹, U=A¹ | k(X)=k(U)=k(t), trdeg1=dim X; O(U)=k[t]≠k(t) | Pass |
| Positive embeddings/zero weights | full GL₃ flag, one coefficient0 | projection to ℙ² has ℙ¹ fibres, so not closed immersion; positive(1,1) gives incidence embedding | Pass |
| GL₃ incidence and span | v=e₁, ω=e₁∧e₂ | wedge0, trace0; tensor dimension9, trace kernel8, projectivization dimension7 | Pass |
| GL₃ section dual | incidence O(1,1) | 9 ambient sections minus1 equation=8; span highest(2,1,0), ordinary dual highest(0,−1,−2) | Pass |
| Characteristic-p cyclicity control | SL₂ Sym⁴ in char3 | lowering coefficients start4,3; F²(x⁴)=12x²y²=0, while x²y²≠0 | Pass; unique highest alone insufficient |
| Word121 blowup/open inverse | plane z=ux+vy, (u,v)=(1,2) | intersection line[x:y]=[−2:1]; blowup direction[−y:x]=[−1:−2]=[1:2] | Pass |
| Word121 charts/base change | chart u≠0, r=v/u | v=ur; second chart u=vs and rs=1. Char2 signs coalesce without changing equations | Pass |
| Word121 exceptional geometry | centre C≃ℙ¹ | N(C/F)=O²; exceptional ℙ¹×ℙ¹; normal bidegree(0,−1); fixed subwords2³=8 | Pass |

**Native acceptance declarations.** These rows separately audit the five new declarations and all 46 auxiliary declarations. Names in the second group have namespace TauCetiRoadmap.SchubertGeometry.SimpleGenerator. Polynomial coordinates in this table are one-based for readability; Lean uses Fin 3 and Fin 2.

| Declaration | Instance | Computed value / comparison | Result/change |
|---|---|---|---|
| contractionKernel | x₁²y₃, x₁²y₁,1,0 | contractions0,2x₁,0,0; bidegrees(2,1),(2,1),(0,0),all; membership yes,no,no,yes | Pass |
| matrixUnitAction | D₂₁ on x₁²y₃,y₂ | 2x₁x₂y₃,−y₁ from both derivative formulas | Pass |
| IsCartanWeightBasis | v; A−B; v+A−B | Cartan weights(2,1),(0,−1); sum is not eigen since first eigenvalues2≠0 | Pass |
| HasSingleTargetLowerings | rank-one string x₁,x₂ | outputs x₂,0; coefficients1,0; both allowed, unlike nonzero-edge predicate | Pass |
| no_singleTargetLowerings | characteristic-zero kernel | forced highest line dimension1; three word lines pair determinants16,32,16; target dimension2 | Sound forced-line proof; R02 |
| Variables | Fin 3⊕Fin 3 | cardinality3+3=6 | Correct carrier |
| Polynomial | K=ℚ | six independent variables; monomial1≠0 | Correct carrier |
| x | x 0 | exponent vector(1,0,0;0,0,0) | Correct |
| y | y 0 | exponent vector(0,0,0;1,0,0), distinct from x 0 | Correct |
| bidegree | x₁,y₁ | (1,0),(0,1) | Correct |
| tensorPiece | x₁²y₃ vs1 | weighted degrees(2,1) vs(0,0); 18 monomials in requested piece | Correct |
| rootOperator | a=b=1 and (a,b)=(2,1) on v | 2v and2x₁x₂y₃ | Correct; duplicate supporting definition |
| contraction | x₁²y₁ vs v | 2x₁ vs0 | Correct |
| traceKernel | actual3×18 contraction | rank3, nullity15 | Correct |
| variableWeight | x₁,y₁ | (1,0,0),(−1,0,0), sum0 | Correct |
| weightPiece | μ=(2,0,−1) | v has weight μ; A has(0,0,1), excluded | Correct |
| targetWeight | all three diagonal entries | (0,0,1) | Correct constant |
| highestWeight | all three diagonal entries | (2,0,−1) | Correct constant |
| targetWeightSpace | A,B,C₀ coefficients | one equation a+b+2c=0; dimension3−1=2 | Correct |
| highestVector | x₁²y₃ | coefficient of its monomial1; C=0; E₁=E₂=0 | Correct |
| lowering | F₁v,F₂v | 2x₁x₂y₃,−x₁²y₂ | Correct signs |
| raising | E₁v,E₂v | 0,0 | Correct |
| wordAction | empty and11 | v and2x₂²y₃, respectively | Correct chronological order |
| A | x₁x₃y₁ | weight(0,0,1), contraction x₃ | Correct |
| B | x₂x₃y₂ | weight(0,0,1), contraction x₃ | Correct |
| C | x₃²y₃ | weight(0,0,1), contraction2x₃ | Correct, distinct from contraction map |
| IsWeightBasis | v,A−B | diagonal triples(2,0,−1),(0,0,1) | Correct integer-weight condition |
| IsSl3WeightBasis | same vectors | differences(2,1),(0,−1) | Correct |
| IsSimpleLoweringSingleTarget | zero coefficient and nonzero first word | 0 permitted; F₁v=2x₁x₂y₃≠0 | Correct; not crystal operators |
| rootOperator_apply | v and y₂ under F₁ | both sides2x₁x₂y₃ and−y₁; proof rfl | Padding R07 |
| root_preserves_traceKernel | nine actions on18 monomials | commutator C D_ab−D_ab C=0 in all162 cases | API R07 |
| contraction_surjective_on_piece | q=x_i | preimage(1/2)x_i²y_i has contraction x_i | API; CharZero sufficient |
| traceKernel_finite | K=ℚ | finite kernel basis size15 | API R07 |
| traceKernel_finrank | K=ℚ | 18−3=15 on both sides | Worked-value padding |
| highest_mem | v | C(v)=0 and weight(2,0,−1) | Worked-value padding |
| highest_raising_zero | i=0,1 | derivative values0,0 | Worked-value padding |
| highest_weight_line | weight(2,0,−1) | exactly one ambient monomial v, C(v)=0, hence span dimension1 | Supporting calculation |
| planeConstraint | coefficients(0,−8,4),(1,0,0) | 0 and1, respectively | Correct |
| planeMap | standard coordinate vectors | A,B,C₀; independent monomials, rank3 | Correct |
| planeModel | constraint kernel | basis A−B, C₀−2B; dimension2 | Correct |
| target_weight_plane | μ=(0,0,1) | exactly A,B,C₀ monomials; both sides a+b+2c=0 | Supporting calculation |
| targetWeightSpace_finrank | preceding plane | 3−1=2 | Worked-value padding |
| word_1122 | chronological1122 | coefficients(0,−8,4) on both sides | Padding R07 |
| word_1212 | chronological1212 | coefficients(2,−6,2) on both sides | Padding R07 |
| word_1221 | chronological1221 | coefficients(4,−4,0) on both sides | Padding R07 |
| kernel_joint_raising_line | C,E₁,E₂ combined matrix | kernel dimension1; v spans it | Supporting result verified |
| kernel_lowering_cyclic | exact closure under F₁,F₂ | 15 independent word vectors, equal to kernel dimension15 | Supporting result verified |
| kernel_irreducible | N=0, span(v), M | zero excluded; span(v) fails F₁-stability since F₁v≠0 of another weight; M has dimension15 and is stable | Proof route supported by highest-line/cyclicity computation |
| sl3_weightBasis_iff_GL3 | total diagonal weight1 | (h₁,h₂)=(2,1) recovers(2,0,−1); (0,−1) recovers(0,0,1), using division by3 | Correct CharZero context |
| three_lines_distinct | word coordinate pairs | determinants16,32,16; relation p−2q+r=0 | Padding; no claim of triple independence |
| no_simple_lowering_weight_basis | same arbitrary-basis argument | highest dimension1 forces3 distinct lines in target dimension2 | Same headline as main file; remove duplicate catalogue |

**Pinned-library audit.** These 15 named-declaration checks in 12 rows used the pinned files, not online current Mathlib. The native definitions do not already supply the missing geometric carriers.

| Declaration(s) opened | File and line at the pin | What was checked |
|---|---|---|
| Module.Grassmannian | Mathlib/RingTheory/Grassmannian.lean:65 | Fields are a submodule, finite/projective quotient, and quotient rank at every prime. It is not a flag scheme; quotient rank N−r is correct. |
| Module.Basis.flag; flag_map | Mathlib/LinearAlgebra/Basis/Flag.lean:37, :56 | Span of the first k vectors; map compatibility is already native. No scheme structure is encoded. |
| MvPolynomial.weightedHomogeneousSubmodule | Mathlib/RingTheory/MvPolynomial/WeightedHomogeneous.lean:128 | Carrier uses nonzero-coefficient weighted degrees (:122); zero belongs. There is no contraction equation. |
| MvPolynomial.pderiv | Mathlib/Algebra/MvPolynomial/PDeriv.lean:61 | Native derivation with value1 on its variable and0 on the others; defined over a commutative semiring. |
| LinearMap.ker | Mathlib/Algebra/Module/Submodule/Ker.lean:59 | Body comap f ⊥; membership is exactly f(x)=0. |
| Module.Basis | Mathlib/LinearAlgebra/Basis/Defs.lean:89 | Stores a genuine linear equivalence to finitely supported coordinates, hence independence and spanning, not an arbitrary family. |
| Matrix.J; SymplecticGroup.mem_iff' | Mathlib/LinearAlgebra/SymplecticGroup.lean:58, :185 | Native sign [[0,−I],[I,0]]; the alternate membership theorem gives the column-action equation. |
| Convex.sum_mem | Mathlib/Analysis/Convex/Combination.lean:213 | Nonnegative weights must sum to1; dividing durations by t requires t>0 as stated. |
| subset_convexHull; convex_convexHull | Mathlib/Analysis/Convex/Hull.lean:49, :52 | Supply orbit inclusion/convexity, not unscaled central-path containment. |
| TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology | TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61 | Existing Zariski sheaf cohomology, obtained from native Sheaf.H. It does not construct Schubert schemes or their representations. |
| TauCeti.AlgebraicGeometry.InvertibleSheaf | TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:112 | Full subcategory of module sheaves satisfying invertibility. Actual rank-one atlas/transition helpers are at :70, :81 and later; no flag-associated bundle is supplied by this carrier alone. |
| TauCeti.holomorphicSheaf | TauCeti/Analysis/Complex/HolomorphicSheaf.lean:180 | Sheaf of types on ℂ, with values in E; not by itself a ringed analytic space with nilpotents or proper GAGA. |

Searches by object covered Grassmannians, flags, polynomial derivations/weighted pieces, contraction kernels, Demazure operators, LS paths, Schubert/Bott–Samelson schemes and coherent analytification. No second pinned implementation of the actual obstruction was found. The auxiliary file duplicates local constructions under different fully qualified names; no collision with another roadmap's fully qualified declaration name was found.

**Cross-roadmap audit.** All rows below were resolved anew. Existing-roadmap revisions were not substituted for main. Newly added roadmaps were read through the required roadmap tools or the supplied head checkouts. The required object searches also covered the board packages and the authorized open-head corpus. Some additional open records surfaced in the index; they were not treated as evidence about unprovided files.

| Roadmap / permitted version | Resolved location | Result and boundary |
|---|---|---|
| ModularCurves, main | TauCetiRoadmap/ModularCurves/README.md:427, §0G | Relative locally free quotient Grassmannian, affine charts and universal quotient; matches S1.1's floor. |
| ReductiveGroups, main | TauCetiRoadmap/ReductiveGroups/README.md:732, :771, :1023, :1092, :1811 | Layer7b double cosets; Layers8–9 relative/split group structure; algebraic Steinberg/distribution theory before geometric splitting. “RG7C.5” is gone. |
| GroebnerGeometry, main | TauCetiRoadmap/GroebnerGeometry/README.md:55, :394, G5 | Polynomial flag minors/straightening/initial algebras; the scheme and section-ring comparison remains SchubertGeometry's additional task. |
| SchemeAndStackFoundations, main | TauCetiRoadmap/SchemeAndStackFoundations/README.md:3309, :3437, :5613, :6567, :6768, :6987 | §§2.2/2.6 Leray and projective-space cohomology; §4.12 Chow modification; §5 cycles/refined intersections and coherent/perfect K-theory. General foundations stay external. |
| StableReduction, main | TauCetiRoadmap/StableReduction/README.md, Layer2; :529, Layer4 | Relative Proj and Rees blowup/chart/base-change construction support the word121 comparison. |
| AlgebraicVectorBundles, main | TauCetiRoadmap/AlgebraicVectorBundles/README.md:256, :306 | Exterior/determinant sheaves and L2A graded quasicoherent algebra; no duplicate graded-algebra carrier proposed here. |
| TopologicalKTheory, main | TauCetiRoadmap/TopologicalKTheory/README.md:251, T1.5 | Finite Grassmannian topology and characteristic maps remain at this owner. |
| LieGroups, main | TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:407, :428 | Compact/rank-one and full-flag/homogeneous comparisons; no smaller-block thirteen-orbit contract. R01. |
| IndexTheory, new head | TauCetiRoadmap/IndexTheory/README.md:888–895, I8 | Compact complex manifold, specified pullback bundle map, isolated nondegenerate fixed points, generic trace formula; f=g⁻¹ convention agrees. |
| ComplexKahlerGeometry, main | TauCetiRoadmap/ComplexKahlerGeometry/README.md, K3; :444, K4 | Holomorphic germs, Weierstrass/local analytic and bundle/sheaf calculus. No use of nonexistent K4.P. |
| RealAnalyticGeometry, main | TauCetiRoadmap/RealAnalyticGeometry/README.md:728–790, R3.2 | Native coherent module-sheaf predicate and coherent kernels on Stein manifolds; S9.0 explicitly extends to ideal quotients. Cartan A/B is not presumed for arbitrary spaces. |
| RootSystems, main | TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:218, :274, :356 | Root-level/Coxeter exchange and Layer6 integral root data. SchubertGeometry explicitly owns the extra interval-chain connectivity and bond arithmetic. |
| ClassicalGroups, main | TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:200–216, Layers1–3 | Tensor/dual and polynomial constructions over ℂ. The arbitrary characteristic-zero kernel is built explicitly here; it is not obtained by pretending the supplier has broader scalars. |
| LieHighestWeight, main | TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:370, :405, :537, :773 | Weights, highest-weight modules and character comparisons. They do not supply monomiality of actual simple generators. |
| AlgebraicTopology, main | TauCetiRoadmap/AlgebraicTopology/README.md:870–904, Stage5 item3 | Finite-cover transfer, p_*tr=d and tr p_*=sum of deck actions; rational averaging, not integral division by d. |
| HamiltonianReduction, main | TauCetiRoadmap/SymplecticGeometry/HamiltonianReduction/README.md:157–183, R2a | Same orbit, KKS sign, Hessian −α(X)α(p), wall/Morse–Bott cases and even cells. SchubertGeometry supplies the later root-chart comparison. |
| MorseTheory, main | TauCetiRoadmap/MorseTheory/README.md:124, :302–323, :369 | M2 handles and actual characteristic/attaching maps; orientation/filtration comparison is a separate target here. |
| CharacteristicClasses, main | TauCetiRoadmap/CharacteristicClasses/README.md:1060, :1136, C5/C5a | Generic BG/BT and transgression remain external, not inferred from rational normalizer cohomology. |
| ReflectionInvariantTheory, main | TauCetiRoadmap/ReflectionInvariantTheory/README.md:7, :19, :40 | §§1–3 invariant theory, Weyl exponents; independence from the Schubert normalizer application is maintained. |
| TensorProductCombinatorics, new head | TauCetiRoadmap/TensorProductCombinatorics/README.md:2279, :2409, :2452, §8.3 | Its coordinate/tableau theory consumes S4. No reverse mathematical premise remains here. Its note at :2580 still describes an older S9.5 comparison, but this head retains only root-datum specialization. |
| GeometricQuantization, new head | TauCetiRoadmap/GeometricQuantization/README.md:200, :624, :680 | §§3.3–3.4 own ordinary Picard/root-degree/forgetful statements; partial-flag geometry comes from S9.1/S9.7. The old duplication is removed. |
| FormalConnectionsOpers, new head | TauCetiRoadmap/FormalConnectionsOpers/README.md:691, F2.4 | Generic fixed-model manifold/tangent comparison stays there. The present S9.1 only compares the actual flag and word objects. |
| AlgebraicModuliForArithmeticGeometry, new head, required ownership lookup | TauCetiRoadmap/AlgebraicModuliForArithmeticGeometry/README.md:602, :677 | §1.3 still builds the identical nested locally free flag as the identical closed incidence subscheme. Not merely a broader coherent-quotient theorem. R03. |
| ShimuraData, new head, required ownership lookup | TauCetiRoadmap/ShimuraData/README.md:534, :661, :681 | §§3.8/3.14–15 still construct Par_t, integral cells/models/closure base change. The claimed transfer is not reflected there. R03. |
| ComplexComparisonPartII, new head, required ownership lookup | TauCetiRoadmap/ComplexComparisonPartII/README.md:723, :1069, :1674, :1690 | C−1.1/C0.4/C1.9 still construct the same analytic carrier, coherent pullback and proper GAGA, with their own dependencies. R03. |

There are 25 resolved roadmap rows. Ownership searches by the objects also found the board's Polylogarithms specification assigning analytification to ComplexComparisonPartII (packages/Polylogarithms/README.md:16). The intended downward relocation of relative flags, relative parabolic/integral models and coherent GAGA is recorded here; the requested direction is sensible, but the competing construction targets must be reconciled. No merge-order edit is requested.

**Source verification.** Sources were fetched through the sources service from legal author pages, arXiv, Numdam and publisher-open copies. The seeded six targets were all examined; certification limits are recorded rather than guessed. No README locator is explicitly marked “unverified”; the two references to unread diagram labels were also checked for accidental mathematical dependence.

| Seeded target / source | Exact text inspected | Outcome |
|---|---|---|
| 1.0 relative quotient | ConradReductive line 2993, Theorem2.3.6, pp.72–73; line 6512, Corollary5.2.8, pp.155–156; line 6551, Corollary5.2.9, pp.156–157 | Smooth proper represented quotient, self-normalizer, universal parabolic and dual Lie determinant agree. Descent of a type component is the stated application, including nonsplit forms. |
| 1.0 integral root cells | ConradReductive line 6011, Theorem5.1.13, p.143 | Ordered positive-root multiplication and the open big cell are supported over a nonempty base. The ℤ-cell statement is a deduction with field Bruhat and quotient charts, not the literal theorem. Empty-base pullback is trivial. |
| 1.1 finite locally free flags | README:129–149; ModularCurves §0G; AlgebraicModuliForArithmeticGeometry §1.3 | Mathematical incidence and nilpotent tests pass; the target itself supplies no literature locator. R04. Existing ownership is R03. |
| 1.2 root/classical comparisons | README:153–208; native Matrix.J and SymplecticGroup.mem_iff' | Coordinate, sign, dimension and characteristic2 examples pass. No exact classical-coordinate/symplectic source locator is supplied. R04. |
| 3.6 A₂ calculation | KnutsonDemazure line 85 (§3, p.3), line 142 (§4.0.2, p.4) | Source specifies weight2ω₁+5ω₂ and word121 with its own root directions. Its operators support the stated inversion/opposition conversion. The new explicit multiplicity formula was independently checked coefficientwise; exact diagram labels were not inferred from damaged OCR. |
| 9.0 analytic spaces | SGA1 line 9399, XII.1.1, retyped pp.239–241; line 9479, XII.1.3.1, pp.241–242 | Locally finite-type schemes, completed stalks, nilpotents, gluing, fibre products and exact coherent pullback match. Flatness is in the theorem; local flatness makes the stalk maps faithfully flat. |
| 9.0 general proper comparison | SGA1 line 9738, XII.4.2, pp.248–249; line 9801, Corollary4.3, p.249; line 9805, Theorem4.4, pp.249–251 | Proper morphism with locally finite-type complex source/base and coherent sheaf matches; the base need not be proper. Proper absolute coherent equivalence and support dévissage are supported. The proof's projective/Chow route was read at lines 9743–9788 and9816–9830. |
| 9.0 projective start | SerreGAGA line 730 (§12), lines 735/741/746 (Theorems1–3), pp.19–20; following §§13–17 (lines 766–1035) | Cohomology, full faithfulness and algebraization in the projective classical setting agree. The roadmap correctly gets scheme/nilpotent generality from SGA1 instead. |
| 9.1 specializations and trace | SGA1 XII.4.2–4.4 above; KnutsonDemazure lines 43–70 (§§2–3, p.2), lines 99–121 (§3, p.3); IndexTheory I8 | GAGA applies to proper flag/word objects; the precise fixed-map hypotheses come from I8. Character localization uses generic t. A finite T-fixed locus is not a license to substitute t=1. No such substitution is made in the roadmap. |

Other opened texts: CFL Definition2.1, p.4 (line 188), and §7.1, pp.18–19 (lines 941–975) require dominant weights/minimal cosets and explicitly refer out for the gcd theorem; their geometric application is characteristic0. This is not evidence for positive-characteristic splitting, and the roadmap does not use it that way. Littelmann1995 Theorem9.1, printed p.520 (line 815), supplies the character of the generated dominant-path module; the readable prose was checked, not the OCR-damaged displayed alternant. LLM Theorem4, published p.299 (line 251), and Theorem6, p.301 (line 324), give standard bases and generalized Demazure/vanishing comparisons; lines 317–323 distinguish ample positive multidegrees from semiample nonnegative ones and their contracted images. KnutsonBorelWeil pp.4–5 (lines 296–338,353) discusses the incidence/span and determinant twist; displayed glyphs are missing from the extraction, so the eight-versus-nine calculation above is independent evidence, not a claimed reading of those glyphs.

## Not verifiable

- The exact source locator for sampled §1.1 and the classical-coordinate portion of §1.2 is absent. Supplier resolution and small-instance verification do not replace it.
- The complete A₂ diagram entries and root-arrow labels in KnutsonDemazure §4.0.2 were not certified from the OCR. The prose identifies the example; the 46-weight formula and both word orders were independently recomputed.
- KnutsonBorelWeil's displayed numerical weights/equations are absent from its text extraction. Its readable prose supports the incidence/span discussion; the actual formula and dual weights were recomputed.
- The precise 12 October 2000 LLM preprint's page and extraction-line numbers were not verified. A legal published copy of the same work was obtained under the same source key; its theorem numbers agree, but its page and extraction-line numbers differ. No second source identity was invented.
- KnutsonBottSamelson, KnutsonAlgebraicVarieties and KnutsonSemester1 remain unidentified as exact editions/texts. Sources-service title searches and the author/course search did not locate the intended copies. The requested semester1 pp.49,173–176, including the thirteen-orbit classification, remain uncertified. The three unresolved works are collected in the missing-reference file; this review is finished, not parked.
- No exhaustive all-rank proof of the geometry, interval-bond theorem, splitting, SMT, K-theory or analytic comparison has been supplied by this review. The table records the concrete instances actually tried, and the source/dependency audit records the general support that was read.
- Ownership was checked against main, the board packages, the supplied open heads and the named owners resolved by the required roadmap tools. Other open PRs without provided files were not reviewed independently.

## Source issues

- **Misprint** in SGA1 at Exposé XII, Proposition 1.3.1, retyped p.241 (SGA1 line 9479): the source says the input is an O_Xan-module; it should be an O_X-module before analytification; affects nothing.
- **Misprint** in KnutsonDemazure at §1, p.1 (KnutsonDemazure lines 12–17): the source says degree-k Čech cochains use k-fold intersections and places global sections at the empty intersection; it should use k+1-fold intersections, with global sections augmenting degree zero; affects nothing.
