# Review of KTheoryFiniteLocalFields (pull request #1281 at afe02e8)

**Verdict:** needs changes

## R01 (P2) — Specify geometric cohomology in the Lang comparison

**Location:** `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:332`, “H^j_et(BG;𝔽₂)=0 for 1≤j≤3”.

**Claim:** G is specified over 𝔽q, but the displayed vanishing lacks base change to its algebraic closure. The preceding paragraph explicitly base-changes G in one place, without doing so for BG or declaring a geometric-cohomology convention.

**Witness:** For G=SL₂/𝔽₃, the trivial torsor splits BG→Spec 𝔽₃. Thus H¹(𝔽₃,𝔽₂)=𝔽₂ injects into H¹(BG,𝔽₂), contradicting zero. AV line 712 explicitly imposes geometric cohomology.

**Repair:** State the entire Lang pullback and cohomology calculation over 𝔽̄q, writing BG_(𝔽̄q), and retain the q-Frobenius endomorphism. Add the arithmetic BG as a negative-control Check. For SL₂/𝔽₃ this gives geometric H¹=0 and arithmetic H¹=𝔽₂; the geometric transgression is still (3²−1)c₂=8c₂, zero modulo two. This changes neither the finite-rank comparison nor its scope in q and r.

## R02 (P2) — Construct the degree-one Chern map on the full coefficient group

**Location:** `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:306`, “For degree one use determinant and Kummer as `earlyChern 1 1`.”

**Claim:** With the cofiber convention at lines 15 and 199–205, the source is the full K₁(A;ℤ/m). The ordinary determinant K₁(A)→A× followed by Kummer only constructs the map on K₁(A)/m. There can also be a K₀(A)[m] quotient. The cited source uses a different degree-one convention, explicitly K₁(A;ℤ/q)=K₁(A)/q at WeibelChern lines 513–515; its determinant formula is on integral K₁ at lines 375–379.

**Witness:** Take A=ℂ[x,y]/(y²−x³+x), m=2. Then A×/(A×)²=0, while Pic(A)[2]=(ℤ/2)². A coefficient class with nonzero K₀-Bockstein has no integral K₁ representative to which that determinant applies.

**Repair:** Retain arbitrary commutative A and the full cofiber convention. Add the determinant on coefficient K-theory through the graded Picard spectrum, identifying its degree-one value with a line bundle L equipped with L^⊗m≃A and then with its Kummer torsor. Require agreement with ordinary determinant/Kummer on the integral quotient and with the determinant of the K₀-Bockstein on Pic(A)[m]. In the displayed affine elliptic example, the three nonzero classes are represented by the ideals of (0,0), (1,0), and (−1,0); their squares are principal. The corrected map includes all four Picard-torsion classes in H¹(A,μ₂), while units alone contribute zero. Fields have Pic=0, so the existing finite-field Checks are unchanged.

## R03 (P2) — Leave the coordinate big Witt comparison with its existing owner

**Location:** `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:1172`, “Give the natural group isomorphism from the additive coordinate big Witt group”. Also lines 27 and 1179 and `Suggested.lean:28`.

**Claim:** Section 5.16a both repeats QWittVectors' comparison and needs its coordinate carrier, although QWittVectors is a later consumer. The series-side model is owned here; the coordinate ring is not.

**Witness:** `TauCetiRoadmap/QWittVectors/README.md:87` imports only the series objects. Its §1.3 constructs the coordinate ring; §1.4a, lines 229–247, proves this same γ_N, limit and compatibilities. Merge-order positions are 67 and 186 respectively.

**Repair:** Delete §5.16a here and its missing-headline entry in Suggested.lean. Keep the series groups, substitution Verschiebung and §5.17's series quotient calculation. Identify the coordinate comparison as QWittVectors §1.4a's downstream application in Scope/Downstream, without adding it as a supplier. The overlapping test is literally the same: over ℤ, (1,0)+(1,0)=(2,−1), and both γ₂ calculations give 1+2t+3t². Over 𝔽₂, (0,1) has zero ghosts but gives 1+t²≠1. No local-field variant distinguishes the two targets. Removing the coordinate target leaves these general comparisons with their owner and keeps supply in one direction.

## R04 (P3) — Replace the stale unramified-subgroup identifier

**Location:** `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:79`, “`RestrictedRamification.unramifiedSubgroup`”.

**Claim:** The section supplies the mathematical object, but this declaration name is absent from the supplier and the pins.

**Witness:** `TauCetiRoadmap/ArithmeticGaloisDuality/README.md:2008`, “Localisation maps and the modified local groups”, defines H^r_un as the inflation image; lines 2014–2035 give its API without the cited identifier.

**Repair:** Cite ArithmeticGaloisDuality §R02.3.1, *Localisation maps and the modified local groups*, using its prose name and inertia-triviality hypothesis. Do not declare a supplier gap: the object exists. For trivial ℤ/3 coefficients at a finite place, its H¹_un is Hom(Ẑ,ℤ/3)=ℤ/3, precisely the subgroup needed here.

## R05 (P3) — Add the required Lean layer sections

**Location:** `TauCetiRoadmap/KTheoryFiniteLocalFields/Suggested.lean:39` through line 103.

**Claim:** The file contains definitions and headline theorems from Layers 0, 3, 5 and 6, but none of the required layer section comments.

**Witness:** The declaration sequence is maxDivisible, Steinberg/Milnor definitions and theorems, coefficient embedding, local Milnor theorems. Searching the file for `## Layer` returns no match.

**Repair:** Insert the corresponding `/-! ## Layer k: ... -/` comments before those four groups, in README order. The eight elaborated types and five theorem statements remain identical; there is no reason to add API lemmas or examples.

## Verified sound

This review read the entire target README and Suggested.lean, the repository's normative README and CONTRIBUTING, and main-branch examples including ClassicalArithmeticCompletion, GeneralizedCohomology and Completed/LocalGaloisGroups. The worktree was kept unchanged. The findings concern repairable statements and ownership, not replacement of this roadmap's scope.

**Gate and Lean evidence.** The worker's gate for this exact head reports every scanner, dependency, file-scope and targeted-build check passing:

```text
gate KTheoryFiniteLocalFields: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The independent dependency command requested in the brief returned:

```text
depcheck: 205 roadmaps, 1475 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. This is a check of recorded edges; it does not resolve the coordinate-carrier ownership problem in R03. The diff outside this roadmap folder is empty. Direct `lake env lean` elaboration succeeded with precisely five `sorry` warnings. A scratch copy with `#check @name` for all eight declarations also elaborated; no hypothesis disappeared and no type repair was needed. The five theorem probes using one of `rfl`, `infer_instance`, or `simp` all failed to close. Inspection found no single pinned theorem supplying these five deep results. There is no padding finding, sorry'd data, extra import, or option override.

**Headline inventory.** The README's end results and deep intermediate comparisons are: completed KU refinements and realization; normalized finite-field operations and Chern comparison; henselian rigidity and localization; full norm residue and Moore structure; characteristic-p Milnor torsion and differential symbols; motivic comparison/descent; Cohen–Witt coefficients; logarithmic THH/TR/TC and Witt–Bott comparison; nilpotent relative K-theory; local completed groups and integral completion kernels; local Milnor cardinality/divisibility; odd-prime homotopy splitting; characteristic-two and dyadic hermitian comparisons; and arithmetic completion/transfer/étale interfaces. Section 5.16a additionally lists the duplicated big Witt comparison addressed in R03.

Five headline assertions are stated at the pins: `milnor_no_p_torsion`, `moore_localK2`, `exists_wittVector_coefficientEmbedding`, `localMilnor_uncountable`, and `localMilnor_uniqueDivisible`. Their three supporting definitions have real bodies. The docstring identifies the missing carriers for the other families: higher K/coefficient spectra, KU and Adams operations, full norm-residue symbols, cycle and twisted étale complexes, cyclotomic/log-Witt structures, and Poincaré spectra. No additional statable headline was identified as absent. The native finite-rank matrix groups do not by themselves provide their higher group-homology-to-étale-Chern comparison.

**Adversarial computations.** The 103 rows below record numerical values, groups, map values or obstructions; a `sorry` build is not evidence of truth. “Pass” means the indicated test agrees; it is not a proof of every general theorem in that subsection. U below denotes the uniquely divisible summand, and C_n denotes ℤ/n. Rows include the seeded targets, every headline family and every finding's mathematical object.

| Statement | Instance tried | Left side / construction value | Right side / required value | Result and change |
|---|---|---|---|---|
| Conventions: valuation, boundary, reciprocity | ℚ₅, {2,5} and {5,2} | ∂=2 and 3 | h₄=3 and 2 respectively | Pass; inverse relation retained |
| 0.0 / maxDivisible | A=ℚ⊕C₆⊕ℤ; A=0 | Div(A)=ℚ⊕0⊕0; Div(0)=0 | All positive multiples surject exactly on ℚ; 2ℤ≠ℤ | Pass; excludes the whole-group wrong model |
| 0.0 completion separation | ℤ_(p)→ℤₚ | Dense image; cokernel ℚₚ/ℚ≠0 | Div(ℤ_(p))=0; completion ℤₚ | Pass; density does not give surjectivity |
| 0.1 compact tower | ×2 tower on ℤ₂, alternating inhomogeneous terms | x₀=Σ4^j=−1/3∈ℤ₂ | x₀−2x₁=1, x₁−2x₂=0 | Pass; same x₀ is not in ℤ |
| 0.1 augmentation | R(C₂)=ℤ[x]/(x²−1), I=(x−1) | I²=2I; completed augmentation ideal ℤ₂ | Rank quotient ℤ | Pass; rank is not compactified with I |
| 0.2 completed Adams | ψ^(−1), Bott weights 1,2 | −β, +β² | (−1)^1β, (−1)^2β² | Pass |
| 0.3 Eilenberg–Moore grading | ΩK(ℤ,2)=S¹ over a field | Tor generator bidegree (−1,2) | Total degree 1; exterior square zero | Pass on example; source text uncertified |
| 0.4 height-one realization | N=0, N=Λ′, T_k in degree zero | 0, KUₚ; π₀T_k=π₋₁T_k=ℤₚ | Zero, free realization; kernel/cokernel of 0:ℤₚ→ℤₚ | Pass on examples; DM contract unverified |
| 0.4 zero-space comparison | X=Hℤₚ | L_(KU/p)Hℤₚ=0 | Φₚ(point)=0 | Pass; Bousfield supports connected-cover step |
| 0.5 Burnside orbit basis | G=H=C₃ | One trivial subgroup plus three homomorphisms C₃→C₃: rank 4 | p+1=4 | Pass; not rank 3; DFM theorem unverified |
| 0.5 nonabelian and empty-cover controls | G=S₃,H=1; empty and identity covers of a point | Four subgroup-conjugacy classes; augmentations 6,3,2,1; transfers 0 and 1 | Burnside rank 4; degrees 0 and 1 | Pass; the group is not assumed abelian |
| 0.5 root hypothesis/transfers | ℤ[ζ₃]→𝔽₇ or 𝔽₁₉; n-sheet point cover | Root orders 3→3 or 3→9; transfer-fold n | Isomorphism only for 𝔽₇; degree n | Pass; excludes wrong residue field |
| 1.1 coefficient cofiber | m=1; K₂(𝔽₃;ℤ/2); K₂(ℤ;ℤ/2) | 0; C₂; C₄ | Zero cofiber; K₁(𝔽₃)[2]=C₂; nonsplit extension | Pass; not always a ℤ/m-module |
| 1.2 Bott | −1 over ℤ versus 𝔽₃, m=2 | Orders 4 versus 2 | 2β=red{−1,−1} nonzero versus zero | Pass; forbids unrestricted additivity |
| 1.3 virtual Brauer lift | Rank-two unipotent over 𝔽₃ | Lift trace 2, reduced trace 0 | Subtract rank 2 | Pass; honest representation is wrong model |
| 1.4 finite-field refinements | q=2, weights 1,2; q=4, ℓ=3 | Odd orders 1,3; first 3-primary order 3 | q^i−1=1,3; 4−1=3 | Pass; q=1 excluded |
| 1.5 restriction/transfer | 𝔽₄⊂𝔽₁₆ in K₁ | C₃→C₁₅: ×5; norm: reduction mod 3 | tr∘res=×2; res∘tr=×5 | Pass; coefficient norms not multiplied both ways |
| 1.5 perfect-field p-operation | 𝔽₃, K₁=C₂ | Frobenius x↦x³ is identity | ×3 is identity on C₂ | Pass |
| 1.6 closure/completion | Algebraically closed characteristic zero, K₂ | Ordinary completion of divisible K₂ is 0 | Derived K₂ has Tate contribution ℤₚ | Pass; two completions distinguished |
| 1.7 even-field hermitian comparison | 𝔽₄/𝔽₂, trace of unit line | Matrix [[0,1],[1,1]], rank 2, isotropic vector (1,0) | Witt class 0; rank mod 2 is 0 | Pass; K₁(𝔽₄)=C₃ disappears after 2-completion |
| 1.8 empty affine control | A=0, Spec A empty | K(A)=0; positive étale cohomology 0 | Universal classes and degree-one map zero | Pass; does not resolve Picard torsion for nonzero A |
| 1.8 degree-one Chern | Affine elliptic A in R02, m=2 | Unit Kummer quotient 0 | Pic(A)[2]=(C₂)² contributes to full coefficient K₁ | R02; extend construction |
| 1.8 factorial/unit–Bott | 𝔽₇,m=3,a=ζ=2; 𝔽₃,m=2,i=3 | −κ(2)⊗2≠0; multiplier 2!=0 | Negative weight-two edge; zero weight-three Chern | Pass; edge is not always Chern |
| 1.8 primitive root control | 𝔽₅,m=2 | κ(2)≠0, κ(−1)=0 | μ₂ still has nontrivial element −1 | Pass; different uses of −1 distinguished |
| 1.9 Lang/classifying base | SL₂/𝔽₃ | Arithmetic H¹(BG,𝔽₂)=𝔽₂ | Claimed 0; geometric H¹=0 | R01; base-change BG |
| 1.9 finite-rank comparison | r=1; q=3,5,9 | Sp₂→SL₂ identity; transgressions 8,24; H₂(SL₂(𝔽₉))=C₃ | Mod-two transgressions 0; C₃⊗𝔽₂=0 | Pass after geometric base correction |
| 2.1 henselian rigidity | ℤ₅, m=4 versus m=5 | K₁ mod4=C₄; principal-unit mod5=C₅ | Residue 𝔽₅× mod4=C₄; residue mod5=0 | Pass; invertibility necessary |
| 2.2 signs/Bocksteins | 𝔽₇((t)), m=3, x=b[t], βb=[2] | ∂βx=∂{2,t}=2 | β∂x=βb=2; wrong sign gives 4 | Pass, including both supplier sign adapters |
| 2.2 low-degree boundary | π, m=1 or 3 | ∂red[π]=0 or 1 mod3 | Rank class of residue field modulo m | Pass |
| 2.3 integral splitting | ℚ₅, Teichmüller lift ω(2); π=5 or 10 | {ω(2),5}={ω(2),10} in torsion | Difference {ω(2),2}=0 | Pass; coefficient section can still vary |
| 2.4 coefficient algebra | ℚ₅,m=4 | Two basis classes in each positive total degree | Base algebra on two degree-one directions and Bott | Pass; changing π by 2 changes coefficient section by [2]≠0 |
| 2.5 e-invariant | ℚ₃, ℓ=2, degree 1 | K₁ completed=ℤ₂⊕C₂ | Torsion C₂ plus valuation ℤ₂ | Pass; no false torsion-only K₁ |
| 3.0 Steinberg quotient | n=0,1; F=𝔽₅,n=2 | ℤ; additive F×; tensor C₄ modulo relations is 0 | K₀ᴹ=ℤ,K₁ᴹ=F×,K₂ᴹ(𝔽₅)=0 | Pass; no adjacent pair exists for n<2 |
| 3.0 Izhboldin headline | F=𝔽₃(t), n=0,1 | ×3 on ℤ injective; x³=1 implies x=1 | No 3-torsion | Pass; perfectness not imposed |
| 3.0 residues/norms | 𝔽_p(t)/𝔽_p(t^p) | N(t)=t^p; degree p | res–norm composite ×p | Pass; inseparable extensions retained |
| 3.0 differential symbols | 𝔽_p(t) versus 𝔽_p(s,t) | Ω²=0 versus ds∧dt≠0 | p-basis sizes 1 versus 2 | Pass; not all characteristic-p fields have vanishing Ω² |
| 3.0a cycle grading/moving | Point, A¹; extensions of degrees 2,3 | CH₀(point)=ℤ, CH₀(A¹)=0, CH₁(A¹)=ℤ | Dimension grading; 3−2=1 | Pass; coprime-degree descent retains integral coefficients |
| 3.1 full norm residue | ℚ₂, {−1,−1}; 𝔽₂((t)) | h₂=−1; root group in equal characteristic is 1 | Nontrivial wild class; trivial quotient | Pass; tame symbol alone misses dyadic torsion |
| 3.1 exponent change | w=6, m=3 | h₃=h₆² | Exponent w/m=2 | Pass; target root subgroup retained |
| 3.2 coordinate formula | 𝔽₅ residue, (r,s,u,v)=(0,1,2,1),(1,0,1,2),(1,1,1,1) | 2,3,4 | u^s/v^r times (−1)^(rs): 2,3,−1 | Pass; inverse convention fails first two |
| 3.2 negative valuation | (r,s,u,v)=(−1,1,2,3) over 𝔽₅ | −6=4 | (−1)^−1·2·3=4 | Pass; integer rather than natural exponents |
| 3.3 kernel | ℚ₂, {−1,−1} | Tame boundary 1, full symbol −1 | In tame kernel, outside full kernel | Pass; kernels not identified |
| 3.4 divisibility | Finite fields; purely inseparable degree p | K₂=0; no nontrivial cyclic Galois generator | Zero group divisible; cyclic argument unavailable | Pass; separate characteristic-p route needed and stated |
| 3.5 Moore headline | ℚ₂; ℚ₃(ζ₃); 𝔽₂((t)) | K₂(O) torsion C₂; C₃; 0 | μ_(p∞) orders 2;3;1 | Pass; full wild torsion retained |
| 3.5 intrinsic decomposition | U⊕C_w, w≥1 | w(U⊕C_w)=U; intersection nA=U | Div(A)=U, torsion=C_w, intersection 0 | Pass; w=1 still leaves uncountable U |
| 4.0 genuine/cyclic foundations | Trivial C_p-action on Hℤ; ℚ[t] | π₀ homotopy fixed=ℤ; Tate=C_p; B(t)=dt | Tate ≠ fixed; Hochschild degree-two forms 0 | Pass |
| 4.1 log versus ordinary THH | ℤₚ and ℚₚ mod p | Log DVR degree zero 𝔽ₚ; THH(ℚₚ)/p=0 | Log value is not fraction-field THH | Pass |
| 4.2 R,F,V | W₂(𝔽ₚ)=ℤ/p² | R,F reduction; V=×p | FV=p; TR¹ indexes trivial fixed subgroup | Pass |
| 4.3 circle differential | Prime-field Tate model | d²ε=tσ≠0 | Circle-action differential; trivial action gives 0 | Pass |
| 4.4 modern/classical integral TC | Hℚ | Rational homotopy-fixed groups in degrees −2j are ℚ | Extra rational branch, not just p-typical completion | Pass |
| 4.4a nilpotent comparison | ℚ[ε]/ε² relative to ℚ | K₁(relative)=ℚ, K₂(relative)=0 | HC₀(relative)=ℚ, HC₁(relative)=0 | Pass, rational shift one |
| 4.5 Tate cochains | C₃ on 𝔽₃; C₅ on ℤ, trivial | Tate all degrees 𝔽₃; degrees 0,−1: C₅,0 | Periodic resolution differentials 0; or 0,5 | Pass; integral norm not zero |
| 4.6 additivity signs | Two successive connecting maps | Opposite composites 1 and −1 | Sum 0, not 2 | Pass on sign test; raw square anticommuting |
| 4.7 resolution | DVR complex [A --π→ A] | H₀=k, H₁=0 | Torsion object k under dévissage | Pass |
| 4.8 logarithmic trace square | ℤ₃ modulo 3 | Log degree 0=𝔽₃, degree 1=𝔽₃·dlog3 | Fraction-field ordinary mod3 value 0 | Pass |
| 5.1 cyclotomic coordinates | Perfect 𝔽ₚ | can(u)=pv⁻¹, φ(u)=v⁻¹ | Difference (p−1)v⁻¹ is a unit multiple | Pass; TC has ℤₚ in degrees 0 and −1 |
| 5.2 coefficient embedding headline | k=𝔽ₚ,A=ℤₚ; A=ℤₚ[π],π^p=p | W(k)→A includes coefficients; residue composition a↦a₀ | constantCoeff; kernels zero in both cases | Pass; ramification not excluded |
| 5.2 ghost caution | W₂(𝔽ₚ[t]/t²), V(t) | Both ghosts zero but vector nonzero | Ghost injectivity hypothesis absent | Pass; cannot reduce Witt coordinates modulo p componentwise |
| 5.2a absolute Witt complex | Length 1, 𝔽ₚ[x,y] | dx∧dy≠0 | Absolute Ω²; relative forms over itself would be 0 | Pass; Fil⁰=whole, Fil¹=0 at length 1 |
| 5.3 residue/modified V | Ramification e, lengths 1,2 | k-dimensions e,2e | ne | Pass; modified V retains ramification correction |
| 5.4 logarithmic differentials | π^p=p | πφ′(π)=p² | Annihilator ideal p²A⊆pA, not containing pA | Pass; source direction repaired in roadmap |
| 5.4 residue | dlogπ and dlogu, u unit | Residues 1 and 0 | Log valuation of π and u | Pass |
| 5.5 twisted derivation | p=3,n=2,a=x² | D(a)=2x⁵dx | x³·2x²dx=2x⁵dx, not 2x dx | Pass; Frobenius twist essential |
| 5.6 log-Witt basis | p=3,e=1, lowest index | r₀=1; overlapping degree-one square 0 | Exterior sign and stated cutoff | Pass |
| 5.7 trace structure | Unit 1 versus uniformizer π | dlog1=0; residue dlogπ=1 | π is outside unit group A× | Pass; prelog monoid needed |
| 5.8 ordinary DVR THH | Unramified e=1 | Dimension alternatives e and e−1 are 1 and 0 | Degree congruence distinguishes them | Pass |
| 5.9 κ and Galois action | Length 1 mod p; unramified degree p | Dimension e each degree; residue invariants 𝔽ₚ | Stated basis and normal-basis fixed vectors | Pass |
| 5.10 low-degree TR | n=1 | Positive even homotopy-orbit degree 2 is 0 | Degree 1 still contains dlogπ | Pass; no circular positive-even generator |
| 5.11 ramified Bott coordinates | p=3,e=2, θ=1+π | (1−π)²=1+π mod π² | Correct square root in characteristic 3 | Pass; Bott representative −πκ has prescribed weight |
| 5.12 infinite-cycle equation | f=1−x | Logarithmic coefficients a₀=0,a_i=−1 for i>0 | a_(pi)=a_i^p for odd p | Pass |
| 5.13 Tate weights | p=3,e=2 | χ(α)=−1; χ(τα³)=0 | Weight distinguishes surviving invariant | Pass; not all monomials survive |
| 5.14 Witt–Bott comparison | p=5,e=4, length 1 | Bott class in degree 2 nonzero | W₁ω²/5=0 without root/Bott factor | Pass; omitted factor would refute comparison |
| 5.15 local TC | ℚ₃ versus ℚ₃(ζ₃) | H⁰(twist1),H²(twist2): 0,0 versus 𝔽₃,𝔽₃ mod3 | Kummer roots/local duality | Pass; TC degree-zero extra term retained |
| 5.16 truncated monoid | e=1,p,p² | No relative weights for e=1; critical coefficient 1 versus 0 mod p | Dependence on v_p(e) | Pass |
| 5.16a coordinate comparison | ℤ,N=2; 𝔽₂,N=2 | γ(2,−1)=1+2t+3t²; γ(0,1)=1+t² | Same formulas in QWittVectors §1.4a | R03; mathematics correct, ownership duplicated |
| 5.17 truncated polynomial K | 𝔽₃[x]/x²; ℚ[ε]/ε²; n=1 | Relative K₁=C₃; ℚ; V₁ quotient 0 | W₂(𝔽₃)/V₂W₁=C₃; rational HC₀=ℚ; zero ideal | Pass; even groups require their stated hypotheses |
| 6.2 Tate module | ℤ,C_(p^a),ℚₚ/ℤₚ | Tₚ=0,0,ℤₚ | Compatible torsion towers | Pass; ordinary completion of ℤ instead is ℤₚ |
| 6.3 cyclotomic invariants | ℚ₂,i=2; ℚ₃,i=6; ℚ₅,i=2 | p-parts 8,9,1 | 2^(2+1),3^(1+1),1 since 4∤2 | Pass, including exceptional dyadic case |
| 6.4 three coefficients | ℚ₂,twist2 | H⁰ finite levels eventually C₈, reductions ×2, inverse limit 0 | H⁰(ℤ₂(2))=0 | Pass; abstract stabilization alone insufficient |
| 6.4 duality/rank | ℚ₂,H² twist3; ℚ₃,H¹ twists1,2 | Limit C₈; ranks 2,1 | Dual reductions identity; d+1,d | Pass |
| 6.5 valuation-ring comparison | ℚ₃, degree 1 versus ≥2 | Valuation quotient ℤ₃ in degree 1 | Residue completed spectrum Hℤ₃ | Pass; degree 1 not included in high-degree isomorphism |
| 6.5a descent range | Finite field; local field; ℝ at 2 | cd=1,2,∞ | Thresholds 0,1; finite-cd theorem unavailable over ℝ | Pass |
| 6.6 local coefficient extension | ℚ₂,K₂ mod2 | C₄ with subgroup and quotient C₂ | Bockstein extension, not C₂⊕C₂ | Pass; no blanket coefficient module assertion |
| 6.7 completed local groups | ℚ₂, degrees 2,3,4,5 | C₂; ℤ₂⊕C₈; C₈; ℤ₂⊕C₂ | w₁=2,w₂=8,w₃=2 | Pass |
| 6.7 odd prime | ℚ₃, degrees 2,3,11 | 0; ℤ₃⊕C₃; ℤ₃⊕C₉ | w₁^(3)=1,w₂^(3)=3,w₆^(3)=9 | Pass |
| 6.8 integral ranks/coefficient groups | ℚ₂,i=2,ν=1 | Odd coefficient group (C₂)³ | Free rank 1 plus two order-two contributions | Pass; λ₁=0 forces t₂=d only in this case |
| 6.9 completion kernel/cokernel | ℚ₃,K₂; ℤ_(p) and ℤₚ models | U⊕C₂ maps to 0; cokernels ℚₚ/ℚ and 0 | All divisible/prime-to-p killed; ordinary completion differs | Pass; no inferred surjectivity for odd integral groups |
| 6.10 Milnor uncountability headline | k((t)), independent basis symbols | Matching iterated residue +1, other chosen residues 0 | Kronecker δ; transfer gives [L:F]δ≠0 | Pass; inseparable degree still positive |
| 6.10 diagonal Chern | n=1,2,3 | Composite scalars +1,−1,+2 | (−1)^(n−1)(n−1)! | Pass; division only on uniquely divisible groups |
| 6.10 unique divisibility headline | Local n≥3 versus n=1,2 | ×m bijective on Q-vector Milnor group; ℚ₅× has nonsquare 2; K₂(ℚ₂) has C₂ | Excluded low degrees fail divisibility/injectivity | Pass; hypotheses discriminate |
| 6.11 equal-characteristic answer | 𝔽₃((t)), degrees 2,3 | U₂⊕C₂; U₃⊕C₈; p-completions 0 | q−1=2,q²−1=8 | Pass; integral groups are not zero |
| 6.11 principal units | 1+t𝔽ₚ[[t]] | (1+t)^p=1+t^p; 1+t not a pth power | ×p injective, not surjective | Pass; unique-divisibility claim starts above degree 1 |
| 6.12 space splitting | ℚ₃; ℚ₅(ζ₅) | Free K₁ ranks field/ring 2/1; torsion in second example C₅ | d+1/d; k=g⁴ | Pass on groups; DM realization route unverified |
| 6.12 truncation | T_k∨ΣT_k | π₀=ℤₚ² | K₀(local;ℤₚ)=ℤₚ | Pass negative control; only positive-degree comparison asserted |
| 6.12a dyadic field comparison | ℚ₂ and ℚ₂(√2) | cd₂=2, 2 invertible in fields | Finite virtual cd₂; all shifts transported | Pass; not restricted to unramified extensions |
| 6.13 dyadic integer rings | ℤ₂ with residue 𝔽₂ | 2 is nonunit; residue Witt group C₂; fraction-field cd₂=2 | Both terms of localization needed | Pass; derived completeness is for L-theory, not integral K |
| 7.1 arithmetic completion | ℚ→ℚ₅, rank, 2,10 | 1; actual units/field elements 2,10; valuations 0,1 | Scalar extension and normalized valuation | Pass |
| 7.2 transfer/boundaries | ℚ(i)/ℚ at 5; {2,5} | Two local degrees 1+1=2; boundary 2 | Global degree 2; completed boundary 2 | Pass; retaining one place would give 1 |
| 7.3 torsion symbol detection | {−1,−1} at 2 and 3 | Symbols −1 and +1 | Nonzero versus zero local torsion | Pass; nonzero U elements remain invisible |
| 7.4 étale/unramified | ℚ at ℓ=2; ℚ(i); v=7,m=3,a=2 | cd₂=∞ versus 2; κ(2) unramified, nonzero | Global edge excluded versus allowed; residue class has order 3 | Pass |
| 7.4 supplier name | Trivial C₃ coefficients at finite v | Inflation image H¹_un=C₃ | Supplier's H¹(Ẑ,C₃)=C₃ | R04 only identifier repair |
| 7.5 trace naturality | Local field with μ_p | Positive trace agrees; TC₀ has extra H² term | K₀ rank alone does not supply extra term | Pass; positive-degree qualifier retained |
| 7.6 semilocal map | ℚ(i),5,2+i | Residues 0 and 4 at i=3,2; valuations 1,0 | Norm 5, valuation sum 1 | Pass; ordered factors matter |

**Seeded source audit (15 targets).** Locators below refer to the legal text retrieved through the sources service. The K-book text is the specified 29 August 2013 draft, not the differently paginated printed book. The HM03, AV and Calmès III versions match the README. No README locator was explicitly labelled unverified. Handbook §5.4, lines 602–605, explicitly calls its normalized étale edge the first étale Chern class; its Theorem 61 is read with that definition, not as a claim that ordinary factorial-weighted Chern operations are always isomorphisms. Two sampled targets retain inaccessible portions, recorded below rather than certified from memory.

| Sample | Text opened at locator | Assessment |
|---|---|---|
| 0.4 | Bousfield Theorems 2.1,2.3, printed p.3, lines 93–122; connected-cover consequence p.4, lines 130–139 | Supports Φ and its KU/p-local comparison, including deletion of low homotopy groups. DM's excellent-module realization/uniqueness and Adams-fibre calculation remain unverified. |
| 0.5 | DFM §§2–4, author pp.3–12 | Access failed. Orbit counts and root hypotheses were independently tested, but neither completion theorem nor the finite-stage lifting claim is source-certified. |
| 1.8 | WeibelChern equation (2.1), Proposition 2.1.1 pp.8–9, lines 328–370; Proposition 2.4 p.10, line 398; Theorems 3.2–3.3 pp.13–15, lines 528–552; Proposition 5.1 p.24, lines 1046–1054 | Supports the higher-degree construction, even-modulus additivity restriction and factorial relation. Degree-one convention differs: R02. The roadmap correctly separates a Kummer generator from a coefficient root. |
| 1.9 | AV Lemmas 2.7.1–2.7.2 pp.16–17, lines 695–730; WeibelChern p.24, lines 1046–1054 | Geometric base is explicit in AV lines 712–714: R01. The roadmap's odd-order H₂ replacement avoids the source's SL₂(𝔽₉) exception. |
| 2.2 | K-book IV.2.4–2.5 pp.280–281; V.6.6 p.409, lines 24559–24570; GeneralAlgebraicKTheory §8.13 and K2SymbolsBrauer §11.3 | Raw K-book symbol is uniformizer-first. The explicit δₙ=(−1)^(n−1)Bₙ conversion gives the commuting Bockstein square; the order-three test computes 2 on both paths. |
| 3.1 | Sharifi Definition 9.3.2/Proposition 9.3.4 pp.195–196, lines 6177–6197; K-book III.6.2.4 p.233, lines 13434–13449 | All roots, tame and wild, enter Moore's quotient. Sharifi's reciprocity inputs are reversed, exactly as the roadmap says. |
| 3.2 | Sharifi Theorem 9.3.8 pp.197–198, lines 6254–6277; K-book V.6.6 p.409, lines 24559–24570 | Tame formula requires order prime to residue characteristic. Reversing Sharifi's inputs gives the roadmap's negative boundary power. Values over 𝔽₅ and 𝔽₇ discriminate the sign. |
| 3.5 | K-book III.6.2.4–6.2.5 pp.233–234, lines 13434–13453; Handbook Theorem 57 p.163, lines 1068–1081; K-book-errata p.2, lines 64–66 | Supports uniquely divisible kernel, full roots-of-unity torsion and wild integer-ring torsion. The later K-book draft's contrary shorthand is explicitly corrected in the errata. |
| 5.4 | HM03 Proposition 2.2.2, Lemmas 2.2.3–2.2.6, Corollary 2.2.5 pp.33–36, lines 1193–1325 | Complete mixed-characteristic DVR, perfect residue, relative versus absolute forms and the ramification condition retained. The roadmap repairs the source's annihilator-ideal direction. |
| 6.3 | K-book VI.2.2–2.3 pp.470–471, lines 28465–28522 | Odd-prime divisibility by r and both exceptional/nonexceptional dyadic cases agree. Tested p=2,3,5. |
| 6.4 | K-book cohomology calculation p.508, lines 31017–31027; Handbook p.165, lines 1128–1139; ClassFieldTheory finite duality and ArithmeticGaloisDuality coefficient limits | Finite coefficients must be dualized with twist 1−j; limits use their maps. Twist one is exceptional. Roadmap correctly gives ranks d+1 versus d. |
| 6.9 | K-book Warning VI.7.5 p.510, lines 31144–31152; Handbook Warning 60 pp.164–165, lines 1117–1125; Theorem 61/Remark 62 p.165, lines 1131–1158 | Sources warn against reconstructing integral groups. Kernel/cokernel statements are additional deductions from the roadmap's preceding group structure, not quotations of a stronger source theorem. The dense ℤ_(p) example verifies the distinction. |
| 6.12a | Calmès III Theorem 3.1.1/Remark 3.1.2 p.49, lines 2310–2317; Hu–Kriz–Ormsby Theorems 16–20 pp.30–35, lines 1093–1300; Calmès III Remark 3.1.10 pp.52–53, lines 2447–2459 | Characteristic zero, finite virtual cd₂ and 2-adic comparison retained. The target owns the motivic/convergence inputs, rather than importing the final theorem as a prerequisite. The subsequent integral assertion is for the valuation ring. |
| 7.2 | K-book V.3.7.2 p.390, lines 23289–23300; V.7.5 p.424, lines 25583–25594; V.6.6 p.409, lines 24559–24570 | Finite projective scalar restriction and flat completion satisfy base-change hypotheses. Karoubi requires matching quotients by every denominator; DVR completion satisfies this. All places remain in the norm sum. |
| 7.4 | K-book V.11 Chern construction pp.454–456; CGZ Lemma 4.1 pp.21–22, lines 951–1000 | CGZ illustrates the weight-two square under its prime/root hypotheses. The roadmap's general unramified statement is derived using its owned naturality and henselian rigidity; it does not copy CGZ's special prime condition as a general hypothesis. Real number fields at ℓ=2 are excluded only from the finite-cd edge. |

**Pins and ownership.** Mathlib is pinned at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, and the content main examined is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. These are not checks against newer library documentation. The following pinned definitions/signatures were opened; their actual hypotheses matter:

| Pinned file and line | Declaration or object checked | Consequence for this roadmap |
|---|---|---|
| `Mathlib/NumberTheory/LocalField/Basic.lean:45` | `IsNonarchimedeanLocalField` extends `IsValuativeTopology`, `LocallyCompactSpace`, `ValuativeRel.IsNontrivial` | The Lean local-field theorems do not admit an arbitrary topology or the trivially valued field. No finite-extension-of-ℚₚ restriction excludes equal characteristic. |
| `Mathlib/FieldTheory/Finite/GaloisField.lean:224` and 251 | `FiniteField.algebraMap_norm_eq_pow`, `FiniteField.norm_surjective` | Extension field finite; the norm exponent is (#K′−1)/(#K−1). The field axioms exclude zero denominator q−1=0. |
| `Mathlib/RingTheory/WittVector/Truncated.lean:432` | Truncated-vector lifting/inverse-limit API | Maps into the Witt inverse limit, not the coefficient embedding W(k)→A in the headline. |
| `TauCeti/RingTheory/RootsOfUnity/Henselian.lean:80` | `TauCeti.rootsOfUnityEquivResidueField` | Requires invertible order. It cannot eliminate wild roots from Moore's theorem. |
| `TauCeti/RingTheory/Henselian/Basic.lean:111` | `HenselianRing.exists_pow_eq_and_sub_one_mem_of_sub_one_mem` | Requires I≤J and invertible n; preserves congruence modulo I. The zero-ring branch is explicitly handled in the library. |
| `TauCeti/RingTheory/Henselian/Teichmuller.lean:92` | `TauCeti.teichmuller` | Multiplicative map from residue units, not an additive coefficient ring embedding. |
| `TauCeti/CategoryTheory/GrothendieckGroup/FiniteDimensionalVectorSpace.lean:148` and 226 | `TauCeti.SplitK0.finrankEquiv`, `TauCeti.AbelianK0.finrankEquiv` | Already identifies these K₀ groups with ℤ, with the stated smallness condition. No extra K₀ headline is needed here. |
| `TauCeti/Algebra/Module/Torsion/TateModule.lean:115`, 126, 208 and 285 | Tate carrier, projections, map and linear map | Existing compatible-torsion-family construction is consumed, not reconstructed. |
| `TauCeti/Algebra/Module/Torsion/TateModule.lean:615`, 627 and 637 | `nonempty_linearEquiv_of_natCard`, `free_of_natCard`, `finrank_eq_of_natCard` | Freeness/rank require the specified finite cardinality at every torsion level; these do not assert an unrestricted product formula. |
| `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/PowerSeries.lean:350` | `powerSeriesCoordinate` | Infinite procyclic pro-p group and chosen topological generator; coordinate sends X to γ−1. It is not a coordinate for the whole odd-prime unit group without its finite factor. |

Object searches covered Milnor tensor/Steinberg quotients, divisible subgroups, higher K/coefficient spectra, logarithmic de Rham–Witt, cyclic/THH constructions, big Witt coordinates, Tate modules, coefficient embeddings and motivic cycles. The pins have no replacement for the five headline theorems. No fully qualified name in Suggested.lean was found duplicated in the searched sibling roadmap Lean files. Searches used `roadmaps grep`/`show`, content main, the supplied sibling heads and board packages; they were not limited to this roadmap's chosen declaration names.

The main resolved ownership boundaries and supply witnesses are:

| Supplier/consumer file and location | Resolved contract |
|---|---|
| `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md`, §§8.12–8.13, lines 1773–1790; §§13.8a–c, lines 2993–3045 | Normalized valuation, raw product boundary and δ adapter; integer Adams/completion, Brauer lift and finite-field groups. The refinements here use those objects rather than another Quillen proof. |
| `TauCetiRoadmap/K2SymbolsBrauer/README.md`, §§10.25,11.1,11.3,11.8 | Filtered colimits and finite norms, product-normalized Matsumoto map and last-slot residue. At {2,5}, both adapters give 2. |
| `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:730`–734, §1.14; §§1.24,1.52 | Exponent change, tame formula, quadratic comparison and the place/global symbol interfaces. Reciprocity orientation matches. |
| `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1403`, §1.T.1; `TauCetiRoadmap/GeneralizedCohomology/README.md`, G2–G3,G5.4 | Abelian towers versus spectral limits/completion and represented KU are distinct supplied constructions. |
| `TauCetiRoadmap/StableHomotopyKTheory/README.md`, §§7.9,7.11,7.13,7.28,7.33 | Completion extension and multiplicative coefficient hypotheses, including the small-prime exceptions. |
| `TauCetiRoadmap/SchemeKTheoryOperations/README.md:2328`, §6.3.4 and §6.4 | Exact representation rings over general bases, Frobenius/Adams and Hiller lifting. No modular split-representation shortcut is imported. |
| `TauCetiRoadmap/AInfCohomology/README.md`, §AI.7.2 | `AInf.Trace.THH`, `TCminus`, `TP` and Bökstedt periodicity occur as roadmap targets. The scanner's missing-library-name leads are not missing suppliers. |
| `TauCetiRoadmap/CrystallineCohomology/README.md`, §§CR.4.6, CR.5:log-algebra.1, CR.5.1 | Characteristic-p/relative Witt complexes, prelog structures and log differentials. The mixed-characteristic absolute initial complex here is a different construction. |
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:1090`, §0.15; §5.4 | Popescu with noetherian regular-map hypotheses and flag/projective-bundle geometry. |
| `TauCetiRoadmap/EtaleCohomologyFoundations/README.md:1120`, §0.9 | Normalized étale projective-bundle and Kummer classes, not the full higher finite-coefficient Chern map. |
| `TauCetiRoadmap/ClassFieldTheory/README.md:1099`, 1147,1286; `Completed/LocalGaloisGroups/README.md:272` | Finite smooth coefficient duality/Euler characteristic, local cd=2, cyclotomic image. Dyadic coefficients are included. |
| `Completed/NumberFieldArithmetic/README.md:1399`–1405 | Semilocal equivalence with its pure-tensor formula, explaining the sum over all w\|v. |
| `TauCetiRoadmap/ArithmeticGaloisDuality/README.md`, §§R02.1.3,R02.3.1 | Lattice/rational/torsion limits and inertia-trivial inflation image. Only the stale name in R04 needs repair. |
| `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md`, §§6.8a–6.10; `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/README.md`, §§7.10–7.11 | General Poincaré square, shifted residue duality, finite-even-field comparison and multiplicative/module refinements exist with the stated scopes. |
| `TauCetiRoadmap/QWittVectors/README.md:87`, 179,229–247 | Series-group consumer; coordinate carrier/comparison owner. This is R03, not a supplier to add here. |
| `TauCetiRoadmap/MotivesAndAlgebraicCycles/README.md:677`, `TauCetiRoadmap/MotivicEtaleKTheory/README.md:57`, `TauCetiRoadmap/ArithmeticKTheory/README.md:1597` | Consumers explicitly import this roadmap's cycle/Milnor comparison package. The shared Bloch complexes here do not duplicate their downstream motive/regulator work. |

All `Needs` lines were read. The displayed graph has no cycle; the nontrivial within-roadmap return from §5.6 to §5.14 is explicitly only for final independence, while §5.14 uses spanning relations. That separation avoids using the desired basis dimension to prove itself. Generic hermitian and finite-field theorems are supplied before their applications. No declared gap is being rejected for remaining unimplemented. The review found no computational algorithm, copied source passage, or route-specific good-prime restriction; the odd-prime trace route is accompanied by separate dyadic and equal-characteristic targets.

## Not verifiable

- **DM:** The author-uploaded ResearchGate text returned HTTP 403. Exact-title/author discovery did not produce another readable primary copy. Consequently §§4.7–4.18 pp.15–17 (realization), Proposition 5.7 p.20 and the detailed §6.12 retraction/Iwasawa/splitting proof contracts at pp.19–20,25–26,34–36,55–56 are not certified. Bousfield's functor and the final local space formulas in HM03/Handbook do not certify these intervening contracts.
- **DFM:** The specified author-uploaded PDF returned HTTP 403; discovery found no alternative readable primary copy. Section 0.5's completion, kernel containment and finite-stage lifting locators in §§2–4 pp.3–12 remain unverified. The elementary orbit/root calculations in the table do not replace these theorems.
- **Atiyah–Segal:** The DOI landing page supplied no usable PDF link; the Project Euclid PDF endpoint returned a five-line Incapsula rejection page, not mathematical text. The service's successful-download label was therefore not treated as verification of Theorem 2.1 or Proposition 4.2. This is background to the already named completion supplier.
- **Eilenberg–Moore:** The service classified DOI 10.1007/BF02564371 as paywalled/uncertified. Theorem 12.1 p.220 and §16 pp.227–230 were not read; the dual multiplicative finite-type formulation is not source-certified. No request was reopened for this settled uncertified text.
- All 34 reference entries were attempted through the service. Thirty yielded mathematical text, plus the supplementary K-book errata. NS was readable in the README's explicitly cited arXiv v2; published-page numbering was not independently certified from the publisher PDF. The inaccessible texts above are listed together in the job's missing-reference record where applicable. No source file was placed in the roadmap or report.

The review is finished with a needs-changes verdict; none of these access failures is silently counted as a sound source check.

## Source issues

These are issues in the cited texts, separate from R01–R05. Several are already corrected explicitly by this roadmap.

- **Misprint** in HM03 at Lemma 2.2.3, p.34, HM03 line 1230: the source says the ideal (πφ′(π)) contains p; it should be (πφ′(π))⊆pA, with equality in tame ramification; affects a stated result.
- **Error** in WeibelChern at Corollary 1.6.3, p.8, WeibelChern line 315: the source says the degree-one generator is the square class of −1 for every odd finite field; it should be an arbitrary nonsquare class; −1 is square in 𝔽₅; affects a stated result.
- **Error** in WeibelChern at Proposition 5.1 proof, p.24, WeibelChern lines 1049–1051: the source says a primitive coefficient root generates the unit quotient and its Kummer group; it should be an independent generator of F×/(F×)^m for the unit factor; affects the proof.
- **Error** in AV at Lemma 2.7.1, p.16, AV lines 698–700: the source says integral H₂ vanishes for every listed finite symplectic and special linear group; it should be odd-order H₂, retaining the order-three multiplier of SL₂(𝔽₉); affects a stated result.
- **Misprint** in K-book at VI.7 opening, draft p.507, K-book line 30903: the source says the valuation ring consists of elements of positive valuation; it should be nonnegative valuation, including units and zero; affects nothing.
- **Error** in K-book at VI.7 opening and Proposition VI.7.1, draft p.507, K-book lines 30920–30924: the source says local K₂ torsion is residue-field units and integer-ring K₂ is uniquely divisible; it should be all roots in the field and p-primary roots in its integer ring, alongside the uniquely divisible summand; affects a stated result; corrected in print at K-book errata p.2, corrections to printed p.558, lines 64–66.
- **Error** in K-book at Proposition VI.7.1 proof, draft p.507, K-book line 30944: the source says w₂(E)=q²−1 for a local field; it should be (q²−1) times the p-primary cyclotomic factor, giving w₂(ℚ₂)=24; affects the proof.
- **Error** in K-book at Proposition VI.7.3, draft p.509, K-book lines 31035–31043: the source says all positive Kₙ(V) are ℤ_(p)-modules; it should be the even groups and the odd complements of prime-to-p torsion; ℤ₃× already has order-two torsion; affects a stated result.
- **Error** in K-book at Proposition VI.7.3 and proof, draft p.509, K-book lines 31037 and 31047: the source says K_(2i−1)(V) identifies with K_(2i−1)(E) also at i=1; it should be an identification for i≥2; E×/V×=ℤ at i=1; affects a stated result.
- **Error** in K-book at Theorem VI.7.4 proof, draft p.510, K-book line 31113: the source says the valuation-ring comparison holds in every positive completed degree; it should be a comparison starting in degree two; degree one has an extra valuation ℤₚ; affects the proof.
- **Error** in K-book at Theorem VI.7.4 proof, draft p.510, K-book line 31120: the source says ordinary completion is T_i⊗ℤₚ without finite generation; it should be inverse-limit completion, which kills the rational divisible summand whereas tensoring does not; affects the proof.
- **Error** in K-book at Corollary VI.7.4.2, draft p.510, K-book lines 31135–31136: the source says the lattice completion is all of K₃(V;ℤₚ), without finite torsion; it should be the free quotient, retaining the separate w₂^(p) torsion; affects a stated result.
- **Misprint** in Handbook at Theorem 67, p.167, Handbook lines 1206–1208: the source says r is both the cyclotomic extension degree and a topological generator; it should be distinct symbols, with k=g^(p^(a−1)(p−1)/r); affects nothing.
- **Error** in Hu–Kriz–Ormsby at Proposition 17 proof, p.33, Hu–Kriz–Ormsby lines 1216–1221: the source says (C₂)^n has exterior mod-two cohomology receiving a map from field cohomology; it should be polynomial cohomology with inflation in the reverse direction; symbol nonvanishing needs an independent justification; affects the proof.
- **Misprint** in HesselholtBig at Proposition 1.14 proof, p.15, HesselholtBig lines 625–626: the source says the selected factor indices are weighted again when extracting a coefficient; it should be i₁+⋯+i_r=n, giving b₃=−a₃+a₁a₂; affects the proof.
- **Error** in Handbook at Proposition 58, p.164, Handbook line 1089: the source says K_(2i−1)(V) and K_(2i−1)(E) agree for every i>0; it should be i≥2, because the degree-one quotient is the valuation group ℤ; affects a stated result.
