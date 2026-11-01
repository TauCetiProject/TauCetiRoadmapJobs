# Review of KTheoryFiniteLocalFields (pull request #1281 at 3c5b201)

**Verdict:** accepted

🤖 AI-assisted incremental re-review of 93 changed lines since afe02e8. There are no remaining findings. This verdict means ready for human final approval; it does not approve or merge the pull request.

## Previous findings

- R01 — repaired: `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:362`–368 base-changes the entire Lang diagram to the algebraic closure, specifies the q-power endomorphism and tests geometric H¹=0 against arithmetic H¹=𝔽₂.
- R02 — repaired: `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:322`–338 constructs the full coefficient determinant through the graded Picard spectrum, includes the Picard-torsion quotient and both coefficient maps, and restricts Weibel's degree-one product input to the integral quotient.
- R03 — repaired: `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:13`, 29–41 and 1711 retain the series groups and assign the coordinate comparison to QWittVectors §1.4a. Section 5.16a and its Lean docstring entry are gone.
- R04 — repaired: `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:93` cites ArithmeticGaloisDuality §R02.3.1's actual unramified inflation subgroup, with finite-place and trivial-inertia hypotheses, instead of the absent declaration name.
- R05 — repaired: `TauCetiRoadmap/KTheoryFiniteLocalFields/Suggested.lean:39`, 49, 86 and 98 introduce the four required layer sections. The eight declarations and their mathematical types are unchanged.

## Verified sound

**Scope of this round.** Reviewed the changed passages, the targets and suppliers they use, and their dependent coefficient, Lang, relative-Witt and unramified interfaces. The unchanged mathematics is carried forward explicitly from [the previous report](PRREVIEW-KTheoryFiniteLocalFields~1.md), rather than represented as a second full review. Read the repository README's normative writing checklist and CONTRIBUTING; consulted the main-branch SchemeAndStackFoundations, GeneralizedCohomology and ClassicalArithmeticCompletion forms. No PR file was edited, and the diff outside this folder is empty.

**Gate and elaboration.** The worker's exact-head gate reports all checks, including the targeted build, passing. The independently rerun gate returned:

```text
gate KTheoryFiniteLocalFields: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The required independent dependency check returned:

```text
depcheck: 205 roadmaps, 1487 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line was emitted. `lake build TauCetiRoadmap.KTheoryFiniteLocalFields.Suggested` and direct `lake env lean` both succeeded, each with only five `sorry` warnings. A scratch copy with `#check @name` for all eight declarations also succeeded: the three definitions and five theorems have the expected binders, including completeness, perfect residue field, characteristic and nonarchimedean local-field hypotheses. No type changed. A separate scratch probe tried `rfl`, `infer_instance` and `simp` as individual closing tactics on each of the five theorems; none closed. The previous one-library-theorem search remains applicable to these unchanged statements. There is no padding, sorry'd data or substitute headline. The exact dependency-checkout limitation of the live elaboration is recorded under Not verifiable.

**Headline inventory.** The end results remain completed KU refinements; normalized finite-field operations and Chern comparison; henselian rigidity/localization; full norm residue and Moore structure; characteristic-p Milnor torsion/differential symbols; motivic comparison and field descent; Cohen–Witt coefficients; logarithmic THH/TR/TC and Witt–Bott comparison; nilpotent relative K-theory; completed local groups, integral divisible ranks and completion kernels; local Milnor cardinality/divisibility; odd-prime homotopy splitting; characteristic-two/dyadic hermitian comparisons; and arithmetic transfer/completion/étale compatibility. The full degree-one coefficient Chern comparison is now explicitly named. The coordinate big Witt comparison belongs to QWittVectors and is no longer a headline here.

The five statable headlines remain `milnor_no_p_torsion`, `moore_localK2`, `exists_wittVector_coefficientEmbedding`, `localMilnor_uncountable` and `localMilnor_uniqueDivisible`. The module docstring names the missing spectral, motivic, logarithmic and hermitian carriers for the others. In particular, ordinary module Picard groups and field Kummer cohomology do not supply the graded Picard spectrum, coefficient K-spectrum and scheme cohomology needed for the new comparison. Removing the duplicated Witt comparison has left no dangling §5.16a or `bigWittPowerSeriesComparison` reference in either reviewed file.

**Resolved suppliers and ownership.** The changed citation families resolve as follows. Line numbers for supplier text exclude the one-line header inserted by `roadmaps show`.

| File and locator | Contract verified and consequence |
|---|---|
| `TauCetiRoadmap/KTheoryLowDegrees/README.md:1698`, §14.1; §14.2 at 1737; §14.3 at 1758 | Graded invertible sheaves, signed symmetry, π₀=Pic×locally constant ℤ, π₁=units, and the natural spectral determinant with ordinary determinant on loops. The rank function is not replaced by a single integer on disconnected schemes. |
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:3656`, §2.11, on main | Both Kummer sequences and the line-bundle/trivialized-power description are already stated. The étale comparison requires invertible modulus; no unowned scheme Kummer prerequisite has been introduced. |
| `TauCetiRoadmap/ArithmeticGaloisDuality/README.md:2008`, within §R02.3.1 | Inflation image at a finite place for inertia-trivial coefficients; H¹_un=M/(Frob−1)M for finite M. This is the actual mathematical supplier formerly cited with a stale identifier. |
| `TauCetiRoadmap/QWittVectors/README.md:87` and 229, §§1.3–1.4a | Imports only series groups from this roadmap and constructs coordinate Witt rings and their γ comparison itself. This confirms the revised outbound contract, including truncation, substitution and inverse-factor convention. |
| `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:211`, 322, 1204 and 1651 | Coefficient cofibers, the new determinant adapter, the retained nilpotent quotient calculation and unramified Chern naturality agree. The new adapter neither requires local rigidity to construct itself nor supplies a coefficient product beyond Weibel's hypotheses. |

The order positions are KTheoryLowDegrees 35, ArithmeticGaloisDuality 42, this roadmap 67 and QWittVectors 186; SchemeAndStackFoundations is on main. QWittVectors is mentioned only as an owner/consumer, not as a prerequisite. No ownership was moved to a later supplier. `roadmaps grep` and `roadmaps show`, plus searches of board packages and the supplied open-work context, locate the graded determinant with KTheoryLowDegrees and the coordinate comparison with QWittVectors. The coefficient-cofiber adapter is the additional construction owned here. Related HabiroNumberFields, PadicHodgeRegulators and SymplecticReidemeisterTorsionModSquares contracts consume this roadmap's Chern outputs. No changed Lean declaration introduces a name collision: no declaration was added or renamed. The seven scanner leads include source abbreviations, roadmap-supplied AInf objects and the local `maxDivisible`; the repair adds no unresolved citation lead.

**Library checks at the requested revisions.** Manifest revisions are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Relevant Mathlib files were compared with those commit objects; the following files are unchanged in the available checkout. The Tau Ceti Kummer file was also read directly from its manifest commit.

| Pinned file and line | Opened declaration; what it does and does not provide |
|---|---|
| `Mathlib/RingTheory/PicardGroup.lean:77`, 429 | `Module.Invertible` requires bijectivity of the dual contraction; `CommRing.Pic` is invertible modules up to isomorphism. It retains neither scalar automorphism spaces nor a graded Picard spectrum. |
| `Mathlib/RingTheory/PowerSeries/Inverse.lean:109` | `PowerSeries.isUnit_iff_constantCoeff` proves constant-one formal series are units. No torsion-free coefficient hypothesis is required. |
| `Mathlib/RingTheory/PowerSeries/Substitution.lean:157`, 170, 211, 258, 274 | `subst`, `substAlgHom`, `subst_mul`, `coeff_subst_X_pow`, `constantCoeff_subst_X_pow`: power substitution has the required multiplication and coefficient laws; the power-law theorem explicitly needs nonzero exponent. These are the underlying native operations, not a second coordinate Witt ring. |
| `TauCeti/FieldTheory/GaloisCohomology/Kummer.lean:149`, 249, 277, at the manifest commit | `TauCeti.kummerCocycle` is gα/α; `kummerMap` requires invertible n; `kummerMap_eq_kummerCocycleClass` identifies the boundary. This fixes arithmetic-Frobenius value 4 for the cube class of 2 in 𝔽₇. The file concerns fields, not arbitrary affine scheme Picard torsion. |
| `Mathlib/NumberTheory/LocalField/Basic.lean:45` | `IsNonarchimedeanLocalField` contains compatibility of valuation and topology, local compactness and nontrivial valuation. The three local Milnor signatures retain this class. |
| `Mathlib/RingTheory/WittVector/Basic.lean:343` | `WittVector.constantCoeff` is the zeroth-coordinate ring homomorphism. The coefficient-embedding headline still compares reduction with this actual map. |

These checks opened 13 named library definitions/theorems across six files. Pin-object searches found no graded Picard spectrum, full coefficient K-spectrum or replacement for the new comparison. The supporting Mathlib tensor, torsion, local-field, Witt and adic-completion source families used by the unchanged Lean signatures were also compared with the manifest revision; the comparison reported no changed files in those families.

**Sources in the changed passages.** Five legal texts were fetched through the sources service. No manifest was edited, no source passage was copied to the roadmap or report, and no new source was inaccessible.

| Target | Exact text opened | Result |
|---|---|---|
| Series-group convention/API, revised HesselholtBig citation | HesselholtBig Proposition 1.14, pp.14–15, lines 583–628; Addendum 1.16 and Example 1.17, p.15, lines 644–655 | Supports the inverse-factor series convention and finite truncation quotients over arbitrary commutative rings. Substitution composition and coefficient naturality are elementary consequences, independently computed below. The proof's coefficient-index misprint is not adopted. |
| §1.8 full coefficient determinant | StacksKummer Lemma 59.28.1 (03PL), chapter PDF p.31, lines 1410–1440; Lemma 59.28.5 (040Q), pp.32–34, lines 1476–1566 | Exactly the stated pairs, tensor group law, identity/inverse and invertible-modulus étale hypothesis. The spectral determinant is supplied separately; the fibre–cofiber comparison is explicitly a target here, not falsely attributed to Stacks. |
| §1.8 integral quotient and product domain | WeibelChern Example 2.2.1, p.9, lines 375–383; §3, p.13, lines 508–530; Proposition 5.1, p.24, lines 1046–1054 | The source uses integral determinant/Kummer and K₁/m for degree-one product input. The repair accurately distinguishes that convention from the full cofiber group. |
| §1.9 geometric base | AV v1 Lemma 2.7.1 and proof, pp.16–17, lines 695–729, especially 712–714 | The source expressly uses geometric cohomology. The repaired diagram and negative-control Check now match it. The exceptional H₂ correction retained in the roadmap is still necessary. |
| §1.9 Lang fibration and transgression | QuillenICM §2, printed pp.48–50, lines 1917–1975, equations (1)–(3) | Algebraically closed base, prime-to-characteristic coefficients, classifying-topos spectral sequence and the flag/bundle comparison are present. Quillen uses the opposite Lang/coset convention and id−Frob; inversion changes this to the roadmap's Frob−id. Values +8 and +24 fix its chosen convention. |

The new seeded list consists of §§1.1, 1.6, 1.7, 3.0, 3.3, 4.0, 5.2, 5.4, 5.8, 5.11, 6.5, 6.5a, 6.8, 7.2 and 7.4. None has a changed theorem statement in this diff. Their numerical rows are carried below. The changed §1.8 coefficient construction was checked against §1.1's coefficient-map conventions and the dependent §7.4 degree-one unramified statement. Section 5.2's unchanged Lean signature was elaborated again. The other sampled source audits are inherited only to the extent actually recorded in r1; this incremental round does not claim a new full source certification of those unchanged sections. No changed locator is flagged unverified in the README.

**Fresh adversarial computations.** C_n denotes ℤ/n. For the elliptic example A=ℂ[x,y]/(y²−x³+x), write I_a=(x−a,y), a=0,1,−1. The projective completion has one deleted origin, so Pic(A)=Pic⁰(E), and A×=ℂ×. The new construction is tested on the full coefficient sequence, not only on a field.

| Statement | Instances tried | Left side / construction value | Right side / required value | Result and change |
|---|---|---|---|---|
| Series coefficient maps and multiplication | ℤ→𝔽₂; f=(1−t)⁻¹ modulo t³ | f²=1+2t+3t² reduces to 1+t² | (1+t+t²)²=1+t² modulo (2,t³) | Pass; coefficientwise addition would give t² coefficient 2 over ℤ, not 3 |
| Series restriction and inverse-factor sign | a=2 over ℤ, lengths 1,2 | (1−2t)⁻¹=1+2t+4t²; reduction=1+2t | Length-one class 1+2t; forward factor would be 1−2t | Pass |
| Substitution well-definedness | m=1,n=2; excluded n=0 over ℤ | t² maps to t⁴=0 modulo t³; at n=0 it maps to 1 | Defining ideal killed for n=2; not killed for n=0 | Pass; positive-exponent restriction necessary |
| Substitution composition and coefficient naturality | V₂V₃ on 1+t modulo t², target modulo t⁷; ℤ→𝔽₂ | 1+t⁶; reduction 1+t⁶ | V₆(1+t)=1+t⁶, with the same coefficient reduction | Pass |
| Series inverse limit | f=(1−t)⁻¹ over ℤ, N=1,2,3 | 1+t; 1+t+t²; 1+t+t²+t³ | Compatible coefficient strings (1,1), (1,1,1), (1,1,1,1) determine f | Pass; no convergence in the coefficient ring needed |
| Series logarithmic derivative control | 𝔽₂ modulo t³ | V₂(1+t)=1+t²≠1, t(d/dt)log(1+t²)=0 | Distinct classes with the same zero logarithmic derivative | Pass; no ghost-injectivity shortcut |
| V₁ and zero-ring controls | Any R; R=0 | V₁f=f, quotient 0; one series over zero ring | Identity quotient and trivial group | Pass |
| Coordinate comparison removal and quotient transport | ℤ,N=2; 𝔽₃[x]/x² | QWittVectors γ₂(2,−1)=1+2t+3t²; relative K₁=C₃ | Same product series; 𝕎₂(𝔽₃)/V₂𝕎₁(𝔽₃)=C₃ | Pass; comparison stays with downstream owner, relative calculation stays here |
| Graded Picard supplier | F=𝔽₇; Spec(F×F) | π₀=ℤ, π₁=C₆; disconnected grades ℤ² | Pic(F)=0 and units F×; locally constant grades have two independent entries | Pass; no connectedness restriction |
| Signed determinant and loops | Two free lines; diag(2,1) over 𝔽₇ | Swap determinant −1=6; scalar determinant 2 | Graded commutor (−1)^(1·1)=6; ordinary loop determinant 2 | Pass; dropping the grading prematurely loses the sign |
| Coefficient fibre and grade | m=2, rank function on two components | 2(r,s)=(0,0) implies (r,s)=(0,0) | Every fibre object has grade zero, but retains its line and trivialization | Pass; π₁cofib(m)=π₀fib(m), without a spectral splitting assumption |
| §1.8 pair group, identity and additivity | Fields with m=3; pair products of units 2,4 in 𝔽₇ | Product unit 8=1 gives zero class; (A,id) gives 0 | κ(2)+κ(4)=κ(1)=0 | Pass; tensor product gives addition |
| §1.8 integral quotient, Kummer sign | 𝔽₇,m=3, α³=2 | Frob(α)/α=α⁶=4; inverse=2 | Positive Kummer boundary value 4 | Pass; rules out the inverse comparison |
| §1.8 field and nonreduced controls | 𝔽₇; ℂ[ε]/ε² with m=2 | K₀[m]=0; unit quotient C₃ or 0 | H¹(𝔽₇,μ₃)=C₃; every u(1+bε) has square root √u(1+bε/2), so H¹=0 | Pass; arbitrary commutative rings retained |
| §1.8 Picard-torsion obstruction repaired | Elliptic A,m=2 | Units modulo squares=0; Pic(A)[2]=(C₂)²; full coefficient quotient has four classes | H¹(A,μ₂)=(C₂)², including three nonzero line classes | Pass; units-only model fails |
| §1.8 ideals and K₀-Bockstein | I_0,I_1,I_−1 | I_a²=(x−a); 2([I_a]−[A])=0; each determinant is [I_a]≠0 | Three nonzero elements of Pic(A)[2] | Pass; divisor of x−a has multiplicity 2 at (a,0) |
| §1.8 determinant of the Bockstein | Coefficient lift of [I_0]−[A] | Forgetting trivialization gives [I_0] | det(βx)=[I_0] | Pass; coefficient lift choices change only the units contribution, zero in this example |
| §1.8 reduction versus inclusion on units | 𝔽₇,m=3,n=9 | Reduction [2]↦[2]≠0; inclusion [2]↦[2³]=[1]=0 | C₆/9→C₆/3 is identity on C₃; reverse map ×3 is zero | Pass; agrees with §1.1 |
| §1.8 coefficient maps on line classes | Elliptic A, line L of order 4, m=2,n=4 | Reduction sends L to L² of order 2; inclusion sends L² to L² of order 2 | Bockstein reduction ×2, inclusion identity on Picard torsion | Pass; interchanging the maps fails |
| §1.8 naturality | Elliptic A→Frac(A); 𝔽₇→𝔽₄₉,m=3 | I_a becomes a principal line; nonzero unit class restricts by exponent 8≡2 mod3 | Pic(Frac A)=0; Frobenius value 4²=2 | Pass; no claim that a torsor with trivial underlying line is itself trivial |
| §1.8 m=1 and empty affine | m=1; A=0 | Cofiber=0; one pair class; K₀=K₁=0 for zero ring | H¹(−,μ₁)=0; cohomology of empty scheme=0 | Pass |
| §1.8 factorial and dependent product | 𝔽₇,m=3,i=2; 𝔽₃,m=2,i=3 | Multiplier −1=2 mod3, nonzero; multiplier 2!=0 mod2 | Negative unit–Bott edge; zero Chern despite edge C₂ | Pass; new full degree-one map does not remove product restrictions |
| §1.8 primitive coefficient root | 𝔽₅,m=2,a=2,ζ=−1 | κ(2)≠0; κ(−1)=0 | Nonzero coefficient root does not imply nonzero unit quotient class | Pass; retained source correction |
| §1.9 Lang map and torsor direction | Gₘ/𝔽₃, α²=−1 in 𝔽₉; rational h=−1 | L(α)=α²=−1; L(hα)=−1; derivative 2α≠0 | Same fibre under left rational translation; étale degree 2 | Pass; constant disconnected C₂ has L(g)=1 and fails surjectivity |
| §1.9 geometric vanishing | SL₂/𝔽₃ | H¹(BG over 𝔽̄₃)=0 | H¹(BG over 𝔽₃)=Hom(Ẑ,C₂)=C₂ | Pass; repaired base excludes the original counterexample |
| §1.9 degree-three edge and sign | r=1,q=3,5; r=0 excluded | H³(G_geom)=C₂; H⁴(BG_geom)=C₂; transgressions 8c₂,24c₂, both 0 mod2 | Edge C₂→C₂ is identity for Sp₂=SL₂; rank-zero H³=0 | Pass; +8 differs integrally from −8 and from q−1=2 |
| §1.9 exceptional finite group | q=9,r=1 | H₂(SL₂(𝔽₉),ℤ)=C₃; Tor(C₃,C₂)=0 | Integral H₃/2 agrees with mod-two H₃ | Pass; odd order, not universal vanishing |
| Changed unramified supplier and §7.4 | Trivial C₃ coefficients at finite v; v=7,a=2,m=3 | H¹_un=Hom(Ẑ,C₃)=C₃; Kummer Frobenius value 4 | Inflation of residue κ(2) has the same value 4 | Pass; inertia is trivial, m invertible at v |
| Lean layer comments and docstring | Eight declarations; five theorem bodies | Same three definitions and five signatures; missing degree-one carriers explicitly named | Layers 0,3,5,6 in README order; no replacement theorem for unavailable spectra | Pass; textual change has no mathematical binder effect |

**Carried adversarial computations (95 rows; 29 fresh rows above).** Each row below cites r1 and preserves its computed values and limitations. These are unchanged-statement evidence, not fresh source reads. U denotes the uniquely divisible summand. The removed coordinate-comparison row and the repaired degree-one/Lang/supplier-name rows have been replaced by the fresh rows above.

| Statement | Instance tried | Left side / construction value | Right side / required value | Result, change and provenance |
|---|---|---|---|---|
| Conventions: valuation, boundary, reciprocity | ℚ₅, {2,5} and {5,2} | ∂=2 and 3 | h₄=3 and 2 respectively | Pass; inverse relation retained  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.0 / maxDivisible | A=ℚ⊕C₆⊕ℤ; A=0 | Div(A)=ℚ⊕0⊕0; Div(0)=0 | All positive multiples surject exactly on ℚ; 2ℤ≠ℤ | Pass; excludes the whole-group wrong model  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.0 completion separation | ℤ_(p)→ℤₚ | Dense image; cokernel ℚₚ/ℚ≠0 | Div(ℤ_(p))=0; completion ℤₚ | Pass; density does not give surjectivity  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.1 compact tower | ×2 tower on ℤ₂, alternating inhomogeneous terms | x₀=Σ4^j=−1/3∈ℤ₂ | x₀−2x₁=1, x₁−2x₂=0 | Pass; same x₀ is not in ℤ  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.1 augmentation | R(C₂)=ℤ[x]/(x²−1), I=(x−1) | I²=2I; completed augmentation ideal ℤ₂ | Rank quotient ℤ | Pass; rank is not compactified with I  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.2 completed Adams | ψ^(−1), Bott weights 1,2 | −β, +β² | (−1)^1β, (−1)^2β² | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.3 Eilenberg–Moore grading | ΩK(ℤ,2)=S¹ over a field | Tor generator bidegree (−1,2) | Total degree 1; exterior square zero | Pass on example; source text uncertified  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.4 height-one realization | N=0, N=Λ′, T_k in degree zero | 0, KUₚ; π₀T_k=π₋₁T_k=ℤₚ | Zero, free realization; kernel/cokernel of 0:ℤₚ→ℤₚ | Pass on examples; DM contract unverified  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.4 zero-space comparison | X=Hℤₚ | L_(KU/p)Hℤₚ=0 | Φₚ(point)=0 | Pass; Bousfield supports connected-cover step  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.5 Burnside orbit basis | G=H=C₃ | One trivial subgroup plus three homomorphisms C₃→C₃: rank 4 | p+1=4 | Pass; not rank 3; DFM theorem unverified  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.5 nonabelian and empty-cover controls | G=S₃,H=1; empty and identity covers of a point | Four subgroup-conjugacy classes; augmentations 6,3,2,1; transfers 0 and 1 | Burnside rank 4; degrees 0 and 1 | Pass; the group is not assumed abelian  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 0.5 root hypothesis/transfers | ℤ[ζ₃]→𝔽₇ or 𝔽₁₉; n-sheet point cover | Root orders 3→3 or 3→9; transfer-fold n | Isomorphism only for 𝔽₇; degree n | Pass; excludes wrong residue field  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 1.1 coefficient cofiber | m=1; K₂(𝔽₃;ℤ/2); K₂(ℤ;ℤ/2) | 0; C₂; C₄ | Zero cofiber; K₁(𝔽₃)[2]=C₂; nonsplit extension | Pass; not always a ℤ/m-module  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 1.2 Bott | −1 over ℤ versus 𝔽₃, m=2 | Orders 4 versus 2 | 2β=red{−1,−1} nonzero versus zero | Pass; forbids unrestricted additivity  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 1.3 virtual Brauer lift | Rank-two unipotent over 𝔽₃ | Lift trace 2, reduced trace 0 | Subtract rank 2 | Pass; honest representation is wrong model  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 1.4 finite-field refinements | q=2, weights 1,2; q=4, ℓ=3 | Odd orders 1,3; first 3-primary order 3 | q^i−1=1,3; 4−1=3 | Pass; q=1 excluded  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 1.5 restriction/transfer | 𝔽₄⊂𝔽₁₆ in K₁ | C₃→C₁₅: ×5; norm: reduction mod 3 | tr∘res=×2; res∘tr=×5 | Pass; coefficient norms not multiplied both ways  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 1.5 perfect-field p-operation | 𝔽₃, K₁=C₂ | Frobenius x↦x³ is identity | ×3 is identity on C₂ | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 1.6 closure/completion | Algebraically closed characteristic zero, K₂ | Ordinary completion of divisible K₂ is 0 | Derived K₂ has Tate contribution ℤₚ | Pass; two completions distinguished  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 1.7 even-field hermitian comparison | 𝔽₄/𝔽₂, trace of unit line | Matrix [[0,1],[1,1]], rank 2, isotropic vector (1,0) | Witt class 0; rank mod 2 is 0 | Pass; K₁(𝔽₄)=C₃ disappears after 2-completion  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 2.1 henselian rigidity | ℤ₅, m=4 versus m=5 | K₁ mod4=C₄; principal-unit mod5=C₅ | Residue 𝔽₅× mod4=C₄; residue mod5=0 | Pass; invertibility necessary  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 2.2 signs/Bocksteins | 𝔽₇((t)), m=3, x=b[t], βb=[2] | ∂βx=∂{2,t}=2 | β∂x=βb=2; wrong sign gives 4 | Pass, including both supplier sign adapters  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 2.2 low-degree boundary | π, m=1 or 3 | ∂red[π]=0 or 1 mod3 | Rank class of residue field modulo m | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 2.3 integral splitting | ℚ₅, Teichmüller lift ω(2); π=5 or 10 | {ω(2),5}={ω(2),10} in torsion | Difference {ω(2),2}=0 | Pass; coefficient section can still vary  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 2.4 coefficient algebra | ℚ₅,m=4 | Two basis classes in each positive total degree | Base algebra on two degree-one directions and Bott | Pass; changing π by 2 changes coefficient section by [2]≠0  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 2.5 e-invariant | ℚ₃, ℓ=2, degree 1 | K₁ completed=ℤ₂⊕C₂ | Torsion C₂ plus valuation ℤ₂ | Pass; no false torsion-only K₁  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.0 Steinberg quotient | n=0,1; F=𝔽₅,n=2 | ℤ; additive F×; tensor C₄ modulo relations is 0 | K₀ᴹ=ℤ,K₁ᴹ=F×,K₂ᴹ(𝔽₅)=0 | Pass; no adjacent pair exists for n<2  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.0 Izhboldin headline | F=𝔽₃(t), n=0,1 | ×3 on ℤ injective; x³=1 implies x=1 | No 3-torsion | Pass; perfectness not imposed  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.0 residues/norms | 𝔽_p(t)/𝔽_p(t^p) | N(t)=t^p; degree p | res–norm composite ×p | Pass; inseparable extensions retained  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.0 differential symbols | 𝔽_p(t) versus 𝔽_p(s,t) | Ω²=0 versus ds∧dt≠0 | p-basis sizes 1 versus 2 | Pass; not all characteristic-p fields have vanishing Ω²  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.0a cycle grading/moving | Point, A¹; extensions of degrees 2,3 | CH₀(point)=ℤ, CH₀(A¹)=0, CH₁(A¹)=ℤ | Dimension grading; 3−2=1 | Pass; coprime-degree descent retains integral coefficients  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.1 full norm residue | ℚ₂, {−1,−1}; 𝔽₂((t)) | h₂=−1; root group in equal characteristic is 1 | Nontrivial wild class; trivial quotient | Pass; tame symbol alone misses dyadic torsion  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.1 exponent change | w=6, m=3 | h₃=h₆² | Exponent w/m=2 | Pass; target root subgroup retained  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.2 coordinate formula | 𝔽₅ residue, (r,s,u,v)=(0,1,2,1),(1,0,1,2),(1,1,1,1) | 2,3,4 | u^s/v^r times (−1)^(rs): 2,3,−1 | Pass; inverse convention fails first two  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.2 negative valuation | (r,s,u,v)=(−1,1,2,3) over 𝔽₅ | −6=4 | (−1)^−1·2·3=4 | Pass; integer rather than natural exponents  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.3 kernel | ℚ₂, {−1,−1} | Tame boundary 1, full symbol −1 | In tame kernel, outside full kernel | Pass; kernels not identified  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.4 divisibility | Finite fields; purely inseparable degree p | K₂=0; no nontrivial cyclic Galois generator | Zero group divisible; cyclic argument unavailable | Pass; separate characteristic-p route needed and stated  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.5 Moore headline | ℚ₂; ℚ₃(ζ₃); 𝔽₂((t)) | K₂(O) torsion C₂; C₃; 0 | μ_(p∞) orders 2;3;1 | Pass; full wild torsion retained  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 3.5 intrinsic decomposition | U⊕C_w, w≥1 | w(U⊕C_w)=U; intersection nA=U | Div(A)=U, torsion=C_w, intersection 0 | Pass; w=1 still leaves uncountable U  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.0 genuine/cyclic foundations | Trivial C_p-action on Hℤ; ℚ[t] | π₀ homotopy fixed=ℤ; Tate=C_p; B(t)=dt | Tate ≠ fixed; Hochschild degree-two forms 0 | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.1 log versus ordinary THH | ℤₚ and ℚₚ mod p | Log DVR degree zero 𝔽ₚ; THH(ℚₚ)/p=0 | Log value is not fraction-field THH | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.2 R,F,V | W₂(𝔽ₚ)=ℤ/p² | R,F reduction; V=×p | FV=p; TR¹ indexes trivial fixed subgroup | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.3 circle differential | Prime-field Tate model | d²ε=tσ≠0 | Circle-action differential; trivial action gives 0 | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.4 modern/classical integral TC | Hℚ | Rational homotopy-fixed groups in degrees −2j are ℚ | Extra rational branch, not just p-typical completion | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.4a nilpotent comparison | ℚ[ε]/ε² relative to ℚ | K₁(relative)=ℚ, K₂(relative)=0 | HC₀(relative)=ℚ, HC₁(relative)=0 | Pass, rational shift one  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.5 Tate cochains | C₃ on 𝔽₃; C₅ on ℤ, trivial | Tate all degrees 𝔽₃; degrees 0,−1: C₅,0 | Periodic resolution differentials 0; or 0,5 | Pass; integral norm not zero  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.6 additivity signs | Two successive connecting maps | Opposite composites 1 and −1 | Sum 0, not 2 | Pass on sign test; raw square anticommuting  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.7 resolution | DVR complex [A --π→ A] | H₀=k, H₁=0 | Torsion object k under dévissage | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 4.8 logarithmic trace square | ℤ₃ modulo 3 | Log degree 0=𝔽₃, degree 1=𝔽₃·dlog3 | Fraction-field ordinary mod3 value 0 | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.1 cyclotomic coordinates | Perfect 𝔽ₚ | can(u)=pv⁻¹, φ(u)=v⁻¹ | Difference (p−1)v⁻¹ is a unit multiple | Pass; TC has ℤₚ in degrees 0 and −1  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.2 coefficient embedding headline | k=𝔽ₚ,A=ℤₚ; A=ℤₚ[π],π^p=p | W(k)→A includes coefficients; residue composition a↦a₀ | constantCoeff; kernels zero in both cases | Pass; ramification not excluded  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.2 ghost caution | W₂(𝔽ₚ[t]/t²), V(t) | Both ghosts zero but vector nonzero | Ghost injectivity hypothesis absent | Pass; cannot reduce Witt coordinates modulo p componentwise  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.2a absolute Witt complex | Length 1, 𝔽ₚ[x,y] | dx∧dy≠0 | Absolute Ω²; relative forms over itself would be 0 | Pass; Fil⁰=whole, Fil¹=0 at length 1  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.3 residue/modified V | Ramification e, lengths 1,2 | k-dimensions e,2e | ne | Pass; modified V retains ramification correction  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.4 logarithmic differentials | π^p=p | πφ′(π)=p² | Annihilator ideal p²A⊆pA, not containing pA | Pass; source direction repaired in roadmap  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.4 residue | dlogπ and dlogu, u unit | Residues 1 and 0 | Log valuation of π and u | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.5 twisted derivation | p=3,n=2,a=x² | D(a)=2x⁵dx | x³·2x²dx=2x⁵dx, not 2x dx | Pass; Frobenius twist essential  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.6 log-Witt basis | p=3,e=1, lowest index | r₀=1; overlapping degree-one square 0 | Exterior sign and stated cutoff | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.7 trace structure | Unit 1 versus uniformizer π | dlog1=0; residue dlogπ=1 | π is outside unit group A× | Pass; prelog monoid needed  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.8 ordinary DVR THH | Unramified e=1 | Dimension alternatives e and e−1 are 1 and 0 | Degree congruence distinguishes them | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.9 κ and Galois action | Length 1 mod p; unramified degree p | Dimension e each degree; residue invariants 𝔽ₚ | Stated basis and normal-basis fixed vectors | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.10 low-degree TR | n=1 | Positive even homotopy-orbit degree 2 is 0 | Degree 1 still contains dlogπ | Pass; no circular positive-even generator  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.11 ramified Bott coordinates | p=3,e=2, θ=1+π | (1−π)²=1+π mod π² | Correct square root in characteristic 3 | Pass; Bott representative −πκ has prescribed weight  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.12 infinite-cycle equation | f=1−x | Logarithmic coefficients a₀=0,a_i=−1 for i>0 | a_(pi)=a_i^p for odd p | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.13 Tate weights | p=3,e=2 | χ(α)=−1; χ(τα³)=0 | Weight distinguishes surviving invariant | Pass; not all monomials survive  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.14 Witt–Bott comparison | p=5,e=4, length 1 | Bott class in degree 2 nonzero | W₁ω²/5=0 without root/Bott factor | Pass; omitted factor would refute comparison  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.15 local TC | ℚ₃ versus ℚ₃(ζ₃) | H⁰(twist1),H²(twist2): 0,0 versus 𝔽₃,𝔽₃ mod3 | Kummer roots/local duality | Pass; TC degree-zero extra term retained  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.16 truncated monoid | e=1,p,p² | No relative weights for e=1; critical coefficient 1 versus 0 mod p | Dependence on v_p(e) | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 5.17 truncated polynomial K | 𝔽₃[x]/x²; ℚ[ε]/ε²; n=1 | Relative K₁=C₃; ℚ; V₁ quotient 0 | W₂(𝔽₃)/V₂W₁=C₃; rational HC₀=ℚ; zero ideal | Pass; even groups require their stated hypotheses  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.2 Tate module | ℤ,C_(p^a),ℚₚ/ℤₚ | Tₚ=0,0,ℤₚ | Compatible torsion towers | Pass; ordinary completion of ℤ instead is ℤₚ  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.3 cyclotomic invariants | ℚ₂,i=2; ℚ₃,i=6; ℚ₅,i=2 | p-parts 8,9,1 | 2^(2+1),3^(1+1),1 since 4∤2 | Pass, including exceptional dyadic case  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.4 three coefficients | ℚ₂,twist2 | H⁰ finite levels eventually C₈, reductions ×2, inverse limit 0 | H⁰(ℤ₂(2))=0 | Pass; abstract stabilization alone insufficient  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.4 duality/rank | ℚ₂,H² twist3; ℚ₃,H¹ twists1,2 | Limit C₈; ranks 2,1 | Dual reductions identity; d+1,d | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.5 valuation-ring comparison | ℚ₃, degree 1 versus ≥2 | Valuation quotient ℤ₃ in degree 1 | Residue completed spectrum Hℤ₃ | Pass; degree 1 not included in high-degree isomorphism  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.5a descent range | Finite field; local field; ℝ at 2 | cd=1,2,∞ | Thresholds 0,1; finite-cd theorem unavailable over ℝ | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.6 local coefficient extension | ℚ₂,K₂ mod2 | C₄ with subgroup and quotient C₂ | Bockstein extension, not C₂⊕C₂ | Pass; no blanket coefficient module assertion  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.7 completed local groups | ℚ₂, degrees 2,3,4,5 | C₂; ℤ₂⊕C₈; C₈; ℤ₂⊕C₂ | w₁=2,w₂=8,w₃=2 | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.7 odd prime | ℚ₃, degrees 2,3,11 | 0; ℤ₃⊕C₃; ℤ₃⊕C₉ | w₁^(3)=1,w₂^(3)=3,w₆^(3)=9 | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.8 integral ranks/coefficient groups | ℚ₂,i=2,ν=1 | Odd coefficient group (C₂)³ | Free rank 1 plus two order-two contributions | Pass; λ₁=0 forces t₂=d only in this case  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.9 completion kernel/cokernel | ℚ₃,K₂; ℤ_(p) and ℤₚ models | U⊕C₂ maps to 0; cokernels ℚₚ/ℚ and 0 | All divisible/prime-to-p killed; ordinary completion differs | Pass; no inferred surjectivity for odd integral groups  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.10 Milnor uncountability headline | k((t)), independent basis symbols | Matching iterated residue +1, other chosen residues 0 | Kronecker δ; transfer gives [L:F]δ≠0 | Pass; inseparable degree still positive  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.10 diagonal Chern | n=1,2,3 | Composite scalars +1,−1,+2 | (−1)^(n−1)(n−1)! | Pass; division only on uniquely divisible groups  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.10 unique divisibility headline | Local n≥3 versus n=1,2 | ×m bijective on Q-vector Milnor group; ℚ₅× has nonsquare 2; K₂(ℚ₂) has C₂ | Excluded low degrees fail divisibility/injectivity | Pass; hypotheses discriminate  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.11 equal-characteristic answer | 𝔽₃((t)), degrees 2,3 | U₂⊕C₂; U₃⊕C₈; p-completions 0 | q−1=2,q²−1=8 | Pass; integral groups are not zero  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.11 principal units | 1+t𝔽ₚ[[t]] | (1+t)^p=1+t^p; 1+t not a pth power | ×p injective, not surjective | Pass; unique-divisibility claim starts above degree 1  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.12 space splitting | ℚ₃; ℚ₅(ζ₅) | Free K₁ ranks field/ring 2/1; torsion in second example C₅ | d+1/d; k=g⁴ | Pass on groups; DM realization route unverified  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.12 truncation | T_k∨ΣT_k | π₀=ℤₚ² | K₀(local;ℤₚ)=ℤₚ | Pass negative control; only positive-degree comparison asserted  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.12a dyadic field comparison | ℚ₂ and ℚ₂(√2) | cd₂=2, 2 invertible in fields | Finite virtual cd₂; all shifts transported | Pass; not restricted to unramified extensions  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 6.13 dyadic integer rings | ℤ₂ with residue 𝔽₂ | 2 is nonunit; residue Witt group C₂; fraction-field cd₂=2 | Both terms of localization needed | Pass; derived completeness is for L-theory, not integral K  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 7.1 arithmetic completion | ℚ→ℚ₅, rank, 2,10 | 1; actual units/field elements 2,10; valuations 0,1 | Scalar extension and normalized valuation | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 7.2 transfer/boundaries | ℚ(i)/ℚ at 5; {2,5} | Two local degrees 1+1=2; boundary 2 | Global degree 2; completed boundary 2 | Pass; retaining one place would give 1  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 7.3 torsion symbol detection | {−1,−1} at 2 and 3 | Symbols −1 and +1 | Nonzero versus zero local torsion | Pass; nonzero U elements remain invisible  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 7.4 étale/unramified | ℚ at ℓ=2; ℚ(i); v=7,m=3,a=2 | cd₂=∞ versus 2; κ(2) unramified, nonzero | Global edge excluded versus allowed; residue class has order 3 | Pass  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 7.5 trace naturality | Local field with μ_p | Positive trace agrees; TC₀ has extra H² term | K₀ rank alone does not supply extra term | Pass; positive-degree qualifier retained  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |
| 7.6 semilocal map | ℚ(i),5,2+i | Residues 0 and 4 at i=3,2; valuations 1,0 | Norm 5, valuation sum 1 | Pass; ordered factors matter  Carried from [r1](PRREVIEW-KTheoryFiniteLocalFields~1.md). |

## Not verifiable

- **Exact-pin live elaboration:** the manifest names Mathlib `6b7abb3` and Tau Ceti `a91d3aa`, but the available dependency checkouts reported `f6090c7` and `358314d` during this review. The gate, build and Lean runs succeeded in that supplied environment. Pin source objects were available and used for the comparisons described above; an isolated rebuild of the exact manifest revisions was not performed. This is an environment limitation, not an author-side finding or a claimed failed build.
- **Unchanged access limitations from r1:** DM's author-uploaded ResearchGate PDF and DFM's specified author upload returned HTTP 403; exact-title discovery in r1 found no readable alternative. Their realization/completion proof contracts remain uncertified. Atiyah–Segal's DOI and Project Euclid endpoints yielded no usable mathematical PDF. Eilenberg–Moore, DOI 10.1007/BF02564371, remains the settled paywalled/uncertified citation. This round does not reopen these unchanged references or infer their theorems from numerical tests.
- **Unchanged source coverage:** r1's source-audit table, rather than the numerical table alone, determines which unchanged locators were actually source-verified. Its NS published pagination was not independently certified; the cited arXiv v2 was readable. No new access failure arose among the five texts needed for these repairs.

## Source issues

These previously reported issues were encountered again in the texts opened for this incremental review. The roadmap retains the necessary corrections; they are not remaining findings. Other source issues recorded in r1 were outside the changed-source audit and are not re-certified here.

- **Error** in WeibelChern at Corollary 1.6.3, p.8, WeibelChern line 315: the source says the degree-one generator is the square class of −1 for every odd finite field; it should be an arbitrary nonsquare class, since −1 is square in 𝔽₅; affects a stated result.
- **Error** in WeibelChern at Proposition 5.1 proof, p.24, WeibelChern lines 1049–1051: the source says a primitive coefficient root generates the unit quotient and its Kummer group; it should be an independent generator of F×/(F×)^m for the unit factor; affects the proof.
- **Error** in AV at Lemma 2.7.1, p.16, AV lines 698–700: the source says integral H₂ vanishes for all the stated finite symplectic and special linear groups; it should be odd-order H₂, allowing the order-three multiplier of SL₂(𝔽₉); affects a stated result.
- **Misprint** in HesselholtBig at Proposition 1.14 proof, p.15, HesselholtBig lines 625–626: the source says factor indices are weighted again when extracting the coefficient; it should be i₁+⋯+i_r=n, giving b₃=−a₃+a₁a₂; affects the proof.
