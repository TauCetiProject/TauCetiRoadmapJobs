# Review of HermitianKTheoryOfPoincareCategories (pull request #1266 at 5a6365d)

**Verdict:** needs changes

## R01 (P1) — Assign owners to the additional proof inputs

**Location:** `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/README.md:19–23`, with uses at lines 629, 870, 884, 1105–1111, 1167–1171 and 1198. The arbitrary-parameter extension also enters line 1339.

**Claim:** Several mathematical inputs are assumed without being targets here, pinned declarations, named supplier targets, or declared supplier gaps. In particular, “The arbitrary-parameter consequences below assume this contract” does not assign anyone the construction. The same problem affects Segal–Lin, the ko Tate calculation, Ranicki–Shaneson, the odd-formation comparison, and the Read/Schlichting consequences. Making the assumptions explicit avoids a false unconditional theorem, but leaves the general library unfinished.

**Witness:** §7.7 assumes the derived-extension equivalence; its Needs line names no owner for it. Paper I Proposition 4.2.18 actually proves this equivalence (paper-i line 3441), so it is substantial missing work.

The supplier search resolved the standard three genuine structures in GeometryOfNumbersAndQuadraticArithmetic §6.8a, ko itself in GeneralizedCohomology §G5.4, and Laurent K₀/global-dimension facts in GeneralAlgebraicKTheory §10.12a. Those contracts do not supply the additional results enumerated above. No corresponding declared gaps were supplied with this package. The algebraic Thom equivalence used at line 532 likewise needs an explicit local target or supplier contract; the source locator alone is not an implementation owner.

**Repair:** Add preceding mathematical targets, with their own routes and dependencies, for the additional results that remain in scope; alternatively identify an actual earlier supplier target or declare a precise gap with a named supplier. For form parameters, include extension from the parameter to finite projectives, retract compatibility, and the derived restriction equivalence of Paper I Proposition 4.2.18. For the Thom input, add the equivalence of Paper I Corollary 2.4.6 to the metabolic-category API. Do not implement an arbitrary-parameter theorem by assuming the extension that constructs its carrier, or implement Read/Schlichting consequences by assuming those same conclusions.

**Repair test:** The nonstandard Burnside parameter over ℤ must pass through the newly owned extension: τ(1)=(2,0), ρτ(1)=2, and q(1)=(1,1) and (1,3) give distinct refinements of the same unit line. The three standard flavours alone do not pass this test. The sphere and ko inputs must respectively establish connectivity of the Tate sphere and the calculation π₀Σ²ko^{tC₂}=0 versus π₀Hℤ^{tC₂}=ℤ/2. These are precise obligations, not consequences of the supplied carriers.

## R02 (P2) — Resolve the competing ownership of the generic Arf classification

**Location:** `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/README.md:13` and `:1215`; `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/Suggested.lean:43–75`.

**Claim:** This roadmap claims construction of the generic finite-dimensional quadratic Arf theory. Another supplied open head independently claims the same construction, including the basis formula, intrinsic counting invariant and Lagrangian criterion. These are the same objects and results, not geometric versus algebraic variants.

**Witness:** `TauCetiRoadmap/GeometricTopology/README.md:3251–3279` at the supplied open head explicitly owns native `QuadraticForm (ZMod 2) V`, basis independence, plane decomposition, counting and the zero-Arf/Lagrangian equivalence.

**Repair:** Make one roadmap own this generic block and have the other consume that block. Preserve the supply direction: the GeometricTopology revision is not an allowable dependency merely because its open head contains this work. If the generic theory moves to this earlier Hermitian roadmap, record that ownership transfer and reconcile the competing block in the GeometricTopology plan; its geometric refinements remain there. Otherwise cite a lawful existing/earlier owner and remove the duplicated construction here. Do not add an upward dependency or a second implementation under different names.

**Repair test:** The shared contract must cover dimension zero, H(x,y)=xy, A(x,y)=x²+xy+y², and A⊕A. Both plans currently assign these the same values: Arf 0, 0, 1, 0, with A⊕A metabolic. Distinct namespaces do not distinguish the mathematical targets. No duplicate fully qualified Lean name was found.

## R03 (P3) — Give the Arf headline formulas a locator that contains them

**Location:** `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/README.md:1215–1217`; `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/Suggested.lean:49` and `:64`.

**Claim:** The proof of Paper III Corollary 2.3.10 is cited for the basis formula and the intrinsic counting definition used by both headline signatures. It only invokes the finite-field quadratic Witt-group calculation; it does not state the counting formula or establish its identification with the basis sum.

**Witness:** paper-iii lines 2095–2096 identify the finite-characteristic-two Witt group with ℤ/2 through Arf; no symplectic-basis or fibre-cardinality formula occurs there.

**Repair:** Keep that locator for the Witt-group calculation and add precise locators for the basis and counting bridge. One readable option is Pyronneau, Definition 2.9 and Lemmas 2.11–2.13, Corollary 2.14 and Theorem 2.15, pp. 4–5 (pyronneau lines 184–231), with the count recurrence corrected as recorded under Source issues. State the zero-dimensional case and the short argument that a quadratic zero subspace of half dimension gives a hyperbolic basis. Update both Lean docstrings to match.

**Repair test:** H has zero/one fibre sizes 3/1 and basis sum 0; A has 1/3 and basis sum 1; A⊕A has 10/6 and sum 0; the zero space has 1/0 and empty sum 0. Thus the repaired reference chain supports the actual total definition and both theorem signatures, not just the abstract order of the Witt group.

## R04 (P3) — Remove undeclared implementation names from the README

**Location:** `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/README.md:80`, `:223–228`, `:1111`, `:1215`, `:1235`, `:1242`.

**Claim:** The README presents its own planned API declarations as backticked Lean names although Suggested.lean declares only three names. The gate specifically reports `arfInvariantF2_wittEquiv` as absent. The sentence at line 80 explicitly licenses the opposite of the required README/Lean naming rule.

**Witness:** Suggested.lean contains `arfInvariantF2`, `arfInvariantF2_eq_sum` and `arfInvariantF2_classifies`; it contains neither `arfInvariantF2_wittEquiv` nor the metabolic API names at lines 223–228.

**Repair:** Keep mathematical API bullets in prose and remove backticked identifiers claiming undeclared local declarations, including the absent Witt equivalence name. Retain the three actual Lean names and real supplier/library identifiers. Rewrite line 80 accordingly. At line 1111, cite the actual Laurent K₀ prose target in GeneralAlgebraicKTheory §10.12a instead of the absent identifier `regularRing_K0_laurent`; that section supplies the mathematical fact. Do not fill Suggested.lean with placeholder carriers or API padding to satisfy the scanner.

**Repair test:** The prose can still require the additive isomorphism W^q(𝔽₂)≅ℤ/2 and refer to the two actual headline theorems; their tested H/A values are unchanged. Re-run the README-name check until `readme-ids-missing=0`.

## R05 (P3) — Remove the two HTML anchor residues

**Location:** `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/README.md:1246` and `:1262`.

**Claim:** The two manually inserted HTML anchors fail the supplied text gate.

**Witness:** The gate reports `residue=2`, at the anchors `finite-even-multiplicative-l-tate` and `multiplicative-l-tate-base-change`.

**Repair:** Delete those HTML lines and use the normal section-heading anchors in links. Keep the mathematical statements of §§7.10–7.11.

**Repair test:** Both sections remain headed and addressable through their Markdown headings; the gate must report `residue=0`. This changes no mathematical object or comparison map.

## Verified sound

This was a full read of the 64 numbered targets, their API bullets, Checks, examples and Needs lines, and all three Lean declarations. The review used the pinned worktree at the specified head and the supplied main/open-head copies. Findings R01–R02 concern ownership and completion of the plan; no false Lean headline theorem was found. The computations below are adversarial tests, not substitutes for proofs of the general theorems. Abstract spectrum statements were checked against their source and explicit zero, degree and low-dimensional instances; they were not formally proved.

### Gate, elaboration and signatures

The supplied push gate failed only these rule categories:

```text
residue=2
readme-ids-missing=1
build=0
outside-folder=0
stray-files=0
set_option=0
sorry-data=0
sorry-examples=0
imports=0
mathlib-subimports=0
no-import-mathlib=0
depcheck=0
FAIL
```

Here `build=0` means zero build failures. All other gate counters were zero. R04 and R05 account for every failing category; acceptance is unavailable while this gate fails. The outside-folder diff was empty and the worktree remained unchanged.

I independently ran the prescribed dependency check; its output was:

```text
depcheck: 205 roadmaps, 1462 edges, 0 problem(s)
```

There were no UPWARD, CYCLE or moved lines. This is evidence about the declared edges, not about the unassigned mathematical inputs in R01.

The prescribed `lake env lean` elaboration of the original Suggested.lean passed, with only the two expected `sorry` warnings. A separate scratch copy with `#check @` for all three declarations also passed. All finite-dimensionality, module and nonsingularity hypotheses appear in the elaborated signatures; no section binder disappeared. The basis assumptions imply nonsingularity for `arfInvariantF2_eq_sum`; `arfInvariantF2_classifies` explicitly requires zero polar radicals on both spaces. The definition is total on degenerate forms, but neither theorem asserts a nonsingular classification without its appropriate hypothesis.

One-tactic scratch probes using `simp`, `rfl` and `infer_instance` failed on each sorried theorem. Inspection of the pinned quadratic-form, symplectic-basis and finite-quadratic-module APIs found no single library lemma giving either result. There are no admitted examples, sorry'd data, forbidden imports or option overrides. Nothing in Suggested.lean was identified as padding.

### Headline coverage

The README's end results and deep intermediate results are: Tate collapse and shifted classical comparisons (§§0.3, 0.5); Bott–Genauer and Karoubi periodicity (§§1.2–1.6); relative and quadratic surgery (§§3.2, 4.1); the Witt/short-complex comparisons (§§4.5, 4.10–4.12); connective ring-spectrum surgery and π₀ comparison (§§5.3, 5.5–5.8); symmetric surgery (§§6.4–6.6); genuine-to-symmetric comparisons, fields and form parameters (§§7.1–7.9); multiplicative/module refinements (§§7.10–7.11); and the classical GW fibre sequences, splitting and comparison (§§8.1–8.4). The Arf basis formula and complete Witt invariant are the two native finite-dimensional headline signatures.

Suggested.lean's module docstring identifies the missing stable perfect-derived, Poincaré, spectral GW/L and enhanced t-structure carriers for the other headlines. Pin inspection agrees with that distinction: ordinary derived categories and algebraic Tate cohomology do not supply these carriers. The Arf completeness statement is a direct theorem on native quadratic forms and submodules, not a free predicate or an assumption containing its conclusion. The ownership conflict in R02 must still be resolved.

### Seeded source sample: 15 of 15 locators read

Page numbers below are the README's specified preprint editions, not journal pagination. No additional target was explicitly labelled unverified in the README. Source identifiers refer to the line-numbered legal extractions used for this review.

| Target | Text opened and hypotheses checked | Outcome |
|---|---|---|
| 0.3 | paper-iii lines 369–375, Remark R.4 p.8; Remark R.9 p.10 | Vanishing is in degree −m; the trivial/sign-action torsion-free specializations agree. |
| 0.5 | paper-iii lines 406–423, Remark R.7 p.9 | Shifts 0,2,4 and alternating obstruction agree. The README correctly supplies the Frobenius-twisted scalar action missing from the source's notation. |
| 1.3 | paper-ii lines 4837–4842 and 4863–4868, Corollaries 4.3.1 and 4.3.3 pp.100–101 | Metabolic GW is K; forgetful/hyperbolic directions and the U,V shifts agree. |
| 2.4 | paper-iii lines 563–593, Lemma 1.1.6 and Remarks 1.1.7–1.1.8 pp.12–13 | Both connectivity conditions, perfectness, k≤l and the stably-free refinement retained. |
| 3.1 | paper-iii lines 609–621, Definition 1.1.9/Remark 1.1.10 pp.13–14 | Sign in the difference, diagonal Lagrangian and monoid presentation agree. |
| 3.5 | paper-iii lines 720–727, Remark 1.2.5 p.16; paper-i lines 2080–2092, Corollary 2.4.6 p.43 | The 1-quadratic hypothesis gives the connected loop-form space. Ownership of the Thom input is R01. |
| 3.6 | paper-iii lines 834–863, Proposition 1.2.14 pp.18–19 | a≥0 and n+a even retained; compares (a,a) with (a,a+1), not arbitrary widths. |
| 4.1 | paper-iii lines 732–752, Proposition 1.2.6 p.16 | Both surgery thresholds and parity conditions agree. |
| 4.3 | paper-iii lines 755–760, Corollary 1.2.9 p.17 | n≥0 and intervals [−n,0], [−n−1,0] agree. |
| 5.6 | paper-iii lines 1112–1123, Corollary 1.2.30/Example 1.2.31 pp.24–25 | Range 2m−3/2m−2 agrees; symmetric sphere conclusion requires Segal–Lin, as disclosed. |
| 6.5 | paper-iii lines 1265–1273, Corollary 1.3.3 p.28 | Coherence, finite global dimension, parity and n≥d−2r retained. |
| 7.1 | paper-iii lines 1380–1395, Corollary 1.3.9 p.30 | Injective at d−2r+2, bijective from d−2r+3; no inversion-of-two shortcut. |
| 7.5 | paper-iii lines 1443–1451, Corollary 1.3.14 pp.31–32 | d=1 ranges −1/0 and 3/4 agree, including GW comparison. |
| 8.3 | paper-ii lines 5195–5202, Corollary 4.4.14 p.107; paper-iii introduction p.2; supplier §6.10b 6.10.6 | Stable splitting and the separately supplied genuine-to-periodic comparison after inverting two are both used. |
| 8.4 | paper-iii lines 101–108, Theorem 3 p.3; lines 1398–1410 and 1459–1474, Corollary 1.3.10/Remarks 1.3.16–17 pp.30–32 | d+2/d+3 and improved d/d+1 ranges agree. The improvement keeps commutativity, M=R and 2-torsion-freeness. |

Additional texts opened: Higher Algebra Proposition 1.2.1.5 (higher-algebra lines 1462–1478) and Corollary 7.2.2.19 (lines 47725–47739); Read Corollary F pp.6–7 (read lines 217–250); Schlichting Theorem 1.1 pp.2–3 (schlichting lines 100–108); Paper I Proposition 4.2.18 and the form-parameter construction (paper-i lines 3441–3449 and 3563–3577); Schlichting's form-category Lemma A.16 pp.56–57 (schlichting-forms lines 2750–2767); Ranicki's skew-suspension and Wu-class discussion (ranicki lines 687–707 and 1039–1047); Stacks Tags 05CW and 00OC (stacks-00oc lines 10105–10112 and 12552–12563). The last two Stacks locators use the same Algebra chapter extraction.

### Adversarial values

The following 70 rows cover all 64 numbered targets, the three native declarations and the shared conventions, with extra rows for the Arf results.

Notation in the table: H(x,y)=xy and A(x,y)=x²+xy+y² over 𝔽₂; B is the symmetric bilinear plane with matrix [[0,1],[1,1]]. For abstract assertions, the column records actual group, matrix, support or numerical-bound values on the indicated instance. “Agrees” concerns those tests and the source comparison, not a formal proof. R01 and R02 remain defects even when the tested mathematics is correct.

| Statement | Instances tried | Values on the two sides / negative control | Result; change |
|---|---|---|---|
| Conventions: map connectivity | Hℤ→H𝔽₂; identity | Fibre H(2ℤ): π₀=2ℤ, πᵢ=0 for i<0; cofibre ΣH(2ℤ); degree-zero map onto but not injective. Identity fibre=0. | 0-connective, not 1; agrees. |
| Conventions: dual and shift | ℤ→²ℤ in degrees 1→0 | H₀=ℤ/2; dual H₋₁=ℤ/2. D(P[1])=(DP)[−1]. | Both degree signs agree. |
| Conventions: Tate signs | ℤ with actions ±1; 𝔽₂ | (+): Ĥ⁰=ℤ/2, Ĥ⁻¹=0; (−): Ĥ⁰=0, Ĥ⁻¹=ℤ/2; 𝔽₂: both=𝔽₂. | Norm and 1−σ have the claimed kernels/images. |
| 0.1 coefficient operations | M₂(ℚ), bar(x)=UxᵗU⁻¹, U=[[1,1],[0,1]], ε=[[0,1],[−1,1]] | Correct J=ε⁻¹bar gives J²(E₁₁)=E₁₁; wrong εbar gives [[0,1],[0,1]]. Negating twice gives J. | Corrected inverse is essential; no change. |
| 0.2 flavour spectra | Zero category; 𝔽₂ in degree −2 | At zero K=GW=L=0. Over 𝔽₂: L^gs₋₂=0, L^s₋₂=𝔽₂. | Endpoints must remain distinct; agrees. |
| 0.3 adjacent collapse | ℤ, sign ℤ, ℤ[1/2] | m=1,+ℤ has obstruction 0; m=0,+ℤ has ℤ/2; m=0,−ℤ has 0; all Tate groups after 1/2 are 0. | Exactly the claimed collapses. |
| 0.4 opposite transport | ℤ[1], integral line ⟨1⟩ | Two dual reversals give degree +1; one gives −1. Double form transport gives signature +1. | Directions and evaluation coherence agree. |
| 0.5 shifted symplectic comparison | R=𝔽₂[t], P=R, b(x,y)=xy; hyperbolic alternating plane | b(t,t)=t², whereas ordinary-linear t·b(1,1)=t; twisted scalar gives t². Alternating plane has diagonal 0. | Twisted target required and present. |
| 1.1 metabolic category | Zero; B over 𝔽₂ | At zero form fibre=0. B has determinant1 and q-bilinear diagonal values b(e,e)=0, b(f,f)=1; first coordinate is Lagrangian. Hyperbolic diagonal identically0. | Metabolic ≠ hyperbolic; API distinguishes them. |
| 1.2 Bott–Genauer | Zero category; arrows X→0 | Zero sequence is 0→0→0. On X→0 the form is fib(0→Q(X))=ΩQ(X); L(Met)=0 yields ΩL. | Shift and kernel agree. |
| 1.3 forgetful/hyperbolic | One-dimensional field module | K₀ generator1 maps to hyperbolic rank2; fgt∘hyp(1)=2=1+D(1). At zero U=V=0. | Both maps and fibre shifts agree. |
| 1.4 Karoubi | m=0, M=ℤ; zero ring | One step (m,M)=(0,ℤ)→(1,−ℤ); at zero both V and ΩU=0. | Correct sign/index; no 2-unit hypothesis. |
| 1.5 classical cases | ℤ, ℚ, 𝔽₂ | Over ℤ π₁Q≥3(ℤ)=ℤ/2 but π₁Qgq(ℤ)=0; over ℚ both=0; over 𝔽₂ unit-line diagonal1 prevents even lift. | Last flavour cannot be collapsed over ℤ; agrees. |
| 1.6 periodicity | ℤ; 𝔽₂ | L^s(ℤ) residues (0,1,2,3)=(ℤ,ℤ/2,0,0); at 𝔽₂ even=ℤ/2, odd=0 and −M=M. Two sign changes restore M. | Four/two periods agree. |
| 2.1 bounds and propagation | Qgs over 𝔽₂, ℤ; Qq/Qs endpoints | F₂ fibre has top π₋₂=𝔽₂, cofibre bottom π₀=𝔽₂: r=2,m=0 valid; r=3,m=1 fail. ℤ kills π₋₂. Endpoint zero fibre/cofibre satisfies every bound. | Generator, monotonicity and non-examples agree. |
| 2.2 genuine bounds | m=0,1,2 over 𝔽₂ | (m,r)=(0,2),(1,1),(2,0); fibre top=m−2, linear-part bottom=m. | Both endpoints of each bound agree. |
| 2.3 transported bounds | R=ℤ, M=ℤ; sign coefficient | Opposite ring remains ℤ, dual coefficient remains rank1; the Tate groups in the conventions row are unchanged. | r,m preserved; agrees. |
| 2.4 width criterion | ℤ/2, P[k], zero | ℤ/2: supports [0,1], dual homology degree−1; [0,0] impossible. P[k]: bounds k and −k, width0. Zero: all homology0 in every k≤l interval. | Both directions and zero case agree. |
| 2.5 shifted connectivity | m=0, k=−1,0,1 | min(−2k,m−k)=1,0,−2 respectively; summands' bounds (2,1),(0,0),(−2,−1). | Minimum and shift signs agree. |
| 3.1 cobordism | ⟨1⟩ and ⟨−1⟩ over ℝ; H | Signatures 1,−1; difference of identical forms has signature0 and diagonal Lagrangian. H has Witt class0. | Sign and inverse tested; agrees. |
| 3.2 relative surgery | Z=0; surgery on hyp(Y) along Y | Relative zero datum gives L′=L,N′=N. Full Lagrangian surgery of ambient hyp(Y) gives fib(DY→DY)=0. | W=0 distinction is necessary and present. |
| 3.3 bounded L-monoids | (n,a,b)=(0,0,0),(0,0,1); a=−1 at n=1 | Object support [0,0]; L,N supports [0,0], [−1,−1] for b=0, and [−1,0] for b=1. Width−1 gives only zero. (0,1) violates parity. | Ceil/floor and excluded parity agree. |
| 3.4 strict metabolic quotient | B, ⟨1⟩ over ℝ, zero | B: rank2, L rank1, class0 though diagonal not0; ⟨1⟩ signature1; zero has ranks0,0. | Quotient kills metabolic objects, not all forms. |
| 3.5 1-quadratic ⇒ hyperbolic | H; symmetric B | H: q(e)=q(f)=0, determinant of polar=1. B: b(f,f)=1 versus hyperbolic0, and is outside 1-quadratic hypothesis. | Needed hypothesis excludes the countermodel. |
| 3.6 widen Lagrangians | n=a=0 over ℝ and 𝔽₂ | L^{0,0} and L^{0,1}: ⟨1⟩ maps to signature1 over ℝ; B maps 0→0 over 𝔽₂; k=0 gives bottom term P[−1]. | Isomorphism preserves tested nonzero/zero classes. |
| 4.1 quadratic surgery | m=0,n=0,a=0,b=1,k=−1; integer sweep | 0<−2k=2 and 0<m−k=1; a≥0,b≥1. Across 3492 valid numerical instances, both strict inequalities held. | Numerical obstruction bound agrees. |
| 4.2 middle representatives | n=0,1,2 | Object intervals [0,0], [−1,0], [−1,−1]; Lagrangian intervals [−1,0], [−1,−1], [−2,−1]. | Even/odd formulas agree. |
| 4.3 genuine representatives | n=0,1,2 | Object [0,0],[−1,0],[−2,0]; Lagrangian [−1,0],[−2,0],[−3,0]; a=n,b=n+1 attain thresholds. | Both representative and null-bordism bounds agree. |
| 4.4 low-degree comparison | ℤ,m=0,n=−2; m=2 | Boundary map ℤ/2→0 is onto, not injective; thresholds at m=0 are −3/−2, at m=2 are1/2. | No extra bijectivity claimed at boundary. |
| 4.5 degree-zero Witt | 𝔽₂; ℤ | Lgs₀(F₂)=ℤ/2, Lge₀(F₂)=0; Lgs₀(ℤ)=ℤ via signature, Lgq₀(ℤ)=ℤ via signature/8. | Symmetric/even/quadratic not conflated. |
| 4.6 controlled variants | ℤ and field; C=Dp | Finite projectives are free in these examples; allowed supports and groups equal the unrestricted ones, including rank0. | Free-M hypothesis retained; agrees. |
| 4.7 short complexes/Wu | Integral unit line; F₂ line; H; pairing2 on ℤ | Wu(x)=x mod2; F₂ line Wu(1)=1; H Wu=0; multiplication2 has cokernelℤ/2 and is not invertible. At n=−3 over ℤ group0. | Poincaré nondegeneracy and evenness discriminated. |
| 4.8 short-to-bounded | n=0 and contractible R→id R | Degree0 Witt classes unchanged; contractible complex has homology0 and derived image0 despite ranks(1,1) versus(0,0). | Comparison uses localization, not chain isomorphism. |
| 4.9 bounded agreement | r=2,a=n,b=n+1; n=0,1,2 | Bounds a≤n+0 and b≤n+1 are equalities: (0,1),(1,2),(2,3); form fibre top≤n−2. | Boundary arithmetic agrees. |
| 4.10 even comparison | F₂ line and H | Wu1 for line blocks lift; Wu0 for H permits it; both even Witt groups in degree0 equal0. | The lift condition is substantive. |
| 4.11 short = genuine | ℤ,n=0,1; 𝔽₂,n=−2 | Both sides over ℤ give ℤ,ℤ/2; negative F₂ short/genuine both0 while homotopy-symmetric givesℤ/2. | Negative extension distinct from connective π₋₂=0 by definition. |
| 4.12 quadratic ≠ genuine quadratic | ℤ,n=2 | Ranicki/Wall Lq₂=ℤ/2; Lgq₂=Lgs₋₂=0. | Wrong identification excluded. |
| 5.1 ring-spectrum structures | Hℤ, sphere/2, zero | Λq=0; Λt(Hℤ) has π₀=ℤ, Frobenius maps1→1 mod2; sphere/2 has π₀=ℤ/2, not projective overℤ. | Compact/projective distinction retained. |
| 5.2 projective recognition | Hℤ/2, Hℤ, suspensions | Hℤ/2 has dual in degree−1, so is two-term but not projective; Hℤ and dual both degree0, rank1. Shift k moves bounds to k,−k. | Both recognition directions agree. |
| 5.3 spectral surgery | A=Hℤ,m=0,n=0,a=0,b=1 | Thresholds0,1 and connectivity0,−1 equal the discrete case. Zero object has all groups0. | Discrete reduction and parity agree. |
| 5.4 lift projectives | Sphere→Hℤ, ranks1,2 | π₀ map ℤ→ℤ identity, homotopy classes matrices overℤ; π₁Map(unit,unit)=ℤ/2 on sphere versus0 on Hℤ. | Homotopy-category equivalence, not ∞-equivalence. |
| 5.5 connective comparison | m=0,p=−1,0,1; identity | Iso/surj bounds (−3,−2),(−1,0),(0,1); identity has fibre0 and map identity in every degree. | min formulas agree with fibre convention. |
| 5.6 spectrum quadratic comparison | m=0,1,2; sphere u and conditional s | p=m−1 gives iso/surj (−3,−2),(−1,0),(1,2). Λu(sphere)=sphere, πᵢ=0 for i<0. | General range agrees; Segal–Lin ownership R01. |
| 5.7 π₀ comparison/optimality | Hℤ; trivial sphere action; ko example | Discrete comparison=id. Trivial action gives (−1,0); general gives(−3,−2). Under stated ko calculation, π₀Σ²ko^t=0 versusℤ/2 target. | Conditional calculation correct; input ownership R01. |
| 5.8 sphere/integers | m=0,p=1 and p=0 | Tate iso≤0/surj1; genuine iso≤−1/surj0. At n=−3 both groups0; at n=−4 both quadratic groupsℤ. | Range and shift agree. |
| 6.0 enhanced truncation | ℤ/2[0], ℤ[1] | τ≥1(ℤ/2[0])=0, τ≤0 same object; τ≥1(ℤ[1])=ℤ[1], τ≤0=0. Cochain degree−1 corresponds to homological1. | Adjunction directions and fibre triangle agree. |
| 6.1 coherent/global dimension | Field; ℤ; k[ε]/ε²; ℤ[√−3] | Dimensions0,1; dual-number Torᵢ(k,k)=k for every i≥0; local order has Krull dim1 but cotangent dim2 at(2,X−1). | Coherence does not imply finite global dimension. |
| 6.2 perfect t-structure | ℤ/n for n=0,1,2; noncoherent ring from Check | Duals ℤ[0],0,(ℤ/2)[−1]. In noncoherent example Ann(x₁)=(x₁,x₂,…) with infinitely many independent linear classes. | n=0/1 junk values correctly excluded from sharpness; truncation obstruction real. |
| 6.3 general t-structured bounds | Perf(𝔽₂), D=dual[2], n=a=b=d=0 | X=𝔽₂[1] has DX=𝔽₂[1], is0-connective, but support{1} is not[0,0]. D(C≤0)⊆C≥0 still holds. | README correctly withholds general interval assertion. |
| 6.4 symmetric surgery | d=1,r=2,n=0,a=0,b=1; integer sweep | k=−1 gives n+2k+d=−1 and k+d−r=−2. All1289 valid swept instances have both expressions<0. | Obstruction estimates agree. |
| 6.5 coherent surgery | d=1,r=2,n=−3,−2,0 | Threshold−3; (a,b)=(1,1),(0,1),(0,1); n+a even in all three. | Parity supplies the one-unit stronger odd case. |
| 6.6 low-dimensional groups | F₂ ge,k=0; ℝ symmetric,k=1; ℤ,k=0 | Even Witt F₂=0; antisymmetric Witt ℝ=0; symmetric Witt ℤ=ℤ. Odd semisimple groups0. | Shifted form types and degree restrictions agree. |
| 7.1 r-symmetric comparison | (d,r)=(0,2),(1,2),(1,0) | Injective/bijective thresholds (−2,−1),(−1,0),(3,4). F₂ boundary 0→ℤ/2 at−2 is injective, not onto. | Correct one-degree separation. |
| 7.2 genuine comparisons | d=0,1,2 | gs bijective from−1,0,1; gq from3,4,5. Over ℤ at n=0 both symmetric groupsℤ. | No field/dimension-zero exclusion. |
| 7.3 sharpness | F₂ and conditional Laurent step | d=0,n=−2 map0→ℤ/2 not onto; d=1,n=−1 retains the same suspended summand. ℤ/4 has nilpotent2≠0 and is not regular. | Sharpness arithmetic agrees; splitting/results need owners R01. |
| 7.4 right modules | ℤ^op=ℤ; M₂(ℚ)^op via transpose | ℤ bounds−1/0 at d=1; semisimple matrix ring d=0 gives−2/−1. | Opposite transport preserves tested bounds. |
| 7.5 Dedekind | ℤ and F₂ (field convention) | With d=1 gs thresholds−1/0, gq3/4; ℤ positive residues ℤ,ℤ/2,0,0. F₂ also admits tighter d=0 bounds. | Fields are allowed; no sharpness overclaim. |
| 7.6 torsion-free improvement | ℤ, d=1; F₂ negative control | Improved thresholds1/2 instead of3/4; GWq₁ has4 elements and GWs₁ has8. F₂ has R[2]=R≠0, so improvement hypothesis fails. | Injection not mistaken for degree-one isomorphism. |
| 7.7 form parameters | Burnside overℤ; zero τ,ρ | At r=s=1 and(a,b)=(1,1), cross-effect=(2,0)=τ(rsρ(a,b)); ρτ(1)=2. Zero τ,ρ would give0≠2. | Parameter law works; extension input unowned R01. |
| 7.8 Burnside theory | q(1)=(1,1),(1,3); n=1,2 | Same diagonalρ=1, different second coordinates; ker(ℤ→Qλ)=0; Lb₁=0 and Lb₂=0 versus Lq₂=ℤ/2. | Parameter is not silently identified with quadratic endpoint. |
| 7.9 Arf definition, including junk | Zero,H,A; singular q(x)=x onF₂ | (#zero,#one,Arf)=(1,0,0),(3,1,0),(1,3,1); singular line=(1,1,0), polar radical dimension1. | Definition total; nonsingular statements exclude line. R02–R03. |
| 7.9 basis formula (Lean line51) | All nonsingular quadratic polynomials in dimensions0–4 | d0:1 form,(1,0),sum0; d2:3 forms(3,1),sum0 and1 form(1,3),sum1; d4:280 forms(10,6),sum0 and168 forms(6,10),sum1. | 453 forms; 322585 basis/form evaluations agree; no changes to theorem. |
| 7.9 completeness (Lean line66) | (0,0),(H,0),(A,0),(H,H),(H,A),(A,A) | Arf-equality/Lagrangian-existence: T/T,T/T,F/F,T/T,F/F,T/T; product counts(1,0),(3,1),(1,3),(10,6),(6,10),(10,6). | Both iff directions tested; zero-dimensional product included. |
| 7.9 field groups | F₂; ℝ; sign−1 overℝ | F₂ Ls-even=Lq-even=ℤ/2, odd=0, Lgs₋₂=0; ℝ Ls₀=ℤ,Ls₂=0; sign−1 exchanges residues. | Distinct F₂ invariants and periodicities agree. |
| 7.10 multiplicative refinement | F₂[u,u⁻¹], degree(u)=2; F₂×F₂; zero | Graded unital map has1↦1,u↦u; e₁e₂=0 and e₁+e₂=1 preserved. Additive(a,b)↦(a,a+b) sends(1,1)↦(1,0), not unit. Zero square all0. | Checks discriminate multiplicativity; general source not verifiable. |
| 7.11 module/base change | F₂→F₄; ℤ→F₂; R→0 | Symmetric unit1↦1; −1↦1; sign coefficient becomes trivial. Along R→0 every target and scalar-extension source0. | Semilinearity tests agree; general source not verifiable. |
| 8.1 classical symmetric fibre | ℤ, degree0; zero ring | ℤ→ℤ² sends1↦(1,1); signature(a,b)=a−b; kernel diagonal and cokernelℤ. Zero gives0→0→0. | Exact π₀ values agree. |
| 8.2 quadratic fibre | ℤ, degree0 | GWq₀ basis(H,E₈), hyperbolic image(1,0), quotientℤ generatedE₈; Lgs₋₄=ℤ via signature/8. | Four-shift and quotient agree. |
| 8.3 two-inverted split | ℝ and F₂, degree0 | Overℝ (a,b)↦((a+b)/2,a−b); inverse(r,s)=(r+s/2,r−s/2). OverF₂ Witt summand killed by1/2, rank summandℤ[1/2]. | Splitting normalization tested; all 2-primary terms disappear. |
| 8.4 classical comparison | ℤ,d=1; generic d=0,2 | General injection/iso thresholds3/4; improved1/2. Other d give2/3 and4/5. Overℤ at n1:4-element source→8-element target can be injective, not iso. | Source bounds retained; arbitrary-parameter input R01. |

The finite computations enumerated nonsingular quadratic forms in dimensions 0,1,2,3,4 (none in odd dimensions), every symplectic basis for each, and half-dimensional zero subspaces for the zero-Arf criterion. The two integer sweeps tested the strict obstruction inequalities used by the surgery proofs. They do not assert bounded experimental verification as a proof of an unbounded theorem. The noncommutative coefficient matrix test also checks bar²(x)=εxε⁻¹ and bar(ε)=ε⁻¹, so it is a valid instance of the stated convention.

### Pinned APIs and duplication by object

Pins inspected: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. These are the manifest pins, not newer library copies.

| Pinned file and line | Declaration/content opened | Consequence for this review |
|---|---|---|
| `Mathlib/LinearAlgebra/QuadraticForm/Basic.lean:96,146,311` | `QuadraticMap.polar`, `QuadraticMap`, `polar_self` | Quadratic scaling and a bilinear companion do not assert nonsingularity. The theorem hypotheses supply it; polar self-pairing vanishes in characteristic2. |
| `Mathlib/LinearAlgebra/QuadraticForm/Prod.lean:55` | `QuadraticMap.prod` | Orthogonal sum evaluates as q(x)+q′(y), as used by the completeness statement. |
| `TauCeti/LinearAlgebra/BilinearForm/SymplecticBasis.lean:301,309` | `LinearMap.BilinForm.IsAlt.exists_basis_toMatrix_eq_J`, `even_finrank` | Existing symplectic basis/even-dimension machinery must be reused; it does not supply the Arf classification. |
| `TauCeti/LinearAlgebra/FiniteBilinearModule/GaussSum.lean:255,274,447` | `gaussSum_eq_natCard_of_isLagrangian`, `gaussSum_eq_sqrt_natCard_of_isMetabolic`, `gaussSign` | Existing finite quadratic-module Gauss sums use ℚ/ℤ and a ℤ/8 invariant. They are related infrastructure, not the two native F₂ signatures verbatim. |
| `TauCeti/LinearAlgebra/QuadraticForm/Witt/Ring.lean:218` | `TauCeti.WittRing` | Requires a field and invertible2. It cannot be instantiated at F₂. |
| `TauCeti/RepresentationTheory/Homological/TateCohomology/Periodic.lean:167,200` | `Rep.FiniteCyclicGroup.tateCohomologyIsoEven`, `tateCohomologyIsoOdd` | Chosen cyclic generator/parity hypotheses retained; these are algebraic norm-minus-generator formulas, not spectrum or Tate-diagonal constructions. |
| `Mathlib/CategoryTheory/Preadditive/Projective/Resolution.lean:41` | `CategoryTheory.ProjectiveResolution` | Projective chain complex plus augmented quasi-isomorphism, not a stable enhancement. |
| `Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:53,157` | `HasProjectiveDimensionLE`, `projective_iff_hasProjectiveDimensionLE_zero` | Ext-vanishing dimension bound and degree-zero bridge already provided. |
| `Mathlib/RingTheory/PicardGroup.lean:77` | `Module.Invertible` | Bijective dual contraction; it does not include an involution or the two actions needed by a Poincaré coefficient. |
| `Mathlib/Algebra/Module/FinitePresentation.lean:118` | `Module.finitePresentation_of_finite` | Noetherian finite modules are finitely presented; do not rebuild this implication. |
| `Mathlib/RingTheory/SimpleModule/InjectiveProjective.lean:28` | `Module.projective_of_isSemisimpleRing` | Existing semisimple projectivity, used in the dimension-zero bridge. |
| `Mathlib/RingTheory/DedekindDomain/Basic.lean:149` | `IsDedekindDomain` | Includes fields; there is no dimension-exactly-one requirement. |
| `Mathlib/Algebra/Homology/DerivedCategory/TStructure.lean:33` | `DerivedCategory.TStructure.t` | Ordinary cochain t-structure with the stated degree reversal. |
| `Mathlib/CategoryTheory/Triangulated/TStructure/Basic.lean:54` and `Heart.lean:44` | `CategoryTheory.Triangulated.TStructure`, `heart` | The heart predicate is the intersection of the degree-zero halves, not a coherent ∞-categorical truncation functor. |

Object searches covered quadratic/polar/Arf/Gauss-sum objects, finite-global-dimension and projective-dimension predicates, Witt quotients, spectra, Poincaré structures, metabolic surgery, and Tate comparison. They used the required roadmap grep/show tools, supplied main/open checkouts, and package README/plan searches. Ordinary quadratic and homological APIs were not mistaken for the missing spectral carriers. The overlapping open Arf plan is R02; no evidence was found that this entire Hermitian surgery roadmap re-plans an existing roadmap.

### Supplier resolution and direction

Main-branch shape and ownership context included StablePeriodicCurved, EnhancedDerivedSheaves, QuadraticFormInvariants and GeneralizedCohomology. The named new supplier roadmaps were also opened through `roadmaps show`. Every Needs line was read, including the deliberately nonnumerical internal order §7.9 before §7.3; the README states that order explicitly. No external upward edge or internal cycle was found. The unowned inputs do not become resolved merely because they are absent from the graph.

| Citation resolved | File/section evidence | Boundary checked |
|---|---|---|
| GeometryOfNumbersAndQuadraticArithmetic §§6.1a,6.1b,6.1.6 | `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md`, named sections | Stable spectra/C₂ norm-Tate, connective K and group completion are supplier constructions. |
| Same, §6.8a | Same README around lines2945–3060: `DerivedCoefficientLine`, `PoincareInfinityCategory`, genuine structures, `stableGrothendieckWittSpectrum`, bordification, surgery, linear part and heart comparison | Shared carriers, shift equivalence and weight-heart comparison exist; a weight heart is not the Postnikov heart. |
| Same, §§6.2.8,6.4,6.9 | Same README, exact diagonal/Witt and Dedekind sections | Exact Lagrangian, `ExactW0` and Dedekind localization are reused. This roadmap's relative stable surgery is a distinct extension. |
| Same, §§6.10a–6.11 and §6.10b target6.10.6 | Same README around lines3174–3230 and named finite-even-field target | Integral calculations and two-inverted comparison exist. Perfect-module tensor/module structures do not themselves prove the general §7.10–§7.11 refinement. |
| StablePeriodicCurved Layer4 | `TauCetiRoadmap/StablePeriodicCurved/README.md:327–365`; `Suggested.lean:1182` | `HasFiniteGlobalDimension` quantifies over right modules; applying it to R^op is the required left-module convention. No new predicate is needed. |
| EnhancedDerivedSheaves §0.1 and E0/E5 | `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:431` and named E0/E5 subsections | `ClassicalDerived.enhancedCategory`, algebra/module objects and spectra contracts exist. The commutative HR comparison is not silently used for noncommutative R. |
| AdicSpacesPartIII R2.10, coherent-modules | `TauCetiRoadmap/AdicSpacesPartIII/README.md:8737–8770` | Coherent-module/ring predicates and Noetherian bridge exist in the commutative setting. The left-associative extension is explicitly local. |
| GeneralizedCohomology §G5.4 | `TauCetiRoadmap/GeneralizedCohomology/README.md:1559,1652–1660` | Commutative ko and its connective-cover identification exist; the ko Tate calculation is not in that contract. |
| QuadraticFormInvariants Layer4 | `TauCetiRoadmap/QuadraticFormInvariants/README.md`, Layer4 | Characteristic-not-two Witt ring/fundamental ideal remain there; this is not an F₂ supplier. |
| GeneralAlgebraicKTheory §10.12a | `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md`, §10.12a (roadmaps-show extraction lines2319–2334) | Laurent K₀ and polynomial/localization dimension facts are present. The absent identifier `regularRing_K0_laurent` is included in R04; the mathematical dependency is present. |
| GeometricTopology §4.3.1, supplied open head | `TauCetiRoadmap/GeometricTopology/README.md:3247–3290` | Direct generic-Arf overlap; this open revision is not treated as a lawful supplier. See R02. |

The source attributions are mathematical evidence, not instructions or supplier contracts. No algorithms, copied source passages, good-prime restrictions, unapproved outside-folder changes or suspicious embedded instructions were found in the reviewed roadmap.

## Not verifiable

- **Paper IV, full multiplicative and module refinement (§§7.10–7.11).** The sources service was queried by title; I checked Paper III's attribution and bibliography and searched the exact title. No readable legal text of Paper IV was found. Paper III Remark 3.1.5, paper-iii lines2374–2377, explicitly supports the E∞ L-to-Tate map for a commutative ring. It does not by itself verify the full general-small-Poincaré-category refinement, the E∞ cartesian square, all coherent module structures and scalar-extension compatibility asserted here. Paper I supplies the monoidal/module category constructions and Paper II the additive square. The additional coherent assertions remain uncertified; no unseen theorem of Paper IV is being credited to them.

All other seeded sample texts were obtained legally and read. The formerly missing Schlichting form-category reference was resolved through its author-hosted Warwick PDF; it is not an outstanding missing-text request. No source manifest or PR file was changed.

## Source issues

- **Misprint** in paper-iii at Example R.2(ii), printed p.7: the source says the coefficient involution is ε times the anti-involution; it should be ε⁻¹ times the anti-involution under its stated square convention; affects a stated result.
- **Error** in paper-iii at Remark R.7, printed p.9: the source says the diagonal obstruction lies in Hom_R(P,R[2]) without a twisted action; it should be Hom_R(P,φ_*R[2]), with r acting as r²; affects a stated result.
- **Misprint** in paper-iii at Proposition 1.3.1(i)–(ii), printed p.27: the source says the objects belong to Pn(Dp(R),Q[−n]) despite the general category C in the hypotheses; it should be Pn(C,Q[−n]); affects nothing.
- **Error** in paper-iii at Remark 1.3.2, printed p.27: the source says the general-category surgery representatives satisfy both interval endpoints under its single duality bound; it should restrict that interval assertion to the discrete projective-duality setting or add sufficient duality bounds; affects a stated result.
- **Misprint** in paper-iii at Remark 3.1.5, printed p.51: the source says every ring endomorphism of F₂[x,x⁻¹] is an isomorphism; it should say every degree-preserving unital endomorphism with degree(x)=2; affects the proof.
- **Misprint** in pyronneau at proof of Lemma 2.12, printed p.5: the source says Arf(q₁+(m−1)q₀) without completing its asserted value; it should give the value 1; affects nothing.
- **Error** in pyronneau at proof of Lemma 2.13, printed p.5: the source says the new fibre counts use q₀(v) as their extra term; it should give p(φ⊕q₀)=3p(φ)+n(φ) and n(φ⊕q₀)=3n(φ)+p(φ); affects the proof.

For the source errors, the explicit witnesses are respectively the coefficient matrix in the table; b(t,t)=t² over F₂[t]; X=𝔽₂[1] with D=dual[2]; the nongraded map x↦x²; and the count transition (n,p)=(3,1)→(10,6). The README already avoids the first five source slips. The two Pyronneau slips concern the additional locator proposed in R03, not copied roadmap claims.
