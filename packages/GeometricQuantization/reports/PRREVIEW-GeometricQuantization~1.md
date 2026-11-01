# Review of GeometricQuantization (pull request #1186 at 2ed30bf)

**Verdict:** needs changes

## R01 (P1) — The ordinary Picard comparison has no eligible supplier contract

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:258`, 278 and 316–320: “K4.P and S3P.2 supply the holomorphic Picard comparison”.

**Claim:** The root-curve generators and ordinary holomorphic Picard comparison are supplied prerequisites. They are not supplied by the eligible versions of these existing roadmaps, and no gap is declared.

**Witness:** On main, `TauCetiRoadmap/SchubertGeometry/README.md:46` proceeds from S3 to S4 without S3P; `TauCetiRoadmap/ComplexKahlerGeometry/README.md:444` has K4 but no K4.P. These sections occur only in revisions of existing roadmaps.

The main content revision checked was `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. S3P.1/.2 occur in the supplied SchubertGeometry revision at lines 233 and 252; K4.P occurs in the supplied ComplexKahlerGeometry revision at line 574. The brief excludes these revisions as dependencies. Moreover, that SchubertGeometry revision's S3P.3, lines 281–313, consumes this roadmap's Q2A.1/.3: using the revisions as package suppliers would create a return edge. Calling the finer construction cuts acyclic does not establish a single direction of package supply.

**Repair:** Assign the missing root-curve topology and holomorphic Picard comparison to an earlier, eligible Part II supplier, with separate precise gap contracts recorded both in the plan and README, or own the missing constructions here and remove the corresponding supplier claims. Keep the fibre-character/descent calculation here and make its consumers later. Do not consume a revision of an existing roadmap. The contract must distinguish ordinary Picard degree from equivariant characters: on the SO(3) sphere they are respectively ℤ and the image 2ℤ; moving ownership must preserve the degree-one ordinary line and its failed SO(3) descent.

## R02 (P2) — The acceptance test substitutes plane examples and free predicates for the headlines

**Location:** `TauCetiRoadmap/GeometricQuantization/Suggested.lean:12`, 29–140 and 149–196; `TauCetiRoadmap/GeometricQuantization/HomogeneousCharacterTargets.lean:7`.

**Claim:** These files illustrate forms of the programme instead of testing its intrinsic end theorems. The three substantial admitted identities concern a trivial line on ℝ². Neither file states homogeneous prequantization, the character/period dictionary, complete-flow quantization, the global distribution limit, or the regular chamber theorem. The two asymptotic predicates are never asserted for geometric characters.

**Witness:** `HasWeakMultiplicityLimit` accepts the zero character and zero limit on any lattice. `HasUniformLocalMultiplicityAsymptotic` accepts arbitrary multiplicities when `admissible` is false. Neither declaration mentions a prequantum line, a moment map, or H⁰.

Those are legitimate abstract predicates, but they are not acceptance theorems and do not constrain geometric multiplicities. The module introduction acknowledges missing general bundle interfaces without enumerating the missing headline carriers. The companion's arbitrary subgroup and arbitrary lattice map likewise do not state the actual stabilizer or coroot theorem.

**Repair:** Start from the headline list below. State each theorem genuinely expressible on the pinned carriers, using only a few necessary definitions with real bodies. For every remaining headline, name that theorem and the missing carrier in the module docstring; put nothing in its place. Remove the unused asymptotic scaffolding and the plane substitute. On the doubled-circle action on ℂP¹, the intended theorem must refer to the actual multiplicities (1 on even weights, 0 on odd weights), whose limit has density 1/2, rather than allowing the zero sequence.

## R03 (P3) — Delete example padding and native character wrappers

**Location:** `TauCetiRoadmap/GeometricQuantization/Suggested.lean:44`, 49, 83, 99, 104, 121, 127, 133; `TauCetiRoadmap/GeometricQuantization/HomogeneousCharacterTargets.lean:19`–88.

**Claim:** The acceptance files contain coordinate checks and a generic character API already supplied by native composition, kernels and quotient lifting.

**Witness:** `principalConnection_lift` closes with `simp [principalConnection, principalLift, sub_div, mul_neg, neg_div]`. Seven companion theorems are already `rfl` or `Iff.rfl`; its eighth is extensionality for membership in a kernel.

All eleven admitted declarations were probed separately on a copy. The other ten attempted single `simp` proofs did not close; this report does not claim that they did. Independently, contraction in coordinates, the coordinate bracket, constants, position, momentum and the canonical coordinate commutator are README checks, not intrinsic headline results. Native witnesses are `ContinuousMonoidHom.comp`, `MonoidHom.ker`, `QuotientGroup.lift`, `QuotientGroup.lift_mk`, `QuotientGroup.lift_comp_mk'` and `continuous_quot_lift` (pin locations below).

**Repair:** Delete this padding from `Suggested.lean`; retain the mathematics as README targets or Checks. Apply the same form rule to the companion, deleting its illustrative wrapper catalogue and citing the native operations in supplier contracts. Do not repair it by proving the admitted checks in place. For the sign character of S₃, native kernel and quotient lifting still give A₃ and the descended nontrivial C₂ character; no custom wrapper is needed.

## R04 (P3) — Supply exact target-level source locators

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:204`, 231, 266, 454, 500, 514 and 868–890.

**Claim:** Several sampled targets have no theorem/section-and-page locator. A bibliography title or “especially §§1–3” does not locate the claimed theorem or its hypotheses.

**Witness:** Q2A.1–.3 name no source theorem or page. The global limit is located at vergne line 208, Theorem 3.2, printed page 5; the README gives only broad sections.

**Repair:** Attach exact locators to individual claims and distinguish a source theorem from a new deduction using it. Useful verified locators are Vergne v1, Theorem 3.2, p. 5; Meinrenken v2, Theorem 2.1, p. 5 and its chamber discussion, pp. 6–7; Sjamaar v1, Proposition 2.2, p. 19, Theorem 2.8, p. 22, Proposition 2.11, pp. 24–25, and Theorem 2.15, pp. 27–28. Locate the homogeneous-character and Kodaira claims in readable or explicitly uncertified sources; do not invent their page numbers. The angular normalization must still give mass 1/2 for the ℂP² limit, and the chamber refinement must still retain the even/odd correction in the computed example below.

## R05 (P3) — Record the cited works in a source manifest

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:866` (References); the folder has no `sources.toml`.

**Claim:** Ten cited works have no persistent source records, so editions, legal retrieval status and the unresolved Knutson locator are not recorded in the required manifest.

**Witness:** The reviewed folder contains the README, the two Lean files and metadata; no source manifest exists. The source-service attempts retrieved five works, returned two uncertified works, and could not retrieve three.

**Repair:** Add one `tauceti-roadmap-sources/v1` entry per work, retaining one key across preprint and published versions, exact locators, version notes and service provenance/status. Use the keys in the source audit below; record paywalled works as uncertified instead of repeatedly requesting them. This repair records, rather than silently resolves, the unavailable Knutson page 119: the degree-two exponent calculation gives six distinct weights, independently of that unread text.

## R06 (P3) — Restore the required roadmap structure, API lists and discriminating Checks

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:1`, 9, 327 and 838; `TauCetiRoadmap/GeometricQuantization/Suggested.lean:29`, 49 and 88.

**Claim:** The document has Q-sections rather than the required scope, conventions, exact supplier contracts and numbered layers. Definitions are embedded in prose without the required per-definition API and three Checks; layer-specific Needs, Examples and Dependencies are absent. Several Lean declarations lack docstrings, and the README does not identify each retained declaration by its actual name.

**Witness:** Q3 defines the polarization, its basic-function algebra and polarized sections without three explicit discriminating Checks for each. `PhasePlane`, `poissonBracket_matches` and `equivariantSection` lack declaration docstrings.

**Repair:** Reorganize, preserving the mathematical content, into the stipulated headings and layer order. Attach itemized dependencies to each target, API statements and at least three computed Checks to each definition, and docstrings/name correspondence to whatever survives R02–R03. For the basic algebra of the vertical polarization, useful separating checks are ∂ₚq=0, ∂ₚp=1, and all functions on a point being constant; these accept q, reject p and handle rank zero. Do not turn those checks into admitted Lean declarations.

## R07 (P3) — Use the required single Mathlib import

**Location:** `TauCetiRoadmap/GeometricQuantization/Suggested.lean:1`–4 and `TauCetiRoadmap/GeometricQuantization/HomogeneousCharacterTargets.lean:1`–4.

**Claim:** Both files use Mathlib submodule imports and omit `import Mathlib`.

**Witness:** The supplied gate reports `imports=1`, `mathlib-subimports=4`, and `no-import-mathlib=1` for Suggested.lean; the companion has the same form defect.

**Repair:** Replace each surviving file's Mathlib import block by the single `import Mathlib`, followed only by individually used pinned Tau Ceti modules. Re-elaborate after the acceptance-test rewrite. This changes no mathematical instance; the presently reviewed files already elaborate against the pins.

## R08 (P3) — Replace commit-pinned roadmap links

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:44`, 57 and 72.

**Claim:** Supplier links freeze ConvexityToric, ComplexComparisonPartII and Orbifolds at historical commits.

**Witness:** The gate's `blob=3` identifies exactly those three links. Supplier claims must resolve to the eligible roadmap and named section, not an arbitrary older snapshot.

**Repair:** Cite the roadmap and exact target, with a repository-relative link where available, and verify against main or the eligible new-roadmap head. The resolved contracts below retain the raw DH volume convention, analytic Serre vanishing and the orbifold factor 1/|G|; in particular [point/μ₂] still integrates 1 to 1/2.

## R09 (P3) — Remove TeX-only syntax outside code spans

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:538`, 616, 623, 629, 632, 634, 649, 669 and 671.

**Claim:** These formulas use braced TeX subscripts outside code spans.

**Witness:** The gate reports `tex=11`, including three occurrences on line 632.

**Repair:** Use Unicode notation or enclose each complete formula in a code span. Preserve the shifted Kostant coefficient: for the example below its derivative is 72/625 on both sides, so the typography repair must not alter the sign or factor 4n.

## R10 (P3) — Remove process residue and proposal references

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:14`, 892–896; `TauCetiRoadmap/GeometricQuantization/Suggested.lean:18`.

**Claim:** The references contain a prohibited HTML anchor and unresolved transcription narrative; the introduction/docstring also refer to proposal numbers instead of timeless supplier names.

**Witness:** The gate's `residue=1` points to `<a id="knutson-semester2">`. Suggested.lean explicitly says “proposal #480”. The final Knutson entry records an unresolved transcription discrepancy.

**Repair:** Replace the anchor by a normal heading/reference link, name HamiltonianSystems and its target instead of the proposal, and record source uncertainty in the manifest/review rather than the mathematical roadmap. Keep the independently computed exponent multiplicities: for weights (0,1,−2), degree three has multiplicity two at 0 and one at the other eight displayed weights.

## Verified sound

This is a bounded mathematical review, not a proof of every future theorem. The computations below test the statements and their negative controls; the unread sources are identified separately. No false roadmap identity was established by these tests. The blocking findings concern supplier availability and the acceptance-test contract.

**Scope and execution.** Reviewed all 896 README lines and all 289 lines of the two Lean files at the requested head. Read the repository's normative README and CONTRIBUTING, and main's SymplecticGeometry, SmoothBundlesConnections and SchubertGeometry for shape/ownership. The worktree remained unchanged; the outside-folder diff is empty. No copied source passage, computational-algorithm target, sorry-bodied data, `set_option`, or stray source file was found. This is new geometric-quantization scope, not wholesale re-planning of an existing roadmap; the wrapper duplication and supplier defects are identified above.

**Gate and dependency check.** The supplied push gate failed only the six rule categories covered by R07–R10: `blob=3`, `tex=11`, `residue=1`, `imports=1`, `mathlib-subimports=4`, `no-import-mathlib=1`. It reports `build=0`, `depcheck=0`, `outside-folder=0`, `stray-files=0`, and zero for its other checks. Its failed status precludes acceptance. The independently rerun dependency command, with the supplied candidate order and main content, returned exactly:

```text
depcheck: 204 roadmaps, 1437 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. This checks the mechanically recognized edges; R01 is a manual eligibility/section-resolution failure. The README has no literal Needs lines, so the audit also followed the opening supplier paragraphs and the construction-order paragraph.

**Elaboration and padding probes.** Built the missing `TauCeti.Algebra.Lie.Weights.FormalCharacter` object with the authorized targeted build, then ran the authorized absolute-path Lean elaboration from the worktree. Suggested.lean passed with precisely eleven sorry warnings. The companion passed too. Scratch copies printed `#check @name` for all 25 Suggested declarations and all 14 companion declarations. No necessary positive-ℏ or smoothness binder disappeared from the admitted geometric identities. The unrestricted algebraic connection-lift identity also holds at ℏ=0 because Lean division is total; it is padding, not a hidden false theorem. The companion's arbitrary topologies suffice for its continuous-map operations, but do not assert a Lie-group structure. All eleven admitted theorems received a one-tactic probe; one succeeded as recorded in R03, ten did not. Probe warnings/errors are not errors in the original files.

**Headline inventory.** Q1's integral-curvature existence/classification and flat-twist torsor are specializations imported from SmoothBundlesConnections, not new headlines to restate. The new substantive acceptance results are: (1) intrinsic Hamiltonian lifting and the prequantum commutator; (2) complete-flow unitary quantization and essential self-adjointness on the geometric core; (3) homogeneous character/descent equivalence and coadjoint fixed-moment integrality; (4) actual period/Picard/global-form comparisons; (5) polarization preservation and the cotangent half-density realization; (6) the projective and theta/Bohr–Sommerfeld quantizations; (7) the positive-line/index bridge; (8) global complexified action, shifted semistability and regular quotient; (9) global restriction/descent through the shifted Kostant bound; (10) the global distribution limit; (11) locally-free chamber quasi-polynomials and the uniform asymptotic including ineffective kernels. The files state none of these on their full geometric carriers. Native connections and smooth two-forms exist, but the required prequantum, polarized-section, holomorphic H⁰ and reduced orbifold quantization carriers are not supplied by these two files or the opened native APIs. A simple native encoding, where feasible, must be distinguished from a missing carrier; R02 does not license declaring all headlines unstatable merely because their proofs are difficult.

**Source sample.** Five texts were retrieved legally through the source service: cannas, vergne, meinrenken, meinrenken-sjamaar and sjamaar. The last is context only for singular reductions. Two further works were returned uncertified, and three could not be read. No source manifest was edited. The eight seeded targets were checked as follows; printed pages below belong to the indicated preprint version, not an asserted published pagination.

| Seeded target | Locator inspected and outcome |
|---|---|
| Q2A.1 homogeneous characters/descent | No exact source locator is supplied. Native composition/quotient descent was checked, and the S₃/μ₂ computations below test full-component characters. General smooth homogeneous equivalence remains uncertified against the bibliography. |
| Q2A.2 coadjoint characters/periods | No exact source locator is supplied. Checked the Maurer–Cartan sign and the SO(3)/SU(2) period test against HamiltonianReduction R2. The ordinary Picard step encounters R01. |
| Q2A.3 global forms/boundaries | No exact source locator is supplied. Computed the central kernels, degree maps and torus/point cases below. The missing holomorphic comparison is R01. |
| Positive-line/index bridge | The cited Kodaira text could not be read. Resolved ComplexComparisonPartII C1.7–C1.9, ComplexKahlerGeometry K5b.1/K6.0 and IndexTheory I6/I7.3. The residue-class route must cover all large n; it does in the stated finite-residue construction. |
| Global distribution limit | vergne lines 159–179 and 208–213: Theorem 3.2, p. 5, arXiv v1. Compact Hamiltonian torus action, equivariant index, smooth compact-support tests; passing to H⁰ needs the separately stated positive-line bridge. The leading normalization is (2π)^(−d)ω^d/d!. [Text](https://arxiv.org/pdf/1612.04651v1). |
| Regular locally-free chamber estimate | meinrenken lines 170–199 and 205–242: Theorem 2.1, p. 5 and discussion pp. 6–7, arXiv v2. Checked regular reduction, large powers, orbifold index and finite sector phases. Joint lattice uniformity is a roadmap deduction to prove, not the verbatim content of Theorem 2.1. [Text](https://arxiv.org/pdf/alg-geom/9405014v2). |
| Global complexified action/semistability | sjamaar lines 943–997, 1000–1012, 1155–1160 and 1233–1260: §§2.1–2.2, Proposition 2.2 p. 19, Theorem 2.8 p. 22. The source assumes the global complexified base action; the roadmap separately constructs it using compact-base completeness. Regularity and finite stabilizers are retained. |
| Shifted Kostant bound/global extension | sjamaar lines 1264–1286 and 1439–1478: Proposition 2.11 pp. 24–25 and Theorem 2.15 pp. 27–28. Checked full finite isotropy, properness, the monotone norm and bounded extension. Compactness supplies properness; angular conversion gives 4n rather than the source's 8π normalization. [Text](https://arxiv.org/pdf/alg-geom/9304004v1). |

The explicitly unresolved Knutson pages 106/119 were also sought; they were not read. No statement about what page 119 actually says is certified.

**Adversarial computations: README (65 rows).** Unless indicated otherwise, ℏ=1, q,p are the plane coordinates, the circle parameter has period 2π, and projective sections carry the specified inverse pullback action. “Pass” means the displayed instance agrees, not that a general theorem has been proved. Each row states the competing values, including relevant wrong models.

| Statement / location | Instances and computed sides | Result and required change |
|---|---|---|
| Conventions, 21–35: symplectic/Hamiltonian signs | ω(e_q,e_p)=1; X_q=(0,−1), X_p=(1,0); ω(X_q,e_q)=1=dq(e_q), and {q,p}=1. | Pass; opposite contraction gives −1. |
| Hamiltonian anti-homomorphism | f=q²/2, g=p²/2: {f,g}=qp; [X_f,X_g]=(−q,p)=−X_(qp). | Pass; plus sign would give (q,−p). |
| Principal/dual curvature and Chern normalization | Unit symplectic square: ∮p dq=−1, holonomy=e^i=e^(i area). Sphere area 2πℏ gives c₁=1; area πℏ gives 1/2 and fails integrality. | Pass; native supplier sign agrees. |
| Q1: fixed curvature and flat twists | Flat circle holonomies with α=0,1/2 are 1,−1; curvature is 0 in both cases. On a point H¹=0 and only one ordinary flat class. | Pass; curvature alone does not identify the line. |
| Q1: tensor, dual, rescale | Degrees 1,2 tensor to 3; dual of degree 1 has −1; ω↦2ω and ℏ↦2ℏ preserves period 1. | Pass; fixed-ℏ rescaling doubles degree. |
| Conventions: antiunitary dictionary | On vertical sections, conjugation sends i∂q to −i∂q; [q,−i∂q]1=i, whereas [q,i∂q]1=−i. | Pass; confirms the alternate commutator sign. |
| Q1: pullback/product comparison | Product of two degree-one spheres has curvature ω₁+ω₂; periods on the two factor spheres are 1,1. Pullback along a constant map has curvature 0 and both periods 0. | Pass; pullback is not an arbitrary line identification. |
| Q2: unique connection-preserving lift | Y_q=(0,1,q), Y_p=(−1,0,0); a(Y_q)=q and a(Y_p)=p; [Y_q,Y_p]=V=Y_1. | Pass. |
| Q2: wrong-sign lift | Replacing −X by +X gives F_q=(0,−1,q), F_p=(1,0,2p); a([F_q,F_p])=−3 versus a(Y_1)=1. | Pass as negative control. |
| Q2: Hamiltonian existence/ambiguity | On symplectic T², H=∂q gives ι_Hω=dp with period 1, so no global real primitive. On two point components, constants (0,1) have derivative 0 but are not one global constant. | Pass; exactness and locally constant ambiguity needed. |
| Q2: operator, constant and commutator | ψ=1: Q_q1=q, Q_p1=0, [Q_q,Q_p]1=−i=−iQ_1 1; Q_c1=c. | Pass. |
| Q2: equivariant-function comparison | At t=0, ψ=1: Y_q(e^(it)ψ)=iq=(iQ_qψ); Y_p(e^(it)ψ)=0=iQ_pψ. | Pass; weight +1, not −1. |
| Q2: formal symmetry versus boundedness | Real compact-support φ: integration by parts gives ⟨i∂qφ,φ⟩ real; on e^(ikq) the generator value is −k, unbounded as k grows. | Pass; no everywhere-defined bounded-operator claim. |
| Q2: real linearity and section Leibniz rule | f=p, multiplier q, ψ=1: Q_p(qψ)=i; qQ_pψ+iX_p(q)ψ=0+i. For f=q+p, Q_f1=q=Q_q1+Q_p1. | Pass. |
| Q2: completeness and self-adjoint core | Translation v=1 on ℝ: U_tφ(q)=φ(q−t), generator i∂q. On (0,∞), deficiency solutions e^q,e^(−q) have squared norms ∞,1/2, giving indices (0,1) on the base and (0,∞) with the free p-variable. | Pass; incompleteness is excluded. |
| Q2: moment defect and integration | Translations generated by q,p: abelian bracket is 0, Poisson defect c=1, lift bracket V≠0. On a point with circle moment 1/2, cover kernel 2π acts as −1; moment 1 gives 1. | Pass; central extension/descent condition is necessary. |
| Q2: central extension and smooth flow parameter | For the point action with moment 1/2, χ(2π)=−1; in (ℝ×Circle)/graph(χ⁻¹), (2π,−1) becomes the identity. For f(a,x)=ax, the flow is e^(at)x and f(0,x)=0, as required by the pinned local parameter theorem. | Pass; no arbitrary-cocycle integration inferred. |
| Q2A.1: homogeneous associated character | G=H=U(1), λ(z)=z²: the base is a point, fibre action at i is −1 and dual/principal character is z^(−2). Trivial λ gives 1. | Pass. |
| Q2A.1: components and derivative | H=μ₂: trivial and sign characters both have derivative 0; at −1 their values are 1 and −1. | Pass; connectedness in derivative uniqueness matters. |
| Q2A.1: actual descent, nonabelian test | S₃ sign: a transposition maps to −1, a 3-cycle to 1; kernel A₃ gives a descended C₂ sign character. Descent through N=S₃ fails since −1≠1. | Pass in both directions. |
| Q2A.1: linearization and gauge ambiguity | A point with K=U(1) has linearizations z^a; ratios z^(a−b). On ℂ×, z is a nonconstant holomorphic unit; connection-preserving gauge has du=0, excluding it. | Pass; compactness/connection condition separates the claims. |
| Q2A.2: Maurer–Cartan construction | On tangent ξ,η, d⟨μ,θ⟩(ξ,η)=−μ[ξ,η]; hence da=+μ[ξ,η]/ℏ=ω/ℏ. On a vertical H-generator, dt and μθ/ℏ cancel to 0. | Pass; factor 1/2 is absorbed by the wedge evaluation. |
| Q2A.1: tensor, dual and conjugation | Circle characters z² and z³ tensor to z⁵; the dual of z² is z⁻². In S₃, conjugate transpositions all have sign −1, so basepoint conjugation preserves the induced character calculation. | Pass; maps retain their source character. |
| Q2A.2: full cocharacter pairing | y(z)=z^m and ν(z)=z^k: ν(y(e^(2πit)))=e^(2πikmt), pairing km. k=1/2 would give −1 after one period and is not a character. | Pass. |
| Q2A.2: periods versus fixed central moment | U(2) eigenvalues (1/2,3/2): difference 1 is integral, individual weights are half-integral. Ordinary degree 1 exists, fixed U(2)-moment lift does not; shift by 1/2 makes (1,2). | Numerical distinction passes; R01 for ordinary Picard supplier. |
| Q2A.3: global-form lattice | SU(2) full flag: Pic=ℤ and equivariant image ℤ. SO(3): Pic=ℤ and image 2ℤ. Torus flag: ordinary group 0, equivariant group ℤ, forgetful map 0. | Pass; R01 ownership repair must retain these values. |
| Q2A.3: partial flags / rank zero | SU(3): full flag rank 2; one Levi simple root gives rank 1; full Levi gives rank 0. Trivial group: all lattices 0. | Pass; no positive-rank assumption smuggled in. |
| Q2A.3: SO(3) boundary | r=ℏ/2 gives area 2πℏ, k=1, central action −1: ordinary/SU(2) yes, SO(3) no. r=ℏ gives k=2, central action +1: both yes. r=0 is a point, not the same sphere. | Pass. |
| Q2A.3: U(N) degree/centre | U(2): (a,b)=(0,−1) gives degree 1; (1,1) gives degree 0. SU(3): O(1) has ζ^(−1)≠1, O(3) has 1. N=1 has Pic(point)=0; N=0 has empty projectivization. | Pass. |
| Q3: real and complex polarization | On ℝ², span(∂p) has dimension 1=half dimension and ω restricted to it is 0; the zero subbundle has dimension 0 and is not Lagrangian. On a point dimension 0 is correct. | Pass; expose as explicit Checks, R06. |
| Q3: local polarized sections / adapted gauge | For ∇=d+i p dq, ∇_∂p 1=0 and ∇_∂p p=1. Thus 1 is vertical-polarized and p is not; a flat leaf with holonomy −1 has no nonzero parallel section. | Pass. |
| Q3: normalizer versus algebra | p normalizes span(∂p): [X_p,∂p]=0. p² does not: [2p∂q,∂p]=−2∂q. Q_(p²)1=−p² is not polarized. | Pass; normalizer is not claimed closed under multiplication. |
| Q3: basic functions / module action | ∂p q=0, ∂p p=1; q·1 remains polarized. On a point all functions are constants and all derivatives are 0. | Pass; three separating cases for R06. |
| Q3: Kähler holomorphic condition | In a holomorphic flat frame, ∇^(0,1)z=0 and ∇^(0,1)conj(z)=dconj(z)≠0. Using T^(1,0) reverses these two outcomes. | Pass; fixes the complex-polarization choice. |
| Q4: cotangent affine-observable criterion | f=pv(q)+u(q) has ∂p²f=0; f=p² has ∂p²f=2 and fails. With v=1,u=c, Q=iℏ∂q+c. | Pass. |
| Q4: half-density correction / unitary flow | v=q∂q, φ=1: Lie derivative is 1/2, so Qφ=iℏ/2. U_tφ=e^(−t/2)φ(e^(−t)q); squared factor e^(−t) cancels the Jacobian e^t. | Pass; omitting the half-divergence fails unitarity. |
| Q4: projective quantization | H⁰(ℂP¹,O(2)) has basis z₀²,z₀z₁,z₁², dimension 3=binomial(3,1). ℂP²,O(2) gives 6=binomial(4,2). O(0) gives 1; O(−1) gives 0 on positive-dimensional projective space. | Pass; dimension formula is an imported comparison. |
| Q4: torus automorphy / metric | k=2, τ=i, α=β=0: h(p=1)=e^(−4π), while the τ-automorphy multiplier at z=0 has squared modulus e^(4π); their product is 1. | Pass; inverse metric would fail. |
| Q4: theta carrier and convergence | k=1, τ=i: theta series has factors e^(−πm²), is summable and has 1,τ multipliers 1 and e^(π−2πiz). At τ=0,z=0 every term is 1 and the series diverges. | Pass; Im τ>0 is essential. |
| Q4: Bohr–Sommerfeld leaves | k=2, α=0: leaves p=0,1/2; α=1/2: p=1/4,3/4. At p=0 the latter holonomy is −1. Direct sum dimension 2, but global smooth polarized sections have dimension 0. | Pass; discrete leaf quantization is not global smooth sections. |
| Q5 positive-line bridge: Kodaira / residues | On ℂP¹, O(1)^2 embeds by [z₀²:z₀z₁:z₁²], pullback degree 2. Residues j=0,1 give all n=2a+j. H¹(O(n))=0 for n≥−1, whereas H¹(O(−2)) has dimension 1. | Pass in examples; Kodaira source not readable. |
| Q5 positive-line bridge: equivariant index | Trivial torus on ℂP¹: index and H⁰ dimension both n+1 for n≥0; replacing L by O(−2) gives H⁰=0 but index −1. | Pass; positivity/large-power input cannot be omitted. |
| Q5: compact Fourier versus Lie formal weights | Period P=2π gives frequency k; P=1 gives 2πk. The circle character e^(ikθ) at θ=2π is 1 for k∈ℤ, but k=1/2 gives −1. | Pass; arbitrary Lie dual weights are insufficient. |
| Q5 equivariant fixed-point character | On ℂP¹,O(1), direct section trace is 1+t⁻¹. Fixed-point terms are 1/(1−t⁻¹)+t⁻¹/(1−t); at t=i these are (1−i)/2 and (1−i)/2, summing to 1−i. | Pass; denominator uses inverse normal action. |
| Q5 global distribution: full normalization | ℂP²,O(n): total multiplicity (n+1)(n+2)/2; divide by n² to get 1/2+3/(2n)+1/n²→1/2. Raw volume is (2π)²/2; dividing by (2π)² gives 1/2. | Pass. |
| Q5 global distribution: ineffective and rank zero | Trivial circle action on ℂP¹ with fibre weight 2: measure (1+1/n)δ₂→δ₂, not an ambient smooth density. A point has d=0 and mass 1; empty M has mass 0. | Pass. |
| Q5 regular chamber: generic finite kernel | Doubled-circle action on ℂP¹ has weights −2j, 0≤j≤n. Multiplicity 1 on even weights, 0 on odd; full-lattice DH density 1/2 on (−2,0). Index q=2 gives qρ=1. | Pass; omitting q halves the answer. |
| Q5 global complexified action | Circle on ℂP¹: e^(it)[z₀:z₁]=[z₀:e^(it)z₁] extends to t∈ℂ×. On a fibre, z'=az has solution e^(at)z for all real t; noncompact total space alone does not obstruct completeness. | Pass; this is an owned construction, not a consequence of Sjamaar's assumption. |
| Q5 projective potential / metric comparison | Shift ξ=−1/2, n=2 on ℂP¹, x=[1:1]: κ(a)=log cosh(2a), κ'(0)=0, κ''(0)=4. Rescaling the line metric by a constant cancels in its ratio. | Pass; convexity sign agrees. |
| Q5 semistability / regularity | Weights −1,+1: 0 is in the interior, κ has its unique minimum at a=0. At boundary weights 0,−1, κ=log((1+e^(−2a))/2) has infimum −log2 only at infinity. | Pass; boundary semistability cannot be upgraded to regular stability. |
| Q5 global quotient and local descent | For ξ=−1/2 on ℂP¹, Z is the unit circle, Mss=ℂ× and reduced space is a point; ℂ××_(S¹)S¹→ℂ× is bijective. Doubling the action retains stabilizer μ₂. | Pass; full isotropy must remain in the quotient. |
| Q5 finite-isotropy line | On [point/μ₂], trivial fibre character has one invariant section and sign character has zero. Both have zero infinitesimal character. | Pass; descending only the infinitesimal action would give the wrong answer. |
| Q5 shifted Kostant differential | E=O(2) with ξ=−1/2, s=z₀z₁, r=|z₁/z₀|=2: η=−3/10, norm²=4/25. Claimed derivative 4·2·(9/100)·(4/25)=72/625; differentiating r²/(1+r²)² along r'=−6/5 also gives 72/625. | Pass; verifies sign and factor independently. |
| Q5 global bound and extension | Same section: norm² at r=2 is 4/25≤1/4 at Z (r=1). On a punctured disc, 1/z is unbounded and does not extend, whereas bounded 1 does extend. | Pass; boundedness is a real input. |
| Q5 empty level / trivial group | ξ=1 for the natural ℂP¹ action with moment image [−1,0]: Z is empty and weight n has multiplicity 0. For the trivial group reduction is M and restriction is the identity. | Pass. |
| Q5 orbifold Hodge / positive powers | [point/μ₂], trivial line: H⁰ dimension 1, higher groups 0, index 1; sign line: all 0. Positivity condition in dimension zero is vacuous without changing this distinction. | Pass. |
| Q5 uniform positive-power range | If the normalized positive curvature on compact C is at least a=1/2 and the opposing canonical curvature has norm at most 3, n=7 gives n·a−3=1/2>0; n=6 only gives 0. | Pass; N depends on C and geometry, not on an individual weight. |
| Q5 actual H⁰ reduction isomorphism | For ℂP¹,O(2), ξ=−1/2, weight −1 has basis z₀z₁; the reduced point has one section. For the doubled action, an odd target weight has 0 sections and its sign fibre on [point/μ₂] also has 0. | Pass in both directions; an ordinary coarse line would fail. |
| Q5 reduced-index equality / large-power qualification | In these regular point reductions, higher H⁰,q vanish for q>0; the two preceding multiplicities 1 and 0 equal their orbifold Euler characteristics 1 and 0. | Pass; general higher-dimensional vanishing remains a required target. |
| Q5 inertia weights, abelian and nonabelian | [point/μ₃]: (1+ζ^a+ζ^(2a))/3 gives 1 for a=0 and 0 for a=1. For S₃, trivial character gives 1/6+1/2+1/3=1; sign gives 1/6−1/2+1/3=0. | Pass; centralizer weights counted once. |
| Q5 normal denominator | A normal eigenvalue −1 with x=0 gives 1−(−1)=2. The identity sector has no eigenvalue-1 normal direction, so its rank-zero normal factor is the empty product 1, not division by zero. | Pass. |
| Q5 joint quasi-polynomial / uniform error | For ℂP² weights (0,1,2), n=6: j=2 gives C=2, leading j/2=1, error 1; j=3 gives C=2, leading 3/2, error 1/2. | Pass; a parity class in the joint lattice is necessary. |
| Q5 full kernel and twisting independence | T² acts on ℂP¹ with first coordinate doubled and second trivial; fibre second weight 3. Weights are (−2j,3n), moment (−2u,3). Changing β=(0,3) to (1,3) shifts residual weights by −n; nβ+q*η remains (−2j,3n). | Pass; affine-support transport is exact. |
| Q5 first CP² counting example | n=2, weights (0,1,2): multiplicities 1,1,2,1,1 at 0,1,2,3,4; total 6. Triangular density integrates to 1/2. | Pass; section action reverses weights before an allowed character twist. |
| Q5 second CP² counting example | n=2, weights (0,1,−2): six distinct values −4,−2,−1,0,1,2. n=3: 0 occurs twice, and −6,−4,−3,−2,−1,1,2,3 once; total 10. Density integrals are 1/3+1/6=1/2. | Pass independently of unread Knutson text. |

**Adversarial computations: all Lean declarations.** The following rows also account for the definitions with genuine bodies, including junk values. Suggested names are in `TauCetiRoadmap.GeometricQuantization`; companion names are in its `HomogeneousCharacters` namespace. Line numbers refer to the respective files. A result “padding” is about acceptance-file scope, not mathematical falsity.

| Declaration / line | Computed values or separating instance | Result / change |
|---|---|---|
| PhasePlane, 29 | (0,0) is a point of ℝ×ℝ; (q,p) has two coordinates, not a general symplectic manifold. | Real body; R02. |
| hamiltonianField, 32 | f=q gives (0,−1); f=p gives (1,0); f=0 gives (0,0). | Pass; R02. |
| poissonBracket, 36 | {q,p}=1, {p,q}=−1, {0,p}=0. | Pass; R02. |
| planeForm, 40 | ω(e_q,e_p)=1, ω(e_p,e_q)=−1, ω(e_q,e_q)=0. | Pass; uses native standard form. |
| hasHamiltonianField_plane, 44 | f=q,v=e_q: 1=1; f=0: 0=0. Linear decomposition gives the general identity even without smoothness. | Padding; R03. |
| poissonBracket_matches, 49 | f=q,g=p: 1=ω((0,−1),(1,0))=1; f=g: 0=0. | Padding; R03. |
| prequantumDerivative, 56 | ψ=1,x=(0,2),v=e_q,ℏ=1: 2i; v=e_p: 0; ℏ=0: 0. | Correct body; ℏ=0 is not a geometric prequantization. |
| prequantumOperator, 61 | ψ=1: Q_q=q, Q_p=0; at ℏ=0, Q_fψ=fψ. | Pass as local model; R02. |
| prequantumDerivative_curvature, 67 | ψ=1,u=e_q,v=e_p: left −i, right −i; u=v: both 0. | No counterexample; local substitute, R02. |
| principalLift, 75 | f=q: (0,1,q); f=p: (−1,0,0); f=1: (0,0,1). | Pass; R02. |
| principalConnection, 80 | On V: 1; on Y_q: q; on Y_p: p. At ℏ=0 it is dt. | Pass; real definition. |
| principalConnection_lift, 83 | f=p,x.2=2,ℏ=1: 2=2; ℏ=0: 0=0. | One-simp padding; R03. |
| equivariantSection, 88 | ψ=1,t=0: 1; t=π: −1; t=2π: 1. | Correct weight +1; R02. |
| principalLift_operator, 91 | ψ=1,t=0,f=q: iq=iq; f=p: 0=0. | No counterexample; local substitute, R02. |
| poissonBracket_coordinates, 99 | {q,p}=1 everywhere; reversing inputs gives −1. | Coordinate Check; R03. |
| prequantumOperator_const, 104 | c=3,ψ=1: 3=3; c=0: 0=0, including ℏ=0. | Boundary/API padding; R03. |
| prequantumOperator_commutator, 109 | f=q,g=p,ψ=1: −i=−i; f=g: 0=0. | No counterexample; local substitute, R02. |
| verticalSection, 119 | φ(q)=q² at (2,0),(2,7): 4,4; function p instead gives 0,7 and is not vertical. | Real body; R02. |
| prequantumOperator_position, 121 | φ=q²,q=2,ℏ=1: Q_qφ=8=qφ. | Coordinate Check; R03. |
| prequantumOperator_momentum, 127 | Same data: Q_pφ=4i=iφ'. | Coordinate Check; R03. |
| canonical_commutator, 133 | Same data: commutator −4i=−iφ; φ=0 gives 0=0. | Coordinate Check; R03. |
| rescaledCharacterPairing, 149 | Λ=ℤ, weights 0,2 with coefficient 1, n=2,d=1,f(x)=x: (0+1)/2=1/2. n=0,d=1 gives 0; d=0 gives total coefficient times f(0). | Well-defined total function; unused acceptance scaffolding, R02. |
| HasWeakMultiplicityLimit, 159 | Zero character/zero limit: every tested pairing 0→0. Point character coefficient 1,d=0: pairings f(0)→f(0). | Predicate does not impose actual geometric characters; R02. |
| JointMultiplicityResidues, 172 | Residue (n,λ)↦λ mod 2 has kernel index 2; zero quotient has index 1. | Real finite data; not an asserted geometric construction, R02. |
| HasUniformLocalMultiplicityAsymptotic, 182 | multiplicity=leading=0 gives error 0≤0 with K=0; empty C or false admissibility tests no weights. For d=r=0 the error exponent is −1, not truncated to 0. | Arithmetic and quantifier order sound; no geometric theorem, R02. |
| restrictCharacter, companion 20 | Restrict S₃ sign to a transposition subgroup: −1; to A₃: 1. | Native composition; R03. |
| restrictCharacter_apply, 23 | At a transposition: −1=−1; identity: 1=1. | rfl padding; R03. |
| characterKernel, 27 | Sign kernel has 3 elements A₃; trivial character kernel has 6 elements S₃. | Native kernel; R03. |
| mem_characterKernel, 29 | 3-cycle: true↔1=1; transposition: false↔−1=1. | Iff.rfl padding; R03. |
| descendCharacter, 34 | S₃/A₃ sign takes nonidentity class to −1; N=S₃ fails hN. | Native quotient lift; R03. |
| descendCharacter_mk, 38 | Transposition class: −1=−1; identity class: 1=1. | rfl padding; R03. |
| descendCharacter_comp, 43 | Pullback on a transposition gives −1, agreeing with sign; on a 3-cycle gives 1. | rfl padding; R03. |
| descendContinuousCharacter, 47 | The same finite discrete quotient has preimages of {−1} equal to its nonidentity singleton; continuous. Trivial character gives the constant 1 map. | Native lift plus quotient continuity; R03. |
| descendContinuousCharacter_mk, 52 | Nonidentity class −1=−1; identity 1=1. | rfl padding; R03. |
| periodRestriction, 62 | j:ℤ→ℤ, j(q)=2q; χ(y)=3y gives χ∘j(q)=6q. j=0 gives 0. | Native precomposition; R03. |
| periodRestriction_apply, 67 | q=1: 6=3·2; q=0: 0=0. | rfl padding; R03. |
| centralCharacterLattice, 72 | j(q)=2q: kernel {0}; j=0: kernel all Hom(ℤ,ℤ). | Native kernel; R03. |
| mem_centralCharacterLattice, 75 | χ=0 gives true and all values 0; χ=id,j=2 gives false with value 2 at 1. | Kernel extensionality; R03. |
| ordinaryDegree_has_specifiedCharacter, 87 | j=2: degree 2 is in range via χ=id; degree 1 is not, since 2k=1 has no integer solution. | Definition of range, not geometric existence; R03. |

**Pinned library audit.** Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Searched by objects as well as names (connections, symplectic forms, characters, quotient descent, half-densities, theta, Stone generators and formal weights). The following declarations were opened, rather than inferred from names:

| Pin-relative file and line | Declaration and scope actually consumed |
|---|---|
| `Mathlib/Topology/Algebra/ContinuousMonoidHom.lean:152` | `ContinuousMonoidHom.comp`; continuous composition already bundled. |
| `Mathlib/Algebra/Group/Subgroup/Ker.lean:238` and 249 | `MonoidHom.ker`, `MonoidHom.mem_ker`; membership is f(x)=1. |
| `Mathlib/GroupTheory/QuotientGroup/Defs.lean:249`, 253, 262 | `QuotientGroup.lift`, `lift_mk`, `lift_comp_mk'`; normal subgroup plus containment in the kernel. |
| `Mathlib/Topology/Constructions.lean:729` | `continuous_quot_lift`; quotient continuity requires a continuous representative and respects the relation, not a new smooth quotient theorem. |
| `Mathlib/Topology/Algebra/PontryaginDual.lean:37` | `PontryaginDual` uses continuous circle-valued characters; it does not create the smooth homogeneous bundle correspondence. |
| `Mathlib/Geometry/Manifold/VectorBundle/CovariantDerivative/Basic.lean:365` | `CovariantDerivative`; a real bundled native connection carrier with its covariant-derivative law, not an arbitrary operation field. It does not itself impose Hermitian curvature −iω/ℏ. |
| `Mathlib/NumberTheory/ModularForms/JacobiTheta/TwoVariable.lean:123` | `summable_jacobiTheta₂_term_iff`; exactly Im τ>0, consistent with the divergent τ=0 control. |
| `TauCeti/Geometry/Symplectic/StandardCompatible.lean:83`, 90 | `stdSymplecticForm`, `stdSymplecticForm_apply`; the plane convention is u₁v₂−u₂v₁. |
| `TauCeti/Geometry/Symplectic/Manifold/TwoForm.lean:68`, 92, 192 | `SmoothTwoForm.IsNondegenerate`, `IsSymplectic`, `constSmooth`; closedness and nondegeneracy are actual laws. These predicates do not add Hausdorffness or finite dimension on their own. |
| `TauCeti/Algebra/Lie/Weights/FormalCharacter.lean:156`, 164, 169 | `formalCharacter`, its coefficient and nonnegativity API; generalized weights under the stated nilpotent/linear-weight/finite-dimensional hypotheses, not arbitrary integral compact characters. |
| `TauCeti/Algebra/Lie/Weights/FormalCharacter.lean:475`, 485, 493 | Killing/Cartan specialization in characteristic zero and finite dimension. The honest-weight comparison uses algebraic closedness; integral support omits that instance but requires `IsTriangularizable K H L`. |
| `TauCeti/RepresentationTheory/Compact/Circle.lean:126`, 142 | `fourierChar`, `fourierRep`; normalization depends on the circle period. |
| `TauCeti/RepresentationTheory/Compact/Character/Projection.lean:106`, 122 | Character inner-product identity and `integratedOperator_star_character_eq_zero`; conjugated characters and a real intertwiner-vanishing hypothesis, not an unqualified projection on arbitrary modules. |
| `TauCeti/Analysis/ODE/SmoothParameter.lean:139`, 207 | `exists_contDiffAt_picard_solution_of_contDiff` needs complete model spaces and a globally smooth parameter field; the local version needs finite-dimensional models. Both require the field to vanish near the base state at the base parameter. Q2 supplies this by its parameter ξ=0. |
| `TauCeti/Analysis/Semigroups/Group/Stone/Unbounded.lean:63`, 69 | Complete complex Hilbert-space context; `IsSelfAdjoint.exists_isUnitary_complexGenerator_eq_I_smul` gives generator iA. Geometric essential self-adjointness still needs the dense invariant core. |

No native general prequantum/polarized/orbifold-quantization theorem was located by those searches. This is not a claim that generic bundles, connections or representations are absent. The README correctly separates the Lie-dual formal-character carrier from the integral compact-torus character lattice.

**Cross-roadmap ownership and supplier resolution.** Used the prescribed roadmap grep/show tools, then read the relevant files on main or the supplied eligible new-roadmap heads. Also searched the board packages and the supplied open-roadmap checkout tree by the mathematical objects; the hits did not establish a second owner for geometric half-density quantization or the specific orbifold multiplicity theorem. Existing smooth bundles, Hamiltonian reduction, analytic comparison and ordinary index infrastructure remain suppliers. The new Q2A character/prequantization comparison and Q5 torus multiplicity theorem belong here; generic character wrappers do not. No duplicate fully qualified name was found in the inspected roadmap search results.

| Supplier / resolved location | Resolution and convention check |
|---|---|
| SmoothBundlesConnections, `TauCetiRoadmap/SmoothBundlesConnections/README.md:421`, 605, 1716, 1739, 1780 | B1.4 homogeneous associated bundles, B2.2 Hermitian L² construction and B6.3–B6.5 integrality/flat torsors exist. Its conventions at 142–158 give the same dual-circle curvature and degree +1. These are imported, not new prequantization classification targets. |
| SymplecticGeometry, `TauCetiRoadmap/SymplecticGeometry/README.md:37` | i_Xω=df and ω=−dθ agree with X_q=−∂p and {q,p}=1. |
| CotangentLagrangian, `TauCetiRoadmap/SymplecticGeometry/CotangentLagrangian/README.md:25` | C1 supplies the native cotangent total-space construction, tautological λ=p dq and ω=−dλ. A general map supplies a cotangent relation, not a falsely total pushforward. |
| CompactGroups, `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:135`, 366 | Circle Fourier and character-projection contracts resolve; actual native compact-circle and conjugate-character APIs were opened at the pins. |
| HamiltonianReduction, `TauCetiRoadmap/SymplecticGeometry/HamiltonianReduction/README.md:36`, 183 | R1 moment defects and R2 actual KKS orbits exist; the radius-r sphere has area 4πr and the SO(3)/SU(2) periods differ by two. |
| ConvexityToric, `TauCetiRoadmap/SymplecticGeometry/ConvexityToric/README.md:130`, 156 | T3 finite-length gradient/retraction input and T4 DH measures exist. T4's raw symplectic volume requires the explicit (2π)^(−d) conversion in Q5. |
| ComplexKahlerGeometry, `TauCetiRoadmap/ComplexKahlerGeometry/README.md:437`, 444, 1208, 1245, 1444 | Bounded extension, K4 bundle/Dolbeault material, K5b.1 Green/Hodge, K6.0 Bochner–Kodaira and K7.2 projective sections are present on main. K4.P is not: R01. |
| SchubertGeometry, `TauCetiRoadmap/SchubertGeometry/README.md:46` | Main's S3 does not contain S3P. The supplied revision adds it and consumes Q2A in S3P.3: R01. |
| LieGroups, `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:358`, 383, 407, 430 | Layers 5–8 provide covering/maximal-torus/compact complexification/Borel–Weil material. Use the existing compact complexification target for T; do not assume a revision's more detailed “early prefix” exists on main. Negative-Borel fibre weight is transported with the stated pole convention. |
| DifferentialGeometry, `TauCetiRoadmap/DifferentialGeometry/README.md:294`, 400, 463, 524, 528 | Form comparison, time-dependent flows, Frobenius, homotopy and density inputs resolve. The half-density quantization construction remains here. |
| SelfAdjointSpectralTheory, `TauCetiRoadmap/OperatorTheory/SelfAdjointSpectralTheory/README.md:78` | Unbounded-operator and Stone infrastructure resolves; it does not itself prove that this geometric compact-support domain is a core. |
| Orbifolds, `TauCetiRoadmap/Orbifolds/README.md:296`, 334, 394, 419, 672 | O4/O4-S/O4-W/O4-T and O5 resolve. Integral of 1 on [point/G] is 1/|G|, with ineffective isotropy retained. The required Kawasaki/Dolbeault multiplicity application is owned in Q5. |
| ComplexComparisonPartII, `TauCetiRoadmap/ComplexComparisonPartII/README.md:1574`, 1618, 1673, eligible new-roadmap head | C1.7–C1.9 resolve, including analytic Serre vanishing. They do not supply the positive-line Kodaira embedding that Q5 separately undertakes. |
| IndexTheory, `TauCetiRoadmap/IndexTheory/README.md:669`, 742, 890, supplied new-roadmap head | I6, I7.3 and I8 resolve; the holomorphic fixed-point denominator uses the inverse normal action, matching Q5's sector denominator. |
| LieGroupoidsPoisson, `TauCetiRoadmap/LieGroupoidsPoisson/README.md:1205`, supplied new-roadmap head | G4.2a is the actual smooth/legacy bracket comparison. Poisson-groupoid prequantization is a different object and remains there. |
| HamiltonianSystems, named Layer 1 contract | Resolved the named roadmap's contraction/bracket interface with the roadmap tool. It is a mathematical supplier, not an imported pinned Lean module. No object file from that roadmap is used here. |

These resolutions distinguish eligible suppliers from revisions of existing roadmaps. The mechanically passing order does not override R01. No change to the merge order or dependency tooling was made.

## Not verifiable

- **kostant** — *Quantization and Unitary Representations* (1970): the source service reached the Springer publisher record and returned uncertified. The README gives no exact theorem/page for Q1–Q2A; no claim about that text's detailed hypotheses is certified.
- **sniatycki** — *Geometric Quantization and Quantum Mechanics*, DOI 10.1007/978-1-4612-6066-0: publisher record returned uncertified. General real-polarization/Bohr–Sommerfeld source support could not be read. It is not placed in the missing-reference request again.
- **woodhouse** — *Geometric Quantization* (1992): the service tried DOI 10.1093/oso/9780198536734.001.0001 and the OUP landing page returned HTTP 403. The exact cited Q3/Q4 pages were not supplied.
- **kodaira** — *On Kähler varieties of restricted type* (1954), DOI 10.2307/1969701: the service reached JSTOR without a classified readable copy. Publisher/institutional searches exposed records and a different PNAS announcement, not the cited Annals text. No theorem/page or equality of numbering is guessed.
- **knutson** — *Lie Groups notes, Semester 2*, physical pp. 106 and 119 of 131: source-service title and filename attempts, and Cornell/Berkeley course-page searches, did not produce the cited text. The alleged repeated-middle discrepancy is not certified as a source error. The monomial calculations were checked independently.

The three unread works are retained together in the missing-reference file. The five successful fetches and the two uncertified results do not justify certifying the three missing homogeneous-character locators or the Kodaira locator. No missing text was used to postpone the rest of this review.

## Source issues

Four source issues were found. The following concern the inspected arXiv v1 of Sjamaar, not an asserted later published edition. The relevant PDF pages were also inspected visually; in particular the orbit-closure bar is present and is not itself an error. The examples below distinguish actual slips from extraction losses. [Source](https://arxiv.org/pdf/alg-geom/9304004v1).

- **Misprint** in sjamaar at Proposition 2.11 proof, printed page 24 (sjamaar lines 1276–1279): the source says averaging over H⁰ gives H-complexification invariance; it should be invariance under the complexification of H⁰; affects the proof.
- **Misprint** in sjamaar at §2.2 before Lemma 2.13, printed page 26 (sjamaar lines 1335–1338): the source says the descended potential is |w|/2 for w=z₁z₂; it should be |w|; affects a stated result.
- **Misprint** in sjamaar at Theorem 2.14 proof, printed page 27 (sjamaar lines 1418–1425): the source says the fibre norm r₀ equals h₀|ζ|², and similarly on the dual; it should be the squared norm in both formulas; affects the proof.
- **Gap** in sjamaar at Theorem 2.15 proof, printed page 28 (sjamaar line 1487): the source says section values at x and its orbit-closure limit are equal by invariance; it should be nonvanishing at the limit follows from the preceding norm-monotonicity inequality; affects the proof.

For the first issue, H=μ₂ and its sign fibre have H⁰={1}: averaging leaves 1 unchanged, while −1 still acts by −1. For the second, (z₁,z₂)=(1,1) is on the zero level and gives u=1, w=1, versus the displayed u₀=1/2. For the norm notation, a unit frame at ζ=2 has norm 2 and squared norm 4; the unit-disc inequality is unchanged. For the final issue, on ℂP¹ with t[z₀:z₁]=[z₀:tz₁] and invariant O(1) section z₀, the flow from [1:1] reaches [1:0]; squared norms are 1/2 and 1. Values belong to different fibres; the inequality, not an unstated identification, gives the needed nonvanishing. These corrections do not refute the roadmap's full-isotropy descent or its correctly stated norm bound.
