# Repair report: MixedHodgeModulesAndIrregularHodgeTheory

The eleven findings in REV-PKG-MixedHodgeModulesAndIrregularHodgeTheory~2 were verified individually. No finding is disputed. Changes are confined to the README, source locators and the plan's top-level gaps, together with this report. Suggested.lean and metadata.toml are unchanged.

## R01 (P1) — applied

§2.4: constant Fourier corrections invisible on the output torus → comparison kernels and cokernels become constant connections and generally survive restriction. The specified input remains j₊. Added the trivial-input Check with output ranks 1 versus 0. Evidence: Fourier exactness and 0 → O → O(*0) → δ₀ → 0; §6.6 gives the same distinction.

## R02 (P1) — applied

§4.1: Rees of the filtered cokernel → cokernel of the Rees morphism. Expanded the shifted-identity Check: filtered cokernel 0, graded cokernel ℂ[z]/(z); equal filtrations give both cokernels 0. Evidence: ESY line 944 through line 960, §2.1, p. 18. Strictness is saturation of the Rees image under multiplication by z.

## R03 (P1) — applied

Replaced all Springer lettered citations in ownership, contracts, §§1.5, 2.1–2.5, 4.1–4.5, 5.1 and dependency summaries. Operators → ComplexComparisonPartII C5.1; PBW → FormalConnectionsOpers F2.2; filtered/holonomic interfaces → Springer §§8.2–8.5 and 9.1–9.7. Updated both Springer gap section locators. Open-head statements retain the commutator, delta action and inverse-image shift.

## R04 (P1) — applied

Scope, contracts, §1.1 Needs and Layer 1 dependencies: stale StratifiedSpaces layers → §§7.2–7.3 for definable/Nash strata and AlgebraicTopologyPartII §§16.1a–16.1e for Whitney condition, tubes, control data, lifts and isotopy. Added the rotation/radial Check. The inspected isotopy theorem requires properness and controlled submersion; no hypothesis was dropped.

## R05 (P2) — applied

Separated ComplexComparisonPartII C6.1's finite local-system dictionary from its arbitrary-ring compact-support contract. Added gap:rational-complex-local-system-dictionary in the README and plan, with that supplier and section; updated scope, §3.1 Needs and dependencies. The point Check has dimension-one stalks ℚ and ℂ of infinite cardinality. The pinned native functor carrier alone supplies no sheaf equivalence.

## R06 (P2) — applied

Exceptional bundle, signs and negative-twist vanishing → import SchemeKTheoryOperations §5.7. §12.2 applies that vanishing to filtered quotients; §12.9 cites the same owner. Narrowed gap:blowup-exceptional-divisor to smoothness. Springer §9.7 supplies regular duality, smooth pullback and intermediate extension; its stability gap now requests the remaining general operations/comparisons. Both plan contracts agree.

## R07 (P2) — applied

§7.3: arbitrary given tame harmonic metric → Deligne-type metric, defined by equality of growth and canonical filtrations. Stated the quasi-unipotent polarized Hodge-metric specialization and its Rees comparison. Added a = 1/2 versus a = 0, including explicit lattices at b = 1/4. Evidence: Sab05 line 5351 and line 5402 through line 5411; §1.3.c.

## R08 (P1) — applied

§7.3 construction, API and Checks: asserted Hodge-weight preservation → Sabbah's weight-zero harmonic normalization; trivial triple direct-image weights 0,2 → −1,1 in shifted degrees −1,1. §7.4's proof route uses this construction and its Hodge Rees identification. §4.5's Hodge calculation remains 0,2. Evidence: Sab05 line 2009, line 5403, line 6405 and line 1834.

## R09 (P3) — applied

§3.1: VMHS locator → Kash86 §1.6, printed p. 993, retaining §1.4 only for fibres. §4.1: Rees locator → ESY §2.1, p. 18. §7.4: Sab10 Proposition 6.10 and proof → pp. 36–37; §6 range → pp. 31–37. Updated the corresponding source-manifest locators. Evidence: Kash86 line 78, ESY line 944, Sab10 line 1554 through line 1608.

## R10 (P2) — applied

§12.4's monomial-section identity now requires rational a ≥ 0, lattice exponents in the gauge cone, and the full-dimensional polytope of the stated toric model. Added n = 0 with a = 0 and −1: respectively ℂ = ℂ and 0 ≠ ℂ. Connected the cutoff to a = q − λ and the zero term for q < λ.

## R11 (P3) — applied

Added a labelled former-numbering map covering B, D, F, H.0, H.1, E, I, C, P, G, T and N, including individual shifted topics. H.1/operations → §5.1; H.1/weight-bounds → §5.2. Formal classification/index entries point to their existing supplier. Checked against design/README.md and the EllAdicHomotopyTypesAndWeights and KloostermanMomentsAndPotentialAutomorphy consumers. No consumer file changed.

## Verification outcomes

- Prescribed acceptance-test elaboration from the pinned content checkout: exit 0, one expected diagnostic:

```text
Suggested.lean:146:8: warning: declaration uses `sorry`
```

No TauCeti object build was needed: the file imports only Mathlib.

- A separate scratch copy appended `#check @name` for all thirteen declarations and elaborated successfully, again with only the expected sorry warning. Every implicit n, explicit index, polynomial, face and degree binder agrees with §§12.4 and 12.6. The headline retains both full-dimensionality and Newton-nondegeneracy hypotheses. No binder changed or disappeared. No section-variable block occurs.
- Suggested.lean still has twelve definitions/abbreviations with real bodies and the one deep concentration/volume theorem. None of these findings changes its objects or its headline hypothesis. The cutoff a is a README toric-section statement, not a Lean declaration. No boundary Check or supplier carrier was added to the acceptance test.
- JSON parsing and comparison against the original plan: deleting top-level gaps from both objects gives identical objects; all other plan fields are untouched. All six gap slugs have matching named-supplier contract lines in the README. TOML parsing succeeds for all 21 sources; existing source keys and access dispositions are preserved.
- Citation resolver: no cross-roadmap citation or Lean name found nowhere. Its warning that it cannot check pinned packages was addressed by direct searches in the supplied pins, not treated as library evidence.
- Pattern search found no remaining Springer Layers D/H citation, obsolete StratifiedSpaces Layers 5/8 citation, Fourier invisibility assertion, weight-preservation assertion, old Rees-cokernel criterion or the three incorrect locators. `git diff --check` succeeds.
- No gate failures beyond the listed review findings were supplied.

The prescribed dependency command, with the package README, package name, supplied order, movable flag and content checkout, exits 0 and prints exactly:

```text
depcheck: 236 roadmaps, 2145 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The merge-order file was not edited.

## Mathematical audit of the repairs

Rows below record calculations, not proofs by elaboration. Repeated formulas in a target's API, proof route, Checks and worked examples use the same row. The later table also records unchanged target families, so the repaired examples can be compared with their consumers. All scalar fields here are ℚ or ℂ as specified; positive-characteristic fields and the zero ring are outside the Hodge targets' hypotheses. Natural degrees above the dimension and dimension zero are explicitly included.

| Statement | Instances tried | Computed values on the two sides | Result | Change |
|---|---|---|---|---|
| §2.4 input-extension comparison | O on Gₘ | Middle extension transforms to δ₀, restriction 0; meromorphic extension transforms to a connection restricting to O, rank 1 | Original equality fails, ranks 0 ≠ 1 | Comparison correction retained after restriction |
| §2.4 j! versus j₊ | O on Gₘ | Comparison has input kernel and cokernel δ₀; FT gives constant lines as kernel and cokernel, each still rank 1 on Gₘ | No canonical isomorphism supplied by restriction | Three extensions kept distinct |
| §4.1 strictness criterion | Identity with source start 1, target start 0 | F₀ image 0 versus image∩F₀ = ℂ; R(coker u) = 0 versus coker(Ru) = ℂ[z]/(z) | z-torsion detects failure only in the latter | Corrected object |
| §4.1 positive strictness test | Both starts 0 | F₀ image = ℂ = image∩F₀; both cokernels 0 | Correct iff admits strict identity | Expanded Check |
| §4.1 saturation mechanism | n in FₚN whose class is zᵏ-torsion | zᵏ[n] = 0 means n ∈ u(Fₚ₊ₖM); strictness gives n ∈ u(FₚM), hence [n] = 0 | Uses exhaustiveness to cover every underlying image element | No new unproved auxiliary lemma |
| Operator convention, C5.1 | 1,x in ℂ[x] | (∂x−x∂)(1) = 1; on x it is 2x−x = x | Commutator is +1 | Owner corrected |
| PBW, F2.2 | Orders 0,1,2 on A¹ | Associated symbols 1,ξ,ξ²; order-piece ranks 1,2,3 | gr D = ℂ[x,ξ] | Owner corrected |
| Springer transfer normalization | Point into A¹; identity | x∂δ = (∂x−1)δ = −δ; shifts −1 and 0 | Same conventions at actual supplier | All uses updated |
| AlgebraicTopologyPartII control | Rotation and dilation, evaluated at (1,0) | dρ(−y,x) = 0; dρ(x,y) = 2 | Only rotation is controlled | Added Check and exact supplier |
| Proper isotopy boundary | Identity of a point; projection from plane minus nonnegative horizontal half-axis | First fibre one point; second fibres have 1 component for x < 0 and 2 for x ≥ 0 despite submersion | Properness cannot be discarded | Imported statement retains hypotheses |
| Local-system dictionary | Point, rank 0 and rank 1 | Stalk/value pairs 0/0 and Λ/Λ; rank 1, cardinality infinite for Λ = ℚ,ℂ | Finite-stalk dictionary cannot supply rank 1 here | Explicit coefficient gap |
| Dictionary transport | Constant rank-two system on circle, constant path and concatenated paths | Transport matrices I₂ and I₂I₂ = I₂; stalk dimension 2 on either description | Unit/transport compatibility belongs in contract | Gap states compatibility |
| Exceptional bundle/sign | Blow-up of A² at origin | E = P¹, normal O(−1), normal degree −1; O(−E) restricted to E has degree +1 | Same object as SchemeKTheoryOperations §5.7 | Duplicate ownership deleted |
| Exceptional negative twists | Codimensions 2 and 3 | RΓ(P¹,O(−1)) = 0; RΓ(P²,O(−1)) = RΓ(P²,O(−2)) = 0 | Imported range sufficient | §12.2 applies supplied result |
| Exceptional range/sign boundary | μ = c = 2; positive twist instead | h¹(P¹,O(−2)) = 1; h⁰(P¹,O(1)) = 2 | Neither enlarged range nor reversed sign works | Checks retained |
| Smooth-centre blow-up gap | Origin in A² | Charts ℂ[x,u] and ℂ[v,z], each smooth dimension 2 | Smoothness has content distinct from exceptional identification | Gap narrowed to smoothness |
| Regular duality/smooth pullback | O on A¹; A² → A¹ projection | Dual remains O; unshifted pullback O, normalized pullback O[1] | Supplied regular cases do not require new gap work | Stability gap narrowed |
| Deligne-type definition | Trivial connection, norm abs(t)^a, a = 0,1/2, index b = 1/4 | Growth lattice t^ceil(b−a)O gives tO and O; canonical lattice t^ceil(b)O = tO | Equality for a = 0, inequality for a = 1/2 | Missing hypothesis added |
| Hodge-metric specialization | Constant variation; unipotent weight-one block | Constant norm order 0; block squared norms grow as y and y⁻¹, y = −log(abs(t)), so both have power order 0 | Logarithms do not shift canonical parabolic exponents | Quasi-unipotent specialization stated |
| Harmonic/Rees comparison | Constant type (p,−p) line | Harmonic generator maps to z^(−p)v in the Hodge Rees bundle; both specialize to v at z = 1 | Bundle identification does not assert Hodge-weight preservation | §7.4 route clarified |
| Twistor weight normalization | Trivial triple on P¹ | Input twistor weight 0; output bundles O(−1),O(1) in degrees −1,1, weights −1,1 | Old 0,2 assignment fails | Twistor normalization separated |
| Hodge weight normalization | pℚ on P¹ | Input weight 1; H⁰(P¹) = ℚ weight 0 and H²(P¹) = ℚ(−1) weight 2 | Both satisfy w+j in their own normalization | §4.5 retained |
| Twistor point structure | Rank-one Hermitian space | Harmonic twistor bundle O has degree 0; a pure weight-w twistor has O(w), degree w | The same line can carry additional Hodge weights | Removed ambiguous point comparison |
| §7.4 strictness after normalization | δ₀V; constant input | Kernels of FᵖV → V equal 0; twisted constant cohomology and every filtered image equal 0 | Strictness unaffected by corrected twistor weights | Proof retains needed construction |
| Newton section identity | n = 0, a = −1,0 | Lattice span dimensions 0,1; H⁰(pt,O) dimensions 1,1 | Fails at −1, holds at 0 | Rational a ≥ 0 required |
| Newton section identity, positive range | φ = x, a = 0,1,1/2 | Monomial bases {1}, {1,x}, {1}; O(floor(a·∞)) has h⁰ 1,2,1 | Floor and cone agree | Cone restriction explicit |
| Newton degree cutoff | q = 0, λ = 1 and 0, n = 0 | First filtered term 0 by q < λ; second ℂ by h(0) = 0 | Negative a is never substituted into section identity | Linked to term definition |
| Former-numbering interface | H.1 operations/weight bounds; shifted I and N targets | Images are §§5.1/5.2, pure strictness §7.4, concentration §12.6 | No ambiguous uniform index shift | Individual mappings added |

## Audit across the target layers

Here K denotes j!pℚ on Gₘ, and dimensions are complex dimensions unless specified. Each row is keyed to one target; its calculations also cover the repeated conventions and worked examples involving that target.

| Statement | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|---|
| §1.1 stratification of maps | xy on A²; identity | Generic fibre ℂ× versus two intersecting lines at 0; identity fibre one point | Refinement necessary; control suppliers corrected |
| §1.2 constructible operations | A¹, empty space | H⁰(A¹) = ℚ, H²_c(A¹) = ℚ(−1); empty-space groups 0 | Both compact and ordinary operations retained |
| §1.3 middle perversity | Line, point, nodal divisor | Constant shifts [1], [0], [1]; nodal constant stalk rank 1 versus normalization rank 2 | No replacement by normalization |
| §1.4 Betti cycles | t,t², punctual V | Nearby ranks 1,2,0; t² eigenvalues +1,−1; punctual vanishing rank dim V | Full cycles retained |
| §1.5 regular RH | O, δ₀, Eᵗ | pDR values ℂ[1], ℂ₀; Eᵗ has pole order 2 at infinity and lies outside regular source | Owner citations corrected |
| §2.1 exponential twists | f = 0,t,t² | On 1, operators give 0,1,2t; polynomial cohomology dimensions (1,0),(0,0),(0,1) | Positive sign fixed by these values |
| §2.2 Fourier | δₐ, O, Kummer exponent α | FTδₐ = Eᵃᵗ, FTO = δ₀; square δₐ → δ₋ₐ; τ∂−α → −(t∂+1+α) | PBW/transfer owners corrected |
| §2.3 convolution | δₐ,δ_b; O,O | δₐ ⋆ δ_b = δₐ₊b; O ⋆ O = O[1], Fourier tensor has Tor₁ = δ₀ and Tor₀ = 0 | Derived tensor needed |
| §2.4 localized Fourier | O on Gₘ; E^(1/τ²) | Ranks 1 versus 0 for j₊/middle extension; irregular input pole order 2 exceeds regular-input hypothesis | Repaired comparison, retained slope hypothesis |
| §2.5 Fourier duality | δ₁ and O | Dual Eᵗ = E⁻ᵗ = reflection of Eᵗ; delta at 0 fixed by reflection | Sign involution retained |
| §3.1 mixed variations | ℚ(1), moving nonflat line | Weight −2, F⁻¹ = ℂ, F⁰ = 0; derivative of (1,t) is (0,1), outside its line | Coefficient gap and locator repaired |
| §3.2 full nearby limit | T = −1; size-two unipotent block | Full nearby rank 1 versus eigenvalue-one rank 0; weight-one block gives graded ranks 1 at weights 0,2 | All eigenvalues retained |
| §3.3 admissibility | N(e₁)=e₀ with W₀=ℚe₀,W₁=ℚ²; constant | First forces centres 0,1 but N(M₁) not in M₋₁ = 0; constant has N = 0 and M = W | Nonexample remains excluded |
| §3.4 curve L² | Constant on P¹; Legendre variation | H⁰ = ℚ,H² = ℚ(−1),H¹ = 0; Legendre χ = −2+1+1+0 = 0 and no global invariants, so parabolic H¹ = 0 | Numerical consistency only; Zucker waived |
| §4.1 Rees and side change | Shifted identity; constant curve | coker(Ru) = ℂ[z]/(z) versus R(coker u) = 0; right constant starts at F₋₁, not F₁ | Rees criterion repaired, side-change sign retained |
| §4.2 increasing V | xᵏ and ∂ᵏδ | Euler eigenvalues k and −1−k; nilpotence requires indices −k and 1+k | Same V convention retained |
| §4.3 pure Hodge modules | Constant curve; ℚ(1) on point | Weights 1 and −2; nearby constant weight 0 | Hodge weights remain distinct from twistor weights |
| §4.4 strict support | Trivial and T = −1 on Gₘ | Trivial middle extension O differs from meromorphic extension by δ₀; for T = −1 both ker(T−1) and coker(T−1) vanish | Intermediate extension not interchangeable in general |
| §4.5 projective direct images | P¹; blow-up of A² | Weights 0,2 in degrees −1,1; blow-up contributions pℚ and δ₀ℚ(−1), both weight 2 | Hodge calculation preserved |
| §4.6 mixed modules | K | W₀K = δ₀ℚ, gr₁K = pℚ, ranks 1 and 1 on their supports | Finite weights need admissible gluing, not purity |
| §4.7 simultaneous strictness | δ₀ℚ → K | Fibre map ℂ → ℂ is identity, W₀∩F⁰ = ℂ on both fibres, all higher Hodge steps 0 | Intersection equation retained |
| §5.1 operations | Constant curve, diagonal tensor | Dual weight 1−2 = −1; Δ*(ℚ[2]) = ℚ[2] = pℚ[1] | Transfer gap narrowed, shifts retained |
| §5.2 weight bounds | Gₘ and P¹ to point | Gₘ middle ordinary/compact weights 2 ≥ 1 and 0 ≤ 1; P¹ weights 1+j = 0,2 | Nonproper purity not asserted |
| §5.3 Hodge cycles | Residue R, R²=0; T=−1 | T = 1−2πiR gives N = −R; T = −1 has ψ₁ rank 0, full ψ rank 1 | Sign and full nearby rank retained |
| §5.4 costalk | Constant curve; rank-two Jordan block | i!pℚ = ℚ(−1)[−1], stalk = ℚ[1]; rank(coker N) = 2−1 = 1 | Costalk and stalk distinguished |
| §5.5 divisor localization | Origin; xy = 0 | Kernel of j!pℚ → pℚ is δ₀ℚ; node complement has Betti ranks 1,2,1, producing costalk ranks 2,1 | Smooth purity not used for singular node |
| §5.6 fixed part | Constant rank r, connected X | H⁰(X,L) = ℚʳ, evaluation rank r; on two disconnected points rank 2r → r | Connectedness essential |
| §6.1 exponential category | K, constant, delta | RΓK = 0 from identity ℚ → ℚ; RΓpℚ = ℚ[1]; RΓδ₀ = ℚ | Punctual subobject does not exclude K |
| §6.2 projector | δ₀,pℚ,K | Πδ₀ = K, Πpℚ = 0, ΠK = K | Unit direction and idempotence consistent |
| §6.3 tensor | K,K; translated deltas | K⊗ᴱK = K; Πδₐ⊗ᴱΠδ_b = Πδₐ₊b, fibre dimension 1 | No alternate unit |
| §6.4 exponential weights | K and K(1) | Ambient K weights 0,1; exponential weight 0; twist gives exponential weight −2 | Ambient/exponential distinction retained |
| §6.5 fibre | O,δₐ,K | ∂+1 bijective on ℂ[t], so ωO = 0; ωδₐ and ωK each dimension 1 | Constant Fourier corrections not conflated with punctual ones |
| §6.6 Fourier projector | δ₀ and O | FTΠδ₀ = O(*0); (FTO)(*0) = δ₀(*0) = 0 | Agrees with corrected §2.4 |
| §7.1 Deligne filtration | δ₀ℚ(−1); x = θ⁻¹ | Last step F¹ = ℂ, F^(1+ε) = 0; exponential term at infinity −x⁻² | Ceiling and sign retained |
| §7.2 Laplace specialization | τ = z; τ = 1 | Operators become z(∂θ+1) and z∂θ+1 respectively; only first is the Rees exponential | Correct specialization retained |
| §7.3 twistor construction | Trivial line with a = 0,1/2; P¹ | Growth/canonical lattices at b=1/4 equal tO/tO or O/tO; P¹ output twistor weights −1,1 | Hypothesis and weights repaired |
| §7.4 pure strictness | δ₀V; constant | Kernel of FᵖV → V is 0; constant twisted cohomology 0 | Strictness retained with corrected route/locator |
| §7.5 mixed degeneration | 0 → δ₀ℚ → K → pℚ → 0 | Twisted fibres 0 → ℂ → ℂ → 0, at λ≤0; all zero at λ>0 | Extension gives no new differential |
| §7.6 bifiltered realization | δ₀ℚ → K; pℚ → j*pℚ | Fibre maps identity and 0 → ℂ; image/intersection dimensions 1 and 0 | Both filtrations checked together |
| §8.1 classical embedding | I(ℚ); Πδₐ, a≠0 | First is K with φ₁ rank 1; second has φ₁ rank 0 and fibre rank 1 | Integral jumps alone not classicality |
| §8.2 classical filtration | ℚ,ℚ(−1) | F⁰/F^(ε) dimensions 1/0 for ℚ; F¹/F^(1+ε) dimensions 1/0 for ℚ(−1) | Rational ceiling agrees |
| §9.1 pair cohomology | Point; (A¹,0); (A¹,t) | Point degree 0 dimension 1; zero line ordinary degree 0/compact degree 2; identity function all dimensions 0 | Ambient shift retained |
| §9.2 de Rham realization | Punctual coefficient in d-fold; (Gₘ,x) | First class in unshifted degree d, r−d = 0; second ordinary fibre dimension 1 | Supported coefficients not renormalized |
| §9.3 product/duality | Two torus lines; same versus opposite sign | Ordinary product jump 2, compact jump 0; same-sign cup targets H²_c(Gₘ,2x)=0, opposite sign pairs lines perfectly | Negative exponential necessary |
| §9.4 lowest-weight criterion | (Gₘ,x); (A¹,x²) | First middle and both gr₁ spaces 0; second middle and both gr₁ spaces dimension 1 with identity comparison | Both directions consistent in zero/nonzero cases |
| §9.5 divisor pair sequences | Zero in A¹ | Compact boundary gives I(ℚ), ordinary boundary I(ℚ(−1)), each degree 1 | Twist/degree matches §5.5 |
| §9.6 torus sums | k = 0,1,2 | Central dimensions 1,1,1; ordinary jumps 0,1,2, compact jumps 0,0,0; comparison identity,0,0 | Point case retained |
| §10.1 tg classicality | g = 0,1,x | On point g=0 gives ordinary degree 0/compact degree 2; g=1 all zero; g=x on line degree 2 line | No smooth-zero-locus restriction added |
| §10.2 zero locus | x; xy; x² | Smooth point yields degree 2 ℚ(−1); node gives supported ranks 2 in degree 2 and 1 in degree 3; x² has same support as reduced point | Reduced support and singular formula retained |
| §11.1 Fourier cohomology | δ₀,O,δ₁ | Ordinary cohomology dimensions (1,0),(0,1),(0,0) in degrees 0,1 | Correct range |
| §11.2 Fourier costalk | O and K | O costalk only degree 1, twist −1; K costalk dimensions 1,1, as de Rham O(*0) | No stalk substitution |
| §11.3 pure Fourier Hodge numbers | Smooth constant; Jordan block 2 | Smooth input Hodge jump 0 → output jump 1; singular rank 2 gives coker N dimension 1 | Smoothness retained for rank equality |
| §11.4 constant correction | δ₀; monodromy −1 | First quotient pℚ weight 1 and Fourier H¹ weight 2; second quotient 0 | l−1 shift retained |
| §11.5 stationary phase | O,δ₁,δ₀ | φ₀FTO = ℂ = ψ∞O; for either delta both sides 0; original φ₀δ₀ = ℂ is a different object | Input infinity retained |
| §11.6 infinity monodromy | δ₀; blocks sizes 1,3 | ψ∞K line weight 0, N=0; two primitive indices 0,2 give correction weights w+2,w+4 | Every primitive part retained |
| §12.1 logarithmic complex | Point; x and x² on line | Point F⁰ dimension 1, F^(>0) dimension 0; pole multiplicities 1,2 give bounds floor(q−λ),floor(2(q−λ)) | Multiplicities retained |
| §12.2 filtered blow-up | z/x; c=2 and 3 | Charts give z′ and 1/x′, exceptional pole multiplicity 0; negative-twist cohomology 0 in stated ranges | Imported vanishing applied, not re-proved |
| §12.3 model independence | (Gₘ,x); (A¹,x²) | Both model filtrations have ordinary/compact jumps 1/0 for first, 1/2 for second | Rational indices retained |
| §12.4 Newton complex | x; x+x⁻¹; (x+y)²; n=0 | Gauges m on m≥0, |m|; last face Euler derivatives both 0 at (1,−1); at n=0 cutoff −1 gives 0 ≠ ℂ | Nonnegative cutoff repaired |
| §12.5 graded acyclicity | x; degenerate edge; n=0 | Graded quotient ℂ[x]/(x) dimension 1; degenerate edge derivatives share x+y; empty regular sequence leaves ℂ dimension 1 | Nondegeneracy not bypassed |
| §12.6 concentration/volume | n=0; x; x+x⁻¹; x on two-torus | Dimensions 1=0!·1, 1=1!·1, 2=1!·2; last has H¹=H²=ℂ and Δ not full dimensional | Lean headline remains general and valid |
| §12.7 Newton–Hodge | x; x+x⁻¹ | First top class gauge 0, jump 1; second two classes with jumps 0,1 and dimension 2 | No convenience hypothesis imposed |
| §12.8 boundary correction | x; x+x⁻¹; x+y+1/(xy) | Nonconvenient first has compact/ordinary weights 0,2; convenient cases central dimensions 2 and 2!·(3/2)=3 | Convenience distinguishes failure |
| §12.9 filtered product/duality | Two quadratic lines; torus line | Jumps 1/2+1/2=1; ann F^λ_c is 0 for λ≤0 and ℂ for λ>0, equal to ordinary F^(>1−λ) | Strict inequality retained |

## Acceptance-test definitions and conventions

| Statement | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| LaurentRing | n = 0,1 | Character groups are {0} and ℤ; rings are ℂ and ℂ[x,x⁻¹], with x·x⁻¹ = 1 | Real native carrier, unchanged |
| eulerDerivation | 1,x,x⁻¹ | Outputs 0,x,−x⁻¹; Leibniz on x·x⁻¹ gives 0 = x·(−x⁻¹)+x·x⁻¹ | Euler sign fixed |
| twistedEuler | φ=x, g=1,x⁻¹ | Outputs x and 1−x⁻¹; φ=0 gives the preceding Euler outputs | Multiplication by θφ included |
| twistedDifferential | n=2, φ=0, g=xy | Two second-differential terms xy−xy = 0; replacing alternating signs by + gives 2xy | Sign witness on actual algebraic forms |
| forms | n=0 and n=2 | Rank in Laurent coefficients 1 at degree 0 for n=0, then 0; for n=2 ranks 1,2,1,0 in degrees 0,1,2,3 | Out-of-range forms vanish |
| cocycles | φ=0,n=1; φ=x,n=1 | Degree-zero kernels ℂ and 0; degree-one cocycles whole Laurent ring in both cases | Actual differential matters |
| coboundaries | q=0,1 | q=0 join has no p with p+1=0, hence 0; q=1 image of the degree-zero differential | No natural-subtraction predecessor at 0 |
| topCohomology | n=0; n=1,φ=0,x | Quotients ℂ/0 = ℂ; Laurent/Euler-image = ℂ·1; Laurent/(θ+x)-image = ℂ·1 | Degree and dimension agree |
| latticePoint | m=−1,0,1 in rank one | Real images −1,0,1; additive test image(−1+1) = 0 = −1+1 | No loss of negative exponents |
| newtonPolytope | φ=0,x,x+x⁻¹ | Sets {0},[0,1],[−1,1]; volumes 0,1,2 in rank one | Origin included even if absent from support |
| faceEulerEval | φ=x,σ={1},z=2 and −1 | Values 2 and −1; empty σ gives 0 but is excluded by nonemptiness | Evaluation uses Euler coefficient and Laurent exponents |
| IsNewtonNondegenerate | x; (x+y)²; constant in n=0 | Away-from-origin face for x has derivative z≠0; degenerate edge gives (0,0) at (1,−1); n=0 has no nonempty face excluding 0 | Positive and negative models separated |
| twistedDeRham_concentration_finrank | n=0,1,2; zero polynomial | n=0 gives 1=0!·1; x+x⁻¹ gives 2=1!·2; two-variable simplex gives 1=2!·1/2; zero polynomial in rank one has H⁰=H¹=ℂ and fails full dimension | No padding or hypothesis change |
| Variety/coefficient conventions | Point, empty variety, ℚ(1) | Point dimension 0; empty cohomology 0; Tate line dimension 1 over ℚ and ℂ | Coefficient fields fixed, no finite-cardinality assumption |
| Cohomological degree convention | O and δ on A¹ | Unshifted DR(O) has H⁰=ℂ, pDR(O)=ℂ[1]; unshifted DR(δ) has H¹=ℂ, pDR(δ)=ℂ₀ | Shift by ambient dimension consistent |
| Increasing/decreasing filtration | Constant line, constant curve right module | F₀=ℂ,F₋₁=0 gives F⁰=ℂ,F¹=0; right constant starts at −1 | Side-change shift retained |
| Point direct-image filtration | V with F₀=V | F₀(i₊V)=0, F₁(i₊V)=Vδ, F₂ adds V∂δ; filtered H¹ returns V at original index 0 | Codimension shift retained |
| Tate/duality convention | ℚ(1); constant line | Weight 0−2=−2; D(pℚ_A¹)=pℚ_A¹(1) of weight −1; i!pℚ=ℚ(−1)[−1] | All twist signs agree |
| Exponential/Fourier convention | f=θ and δ₁ | Infinity operator ∂x−x⁻²; FTδ₁=Eᵗ, FT²δ₁=δ₋₁ | Same + kernel used throughout |
| Specialization normalization | R²=0 | exp(−2πiR)=1−2πiR; normalized log equals −R; normalized variation composite N versus topological composite T−1=−2πiR | Factor not discarded |
| Exponential weights and fibre | K and constant | Ambient weights 0,1 versus exponential 0; fibres ℂ versus 0 | Corrected Fourier comparison compatible |
| Rational filtration convention | Classical ℚ(−1), λ=1,3/2 | F^ceil(λ) dimensions 1,0 | Ceiling unchanged by nonnegative Newton cutoff |
| Volume convention | Rank 0; interval [−1,1]; standard triangle | Volumes 1,2,1/2; factorial multiples 1,2,1 | Point is not volume zero |

## Sources, suppliers and ownership

The changed locators were opened in the supplied legal cached extractions. The relevant evidence is Kash86 line 78 through line 85 (VMHS), ESY line 944 through line 960 (graded Rees modules), Sab05 line 992 through line 1028 (harmonic/Hodge Rees comparison), line 2009 through line 2012 (weight-zero harmonic structures), line 5345 through line 5352 (Deligne type), line 5402 through line 5411 (extension and converse), line 1834 and line 6405 through line 6408 (direct-image weights), and Sab10 line 1554 through line 1608 (strictness and proof across pp. 36–37). Sab05 line 596 and line 804 fix the shifted de Rham degrees. AS line 569 through line 590 retains the Laurent, rather than just cone-algebra, theorem for the unchanged headline. No source passage was copied into a deliverable.

A general reason for R02 is visible without a new source: in a graded Rees cokernel, a homogeneous class n of degree p is killed by zᵏ precisely when n belongs to u(Fₚ₊ₖM). Its vanishing is n belonging to u(FₚM). Exhaustiveness makes absence of such torsion equivalent to u(FₚM)=im(u)∩FₚN. Rees of the filtered cokernel is already built from subobjects of the ordinary cokernel and cannot detect a nonsaturated Rees image. The computed shifted identity exhibits the difference.

For R10, the divisor inequalities on the toric refinement say m belongs to aΔ. For a≥0 this is equivalent to m belonging to the gauge cone with h(m)≤a; integral divisor orders replace the rational inequalities by the rounded coefficients. At a<0 this scaling argument is inapplicable, and the point example directly disproves the unrestricted identity. This changes neither the domain of the Laurent headline nor its dimension-zero case.

Cross-roadmap citations were resolved against main and the accessible open heads using the roadmap tools and direct reads. The inspected sections are recorded here; they are imports, not new targets in this package.

| Supplier | Sections and boundary inspected |
|---|---|
| ComplexComparisonPartII | C5.1 ordinary operators; C-1.1 analytification; C6.0 topology; C6.1 finite local systems versus arbitrary-ring compact supports; C5.6 canonical logarithmic extension and regular-singular comparison. No inference from the complex connection dictionary to the rational native-functor dictionary. |
| FormalConnectionsOpers | F2.2 imports ordinary operators, owns symbols/Lie–Rinehart PBW and characteristic-zero comparison. Projectivity retained. |
| SpringerResolutionAndCharacteristicCycles | §§8.1–8.5 and 9.1–9.7. Its own ownership paragraph imports operators and PBW from the two preceding owners. §9.7 explicitly supplies duality, smooth pullback and intermediate extension, but not the complete remaining regular derived-operation contract. |
| StratifiedSpacesAndTameTopology | §§7.2–7.3, with differentiability/smooth cell-decomposition hypotheses and the Nash semialgebraic specialization. Control data are imported there, not owned there. |
| AlgebraicTopologyPartII | §§16.1a–16.1e, including tube equations, controlled lifts and properness in isotopy. |
| SchemeKTheoryOperations | §5.7, Koszul-regular centre, conormal convention, negative twists and perfect G. The application uses G=O_Z, which is perfect, and smooth centres, which are regular immersions. |
| SchemeAndStackFoundations | §§0.17, 2.2, 2.6, 2.18, 2.20, 3.3, 4.11, 4.17, 5.5. Conormal/normal duality remains distinct from the requested smoothness of the blown-up variety. |
| PadicDifferentialEquationsAndRigidCohomology | RD.6.52a–RD.6.53, characteristic-zero formal classification, good pairs and global curve index. For Eˣ on Gₘ the index is 0−1=−1; H⁰=0 gives H¹ dimension 1. |
| ShimuraData | §§3.1–3.3: pure finite-rank variations, morphisms and rational parallel polarizations. Mixed W remains this package's addition. |
| ShimuraVarieties | §§3.5b.1–3.5b.2: integral-lattice hypothesis, unipotent power cover, limiting filtrations and sector Hodge norms. The one-variable quasi-unipotent rational specialization retains the stable-lattice justification. |
| LefschetzPencilsAndVanishingCycles | §§1.3–1.5, 1.7, 3.4: absolute filtration, primitive decomposition, uniqueness without relative existence, normalized variation and pencils. No Betti cycles imported from its étale construction. |
| ResolutionOfSingularitiesCharacteristicZero | §§5.1, 5.2, 6.2 on main: principalization, embedded resolution and smooth SNC compactification. The nonzero-at-generic-points and reduced-centre formulations remain intact. |
| EnhancedDerivedSheaves | §§0.1–0.4, E1.4: module-sheaf enhancements, replacements and derived functors. Geometric constructibility remains in this package's Layer 1. |
| AlgebraicCurves | Layers 9 and 12 on main: Laurent expansions/differentials and projective models. |
| AnalyticToricGeometry / PartII | Base Layer 0 and PartII §§0.1–0.3. Monomial divisor sections use the stated character inequalities; normal-fan/refinement and rounded-nef vanishing remain explicit gaps. |

Read main-roadmap shape in AlgebraicCurves and ResolutionOfSingularitiesCharacteristicZero, and the enhancement sections of EnhancedDerivedSheaves. Existing twelve layers and target organization are preserved; the former-numbering map is a compatibility addition.

Ownership searches used the roadmap open-head/main index for twistor structures, local coefficient systems, Rees objects and exceptional geometry, as well as board packages and the pinned sources. Twistor hits concerned geometric twistor fibrations, not the Sab05 category; this package retains its existing curve twistor target. Generic operators/PBW, control data, and exceptional geometry are now assigned to their verified earlier owners. No new target construction is claimed here. The local-system coefficient extension remains with its existing dictionary owner as an explicit gap, not a parallel carrier.

The closest open roadmaps' scope and ownership were read: SheafConvolutionOnAbelianVarieties owns proper abelian convolution/Fourier–Mukai–Mellin and needs the holonomic comparison; EtaleDualityAndPerverseSheaves has finite/adic étale coefficients; PadicDifferentialEquationsAndRigidCohomology supplies the formal curve statements; ComplexComparisonPartII stops at the specified regular-singular/finite-dictionary contracts; LefschetzPencilsAndVanishingCycles supplies the abstract monodromy inputs. None supplies the repaired rational Hodge/twistor targets instead. The supplied overlaps file reports no competing head changing this package and no dropped supplier identifiers. The directly read old supplier citations and consumer identifiers were still repaired. Ownership against accessible open heads was checked; no unavailable head is claimed to have been inspected.

At the pins, TauCeti/AlgebraicTopology/LocalCoefficient.lean:46 defines LocalCoefficientSystem as a fundamental-groupoid functor to ModuleCat over any ring. It imposes neither finite cardinality nor a sheaf equivalence. Mathlib/Algebra/Polynomial/Laurent.lean:85 has the one-variable Laurent polynomial abbreviation; Mathlib/Algebra/MvPolynomial/Derivation.lean:114 has polynomial derivations on nonnegative exponents. These do not state Laurent twisted concentration. Mathlib/Analysis/Calculus/DifferentialForm/Basic.lean:229 and :235 concern smooth exterior differentiation, not the algebraic exponential cohomology theorem. Mathlib/LinearAlgebra/FiniteDimensional/Defs.lean:140 deduces finite dimensionality from positive finrank, but provides neither concentration nor the volume formula. The supplied near-match list was compared with these native carriers and hypotheses; none is a duplicate headline. Direct searches of both pins found no Newton-nondegeneracy/twistor-Hodge-module carrier replacing the missing headline carriers. The sole admitted theorem is therefore kept; the other headlines remain explicitly unstatable in the module docstring.

## Maintainer consequences and limits

No Lean name was added, deleted or renamed. Existing consumers can follow the former-numbering table without editing their files. New explicit supplier dependency: ComplexComparisonPartII C6.1's finite-dimensional rational/complex sheaf/native dictionary, under gap:rational-complex-local-system-dictionary. The Springer specializability gap remains; its stability gap excludes cases already supplied. The exceptional-divisor gap now requests smoothness alone. The two toric gaps are unchanged. These are declared supplier requirements, not assertions that other roadmap files have been changed or that the supplier work is complete.

All six prior-review repairs remain represented; this round narrows their contracts where the independent review established existing ownership. No external writes, commits, merge-order edits, sibling edits or tooling changes were made. Zucker remains waived; Dimca, Schmid, SZ, Verdier, Kash76 and Kou remain uncertified and cited only under their settled locators. No new unavailable text was needed, and no new reference request was made. The numerical audit does not certify those inaccessible texts or prove the admitted theorem; independent review still follows.
