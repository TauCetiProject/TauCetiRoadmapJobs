# Review of SchubertGeometry (pull request #1224 at b6cf2e7)

**Verdict:** accepted

:robot: Independent AI incremental review of 29 changed lines since f26277a. There are no remaining P1 or P2 findings. This verdict means ready for human final approval, not AI approval or merger. One nonblocking P3 note remains.

## R01 (P3) — The cited works still have no source manifest

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:1516–1518`, “MerkurjevEquivariant”; absent `TauCetiRoadmap/SchubertGeometry/sources.toml`.

**Claim:** The required source registry should preserve each cited work's identity, legal provenance, version and verification status.

**Witness:** The folder still contains only README.md, Suggested.lean and metadata.toml. The newly cited Merkurjev author draft has no registry entry, just as the previously cited works have none.

**Repair:** Add one manifest entry per cited work under the required source schema, retaining existing bibliography keys and settled locator-only statuses. For MerkurjevEquivariant record the author URL, legal fetch metadata and explicitly the 2000 draft numbering: Corollary 1.12, p. 5, and Proposition 6.5, pp. 15–16. This instance was fetched legally and its two locators read; the proposed entry identifies the actual version checked. Do not duplicate it under the 2005 chapter's title or numbering. This carries previous R04 as a P3 note and does not block acceptance under this review's verdict rules.

## Previous findings

- R01 — repaired: README lines 958 and 1002 now name X_(1); line 958 contrasts its pivots (2,4) and dimension 3 with X_(2,1), pivots (1,3), smooth ℙ¹ and dimension 1.
- R02 — repaired: README line 936 requires a strict projected cover and uses coset indices; lines 941–942 include both collapsed endpoints and a positive coefficient whose projected interval has an intermediate coset.
- R03 — repaired: README lines 1020, 1026 and 1040 separate Steinberg freeness from geometric identification, name homogeneous-bundle and restriction maps, and cite Merkurjev's matching author-draft results.
- R04 — not repaired: No sources.toml exists; README lines 1516–1518 add a further identifiable work without a manifest entry. This remains the nonblocking P3 note R01 above.

## Verified sound

**Scope and checks.** The actual diff is 18 insertions and 11 deletions, all in the README. Suggested.lean and the library pins are unchanged. The outside-folder diff against origin/main is empty, and the worktree was clean before and after review. I reviewed the changed passages and their dependent interfaces S1.3, S3.1–3.2, S4.3, S4.6–4.7, S5.5, S6.3, S7.3 and S8.4–8.5. The remainder of the previous review is carried forward, not represented as a second full review. RootSystems and ReflectionInvariantTheory on main were read for repository shape.

**Gate and Lean.** The worker's head-specific gate has every scanner, dependency and build check zero. An independent gate rerun also passed every reported check, including outside-folder, stray-files and depcheck. I separately ran the targeted build: `lake build TauCetiRoadmap.SchubertGeometry.Suggested` returned “Build completed successfully (8976 jobs).” Direct `lake env lean` elaboration of `TauCetiRoadmap/SchubertGeometry/Suggested.lean` returned exit 0 with no diagnostics. There is one Mathlib import and no own declarations, sorry'd data, set_option or admitted examples. There are zero named signatures for the required `#check @name` probe and zero sorried theorems for a one-tactic padding probe; neither probe can have a changed signature or a padding witness here.

The independent dependency check returned exactly:

    depcheck: 204 roadmaps, 1475 edges, 0 problem(s)

No UPWARD, CYCLE or moved line occurred. No supplier was added by the diff; all new needs are maps explicitly made targets in S8.3. The relevant Needs lines preserve S4.3 combinatorics before S7 valuations, then S4.6/S6.3 geometry. S8.2's ordinary argument uses S5–S7 rather than assuming S8.3, so the new change-of-groups target introduces no circular proof route.

**Headline coverage.** The unchanged docstring names the ten headline families: relative flags/Schubert incidence; all-word images and derived pushforward; geometric Demazure/Weyl characters; LS components/characters/tensors; splitting/normality/vanishing; standard monomials; Chevalley/cycle comparison; flag K-ring presentations; proper coherent GAGA; analytic Lefschetz/moment–Morse/associated-line comparisons. It identifies their missing geometric carriers. The new S8.3 maps still require equivariant flag bundles and their K-groups; they are not made statable by the existing abstract exact Grothendieck group or invertible-sheaf carrier. No stand-in theorem was introduced.

**Sources and the seeded sample.** In this incremental round the changed seeded target is S8.3; S6.3 was checked as a consumer of the repaired divisor/bond interface. The other seeded targets (S1.2, S2.2, S3.1, S3.2, S3.3, S3.6, S5.1, S5.2, S5.5, S5.6, S9.2, S9.6, S9.7) are unchanged and retain the previous review's evidence and the carried numerical rows below. No locator newly marked unverified was introduced.

MerkurjevEquivariant was fetched through the source service from the author's UCLA page. The source header identifies the 2000 draft. The following text was opened:

| Target/input | Source locator | What was verified |
|---|---|---|
| Homogeneous-bundle/fibre identification | MerkurjevEquivariant lines 185–203; Theorem 1.11 and Corollary 1.12, printed p. 5 | Restriction to the identity coset is the categorical equivalence; its inverse is the associated bundle with the same fibre character as S3.1. Both vector-bundle and coherent groups are identified. |
| Flag change of groups | MerkurjevEquivariant lines 637–663; Proposition 6.5, printed pp. 15–16 | G split reductive over a field, maximal split T, simply connected derived subgroup; the map is extension of scalars along equivariant restriction. Taking X=G/P− gives the new target. |
| Coherent versus vector-bundle groups | MerkurjevEquivariant lines 182–184; Theorem 1.10, printed p. 5 | The source first states the change-of-groups theorem for coherent K-theory. Smooth projective flags satisfy the smooth comparison, so this does not assert equality on singular Schubert schemes. |
| Freeness distinguished from geometric comparison | MerkurjevEquivariant lines 256–280 and 646–663; Proposition 2.2, pp. 6–7, and proof of Proposition 6.5 | Freeness supplies a representation-ring basis; homogeneous descent and the geometric comparison are additional inputs. The revised text no longer attributes the latter to freeness alone. |

The precise Steinberg1975 Theorem 2.2/Remark 2.3 locator is inherited from the previous review's direct reading (Steinberg1975 lines 30–54). This round's title-based source-service lookup returned uncertified, so I do not claim to have reread that text. The new Merkurjev text independently supplies the geometric theorem at the required generality. The LLM standard-monomial locator for unchanged S6.3 remains the previous reading: LLM lines 251–255, Theorem 4, p. 299, and lines 324–328, Theorem 6, p. 301; its induction is explicitly a proof target rather than attributed verbatim to LLM.

**Pin and ownership audit.** Mathlib pin is `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti pin is `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Five pertinent declaration locations were reopened:

| Pin-relative file and line | Declaration/body | Consequence for the repair |
|---|---|---|
| `Mathlib/RingTheory/Grassmannian.lean:66` | Module.Grassmannian stores a submodule, finite projective quotient, and constant stalk rank | A module carrier does not supply the flag scheme or K-ring needed for S8.3. |
| `TauCeti/GroupTheory/Coxeter/Bruhat.lean:87` | BruhatStep is multiplication by a reflection with strict length increase | Strict increase alone does not encode a quotient cover. |
| `TauCeti/GroupTheory/Coxeter/Bruhat.lean:159` | BruhatLE is the reflexive transitive closure | Order is supplied; S4.3's positive cover bond is additional data on its stated domain. |
| `TauCeti/GroupTheory/Coxeter/Parabolic.lean:233` | IsMinimalCosetRep compares lengths in the actual parabolic coset | The repaired indices are cosets, not arbitrary representatives with the same weight. |
| `TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:89` and line 112 | isInvertible and InvertibleSheaf are the rank-one predicate and its full subcategory | No equivariant structure or associated-bundle equivalence is hidden in the carrier. |

Object searches used homogeneous bundles, change of groups, equivariant K-theory, representation rings and Schubert carriers in pinned libraries, main, board packages and the supplied open-work index. No existing owner of the new flag-specific change-of-groups identification was found. The earlier SchubertGeometry already owns flag K-rings; these two maps fill its existing geometric comparison rather than create a second generic K-theory programme. No own fully qualified Lean name can collide: this file declares none.

Affected supplier citations were resolved against main, not newer revisions of existing roadmaps: `TauCetiRoadmap/ReductiveGroups/README.md:627` (Layer 7 parabolics and Levi decomposition), line 653 (7C ordered root coordinates), and line 1760 onward (rational induction/representations with the same B− section convention); `TauCetiRoadmap/SchemeAndStackFoundations/README.md:6988` (§5.7 exact K₀/G₀, regular resolution property and proper coherent pushforward). The latter explicitly consumes GrothendieckEulerForms rather than defining another exact Grothendieck group. These contracts supply the generic objects; S8.1/S8.3 own their equivariant flag application. Broad roadmaps grep searches were checked as leads, including the supplied GeneralAlgebraicKTheoryPartII head; no conflicting homogeneous-flag target appeared. No ownership claim is made about an open head whose files were not supplied.

The citation resolver was rerun and returned the same five apparent misses, all bibliography keys: BrionFlags, KnutsonBottSamelson, KnutsonDemazure, SerreGAGA and KnutsonSymplectic. They are not missing roadmap suppliers. Its warning that it did not check pinned library names is covered by the local pin inspection above.

**Adversarial table.** Fresh integer/rational permutation and Plücker calculations accompany direct local-ring and K-ring calculations. Each row records actual values; they test the stated instances, not universal proofs. The first group recomputes every changed mathematical assertion and the affected minuscule interface. The second group preserves untouched rows, explicitly citing the previous review; historical R01/R02 labels in those rows refer to that report.

| Statement | Instances | Values computed on both sides / wrong-model control | Result; change |
|---|---|---|---|
| S7.1 projected-cover coefficient and transported root | GL₃, λ=ω₁, w=s₁s₂, v=s₁ or s₂ | Weights (ε₂,ε₂) give pairing=transported pairing=0 and no cover; (ε₂,ε₁) give 1=1 with positive root α₁ and bond 1 | Pass; equality is conditional on a strict quotient cover |
| S7.1 positive non-cover and genuine cover | GL₃, λ=ω₁, w=s₂s₁ | v=s₂ gives (ε₃,ε₁), coefficient 1 but intermediate ε₂; v=s₁ gives (ε₃,ε₂), coefficient=−⟨ε₃,α₂∨⟩=1=bond | Pass; the new negative control excludes positivity alone |
| S7.1 regular-weight control | GL₃ w=s₁s₂, λ=ρ represented by (2,1,0) | Pairings with α₂∨ and (α₁+α₂)∨ are 1 and 2; adding (c,c,c) changes both by 0 | Pass; clarified w does not change multiplicities |
| S7.2 cone label and negative control | Gr(2,4), pivots (2,4) and (1,3) | λ=(1,0), dimension 3=4−1; λ=(2,1), dimension 1=4−3 and F₁⊂V⊂F₃ gives ℙ(F₃/F₁)=ℙ¹ | Pass; previous R01 repaired |
| S7.2 boundary-plane labels and equation | Cone, p₂₄=0 | Equation becomes p₁₄p₂₃=0; X_(2) has pivots (1,4), p₂₃=p₂₄=0; X_(1,1) has pivots (2,3), p₁₄=p₂₄=0. Both dimensions 2 | Pass; each component occurs once |
| S7.2 reducedness and non-Cartier components | Vertex chart p₁₂=1; characteristic 2 included | Local ring k[b,c,d,e]/(be−cd); boundary e=0 gives cd=0. Each ruling ideal (d,e) or (c,e) has two independent generators modulo the maximal ideal, versus one for a Cartier ideal | Pass; union Cartier, components not Cartier at vertex |
| S7.2 independent finite-field incidence test | All Plücker points over 𝔽₂ | Gr(2,4):35; cone:19=1+2+4+4+8; boundary:11=7+7−3; X_(2,1):3=card ℙ¹(𝔽₂) | Pass; exhaustive six-coordinate enumeration |
| S8.1 ambient Schubert K-classes | Six partitions in 2×2; cone and smooth curve | Ambient rank 6=binomial(4,2); χ(O_X)=1 for all six. Cone exact sequence in ℙ⁴ gives χ=1−χ(O(−2))=1−0=1; curve χ=1 | Pass; singular example now X_(1), no singular K₀=G₀ claim |
| S8.2 ordinary presentation and freeness input | SL₂; torus; trivial group | R(T) has rank 2 over ℤ[z+z⁻¹]; augmentation gives (z−1)²=0 and rank 2 over ℤ. Torus gives ℤ, trivial group gives ℤ | Pass; representation-ring freeness is distinguished from the geometric kernel theorem |
| S8.3 homogeneous bundle and inverse fibre | SL₂/B−, character z and zero representation | Fibre of G×^(B−)k_z at e has weight z, dimension 1; at s weight z⁻¹. Fibre of zero bundle is 0, not the unit. Fibre then association recovers the same character | Pass; Corollary 1.12 identifies the actual maps |
| S8.3 change of groups and factor order | SL₂, z=2; product of two tensor generators | 1⊗z restricts to (2,1/2); z⊗1 to (2,2); product z⊗z to (4,1). Swapping factors would change the second entry from 1/2 to 2 | Pass; Proposition 6.5 and the stated map agree |
| S8.3 partial/point flags and augmentation | P=G; G=T; G=1 | R(T)⊗_(R(G))R(G)→R(T) sends a⊗b to a·res(b), rank 1 over R(T). For G=T, z⊗z maps z², value 4 at z=2; augmentation gives 1. For G=1 both sides ℤ, 1↦1 | Pass; no missing semisimplicity or rank-positive hypothesis |
| Dependent S4.6/S6.3 minuscule geometry | λ=ω₁ quotient chain; ℙ¹, m=0,1,2 | Actual quotient edges ε₃>ε₂>ε₁ have bonds 1,1. Section-sequence dimensions are 0→1→1, 1→2→1, 2→3→1; skipped ε₃>ε₁ is not an edge | Pass; repaired full-flag interface preserves the minuscule induction |

Carried forward: 81 unchanged rows from [the previous review](PRREVIEW-SchubertGeometry~4.md).

| Statement | Instances | Values computed on both sides / wrong-model control | Result; change |
|---|---|---|---|
| Conventions: right quotient and cell dimension | SL₂, e and s | C(e)=point, dimension 0=ℓ(e); C(s)=𝔸¹, dimension 1=ℓ(s) | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Conventions: line and ordinary dual | SL₂ λ=1; A₂ λ=ω₁ | Degree +1; section weights ±1. Ordinary dual of ∇(ω₁) has highest weight ω₂, not ω₁ | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.0 parabolic representability/canonical line | GL₂/ℤ; P=G; anisotropic quaternion group/ℝ | Borel component ℙ¹, determinant-dual degree 2; full parabolic component S, fibre one point; anisotropic conic has 0 real points but becomes ℙ¹ over ℂ | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.0 root charts/base change | GL₃/𝔽₂; dual numbers | Cell counts 1+2+2+4+4+8=21=168/8; chart ring ℤ[ε,z]/ε² has ε≠0, unlike its reduction | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.1 flag incidence | Ranks (1,2) in rank 3; empty rank list | Ambient dimension 4 versus incidence dimension 3; empty list gives S. Pair (e₁+εe₃, span(e₁,e₂)) has obstruction ε≠0 versus 0 after reduction | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.2 root-cell dictionary | S₃; torus; full/partial GL₃ flags | (123)⁻¹=(132), inverse again (123); torus flag dimension 0; fixed sections 6 versus 3, fibres of projection size 2 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.3 pivot/partition convention | Gr(2,4), pivots (1,2),(1,3),(3,4) | Dimensions 0,1,4 equal 4−partition size 4,3,0 respectively | Pass; used by R01  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.3 out-of-range ranks | N=0, r=0 or 1 | Rank-0 functor has one subspace; rank-1 functor empty; natural subtraction N−r is 0 in both, so the r≤N guard is necessary | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.4 determinantal scheme | Dual-number incidence; oversized minor | Ideal (ε)≠0 although its reduced zero set is whole point; oversized-minor ideal 0, not (1) | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.5 isotropic dimensions | Symplectic dimension 4, r=0,1,2,3 | Dimensions 0,3,3; r=3 empty by 2r≤4 failure | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.5 multiplication and inverse | r=s=1, Y=(1,2),Y′=(3,4),Z=5,Z′=6 | YᵀJ₀Y′=−2; product ((4,6),9), not ((4,6),13); matrix AᵀJA=J and A·A⁻¹=I₄. Reduction mod 2 still satisfies both identities | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S1.5 limiting blocks | r=m and r=0 | Empty Y block leaves additive symmetric matrices; r=0 leaves identity group, dimension 0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S2.1 two cranks | Point, constant map from 𝔸¹, empty scheme | Right crank dimensions 1,2; over 𝔸¹ fibre ℙ¹ is proper but total 𝔸¹×ℙ¹ is not proper over k; empty input gives empty output | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S2.2 word tower | Empty word, i, ii | Dimensions 0,1,2; torus fixed sections 1,2,4 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S2.3 image and subword convention | ii | Demazure product s, ordinary product e; image dimensions 1 versus 0. Fixed subwords map to e,s,s,e | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S2.3 tangent and fibre signs | One letter, SL₂ λ=1 | Tangent weights +α,−α; fibre weights +1,−1; at z=2 tangent values 4,1/4 and fibres 2,1/2 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S2.4 refinements/opposition | A₂ words 121,212; subsystem {α₁,α₂} | Both length 3 and product w₀; w₀α₁=−α₂, not −α₁. Empty refinement remains point | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S2.5 compact comparison | One letter; U₂ central cover | ℙ¹(ℂ) and SU₂/U₁ both S²; SU₂×U₁→U₂ kernel size 2, not 1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.1 associated lines/tensor/forgetful | SL₂ weight 1; GL₂ det; torus | Degrees 1,0,0; tensor 1+1 gives degree 2; torus weights 0 and 1 are distinct equivariantly despite ordinary dimension 1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.2 extremal spans | SL₂ point/full flag λ=1; GL₃ λ=ω₁ | Section dimensions 1 and 2; point dual weight −1. e and s₂ project to the same ω₁ weight ε₁ and give the same one-dimensional span | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.3 signed strings | m=0,−1,−2 | D(eλ)=eλ,0,−e^(λ+α), augmentations 1,0,−1; h⁰-only answer at −2 would be 0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.3 inversion/idempotence | SL₂, weight ±1 | D(z)=z+z⁻¹; Δ(z⁻¹)=z⁻¹+z; D(z⁻¹)=0; D²(z)=z+z⁻¹ | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.3 numerator normalization | p=1, x=eα | N=1−x, sN=1−x⁻¹=−x⁻¹N; −N=x−1 differs | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.4 character/dominance | SL₂ λ=2, characteristic 2 | Weyl/induced character z²+1+z⁻² has dimension 3; simple Frobenius-twist character z²+z⁻² has dimension 2 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.4 braid and longest invariance | A₂, 121 and 212 on e^(0,5,7) | Both outputs have identical 46 coefficients, total 81; applying either Δ again preserves all coefficients | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.5 scheme stabilizer | ℙ¹: O(1), O, Frobenius twist | Maps have differential ranks 1,0,0; Frobenius has bijective geometric points but degree p, not an immersion | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.6 successive strings | Same A₂ weight | 121 augmentations 1,6,33,81; 212 augmentations 1,3,21,81; Weyl dimension (3·6·9)/2=81 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S3.6 coefficient formula | Interlacing patterns; centre and outside support | Pattern count 81 equals sum of coefficients; multiplicity histogram 21×1+15×2+10×3=81 over 46 weights; (4,4,4) has 3 and (9,3,0) has 0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.1 path quotient/normalization | Constant and subdivided straight path | Constant has 0 segments and endpoint 0; subdivided (t,0) retains endpoint (1,0) and the same path, not a second crystal vertex | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.1 central addition obstruction | φ(1/2)=1/4, χ=(1,1) | Naive shifted point (3/4,1/2) gives x−2y=−1/4; canonical point (1,1/2) gives 0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.1 normal strings | B(0), B(1) for SL₂ | B(0) has 1 vertex, ε=φ=0; B(1) has weights 1,−1 and string lengths (0,1),(1,0) | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.2 root operators | SL₂ highest path; central GL₂ path | f changes endpoint 1 to −1 and e returns 1; next f undefined. Central (t,t) height 0 gives both operators undefined | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.3 a-chains/gcd | Rank-one bond 2; equal endpoints | At a=1/2 product 1 integral; at 1/3 product 2/3 nonintegral; q=2 divides gcd 2, q=3 does not. Empty gcd 0 is divisible by every q>0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.3 nonabelian rank-two chains | A₂ λ=ρ, interval e to w₀ | Four saturated chains have bond lists (1,2,1),(1,1,1),(1,1,1),(1,2,1), each gcd 1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.3 quotient wall and convexity | λ=ω₁; pure central χ | s₂λ=λ=ε₁; no strict edge. At t=1/2, π(t)=χ/2 lies in (1/2){χ}, not {χ} if χ≠0 | Pass; R02 uses this domain  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.3 typed central transport | GL₂ λ=(1,0), χ=(1,1), ψ=(2,2), σ=(3,3) | Both composite routes have endpoint (7,6); shift-then-inverse subtracts χ and returns (1,0) | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.4 tensor character | SL₂ B(1)⊗B(1) | Character (z+z⁻¹)²=z²+2+z⁻²=(z²+1+z⁻²)+1; component sizes 3+1=4 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.4 adjoint controls | E₁₂,E₂₃,E₁₃ and negative root units | [E₁₂,E₂₁]=H₁; [E₁₃,E₃₁]=H₁+H₂; [E₁₂,H₁]=−2E₁₂; [E₁₂,H₂]=E₁₂. Three forced Cartan lines have determinant pairs 1,1,−1 in dimension 2 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.5 chain simplices | S₃; bond 2 | 6 vertices, 4 maximal length-3 chains, hence 4 tetrahedra; internal break 1/2 allowed, 1/3 excluded although both lie in the real interval | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.6 geometric sections | SL₂ λ=2, point/full flag | Three one-dimensional indexed leaves/sections on full flag; one surviving section at the closed point; dimensions 3 and 1 match characters | Pass on instance; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S4.7 opposition/section weight | A₂ λ=ω₁, κ=ω₂, point | Initial path endpoint κ; −w₀κ=ω₁, the required point fibre. Without w₀ transport, −κ≠ω₁ | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S5.1 Cartier trace | k[x], p=2; dimension 0 | Tr(1)=0, Tr(x)=1, Tr(x³)=x; σ(f)=Tr(xf) gives σ(1)=1,σ(x²)=x. Dimension 0 trace 1→1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S5.2 compatible ideals | p=2, ideals 0,(x),(1),(x²) | First three preserved; σ(x²)=x∉(x²). Two split points have coordinate ring k×k, dimension 2 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S5.3 central descent | SL₂→PGL₂, p=2 | μ₂ ring k[u]/(u−1)² has length 2 and nonzero nilpotent; both flag schemes ℙ¹, induced flag map an isomorphism | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S5.4 normality/direct image | Point and rank-one Schubert; reducible union xy=0 | Normal point/ℙ¹ have π_*O=O; node normalization k[x]×k[y] strictly exceeds k[x,y]/xy, excluding union-normality | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S5.5 dominant vanishing/restriction | ℙ¹, m=0,1,2; mixed two-point union | h⁰=1,2,3 and h¹=0; common-Borel point restriction surjective. For {0,∞}, constants map k→k² diagonally, cokernel dimension 1= h¹(O(−2)) | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S5.6 integral/base-change comparison | ℙ¹/ℤ; empty union; dual-number base | H⁰ ranks 1,2,3 remain 1,2,3 mod 2 and mod 3; empty union rank 0 even in degree 0; ε stays nonzero after flat flag pullback | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S5.6 fibrewise cokernel test | Finite ℤ-module M=ℤ/2; M=0 | M⊗𝔽₂=𝔽₂≠0, detected at prime 2; zero M has zero fibre at every prime. A nonzero torsion cokernel cannot evade all prime tests | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S5.7 all-word derived comparison | Q=ii, image ℙ¹ | Source dimension 2, fibre ℙ¹ with H⁰=k,H¹=0; image and source pullback of O(−2) both have H⁰=0,H¹=k | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S6.1 graded coordinate/section map | ℙ¹, polarizations O(1),O(2),O | Degree-1 dimensions 2,3,1; degree-m dimensions m+1,2m+1,1. Last Proj is point, not ℙ¹ | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S6.2 determinant sections | Gr(2,4), two-frame e₁,e₂ | p₁₂=1, other minors 0, Plücker relation 0−0+0=0. Degrees 0,1,2 have dimensions 1,6,20=21−1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S6.3 minuscule induction | ℙ¹, D a point, m=1,2; boundary m=0 | Exact dimensions 1→2→1 and 2→3→1; at m=0, H⁰(O(−1))=0→k→k and H¹(O(−1))=0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S6.4 standard products | SL₂, two degree-1 factors | Standard products x²,xy,y²: 3 versus tensor-square dimension 4; closed-point restriction leaves dimension 1; empty product 1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S6.5 ideals/unions/normal generation | Two coordinate axes; ℙ¹ | (x)∩(y)=(xy), (x)+(y)=(x,y); union ring reduced but not normal. Products of degree-1 sections span all m+1 monomials on ℙ¹ | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S7.3 integral cycle map | Point, ℙ¹, GL₃ full flag | Point generator 1→1; on ℙ¹ degree(h)=1 and h²=0; flag Betti ranks 1,2,2,1 sum to 6, with opposite-basis diagonal intersections 1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S8.4 isogeny obstruction | PGL₂, SL₂, rationalization | u²=0, [O(2)]=1+2u; image ℤ+2ℤu misses u; cover contains 1+u; over ℚ, ([O(2)]−1)/2=u | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S8.5 Euler push-pull | ℙ¹, O,O(−1),O(−2); point | Euler values 1,0,−1; push-pulls 1,0,−[O]; point operator identity on ℤ | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.0 analytic local carriers | Affine dimension 0,1,2; dual numbers; node | Completions ℂ,ℂ[[z]],ℂ[[x,y]]; dual-number ring dimension 2 versus reduced dimension 1; node xy=0 with x,y both nonzero | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.0 proper exchange and full faithfulness | Identity; ℙ¹ O(−2); affine line | Identity exchange 1, higher images 0; both ℙ¹ theories give (h⁰,h¹)=(0,1); exp(z) exists analytically on affine line but is not polynomial | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.0 base-change counterexample | Extension class t over A=ℂ[t] | Complex [A --t→ A] has H⁰=0,H¹=A/(t); at t=0 differential 0 and H⁰=ℂ. Underived base-change map 0→ℂ fails on both sides | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.1 flag/word analytification | Empty word, i, affine root chart | Point→point; one letter ℙ¹→ℙ¹(ℂ); coordinate z→z, derivative 1; dual-number ε→ε≠0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.2 holomorphic Lefschetz input | Point identity; ℙ¹ identity | Point numerator/denominator 1/1=1; ℙ¹ identity has whole ℙ¹ fixed, tangent determinant 0, so isolated formula excluded | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.3 fixed-point sign | SL₂ O(1), z=2; z=1 | Contributions 8/3 and −1/6 sum 5/2=2+1/2. At z=1 both denominators 0 but character 2, so individual evaluation forbidden | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.3 repeated/empty words | ii and empty | Four-term ii sum 5/2 equals one-letter character 5/2; empty denominator product 1, sole numerator eλ | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.4 Euler/H⁰ distinction | SL₂ O(−2) | Localized Euler sum −1; h⁰=0,h¹=1, so h⁰ alone gives wrong 0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.5 type-A/central specialization | GL₂ (t,0), shifted by (1,1) | Height t, lowered endpoint (0,1); shifted endpoint (2,1) has same height; pure central (t,t) has height 0, endpoint (1,1)≠0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.6 normalizer transfer | SU₂; torus; SU₃ | ℝP² integral cohomology (ℤ,0,ℤ/2), rational (ℚ,0,0); torus quotient point; SU₃ Euler ratio 6/6=1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.7 moment/Morse signs | Point; rank-one orbit; central height | Point polynomial 1; negative-chamber ℙ¹ indices 0,2 give 1+q² and χ=2; central height has entire ℙ¹ critical, not 2 points | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.7 root-plane metric | α(p)=2, α(X)=−3 | g=B/2 and Hessian coefficient −α(X)/α(p)=3/2>0; at reflected p the coefficient is −3/2<0, giving index 2 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| S9.8 fibre/tensor/dual | SL₂ weights 1 and −1; torus | Root degrees +1,−1; tensor unit 1·1=1 and degrees sum 0; torus fibres at t=2 act by 1 and 2 despite equal ordinary dimension | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked fixed-plane stabilizer | n=4,k₀=2; n=3,k₀=2; n=0 | Admissible d sets {0,1,2},{1,2},{0}; orbit counts 3,2,1 equal min(k₀,n−k₀)+1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked orbit closures/minors | n=4,k₀=2,d=0,1,2 | O₂ point⊂Z₁ dimension 3⊂Z₀ dimension 4; d=0 minors size 3 of 2×2 map give ideal 0 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked decomposability | θ=e₁∧e₂; θ=e₁∧e₂+e₃∧e₄ | First contractions wedge θ to 0; contraction of second by e₁* gives e₂∧e₃∧e₄≠0, including characteristic 2. r=0 gives projective point, r>dim V gives empty | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked tautological sections | ℙ¹, d=0,1,2 in N=2 | H⁰(S₀)=0,H⁰(O(−1))=0,H⁰(S₂)=k²; H⁰(S₁*)=k² | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked function field | X=ℙ¹, U=𝔸¹ | O(U)=k[t] differs from k(t)=k(X)=k(U); trdeg k(t)=1=dim X | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked flag embedding | GL₃ O(1,1) versus O(1,0) | Positive pair gives 3-dimensional embedded flag; zero second coefficient gives image ℙ² dimension 2 with ℙ¹ fibres | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked eight-versus-nine module | GL₃ incidence and rank-one matrices | v∧ω=ax+by+cz=trace; eight incident rank-one matrices have span rank 8, every trace 0. Tensor dimension 9; section quotient dimension 9−1=8 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked module/ordinary dual | Same incidence | Highest weight (2,1,0) versus dual (0,−1,−2); sum of weights changes from 3 to −3, so they are not the same GL₃ module | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked small-characteristic cyclicity | SL₂ Sym⁴, p=3 | Binomial coefficients (1,4,6,4,1) reduce to (1,1,0,1,1); orbit of highest vector misses x²y², generated span dimension 4<5 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked 121 blowup charts | Moving plane z=ux+vy | u=1,v=2 gives intersection [x:y]=[−2:1] and blowup direction [−1:−2]=[1:2]; chart r=2,s=1/2 has rs=1. At u=v=0 fibre ℙ¹ | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |
| Worked exceptional divisor | Centre C=ℙ¹, flat flag→ℙ² | Normal bundle O_C²; exceptional P(O_C²)=ℙ¹×ℙ¹, fibre-normal degree −1 on second factor, not +1 | Pass; none  carried from [previous review](PRREVIEW-SchubertGeometry~4.md). |

## Not verifiable

- Pittie1972 remains locator-only/uncertified at pp. 199–203; the previous service lookup reached the publisher/DOI route. Its scope is now correctly limited to the compact-group freeness antecedent. No new access request is made.
- Jantzen II.14 remains the previous review's unverified arbitrary-field Demazure/contravariant-dual citation: its title/author lookup produced no legal readable copy. The passage is unchanged.
- Steinberg1975 was read in the previous round, whose evidence is carried forward. This round's source-service title lookup resolved only to a paywalled publisher; no fresh text verification is claimed. The changed geometric attribution was verified independently in the legally readable Merkurjev author draft.
- Unchanged targets were not fully re-reviewed. Ownership against open pull requests without supplied head files was not checked; index snippets were not treated as source files.

## Source issues

No new source mistake was found in the changed locators. The following records are carried from the previous review, rather than newly discovered this round:

- **Misprint** in BrionFlags at §1.3, printed p. 11: the source says intersection dimension is at least the sum of the two dimensions; it should be that sum minus the ambient dimension; affects a stated result.
- **Error** in KnutsonBottSamelson at §4 proof, printed p. 4: the source says keeping length-increasing letters preserves an arbitrary word's product; it should be that this gives its Demazure product, with ii giving s instead of e; affects the proof.
- **Misprint** in KnutsonBottSamelson at §5 contracted-product description, printed p. 4: the source says both quotient actions act on the factor to the left; it should be right multiplication on the left factor and left multiplication on the right factor; affects nothing.
- **Error** in KnutsonBottSamelson at §5 compact-model paragraph, printed p. 5: the source says every compact rank-one factor is SU₂ times a torus; it should be a possible finite central quotient, as SU₂×U₁→U₂ has kernel of order 2; affects a stated result.
- **Error** in KnutsonBottSamelson at §6.1 proposition, printed p. 5: the source says the parabolic longest element fixes all omitted simple roots; it should be the longest element of the parabolic subgroup, without that fixation assertion; affects a stated result.
- **Misprint** in KnutsonBottSamelson at §6.1 proposition, printed p. 5: the source says the longest element has order two for every subset; it should be that its square is one, including the empty subset's identity; affects a stated result.
- **Misprint** in KnutsonDemazure at §1, printed p. 1: the source says degree-k Čech cochains use k-fold intersections; it should be (k+1)-fold intersections, with degree zero on the members of the cover; affects a stated result.
- **Misprint** in KnutsonDemazure at §1 Riemann–Roch statement, printed p. 1: the source says the section with poles is holomorphic; it should be meromorphic; affects nothing.
- **Error** in KnutsonDemazure at §2 fixed-point formula, printed p. 2: the source says finitely many torus-fixed points ensure nonzero denominators at a torus element; it should be a generic element avoiding the tangent-weight kernels, or a localized identity; affects a stated result.
- **Misprint** in SGA1 at Exposé XII, Proposition 1.3.1, retyped printed p. 241: the source says the input is an O_Xan-module; it should be an O_X-module, as in the preceding definition; affects nothing.
- **Misprint** in Ramanathan1987 at Theorem 3.7 proof, printed p. 84: the source says to apply Theorem 3.6(i); it should be Theorem 3.5(i), the splitting theorem, whereas 3.6 is remarks; affects nothing.

The previous review's proposed antisymmetry erratum for KnutsonDemazure §3 is not retained: the displayed rewrite separates p−r(p), which really is antisymmetric. The full numerator p−αr(p) obeys r(N)=−α⁻¹N, exactly as the README states. That is a convention distinction, not a source error.
