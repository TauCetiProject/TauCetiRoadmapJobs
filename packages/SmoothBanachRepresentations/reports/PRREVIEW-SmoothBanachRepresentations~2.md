# Review of SmoothBanachRepresentations (pull request #1145 at 9d2bdf0)
Folder: `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/`

**Verdict:** needs changes

:robot: Independent AI review. There are 12 findings, including 5 blocking findings. No pull-request file was changed. The mathematical extensions can be retained after resolving ownership and repairing the acceptance test; rejection of the entire subject is not warranted.

## R01 (P1) — The real tensor supplier contract is not on main

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:39,154`. Claim: “N1.Tensor” supplies completed locally convex tensors over both scalar fields and their realification/complexification comparisons.

**Witness:** `TauCetiRoadmap/NoncommutativeGeometry/README.md:84–100` on main has N1's projective tensor construction, but no N1.Tensor subsection or scalar-comparison maps. Its conventions at line 12 are complex. These additions occur in its open revision, not main.

**Repair:** Cite N1 on main for what it actually supplies. Give the missing real-field and scalar-comparison extensions an eligible earlier owner, with a precise declared gap if needed. Do not consume the revision of an existing roadmap. Test the completed tensor of two real lines: it is a real line, and its complexification must map to a complex line with `1⊗1 ↦ 1⊗1`; the currently cited main contract does not specify that map. This is supplier drift, not an objection to the mathematics of real tensors.

## R02 (P1) — Resolve the compact-finite supplier instead of assuming a missing section

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:42,99`. Claim: AutomorphicFormsOnReductiveGroups §2.1 owns the topology-free predicate and complex Banach density, supplied through CompactGroups Layer5.1.

**Witness:** CompactGroups on main goes from Layer 5 at line 318 to Layer 6 at line 369; there is no Layer5.1. AutomorphicFormsOnReductiveGroups §2.1 instead consumes CompactGroups' `gap:banach-gfinite-density` and owns its locally convex extension.

**Repair:** Cite the actual §2.1 contract and its named CompactGroups gap, or declare the precise missing supplier contract through the supported gap mechanism. Correct the ownership sentence and remove the nonexistent main-section citation. Do not treat CompactGroups' open revision as an available dependency. Test with the regular representation on `C(∏ C₂,ℂ)`: finite-coordinate functions have finite orbit span and are dense, although this compact group is not Lie. The supplied generic result must retain that generality; SB4's extra smooth-topology comparison is specifically for compact Lie groups.

## R03 (P2) — Import the earlier smooth-vector theory rather than planning it twice

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:42,54,66–99`. Claim: this roadmap owns the generic complex smooth carrier, word topology, differentiated action and density.

**Witness:** `TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md:469` (§2.7 at its open head) already specifies the complex Banach carrier, word-domain criterion, complete derivative topology, Lie/enveloping action, smoothing and density. §0.1a supplies archimedean tests.

**Repair:** Import §2.7 by section, retaining genuinely additional targets such as real coefficients, broader test-group scope, support-controlled factorization, exactness and algebra applications. State each retained extension's difference. §0.1a is restricted to archimedean groups with finitely many components, so its test theory does need an explicitly described generalization, not wholesale deletion. Translate its `L_X f(g)=d f(exp(tX)g)/dt` to this roadmap's `R_X`. For the affine group this is a real distinction: with coordinates `(a,b)`, the dilation fields are `a∂a+b∂b` and `a∂a`, respectively. The extension is repairable, but a second independent ownership claim is not.

## R04 (P2) — State the real and missing headline results

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/Suggested.lean:14–20,133–142`; README lines 7, 153, 163. Claim: a “representative” complex prototype suffices for the real/complex programme, exactness and spectral invariance.

**Witness:** Scratch elaboration succeeded for the real version of all seven existing theorem signatures, a smooth-lifting theorem for a surjective `ContIntertwiningMap`, and inverse closure expressed on native units of a Banach algebra.

**Repair:** State the real and complex headlines, using a shared scalar parameter or both specializations. Add smooth lifting/exactness and smooth inverse closure on the actual carriers; enumerate the remaining headline results and explicitly name any missing carriers in the module docstring. Merely promising the real case in prose is insufficient. Checks: `π(t)x=e^t x` on the real line has derivative `x`; projection `ℝ²→ℝ` with trivial actions lifts `1` to `(1,0)`; inversion sends the smooth unit `2` to `1/2`. All are admitted by the repaired native signatures. The probe establishes statability, not proofs.

## R05 (P2) — Remove admissions from the semigroup definition

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/Suggested.lean:98–115`. Claim: `oneParameterSemigroup` is usable defined data, while its zero, addition and continuity fields contain `sorry`; `mem_generator_domain_iff` mentions it.

**Witness:** Three admissions occur at lines 103, 105 and 107 inside the `def` body. The worker reports `sorry-data=1`; elaboration warns on the definition itself at line 98.

**Repair:** If this adapter is needed by a retained headline, prove all three fields from the native continuous one-parameter homomorphism, the representation laws, restriction of scalars and `hπ`. Otherwise remove the adapter and dependent API signature from the acceptance test and keep the construction in the README. On `π(t)=e^t`, the required laws give `S(0)=1`, `S(s+t)=e^s e^t`, and `S(t)x→x`; on `X=0`, they give the identity semigroup. A displayed `toFun` with admitted laws still violates the no-sorry-data rule. This is not a claim that its intended laws are false.

## R06 (P3) — Delete the one-tactic integrability padding

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/Suggested.lean:82–86`.

**Claim:** `integrable_compact_smul_orbit` is an acceptance-test theorem.

**Witness:** Replacing its `sorry` with the single tactic below elaborated successfully:

```lean
exact (hf.smul (hπ v)).integrable_of_hasCompactSupport hfc.smul_right
```

The library theorem is `Continuous.integrable_of_hasCompactSupport`, `Mathlib/MeasureTheory/Function/LocallyIntegrable.lean:622`.

**Repair:** Delete it from `Suggested.lean`; retain the mathematical application in the README and cite the library theorem. A compactly supported bump times `e^t v` remains integrable even though the representation is globally unbounded. The one-line proof handles that case and all the signature's instances without Lie-group or completeness assumptions. Do not replace the admission with this proof in the deliverable.

## R07 (P3) — Use the required Mathlib import

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/Suggested.lean:1–8`.

**Claim:** eight `Mathlib.<submodule>` imports form the header.

**Witness:** The gate reports `imports=1`, `mathlib-subimports=8`, and `no-import-mathlib=1`. No `import Mathlib` line occurs.

**Repair:** Replace the eight submodule imports by the single `import Mathlib`; retain only individually used Tau Ceti modules. The original three Tau Ceti modules exist and build at the pin. Re-elaborate after the replacement. These three gate counters describe one repair, not ten independent findings.

## R08 (P3) — Replace the commit-pinned roadmap citation

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:42`.

**Claim:** the supplier link points to a historical commit's §2.1.

**Witness:** Its URL contains `blob/04038f3cfbc018183bfe4190d837ce8e778f67aa`; the gate reports `blob=1`. The current supplier has the different ownership recorded in R02–R03.

**Repair:** Use a repository-relative roadmap link and the current section name, resolving the contract as in R02. This also prevents a stale historical ownership claim from overriding the present supplier.

## R09 (P3) — Remove pull-request identifiers from the roadmap

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:44`.

**Claim:** three numbered Mathlib pull-request references describe API direction.

**Witness:** The gate reports `prnum=3` for this line.

**Repair:** State the distinction between open-stabilizer smoothness and differentiable-orbit smoothness in timeless mathematical language, and name native carriers/designs without pull-request numbers. Preserve the instruction to build required adapters in Tau Ceti and adopt Mathlib's vocabulary.

## R10 (P3) — Supply discriminating Checks and the requested layer structure

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:1–171`, especially definitions at lines 17, 49–50, 54, 66–76 and 155.

**Claim:** dense prose and a few embedded examples provide a complete roadmap specification.

**Witness:** There are zero `**Checks.**` blocks, zero `*Needs:*` lines, and no layer-ending Examples or Dependencies subsections. Neither D(G), mixed word domains nor the smooth topology receives three discriminating Checks.

**Repair:** Retain the mathematical detail but arrange it under the specified Summary, Scope, Conventions, Exact supplier contracts, How to read, Layer, Examples, Dependencies, Consumers and References headings. Give each definition a prose API list and at least three computed Checks; give individual targets their actual dependency lists. Use the table below as test material. In particular, the affine-group bracket/modular examples, the `L²` step-function non-example and the `e^{inx}/n` topology example distinguish plausible wrong definitions. The two existing numeric examples (`e^t`, and `Q₀=1` versus `P₀=2`) should remain.

## R11 (P3) — Attach locators to individual claims and record the sources

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:48–165,171`.

**Claim:** one final reference paragraph supports the entire programme.

**Witness:** It gives only Dixmier–Malliavin Lemma 2.5/Theorems 3.1 and 3.3 and Casselman §§5–6. SB0–SB4 and SB7–SB8 lack claim-level source/page locators; the folder has no `sources.toml`.

**Repair:** Add legal references with exact locators at each theorem and register each work once in `sources.toml`. Distinguish a source theorem from an extension proved here, with its proof inputs. For SB5, Casselman Lemmas 4.1/4.2 and 5.1 are on printed pages 9–12, not all in §§5–6. Keep the primary Dixmier–Malliavin locators uncertified until the text is read; do not infer its numbering from Casselman. The sign and coefficient checks below identify source slips that must not be ported.

## R12 (P3) — Make the Lean module and README agree on their declarations

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/Suggested.lean:14–27,39–142`.

**Claim:** the namespace and “representative target signatures” docstring satisfy the acceptance-test form.

**Witness:** The namespace is `SmoothBanachRepresentations`, not `TauCetiRoadmap.SmoothBanachRepresentations`. All 13 declared names are absent as exact names from the README. There are no layer section comments or named unstatable headlines.

**Repair:** Use the required namespace and target-signatures docstring, align retained declarations to README layer comments, mention each retained Lean name in the corresponding README target, and enumerate omitted headlines with their actual missing carriers. Delete rather than catalogue API padding. Recheck all elaborated signatures after this and R04–R06; do not create empty predicates to fill omissions.

## Verified sound

This section records finite adversarial tests and source/library inspections, not proofs of the entire programme. No false target formula was found in the tested mathematical instances. The blocking findings concern supplier contracts, duplicated ownership and acceptance-test coverage/data.

### Gate, build, scope and elaborated binders

The checkout head was exactly `9d2bdf007be58b645bf100969e1c474f8ce56fe2`. The outside-folder diff specified in the brief was empty, and the worktree was clean before review. Only the named report files and scratch artifacts were written. The family index's edit is permitted by the brief.

The supplied worker gate says:

```text
gate SmoothBanachRepresentations: set_option=0 blob=1 latex=0 tex=0 prnum=3 sorry-data=1 sorry-examples=0 residue=0 private-paths=0 imports=1 mathlib-subimports=8 no-import-mathlib=1 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 FAIL
```

All nonzero failure categories are covered by R05 and R07–R09. No stray files, computational algorithms, route-specific restrictions, `set_option`, copied-source blocks or admitted examples were found. The explicit numerical examples are mathematical checks, not computational algorithms.

I ran the required movable dependency check with the supplied candidate order and main content. Its complete output was:

```text
depcheck: 204 roadmaps, 1481 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. This syntactic pass does not certify nonexistent supplier sections: R01–R02 remain. Main-roadmap suppliers do not need an entry in this pending merge order.

I built `TauCeti.Geometry.Lie.Exponential.Basic`, then `TauCeti.Analysis.Semigroups.Generator.SmoothVectors` and `TauCeti.Analysis.Semigroups.Generator.Closed`; all succeeded. I then ran `lake env lean` on the original `Suggested.lean`: exit 0, eight `sorry` warnings (seven theorems and the admitted definition), no other warnings. The earlier missing-object-file condition was environmental and is resolved, not a build finding.

A scratch copy appended `#check @name` for every one of the 13 declarations and elaborated successfully. All seven theorem signatures retain finite dimensionality, the Lie/manifold and boundaryless hypotheses, Hausdorffness, Banach completeness and Borel compatibility through `include`; the three final theorems retain local compactness. `oneParameterSemigroup` retains the finite-dimensional/boundaryless inputs its one-parameter subgroup needs, but no completeness binder; that is harmless for constructing a strongly continuous semigroup. The generator theorem separately retains completeness. The ordinary definitions have broader natural domains: `smear` is a total Bochner expression without integrability, and `LieTestFunction` needs neither a group nor Haar measure. Their theorems supply the missing assumptions. No silently lost hypothesis causing falsity was found. No reviewed file was changed.

For each of the seven sorried theorems I attempted the `simp`/`rfl`/`infer_instance` probe on a scratch copy; six did not close. The seventh closed with the one-library-lemma `exact` in R06, subsequently confirmed in a separately elaborated copy. No other padding is claimed merely because a proof ought to be short. Separate copies successfully elaborated the real signatures and the two missing headlines in R04.

### Headline inventory

| README headline | Acceptance-test coverage |
|---|---|
| SB0 closed-generator/two-sided-domain comparison | Domain comparison stated; adapter has admitted fields (R05). Native closedness is supplied, not new work. |
| SB2 finite/mixed-word characterization and complete Fréchet topology | Absent. Module docstring must name these and explain missing mixed-word/smooth-topology carriers; do not substitute the ambient norm topology. |
| SB3 differentiated Lie/enveloping action and smoothing | Only smoothing is stated, for complex coefficients. Derived-action/topology results need an explicit statability inventory. |
| SB4 norm density and stronger smooth-topology approximation, including compact-finite density | Complex norm density stated; real version statable and absent. Stronger topology comparison absent and not named as unstatable. Ownership also needs R02–R03. |
| SB5 scalar compact-support parametrix and vector passage | Absent. Native tests, distributions and seminorms exist; describe precisely any construction preventing a short signature rather than replacing it by scalar algebra. |
| SB6 support-controlled vector factorization and function factorization | Complex vector theorem stated with actual kernels, Haar integration and smooth inner vectors. Real theorem is statable and absent. Function factorization absent; identify its test-convolution carrier in the docstring if omitted. |
| SB7 exactness, smooth quotient lifting and dense smooth tensor comparison | All absent. Smooth lifting is statable with native `ContIntertwiningMap`; tensor comparison additionally needs the corrected completed-tensor contract. |
| SB8 inverse closure at all matrix levels and holomorphic closure | All absent. Inverse closure is statable on native Banach algebra units; matrix algebras provide the matrix specialization. Holomorphic closure needs an honest inventory of its functional-calculus interface. |

### Source sample and legal-text verification

The brief supplies no target identifiers for its seeded sample and explicitly says none were found by heading. I did not invent a worker sample. For a reproducible replacement, I numbered the 60 mathematical rows below and sampled 15 without replacement using Python's `random.Random(int('9d2bdf0',16))`: **1, 2, 3, 6, 8, 9, 18, 23, 41, 42, 48, 49, 51, 55, 56**. All are included in the adversarial pass. Most have no local source locator to verify; that is R11, not a claimed successful 15/15 source certification. No README locator is explicitly labelled unverified.

Both cited mathematical works were requested through the sources service. Casselman's author-hosted text was obtained legally; the primary Dixmier–Malliavin text was not. I read Casselman's introductory definitions and §§4–6 and checked the analytic proof portions used by SB5. The following are text-to-target resolutions:

| Target | Read locator | Result |
|---|---|---|
| Smooth-vector topology/density | casselman lines 11–45, printed p.1 | Supporting exposition; README still needs local locators and its own broader-group proof. |
| Entire-product construction | casselman lines 183–201, Proposition 1.3, p.4 | Positive separated parameters and summable reciprocal squares match the proposed geometric growth. |
| Scalar distribution parametrix | casselman lines 492–499, Lemma 4.1, pp.9–10 | Nonconstant coefficients are bounded; constant coefficient is fixed in this preliminary construction. |
| Uniform cutoff-tail estimates | casselman lines 503–526, Lemma 4.2, p.10 | The maximum occurs at `(n+1)/(2π)`; source derivative has a slip recorded below. |
| Small compact support | casselman lines 609–637, Lemma 5.1, p.12 | Supports can be reduced; coefficient-selection display needs correction. |
| Smooth inner vectors and finite sums | casselman lines 645–682, Proposition 6.1, p.13 | Corrected signs and coefficients give the factorization route. |
| Original Lemma 2.5 and Theorems 3.1/3.3 | dixmier-malliavin, requested locators | Not certified: no legal primary text obtained. |

The compact-support Banach-norm passage in SB5 is an additional argument, not a theorem proved by merely naming weak distributional convergence. Its explicit compact family of scalar tests and uniform finite-order bound address that issue. Source errors are recorded below; they do not refute the roadmap's corrected sign choices.

### Adversarial calculations

Notation for these rows: `χλ(t)=e^(λt)` is the one-dimensional representation of the additive real group; `Iλ(f)=∫f(t)e^(λt)dt`. The affine group has multiplication `(a,b)(a′,b′)=(aa′,b+ab′)`, `a>0`, Haar density `a⁻² da db`, dilation generator H and translation generator N, with `[H,N]=N`. A finite discrete group has counting Haar measure unless a mass is specified. Computations are mathematical witnesses, not Lean proofs. “Retain” means no change to the tested assertion, not complete verification of its proof.

| ID / statement | Instances tried | Values on the two sides / negative control | Result; change |
|---|---|---|---|
| 1. Native representation versus strong continuity; `HasContinuousOrbits` | χ₁; discontinuous additive map b and action e^b | χ₁(s+t)=χ₁(s)χ₁(t), and χ₁(t)→1. For discontinuous b, the algebraic law still holds but continuity fails. | Explicit orbit hypothesis necessary; retain. |
| 2. Smooth predicate and submodule | χ₁; translations of `1_[0,1]` in L² | χ₁ has all derivatives e^t. For 0<t<1 the step-vector difference norm squared is 2t, so quotient norm is √(2/t)→∞. | Smooth and nonsmooth cases separated; retain. |
| 3. D(G), `LieTestFunction` | Trivial group; ℝ bump; constant 1 on ℝ | D({e})=𝕜; bump has compact support; constant 1 has support ℝ, not compact. Zero has empty support. | Correct carrier; add three Checks (R10). |
| 4. `smear` and mass normalization | Trivial group with μ({e})=2 | π(f)v=2f(e)v. With f(e)=1/2 this is v; with f(e)=1 it is 2v. | No hidden probability normalization; retain. |
| 5. Empty support, zero space and total integral | f=0; E=0; nonintegrable f on ℝ | Valid cases give integral 0 and bound 0≤0. Total Bochner integral of nonintegrable f is 0, not an asserted analytic identity. | Integrability assumptions prevent junk-value misuse. |
| 6. SB0 compact bounds and joint continuity | χ₁ on K=[−1,1], and K=∅ | sup_K ‖π‖=e, while global sup is infinite. Empty K permits C=0. At (0,2), e^t v→2. | Local rather than global bound correct. |
| 7. Restrictions, products, conjugation, intertwiners, realification | diag(e^t,e^(2t)); T(x,y)=x; realification of e^(it) | Tπ(t)(x,y)=e^t x=ρ(t)T(x,y); conjugation by a swap exchanges eigenvalues; complex rotation has real matrix derivative [[0,−1],[1,0]]. | Actions preserved; retain. |
| 8. Semigroup adapter and generator iff | χ₁; X=0; L² step vector | S(s+t)=e^(s+t)=e^s e^t; generator is 1 on all scalars. X=0 gives generator 0. Step vector belongs to neither derivative domain. | Intended iff passes both controls; prove data fields (R05). |
| 9. Closedness, domain density and commutation | χ₁; translation generator on L² | For χ₁, graph={(v,v)}, closed and domain=E. For translation, Gaussian lies in every domain, step vector does not; derivative and translation both give f′(x+t). | Reuse native generator results. |
| 10. Mixed word domains and order | Affine standard representation; H=diag(1,0), N=E₁₂; v=e₂ | HNv=e₁; NHv=0; [H,N]v=e₁. Empty word gives e₂. For χ₁ repeated powers give v at every order. | Rightmost-first composition matters; add Check. |
| 11. Fixed-support test spaces and final topology | K={0} in ℝ; discrete K; translated nonzero bumps | D_{ {0} }(ℝ)=0; for finite discrete K dimension is card K. Bumps escaping to infinity have local derivatives eventually 0 but no common compact support. | Fixed-support and final topology distinguished. |
| 12. Chart transport, differentiation and cutoff extension | φ supported inside (−1,1); ψ(x)=x³ | Zero extension stays smooth with all derivatives 0 near chart boundary; ψ′=3x². Extension of a function nonzero at the boundary jumps. | Compact margin essential; retain. |
| 13. Smooth Haar density and non-countable components | Affine group; uncountable discrete group | Affine density is a⁻²>0. Discrete mass is m>0; H={e}; a compact set meets only finitely many singleton cosets. | Local σ-compact reduction covers stated scope. |
| 14. Compact-support integrability | χ₁ and f supported in [−1,1] | Integral of absolute value ≤e‖f‖₁‖v‖<∞. f=0 gives 0. | True; native one-tactic consequence (R06). |
| 15. Integrated operator estimate, linearity and naturality | Trivial action, f≥0 of mass 2, C=1, v=3; T=2 id | ‖π(f)v‖=6=C‖f‖₁‖v‖. Tπ(f)v=12=π(f)Tv. Replacing f by −f changes vector sign, not bound. | Retain. |
| 16. Convolution associativity, support and multiplication order | S₃; f=δ_(12), h=δ_(23) | f*h=δ_((12)(23)); π(f*h)=π(12)π(23). Reversing factors gives the inverse 3-cycle. Three deltas multiply associatively. | Nonabelian order checked. |
| 17. Left covariance, modular right translation and star | S₃ deltas; affine dilation (a,0) | π(g)π(δ_h)=π(gh); L_gδ_h=δ_gh. Affine ∫F(xg)=a∫F; f*(x)=c(x)conj(f(x⁻¹)). For discrete δ_g, star is δ_g⁻¹. | Conventions agree with A7. |
| 18. Smooth approximate identities and discrete unit | χ₁ with mass-one kernel in [−ε,ε]; discrete mass 2 | e^(−ε)≤I₁(u)≤e^ε→1; normalized δ_e/2 integrates to 1; unnormalized δ_e integrates to 2. | Correct normalization; retain. |
| 19. E^k and all-word criterion | Trivial group; χ₁; L² translations | k=0 gives all E; χ₁ gives E^k=E for k=0,1,2,∞; step vector is in E⁰ but not E¹. Zero module gives {0} throughout. | Both directions pass basic cases. |
| 20. Smooth-frame bridge | Frame 2∂x on ℝ, f=x² | Frame derivative=4x; multiplying by inverse frame coefficient 1/2 recovers 2x=f′. f=abs(x) fails existence at 0. | Invertible frame coefficients are substantive; retain. |
| 21. Word seminorm definition and basis independence | χ₁, v=2, one generator X versus 2X | p₀=2,p₁=4,p₂=6; rescaled basis gives 2,6,14. Bounds differ, topology does not. Dimension zero gives p_m=‖v‖. | Do not assert equality of individual seminorms. |
| 22. Smooth topology versus ambient norm | Circle translation and v_n=e^(inx)/n with normalized L² norm | ‖v_n‖=1/n→0, but ‖Dv_n‖=1. For a trivial action every positive word is 0 and p_m=‖v‖. | Stronger topology necessary; retain. |
| 23. Completeness/initial topology and coordinate calculus | Trivial action; χ₁ and curve v(s)=s² | Initial word topology is norm topology in these examples; all word coordinates of χ₁(v(s)) equal s², with derivatives 2s and 2. A Cauchy scalar limit has matching coordinates. | Model checks pass; general closure/frame proof still required. |
| 24. Lie homomorphism and complexification | Affine H,N; character e^(it) | [H,N]=N on both sides; real generator is i, complexified iX acts by i·i=−1. | No second real generator; retain. |
| 25. Enveloping order and derivative bounds | χ₁; affine H,N | Unit acts as 1; X² acts as 1 for χ₁. HN−NH=N, not 0. For χ₁, p_m(Av)=p_m(v)≤p_{m+1}(v). | Native enveloping extension appropriate. |
| 26. Ad covariance and disconnected groups | Affine diag(a,1); reflection in ℝ⋊{±1} | gNg⁻¹=aN=Ad(g)N. Reflection sends translation generator to −X, so conjugation changes its sign. | Disconnected covariance needed; retain. |
| 27. Open-subgroup equality versus arbitrary restriction | Discrete S₃; trivial subgroup of translation group | For discrete groups all vectors are smooth and topology is norm. Restriction of L² translations to {0} makes the step vector smooth, though it is not G-smooth. | Open equality and general inclusion are correctly distinct. |
| 28. Smoothing sign and first derivative | χ₁, smooth compact f | Aπ(f)v=I₁(f)v; integration by parts gives I₁(−f′)v=I₁(f)v. Wrong sign gives −I₁(f)v. | Minus sign verified. |
| 29. Mixed derivatives and anti-bracket | Affine fields, test b | R_H=a∂a+b∂b, R_N=∂b; [R_H,R_N]b=−1=−R_N b. Hence [−R_H,−R_N]b=−1=(−R_[H,N])b. | Right-to-left word order consistent. |
| 30. Fixed-support smoothing bound | Trivial action, mass-one f and v=1 | All positive vector derivatives vanish; p_m(π(f)1)=1. Right side includes ‖f‖₁=1 plus nonnegative derivative terms. | Bound includes empty word; retain. |
| 31. Modular integration by parts and trace | Affine group, H, scalar representation a^s | c(exp(tH))=e^t, q_H=1=tr(ad H). ∫L_H f·a^s dμ=(1−s)I_s(f), hence π(q_H f−L_H f)=sI_s(f)=π(f)A_H. For N, q_N=0. | Non-unimodular sign verified. |
| 32. Hilbert skew law versus algebra star law | e^(it) on ℂ; real derivative of star-preserving algebra action | Generator i has adjoint −i. In an algebra action δ(a*)=δ(a)*; at δa=iE₁₂ this equals −iE₂₁. | These are different valid laws. |
| 33. Norm/smooth-topology approximation and semigroup comparison | Circle mode e^(inx); G=ℝ | Kernel smoothing multiplies a fixed mode by its Fourier coefficient tending to 1; every derivative multiplies the error by (in)^r. Half-line χ₁ generator powers and full-orbit derivatives both equal v. | Approximation and comparison pass. |
| 34. G-finite density and real adapter | Circle rotations on ℝ²; Fourier modes in L²(S¹) | Orbit span of (1,0) has real dimension 2; after complexification projection recovers (1,0). Finite Fourier sums have finite span; a step function has infinite span. | Mathematical adapter sound; supplier drift R02. |
| 35. G-finite density in smooth topology | Smooth Fourier series with rapid coefficients a_n | Tail r-th derivative norm ≤Σ_{abs(n)>N} abs(n)^r abs(a_n)→0. Uniform function error alone lacks this factor. | Stronger approximation route required and stated. |
| 36. Entire product and reciprocal | λ_j=2^j, j≥1, at z=0 and real y=1 | Product P(0)=1, reciprocal=1; P(1)>1, reciprocal in (0,1); zeros are ±i2^j, off the real axis. First two factors give 1+(5/16)y²+(1/64)y⁴. | Correct analytic object; coefficients positive. |
| 37. Fourier parametrix sign/normalization | n=0,1,2, frequency y=1 | Fourier δ^(2n)=(2πi)^(2n): 1,−4π²,16π⁴. Multiplication by (−1)^nα_n gives α₀,4π²α₁,16π⁴α₂. | Positive multiplier requires the retained signs. |
| 38. Partial-multiplier bound | Positive product at y=0 and two-factor truncation at y=1 | At y=0 ratio=1; constant truncation gives 1/(1+5/16+1/64)=64/85. Full two-factor sum gives 1. | `≤1` includes equality; no strict inequality at zero. |
| 39. Coefficient/tail selection and maximum | F(λ)=λ^(r+1)e^(−2πλ), r=0 | F′=e^(−2πλ)(1−2πλ); maximum at 1/(2π), value 1/(2πe). At λ=1/(4π), derivative positive, excluding global decrease. | README's split correct. |
| 40. Compact-support parametrix scaling | Distribution identity tested on a cutoff equal to 1 near common support | Higher δ derivatives evaluate to 0; total mass gives α₀∫g=1+∫h. Scaling t=εs sends support [−1,1] to [−ε,ε] and r-th derivatives gain ε^(−r). | Constant coefficient must not be silently capped after rescaling. |
| 41. Distribution-to-vector passage | E=ℝ², orbit (cos t,sin t), dual unit ball | Scalar tests are a cos t+b sin t with a²+b²≤1; each derivative is bounded by 1 on compacts. Norm of vector error (x,y) is sup_{a²+b²≤1} abs(ax+by)=√(x²+y²). | Compact-family/Hahn–Banach route has the right norm. |
| 42. Vector series and rearrangement | χ₁ and χ_i | For χ₁, η=(Σ(−1)^nα_n)v; for χ_i, η=(Σα_n)v. Iλ(g)η=(1+Iλ(h))v, so subtracting Iλ(h)v gives v. Adding it gives (1+2Iλ(h))v. | README corrects the source signs. |
| 43. Simultaneous coefficient choice | Two vectors 1 and 2, χ₁ | All derivative norms are 1 and 2. Choosing α_n≤2^(−n) controls both sums by 2 and 4; finitely many vectors add constraints, not an obstruction. | Countable diagonal selection appropriate. |
| 44. Support-controlled vector DM | Discrete S₃, μ({e})=2, any U containing e; v=0 | n=1, f=δ_e/2, w=v gives π(f)w=v. For v=0, n=0 gives empty sum 0. Real χ₁ uses a positive bump with I₁(f)>0 and w=v/I₁(f). | Headline has genuine finite-sum witnesses; real case missing in Lean. |
| 45. Ordered-product chart and Haar Jacobian | Affine Φ(t,s)=exp(tH)exp(sN)=(e^t,e^t s) | Coordinate Jacobian=e^(2t), Haar density=e^(−2t), so J=1. Reversed order Φ(s,t)=(e^t,s) gives J=e^(−t). | Division by positive J and order are essential. |
| 46. General-component reduction and chart zero extension | Uncountable discrete group; compactly supported box kernels | d=0 gives unit δ_e/m. Every compact support meets finitely many open cosets. A kernel vanishing near the box boundary extends by zero with all boundary derivatives 0. | No hidden global second-countability restriction found. |
| 47. Exact span identities | Discrete S₃; trivial action of ℝ | Every v is one integrated image using a mass-one test, so both spans are E=E∞. Zero representation space gives both spans {0}. | Algebraic equalities, not merely closure, are correct. |
| 48. Function factorization and terminal support | Discrete δ_g; derivatives of a bump φ on ℝ | δ_e*δ_g=δ_g, first support {e}⊂U, second support {g}=supp φ in discrete case. Outside supp φ every derivative is 0, so a fixed-support derivative-series limit is 0 there. | Support-preserving route consistent; primary locator unverified. |
| 49. Intertwiner functor and closed-subspace equality | Trivial action on ℝ², M=ℝ×{0}, projection T | T(v)=x; M∞=M=M∩E∞. Identity/composition restrict to the same maps. Coordinate seminorms restrict to abs(x). | Correct topology and naturality on instance. |
| 50. Smooth quotient exactness | Trivial action, E=ℝ², M=ℝ×{0} | Quotient coordinate is y; kernel is M; y=1 lifts to (0,1). Quotient smooth topology is ordinary ℝ topology. | Surjectivity is statable, absent (R04). |
| 51. Projective tensor action and Leibniz rule | χ₁⊗χ₂ on real scalar lines | Action is e^(3t), derivative 3; RHS 1+2=3. Second derivative 9=1+2·1·2+4. | Tensor/shuffle signs correct; missing supplier contract R01. |
| 52. Smooth tensor map, scalar comparison and dense range | Trivial real lines; diagonal circle characters | ℝ⊗̂ℝ≅ℝ, 1⊗1↦1; complexification gives ℂ, image of 1 remains 1. Weights m,n add to m+n. In these finite-dimensional cases range=whole space. | No unjustified general isomorphism is asserted. |
| 53. Norm-continuous contragredient subspace | Translations on C₀(ℝ), dual point mass δ₀ | For t≠0, ‖δ_t−δ₀‖=2; δ₀ is not in the continuous-orbit subspace. Finite-dimensional χ₁ has dual χ_−1, generator −1. | Excluding the full dual is necessary and correct. |
| 54. Smooth algebra, Leibniz and higher order | Conjugation of M₂(ℂ) by diag(e^(it),1) | δ(E₁₂)=iE₁₂, δ(E₂₁)=−iE₂₁, δ(E₁₂E₂₁)=0=iE₁₂E₂₁−iE₁₂E₂₁. A second derivative obeys a cross term 2δ(a)δ(b). | Higher enveloping operators are not derivations. |
| 55. Star, invariant units and unitization | Same M₂ action; trivial scalar algebra | δ(E₁₂*)=−iE₂₁=(iE₁₂)*; δ(1)=0. In unitization derivative of (c,a) is (0,δa). | Star sign and scalar part correct. |
| 56. Inverse closure and inverse derivative | a=1+E₁₂ under same action | a⁻¹=1−E₁₂; δ(a⁻¹)=−iE₁₂=−a⁻¹δ(a)a⁻¹. For scalar unit 2 both derivatives are 0. Zero/nonunits excluded. | Correct; native headline statable (R04). |
| 57. Matrices and holomorphic calculus | Constant action on M₂(ℂ), a=diag(1,2), f(z)=z² | f(a)=diag(1,4), derivatives 0, hence smooth. A contour enclosing neither spectral point cannot be used to recover f(a). | Spectral containment and Banach-valued integral must stay explicit. |
| 58. Torus order and derivative normalization | U₁^r U₂^s, θ=0 and θ=1/2 | δ₁(U₁)=2πiU₁, δ₂(U₁)=0; U₂U₁=−U₁U₂ at θ=1/2, commutes at θ=0. | Agrees with N6 normalization for rational and irrational parameters. |
| 59. Torus seminorm comparison | θ=0, a=1+U₁; a=U₁^n | First: Q₀=1, P₀=2. Monomial: Q_k=(1+abs(n))^k, P_m=Σ_{r=0}^m(2π abs(n))^r. Polynomial-order bounds exist; individual norms are unequal. | Corrected comparison retained. |
| 60. Reverse torus bound and parameter uniformity | Frequency shells abs(r)+abs(s)=j | Shell size=4j for j≥1; with exponent loss 3, summand ≤4j/(1+j)^3 and series converges. Coefficient extraction on a monomial has norm 1 for every θ. | Loss m+3 suffices in dimension two; no irrationality restriction. |

The wrong models excluded by these values include the trivial generator for χ₁, reversed products, the positive right-invariant differential, inverted modular character, the inherited Banach topology, a zero smoothing operator, unnormalized discrete Haar kernels, a signless Fourier parametrix, the full Banach dual, and isometric identification of the torus seminorms. Positive-characteristic coefficient tests are outside the explicitly real/complex scope, not missing cases. No theorem is generalized to an arbitrary field or DVR.

### Pinned-library and ownership audit

Pins read from `lake-manifest.json`: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Main content was `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. Searches used objects as well as names, across both pinned libraries, main and completed roadmaps, supplied open-head material, the roadmap search service and board packages. No matching fully qualified declaration collision was found for the 13 names as written. This does not excuse the namespace defect or mathematical duplication.

The following 20 declarations were opened at their pins:

| Declaration | Repository-relative file and line | Verified scope |
|---|---|---|
| `ContRepresentation` | `Mathlib/RepresentationTheory/Continuous/Basic.lean:54` | Homomorphism to continuous linear endomorphisms; no topology or continuity requirement on G. |
| `ContIntertwiningMap` | same file, line 80 | Continuous linear map with actual intertwining equation. |
| `banach_steinhaus` | `Mathlib/Analysis/Normed/Operator/BanachSteinhaus.lean:36` | Complete domain; pointwise bounds imply operator bounds. |
| `Continuous.integrable_of_hasCompactSupport` | `Mathlib/MeasureTheory/Function/LocallyIntegrable.lean:622` | Continuous compact-support integrability under the section's measure/topology hypotheses; no Lie structure. |
| `Distribution` | `Mathlib/Analysis/Distribution/Distribution.lean:165` | Real test functions and compact-convergence continuous-linear-map topology. |
| `TemperedDistribution` | `Mathlib/Analysis/Distribution/TemperedDistribution.lean:53` | Complex Schwartz tests and pointwise topology, not the strong dual. |
| `oneParameterSubgroup` | `TauCeti/Geometry/Lie/Exponential/Basic.lean:180` | Continuous monoid homomorphism out of Multiplicative ℝ. |
| `contMDiff_oneParameterSubgroup` | same file, line 207 | Smooth real-parameter subgroup under the finite-dimensional boundaryless hypotheses. |
| `StronglyContinuousSemigroup.smoothVectors` | `TauCeti/Analysis/Semigroups/Generator/SmoothVectors.lean:49` | Intersection of real generator-power domains. |
| `mem_domainPow_iff_contDiffOn_realOperator` | same file, line 96 | Finite-order half-line orbit comparison. |
| `isSmoothVector_iff_contDiffOn_realOperator` | same file, line 126 | Infinite-order half-line comparison, not the general Lie-group theorem. |
| `isClosed_generator` | `TauCeti/Analysis/Semigroups/Generator/Closed.lean:91` | Closed generator, reusable in SB0/SB2. |
| `dense_smoothVectors` | `TauCeti/Analysis/Semigroups/Generator/SmoothDensity.lean:127` | One-parameter density, not multivariable smooth density. |
| `TauCeti.Complexification.reCLM` | `TauCeti/Analysis/Normed/Module/Complexification.lean:274` | Bounded real-part map, norm at most one. |
| `TauCeti.Complexification.ofRealLI` | same file, line 288 | Real-linear isometric inclusion. |
| `ContinuousLinearMap.complexify` | same file, line 356 | Componentwise complexification of bounded real operators. |
| `chartVolumeDensity` | `TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Basic.lean:46` | Square root of Gram determinant; positivity is on chart domain. |
| `contMDiffOn_chartVolumeDensity` | same file, line 72 | Smooth metric and manifold regularity hypotheses are explicit. |
| `chartVolumeDensity_changeChart` | `TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/ChangeOfCoordinates.lean:52` | Absolute Jacobian transformation law on overlap. |
| `RiemannianIsometry.measurePreserving_riemannianVolume` | `TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Isometry.lean:219` | Lindelöf hypotheses on both manifolds; SB1 explicitly arranges these locally. |

Also inspected the native test-function topology construction and its universal property in `Mathlib/Analysis/Distribution/TestFunction.lean:251–364`. The pinned general purpose carriers support the simple definitions here; no missing general Lie-smooth theorem was inferred from a name-only search. The real/complex model-space instances and manifold carriers were further exercised by the successful signature probes.

All named supplier/consumer references were resolved as follows:

| Citation | Inspected source | Resolution |
|---|---|---|
| LieGroups Layers 0–3 | Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:233–320` | Lie/tangent dictionary, exponential, Ad and automatic smoothness exist. Ordered-product coordinates follow by the inverse-function argument; state that adapter explicitly in SB6 rather than assuming a differently named supplied chart. |
| OneParameterSemigroups Part A | Main `Completed/OneParameterSemigroups/README.md:90–160` | Real C₀ generator theory is supplied; actual APIs opened above. Update the stale active-directory link to the completed location. |
| BanachAlgebras A7.ChosenApproximateIdentity and A7.IntegratedRepresentations | Main `TauCetiRoadmap/BanachAlgebras/README.md:875–937` | Modular convention and globally bounded integration agree. The local compact-support extension is correctly distinguished. |
| BanachAlgebras A1–A2 | Main `TauCetiRoadmap/BanachAlgebras/README.md`, A1–A2 | Unitization, inversion and contour calculus are the intended algebraic/analytic suppliers; no K-theory dependency is required for inverse closure. |
| BanachSpaceTheory B4 | Main `TauCetiRoadmap/BanachSpaceTheory/README.md:167–206` | Real/complex Banach projective completion and bilinear universal property supplied. |
| NoncommutativeGeometry N1.Tensor | Main N1 at lines 84–100; open revision N1.Tensor read for comparison | Does not resolve at the permitted main version: R01. |
| AutomorphicFormsOnReductiveGroups §2.1 | Open-head §2.1, scope and supplier contracts | Generic Banach ownership is delegated to CompactGroups' declared gap, with a locally convex extension here: R02. Its §2.7 overlaps this roadmap: R03. |
| CompactGroups Layer5.1 | Main Layer 5, lines 318–367; open revision for comparison | Missing on main: R02. Main Peter–Weyl supplies representative-function density, not that missing named interface. |
| OperatorKTheory K3 | Supplied open-head `TauCetiRoadmap/OperatorKTheory/README.md:356–364` | Dense inverse-closed Fréchet algebra K-theory comparison is a consumer, not an input to SB8. |
| NoncompactQuantumSymmetry M0 | Supplied open-head `TauCetiRoadmap/NoncompactQuantumSymmetry/README.md:676–710` | Unitary Gårding/Lie theory and Nelson/elliptic results are present. It does not presently phrase its generic prefix as an import from this roadmap; coordinate ownership when splitting R03. Its differential convention agrees. |
| NoncommutativeGeometry N6 | Main `TauCetiRoadmap/NoncommutativeGeometry/README.md:475–500` | Torus carrier, ordered multiplier and `2πi` derivations agree. N6 already owns the rapid-decay/smooth-vector identification; the general Banach theorem remains the reusable extension. |

The main BanachSpaceTheory, LieGroups, NoncommutativeGeometry and completed OneParameterSemigroups texts were consulted for shape and ownership. The open-head and board object searches found the significant generic overlap in AutomorphicFormsOnReductiveGroups, not a reason to discard support-controlled factorization or smooth Banach-algebra theory. No dependency was added, moved or repaired during this read-only review.

## Not verifiable

- **Dixmier–Malliavin primary text:** Lemma 2.5 and Theorems 3.1/3.3, including printed pages, exact hypotheses and the function-support refinement, remain uncertified. The sources service's author/title/year lookup found no legal text; legal-source web searches led to bibliographic citations, not the paper. Casselman's author copy is not evidence of the original numbering. The missing-reference record was retained in scratch; this review is completed, not parked.
- **The worker's exact 15-target sample:** no identifiers or parsed headings were supplied. The reproducible replacement sample is disclosed above; it is not represented as the worker's hidden selection.
- **Uncited theorem locators:** exact text-to-statement certification for the many SB0–SB4 and SB7–SB8 claims cannot be completed from a reference paragraph that assigns them no source or page. Their computed checks and native-carrier inspections are reported separately, not substituted for source verification.
- **Full general proof routes:** the finite computations do not certify the entire smooth-frame bridge, locally convex calculus, distribution/vector comparison or contour argument. They are genuine stated construction tasks; their detailed proof obligations and corrected supplier ownership remain necessary.

## Source issues

- **Error** in casselman at Proposition 2.2(a), printed p.6: the source says the inverse Fourier residue series lacks a residue factor; it should be multiplied by `2πi` for the displayed inverse-transform contour; affects the proof.
- **Error** in casselman at proof of Proposition 2.2, printed p.6: the source says `(s²+α²)²+4s²≥s⁴+4s²+1` for every `α²≥0`; it should be restricted to `α²≥1`, failing at `s=α=0`; affects the proof.
- **Misprint** in casselman at proof of Lemma 4.2, printed p.10: the source says the derivative of `λ^(n+1)e^(−2πλ)` has inconsistent powers; it should be `λ^n e^(−2πλ)(n+1−2πλ)`; affects the proof.
- **Misprint** in casselman at proof of Lemma 4.1, printed pp.10–11: the source says the positive coefficient series is the reciprocal `χλ`; it should be the product `φλ`, with partial sums multiplied by `χλ`; affects the proof.
- **Misprint** in casselman at proof of Lemma 5.1, printed p.12: the source says to choose coefficient bounds using a supremum; it should be a minimum satisfying every prescribed upper bound; affects the proof.
- **Misprint** in casselman at proof of Proposition 6.1, printed p.13: the source says the positive-coefficient distribution and vector series have no alternating signs; it should be `(−1)^n` with the same absorbed Fourier coefficient normalization in both; affects the proof.
- **Misprint** in casselman at proof of Proposition 6.1, printed p.13: the source says `v=π(μ₀)α₀+π(μ₁)v` after `π(μ₀)α₀=v+π(μ₁)v`; it should be subtraction, or a negated second factor; affects the proof.
