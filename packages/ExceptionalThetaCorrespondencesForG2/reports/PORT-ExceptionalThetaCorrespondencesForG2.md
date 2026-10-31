# Port report: ExceptionalThetaCorrespondencesForG2

- Branch: `roadmap/exceptional-theta-correspondences-for-g2`.
- Head: `036e66f0fa6ac8a23fb3a429c79360e8acfbb2b9`.
- Baseline: clean worktree at `c994070`, confirmed before branch creation.
- Commit: `ExceptionalThetaCorrespondencesForG2: roadmap (README, Suggested.lean, metadata)`.
- Committed files: `TauCetiRoadmap/ExceptionalThetaCorrespondencesForG2/README.md`, `TauCetiRoadmap/ExceptionalThetaCorrespondencesForG2/Suggested.lean`, `TauCetiRoadmap/ExceptionalThetaCorrespondencesForG2/metadata.toml` only.
- Worktree is clean. No push or GitHub write was performed.

## Draft pull request body

Build the three exceptional theta correspondences involving split G₂ from octonion geometry, Freudenthal–Jordan constructions and exceptional minimal representations. The roadmap develops the Jacquet filtrations and period comparisons needed for Howe duality, division-versus-PGSp₆ dichotomy, explicit lift tables and the discrete-series trichotomy, then constructs quaternion relative models and global exceptional kernels for period nonvanishing and cuspidality over number fields. The characteristic-zero local theory includes residue characteristics 2 and 3; only universal division nonvanishing requires residue characteristic different from 3.

AI assistance: Codex performed the port, citation and ownership checks, mathematical consistency pass and validation. The Lean file records which headline statements lack carriers at the pins; it introduces no substitute statements.

## Validation

The requested module build exited 0. Exact outcome lines:

```text
✔ [8954/8954] Built TauCetiRoadmap.ExceptionalThetaCorrespondencesForG2.Suggested (1.7s)
Build completed successfully (8954 jobs).
```

Warning count: **0**, including **0 sorry warnings**. The unchanged acceptance module has no declarations and therefore needs no `sorry`.

Exact push-gate summary, after the required clean-worktree commit:

```text
gate ExceptionalThetaCorrespondencesForG2: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

All gate counters are zero. Before the commit the same gate reported only its dirty-worktree counter; staging did not clear it. The clean committed result passes. `git diff --cached --check` passed before committing, and the committed diff contains only the three named roadmap files.

The separately requested dependency check exited 0, with its full output:

```text
depcheck: 190 roadmaps, 1173 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The citation resolver reported no cross-roadmap citation or Lean name found nowhere against main `c994070` and the supplied index of 418 open heads. Its own pinned-library lookup was unavailable; the native declarations were independently checked in the Lake packages below.

## Port changes and final mathematical reading

The README retains all **97** numbered targets, all eleven layers, their exact hypotheses, locators, API lists, Checks, examples, supplier contracts and opening Summary. The accepted review's reference to 96 targets is a counting discrepancy; the package itself has 97 numbered subsections. The models read on main were `TauCetiRoadmap/ThetaSeries/README.md`, `TauCetiRoadmap/OrthogonalSpinGroups/README.md` and `Completed/OrthogonalL2Bases/README.md`. The metadata remains `topic = "math.RT"`.

The final reading produced four repairs:

1. Applied the accepted non-blocking Albert-construction note in §10.1. Added transport under a specified product-preserving octonion isomorphism, identity/composition, scalar extension and all-place localization, and the actual commuting Aut(O) and PGSp₆ embeddings with split/definite comparisons. Retained the rank, Lie-dimension, diagonal-idempotent and cubic-norm Checks. Added the nontrivial long-root action on an off-diagonal octonion. The values are N(diag(1,2,3))=6, N(1)=1, dimensions 27 versus 15, and norms −1=−2·(1/2) before/after the action. The action changes u₁+v₁, excluding a trivial entrywise action without re-planning the supplied Jordan identities.
2. Corrected the pinned source locations of `TauCeti.IsSmoothDiscrete` and `TauCeti.SmoothDiscreteTopRep` from 272/618 to **256/601** in `TauCeti/RepresentationTheory/Homological/ContCohomology/SmoothDiscrete/Basic.lean`. The carriers and hypotheses are unchanged.
3. Repaired the malformed proof-route sentence in §8.1. It now says that positive-exponent comparison identifies the big lift as a quotient of finite-length induction.
4. Replaced the ambiguous use of “bilinearity” in §10.3's Check with the exact statement that the integral is linear in f and conjugate-linear in φ. Its numerical witnesses i and −i remain unchanged.

No theorem was weakened, no residue characteristic was excluded beyond the accepted p≠3 universal nonvanishing statement, and no newly found counterexample required changing a theorem. The computed pass below has 155 rows covering the 97 numbered targets plus definition laws, conventions and supplier contracts. The definition-block audit found 24 explicit API blocks, each with at least three Checks.

## Lean acceptance file and signature audit

`Suggested.lean` is byte-for-byte identical to the accepted package. It has one `import Mathlib`, one module docstring and the prescribed namespace. No Tau Ceti import is used because it has no declarations. The module docstring explicitly lists the missing carriers for the headline represented-group comparison, minimal modules/Jacquet filtrations, three Howe theorems, dichotomy, nonvanishing, temperedness, lift tables, trichotomy, spin-pole criterion, quaternion/real relative models, global kernels and central-character comparison.

Nothing moved from Lean to README in this port. The accepted file already has no API padding, examples, data definitions or free predicate stand-ins. No headline became statable through a few simple native definitions at these pins: the identified exceptional ambient groups, normalized representation-theoretic constructions, minimal models and global/real kernels remain substantive construction targets.

The mechanical declaration inventory is empty (0 theorems, 0 definitions, 0 instances, 0 structures). Consequently there are **zero `#check @name` signatures to elaborate or compare**, no section binders to lose, and no signature changes. The exact requested module build elaborated the complete file. A scratch signature file cannot add evidence when there is no named declaration; none was fabricated.

## Supplier checks and ownership

The manifest and the checked package revisions agree:

- Tau Ceti: `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`.
- Mathlib: `f6090c7095e1e56b3464c1daba5f24631f1290d2`.

The native bodies and hypotheses were read at these revisions, rather than inferred from names. In particular:

| Supplier objects | Checked native locations and boundary |
| --- | --- |
| Algebraic representation and coinvariants | `Mathlib/RepresentationTheory/Basic.lean:48`, `Mathlib/RepresentationTheory/Coinvariants.lean:53` and `:57`: monoid homomorphism into linear endomorphisms, quotient by the span of ρ(g)v−v; neither definition imposes smoothness or admissibility. |
| Octonion product, trace, norm and imaginary submodule | `TauCeti/Algebra/Octonion/Basic.lean:123`, `:256`, `:263`, `:264`, `:266`, `:269`, `:334`, `:345`, `:381`, `:416`, `:422`, `:595`, `:625`. The product's top-top cross term is +e₃; the norm is ab−v·w; imaginary is exactly ker(trace). Dimension uses the strong rank condition. |
| Derivation dimension and irreducibility | `TauCeti/Algebra/Octonion/Derivation.lean:938`, `TauCeti/Algebra/Octonion/Fundamental.lean:317`: rank 14 over a commutative strong-rank-condition ring; irreducibility over a field requires 2≠0. Neither is a group comparison. |
| Polarized spin modules | `TauCeti/RepresentationTheory/Spin/Polarization/Basic.lean:82`, `TauCeti/RepresentationTheory/Spin/Polarization/CliffordAction.lean:230`, `TauCeti/RepresentationTheory/Spin/Representation.lean:56`: actual polarization data and Clifford/Spin actions on its exterior algebra, over a commutative coefficient ring. |
| CSA splitting and subfields | `TauCeti/Algebra/CentralSimple/Splitting.lean:120`, `TauCeti/Algebra/CentralSimple/Subfield.lean:318` and `:331`, `TauCeti/Algebra/CentralSimple/MaximalSubfield.lean:135`. The converse embedding criterion is retained here, together with exact degree and field hypotheses. |
| Albert coordinates | `TauCeti/Algebra/AlbertAlgebra/Basic.lean:104` and `:213`: 27-dimensional native carrier; symmetrized product requires invertible 2. Supplied Jordan identities and real forms remain named roadmap inputs. |
| Exceptional integral carriers and symmetries | `TauCeti/Algebra/Lie/E7/Minuscule/Carrier.lean:188`, `TauCeti/Algebra/Lie/E6/Minuscule/GroupScheme.lean:109`, `TauCeti/Algebra/Lie/D4/Tripled/GroupScheme.lean:119`, `TauCeti/Algebra/Lie/D4/Tripled/Triality.lean:142`, `TauCeti/Algebra/Lie/E6/DoubledMinuscule/GraphAutomorphism.lean:468`. Also inspected their RootDatum and generated-smooth files: root-character equations and smooth generated subgroups do not supply the required identified adjoint groups or minimal representations. |
| G₂ Lie maps | `TauCeti/Algebra/Lie/G2/ShortRoot/Basic.lean:173`, `TauCeti/Algebra/Octonion/Serre.lean:267`: seven-weight representation and Lie homomorphism, rather than represented Aut(O) comparison. |
| Smooth discrete actions | `TauCeti/RepresentationTheory/Homological/ContCohomology/SmoothDiscrete/Basic.lean:256` and `:601`: discrete underlying module plus open stabilizers, and their full subcategory of TopRep. Trivial action on a countably infinite sum gives infinite-dimensional fixed spaces. |

The duplication sweep searched by mathematical object across main, the board packages, and the supplied open-head index through `roadmaps grep`, with narrower follow-ups to avoid truncated searches. Searches included octonion automorphisms and null subspaces, Albert/Freudenthal models, exceptional minimal modules and Jacquet filtrations, trialitarian groups, Saito–Kurokawa inputs, low-rank unitary theta, Shalika periods and spin factors, isotypic quotients/induction, Schwartz Ext and scheme centralizers. Relevant existing text was then read directly.

The specific exceptional ownership remains here. LieHighestWeight Layer 8 owns split exceptional Lie comparisons and split/positive-real Albert identities; SpinRepresentations Layers 4 and 8 own spin and triality. Main versions of these sub-roadmaps were used, even though their revision heads contain more material. MetaplecticAutomorphicForms §§3.37–3.40 owns the oscillator, GL₂–GSO₄, restricted Mp₂×G₂ cuspidal theorem, minimal orthogonal and division ternary inputs; the package already consumes these without restating their construction. The retained §6.1, §6.2 and §8.5 assertions add exceptional Fourier–Jacobi, minimal-model comparison and family exhaustion. The local SK module of §8.6 is not the holomorphic global Saito–Kurokawa theorem of SiegelModularForms §9.5. RootSystemsPartII's diagram folding is not cubic étale group descent, and the GL₂ triality kernel in ExoticMonoidalStructuresAndAbstractAutomorphicity is not Spin₈ triality. LocalLanglandsCorrespondenceForG2 is the downstream consumer, not a supplier.

No additional theorem duplication was found and no new target was deleted. All inherited ownership exclusions remain recorded only in **Scope and ownership**. No supplier replacement beyond the two native line-locator corrections was necessary; no import replacement was necessary.

Every named roadmap section was resolved and its relevant contract read. The principal checks were:

| Roadmap version | Sections/contracts consumed |
| --- | --- |
| ReductiveGroups on main | Layers 3, 3A.1 and 9: subgroup/quotient/component constructions, actual stabilizers and pinned group construction. |
| ReductiveGroupsPartII on main | RG2.5.1–RG2.5.2: dual groups and L-groups. RG2.1.2's relative-root centralizer API was also inspected; it does not explicitly discharge the full accepted general centralizer/base-change extension. |
| RepresentationTheory sub-roadmaps on main | LieHighestWeight Layer 8, SpinRepresentations Layers 4/8, ClassicalGroups Layer 6, LieGroups Layers 2/7, CompactGroups Layers 3–5. |
| ClassFieldTheory and QuadraticFormInvariants on main | Layers 5–6, 8–9 and §7B: invariants/restriction, norm-group existence, actual Weil topology and Brauer/H² comparison. |
| SmoothRepresentationsOfLocalGroups open new-roadmap head | SR.0.2, SR.0.4, SR.2.1–SR.2.3, SR.2a.1, SR.3.1–SR.3.4, SR.5.1–SR.5.2; in particular regular-isotypic quotient, conditional Langlands classification plus its separately owned tempered-support input, raw WD convention and classical correspondence. |
| MetaplecticAutomorphicForms open new-roadmap head | §§0.15–0.17, 1.1, 2.4a–2.7, 3.4–3.8, 3.34, 3.37–3.40, with precise oscillator, dual, first-occurrence and tempered hypotheses. |
| LanglandsParameterStacks open new-roadmap head | LP0.4, LP0.5, LP1.11–LP1.12: geometric degree and WD monodromy law. |
| EndoscopicTransferAndUnitaryTraceComparison open new-roadmap head | §§4.7a, 10.30–10.31: classical JL, trace-map identification and inner-form standard-data comparison. The underlying classical GLₙ correspondence is SR.5.2's input. |
| ModularityAndLanglandsExtensions open new-roadmap head | §3.5, including part (vi), the nongeneric supercuspidal Plancherel comparison. |
| AutomorphicLFunctionsAndLocalFactors open new-roadmap head | AL.4 unramified determinant factor and “Central periods” / normalized-rs-period with opposite Whittaker characters. |
| AutomorphicFormsOnReductiveGroups open new-roadmap head | §§2.1–2.7, 3.1–3.5, 4.1–4.2, 5.4 and its exact ALS.F.6 supply contract. |
| ArithmeticLocallySymmetricSpaces open new-roadmap head | ALS.F.6: actual cuspidal form carrier and rapid decay, checked directly as well as through the preceding contract. |
| AutomorphicSpectralTheory open new-roadmap head | §§1.1–1.2, 2.4–2.6, 4.4: convergence, continuation, residues and residual discrete spectrum. |

## Dependencies still in open new-roadmap pull requests

- SmoothRepresentationsOfLocalGroups.
- MetaplecticAutomorphicForms.
- LanglandsParameterStacks.
- EndoscopicTransferAndUnitaryTraceComparison.
- ModularityAndLanglandsExtensions.
- AutomorphicLFunctionsAndLocalFactors.
- AutomorphicFormsOnReductiveGroups.
- AutomorphicSpectralTheory.
- ArithmeticLocallySymmetricSpaces, through the explicit ALS.F.6 contract.

SmoothRepresentationsOfLocalGroupsPartII and AutomorphicLFunctionsAndLocalFactorsPartII are earlier named supply owners in the merge order, but have design texts rather than readable packaged README files or open roadmap heads in the supplied index. Their design-layer locators were checked; the explicitly announced extensions are not claimed to exist there as theorem declarations. Revision-only pull requests on roadmaps already on main are not dependencies.

## Source checks and unresolved supply

The accepted source decisions remain unchanged. Source checks included GS line 223 through GS line 288 for the octonion/parabolic/dual-group conventions; GS line 2001 through GS line 2060 for full Howe and explicit tempered lifts, especially the supercuspidal hypothesis on the shifted δ formulas; Sav line 234 through Sav line 290 for the proof-level unnormalized Jacquet equalities and division coefficient model; LL line 1126 through LL line 1209 for quaternion quotients, Hilbert embeddings, compact SU₂ periods, the global Albert pair and definite nonvanishing/cuspidality; HS line 655 through HS line 675 for the rank-three pole/residue hypotheses; GrS line 6324 through GrS line 6393 for the period/test-function implication; HKT line 1182 through HKT line 1205 for the entrywise action, growth and generic kernel unfolding. Cached extractions with damaged fonts were read together with their version/page/theorem locators. The numerical witnesses were recomputed independently of the reports.

The eleven accepted conditional supplier contracts are retained verbatim in mathematical scope: quasisplit-whittaker, wavefront-all-residue, steinberg-unipotent, rank-one-plancherel, isotypic-parabolic, isotypic-compact, schwartz-ext, ramified-spin-factor, regular-real-unitarity, schematic-centralizers and bg-spin-integral. Their exact statements are in the README. They are **not** certified as already fulfilled at a pin or supplier head by this port. The source-backed prime-degree-torus-distinction and local-division-characters extension contracts also remain explicit, without fabricating provider declarations. Filling these generic supplier extensions is outside the authorized single-folder port; their ownership and the dependency direction are preserved.

GS05 and HPS retain the accepted source waivers. Var remains explicitly uncertified. No unavailable source was represented as independently read. No new mathematical obstruction was found beyond these announced qualifications. No suspicious external instruction was followed.

## Adversarial mathematics pass

The rows below cover all 97 numbered targets, followed by the additional definition laws, standing conventions and supplier contracts. Dimensions, lengths, ranks and 0/1 occurrence indicators are distinguished. Numerical identities were recomputed with exact rational arithmetic and the pinned Zorn product. Representation-theoretic lengths and occurrence indicators are consistency probes against the cited source statements, not independent proofs of those theorems. The source locators in the README supply the general theorems. Each row records a concrete value or structural comparison; it does not treat a successful `sorry` build as evidence of truth.

| Statement | Instances tried | Values computed on the sides or competing models | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 automorphism functor and group comparison | Identity, conjugation, diagonal long-root action, dual numbers | Id(1)=1; u₁u₂=v₃, conjugate(u₁u₂)=−v₃ but conjugate(u₁)conjugate(u₂)=v₃; diagonal factors 2·1/2=1; ε coefficient v₃−v₃=0 | Product law excludes conjugation and the infinitesimal test retains nonreduced algebras | Retained |
| §0.2 null subspaces and orbit dimensions | Zero, F u₁, F u₁+F v₂, F·1, idempotent e | Dimensions 0,1,2; all four plane basis products 0; tr(1)=2; tr(e)=1, e²=e≠0 although N(e)=0 | Nullness requires trace and ordered products; bound includes zero | Retained |
| §0.3 parabolics, radicals and normalization | det=ϖ, q=2; two radical series | δP=1/8, δQ=1/32; square roots 1/(2√2),1/(4√2); graded dimensions 4+1=5 and 2+1+2=5; Q center 2, abelianization 2, quotient by center 3 | The two parabolics and two Q quotients remain distinct | Retained |
| §0.4 cubic étale data | xy(x−y), x³, F³, F×K | Discriminants 1,0; geometric factor counts 3,1 plus quadratic field; trivial character gives discriminant 0 | Nonzero is weaker than nonzero discriminant | Retained |
| §0.5 quadratic stabilizers | Split algebra and quadratic field; diag(2,1/2,1) | Pointwise dimensions 8,8; setwise quotient order 2; u₁↦2u₁, v₁↦v₁/2, product multiplier 1 | Pointwise and setwise stabilizers differ | Retained |
| §0.6 dual inclusions and centralizers | Long-root SL₃, specified SO₃, principal SO₃; S₃ | 7=1+3+3, 8=1+7; SO₃ fixed dimensions 1 versus 0; centralizer orders 6 versus 1; cζc⁻¹=ζ²≠ζ | Specified embedding excludes the principal and abelian wrong models | Retained |
| §0.7 parameters and both WD dictionaries | q=2,3, N=E₁₂, inertia, N=0, nonabelian quotient | Fr scalings (1/2,2),(1/3,3) for (r,r_LP); converted inverse-Fr 1/2,1/3; inertia factor 1; zero N gives 0=0; (ab)⁻¹=(23), a⁻¹b⁻¹=(13) for a=(12),b=(123) | Twist conversion works; coefficient transport or inversion alone does not | Retained |
| §0.8 components and split enhancements | Principal SL₃, principal Spin₇, subregular G₂ | Raw orders 3,2,6; split orders 1,1,6; S₃ squares 1+4+1=6 | Quotient by the dual center changes the first two cases | Retained |
| §0.9 PGSp₆ Jordan model and Levi coordinates | Scalar 2, diagonal frame, q=2 | Wedge/twist factor 4·1/4=1; dimensions 15 versus 27; N(1,2,3)=6; moduli 1/4,1/32,1/8; alternative P₁ coordinate gives 8 | Scalar descent, Pfaffian normalization and Levi orientation agree | Retained |
| §0.10 Weyl chamber and reflection | (1,2,3), (3,2,−1) | Reflection (6,−3,−2), second reflection (1,2,3); quadratic 50=50; source alternative 5≠195/4; simple pairings 3,1,1 | Corrected invariant and chamber include negative third coordinate | Retained |
| §1.1 supercuspidal P-series | Selfdual ω=1, nonselfdual, selfdual ω≠1 | Reducibility sets {−1/2,1/2}, ∅, {0}; zero-exponent case has two summands with generic dimensions 1,0 | Hypotheses select all three cases | Retained |
| §1.2 Steinberg P-series | χ=1, nontrivial cubic χ and χ⁻¹ | At 1/2 lengths 3,2,2; cubic DS labels agree; at 3/2 trivial χ gives St_G in socle | Segment and sign conventions agree | Retained |
| §1.3 character P-series | χ=1; nontrivial quadratic/cubic | At 1/2 lengths 3,2,2; final Q exponent 1 versus wrong 1/2; at 3/2 trivial quotient has dimension 1 | Distinct from the Steinberg inducing data | Retained |
| §1.4 supercuspidal Q-series | Selfdual S₃ determinant-nontrivial; determinant-trivial; other selfdual | Reducibility points ±1, ±1/2, 0 respectively | S₃ exception differs from P-series | Retained |
| §1.5 Q-series Steinberg versus character | τ=St, τ=1, exponent 1/2 | Socle lengths 2 versus 1; total lengths 3=3; quadratic case length 2 | Equal total length does not identify socles | Retained |
| §1.6 Borel criterion and opposite embedding | Three distinct nontrivial quadratics; (s₁,s₂)=(2,1) | Product character 1; summand count 2, generic count 1; opposite P exponent −2+1/2=−3/2 versus wrong −1/2 | Quadratic and exponent exceptions separated | Retained |
| §1.7 nontempered normal forms | (2,1), (1,0), zero exponent | 2>1>0 true; 1>0>0 false; positive-exponent indicator 0 at s=0 | Boundary belongs to a maximal Levi, not strict Borel data | Retained |
| §1.8 depth-zero unipotent labels | 1,ω,ω²; trivial finite type | Label inversion fixes 1 and exchanges ω,ω²; proper-radical invariant dimensions 0 versus 1 for trivial type; K-fixed dimension 0, K⁺-type dimension positive | Inflation of trivial type fails cuspidality | Retained |
| §1.9 partial parameter labels | Subregular and principal Deligne images | Component orders 6,1; fixed dimensions 1,0; enhancement dimensions (1,2,1) versus (1) | No full LLC is assumed | Retained |
| §1.10 cubic models | π=1; nongeneric infinite-dimensional π with selected orbit | (1−ψE(n))v=0 gives dim 0 for π=1; for πdeg[1] and a cubic field E, c_O=dim W_E=1 and regular coefficient 0 | Infinite-dimensional hypothesis avoids false nonvanishing for 1 | Retained |
| §1.11 P₂/P₁₃ series | Selfdual supercuspidal τ, ωτ=1, s=1/2 | Lengths 2 versus 4; intermediate GSp₄ constituents have nonzero Siegel Jacquet module, so supercuspidal indicator 0 | No application of supercuspidal P₁ criterion to these constituents | Retained |
| §1.12 Siegel induction | Selfdual/nonselfdual GL₃ DS; St_GL₂×1 | Summand counts 2,1; St×1 parameter 2·2+3=7; centralizer Sp₂×SO₃ connected, component order 1, induction length 1 | DS splitting is not extended to all selfdual tempered data | Retained |
| §1.13 P₁ reducibility | Nongeneric SK and generic representation with same parameter | Genericity indicators 0,1; same Plancherel scalar; both have reducibility set {−1/2,1/2} | Gan–Takeda part (vi) is needed for the nongeneric case | Retained |
| §2.1 Freudenthal data | J dimensions 1,3,9,15; scalar x=2,y=3 | Lie dimensions 14,28,78,133; x#=4, (x#)#=16=8·2; x∘x#=8; T(1,1)=3; T(4,3)=36=dN₂(3) | Norm, adjoint and trace laws exclude zero cubic/adjoint | Retained |
| §2.2 pairs and division embedding criterion | n=3, degrees 2,3,6; nonfield cubic; n=2 | Invariants 2/3,0,0; degree 6 splits but 6>3 forbids embedding; F³ has nontrivial idempotents; quaternion degree-2 invariant 2·1/2=0 | Both field and exact-degree hypotheses necessary | Retained |
| §2.3 triality see-saw | E=F³; cubic field; common ϖ square class | Split twist 0; Res SL₂ dimension 9; PE× dimension 2; kernel order 2; v(ϖ)=1 versus square valuation 2v(a) | Rational points of a quotient exceed quotient of rational points | Retained |
| §2.4 nonzero minimal models | Split spherical model, open kernel only, zero module | Fixed-line dimensions 1 versus 0; evaluation quotient nonzero versus 0 for open kernel alone | Nonzero/evaluation laws select an actual model | Retained |
| §2.5 big/small modules and dual convention | Π=χ for C₃, χ of order 3 | dim Hom(χ,χ)=1, dim Hom(χ,χ∨)=0; multiplicity module of π⊗τ is τ | Coinvariants require π∨ | Retained |
| §2.6 normalized outer extension | T, −T, 2T; diagonal (2,3,5) | Spherical eigenvalues 1,−1,2; squares Id,Id,4Id; involution sends diagonal to (1/5,1/3,1/2) and back | Spherical normalization fixes the sign and scale | Retained |
| §3.1 ambient gradings and projection twists | Five Levis; division P/Q cocharacters, q=2 | Dimensions 66,38,78,66,48; modulus sums 6,22 and 10,42; half-ratio powers 8,16; values 1/256,1/65536 | Normalized projections need modulus ratios | Retained |
| §3.2 orbit kernels | Nonzero null quadruples of span 1,2; zero quadruple | Span ranks 1,2,0; u₁,v₂ have all ordered products 0; u₁v₁=e≠0 | Rank zero excluded from open kernel, nonnull plane excluded | Retained |
| §3.3 raw E₆ filtrations | det=ϖ, q=2 | Boundary factors 2^(−3/2) and 2^(−1/2) differ by 1/2 | Boundary twists cannot be erased | Retained |
| §3.4 G₂-P filtration | Scalar z=ϖ,q=2; Sym³ twist | Scalar weight z³z⁻²=z; top characters 1/2,1/8; graded count 3 | Scalar and determinant coordinates distinguished | Retained |
| §3.5 G₂-Q filtration | Lower-Borel (ϖ,1),(1,ϖ),q=2 | Middle values 1/√2,1/2; scalar top values 1/8,1/16 | Coordinate exchange changes action | Retained |
| §3.6 H-P₃ filtration | det=ϖ,q=2 | Extra top factors 1,1/2; rank strata 0,1,2; piece count 3 | E₆ term untwisted, trivial term twisted | Retained |
| §3.7 H-P₁ filtration | Q₁(ϖ,I), Q₂(I,ϖ),q=2 | Similitudes 1,ϖ; moduli 16,1/8; middle  √2 versus 1/√2 under switched coordinates; top 1/√2,1/(2√2) | Row-coordinate convention preserved | Retained |
| §3.8 H-P₂ filtration | (α,β)=(2I,2⁻¹I); nonconstant coset indicator | det product 4·1/4=1; four pieces versus three for P₁/P₃; translation changes indicator from 1 to 0 | Quotient descent and separate regular/scalar actions retained | Retained |
| §3.9 forward positive-exponent control | Q input at s=1, P input, s=0 | H exponents (1,1); target parabolics P₂ versus P₁₃; positivity indicators 1,1,0 | Zero exponent not covered | Retained |
| §3.10 reverse chambers | Three simple roots | Proper Levi-subset count 2³−1=7, versus 1 if only P₂ tested | Exhaustion requires all seven cases | Retained |
| §3.11 tempered compatibility | Positive Q quotient; Steinberg pair; zero exponent | Tempered indicators (0,0), (1,1); forbidden mixed (1,0),(0,1); s=0 positivity 0 | Support implications used only where positive | Retained |
| §3.12 division model decomposition | τ=1, τ≠1; division versus split; q=2 | πdeg multiplicity 1; nontrivial τ Jacquet pair (0,0); candidate socle intersection has size 1 versus 2 with Q alone; normalized twists 1/256,1/65536 | Independent decomposition precedes triality uniqueness | Retained |
| §4.1 triality principal series | E=F³, field/nonfield, det=ϖ,q=2 | Equal determinant triple; RD(nonfield)=0; characters at −1/2,+1/2 are √2,1/√2 | Sign and field distinctions enforced | Retained |
| §4.2 triality exact sequences | Cubic field, F×K, F³ | Lengths 3,2,2; nonfield cokernel 0 and R15=I | Both length cases match coefficient models | Retained |
| §4.3 division Ext obstruction | Cubic field, tempered matching support, distinct block | πdeg multiplicity 1; Ext¹ dimensions 0,0 by different inputs; supercuspidal summands have Jacquet pair (0,0) | No blanket projectivity claim for DS in full smooth category | Retained |
| §4.4 restricted principal series | Three cubic algebra types; s=1/2 | Boundary multiplicities 3,1,0; P exponent 1/4+1/4=1/2; Q exponent 1+1/2=3/2 | Orbit multiplicities and half-moduli agree | Retained |
| §4.5 open-orbit restriction | Tempered or Q-supported π; four boundary pieces | Required boundary Hom/Ext contributions (0,0,0,0); restriction kernel/cokernel (0,0) | No extrapolation to arbitrary nontempered targets | Retained |
| §4.6 cubic and degenerate division coefficients | F³ in D; field in D; nilpotents in D/M₃ | Empty generic fiber gives 0; field gives nonempty orbit; degenerate fiber dimension 0 versus 6, function-space dimension 1 for singleton; Uα character comparison gives Hom dimension 0 | Division nongenericity not generalized to split model | Retained |
| §4.7 finite cubic chain | Closed chain with d=1; two unrelated injections | Closed dimensions 1,1,1,1; putative intermediate 2 forces 2≤1; two maps 1→2 alone allow 2 | Equality uses closed chain and finite endpoint | Retained |
| §4.8 nongeneric uniqueness | Two alleged independent quotients, d=1 | Contributions 1+1=2>1 | Nonzero finite coefficient excludes duplication | Retained |
| §4.9 weak existence | E=F³; cubic field | RD=0,R15=I in split cubic case; map dimension ≥1 forces R15 occurrence; field sequence has two possible nonzero terminal contributions | Existence does not prove exclusion | Retained |
| §5.1 division Howe duality | τ=1, nontrivial τ; possible extra C₁ | ΘD(1)=πdeg with length 1,generic dimension 0; cubic coefficient counts 0=0+0 and 1=1+0; τ≠1 Jacquet pair (0,0) | Extra cuspidal summand would violate nonzero cubic coefficient | Retained |
| §5.2 universal nonvanishing | p=2,3; unramified cubic χ; ramified/unramified test fields | gcd(3,p)=1,3; torus multiplicity q^m=2 for q=2,m=1; cubic norm exponent 3 gives χ³=1; unramified-field norm valuations 3ℤ versus totally ramified valuations ℤ | Only universal high-dimensional assertion uses p≠3 | Retained |
| §5.3 opposite algebra | Noncommuting x,y; invariants 1/3,2/3 | Jordan sums xy+yx=yx+xy; (xy)⁻¹=y⁻¹x⁻¹; invariants differ by sign | Inversion is a homomorphism to the opposite group | Retained |
| §5.4 outer signs | Nonselfdual orbit; selfdual Steinberg; trivial input | Orbit size 2 gives one induced irreducible with two restriction constituents; fixed orbit gives two extensions with one each; Whittaker dimensions 1,0 | Nongeneric plus label determined by minimal model | Retained |
| §5.5 E₆ disconnected fibers | Outer eigenvalues ±1 | Fixed dimensions 1,0 because 2v=0 implies v=0 over ℂ | Fiber sign requires actual operator calculation | Retained |
| §5.6 generic supercuspidal precursor | Two first-occurrence branches, residue characteristic 2 | Within-partner multiplicity 1; branch label count 2; cross-partner pair (1,1) is not eliminated by precursor alone | Does not assume later trichotomy | Retained |
| §5.7 selfdual supercuspidal minus lift | p≠2 versus p=2; GL₂ Steinberg quotient | Selfdual input count 0 outside p=2; at p=2 minus Whittaker dimension 0 but lift nonzero; adjacent-rank functional dimension 1 and quotient image all St, not 0 | Dual/currying convention and scope agree | Retained |
| §5.8 split-E₆ table | Steinberg ±; selfdual contains-1 parameter | Outputs πgen[1],πsc[1], generic dimensions 1,0; contains-1 nonzero sign indicators (1,0) | No generic-small assertion for every nontempered input | Retained |
| §5.9 split-E₆ Howe | Nonselfdual orbit, Steinberg signs, zero lift | Orbit of size 2 has one induced input; sign inputs give two distinct length-one outputs; zero cosocle length 0 | Injectivity on nonzero lifts only | Retained |
| §6.1 restricted oscillator Fourier–Jacobi module | Odd Weil χ=1, χ quadratic≠1, admitted σ | Whittaker square-class support contains 1 versus omits 1; split SO₃ lift St versus 0; anisotropic lift 0 versus one-dimensional; admitted FJ output σ∨ and double dual σ | Zero split SO₃ lift alone does not exclude all odd Weil | Retained |
| §6.2 orthogonal comparison | χ of order 3; infinite-dimensional input | Dual character ζ⁻¹=ζ²≠ζ; bidual χ recovers ζ; algebraic dual has nonsmooth vectors in infinite dimension | No interchange of full and smooth duals | Retained |
| §6.3 A₅ restriction | F⁶ minus zero versus F⁶ | Orbit counts 1 versus 2 | Zero-orbit evaluation kept separately | Retained |
| §6.4 noncuspidal finiteness | Two G₂ and three H parabolics | Filtration count 2+3=5; illustrative finite lengths 1+2+3=6; bottom-only bound 1 leaves other total 5 uncontrolled | Every graded term requires its own input | Retained |
| §6.5 full nongeneric finite length | Noncuspidal length n=2 | Total lengths n+ε=2,3 for ε=0,1 | Preliminary uniqueness plus independent finiteness suffices | Retained |
| §6.6 two Whittaker fibers | Trivial G₂ input, generic input | Whittaker dimensions 0,1; residual module groups H and G₂ respectively, not the same target | Whittaker fiber gives generic H occurrence before Howe | Retained |
| §6.7 dichotomy | Selected cubic coefficient d=1; nontempered or generic input | Double occurrence would force 1=2; division/H indicator sums 1; division generic indicator 0 | Both existence and exclusivity accounted for | Retained |
| §7.1 enhanced period | Two genuine factors; U/Z versus U/[U,U] | Central signs −1·−1=1; dimensions 3 versus 2; oscillator central value ψ(x)≠1 | Tensor descends, either single factor does not | Retained |
| §7.2 Shalika period | Anti-diagonal scalar; trivial H-module; conjugate character | z²z⁻²=1; trivial-module period dimension 0; ζ versus ζ⁻¹ unequal for ζ of order 3 | Quotient subgroup and character fixed | Retained |
| §7.3 root exchange | Fourier transform on F₂,F₃; constant on F | Nontrivial sums 1+(−1)=0 and 1+ζ+ζ²=0; trivial sums 2,3; normalized inverse gives 1; integral of constant on F diverges | Compact annihilator and dual measures essential | Retained |
| §7.4 enhanced uniqueness | s=−1/2 and boundary +1/2 | −1/2<1/2 true, period dimension 1; +1/2<1/2 false | Strict boundary retained | Retained |
| §7.5 minimal Shalika fiber | Genuine signs and dual exponent | (−1)(−1)=1; s=1/2 dual gives −1/2 | Compact-isotypic supplier used with Ext¹(1,1)=0 | Retained |
| §7.6 generic chain | Nonzero endpoints; zero endpoints | 1→d→1 forces d=1; 0 endpoints give no positive lower bound | Nonzero input retained in uniqueness route | Retained |
| §7.7 generic tempered uniqueness | Two alleged generic quotients; nongeneric quotient | Whittaker dimension at least 2 versus bound 1; nongeneric contribution 0 | Cubic argument remains necessary for nongeneric quotients | Retained |
| §7.8 tempered Howe | Nonzero and zero lifts | Cosocle lengths/multiplicities (1,1),(0,0); finite-length module alone could have cosocle length 2 | Period bounds, not finite length alone, imply Howe | Retained |
| §8.1 nontempered table | Q/P data with s=1; s=0 | Targets J₂,J₁₃; positivity 1 versus 0; nonzero standard-quotient cosocle length 1 | Same positive domain in both directions | Grammar repair only |
| §8.2 tempered Siegel table | Contains-1 selfdual parameter; selfdual DS without 1 | E₆ occurring-sign count 1 versus 2; H summand count 1 versus 2 | Uses §1.12 irreducibility at contains-1 case | Retained |
| §8.3 three Howe theorems | Division branch, split-E₆ branch | Division/H sum 1; triple of nonzero indicators (0,1,1) has sum 2 | Three correspondences do not give three disjoint nonzero domains | Retained |
| §8.4 remaining tempered lifts | τ supercuspidal selfdual ω=1; τ=St_GL₂ | Shifted Q socle length 1 versus 2; St case has πgen⊕πdeg; G₂ Steinberg lifts to H Steinberg with DS indicator 1 | Supercuspidal hypothesis retained on shifted δ identities | Retained |
| §8.5 πρ family | Genuine odd Weil versus σρ from supercuspidal ρ | Odd Weil anisotropic lift dimension 0 or 1; JL(ρ) dimension >1; admitted inverse recovers one ρ | Excludes odd Weil without removing legitimate σρ | Retained |
| §8.6 D₆/Saito–Kurokawa comparison | σρ first occurrence | Split SO₃ occurrence 0, SO₅ occurrence 1; τρ genericity 0, supercuspidality 1 | Comparison is with the full big lift | Retained |
| §8.7 supercuspidal table | πρ versus other π in complement | πρ H proper Jacquet survival in D₆ top; complement maximal Jacquet indicators (0,0,0) | DS δ₁(τρ) distinguished from supercuspidal output | Retained |
| §8.8 discrete-series trichotomy | Split-E₆ DS input | Triple nonzero indicators (0,1,1); triple DS indicators (0,1,0), sum 1 | Precisely one discrete-series partner | Retained |
| §8.9 spin/Shalika/theta equivalence | Central coroot ϖ, q=2; simple pole; minimal versus induced generic quotient | det₅₆ exponent 56·3/28=6, sim exponent 2·3=6; half modulus exponent 8, normalized s=3−4=−1; generic dimensions 0 versus 1; local orders −1 for L and +1 for γ | Nonzero image proper; residue, not singular evaluation, produces functional | Retained |
| §8.10 depth-zero example | q=7, element order 43; trivial character | Exponents 0,1,42,36,7,6,37 are seven distinct residues; 1−7+6=0; trivial parameter gives seven equal eigenvalues; p=7>5 | Finite-field restriction not imposed on local Howe theorem | Retained |
| §9.1 quaternion pointwise group | Split/ division quaternion; real Hamilton; norm-one −1 | Groups SL₂, compact SL₁(D),SU₂; (−1) fixes D and negates D⊥; dimension 3 versus SO₄ dimension 6 | Excludes setwise and trivial subgroup models | Retained |
| §9.2 open Siegel coefficients | Rank 3 versus rank 0 | Open rank 3; zero rank 0; stabilizer dimensions 3,3 but H-side Aut(D) differs from G-side SL₁(D) | Equal dimensions do not identify the groups | Retained |
| §9.3 tempered relative quotient | Pure ranks 0,1,2,3 | Excluded ranks are exactly 3 values below 3; odd-rank covered central action −1 versus ordinary +1 | Low-rank proof must include all lower ranks and parity | Retained |
| §9.4 relative embedding | Supercuspidal quotient; arbitrary DS | Projective splitting gives embedding multiplicity ≥1; no all-DS projectivity supplied | Scope of splitting retained | Retained |
| §9.5 Steinberg Hilbert summand | Division/split D; N={1}; finite compact K | Haar volume finite c>0 versus infinite; normalized c=1; functional on 1_K equals vol(K)>0, on N={1} equals f(1)=1 | Compact stabilizer and character orientation essential | Retained |
| §9.6 compact G₂ period | SU₃ weights (2,1,0) and (0,0,0) | Interlacing (1,1),(0,0); SU₂ weights 1−1=0 and 0−0=0; invariant multiplicities ≥1 | Includes trivial representation | Retained |
| §10.1 Albert global pair | Split/definite places; diagonal frame; nontrivial long-root action | Ranks 7,3; N(1,2,3)=6,N(1)=1; dimensions 27 versus 15; Lie dimensions 133 versus 66; u₁+v₁↦2u₁+v₁/2 changes entry but norms −1=−1 | Added laws determine transport and actual action | API and action Check added |
| §10.2 minimal global residue | r=3,d=8; minimal versus trivial residue | Poles 1,5,9; minimal parameter 5≠9 | Residue-generated module, not nonzero residue of every section | Retained |
| §10.3 global kernel | f=0,φ=0; if,iφ; zero local theta | Integral 0,0; multipliers i,−i; local obstruction gives global occurrence 0 | Conjugate-linearity and local compatibility agree | Replaced ambiguous “bilinearity” wording |
| §10.4 period nonvanishing | Zero period; period value 1 and local factors 1 | Products 0 and 1·1=1 | Nonvanishing asserts existence of test data | Retained |
| §10.5 two definite cuspidality criteria | Steinberg finite component; regular real weight | Three maximal constant terms (0,0,0) in either case; (0,0,1) would fail cuspidality | Both alternatives test all three parabolics | Retained |
| §10.6 split generic global lift | Nonzero Whittaker coefficient; designated supercuspidal H lift | Normalize selected coefficient to 1; local maximal Jacquet triple (0,0,0); zero vector coefficient 0 | Genericity alone is not the cuspidality condition | Retained |
| §10.7 infinitesimal character | λ=0; positive-root range boundary | λ+ρ=ρ versus λ=0, unequal; at pairing C the strict test C>C is false, at C+1 true | Does not replace unknown matching polynomial by scalar tautology | Retained |

| Additional statement or convention | Instances tried | Values computed on the sides or competing models | Result | Change |
| --- | --- | --- | --- | --- |
| Local field, coefficient and denominator conventions | q=2,3,1; characteristic zero versus 2,3 | 2,3>1; q=1 gives \|ϖ\|=1 and no positive-exponent separation; 2,3 invertible in F and ℂ; 2=0 in characteristic 2, 3=0 in characteristic 3 | Excluded fields/coefficients remain excluded; residue 2,3 are admitted | Retained |
| Universes, nonzero modules, finite rank | Zero module, one-dimensional module, countable direct sum | Dimensions 0,1,∞; zero-module Hom 0; no claim promotes ∞ to finite rank | Fixed universes and explicit scalar fields retained | Retained |
| ψ and inverse-twist convention | C₃ character χ(1)=ζ; conjugate | Values ζ and ζ²; ζ·ζ²=1 versus ζ²≠1 | A simultaneous inverse twist is needed for invariant contraction | Retained |
| Normalized versus unnormalized Jacquet convention | Small/ambient P cocharacter, q=2 | Half ratio 2^(−8)=1/256; unnormalized quotient map no twist; normalized untwisted action differs by 256 | Declared exception used in §§3.1,3.12 and §8.9 | Retained |
| Regular left/right actions | One-dimensional χ, a=b with χ(a)=ζ | χ(a)/χ(b)=1 versus χ(a)χ(b)=ζ² | Right inverse retained in every filtration | Retained |
| Haar and global theta scaling | Haar rescaled by c=2; f↦if,φ↦iφ | Nonzero integral A↦2A remains nonzero; Θ↦iΘ and −iΘ | Positivity of measure rescaling and conjugate input convention explicit | Retained |
| Algebraic versus smooth dual | Trivial countable direct sum, diagonal C₃ character | Algebraic dimension ∞; character dual value ζ²; no finite-dimensional/admissible consequence from smoothness alone | Dual notions kept distinct | Retained |
| §0.1 identity, composition, inverse, trace and norm API | g=diag(2,1/2,1), h=g⁻¹ on u₁,v₁,e | ghu₁=u₁, ghv₁=v₁; tr(u₁)=tr(gu₁)=0; N(u₁+v₁)=N(g(u₁+v₁))=−1; tr(e)=1 unchanged | Product-preserving equivalences have the claimed closed operations and invariant witnesses | Retained |
| §0.1 spanning-set/extensionality API | Two linear maps on all eight Zorn basis vectors; wrong 2Id | Agreement gives eight zero differences; 2Id sends unit to 2≠1 | Linearity plus a spanning set determines the map | Retained |
| §0.2 trace, norm, transport API | Null plane F u₁+F v₂ and its diagonal image | tr(au₁+bv₂)=0; N=0; image spans 2u₁ and 2v₂, dimension 2; ordered products 0 | Nullness transported without losing dimension | Retained |
| §0.4 conjugacy and algebraic-dual API | ψE versus conjugate through central −1; trivial representation | Scalar −1 acts on Sym³⊗det⁻¹ by −1, so ψE→ψE⁻¹; trivial input coefficient 0, its algebraic dual also 0 | Conjugation and full dual correctly oriented | Retained |
| §0.6 diagonal μ₂ kernel | (−1,−1), (−1,1) on 2⊗2 | Tensor actions +1,−1 | Only diagonal μ₂ is killed | Retained |
| §0.7 conjugacy and transport API | Conjugate N=E₁₂ by diag(2,1/2); trivial parameter pushed forward | N↦4N; both WD sides scale 4N by same factor 3 at converted Fr; trivial image remains {1} | Conjugation and boundedness agree with transport | Retained |
| §0.8 raw enhancement descent API | Raw μ₂ character ±1; raw μ₃ trivial character | Minus action −1 fails descent, plus action +1 descends; trivial μ₃ action 1 descends to group of order 1 | Triviality on center is an actual condition | Retained |
| §0.9 Pfaffian/unit and M₂ action API | e, 2e; α=diag(2,1),β=I | N(e)=1,N(2e)=8; matrix determinant multiplier det α det β=2; scalar anti-diagonal multiplier 1 | Cubic degree and quotient action determined | Retained |
| §0.10 hyperplane API | s=(3,2,1) and permutations | Difference values 1,2,1; pair sums 5,4,3; extra values 9,8,7; each nonzero | Nine hyperplanes, including extra three, required | Retained |
| §2.1 cubic identities API | Scalar x=2 and λ=3; zero cubic; zero adjoint | N(6)=216=27·8; (6)#=36=9·4; 1#=1; zero cubic N(1)=0≠1; zero adjoint 1#=0≠1 | Both wrong models excluded by unit and homogeneity laws | Retained |
| §2.1 trace-pairing and scalar-extension API | Scalar model over F then K | T(2,3)=18; T(4,3)=36 in both fields; dimensions 1 and Lie dimension 14 unchanged | Transport laws are compatible with actual cubic construction | Retained |
| §2.2 scalar-extension and mutual-centralizer API | Split nine/fifteen-dimensional J | Partner dimensions 8,21; ambient dimensions 78,133; outer component order 2 adds Lie dimension 0 | Generic Lie equality alone cannot assert group isogeny | Retained |
| §2.3 transport and H¹ API | Identity automorphism of F³; nontrivial common square class | Twist remains split; connecting class of a lifted triple is 0, common class ϖ is nonzero | Specified embedding and connecting map retained | Retained |
| §2.4 Hermitian/contragredient model API | Spherical vector v with norm 1; C₃ unitary character | Conjugate character ζ² equals χ∨; \|v\|²=1 versus zero vector 0 | Nonzero unitary realization, not zero representation | Retained |
| §2.5 Hom adjunction and see-saw API | Π=χ⊗τ, χ of order 3; trivial multiplicity | Both matching Hom dimensions 1; mismatched dual Hom 0; zero multiplicity Hom 0 | Universal quotient uses the stated source and target | Retained |
| §4.1 cubic transport and normalized image API | E=F³ with factor permutation; det=ϖ,q=3 | Twist class remains 0 under permutation; inducing values √3 versus 1/√3 at opposite s | Image comparison needs sign normalization | Retained |
| §5.4 Clifford transport API | Nonselfdual pair {τ,τ∨}; fixed τ | Pair cardinalities 2 versus 1; induced restrictions lengths 2 versus 1; fixed case two extension signs | No duplicate input for contragredient orbit | Retained |
| §7.1 intertwiner/model API | Parameters +1/2 and −1/2; ψ↦ψ⁻¹ | Exponents sum 0; q=2 factors 1/√2 and √2; character ζ becomes ζ² | Dual comparison changes both parameter and character | Retained |
| §7.2 functional/coinvariant API | Trivial module, nontrivial character; conjugate orbit | Quotient dimension 0 and dual dimension 0; conjugating orbit preserves this dimension | Dual is distinguished from original quotient | Retained |
| §10.1 transport, composition and localization API | Identity on O; product-preserving diagonal g and g⁻¹; split completion | Compositions send u₁↦2u₁↦u₁ and v₁↦v₁/2↦v₁; N diagonal=6 before/after; N(u₁+v₁)=−1 in either field; dimensions 27→27 | Added transport laws name their maps and commute with localization | API added |
| §10.1 commuting embeddings API | Identity elements; nontrivial octonion diagonal action | (1,1) acts as Id; entry u₁+v₁ changes to 2u₁+v₁/2≠u₁+v₁; diagonal scalar (1,2,3) unchanged | The entrywise formula excludes trivial Aut(O) embedding | API and Check added |
| §10.3 translation and local quotient API | Identity translation, zero local module, scalar i | Identity leaves integral A; zero local module forces 0; kernel scalar i gives iA | Actual constructed kernel determines the map | Retained |
| Mathlib representation/coinvariant supplier | Trivial action on ℂ, sign of C₂ | Coinvariants ℂ versus 0 because span(−v−v)=ℂ; plain Representation contains no smoothness datum | Native carrier is algebraic only | Retained |
| Native octonion/Lie supplier | Split over ℝ; char 2 | N(u₁+v₁)=−1, so split norm not positive; tr(1)=0 in char 2 yields invariant scalar line of dimension 1<7 | Split/compact and irreducibility hypotheses retained | Retained |
| Native Albert supplier | Diagonal idempotents and frame | E₁∘E₁=E₁,E₁∘E₂=0; dimension 27; N(diag(1,2,3)) intended imported cubic value 6 | Carrier alone not a Jordan-identity or group-comparison theorem | Retained |
| Native spin supplier | Polarization dimensions 3+3+1 | Exterior dimension 1+3+3+1=8; central −1 action −Id versus SO identity | Native action is over coefficient ring with polarization, not automatically quotient action | Retained |
| Native CSA supplier | Degree 3 division, subfield degree 3, extension degree 6 | Native bound 3≤3; 6>3 forbids embedding although invariant 6/3=0 | Converse embedding target has exact-degree condition | Retained |
| Native smooth discrete supplier | Trivial action on ℂ and countable direct sum | Stabilizer full group in both, fixed dimensions 1 and ∞ | Smoothness does not imply admissibility | Corrected definition line locators to 256,601 |
| Native exceptional matrix carriers | Minuscule dimensions 27,56; tripled D₄ | 27 versus 56, tripled dimension 3·8=24; root automorphism order 3 or 2 does not create an action on missing minimal module | Inspected root-datum and generated-smooth files as well as carrier definitions | Retained absence of identified adjoint minimal models |
| ReductiveGroups quotient contract | μ₂ quotient; uniformizer | Kernel order 2, Lie dimension 0; H¹ square class valuation 1 versus even square valuations | Points need not be surjective | Retained |
| ReductiveGroups schematic-centralizers gap | S₃, cyclic C₃, trivial subgroup | Z(S₃) order 1 versus Z(C₃) order 3; centralizer of trivial subgroup has full dimension | Relative-root centralizers do not certify the whole stated general base-change contract | Accepted gap retained |
| ClassFieldTheory/QuadraticFormInvariants | Degree 3 and degree 2 restriction of invariant 1/3 | 3·1/3=0 in ℚ/ℤ; 2·1/3=2/3≠0 | Restriction direction matches embedding criterion | Retained |
| LanglandsParameterStacks/SR raw WD comparison | q=3,N=E₁₂ | LP and raw SR factor 3; original arithmetic φ conversion factor 1/3; inertia factor 1 | r_LP supplies the actual matching convention | Retained |
| SmoothRepresentations support and regular quotient | χ of C₃; proper positive chamber | Right inverse gives ζ/ζ=1; zero positive weight test 0>0 false | Supplier hypotheses kept in route and statement | Retained |
| quasisplit-whittaker contract | Generic irreducible; trivial G₂ | Dimensions 1,0, both ≤1; two generic lines would give 2>1 | Dimension bound is not nonvanishing for every representation | Accepted gap retained |
| wavefront-all-residue contract | Nongeneric maximal subregular coefficient; p=2,3 | For πdeg[1] and a cubic field, regular coefficient 0, subregular coefficient 1 and coefficient dimension 1 at p=2,3 | No good-prime shortcut | Accepted gap retained |
| steinberg-unipotent contract | N={1}; compact K⊂ker χ | Functional values f(1)=1 and vol(K)>0; left translation by a with χ(a)=ζ multiplies by ζ | Every smooth character, not only generic U characters | Accepted gap retained |
| rank-one-plancherel contract | s=±1/2 and s=0 | Nonzero point count 2; R-group trivial gives End dimension 1; order-2 R-group gives dimension 2 | Nonzero reducibility and zero-exponent R-groups use distinct clauses | Accepted gap retained |
| prime-degree-torus-distinction contract | ℓ=3,p=2,q=2,m=1; p=3 | ℓ≠p true/false; multiplicity q^m=2 | General high-dimensional nonvanishing only at ℓ≠p | Explicit supply extension retained |
| local-division-characters contract | Degree 3 scalar a, cubic χ | χ(Nrd(a))=χ(a³)=1; primitive uniformizer value ζ≠1 on suitable noncentral element | Center triviality does not make the entire character trivial | Explicit supply extension retained |
| isotypic-parabolic contract | Trivial induction P=G; zero multiplicity V | τ⊗V unchanged; zero gives 0 on both sides | No self-Ext hypothesis imported from compact induction | Accepted gap retained |
| isotypic-compact contract | H=G; τ=1 on PGL₂, Ext¹=0 | Induction identity gives same multiplicity; Ext¹ dimension 0 in specified application | Keeps its extra hypothesis, unlike parabolic version | Accepted gap retained |
| schwartz-ext contract | Discrete series δ and tempered π; distinct Bernstein block | Schwartz projectivity gives Ext¹=0; distinct blocks give smooth Ext¹=0 | Does not imply projectivity against all nontempered targets | Accepted gap retained |
| MetaplecticAutomorphicForms | Scalar anti-diagonal, genuine center, odd Weil | Descent factor 1, genuine tensor sign +1, odd Weil split lift occurrence 0 or 1 depending on label | Exact hypotheses of §§3.38a–3.40 retained | No duplicate oscillator construction |
| Gan–Takeda/inner-form JL | Nongeneric τρ; cubic/quaternion JL | Genericity 0; same Plancherel scalar as generic companion; JL signs (−1)^(3−1)=+1 and (−1)^(2−1)=−1 | Nongeneric comparison has an actual supplier | Retained |
| Unramified spin factor | Satake t=1; spin versus trivial r | Polynomials (1−T)⁸ versus 1−T, degrees 8 versus 1 | Euler-factor machinery does not select spin representation | Retained |
| ramified-spin-factor contract | F₄ central coroot at ϖ | sim exponent 2, δ exponent 16, half exponent 8; unnormalized inducing exponent 3 gives s=−1 | Spin/Shahidi normalization agrees with §8.9 | Accepted gap retained |
| bg-spin-integral contract | Simple pole at 0; constant-section integral | ord L=−1,ord γ=+1; constant section integral order ≥0 | Singular transformed section and residue required | Accepted gap retained |
| Automorphic analytic suppliers | Compact [G]; split G with cusp decay | Compact volume finite; model bound (1+h)^a(1+h)^(−a−2)=(1+h)^(−2); zero cusp gives 0 | Convergence route needs actual growth and decay inputs | Retained |
| regular-real-unitarity contract | Strict bound C; trivial highest weight | C>C false; C+1>C true; λ=0 gives λ+ρ=ρ≠0 | Deep range, not mere nontriviality of representation | Accepted gap retained |
| Compact branching/Peter–Weyl | SU₃ weight (2,1,0); trivial representation | Interlacing (1,1) yields SU₂ weight 0; trivial period ∫1=1 with normalized Haar | Nonzero invariant coefficient produces relative occurrence | Retained |


Pull request: #1736 (roadmap/exceptional-theta-correspondences-for-g2 at 036e66f)
