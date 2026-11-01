# Review of SchubertGeometry (pull request #1224 at f356f08)
**Verdict:** needs changes

This review covers the entire named folder, including inherited content. No PR file was changed. Dependency, ownership and acceptance-test defects prevent acceptance.

## R01 (P1) — Break the TensorProductCombinatorics supply cycle

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:24`, `:425`: “TensorProductCombinatorics H6”; “construct the comparison with TPC H8”.

**Claim:** TensorProductCombinatorics supplies SchubertGeometry, while SchubertGeometry supplies its generic path theory back to that roadmap.

**Witness:** `TauCetiRoadmap/TensorProductCombinatorics/README.md:2205` imports SchubertGeometry S4.1; `:2409` imports S4.3–4. The dependency check reports both the upward TPC edge and `CYCLE among: SchubertGeometry, TensorProductCombinatorics`.

**Repair:** Retain SchubertGeometry's existing generic finite-root-datum theory as the earlier owner. Move the type-A comparison entirely to TensorProductCombinatorics §8.3, which already states it. Put applications needing its Layer 6 in a later Part II; remove the reverse supplier edge from the base roadmap. The A₂ comparison still has the same 46 weights and dimension 81; moving its ownership does not weaken it. This finding covers the gate's TPC UPWARD and CYCLE failures.

## R02 (P1) — Replace supplier targets that do not exist on main

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:269`, `:461`: “Apply K4.P's exponential sequence”; “RG7C.5's actual double-coset map”.

**Claim:** These named sections supply prerequisites without declared gaps.

**Witness:** On main, `TauCetiRoadmap/ComplexKahlerGeometry/README.md:444` begins K4 and `:568` begins K5; there is no K4.P. `TauCetiRoadmap/ReductiveGroups/README.md:771` supplies parabolic double cosets in Layer 7b, not RG7C.5.

**Repair:** Cite the actual existing double-coset target in ReductiveGroups Layer 7b. The exponential-sequence construction is now ComplexComparisonPartII C5.4, at its `integralLineBundleChernClass` construction; consume it only in a later owner consistent with R05, or declare a precise, order-valid supplier gap. The K4.P addition in an open revision of an existing roadmap cannot replace main as a supplier. Retest with O(1) on ℙ¹: the connecting class and root degree must both be +1; for Gr(2,4), the double-coset indices remain d=0,1,2.

## R03 (P1) — The thirteen-orbit supplier contract is absent

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:440`: “consume LieGroups Layer8's smaller block-Borel calculation”.

**Claim:** LieGroups supplies the open chart, inverse, thirteen GL₃ flag orbits, stabilizers and dimensions.

**Witness:** `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:428` on main contains full Borel/flag/Bruhat and Borel–Weil targets. Its complete Layer 8 has no smaller block-Borel construction or thirteen-orbit classification.

**Repair:** Replace this asserted supply with a precise declared gap in an order-valid extension, naming the group action, chart inverse, thirteen representatives and stabilizers; or make this application a target of the extension itself. Citing an open revision of LieGroups does not supply the missing main target. A regression must distinguish the six full-Borel GL₃ cells from the claimed thirteen orbits of the upper-left B₂ action; the ordinary Bruhat theorem cannot stand in for the latter.

## R04 (P2) — S3P duplicates GeometricQuantization's ordinary Picard construction

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:233`, `:252`, `:291`.

**Claim:** S3P builds the root-degree basis, ordinary holomorphic Picard isomorphism and character-to-degree forgetful map.

**Witness:** `TauCetiRoadmap/GeometricQuantization/README.md:618` (§3.3) constructs the same degree matrix and harmonic-form/exponential-sequence proof; `:674` (§3.4/Q2A.3) constructs the same kernel, image and central descent.

**Repair:** Keep the geometric partial-flag/root-chart/Kähler comparisons at the existing SchubertGeometry S9 owner. Import GeometricQuantization §§3.3–3.4 for the ordinary Picard and forgetful conclusions in a later extension, rather than give them a second construction. Keep only genuinely additional algebraic/holomorphic adapters, with their distinction stated. Both owners compute SU(2) degree a↦a and SO(3) degree a↦2a; there is no differing mathematical scope that justifies duplicating these theorems.

## R05 (P2) — Move the ComplexComparisonPartII consumption downstream

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:26`, `:275`, `:417`.

**Claim:** The existing roadmap consumes the unmerged complex comparison extension.

**Witness:** The dependency check prints `UPWARD: SchubertGeometry (on main) -> ComplexComparisonPartII (#37) at README lines [26]`.

**Repair:** Separate the late GAGA/analytic applications into a SchubertGeometry Part II after ComplexComparisonPartII; the base cannot acquire an upward prerequisite. Preserve the canonical comparison and its nilpotent scope: for the proper dual-number point both H⁰ spaces are ℂ[ε]/(ε²), with ε≠0. This is the gate's ComplexComparisonPartII failure, not a request to edit the merge-order file.

## R06 (P2) — Separate the integral ShimuraData application from the base

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:21`, `:355`.

**Claim:** SchubertGeometry consumes ShimuraData's early models, supplies a proof component, then consumes its late comparison.

**Witness:** The dependency check prints `UPWARD: SchubertGeometry (on main) -> ShimuraData (#100) at README lines [21]`. The README itself describes supply in both directions, even though it divides it into subphases.

**Repair:** Assign the necessary early models to an earlier owner and leave the integral Shimura application in a later extension, with a single roadmap-level supply direction. Do not solve this by calling the same roadmap “early” and “late”. Preserve the rank-one integral test: ℙ¹ over ℤ, H⁰(O(m)) free of rank m+1 for m≥0, and the same module after reduction at 2 and 3. This covers the gate's ShimuraData failure.

## R07 (P2) — Consume the existing smooth analytification comparison

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:419`: “for every separated smooth finite-type ℂ-scheme”.

**Claim:** This roadmap constructs a generic comparison of independently constructed smooth and analytic carriers.

**Witness:** `TauCetiRoadmap/FormalConnectionsOpers/README.md:691` (F2.4) now starts with ComplexComparisonPartII's same analytification and constructs its fixed-model manifold, topology, charts and tangent comparison.

**Repair:** Delete the repeated generic theorem; consume F2.4 and retain the flag/word-specific actions and line-bundle specialization. For ℂ-affine space the compared point map remains the identity and its derivative remains the identity matrix. This is supplier drift from an “independent constructions” description to a comparison already owned by the supplier.

## R08 (P2) — Put a statable headline in the acceptance module

**Location:** `TauCetiRoadmap/SchubertGeometry/Suggested.lean:1`; `TauCetiRoadmap/SchubertGeometry/SimpleGeneratorTargets.lean:185`.

**Claim:** Suggested.lean is a representative interface catalogue, while the actual simple-lowering obstruction is elsewhere.

**Witness:** Suggested.lean contains five definitions, three elementary proved theorems and two library-lemma examples, with zero admitted headline theorems. `no_simple_lowering_weight_basis` already elaborates on native polynomial/submodule carriers in the auxiliary file.

**Repair:** State the retained headline obstruction, with only its necessary real definitions, in Suggested.lean; make its build exercise that statement. List every other headline and its genuinely missing carrier in the module docstring rather than substitute rank predicates for geometry. The characteristic-zero kernel model and its three forced lines provide a tested, nonvacuous statement: their pairwise determinants are 16,32,16 in a two-dimensional space.

## R09 (P2) — Remove computational procedures from the roadmap scope

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:315`, `:330`: “normalization/comparison algorithm”; “a reduction/inverse algorithm”.

**Claim:** Implementers must construct algorithms, in addition to the mathematical existence and comparison theorems.

**Witness:** These are explicit requested algorithms, not merely the finite example calculations at `:336`. The product contract permits mathematical background and small Checks, not computational-algorithm deliverables.

**Repair:** State existence, uniqueness, presentation-independence, spanning and actual inverse maps as mathematical theorems. Remove algorithmic execution/normalization requirements. Keep the rational reparametrization example: at t=1/2 the incorrectly shifted representative gives (3/4,1/2), outside x=2y. That example still discriminates the correct definition without specifying an algorithm.

## R10 (P2) — Place genuinely new work in Part II

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:221`, `:326`.

**Claim:** The existing folder acquires the ordinary Picard programme and a new general simple-generator obstruction development.

**Witness:** On main, `TauCetiRoadmap/SchubertGeometry/README.md` already has S1–S9; its S4.4 has no 15-dimensional contraction-kernel construction and it has no S3P. The change is an extension of an existing library plan.

**Repair:** Preserve and cite the base roadmap; move genuinely additional results to SchubertGeometry Part II, saying where the base stops. Resolve R04 before moving anything already owned elsewhere. The existing scheme, splitting and SMT programme is not to be replanned. The new kernel still has dimension 15 and still refutes simple-lowering monomiality after this separation. This is repairable scope separation, hence “needs changes”, not rejection of the mathematics.

## R11 (P3) — Add exact sources for the sample and the other claims

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:233`–`:310`, `:568`.

**Claim:** The sampled S3P targets and most numbered targets have verifiable source support.

**Witness:** None of S3P.1, S3P.2 or S3P.3 supplies a book/paper theorem, page or source identifier. The closing paragraph gives broad works, with an exact locator only for CFL; no sources.toml is present.

**Repair:** Give each retained theorem its precise hypotheses and a legal source's exact locator; distinguish deductions from cited results and name their inputs. Add a source manifest when repairing, reusing source identities. For the sample, locate separately the integral cell/root-degree argument, the Dolbeault/exponential-sequence argument and the homogeneous-character descent. A reference to another roadmap is a supplier contract, not a verified literature locator. The computed SU(2), SO(3), torus and SU(3) tests below should remain Checks.

## R12 (P3) — Supply the required layer, API and Check structure

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:1`, `:30`, `:315`.

**Claim:** Large numbered paragraphs define multiple objects and give their entire theory without target-level dependency lines or per-definition Checks.

**Witness:** There are no `*Needs:*` lines, no per-layer Examples/Dependencies endings, no Scope and ownership or References section, and no three-Check block for the path carrier, crystals or signed-string operators.

**Repair:** Use the requested roadmap headings, an opening Summary, explicit supplier contracts, prose subsections, API lists and at least three discriminating Checks per definition. Give each target the dependencies of both its statement and its proposed proof route. For signed strings, m=0, m=−1 and m=−2 distinguish respectively 1, 0 and a negative Euler contribution; for paths retain the noncanonical-central-shift negative control. Global acceptance examples do not replace the missing definition-level Checks.

## R13 (P3) — Delete API and worked-example padding from Lean

**Location:** `TauCetiRoadmap/SchubertGeometry/Suggested.lean:49`, `:64`, `:67`, `:75`, `:82`; `TauCetiRoadmap/SchubertGeometry/SimpleGeneratorTargets.lean:93`, `:110`, `:113`, `:116`, `:138`, `:141`, `:145`, `:149`, `:176`.

**Claim:** Elementary consequences and concrete Check calculations are acceptance theorems.

**Witness:** Incidence reflexivity/transitivity are `le_refl`/`trans`; the two examples are exactly `Module.Grassmannian.ext` and `Module.Basis.flag_map`; `rootOperator_apply` is `rfl`. The three word formulas literally reproduce README `:336`–`:340`.

**Repair:** Delete it from `Suggested.lean`: each elementary API theorem or worked-example declaration identified above. Apply the same acceptance-file rule to the auxiliary Lean file; keep these statements and calculations in the README, not as admitted tests. In particular delete the three `word_*` targets and the small dimension/highest-vector/line-distinction tests, rather than prove them in place. Retain the genuine obstruction headline. All 18 admissions were independently tried with `simp`; none closed. That does not exempt declarations that are padding because they mirror Checks or compute small values.

## R14 (P3) — Fix imports in both Lean files

**Location:** `TauCetiRoadmap/SchubertGeometry/Suggested.lean:6`; `TauCetiRoadmap/SchubertGeometry/SimpleGeneratorTargets.lean:1`.

**Claim:** The import headers satisfy the acceptance-file form rule.

**Witness:** Each file has five `Mathlib.<submodule>` imports and no single `import Mathlib` line. The gate's `imports`, `mathlib-subimports` and `no-import-mathlib` failures describe the same defect in Suggested.lean.

**Repair:** Replace each header's submodule imports with the single `import Mathlib`, then elaborate under the defaults. No TauCeti import is currently used. Successful elaboration under the old import list does not satisfy the form rule.

## R15 (P3) — Replace frozen supplier links

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:19`–`:26`, `:419`.

**Claim:** The linked historical supplier versions identify the contracts available to this roadmap.

**Witness:** The gate records ten `blob` matches, including the ModularCurves, ReductiveGroups and FormalConnectionsOpers links. They point into historical roadmap commits.

**Repair:** Link a repository path on main, or name the roadmap and exact section; re-resolve against the permitted main/head source. Also replace the pull-request links at `:23`, `:430`, `:441` with named roadmap/section links. A past version containing K4.P or an orbit exercise cannot establish its availability today.

## R16 (P3) — Remove TeX syntax outside code spans

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:317`, `:538`, `:550`, `:555`–`:558`.

**Claim:** The prose formulas satisfy the Unicode/code-span house style.

**Witness:** The gate reports twelve `tex` matches, including `Bl_{P₀}B` and `N_{C/F}`.

**Repair:** Put those formulas in code spans or use Unicode subscripts, preserving the mathematics. For the blowup, the normal bundle remains O_C² and the exceptional normal line O(0,−1); formatting must not change the two factors.

## R17 (P3) — Replace the HTML anchors

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:177`, `:491`.

**Claim:** The embedded anchors satisfy the README text rules.

**Witness:** These are explicit `<a id=...>` anchors; the gate records both under `residue`.

**Repair:** Use normal Markdown headings and their generated anchors, updating any internal links. Keep the 81-dimensional character and eight-dimensional incidence examples under those headings.

## R18 (P3) — Make Lean names and documentation agree with the README

**Location:** `TauCetiRoadmap/SchubertGeometry/Suggested.lean:1`, `:25`, `:49`; `TauCetiRoadmap/SchubertGeometry/SimpleGeneratorTargets.lean:7`, `:18`.

**Claim:** The Lean declaration names and documentation provide the required acceptance-test interface.

**Witness:** Neither file has the required target-signatures module docstring. Many declarations lack docstrings. Names such as `pivotCount`, `HasExactPivotRanks` and `no_simple_lowering_weight_basis` never appear in the README.

**Repair:** After removing padding, give each retained declaration its mathematical docstring and README occurrence, use the required namespace/layer comments, and name missing headline carriers explicitly. Do not add names merely to preserve an API catalogue. The complete elaborated-signature comparison found no accidentally dropped hypothesis: CharZero is retained on every one of the 18 admissions, and its absence from the real polynomial definitions is mathematically harmless.

## Verified sound

These are concrete instance and interface checks, not a claim to have proved the entire programme. All three requested files were read. The main SchubertGeometry baseline was compared; UniversalCovers and IntegralLattices on main were read as shape exemplars. The head was verified as f356f08f27f03da7c92341afd0ee485bb93934ca. The outside-folder diff is empty and the worktree remained clean.

The supplied gate reports build=0 but overall FAIL. Its nonzero groups are blob=10, tex=12, residue=2, imports=1, mathlib-subimports=5, no-import-mathlib=1 and depcheck=4. Every group is covered above. No sorry'd data, `set_option`, illegal extra file, copied source file or outside-folder change was found.

The dependency check was rerun without changing the order; its complete output was:

```text
UPWARD: SchubertGeometry (on main) -> ComplexComparisonPartII (#37) at README lines [26]
UPWARD: SchubertGeometry (on main) -> ShimuraData (#100) at README lines [21]
UPWARD: SchubertGeometry (on main) -> TensorProductCombinatorics (#274) at README lines [24]
CYCLE among: SchubertGeometry, TensorProductCombinatorics
depcheck: 204 roadmaps, 1450 edges, 4 problem(s)
```

The citation resolver reported no unresolved names. Its output explicitly says it did not inspect the pinned libraries; its permissive search also sees open revisions of existing roadmaps. That output therefore does not discharge R02/R03. There are no declared gaps to treat as settled contracts.

The prescribed absolute-path `lake env lean` elaboration of Suggested.lean exited 0 with no diagnostics. Scratch copies added `#check @name` for all 8 declarations there and all 46 named declarations in SimpleGeneratorTargets.lean; both elaborated. The latter produced exactly 18 intended admission warnings. All elaborated types were compared with their definitions and prose, including field, characteristic-zero, index-universe and basis binders. No binder repair was needed. A separate copy replaced each of the 18 admissions by the single tactic `simp`; all 18 remained unsolved. The supplementary highest-raising calculation closes after finite-index case splitting and unfolding, consistent with its status as a Check. No Lean process was left running.

The headline inventory is: relative Schubert/incidence comparisons (S1); all-word images and derived O/line pushforward (S2/S5.7); equivariant lines and Demazure/Weyl characters (S3); ordinary/equivariant Picard comparisons (S3P); LS-chain, character and tensor theorems, with the simple-generator obstruction (S4); splitting, normality and cohomology/restriction (S5); all-degree SMT/projective normality (S6); Chevalley divisors and cycle comparison (S7); ordinary/equivariant flag K-ring presentations (S8); and analytic Lefschetz, carrier and Morse comparisons (S9). None is stated in Suggested.lean. The auxiliary obstruction is demonstrably statable; the module does not name the missing Schubert schemes, word maps, geometric section spaces, path crystals, Picard comparisons or flag K-groups for the other headlines. A general proof of non-statability is not inferred merely from a name search.

The adversarial tables contain 103 README rows and 56 Lean rows (54 named declarations and two anonymous examples). They use characteristic-zero coefficients unless a field is specified. “Pass” means the computed instance agrees; “contract” points to a dependency/ownership defect, not a false numerical identity. `—` in the change column means no mathematical change is indicated by that instance. Test scripts used exact integer/Fraction arithmetic, with no downloaded code or packages.


| README statement | Instances tried | Values computed on the two sides | Result | Change |
|---|---|---|---|---|
| Conventions: negative Borel, cells, dimension | SL₂, e and s; torus | C(e)=point, dim=0=ℓ(e); C(s)=A¹, dim=1=ℓ(s); torus has one point | Pass | — |
| Conventions: associated character and dual | SL₂ λ=ω; SL₃ λ=ω₁ | degree=1=⟨ω,α∨⟩; SL₃ ordinary dual highest weight ω₂=−w₀ω₁, not ω₁ | Pass | Keep opposition map explicit |
| Relative/nonreduced convention | S=Spec k[ε]/ε²; rank-zero flag | flag=S, geometric fibre=k reduced, total ε≠0 with ε²=0 | Pass | No reduced-total-space inference |
| S1.1 flags, incidence, annihilators | V=k², ranks empty,1,1<2 | empty flag point; rank-1 flags ℙ¹; annihilator of ke₁ is ke₂*; L→V/V=0 | Pass | — |
| S1.2 fixed loci, inversion and parabolic projection | SL₂/T; P=G; GL₃ w=s₁s₂ | fixed flags=2; P=G gives 1; w⁻¹=s₂s₁, not s₁s₂ | Pass | — |
| S1.3 pivot ranks and dimensions | Gr(2,4), pivots (2,4); r=0,4,5 | ranks j=0…4: 0,0,1,1,2; cell dim=(2−1)+(4−2)=3=4−1; extreme dims 0,0; r=5 empty | Pass | — |
| S1.4 determinantal schemes | ℙ¹ line against F₁; dual-number thickening | closed point ideal (z), quotient k; base change gives k[ε]/ε², not k | Pass | — |
| S1.5 isotropic dimension | (m,r)=(2,1),(2,2),(0,0),(2,3); char 2 | dimensions 3=1·3, 3=2·2−1, 0; rank3 isotropic space absent | Pass | — |
| S1.5 coordinate permutation and sign | m=2,r=1 | reordered source pairing has entries J₁₄=1,J₂₃=1,J₃₂=−1,J₄₁=−1; native J has opposite global sign | Pass | — |
| S1.5 unipotent equation and multiplication | r=s=1, Y=(1,2),Y′=(3,4),Z=5,Z′=6 | YᵀJY=0=Z−Zᵀ; YᵀJY′=−2; product coordinates (4,6;9) on both sides | Pass | — |
| S1.5 inverse and Levi conjugation | same Y,Z; A=2,D=diag(3,1/3) | inverse coordinates (−1,−2;−5); conjugated coordinates (6,4/3;20) | Pass | — |
| S1.5 characteristic-2 affine parameters | r=2,s=1,Y=I₂,Z=[[0,1],[0,0]] | Z−Zᵀ=J; mod2 both are [[0,1],[1,0]]; parameter count 4+3=7 | Pass | No division by 2 |
| S1.5 endpoint stabilizers | r=0; s=0,r=2 | radical dimensions 0 and 3; latter symmetric 2×2 additive matrices, Z↦AZAᵀ | Pass | — |
| S2.1 left/right crank | X=point; X=A¹ with constant flag map | right crank ℙ¹, dim1; A¹×ℙ¹ is proper over A¹ but not over k | Pass | — |
| S2.2 all words and smooth proper dimension | Q=∅,(i),(i,i) | dimensions 0,1,2; fixed-section counts 1,2,4 | Pass | — |
| S2.3 tangent/fibre weights | Q=(i,i), ε=00,01,10,11 | tangent pairs (α,α),(α,−α),(−α,−α),(−α,α); fibre λ,sλ,sλ,λ | Pass | — |
| S2.3 reduced-word image | A₂ Q=121 | ℓ(w₀)=3=dim Z; open-cell map A³→A³; special fibre ℙ¹ has dim1 | Pass | No global isomorphism claim |
| S2 all-word Demazure image | Q=∅,(i,i) | δ= e,s_i; ordinary products e,e; image dimensions 0,1 | Pass | — |
| S2.4 braid/refinement | A₂ 121 and 212 | both products w₀, lengths3; 121 contracts over fixed-plane curve, 212 over fixed-line curve | Pass | Do not identify schemes over flag |
| S2.5 compact rank-one quotient | U(2) | SU(2)×U(1)→U(2) kernel {(1,1),(−1,−1)} of order2 | Pass | Keep finite quotient |
| S3.1 tensor, dual, descent, ample | SL₂ O(m); SL₃ maximal parabolic | O(1)⊗O(2)=O(3), dual degree −1; a Levi pairing 1 fails descent, 0 passes | Pass | — |
| S3.1 fibre equivalence and scalars | torus flag point; χ(z)=z | [1,v]↦v and [g,v]↦gv inverse; automorphism group k×, not trivial | Pass | — |
| S3.1 forgetting linearization | torus; PGL₂ | X*(torus)→0 all kernel; PGL₂ character a gives degree2a, so O(1) has no lift | Pass | — |
| S3.2 extremal-span/restriction | SL₂ λ=ω, w=e,s; λ=0 | spans dim1,2, matching dual section dimensions1,2; λ=0 gives dim1 for both indices | Pass | Wall/coset restriction necessary |
| S3.3 rank-one cohomology | m=1,0,−1,−2 | (h⁰,h¹)=(2,0),(1,0),(0,0),(0,1); Euler=2,1,0,−1 | Pass | — |
| S3.3 D signed strings | SL₂ λ=ω,−ω,−2ω | D(e^ω)=e^ω+e^−ω; D(e^−ω)=0; D(e^−2ω)=−1 | Pass | — |
| S3.3 positive-denominator Δ | λ=−ω,ω,2ω | Δ(e^−ω)=e^−ω+e^ω; Δ(e^ω)=0; Δ(e^2ω)=−1; agrees with ιDι | Pass | — |
| S3.3 numerator covariance | λ=2ω, α=2ω | N=e^2ω−1; sN=e^−2ω−1=−e^−2ω N | Pass | Weighted sign retained |
| S3.4 idempotence, braid, characters | A₁ string; A₂ (7,5,0); SL₂ char p | D(1)=1=D²(1); final A₂ dimensions81=81; ∇(pω) dim p+1 versus L(pω) dim2 | Pass | No simplicity in char p |
| S3.5 embedding/separability | Frobenius ℙ¹→ℙ¹ in char p | t↦t^p injective on geometric points, differential0, degree p≠1 | Pass | Keep scheme-level hypothesis |
| S3.1 worked A₂ stages | lowest (0,5,7), words121/212 | augmentations 1,6,33,81 and 1,3,21,81 | Pass | — |
| S3.1 worked multiplicity formula | all a+b+c=12 | 46 weights: 21×1+15×2+10×3=81; (4,4,4) multiplicity3 | Pass | — |
| S3.1 independent GT comparison | 7≥u≥5≥v≥0,u≥w≥v | 81 patterns; coefficient discrepancy0 at every weight; both Δ fix final character | Pass | — |
| S3P.1 integral topology/root-degree basis | point, SU₂/T, SU₃/T, ℙ² | π₁=0 in all four; H² ranks0,1,2,1; degree matrices empty,(1),I₂,(1) | Pass/contract | R04; exact source absent |
| S3P.1 central cover and degree | SU₂→SO₃, O(1) | underlying flag degree map1; equivariant SO₃ lattice maps by2; fundamental line degree1 | Pass | — |
| S3P.2 invariant harmonic forms | ℙ¹, SU₃/T, point | nonzero cotangent weights have one sign; positive sums pair >0; invariant (0,q) dimensions0 for q>0; h⁰(O)=1 | Pass/contract | R02/R04 |
| S3P.2 exponential comparison | O(k) on ℙ¹; elliptic curve negative control | c₁=k and degree=k; on elliptic curve h⁰,¹=1 and Pic⁰≠0, so c₁ not injective | Pass | Keep flag hypotheses |
| S3P.2 pullback/product/GAGA | ℙ¹×ℙ¹; partial→full SU₃ flag | Pic=ℤ², degrees(1,0),(0,1); partial generator maps to one fundamental weight | Pass/contract | R05 |
| S3P.3 fibre/extension/forgetful | SU₂,SO₃,U₂,torus | a↦a, a↦2a, (a,b)↦a−b, a↦0; kernels0,0,ℤ(1,1),ℤ | Pass/contract | R04 |
| S3P.3 central gluing and invariant ∂̄ | PU₃ acting on ℙ²; ℙ¹ O(k) | central action ζ^−k trivial iff3 divides k; invariant difference-form dimension0, so unique invariant ∂̄ | Pass | — |
| S4.1 path quotient, crystal data, central shift | π(t)=(t,0),χ=(1,1); zero path | canonical shift at1/2=(1,1/2); reparametrized shift=(3/4,1/2); zero path endpoint0 and no lowering | Pass | R09 removes algorithm, not maps |
| S4.2 root operators | A₁ straight ω and 2ω | f(ω) endpoint−ω; e reverses it; ε,φ for 2ω are0,2, then1,1, then2,0 | Pass | — |
| S4.3 LS chains/integrality/finite component | A₁ λ=2ω, break1/2; λ=0 | bond2, break×bond1 integral; 3 paths with endpoints2ω,0,−2ω; zero gives1 path | Pass | — |
| S4.3 reflection order/walls | A₂ λ=ω₁, β=α₂; λ regular | zero pairing gives same coset; negative pairing after s₁ gives descent length1→0 | Pass | — |
| S4.3 bond gcd/a-chain equivalence | A₁ bond2; A₂ λ=2ω₁+5ω₂, interval e…s₁s₂ | q=2 divides2 and half-chain exists; q=3 fails; two A₂ chain bond lists (5,2),(7,5), gcds1=1 | Pass | — |
| S4.3 equal/incomparable intervals | u=u; s₁,s₂ | gcd empty=0, any positive q divides0; no chain between incomparable indices | Pass | Domain restriction retained |
| S4.3 central transport laws | GL₂ λ=(1,0),χ=(1,1),ψ=(−1,−1) | successive slopes (2,1) then(1,0); combined shift0, unchanged root pairing1 | Pass | — |
| S4.3 convexity | pure central λ=(1,1),t=1/2; A₁ λ=ω | π(t)=(1/2,1/2) in t·{λ}, not {λ}; semisimple tω lies in [−ω,ω] | Pass | — |
| S4.4 tensor/character theorem | A₁ ω⊗ω | weights2ω,0,0,−2ω = B(2ω)⊔B(0), sizes4=3+1 | Pass | Finite owner remains base |
| S4.4a polynomial representation/contraction | 18 bidegree(2,1) monomials | C(x_i²y_i)=2x_i; contraction matrix rank3; kernel18−3=15 | Pass | — |
| S4.4a root invariance/commutators | [D₁₂,D₂₁] on x₁,x₂,y₁ | outputs x₁,−x₂,−y₁ = (D₁₁−D₂₂) outputs; C D−D C=0 on monomials | Pass | — |
| S4.4a highest/cyclicity/irreducibility route | v=x₁²y₃ | weight(2,0,−1); both raisings0; joint-kernel matrix rank17/nullity1; lowering spans ranks1,3,6,9,12,14,15 | Pass | CharZero retained |
| S4.4a diagonal-weight recovery | μ=(0,0,1) | total1, differences(0,−1); inverse μ₃=(1−h₁−2h₂)/3=1, μ₂=0, μ₁=0 | Pass | char3 excluded |
| S4.4a target plane | A,B,C₀ | contraction coefficients1,1,2; kernel dimension3−1=2 | Pass | — |
| S4.4a three chronological words |1122,1212,1221| vectors(0,−8,4),(2,−6,2),(4,−4,0); contraction0,0,0 | Pass | R13: README Checks |
| S4.4a forced-line obstruction | three word vectors | determinants16,32,16; p−2q+r=0; 3 distinct lines>2 basis lines | Pass | R08 headline |
| S4.4a adjoint positive/control | E₁₂,E₂₃,E₂₁,E₃₂ on 8 matrix basis elements | all32 outputs single-target; e.g. [E₁₂,H₁]=−2E₁₂, [E₁₂,H₂]=E₁₂ | Pass | — |
| S4.4a all-root negative/control | roots12,23,13 with opposite roots | forced Cartan vectors H₁,H₂,H₁+H₂, pairwise independent in dim2 | Pass | — |
| S4.5 simplex versus finite LS set | S₃ Bruhat poset | six vertices; 2 choices at each middle rank yield4 tetrahedra; adjoint LS set has8 paths, not continuum | Pass | — |
| S4.6 geometric path sections | A₁ O(2) | sections x²,xy,y²: three independent leaves of dimension1, matching3 paths | Pass | General construction needs exact source |
| S4.7 opposition/dual | SL₃ λ=ω₁,κ=ω₂, π highest | −w₀κ=ω₁ at the point; full weights after transport are ε₁,ε₂,ε₃ | Pass | — |
| S5.1 trace normalisation | F₂[x], F₃[x] | p=2: Tr(1)=0,Tr(x)=1,Tr(x³)=x; p=3: Tr(x²)=1,Tr(x⁵)=x | Pass | — |
| S5.2 compatible ideals | F₂[x], σ(f)=Tr(xf), I=(x) | σ(1)=1,σ(x)=0,σ(x²)=x∈I; sum/intersection with(0),(1) stay compatible | Pass | — |
| S5.3 inseparable central cover | SL₂→PGL₂ in char2 | kernel μ₂ nonreduced; both flag quotients ℙ¹, induced flag map degree1 | Pass | No étaleness premise |
| S5.4 normality/π*O | A₁ reduced word; nodal split curve control | π=id on ℙ¹, π*O=O; node has2 branches and is nonnormal despite F-purity | Pass | Unibranchness is essential |
| S5.5 vanishing/restriction | ℙ¹ O(0),O(2); nonempty standard union | h¹=0,0; h⁰=1,3; restriction to closed cell onto k | Pass | — |
| S5.5 mixed-family negative control | Y={0,∞}, λ=0 | H⁰(O_Y)=k²; restriction k→k² diagonal rank1; H¹(I_Y)=k | Pass | — |
| S5.6 integral/base-change section algebra | ℙ¹_ℤ,O(m),m=0,1,2 | H⁰ ranks1,2,3 over ℤ and F₂/F₃; higher groups0; finite cokernel with all mod-p quotients0 is0 | Pass/contract | R06 |
| S5.6 regular/F-regular/Richardson inputs | rank-one two opposite flags | nonempty intersection ℙ¹ or point, reduced; distinct endpoints disjoint; Tor of disjoint skyscrapers0 | Pass | No arbitrary mixed vanishing |
| S5.7 all-word derived comparison | Q=∅,(i),(i,i) | image point,ℙ¹,ℙ¹; fibres point,point,ℙ¹ with H⁰=k,H^q=0; O(2) sections1,3,3 on appropriate images | Pass | — |
| S6.1 section/coordinate ring | ℙ¹ O(2); λ=0 | degree-m dimension2m+1 on both rings; λ=0 contracts ℙ¹ to point | Pass | — |
| S6.2 minors/relations | Gr(2,4), columns e₁+e₃,e₂+e₄ | minors(1,0,1,−1,0,1); p₁₂p₃₄−p₁₃p₂₄+p₁₄p₂₃=1+0−1=0 | Pass | — |
| S6.3 minuscule induction | ℙ¹,O(1),D=point,m=1 and0 | h⁰:1→2→1 at m1; at m0:0→1→1 with H¹(O(−1))=0 | Pass | — |
| S6.4 standard products/defining chains | A₁ shape ω twice | four tensor words, three symmetric degree2 sections; mixed ordering has one straightening relation | Pass | Preserve common-chain condition |
| S6.5 unions and normal generation | two intersecting coordinate ℙ¹s | degree-m sections2(m+1)−1=2m+1; node ring k[x,y]/xy nonnormal | Pass | No union-normality claim |
| S7.1 Chevalley coefficient | SL₂ λ=2ω,w=s,v=e | section vanishes to order2=⟨2ω,α∨⟩ | Pass | — |
| S7.2 minuscule/zero divisors | λ=ω,0 | divisor coefficients1,0; empty zero divisor for constant section | Pass | — |
| S7.3 cycle/cohomology comparison | ℙ¹,ℙ² | point degree1 maps to integral generator1; hyperplane² in ℙ² has degree1 | Pass | — |
| S8.1 K₀/G₀ | smooth point and ℙ¹ | groups ℤ and ℤ² on both sides; [O_p]=1−[O(−1)] | Pass | Smoothness retained |
| S8.2 ordinary presentation | SL₂, x=e^ω | x+x⁻¹−2 gives (x−1)²=0; quotient free rank2=|W|; killing all invariants kills1 | Pass | — |
| S8.3 equivariant/partial presentation | SL₂ full flag; P=G | R(T)⊗R(G)R(T) rank2 over base R(T); P=G rank1 | Pass | Simply-connected-derived range |
| S8.4 general lattice image | PGL₂ on ℙ¹, h=[O(1)]−1 | h²=0, [O(2)]=1+2h; image ℤ⊕2ℤh excludes h | Pass | — |
| S8.5 K push-pull | ℙ¹→point | Euler O=1, O(1)=2, O(−1)=0; rank-one D has the same augmentations | Pass | — |
| S9.1 analytic/nilpotent comparison | ℙ¹; Spec ℂ[ε]/ε² | underlying ℙ¹ homeomorphism; dual-number point has one point but length2 structure sheaf | Pass/contract | R05/R07 |
| S9.2 fixed-map trace | point,id; ℙ¹,id negative control | point: empty determinant1, trace1; ℙ¹ id has det(1−df)=0 and nonisolated fixed locus | Pass | Excluded latter instance |
| S9.3 localization signs/denominators | SL₂ O(1), torus z=2 | 2/(1−1/4)+(1/2)/(1−4)=8/3−1/6=5/2=2+1/2 | Pass | z=1 excluded |
| S9.4 Euler/character cancellation | SL₂ O(0), z=2 | 1/(1−1/4)+1/(1−4)=4/3−1/3=1 | Pass | — |
| S9.5 type-A comparison | GL₂ standard shape; A₂ adjoint | tableau/path weights ε₁,ε₂ once each; adjoint zero weight multiplicity2 in both | Pass/contract | R01 |
| S9.6 normalizer quotient | SU₂ and torus | SU₂ quotient ℝP²: H⁰=ℤ,H¹=0,H²=ℤ/2; rational positive groups0; torus quotient point | Pass | — |
| S9.7 KKS metric/Morse signs | root plane α(p)=2, α(X)=−1 | ω(v,Jv)=B(v,v)/2>0; Hess=B/2 positive, Morse index0; opposite pole index2 | Pass | — |
| S9.7 cell counts/walls | SU₂/T; SU₃/T; ℙ²; μ central | Poincaré polynomials1+q²,1+2q²+2q⁴+q⁶,1+q²+q⁴,1; Euler2,6,3,1 | Pass | Wall X requires Morse–Bott |
| Smaller block-Borel acceptance | full Borel GL₃ versus upper-left B₂ | standard Bruhat supplier gives6 cells; requested new calculation says13 orbits | Contract | R03; 13 not certified here |
| Fixed-plane orbits/closures | Gr(2,4) over F₂ | d=0,1,2 counts16,18,1; sum35; closure dimensions4,3,0; order reversed with d | Pass | — |
| Fixed-plane extremes/double cosets | (n,k₀)=(0,0),(1,0),(1,1),(3,2) | orbit counts1,1,1,2=min(k₀,n−k₀)+1; final admissible d=1,2 | Pass/contract | R02 locator |
| Decomposability contraction criterion | e₁∧e₂; e₁∧e₂+e₃∧e₄ | contraction-wedge0 for first; η=e₁* gives ±e₂∧e₃∧e₄≠0 for second, including char2 | Pass | r=0 separate |
| Tautological sections | ℙ¹ rank0,1,2 | H⁰ bundles0,O(−1),O² dimensions0,0,2; dual tautological O(1) dimension2 | Pass | — |
| Function field/dimension | X=ℙ¹,U=A¹; point | k(U)=k(t), trdeg1=dimX; O(U)=k[t] differs; point trdeg0=dim0 | Pass | — |
| Positive embedding coefficients | SL₃ full flag, degrees(1,1),(1,0) | first incidence embedding dim3; second contracts a ℙ¹ fibre, image ℙ² dim2 | Pass | — |
| GL₃ incidence/trace/span | v=(1,1,0),ω=(1,−1,0) | v∧ω=0=trace(v⊗ω); ambient dimension9, trace kernel8; projective dimensions8 and7 | Pass | — |
| GL₃ section dual | incidence O(1,1) | h⁰ ambient9, ideal-line1, quotient8; highest weight(0,−1,−2), dual to(2,1,0) | Pass | — |
| Blowup chart direction/inverse | u=1,v=2, [x:y]=[−2:1]; char2 | ux+vy=0; [−y:x]=[−1:−2]=[1:2]; mod2 gives[1:0]; exceptional u=v=0 allows ℙ¹ | Pass | — |
| Blowup flat base change/normal line | BS(121)→Flag₃, centre ℙ¹ | dim3, off-centre fibre point; over centre fibreℙ¹; N=O², exceptional ℙ¹×ℙ¹, normal O(0,−1) | Pass | — |
| Source range restriction | A₁ in char3, Sym⁴ | dim5 versus divided-power coefficients binom(4,j)=(1,1,0,1,1) mod3 | Pass | Unique highest line alone insufficient |


The following table covers all 8 named declarations in Suggested.lean and its two anonymous examples. Indices are zero-based when referring to Lean.

| Lean declaration | Instances tried | Values computed on the two sides | Result | Change |
|---|---|---|---|---|
| pivotCount | n=4,r=2,p=(1,3); r=0 | j=0…4 counts(0,0,1,1,2); empty list gives0 | Pass | Keep only if needed by a headline |
| HasExactPivotRanks | span(e₂,e₄); span(e₁,e₂) | first intersection ranks(0,0,1,1,2) equal counts; second(0,1,2,2,2) differs at j=1 | Pass | Same |
| HasSchubertRankBounds | same planes; n=1,r=2 | both satisfy lower bounds; r=2 requires subrank2 versus actual≤1, hence false despite truncated n−r=0 | Pass | Same |
| exactPivotRanks_imply_bounds | first plane | equalities0=0,0=0,1=1,1=1,2=2 give the five corresponding ≤ inequalities | Padding | R13 |
| KernelIncidence | k²,0⊂ke₁⊂k²; ke₂ versus ke₁ | true,true; ke₂⊆ke₁ false | Pass | Not a headline |
| kernelIncidence_refl | zero/full kernels | 0≤0 and k²≤k² true | Padding | R13 |
| kernelIncidence_trans | 0⊂ke₁⊂k² | premises true,true; conclusion0⊂k² true | Padding | R13 |
| pluckerCoordinate | diagonal(2,3); reversed/repeated rows; r=0 | determinant6; reversed−6; repeated0; empty determinant1 | Pass | No frame independence asserted |
| Grassmannian.ext example | identical kernels | kernel equality implies same structure; one library application | Padding | R13 |
| Basis.flag_map example | swap e₁,e₂ in k²,j=1 | both sides span(e₂) | Padding | R13 |

Here v=x₁²y₃, and A,B,C are the auxiliary file's three monomials. The table covers all 46 named auxiliary declarations. Integer calculations also test the rational-field instance; polynomial identities are coefficient comparisons.

| Auxiliary declaration | Instances tried | Values computed on the two sides | Result | Change |
|---|---|---|---|---|
| Variables | Fin 3 ⊕ Fin 3 | cardinality3+3=6; inl0≠inr0 | Pass | — |
| Polynomial | zero,x₁,y₁ | zero has empty support; x₁,y₁ have different singleton supports | Pass | — |
| x | i=0,1 | supports inl0,inl1; coefficient1 at its variable,0 at the other | Pass | — |
| y | i=0,1 | supports inr0,inr1; coefficient1 at its variable,0 at the other | Pass | — |
| bidegree | x₁,y₁ | (1,0),(0,1); product degree(1,1) | Pass | — |
| tensorPiece | v;x₁y₁;zero | degrees(2,1) in,(1,1) out; zero in; ambient dimension6·3=18 | Pass | — |
| rootOperator | D₁₂ on x₂,y₁,x₁y₁ | x₁,−y₂,−x₁y₂; wrong plus-dual convention gives+y₂ | Pass | — |
| contraction | A,B,C;v | x₃,x₃,2x₃;0 | Pass | — |
| traceKernel | v,A,A−B | contractions0,x₃,0; membership true,false,true | Pass | — |
| variableWeight | x₁,y₁ | ε₁,−ε₁; product weight0 | Pass | — |
| weightPiece | x₁,x₂ at ε₁ | membership true,false; zero lies in every piece | Pass | — |
| targetWeight | coordinates | (0,0,1),total1 | Pass | — |
| highestWeight | coordinates | (2,0,−1),total1; simple differences(2,1) | Pass | — |
| targetWeightSpace | A,B,C combinations | each weightε₃; contraction row(1,1,2); kernel dimension3−1=2 | Pass | — |
| highestVector | x₁²y₃ versus x₁²y₁ | contraction0 versus2x₁; weights(2,0,−1) versus(1,0,0) | Pass | — |
| lowering | F₁v,F₂v | 2x₁x₂y₃,−x₁²y₂; both nonzero | Pass | — |
| raising | E₁₂v,E₂₃v; E₁₂(x₂²y₃) | 0,0;2x₁x₂y₃ | Pass | — |
| wordAction | empty,12,21 | v;2x₁x₃y₃−2x₁x₂y₂;−2x₁x₂y₂ | Pass | Order matters |
| A | x₁x₃y₁ | bidegree(2,1),weightε₃,contraction x₃ | Pass | — |
| B | x₂x₃y₂ | bidegree(2,1),weightε₃,contraction x₃ | Pass | — |
| C | x₃²y₃ | bidegree(2,1),weightε₃,contraction2x₃ | Pass | — |
| IsWeightBasis | homogeneous basis; mix v,F₁v | weights(2,0,−1),(1,1,−1); D₁₁ on sum gives2v+F₁v, not scalar times sum | Pass | Mixed basis excluded |
| IsSl3WeightBasis | same pair | H₁ eigenvalues2,0; H₂ eigenvalues1,2; sum not H₁-eigenvector | Pass | — |
| IsSimpleLoweringSingleTarget | analogous adjoint condition versus kernel | adjoint32 simple brackets each support≤1; kernel would require3 distinct basis lines in dimension2 | Pass | Obstruction |
| rootOperator_apply | D₁₂(x₁y₁) | both sides−x₁y₂ by unfolding | Padding | R13 |
| root_preserves_traceKernel | commutator on a polynomial; A−B | [contraction,D_ab]=∂y_a∂x_b−∂y_a∂x_b=0; D₁₂(A−B)=−2x₁x₃y₂ has contraction0 | Pass | — |
| contraction_surjective_on_piece | q=x_i | contraction(x_i²y_i/2)=x_i for i=1,2,3; matrix rank3 | Pass | CharZero supplies 2≠0 |
| traceKernel_finite | degree(2,1) | subspace of18-dimensional span; kernel15-dimensional | Pass | API, not end theorem |
| traceKernel_finrank | rational matrix | 18−rank3=15 | Padding | R13 |
| highest_mem | v | bidegree(2,1),weight(2,0,−1),contraction0 | Padding | R13 |
| highest_raising_zero | two simple raisings | (0,0) | Padding | R13 |
| highest_weight_line | all18 monomials | only v has weight(2,0,−1); contraction0; dimension1=span(v) | Pass | Keep calculation in README |
| planeConstraint | (1,0,0),(0,1,0),(0,0,1);(2,−6,2) | 1,1,2;0 | Pass | — |
| planeMap | standard coordinate vectors | images A,B,C have distinct supports; kernel0 | Pass | — |
| planeModel | (−1,1,0),(−2,0,1) | images B−A,C−2A have contraction0; two independent vectors | Pass | — |
| target_weight_plane | all ε₃ monomials | both sides plane a+b+2c=0 in span(A,B,C) | Pass | — |
| targetWeightSpace_finrank | above plane | 3−rank(1,1,2)=2 | Padding | R13 |
| word_1122 | chronological1122 | (0,−8,4) on both sides; contraction−8+8=0 | Padding | R13 |
| word_1212 | chronological1212 | (2,−6,2) on both sides; contraction2−6+4=0 | Padding | R13 |
| word_1221 | chronological1221 | (4,−4,0) on both sides; contraction4−4=0 | Padding | R13 |
| kernel_joint_raising_line | stacked contraction,E₁₂,E₂₃ | rank17 in18 columns; nullity1; v spans it | Pass | — |
| kernel_lowering_cyclic | words through lengths0…6 | span dimensions1,3,6,9,12,14,15; final15=kernel dimension | Pass | — |
| kernel_irreducible | N=0,span(v),whole kernel | zero excluded; span(v) fails F₁-stability; whole passes; joint-highest line1 and cyclic span15 exclude intermediate stable N | Pass | — |
| sl3_weightBasis_iff_GL3 | weightsμ,ν,total1 | equal simple differences give μ−ν=(c,c,c), then3c=0⇒c=0; converse is subtraction | Pass | CharZero retained |
| three_lines_distinct | word vectors in A,B coordinates | determinants16,32,16, nonzero in CharZero; vanish in char2 | Padding | R13 |
| no_simple_lowering_weight_basis | unique highest line and three words | single-target basis would contain3 distinct forced lines inside dimension2; 3>2 | Pass | R08 |

Irreducibility is not inferred from a single random subspace: diagonal eigenspace decomposition, ascent to the unique joint-highest line and the computed cyclic span give the stated criterion in characteristic zero.


Pinned-library evidence was checked by object, including quotient rank, basis flags, symplectic block matrices, polynomial gradings and derivations, convex hulls and path/Schubert terminology. Paths in this paragraph are relative to the respective pinned library repositories. The following 13 declarations were opened, not inferred from newer documentation:

| Declaration and pinned file | What it actually supplies; boundary |
|---|---|
| `Module.Grassmannian`, `Mathlib/RingTheory/Grassmannian.lean:66` | Submodule plus finite projective quotient and its rank-at-stalk equality; parameter is quotient rank. It does not package a scheme or impose rank on the submodule. |
| `Module.Grassmannian.ext`, same file `:82` | Equality from the underlying submodule; the acceptance example adds no theorem. |
| `Module.Basis.flag`, `Mathlib/LinearAlgebra/Basis/Flag.lean:37` | Span of basis vectors whose cast index is below k, over a semiring; no new geometric flag scheme. |
| `Module.Basis.flag_map`, same file `:56` | Transport by a linear equivalence; exactly the example's conclusion. |
| `Matrix.J`, `Mathlib/LinearAlgebra/SymplecticGroup.lean:58` | Block matrix [[0,−I],[I,0]], confirming the global sign comparison. |
| `SymplecticGroup.mem_iff'`, same file `:185` | Column equation AᵀJA=J over a commutative ring; no assumption that 2 is invertible. |
| `MvPolynomial.pderiv`, `Mathlib/Algebra/MvPolynomial/PDeriv.lean:61` | Native derivation, with monomial formula at :69; no characteristic-zero assumption in its definition. |
| `MvPolynomial.weightedHomogeneousSubmodule`, `Mathlib/RingTheory/MvPolynomial/WeightedHomogeneous.lean:128` | Every nonzero monomial coefficient has the specified weight; zero lies in every component. This is not an opaque eigenspace predicate. |
| `subset_convexHull`, `Mathlib/Analysis/Convex/Hull.lean:49` | Inclusion into the hull, not a new path-image theorem. |
| `convex_convexHull`, same file `:52` | Convexity of that closure. |
| `Convex.sum_mem`, `Mathlib/Analysis/Convex/Combination.lean:213` | Nonnegative coefficients with sum1 and vertices in the set; normalization/nonnegativity are essential. |
| `TauCeti.GLSymplectic.leviHom`, `TauCeti/LinearAlgebra/Matrix/GeneralLinearGroup/Symplectic/Levi.lean:100` | The existing rank-m Levi diag(A,A⁻ᵀ), over every commutative ring. |
| `TauCeti.GLSymplectic.coe_leviHom`, same file `:118` | Its actual block entries; injectivity and ring-change compatibility follow at :127 and :138. S1.5's arbitrary-r three-block stabilizer is additional scope, but should reuse this boundary model in its supplier contract. |

For the last comparison, at m=r=1 and A=2 the existing Levi is diag(2,1/2), exactly S1.5's s=0 specialization. The general r<m factor has a separate Sp(2s) block and Y coordinates; the opened Levi file does not provide that parabolic radical or its scheme quotient. This prevents mistaking a shared boundary case for a duplicate of the whole new construction.

Ownership searches used the roadmap tool's object search and show commands, the main repository, the board packages and the provided open-head files. They looked for Picard/degree maps, flag carriers, Bott–Samelson/Demazure/path objects, the contraction kernel, symplectic stabilizers and analytification. No fully qualified name of these 54 declarations was found duplicated in the inspected other roadmaps. The generic finite-root-datum path engine remains SchubertGeometry's existing responsibility: KacMoody's open scope explicitly defers finite paths, central translation and bond gcd to SchubertGeometry S4 and the finite divisor formula to S7 (`TauCetiRoadmap/KacMoody/README.md:72`). Its symmetrizable extension is different scope. TensorProductCombinatorics owns the concrete type-A comparison, as R01 records.

The supplier-resolution ledger below records the relevant source, rather than trusting historical links or the resolver alone. Existing-roadmap revisions were not substituted for main. Each path is under `TauCetiRoadmap/`, unless the table gives the nested path explicitly. The exact cited sections were read; entries with defects are identified, not certified as supplied.

| Supplier | Resolved section or file location | Contract outcome |
|---|---|---|
| ModularCurves, main | README §0G, :427–442 | Relative locally free quotient Grassmannian, charts and universal property; q is quotient rank. |
| AlgebraicModuliForArithmeticGeometry, new roadmap | README §1.3, :601 | Coherent quotients, Plücker maps and partial-flag incidence on the same carrier. |
| ReductiveGroups, main | README Layers7,7b,9A/9C,10A/10B; double cosets :771, Steinberg :1811 | Bruhat/root/representation suppliers present; RG7C.5 is not the double-coset locator (R02). Steinberg is algebraic, including p=2. |
| ShimuraData, new roadmap | README §3.8, §§3.14–18; :655, :675 | Early models and late comparison are present; their use here violates supply direction (R06). |
| GroebnerGeometry, main | README G5, :394 onward | Polynomial minor/flag straightening and GT initial algebra; geometry/section identification is different scope. |
| SchemeAndStackFoundations, main | README §2.6, :3437 onward; Layer5 | Coherent/projective calculations, derived/base-change and coherent/perfect K interfaces; hypotheses must remain with each application. |
| StableReduction, main | README Layer2, :405 (relative Proj :439); Layer4, :529 | Relative Proj and Rees/blowup comparison, including qualified flat base change. |
| AlgebraicVectorBundles, main | README L0C and L2A, :306 onward | Tensor/dual/exterior/determinant sheaves and graded quasicoherent algebras. |
| TopologicalKTheory, main | README T1.5 | Finite subspace Grassmannians and characteristic maps; does not supply a new algebraic flag carrier. |
| TensorProductCombinatorics, new roadmap | README Layers6,8; :2205, :2409, :2452 | Existing concrete paths/tableaux and comparison consume S4; R01. |
| LieGroups, main | `RepresentationTheory/LieGroups/README.md:407`, :428 (Layers7–8) | Compact roots/full flags and homogeneous comparison; missing smaller block-Borel exercise (R03). |
| IndexTheory, new roadmap | README I8, :888 | Fixed-map trace with compactness, isolated nondegenerate fixed points and specified bundle map. The f=g⁻¹ convention gives the tested denominator. |
| ComplexComparisonPartII, new roadmap | README C−1.1–2,C0.1–5,C1.9,C2.1–2; C5.4 | Same analytic/coherent carriers and qualified GAGA; exponential sequence is C5.4, not main CK K4.P. Direction defect R05 remains. |
| ComplexKahlerGeometry, main | README K4 :444; K5 :568; K5b :1208; K6 :1243 | Holomorphic bundles, harmonic/Dolbeault/Kähler identities; no K4.P on main (R02). |
| SmoothBundlesConnections, main | README B1.4 :421, B2.1 :559, B6.2 :1668 | Homogeneous/smooth lines and integral Chern classification. Dual-character Hopf convention has degree+1, agreeing after the stated line identification. |
| GeometricQuantization, new roadmap | README Q2A.1/§3.1 :464, §3.3 :618, Q2A.3/§3.4 :674 | Homogeneous characters and the same ordinary Picard/degree/forgetful maps; R04. |
| AlgebraicTopology, main | README Stages4–6; §5.3 :870 | Integral cellular/singular and rational finite-cover transfer; does not justify integral division by |W|. |
| HamiltonianReduction, main | `SymplecticGeometry/HamiltonianReduction/README.md:157`, R2/R2a | Same coadjoint orbit, root-plane KKS/Hessian and even cells; μ on a wall retains its larger stabilizer. |
| MorseTheory, main | README M2 :124; attachments :294; comparisons :369 | Actual characteristic/attaching maps, simultaneous critical levels and orientation changes. |
| FormalConnectionsOpers, new roadmap | README F2.4 :691 | Same-analytification smooth manifold comparison already supplied; R07. |
| CharacteristicClasses, main | README C1,C3 :720,C4 :1037,C5 :1060,C5a :1136 | Generic characteristic/Borel/transgression theory remains external, as the scope says. |
| ReflectionInvariantTheory, main | README §§1–3, character-lattice bridge §3 | Reflection invariants remain independent prerequisites, not consequences of the normalizer quotient calculation. |
| RootSystems, main | `RepresentationTheory/RootSystems/README.md`, finite Weyl/exchange/deletion API | Supplies root combinatorics; S4 explicitly owns its additional chain connectivity and bond arithmetic. |
| ClassicalGroups, main | `RepresentationTheory/ClassicalGroups/README.md`, conventions and Layers2–4 | Complex tensor/dual and rational weight dictionaries; the arbitrary characteristic-zero polynomial model is constructed here, not inferred from characteristic-p semisimplicity. |
| LieHighestWeight, main | `RepresentationTheory/LieHighestWeight/README.md`, Layers1–6 | Finite root/weight and highest-weight representation inputs; not a supplier of simple-generator monomiality. |

There are 25 supplier rows; KacMoody is additionally an ownership comparison, not an added supplier edge. No `*Needs:*` lines exist to check separately; the informal owner list and every named supplier reference were instead resolved. No request is made to change tooling or the merge-order file.

The source audit used only the sources service and legal author/publisher/arXiv locations. Source IDs below identify the cached line-numbered texts, not files copied into the repository. No source passage was copied into this report.

| Source and inspected locator | Verification result |
|---|---|
| CFL, arXiv:2203.12992v1, Definition2.1, printed p.4; CFL line188 | The definition requires positive bonds and chain-independent gcd; it does not itself prove the property for Weyl quotients. |
| CFL, §7.1, printed pp.18–19; CFL line941, line960, line968 | Dominant λ, minimal W/Wλ representatives and positive-Borel line of character −λ are explicit. The Schubert bond theorem is asserted with a reference to Proposition2.7 of its source [7]; LS identification is likewise attributed. The roadmap's negative-Borel conversion is necessary. No proof was certified by treating Definition2.1 as the theorem. |
| Littelmann1995, Theorem9.1, printed p.520; Littelmann1995 line815 | The author-hosted scan's readable prose states the endpoint-character theorem for the integrable highest-weight module. OCR damages the displayed alternating-sum formula; only readable prose was used. |
| LLM, Theorem6, printed p.301; LLM line317, line324 | The publisher-open text states the generalized-Demazure dual section identification, projective normality and higher-cohomology vanishing in its Bott–Samelson/semiample setting. The preceding paragraph distinguishes ample positive multidegrees from semiample nonnegative ones and the contracted image. It does not support dropping those hypotheses. |
| KnutsonBorelWeil, author-hosted Math261 notes, printed pp.4–5; KnutsonBorelWeil line296, line353 | Readable text discusses incidence/linear span and determinant twists. Lost mathematical glyphs prevent certifying the exact displayed weights from this extraction. The independent eight-dimensional calculation is recorded above. |

For CFL, the README identifies Definition2.1 and §7.1 but not a version; the audit used v1 and its printed pages, and does not assert identical numbering in every later published version. Littelmann1995 was read from the author's copy of the Annals article, and LLM from the publisher's Compositio article. No README target was labelled “unverified”; the seeded sample was nonetheless checked explicitly, with the limits below.

## Not verifiable

- **S3P.1:** there is no literature work, theorem number or page at the target. Its topological/root-degree calculations pass the instances in the table, but the requested exact source-locator verification cannot be performed. The named roadmap suppliers were inspected; that is not literature certification.
- **S3P.2:** likewise no literature locator. The harmonic-weight argument was checked mathematically and compared with the existing GeometricQuantization construction, but “K4.P” is absent on main. No source theorem is inferred from this stale supplier name.
- **S3P.3:** likewise no literature locator. The equivariant/ordinary degree maps were recomputed for the trivial group, tori, SU(2), SO(3), U(N) and partial flags; the source's exact hypotheses and page cannot be certified without an identified source.
- **KnutsonSemester1**, p.49 and pp.173–176: sources-service title search plus Cornell author/course indexes did not identify the intended edition or legal text. In particular the thirteen block-Borel orbits were not independently classified in this review.
- **KnutsonBottSamelson**, **KnutsonDemazure**, **KnutsonAlgebraicVarieties**: each was tried through the sources service and Cornell author/course indexes. The README gives no stable version or exact theorem/page, and no uniquely matching legal text was located. All four missing works are recorded together in the job's missing-reference file; the review is finished, not parked for them.
- **KnutsonBorelWeil** and the displayed formula in **Littelmann1995**: legal copies were obtained, but extraction loses mathematical glyphs. The report certifies only readable prose and independent calculations, not those illegible formulas. A PDF rendering attempt was unavailable; no contents were guessed from the missing glyphs.
- The advertised whole-programme splitting, all-degree SMT, derived comparison and K-ring theorems were checked by hypotheses, dependencies and the displayed instances, not formally proved by their admitted signatures. The source references do not provide enough target-level locators to certify every general theorem (R11).
- Ownership against open work was checked only where the brief supplied readable files, plus the required named-supplier resolution. Other open pull requests surfaced by the index were not treated as authorized source heads. The announced LieGroups checkout was unavailable; its main nested roadmap was readable and is the required source for an existing-roadmap dependency.

## Source issues

- none
