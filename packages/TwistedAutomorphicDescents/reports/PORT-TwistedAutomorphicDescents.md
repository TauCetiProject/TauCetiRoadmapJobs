# Port report: TwistedAutomorphicDescents

Branch: `roadmap/twisted-automorphic-descents`.
Head commit: `32ea3a89f27e7f381e7d2acb794edf17cb6a81a1`.
Base: `9c6e95d`, verified before creating the branch; initial worktree clean.
Only `TauCetiRoadmap/TwistedAutomorphicDescents/{README.md,Suggested.lean,metadata.toml}` is committed. The top-level roadmap list, manifest, toolchain and other folders are unchanged. No push, pull request, issue or comment was made.

## Validation

The targeted command was `lake build TauCetiRoadmap.TwistedAutomorphicDescents.Suggested` and exited 0. Exact outcome lines:

```text
✔ [8954/8954] Built TauCetiRoadmap.TwistedAutomorphicDescents.Suggested (2.2s)
Build completed successfully (8954 jobs).
```

Warning count: **0 total, 0 sorry warnings, 0 other warnings**. The empty acceptance module has no admitted declaration. Subsequent edits were README citation/prose changes; Suggested.lean and metadata.toml remain byte-for-byte identical to the accepted package.

Final push-gate summary:

```text
gate TwistedAutomorphicDescents: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The initial precommit gate had every content/dependency count at zero and rejected only the uncommitted folder as `dirty=1`. The full gate was therefore repeated on the clean commit; its final exit status is 0. `git diff --check` passed, and the worktree is clean. No Lean process remains running.

The separately requested movable dependency check returned:

```text
depcheck: 205 roadmaps, 1402 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line occurs. The citation resolver reports no unresolved roadmap citations and no unresolved names. Its external-library warning says it did not detect the Lake packages; the direct inspection of the actual pinned sources below supplies that verification instead.

## Draft pull request body

Build rational Bessel Fourier images of leading Eisenstein residues for special orthogonal and unitary groups over number fields. The roadmap develops the coordinate comparisons, all-place zeta integrals, residue-to-period reciprocity and critical descent needed to recover a prescribed cuspidal automorphic module, with its rational inner form and even-orthogonal outer orbit retained. It includes the period-to-central-value implication, the weak-Fourier-support converse, and regular and subregular recovery, keeping Generic Summand, the specified support propositions and exact local distinguished-member hypotheses explicit.

AI assistance: Codex (GPT-6) performed the port, source/ownership checks and author-side mathematical consistency audit.

## Supplier roadmaps and merge order

The following consumed roadmaps have open new-roadmap heads in the supplied index:

- GeometryOfNumbersAndQuadraticArithmetic, §2.9.
- SmoothRepresentationsOfLocalGroups, SR.0–SR.4, especially SR.2.2, SR.3.1 and SR.4.1–SR.4.4.
- AutomorphicFormsOnReductiveGroups, §§2.3, 2.6–2.7, 3.4–3.5 and 4.1–4.3.
- AutomorphicLFunctionsAndLocalFactors, AL.3–AL.4 and the exact subsections listed below.
- AutomorphicSpectralTheory, §0.15, §§1.1–1.5, 2.4–2.14 and 4.1–4.4.
- EndoscopicTransferAndUnitaryTraceComparison, §§11.2–11.4.
- ModularityAndLanglandsExtensions, §§3.3–3.4, 3.8, 3.12–3.18, 3.23–3.25 and 5.4.
- GanGrossPrasadUnitaryGroups, §§1.1–1.3, 2.1–2.6, 3.7, 3.9–3.11, 4.1–4.4 and 7.1.

LieHighestWeightPartII is an earlier supplier in the supplied order with readable accepted design targets N0/nilpotent-orbit and N2/classical-partitions in `packages/LieHighestWeightPartII/design/README.md`. It has no open roadmap head or packaged README in this index; those exact design targets were read, and are not asserted to be compiled library declarations. Its rational-orbit and dominance additions retain their explicit contract status.

ReductiveGroups, ReductiveGroupsPartII, OrthogonalSpinGroups, RepresentationTheory/ClassicalGroups and Completed RestrictedProducts were checked on main, not on revision heads. ClassicalGroupsPartII is mentioned solely to delimit ownership of finite-dimensional GSp branching; it is not a consumed descent theorem. No later roadmap was added as a supplier and no ownership was moved up the merge order.

## Acceptance file and signature audit

Nothing moved from Lean to README: the accepted Suggested.lean already follows the requested acceptance-test form. It has exactly one `import Mathlib`, the requested module docstring and namespace, **0 declarations**, and **23 documented unavailable headline groups**. The missing carriers are actual automorphic realizations, rational Fourier maps, analytic local categories, Eisenstein/Laurent operators, completed parameter factors, enhanced packets and discrete cuspidal Hilbert images. Searches of the pinned libraries by these objects found algebraic forms/representations, partitions, scalar meromorphy and classical modular Eisenstein series, not the carriers required to state those headlines. No scalar or free-predicate substitute was introduced.

The mechanical declaration scan for the `#check @name` audit is empty: there is no own declaration to put into a scratch signature file. Thus no declaration can lose a section hypothesis; no binder was changed. The targeted build elaborated the entire acceptance module. No unsupported Lean command or extra supplier import was needed.

## Supplier replacements and duplication sweep

The pinned revisions were checked against the manifest and the actual package HEADs: Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2`, Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`.

| Supplier declaration | Pinned source locator read | Contract verified |
| --- | --- | --- |
| Nat.Partition | Mathlib.Partition line 52, `Mathlib/Combinatorics/Enumerative/Partition/Basic.lean` | Positive multiset parts and sum; no flag or rational orbit. |
| Representation.IntertwiningMap | Mathlib.Intertwining line 36, `Mathlib/RepresentationTheory/Intertwining.lean` | Linear map and intertwining equation; no continuity/admissibility fields. |
| MeromorphicOn | Mathlib.Meromorphic line 494, `Mathlib/Analysis/Meromorphic/Basic.lean` | MeromorphicAt at each point of a set on the supplied normed carriers; no Eisenstein family. |
| TauCeti.RegularFormClass.wittDecomposition | TauCeti.WittDecomposition line 262, `TauCeti/LinearAlgebra/QuadraticForm/Witt/Decomposition.lean` | A class equals its Witt-index hyperbolic part plus anisotropic part; field and invertible 2 retained. |
| TauCeti.QuadraticMap.specialOrthogonalGroup | TauCeti.OrthogonalGroup line 395, `TauCeti/LinearAlgebra/QuadraticForm/OrthogonalGroup/Basic.lean` | `orthogonalGroup Q` intersected with the determinant kernel; the finite-free caveat is explicit in its native docstring. |
| TauCeti.QuadraticMap.det_reflection | TauCeti.OrthogonalGroup line 920, same file | Determinant −1 for finite free module and the section's invertible 2 and invertible vector norm. |
| QuadraticMap.IsometryEquiv.exists_extension | TauCeti.WittExtension line 50, `TauCeti/LinearAlgebra/QuadraticForm/Witt/Extension.lean` | Regular source subspace, finite-dimensional ambient over a field with invertible 2; ambient regularity is not required. |
| TauCeti.equivalent_of_equivalent_prod | TauCeti.WittCancellation line 196, `TauCeti/LinearAlgebra/QuadraticForm/Witt/Cancellation.lean` | Cancel a regular finite-dimensional summand; the uncancelled forms need not be regular. |

The native quadratic polar form was also read at Mathlib.QuadraticForm line 317 and the twice-associated-form identity at line 865 in `Mathlib/LinearAlgebra/QuadraticForm/Basic.lean`.

Eight legacy AutomorphicLFunctionsAndLocalFactors labels are absent at its supplied head. They were replaced everywhere by the actual numbered subsection and title, preserving the exact mathematics:

| Legacy locator | Resolved supplier subsection |
| --- | --- |
| whittaker-model | AL.3.1.2, The Whittaker realization |
| rs-global-poles | AL.3.6.1, Continuation and the Rankin–Selberg pole criterion |
| rs-global-functional-equation | AL.3.6.2, The global Rankin–Selberg functional equation |
| rs-boundary-nonvanishing | AL.3.6.3, Rankin–Selberg nonvanishing on the boundary |
| isobaric-strong-multiplicity-one | AL.3.7.2, Strong multiplicity one for isobaric sums |
| l-group-local-factor | AL.4.1.1, The unramified L-group Euler factor |
| local-parameter-comparison | AL.4.2.1, Transport of supplied local parameter comparisons |
| satake-factor-operations | AL.4.2.2, Functorial operations on unramified factors |

ReductiveGroupsPartII RG2.4.4's actual modulus theorem is nonarchimedean. Section 0.1 and Layer 0's Dependencies now cite that scope and AutomorphicFormsOnReductiveGroups §2.3's real modulus/normalized-induction comparison separately.

The required `roadmaps list`, `roadmaps grep` and `roadmaps show` tools were used against the index of all 435 open roadmap heads and every roadmap on main. Searches were by Bessel subgroups/models/periods, prescribed relevant embeddings, rational nilpotent/Fourier support, Hermitian Witt geometry, twisted Jacquet modules, Satake/Whittaker normalization, Eisenstein residues, reciprocal periods, generic summands and subregular recovery. Corresponding board-package and pinned-library searches were also made. The supplied sibling heads were covered by that index. Ownership against open roadmap pull requests **was checked**; no helper agents were used.

There are no additional mathematical duplication removals in this port. The accepted Scope and ownership already assigns quadratic geometry, unitary Bessel data/local uniqueness/periods, smooth categories, general factors, intertwiner holomorphy, packet carriers and classical GRS descent to their existing owners. These assignments remain there without duplicate targets or Lean restatements. The kept GRS targets compare the supplied descent with the specified rational residual coefficient. Orthogonal relevant frames, relative Bessel characters and orthogonal local Bessel uniqueness stay here because the searched owners provide general orthogonal geometry or unitary relative models, not these orthogonal relative constructions. Exceptional theta correspondences, ordinary Shintani transfer and geometric nilpotent classification do not own this rational Eisenstein-to-Bessel comparison. No own Lean name can collide with another roadmap: none is declared.

Public searches for Mathlib/Zulip work on automorphic Bessel descent found no specific alternative formalization to adopt. This search result is not used as proof of absence; native ownership conclusions above are limited to the pinned sources and the supplied roadmap index.

## Accepted notes and final upstream reread

All 49 target subsections, eight layers, API bullets, Checks, examples, source locators and supplier contracts were retained. Each definition's API still has at least three Checks, and every layer still ends with Examples and Dependencies. The report's arithmetic tests cover the additional propositions and local uniqueness target separately as well as all API bullets.

The nonblocking review note is already applied in the accepted source package: §5.5 Needs includes §1.3, §5.9 Needs includes §4.1, and §7.2 Needs includes §4.1, §1.4 and §5.6. These three repairs were verified and preserved rather than duplicated.

The whole README was read as an upstream specification and the final changed passages were reread against their supplier/source statements. Fixes made by this port:

1. Specify the quadratic normalization exactly: Q(v)=B(v,v), Q.polarBilin=2B, and the two-term hyperbolic values 2,2,1. The former phrase “includes the factor of 2” did not specify which carrier was doubled (JZ2020 line 408; Mathlib.QuadraticForm line 865).
2. Record the native determinant convention outside finite free modules in the Tau Ceti contract; retain finite-dimensional field spaces here (TauCeti.OrthogonalGroup line 391).
3. Add a two-eigenvalue Frobenius inversion Check: 20/49 versus 130/147 separates geometric eigenvalues from unconverted arithmetic eigenvalues. The ±1 witness alone could not detect inversion.
4. Split the finite-place and archimedean modulus suppliers in §0.1 and its dependencies, as detailed above.
5. Include the already specified type-pole/cross-factor contract in §4.2 Needs; its construction route uses completed type factors in addition to GL tensor poles.
6. State n≥1 explicitly in §6.5, matching its positive-rank GL_(2n) cuspidal input and relevant larger/smaller dimensions. Rank zero is not an input of that criterion.
7. Replace the eight stale L-function supplier labels by resolved section/title locators.

No asserted endpoint was narrowed, no new conjecture was made an axiom, and no new mathematical target was deleted.

## Sources and limitations

The nine legally cached PDF hashes match `packages/TwistedAutomorphicDescents/sources.toml`; their numbered text extractions were read at the cited locators. Source passages were not copied into the roadmap. The principal statements checked include JZ2020 line 694, line 715, line 743, line 848, line 856, line 867, line 1235, line 1566, line 1627, line 1670, line 1826, line 1869, line 1986, line 1998, line 2054, line 2067, line 2112, line 2296, line 2366, line 2386, line 2426, line 2503, line 2563, line 2702, line 2865, line 2976, line 2985, line 2991, line 3077, line 3118, line 3190, line 3217, line 3246 and line 3292. The proof steps concerning unitary labels, auxiliary induction and orbit raising were inspected in their own scope, not inferred from theorem titles.

Additional direct locators: Zhang2022 line 80 and line 166 (unramified scope and split GL branch); GGP2012 line 2287, line 2351 and line 2476–2490 (SO codimension one, auxiliary induction and the archimedean integral reduction); AGRS2010 line 50 and line 59; Waldspurger2012 line 44; SunZhu2012 line 66; JSZ2010 line 12 and line 24; JLXXZ2016 line 189 and line 1025 (cuspidal GL input, not arbitrary isobaric input); JLS2016 line 705 and line 855 (Proposition 8.4 and global special expansion for O/Sp/metaplectic groups, not unitary groups).

GRS2011 remains a secondary theorem locator through JZ2020. Its book proof text is uncertified and was not claimed to have been read. The conditional contracts remain the accepted required supplier extensions, not assertions that their broader statements are already proved in the cited supplier sections. In particular, AL.4.2.1 transports supplied ramified comparisons and does not discharge the signed-Asai supplement; ReductiveGroupsPartII RG2.4 does not itself supply Hermitian Witt theory. The fixed-point/free-Prop encodings prohibited by the brief were not introduced to hide either gap.

The 18 explicit contracts retained are `hermitian-witt-complements`, `rational-nilpotent-orbits`, `classical-dominance`, `twisted-jacquet-filtration`, `orthogonal-auxiliary-induction`, `spherical-whittaker-normalization`, `rational-fourier-support`, `bessel-restriction-growth`, `all-place-signed-factors`, `type-poles-and-cross-factor`, `isobaric-eisenstein-continuation`, `quasisplit-residual-packets-membership`, `residual-irreducibility`, `all-member-residual-support`, `coherent-packets-comparison`, `generic-discrete-member-cuspidality`, `standard-base-change-uniqueness`, `oriented-even-orthogonal-packets`. Generic Summand, weak support, distinct-isobaric anisotropic-SO₂ support, the exact distinguished-member premise outside the cited proved ranges, and the stated inner-form classification scope remain mathematically conditional. The Lean file cannot yet state the automorphic endpoints at these pins. These are disclosed limitations of the accepted roadmap, not unfinished port edits. Nothing else is unresolved. No suspicious source instruction was executed.

## Adversarial mathematics pass

This is a computed consistency and hypothesis audit, not a proof of the analytic theorems. The source comparisons and the accepted conditional contracts remain necessary. Rows using finite character sums, scalar Laurent families or finite-dimensional images test a convention or logical step; they do not substitute those carriers for automorphic representations in Suggested.lean. Characteristic zero, nondegenerate finite-dimensional forms, nontrivial generic characters, actual rational embeddings, positive inducing rank, the strict exponent bounds and the stated classification scope remain in force. Rings with nilpotents, inseparable extensions and positive-characteristic coefficient fields are outside those explicit hypotheses; zero spaces and trivial smaller groups are inside the geometric definitions.

### Conventions and supplier boundaries

| Statement | Instances tried | Computed values on the two sides | Result and change |
| --- | --- | --- | --- |
| Dimensions, rank and standard dual | SO₁, SO₅, U₅; nonsplit quasi-split SO₄ | N=0,4,5 respectively; SO₄ Witt index 1 versus label 2 | Retain distinct quantities; SO₁ cannot have a=N>j≥0. |
| Linear-first Hermitian form | h(x,y)=x conj(y) on ℂ | h(i,1)=i, h(1,i)=−i; conjugate-first reuse gives −i,i | Retain slot swap. |
| Quadratic versus bilinear normalization | B(e,f)=1, B(e,e)=B(f,f)=0 | Q(e+f)=2; Q.polarBilin(e,f)=2 versus B(e,f)=1 | Explicitly name B and Q and the factor 2. |
| Generic additive character | x=δ and x=1; split δ=(t,−t) | Tr(δ/δ)/2=1, Tr(1/δ)/2=0; split coefficients 1/(2t),−1/(2t) both nonzero | Retain nontrivial local factors; ψ=1 instead gives the constant term. |
| Inverse Fourier character | C₃, f supported on 0,1 with values 1,i, ψ(1)=ζ | unnormalized sum 1+iζ⁻¹; conjugate 1−iζ equals inverse-character sum for conj f | Retain inverse weight. |
| Bilinear versus Hermitian period | volume-one compact torus, χ²≠1 | P(χ,χ)=0; P(χ,χ∨)=Q(χ,χ)=1; second vector ×i gives i versus −i | Retain ordinary dual, distinct from conjugate self-duality. |
| Base change and split Levi | β(ϖ)=i; inducing pair (χ₁,χ₂)=(i,−i) | BC(β)=(i,−i), BC(β∨)=(−i,i); Levi acts by (i,i), determinant g/c(g) | Retain first-factor identification and adjoint inverse. |
| Induction modulus | upper GL₂ Borel, absolute value 4 | δ^(1/2)=2 versus inverse 1/2; at ϖ over ℚ₃, δ=1/3 | Finite-place supplier RG2.4 and real supplier §2.3 now distinguished. |
| Frobenius direction | geometric roots 2,3, q=7, s=1 | P=20/49, L=49/20; arithmetic roots used without inversion give P=130/147, L=147/130 | Add two-term inversion Check. |
| Positive-rank critical data | (d,m,j,a)=(5,2,1,4); junk a=1,j=2 | k=2, stabilizer 10−5=5; truncated k=0 gives m+1 rather than m+5 | Retain j<a, real positive-rank τ. |
| Central quotient | constant function on split SO₂; compact norm-one torus | ∫₁ᴿdt/t=log R→∞; compact probability mass 1 | Retain actual equivariance and verified Hilbert carrier. |
| Even-SO outer convention | fixed label a; exchanged labels a,b | distinct-orbit sizes 1,2; duplicating fixed a gives multiplicity 2 | Retain one copy per distinct representation class. |
| Universes and coefficient category | zero complex space; characteristic 2 negative control | Hom(0,ℂ)=0; b=−b implies b=0 over ℂ, but 1=−1 over 𝔽₂ | No positive-characteristic or topology-free extension. |
| Native partition supplier | d=5,ℓ=1; d=0 | parts 3,1,1 sum 5; partition 0 empty; proposed Bessel leading part 1 exceeds 0 | Native partition supplies no rational orbit. |
| Native algebraic intertwiner supplier | trivial action on ℂ, target sign −1 | equivariance gives b=−b, hence dimension 0; target trivial gives dimension 1 | Native IntertwiningMap has no continuity field. |
| Native meromorphy supplier | f(t)=1/t away from 0 | at t=1 value 1; at 0 pole order 1; no finite regular value | MeromorphicOn does not supply an Eisenstein family. |
| Native SO determinant convention | zero field module; a reflection on a line | determinant 1 on rank 0; reflection −1 on rank 1 | Explicit finite-dimensional-field restriction; native determinant convention outside finite free modules recorded. |
| Native Witt decomposition | hyperbolic plane and anisotropic ⟨1⟩ | ranks 2=2·1+0, 1=2·0+1 | Form classes do not specify an embedded complement. |
| Native Witt extension | line isometry inside q=2xy; vector (2,3/4) | diag(1/2,2) sends it to (1,3/2); Q=3 on both | No ambient regularity assumption added to supplier theorem. |
| Native cancellation | H⊥⟨1⟩ versus itself | 3−2=1 and remaining form ⟨1⟩ on both sides | Regular finite-dimensional cancelled summand retained. |
| Contract hermitian-witt-complements | hyperbolic ℂ-plane; zero complement | h(e+f)=2, h(e−f)=−2; rank 2−2=0 | Contract retained; no second carrier. |
| Contract rational-nilpotent-orbits | q=2xy, w=(1,±1/2) | norms ±1, perpendicular norms ∓1; common partition [3,1] | Rational labels cannot be erased. |
| Contract classical-dominance | SO₈ partitions [5,3], [4,4] | prefix sums (5,8)≥(4,8); [4,4] has two SO labels | Contract retains both labels. |
| Contract twisted-jacquet-filtration | trivial quotient and character −1 | relation v=−v, quotient dimension 0 over ℂ versus 1 for trivial character | Ordinary untwisted filtration is insufficient. |
| Contract orthogonal-auxiliary-induction | W=0,t=1; hyperbolic W,t=1 | SO(H)=GL₁ induction dimension 1; SO₄ Levi GL₁² dimension 2, Borel rather than maximal parabolic | Accepted auxiliary generality retained. |
| Contract spherical-whittaker-normalization | spherical split rank one, q=2,3 | Z=(1−q⁻²)/(1−q⁻¹)²=3,2 | Functional mass choices cannot be omitted. |
| Contract rational-fourier-support | zero nilpotent and zero realization | partition [1^d] versus support ∅ for zero realization | Geometry and nonzero Fourier support remain distinct. |
| Contract bessel-restriction-growth | split SO₂, g=1, f=1 | integral truncated at R is log R, not a finite period | Explicit integrability domain retained. |
| Contract all-place-signed-factors | roots 1,−1; α=1/3,β=1/4 | exterior weight −1 versus symmetric 1,−1,1; shifted arguments 5/12,11/12,4/3 | Signed/all-place extension remains explicit. |
| Contract type-poles-and-cross-factor | two type poles, cross 3 or t | 3t⁻² has leading coefficient 3; t⁻¹ has order-two coefficient 0 | Required explicitly in §4.2 Needs. |
| Contract isobaric-eisenstein-continuation | regular scalar family E=1, split-torus test | E(0)=1 while regularized torus integral behaves −2/u | Noncuspidal continuation retains its own growth domain. |
| Contract quasisplit-residual-packets-membership | a=6,W dimension 3 | ambient form rank 15 versus standard rank 14 | Parameter construction alone is no membership proof. |
| Contract residual-irreducibility | one line and sum of two lines | endomorphism dimensions 1 versus 4; repeated image multiplicity 1 versus 2 | Separate irreducibility obligation retained. |
| Contract all-member-residual-support | members Σ₁,Σ₂ with indicators 1,0 | knowing first indicator 1 leaves second 0 possible | No generalization from one residual member. |
| Contract coherent-packets-comparison | local signs with one minus sign | product −1 versus coherence requirement +1 | Local tuple not a global witness. |
| Contract generic-discrete-member-cuspidality | ν₁ versus ν₂ SL₂ factors | dimensions 1 versus 2; ν₂ excludes genericity | Generic theorem not applied to residual parameter. |
| Contract standard-base-change-uniqueness | reciprocal roots 2,1/2 | standard determinant polynomial 1−(5/2)T+T² before/after outer exchange | Standard target does not determine an oriented source. |
| Contract oriented-even-orthogonal-packets | two places admitting two outer labels each | four independent tuples; one global orientation and its conjugate yield two | Coherence condition retained, no independent local choice. |

### Layer targets

| Statement | Instances tried | Computed values on the two sides | Result and change |
| --- | --- | --- | --- |
| §0.1 Coordinate comparison and frames | split SO₇,j=2; rank-zero W | complete-flag Levi dimension 1+1+3=5 versus plane Levi 4+3=7; W=0,V=line gives 1=0+1 | Retain both parabolics and actual frame. |
| §0.2 Partition definition | d=5,ℓ=1; d=3,ℓ=0; d=4,ℓ=2 | [3,1,1], sum 5,length 3; [1,1,1]; proposed leading 5>4 | Valid-index restriction retained. |
| §0.3 Rational orbit and character | δ,1; real hyperbolic middle space | trace coordinates 1,0; norms ±1 with same [3,1] | Retain rational orbit, not geometric partition alone. |
| §0.4 Anisotropic normal form | w=(2,3/4),y=(1,3/2) for Q=2xy | Q(w)=Q(y)=3; diag(1/2,2)w=y, determinant 1; y₁ has norm 1≠3 | No square-root choice; value preserved. |
| §0.5 Stabilizer and Witt index | H; anisotropic real kernel ⟨1⟩ with κ=±1 | H minus line has index 0; ⟨1,−1⟩ index 1 versus ⟨1,1⟩ index 0 | Sign and represented-value test retained. |
| §0.6 Ambient datum | (d,m,j,a)=(5,2,1,4); a=j+1=2,m=2 | ambient 10,k=2,stabilizer 5; k=0,ambient 6=d+1 | Prescribed embedding and one outer twist retained. |
| §1.1 Fourier image and periods | projection T(x,y)=x; zero T; compact torus χ | T(3,0)=3; T(0,1)=0; P(χ,χ)=0,Q(χ,χ)=1 | Image and dual convention retained. |
| §1.1 Image/Hilbert comparison | finite sequences in ℓ²; split torus constant | x_n=2⁻ⁿ,n≥1 has norm² 1/3, first-coordinate tail 1/12; split constant has norm ∞ | Smooth image distinguished from closure and continuous spectral evaluation. |
| §1.2 First occurrence | supported indices {0,2}; zero image | max=2; indicators at 2,3 are 1,0; zero support ∅ has no max | Nonzero realization retained. |
| §1.3 First-occurrence cuspidality | higher coefficient 0; torus | every higher indicator 0; torus proper-parabolic count 0 but constant norm ∞ | Constant-term vanishing does not supply L². |
| §1.4 Orthogonal local uniqueness | V=k,W=0; sign −1 on N; double trivial representation | Hom dimensions 1,0,2 respectively | Single irreducible and SO reduction retained. |
| §1.4 Global multiplicity-free image | σ⊕ρ with σ≠ρ; σ⊕σ | Hom multiplicities (1,1) versus 2 | Applies to image of one irreducible realization. |
| §1.5 Generic Summand proposition | compact torus χ with probability measure | witness Q(χ,χ)=1; pairing with distinct χ² gives 0 | Existential witness, no generic-global-period axiom. |
| §2.1 Zeta integral | section ×2, cusp vector ×3; N=1 | Z scales by 6; index-zero Fourier integral equals restriction | Bilinear convention and trivial split center retained. |
| §2.2 Functional factorization | two local values 2,3; global value 30 | scalar c=5 gives 30=5·2·3, not 6 | Normalizing scalar retained. |
| §2.3 Relative Bruhat cells | a=1,r_W=0,ℓ=0 or 1 | coarse lists {(0,1)} and {(0,0),(1,1)} | Residual rational and type-D labels still required. |
| §2.4 Open-cell reduction | same boundary indices; C₂ character | open β=1,0; nontrivial average (1−1)/2=0, trivial average 1 | Stops before inner-period identification. |
| §2.5 Induction transform | β=1; two local scalar transforms 2,3 | inner index β−1=0; tensor product value 6 | Representation-valued target and modulus retained. |
| §2.6 Inner-period identification | (a,ℓ)=(3,2),(2,2); label swap | indices 0,0 on different groups; σ₁→σ₂→σ₁ | Twist applied once, with actual stabilizer isometry. |
| §3.1 Local zeta integral | q=2,3 rank-one fixture; functional ×2 | values 3,2; first becomes 6 after rescaling | Depends on inner functional normalization. |
| §3.2 Euler product | local values 2,3, scalar 5; zero inner functional | 30=5·2·3; zero case gives Z=0 | Zero case not normalized by division. |
| §3.3 Local ratio | split U(1,1),T=1/2; twist η(ϖ)=i | unchanged ratio 3; wrong numerator dual yields 1/3 | Bilinear numerator retained. |
| §3.3 Cross-factor identity | split U₃,(χ₁,χ₂,μ)=(2,3,5) | roots 2/5,15; undualized alternative 10,3/5 | τ×φ_σ∨ retained. |
| §3.4 Spherical calculation | q=3,T=1/3,trivial roots | (1−1/9)/(1−1/3)²=2; twisted wrong dual gives 1/2 | Spherical hypothesis and all-place scope distinguished. |
| §3.5 Shifted regularity | α=1/3,β=1/4; boundary α=β=1/2 | 5/12,11/12,4/3 positive; numerator boundary 0 | Strict inequalities retained. |
| §3.6 Local nonvanishing | b(v,w)=2 or 0; actual orthogonal matrices | Whittaker value 1/2 gives 1; 0 has no inverse; corrected block −1/2=1/2−1 | Corrected YY′ term retained with genuine group witness. |
| §4.1 Conjugation identities | compact character χ; second vector ×i | Q(χ,χ)=P(χ,χ∨)=1; P scales i,Q scales −i | Ordinary dual retained. |
| §4.1 Self-pair transport | one symplectic GL₂ block in SO₅ standard rank 4 | pole order 1=r although a=2≠N=4 | a=N needed to force full parameter equality. |
| §4.1 Output/recovery transport | split U₁ character ξ(ϖ)=i | output (i,−i)=τ; test ξ⁻¹ has (−i,i)=τ∨ | Recover π by testing against π∨. |
| §4.2 Residue definition | 2t⁻²+3t⁻¹+5; 3t⁻¹ | order-two coefficients 2,0 | Add type-pole contract to Needs. |
| §4.3 Pole criterion | type t⁻²,cross 3 or t | leading coefficients 3 or 0; orders 2 or 1 | Nonzero section quantified existentially. |
| §4.4 Bad-place product | Z=t⁻¹,ℒ=2t⁻¹; empty S | quotient regular value 1/2; empty product 1 | Germ quotient, no pointwise 0/0. |
| §4.5 Critical holomorphy | Z=6t⁻²+3t⁻¹,ℒ=2t⁻² | quotient 3+(3/2)t, value 3 | Exact self-pair pole order retained. |
| §4.6 Reciprocal nonvanishing | c=2,Z*_S=3,leading ℒ=5 | leading period 30; any zero factor gives 0 | Reverse direction uses self-pair; forward unfolding does not. |
| §4.7 Period to central value | τ=φ_π∨; nontrivial χ² | τχ weight 1 versus χ²≠1; dual complete tensor changes by nonzero ε at center | No false equality with dualizing only one parameter. |
| §5.1 Residual parameter | a=6,W=SO₃; ν₂ versus ν₁⊕ν₁ | standard rank 14, form rank 15; SL₂ weights z,z⁻¹ versus 1,1 | Dimension alone insufficient. |
| §5.2 Residual square integrability | exponent λ=−1/2 or 0 | ∫₁∞t^(2λ)dt/t=1 or ∞ | Negative-exponent criterion separate from Laurent coefficient. |
| §5.2 Classification premise | one member with multiplicity 2 | two spectral copies versus one transfer label | Scope and support for each member retained. |
| §5.3 Critical index | (5,2,1,4); (6,1,2,6) | k=2,3; [5,1⁵] sum 10 and [7,1⁶] sum 13 | Native subtraction only within j<a. |
| §5.4 Above-critical vanishing | trivial quotient with ψ(n)=−1 | v=−v→v=0 over ℂ, versus no constraint over 𝔽₂ | Character and coefficient hypotheses retained. |
| §5.5 Critical cuspidality | zero coefficient of nonzero source | coefficient 0 and every constant term 0, source vector may have norm 1 | No critical nonvanishing inferred. |
| §5.6 Outer stability | w↦−w and compensating flag sign | character multiplier (−1)(−1)=1; one or two distinct labels | Vector fixation distinguished from line fixation. |
| §5.7 Good-place parameter | a=6,m=1,k=3 or 2; unitary weights 2,3 | output ranks 6 or 8; polynomial 1−5T+6T² versus degree 1 if last root omitted | Corrected index and full weight list retained. |
| §5.8 Critical structure | fixed outer class; two classes; zero image | multiplicities 1; two summands each 1; zero summands | Irreducible source or separate comparison required. |
| §5.9 Descent definition | R=0; rank-10 ambient; split SO₂ test | D=0; critical [5,1⁵] stabilizer 5; χ_v⊞χ_v⁻¹ equal two quadratic blocks forces η₁,v=η₂,v | No nonvanishing built into definition. |
| §6.1 Support partitions | a=4,m=2; a=6,m=1; a=1,m=0 | sums 10,13,2 for p and p¹; last case p=p¹=[1,1] | U₁ boundary retained. |
| §6.1 Upper-support proposition | empty support | universal bound true, critical membership false | Distinct from weak nonvanishing. |
| §6.2 Weak-support proposition | two candidate members, indicators (1,0) | existential 1, universal 0 | Witness must be global and coherent. |
| §6.3 Cuspidal support witness | n=1,anisotropic W dimension 2 | ambient 6,critical [3,1³] sum 6; real signatures (4,2),(2,4),(3,3) | Cuspidal τ scope retained. |
| §6.3 Distinct-isobaric proposition | n=2, two GL₂ blocks; n=1 | degrees 2+2=4,critical [5,1⁵] sum 10; two positive even degrees cannot sum to 2 | General isobaric assertion remains explicit proposition. |
| §6.4 Central value to period | dual both tensor factors; bad coherence tuple | χ∨μ∨=c(χμ), same complete L; product of local signs −1≠+1 | Coherent support witness retained. |
| §6.5 Orthogonal–torus criterion | n=1; n=0 negative control | GL standard rank 2 versus rank 0; anisotropic torus mass 1 versus split norm ∞ | Explicit n≥1 added; simple/isobaric cases distinguished. |
| §7.1 Recovery proposition | fixed or two-element outer orbit | direct-sum ranks 1 or 2; fixed class doubled gives wrong rank 2 | Concrete rational stabilizer required. |
| §7.2 Recovery theorem | one distinguished label or two; two-place outer choice | local counts 1 or 2; independent outer tuples 4 versus coherent pair 2 | Exact local and global-orientation hypotheses retained. |
| §7.3 Regular recovery | U₄,U₃,SO₄,SO₅ | U₄ [4] power ranks 3,2,1,0 versus [3,1] ranks 2,1,0,0; smaller U₁ and ambient 9; U₃ smaller 0; SO₄ [3,1],SO₅ [5] | Even-unitary character not replaced by empty datum. |
| §7.4 Subregular summand | SO₆,U₅; q=2xy+z², w=e±f/2 | SO₆ [3,3]→[3,1³], smaller 3; U₅ [4,1]→[3,1,1], smaller 2; norms ±1 give split ⟨1,−1⟩ versus anisotropic ⟨1,1⟩ | Odd-SO anisotropic-datum hypothesis retained. |
| §7.5 Subregular recovery | SO₈,U₅ | prefixes (5,8)≥(4,8); (4,5)≥(3,5); [5] strictly above [4,1] | Maximality, not support membership alone. |

### Definition APIs, one row per bullet

API numbers below are the order of the prose bullets in the named subsection; they are report locators, not extra Lean declarations.

| Statement | Instances tried | Computed values on the two sides | Result and change |
| --- | --- | --- | --- |
| §0.1 frame API 1 | W rank 2 in V rank 5 | complement 3=2·1+1 before/after forgetting | Retain embedding. |
| §0.1 frame API 2 | W=0, scalar extension ℚ→ℚ₂ | 0 maps to 0; Q(1,1/2)=1 both fields | Retain zero rank. |
| §0.1 frame API 3 | identity versus coordinate swap | e₁ images (1,0,0) versus (0,0,1) | Dimension equality is insufficient. |
| §0.1 datum API 1 | (d,r)=(4,2),(5,2),(3,0) | valid indices {0,1},{0,1,2},{0} | Nonzero middle dimension retained. |
| §0.1 datum API 2 | −identity, ℚ→ℚ₃ | index 1 remains 1; norm 2 remains 2 | Transport full datum. |
| §0.1 datum API 3 | split SO₇,ℓ=2 | Levi dimension 5, plane-stabilizer Levi dimension 7 | Complete flag retained. |
| §0.2 API 1 | d=5,ℓ=1 | parts {3,1,1} on both sides | Retain. |
| §0.2 API 2 | same | sum 3+1+1=5 | Retain. |
| §0.2 API 3 | same | cardinal 3=5−2 | Retain. |
| §0.2 API 4 | d=3,ℓ=0 | [1³] versus chosen subgroup on dimension 2 | Zero orbit not full Bessel stabilizer. |
| §0.3 API 1 | central −1 in U(V) | conjugation multiplier 1; flag-vector multiplier −1 | Pointwise frame stabilizer retained. |
| §0.3 API 2 | character value i, transport twice | i→−i→i | Character transport required. |
| §0.3 API 3 | tδ locally and globally | Tr(tδ/δ)/2=t in both | Retain localized additive data. |
| §0.6 API 1 | d=5,m=2 | stabilizer dimension 5, marked W dimension 2 | Preserve marked inclusion. |
| §0.6 API 2 | Q=2xy, ℚ→ℚ₂ | Q(1,1/2)=1 both fields | Retain specified isometry. |
| §0.6 API 3 | twist exchanging σ₁,σ₂ | σ₁→σ₂→σ₁ | Apply once to inducing datum. |
| §1.1 API 1 | T(x,y)=x | T(3,0)=3; range ℂ | Onto image. |
| §1.1 API 2 | right C₄ character, χ(g)=i; S₃ order test | B(R(g)χ)(1)=i=R(g)B(χ)(1); ordered S₃ values 1 versus 2 | Right action fixed. |
| §1.1 API 3 | zero T; T(x,y)=x | both basis images 0 iff T=0; T(1,0)=1 otherwise | Both directions tested. |
| §1.1 API 4 | finite sequences in ℓ² | vector norm² 1/3; first-tail norm² 1/12→0 under further truncation | Closure distinguished from algebraic image. |
| §1.1 API 5 | compact χ; vectors ×2,×i | Q(χ,χ)=P(χ,χ∨)=1; P×2i,Q×(−2i); simultaneous translate χ(g)χ(g)⁻¹=1 | Bilinear and Hermitian laws retained. |
| §1.2 API 1 | indices {0,2} | maximum 2 has indicator 1 | Retain witness. |
| §1.2 API 2 | same | indicator at 3 is 0 | Universal higher vanishing. |
| §1.2 API 3 | identical embedding; distinct copies | {0,2}→{0,2}; functional on copies gives 1 versus 0 | Retain realization. |
| §1.5 API 1 | normalized compact character | witness Q=1≠0 | No axiom. |
| §1.5 API 2 | characters χ and χ² distinct | orthogonal projections coefficients 1 and 0 | Verified discrete carrier required. |
| §1.5 API 3 | χ²≠1 | Q(χ,χ)=P(χ,χ∨)=1; P(χ,χ)=0 | Dual second argument retained. |
| §2.1 API 1 | section ×2, vector ×3 | Z→6Z | Bilinear. |
| §2.1 API 2 | unitary scalar i and dual −i | product 1 versus i²=−1 | Correct Hom dual. |
| §2.1 API 3 | scalar pole t⁻¹ | order 1 at 0; regular value 1 at t=1 | Meromorphic, not everywhere regular. |
| §2.5 API 1 | character i and inverse −i | product 1 versus wrong chirality −1 | Correct character in target. |
| §2.5 API 2 | local transforms 2 and 3 | global pure tensor 6=2·3 | Compatible measures required. |
| §2.5 API 3 | open-cell support mass 1/2, value 2 | integral 1; omitted modulus factor 2 would change it | Modulus retained. |
| §3.1 API 1 | section ×2, vector ×3, functional ×2 | Z scales 6 then 12 | Normalization dependence retained. |
| §3.1 API 2 | quotient character i | i·(−i)=1 versus i²=−1 | Quotient invariance. |
| §3.1 API 3 | Z=t⁻¹ | pole order 1 at 0, value 1 at 1 | Continuation not global holomorphy. |
| §3.3 API 1 | roots 1,−1,T=1/2 | determinant 3/4,L=4/3 | Satake comparison. |
| §3.3 API 2 | roots 2,3 | standard polynomial 1−5T+6T²; exterior cross weight 6 | Cross terms retained. |
| §3.3 API 3 | roots 2,1/2 exchanged | polynomial 1−(5/2)T+T² on both sides | Outer invariance of standard factor. |
| §3.3 API 4 | η(ϖ)=i split U(1,1) | ratio 3 before/after simultaneous twist; wrong dual gives 1/3 | Correct determinant twist. |
| §4.2 API 1 | 2t⁻²+3t⁻¹+5 | order-two coefficient 2 | One Laurent variable. |
| §4.2 API 2 | same family ×(−1) | coefficient −2=(−1)·2 | Equivariance. |
| §4.2 API 3 | 3t⁻¹, requested order 2 | coefficient 0 | Zero image permitted. |
| §4.2 API 4 | two embeddings of one line | coordinate functional values 1,0 | Actual realization retained. |
| §4.4 API 1 | c=2,Z*_S=3,ℒ-leading 5 | leading global value 30 | Scalar retained. |
| §4.4 API 2 | add normalized spherical place | 3·1=3 | Independence of S. |
| §4.4 API 3 | t⁻¹/(2t⁻¹) | regular value 1/2, not pointwise ∞/∞ | Germ quotient. |
| §5.1 API 1 | a=6,W=SO₃ | 2·6+2=14 versus form 15 | Correct standard rank. |
| §5.1 API 2 | symmetric or alternating τ form with ν₂ | (+1)(−1)=−1; (−1)(−1)=+1 | Correct parity reversal. |
| §5.1 API 3 | exchange reciprocal roots 2,1/2 | determinant 1→1 | Determinant data retained. |
| §5.2 interface 1 | same transfer on two inner forms | real split ranks 0 and 1 remain different | Rational label retained. |
| §5.2 interface 2 | multiplicity 2 of one member | spectrum two copies, one parameter label | Whole-spectrum multiplicity retained. |
| §5.2 interface 3 | dual/outer involution twice | multiplicity 1→1→1; labels a→b→a | No collapse of inner forms. |
| §5.3 API 1 | a=4,m=2,j=1,k=2 | 10−4−1=5 | Dimension identity. |
| §5.3 API 2 | same | [5,1⁵] sum 10 | Partition identity. |
| §5.3 API 3 | a=j+1=2,j=1,m=2 | k=0; ambient 6=d+1 | Index-zero boundary. |
| §5.9 API 1 | coefficient T(a,b)=a | T(1,0)=1 belongs to range | Image definition. |
| §5.9 API 2 | zero map on two generators | images 0,0 iff all images 0 | Both directions. |
| §5.9 API 3 | specified involution and character | i→−i→i, square identity | Rational transport retained. |
| §5.9 API 4 | zero image and split constant | zero constant term 0; split constant norm ∞ | Verified cuspidal carrier required. |
| §6.1 API 1 | a=4,m=2 and a=6,m=1 | both p,p¹ sums 10 and 13 | Retain. |
| §6.1 API 2 | a=4,m=2,j=1,k=2 | p¹=[5,1⁵]=[2k+1,1^d] | Critical comparison. |
| §6.1 API 3 | empty support | upper proposition true=1; membership false=0 | Quantifiers distinguished. |
| §6.2 API 1 | member indicators (1,0) | first member witnesses coefficient 1 | Existential. |
| §6.2 API 2 | [5,1⁵] witness | stabilizer 10−5=5; transported coefficient nonzero | Actual stabilizer retained. |
| §6.2 API 3 | same indicators | exists=1, forall=0 | No universal claim. |
| §6.3 isobaric API 1 | n=2, coefficient 1 | [5,1⁵] sum 10, nonzero value 1 | Witness needed, not inferred. |
| §6.3 isobaric API 2 | same | stabilizer 10−5=5=2n+1 | Rational form part of witness. |
| §6.3 isobaric API 3 | fixed σ, nonzero critical vector | weak-support indicator 1 | No extension from cuspidal τ alone. |
| §7.1 API 1 | two outer labels with marked stabilizer | sum rank 2; wrong stabilizer tag differs | Concrete isomorphism required. |
| §7.1 API 2 | outer-fixed a | orbit size 1, not 2 | Single copy. |
| §7.1 API 3 | a≠b, involution exchange | orbit size 2; lone a has size 1 | Both distinct copies. |
| §7.2 local API 1 | distinguished label set {a} | nonzero-model count 1 | Existence retained. |
| §7.2 local API 2 | candidate set {a,b} | count 2 contradicts unique count 1 | Exact uniqueness retained. |
| §7.2 local API 3 | transported labels a↔b | {a}→{b}→{a}, cardinal 1 throughout | Enhancement/character transport retained. |

### Worked examples and exhaustive finite arithmetic

| Statement | Instances tried | Computed values on the two sides | Result and change |
| --- | --- | --- | --- |
| Layer 0 examples | (d,m,j,a)=(5,2,1,4) | ambient 10,index 2,partition [5,1⁵],stabilizer 5 | Agrees with §0.6. |
| Layer 1 examples | index support {0,2}; compact torus characters | max 2; Q=1,P=0 | Agrees with §§1.2,1.5. |
| Layer 2 examples | (a,ℓ)=(1,0),(1,1),r_W=0 | lists {(0,1)},{(0,0),(1,1)}; open β=1,0 | Agrees with §§2.3–2.4. |
| Layer 3 examples | roots 1,−1 | exterior weight −1; symmetric weights 1,−1,1 | Distinct factors. |
| Layer 4 examples | Laurent coefficients A=2 or 0; product 2·3·5 | leading value 2 or 0; period 30 | Agrees with §§4.2,4.6. |
| Layer 5 examples | a=6,W=SO₃; critical d=6,m=1 | form/standard dimensions 15/14; partition sum 13 | Agrees with §§5.1,5.3. |
| Layer 6 examples | (a,m)=(4,2),(6,1); empty support | totals 10,13; universal/existential 1/0 | Agrees with §§6.1–6.2. |
| Layer 7 examples | U₄,SO₆,U₅ | ambient U₄ rank 9; smaller SO₃ rank 3,U₂ rank 2 | Agrees with §§7.3–7.4. |
| All Bessel partition identities | 1≤d≤40, every valid ℓ | sum d; length d−2ℓ; every part≥1 | Exact integer assertions passed. |
| All critical dimension/support identities | 839 valid tuples, d≤40, three branches | critical dimension d and both support totals 2a+m in every tuple | Exact integer assertions passed. |
| Equality p=p¹ in those tuples | all 839 tuples | only (SO-even output,d,m,j,a,k)=(2,1,0,2,1), and U₁ tuple (1,0,0,1,0) | Matches the two boundary cases in §6.1. |
| Orthogonal subregular dominance | through n=6, even n≥3 and odd n≥1 | 55 even and 76 odd nonregular admissible partitions dominated | Both very-even labels have same tested partition; labels retained separately. |
| Unitary subregular dominance | through n=6 | 153 even-rank and 206 odd-rank nonregular partitions dominated | No inferred Fourier nonvanishing. |
| Orthogonal open-cell block witness | exact rational p,u,J,w of §3.6 | pᵀJp=uᵀJu=J; det p=det u=1; puw=w; CE₂=−1/2=1/2−1 | All matrix equalities recomputed exactly. |

For the nonabelian right-action witness, take g=(12), h=(23) in S₃ and f((123))=1, f((132))=2. With right action R(g)f(x)=f(xg), R(g)f(h)=2, whereas the left-ordered value f(gh)=1. This fixes the order rather than relying on an abelian character alone.


Pull request: #1758 (roadmap/twisted-automorphic-descents at 32ea3a8)
