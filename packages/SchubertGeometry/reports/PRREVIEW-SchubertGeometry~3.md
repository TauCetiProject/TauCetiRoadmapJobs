# Review of SchubertGeometry (pull request #1224 at cb00088)
**Verdict:** needs changes

## R01 (P2) — The simple-generator programme removed from the README survives as an acceptance file

**Location:** TauCetiRoadmap/SchubertGeometry/SimpleGeneratorTargets.lean:1–190: “Illustrative, nonexhaustive target signatures. The README is definitive.”

**Claim:** The folder's Lean files state only headline theorems of this README against the pinned libraries, in the acceptance-file form.

**Witness:** The README no longer contains the contraction-kernel programme (zero occurrences of “contraction kernel”, “fifteen”, “SimpleGenerator”; the diff since 75e613a removes README lines 399–535 and the headline from Suggested.lean). The file still declares 46 names, 18 of them sorried theorems about that programme; it imports five Mathlib submodules, opens with a block comment, and proves `rootOperator_apply` by `rfl`. None of its names occurs in the README.

**Repair:** Delete TauCetiRoadmap/SchubertGeometry/SimpleGeneratorTargets.lean. The previous review's R02 asked that this programme live in SchubertGeometry, Part II; the README and Suggested.lean now comply, and the leftover file is the only place the base folder still states it. Deleting it also settles the previous R06 (import header), R07 (padding: `rootOperator_apply`, `traceKernel_finrank`, `word_1122/1212/1221`, `three_lines_distinct`) and R08 (docstrings and README names). If an auxiliary file is ever kept, it must satisfy the same rules as Suggested.lean: the single `import Mathlib`, a module docstring, every name in the README, no padding. Both Lean files elaborate at this head (exit 0; the auxiliary file's only diagnostics are its 18 `sorry` warnings), so the defect is form and scope, not a build failure.

## R02 (P3) — Unidentified sources and an undefined source key

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:1325: “supply BorelWeil pp4–5's explicit8-versus9 calculation”; :297 “the crank order used in the handout”; :695 “the terminal-direction formulation in the notebooks”; :857 “Give the source's minuscule induction”; :885 “For the source's toric degeneration”; :200 “Retain the symplectic exercise”; :1383 “Knutson Bott–Samelson/Demazure handouts and algebraic-varieties notes”.

**Claim:** Every statement has an exact locator into an identified legal source.

**Witness:** The References define only KnutsonDemazure, LLM, CFL, ConradReductive, SGA1, SerreGAGA and BrionFlags; “BorelWeil” is defined nowhere. The text that supports the eight-versus-nine discussion is Knutson's five-page Borel–Weil handout (Cornell course page, pp. 4–5), which I read; the Bott–Samelson handout and the algebraic-varieties notes behind S1.5 and S2.2 are not identified by title, course or URL. S3.2 (extremal spans), S5.1–5.3 (Frobenius trace, compatible ideals, isogeny descent) and S8.2–8.4 (characteristic maps) carry no literature locator at all. There is still no sources.toml.

**Repair:** Add reference entries for the Knutson Borel–Weil handout (with its course URL), the Bott–Samelson handout and the algebraic-varieties exercise, each with page or exercise number, and replace every “the source's …” by the named work; give S3.2 a Demazure-module locator (for example Jantzen, Representations of Algebraic Groups, II.14, or Brion–Kumar Ch. 3), S5.1–5.3 a splitting locator (Brion–Kumar Ch. 1–2 or Mehta–Ramanathan 1985), and S8.2–8.4 the Pittie–Steinberg presentation (Steinberg, Topology 14, 1975). Record each work once in sources.toml. The cache line numbers quoted in the References (“ConradReductive lines 2993, …”) all check, but they are extraction-dependent; theorem and page numbers are the stable locators.

## R03 (P3) — Dangling references to the old item numbering

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:320: “Reduced words recover item3”; :730 “Item6 constructs their characteristic-zero mixed-family comparison”; also :752, :764, :766, :770, :788, :799, :807, :963, :1188, :1190, :1246; and :1194 “on its SAME homogeneous coadjoint orbit”.

**Claim:** Internal references name existing subsections.

**Witness:** The numbered-list format was replaced by `### k.n` subsections in this head (changes since 75e613a), but thirteen sentences still refer to “item3”, “Item6”, “items4–6”, “item2”, which no longer exist as labels; a reader cannot tell whether “item 3” at :1188 means S9.3 or HamiltonianReduction R2a's third item.

**Repair:** Replace each by the subsection it means (S2.3's reduced-word charts; S5.6; S5.5; S5.4–5.6; S5.5–5.6; S8.2; HamiltonianReduction R2a item 3), and write “same” in lower case.

## R04 (P3) — Definitions without Checks

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:428–430 (3.2, “define sections geometrically and identify the dual of restriction with the actual B−-span”); :940–946 (7.1 divisor valuations); :948–952 (7.2 boundary multiplicities); :961–965 (8.1, “Their structure sheaves define ambient classes”); :1181–1186 (9.6).

**Claim:** Every definition has at least three discriminating Checks.

**Witness:** Counting `**Checks.**` blocks per `###` subsection: 3.2, 7.1, 7.2, 8.1 and 9.6 have none, although each introduces an object (geometric sections and extremal-span modules; the valuation of the extremal section; the boundary Weil and Cartier divisors; the ambient Schubert classes; the normalizer-quotient comparison). The theorem-only subsections 3.4, 4.7, 5.3–5.5, 6.2–6.3, 6.5, 9.2 and 9.4 are fine without.

**Repair:** Three Checks each; the values below are correct and discriminating. 3.2: SL₂, λ=1, w=e and s give section dimensions 1 and 2 with dual weights −1 and {−1,+1}; λ=0 gives k on both X(e) and X(s). 7.1/7.2: O(m) on ℙ¹ has valuation m at the closed cell for m=0,1,2; the minuscule case gives 1; λ=0 gives the empty divisor. 8.1: on ℙ¹, [O_point]=[O]−[O(−1)] with Euler characteristic 1; for the point flag K₀=G₀=ℤ; for a singular X(w) no K₀≃G₀ is asserted. 9.6: SU₂ gives ℝP² with H⁰=ℤ, H²=ℤ/2; a torus gives a point; rational invariants of the regular W-representation are one-dimensional.

## R05 (P3) — IndexTheory I8 is an open-pull-request supplier of an on-main roadmap

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:1148–1152: “*Needs:* IndexTheory I8, with its holomorphic fixed-map trace and bundle-lift hypotheses”; :103.

**Claim:** Every `*Needs:*` supplier is on main or earlier in the merge order.

**Witness:** IndexTheory has no folder on main and is not in the merge order; it exists only at the head of pull request #1077 (where I8 is at TauCetiRoadmap/IndexTheory/README.md:888). The dependency check therefore cannot place it and prints nothing. A probe copy of this README with a `*Needs:*` line citing ComplexComparisonPartII C1.9, ShimuraData §3.8 and AlgebraicModuliForArithmeticGeometry §1.3 printed three lines “UPWARD: SchubertGeometry (on main) -> …”; the same will hold for IndexTheory the day its design is placed. The edge already exists on main's README (line 25), so it is inherited, not new.

**Repair:** Not blocking now, since no UPWARD line exists. The structural fix is the same one that would remove the duplicate ownership recorded below: move the analytic comparison layer (S9.0 and S9.2–S9.4, with S9.1/S9.7's uses of them) into “SchubertGeometry, Part II”, placed after IndexTheory and ComplexComparisonPartII, whose introduction says that the base stops at the algebraic and compact-topological comparisons. The alternative is to leave the edge and repair it when the check reports it.

## R06 (P3) — The pinned Tau Ceti declarations this roadmap builds on are not in the supplier contracts

**Location:** TauCetiRoadmap/SchubertGeometry/README.md:36–45: “### From Mathlib” (there is no “From Tau Ceti” subsection).

**Claim:** What exists at the pins is cited in the supplier contracts with its exact name and file.

**Witness:** At the pinned Tau Ceti (a91d3aa), `TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology` (TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61) is the sheaf-cohomology carrier that S3, S5 and S9.0 call “coherent cohomology”, and `TauCeti.AlgebraicGeometry.InvertibleSheaf` (TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:27–29) is the invertible-sheaf carrier S3.1 and S9.8 need; the LieGroups revision names the former for the same objects. The roadmap's own earlier Tau Ceti modules (normal crystals, PL paths, the Demazure operator, cover bonds) are not at this pin, so there is nothing to cite for S3.3 and S4.1–4.3 yet.

**Repair:** Add a “From Tau Ceti” subsection naming the two declarations and what is assumed of them (Zariski sheaf cohomology of a module sheaf; the full subcategory of invertible module sheaves without a chosen trivialisation).

## Verified sound

This review read all three files at cb00088ce724ae8a9bb175a2fbf7ade076150e27, every layer and worked example, changed or not, and the full change set since 75e613a. Main was checked at fa41b37 (the roadmap's own folder on main has README.md, Suggested.lean, metadata.toml, and generated STATUS.md/PROGRESS.md; the two generated files are absent from the branch because they were added to main after the branch point, not deleted by it). `git diff --stat origin/main...HEAD` outside the folder is empty. No file in the worktree was changed; no GitHub write was made.

**Previous findings, checked one by one at this head.**

| Previous finding | Passage at this head | Status |
|---|---|---|
| R01 (P1) thirteen-orbit prerequisite unowned | README:1254–1290 keeps only the fixed-plane stabilizer example with its own transporter construction and the ReductiveGroups Layer 7b double-coset comparison; the “thirteen-orbit contract is a gap” paragraph (old :785–792) is deleted | Repaired by deletion; nothing cites the smaller-block classification any more |
| R02 (P2) kernel programme in the base | README has no S4.4a; S4.4 keeps the adjoint matrix controls (:640–654); Suggested.lean:1–33 states nothing | Partly: removed from README and Suggested.lean, but SimpleGeneratorTargets.lean still carries it — new R01 |
| R03 (P2) ownership transfers not reflected elsewhere | Downstream consumers (:1372–1378) now name only TensorProductCombinatorics §8.3/Layer 6 and GeometricQuantization §§3.3–3.4; the present-tense claims about AlgebraicModuliForArithmeticGeometry, ShimuraData and ComplexComparisonPartII (old :995–999) are deleted | Repaired on this side; the two-owner state persists in those pull requests (recorded below), and this roadmap cannot cite them (probe gave UPWARD) |
| R04 (P3) locators and manifest | Conrad, SGA1, Serre, Brion, LLM, CFL, Littelmann, Knutson locators added at S1.0, S1.3, S2.2, S3.1, S3.4, S3.6, S4.1–4.6, S5.4–5.5, S6.4, S7.1, S7.3, S8.1, S8.5, S9.0 | Partly: S3.2, S5.1–5.3, S8.2–8.4 and the unnamed handouts remain, no sources.toml — new R02 |
| R05 (P3) APIs, Checks, Needs | S2.1–2.5, S5.1–5.2, S5.6–5.7, S8.2–8.5 now have API bullets, Checks and `*Needs:*` lines | Largely repaired; residue in 3.2/7.1/7.2/8.1/9.6 — new R04; dangling item references — new R03 |
| R06 (P3) auxiliary import header | SimpleGeneratorTargets.lean:1–5 unchanged | Not repaired — folded into R01 |
| R07 (P3) auxiliary padding | SimpleGeneratorTargets.lean:94–178 unchanged | Not repaired — folded into R01 |
| R08 (P3) auxiliary docstrings and names | SimpleGeneratorTargets.lean:7–10 unchanged | Not repaired — folded into R01 |

**Gate and dependency check.** The worker's gate at this head reports every check 0 and `build=0 OK`. The prescribed dependency check, rerun by me:

    depcheck: 204 roadmaps, 1460 edges, 0 problem(s)

No UPWARD, CYCLE or moved line. A scratch copy with the abbreviations GG, TopK, TPC, AVB, HR R2a and CK K4 spelled out as full roadmap names also gives 0 problems (the abbreviations hide no edge). A second scratch copy with a `*Needs:*` line citing ComplexComparisonPartII C1.9, ShimuraData §3.8 and AlgebraicModuliForArithmeticGeometry §1.3 gives three UPWARD lines “SchubertGeometry (on main) -> …”, which confirms that the move of Par_t, the flag incidence scheme, the integral Schubert closures and coherent analytification/proper GAGA down into S1.0, S1.1, S5.6 and S9.0 is the repair pattern the direction rule permits for an on-main roadmap, and that citing those later roadmaps is not available. The move is recorded here: the objects now owned by this roadmap are also constructed at the heads of ShimuraData (#1038, §3.8 `parabolicTypeVariety`, §§3.14–3.15 integral Bruhat stratification and `integralSchubertBaseChange`), AlgebraicModuliForArithmeticGeometry (#853, §1.3 `flagBundle`) and ComplexComparisonPartII (#848, C-1.1 scheme analytification, C0.4 coherent analytification, C1.9 projective and proper GAGA); none of those three heads cites SchubertGeometry (grep of each dump: 0 hits). Their reviews must turn those constructions into imports of S1.0/S1.1/S5.6/S9.0; nothing more can be done from this folder.

**Lean evidence.** `lake env lean` on Suggested.lean exits 0 with no output (the file declares nothing, so there is no signature to compare and no one-tactic probe to run); on SimpleGeneratorTargets.lean it exits 0 with exactly 18 `declaration uses sorry` warnings (lines 98–185). The previous review's `#check @name` comparison of all 46 auxiliary signatures stands; since the repair is deletion, I did not repeat it. The padding witness is direct: `rootOperator_apply` at SimpleGeneratorTargets.lean:94 closes by `rfl`.

**Headline theorems.** From the README: relative parabolic representability and Schubert/incidence comparison (S1); all-word image and derived O-pushforward (S2.3/S5.7); geometric Demazure and Weyl character formulas (S3.3–3.4); LS-chain component, character and tensor theorems with the interval-gcd theorem (S4.3–4.4); compatible splitting, normality, dominant vanishing, integral base change (S5); all-degree standard monomial theory and projective normality (S6); Chevalley multiplicities and the Chow/cohomology comparison (S7); Pittie–Steinberg presentations of ordinary and equivariant flag K-rings (S8); proper coherent GAGA and the flag/word, fixed-point, moment–Morse and associated-line comparisons (S9). At the pins (Mathlib 6b7abb3c, Tau Ceti a91d3aa) there are no flag or Bott–Samelson schemes, no LS paths or crystals (no TauCeti/RepresentationTheory/Crystal or LSPath directory at this pin; the modules named in main's STATUS.md belong to a later Tau Ceti), no Demazure operator, no Frobenius-splitting carrier, no Chow groups, no algebraic K-ring of a flag, and no complex analytic spaces (`TauCeti.holomorphicSheaf` is a sheaf of types on ℂ). The docstring names each missing carrier, so an empty acceptance file is the correct form. The algebraic half of S3.3–3.4 (finite-string operators on `AddMonoidAlgebra ℤ X` over a `RootPairing`, their idempotence and braid relations) is statable with a few definitions and would be the one honest algebraic acceptance test if the author wants one; its absence is not a defect because it is a lemma of the geometric headline, not the headline.

**Adversarial mathematics.** 56 rows; “pass” means the displayed instance agrees with the target, not that the general theorem is proved. The S3.6, S1.5, GL₃-span, fixed-plane and A₂-bond rows were computed by an exact-integer script; the rest are hand computations.

| Statement | Instances | Values on each side / wrong-model control | Result |
|---|---|---|---|
| Conventions: cells and right quotients | SL₂, w=e,s | B−B−/B− a point, ℓ=0; B−sB−/B−=𝔸¹, ℓ=1; in general dim B−wB−/B− = ℓ(w₀ww₀)=ℓ(w) | Pass |
| Conventions: line sign, dual | SL₂ λ=1; A₂ λ=ω₁ | fibre character λ at e, H⁰=∇(λ) nonzero iff dominant, degree +1; ∇(ω₁)*=Δ(−w₀ω₁)=Δ(ω₂) | Pass |
| S1.0 Par_t and the ample line | GL₂/ℤ; P=G; quaternion adjoint group/ℝ | Borel component ℙ¹, det(Lie P)* degree 2 vs L(1) degree 1; P=G gives S; conic x²+y²+z²=0 has no real point, is ℙ¹ over ℂ | Pass |
| S1.0 integral cells and point counts | q=2,3; GL₃/𝔽₂ | 1+q=3,4; lengths 0,1,1,2,2,3 give 1+2+2+4+4+8=21=168/8; ℙ²(𝔽₂)=7 | Pass |
| S1.1 incidence is a genuine equation | rank 3, ranks (1,2); k[ε]/ε² | product dimension 2+2=4, flag 3; line e₁+εe₃ in plane ⟨e₁,e₂⟩ has incidence value ε≠0 though reduced value 0 | Pass |
| S1.2 inversion and fixed points | S₃; torus; GL₃ | (123)↦(132)↦(123); torus flag a point; 6 full-flag vs 3 partial-flag fixed points | Pass |
| S1.3 pivots | Gr(2,4), (1,2),(1,3),(3,4) | Σ(p_i−i)=0,1,4; partitions (2,2),(2,1),(0,0) of sizes 4,3,0; 4−size = 0,1,4 | Pass |
| S1.4 minor sizes | size > a matrix dimension | no generators, ideal 0 (whole scheme), not the unit ideal | Pass |
| S1.5 C^T Q_src C = J_(r,s) | (m,r)=(2,0),(2,1),(2,2),(3,1),(3,2) | equality holds in all five cases | Pass |
| S1.5 u(Y,Z) symplectic iff Z−Zᵀ=YᵀJ₀Y | r=2, s=1, random Y, Z=Z₀+symmetric | uᵀJu=J true; adding 1 to one upper entry of Z (so Z−Zᵀ≠YᵀJ₀Y) gives uᵀJu≠J | Pass; wrong model excluded |
| S1.5 group law, inverse, Levi conjugation | r=s=1, Y=(1,2), Y′=(3,4), Z=5, Z′=6; A=2, D=I | YᵀJ₀Y′=−2, product ((4,6),9); u(Y,Z)u(−Y,−Zᵀ)=I₄; l u l⁻¹ = u((2,4),20)=u(DYAᵀ,AZAᵀ) | Pass |
| S1.5 dimension | m=2, r=0,1,2 | dim Sp₄ − dim P_r = 0,3,3 = r(2m−r)−r(r−1)/2 | Pass |
| S2.1 cranks | X=point; X=𝔸¹ constant map | ℙ¹; 𝔸¹×ℙ¹, proper over 𝔸¹ not over k | Pass |
| S2.2 word schemes | ∅, i, ii | dimensions 0,1,2; fixed sections 1,2,4 | Pass |
| S2.3 Demazure product and weights | Q=ii; Q=i | δ(ii)=s_i, image dimension 1 while s_i²=e; fixed sections map to e,s_i,s_i,e; tangent weights α_i,−α_i | Pass |
| S2.4 braid, opposition | A₂ words 121, 212 | both w₀, length 3, no further refinement; w₀α₁=−α₂≠−α₁ | Pass |
| S2.5 compact rank-one factor | U(2) | SU₂×U₁→U₂ has kernel {(I,1),(−I,−1)} of order 2 | Pass |
| S3.1 linearizations differ by X*(G) | torus flag; GL₂ det | all torus characters give one ordinary line with distinct actions; det extends to G so L(det) has degree 0 | Pass |
| S3.2 sections and duals | SL₂ λ=1, w=e,s; λ=0 | dimensions 1,2; dual weights −1 and ±1; λ=0 gives k on both | Pass |
| S3.3 D_i strings | m=0,−1,−2 | e^λ; 0; −e^(λ+α) with augmentations 1,0,−1 | Pass |
| S3.3 Δ_i strings and Δ_i=ιD_iι | m=−1,0,1,2; three-term test character | e^λ+e^(λ+α); e^λ; 0; −e^(λ−α); Δ_i and ιD_iι agree for i=1,2 | Pass |
| S3.3 numerator identity | χ₂ of S3.6, i=1,2 | (1−e^α)Δ_iχ₂ = χ₂−e^α s_iχ₂ exactly; s_i(N)=−e^(−α)N exactly, N not anti-invariant | Pass |
| S3.4 idempotence | SL₂ weight 1 | D(t+t⁻¹)=t+t⁻¹ | Pass |
| S3.5 separability | SL₂ Frobenius twist | [x:y]↦[x^p:y^p], differential 0, bijective on points | Pass (negative control) |
| S3.6 word 121 | λ lift (7,5,0), start e^(0,5,7) | augmentations 1,6,33,81; χ₁,χ₂ multiplicity-free with supports 6,33; χ₃ histogram 21/15/10, support 46 | Pass |
| S3.6 coefficient formula | all 91 points of the slice a+b+c=12 | 1+min{2,a,b,c,7−a,7−b,7−c} on the box, 0 off it, equals χ₃ everywhere; (4,4,4)↦3, (9,3,0)↦0 | Pass |
| S3.6 word 212, invariance, GT | Δ₂Δ₁Δ₂ chronologically; interlacing rows | 1,3,21,81 and ψ₃=χ₃; Δ₁χ₃=Δ₂χ₃=χ₃; s₁χ₃=s₂χ₃=χ₃; 81 GT patterns, coefficientwise equal to χ₃ | Pass |
| S4.1 reparametrization control | π=(t,0), φ(1/2)=1/4, χ=(1,1) | (π∘φ)(1/2)+χ/2=(3/4,1/2), x−2y=−1/4; distinguished (1,1/2), x−2y=0 | Pass |
| S4.2 heights | SL₂ straight path | height t, lowering ends at −1, raising returns; central (t,t) has height 0 | Pass |
| S4.3 bonds, a-chains | rank one λ=2; A₂ λ=ρ, interval e<s₁s₂ | bond 2: a=1/2 allowed, 1/3 not; chains (e,s₁,s₁s₂) bonds (1,1) and (e,s₂,s₁s₂) bonds (1,2), both gcd 1; d(u,u)=0 | Pass |
| S4.3 transport laws | weights of B(λ)^(σ+χ), B(λ+χ)^σ | wt+σ+χ on both sides; composition and inverse offsets match | Pass |
| S4.3 convexity | pure central λ, t=1/2 | λ/2∈(1/2)Conv{λ}, not in {λ} | Pass |
| S4.4 adjoint controls | E₁₂,E₂₁,E₁₃,E₃₁,H₁,H₂ | [E₁₂,E₂₁]=H₁; [E₁₃,E₃₁]=H₁+H₂; [E₁₂,H₁]=−2E₁₂; [E₁₂,H₂]=E₁₂; pair determinants 1,1,−1 | Pass |
| S4.5 chains | S₃ | 6 vertices, 4 maximal chains from e to w₀ | Pass |
| S4.6 path sections | ℙ¹, O(2), closed point | 3 monomials; restriction keeps x² only | Pass |
| S4.7 opposition | A₂ λ=ω₁ | κ=−w₀ω₁=ω₂ | Pass |
| S5.1 Cartier trace | char 2, k[x] | Tr(1)=0, Tr(x)=1, Tr(x³)=x; σ=Tr(x·): σ(1)=1, σ(x²)=x; n=0: Tr(c)=c^(1/p) | Pass |
| S5.2 compatible ideals | σ above | σ(x)=Tr(x²)=0∈(x); σ(x²)=x∉(x²); {0,∞} has ring k×k of dimension 2 | Pass |
| S5.3 nonreduced kernel | SL₂→PGL₂, p=2 | μ₂=Spec k[u]/((u−1)²), length 2 | Pass |
| S5.5 mixed union | ℙ¹, Y={0,∞}, λ=0 | H⁰(O_Y)=k², diagonal k→k², H¹(I_Y)=H¹(O(−2))=k | Pass |
| S5.6 integral sections, cokernel | ℙ¹/ℤ O(0),O(1),O(2) | ranks 1,2,3 at ℤ, 𝔽₂, 𝔽₃; a finitely generated ℤ-module with M/pM=0 for all p is 0 | Pass |
| S5.7 all-word comparison | Q=ii; L=O(−2) | Z=ℙ¹×ℙ¹→ℙ¹ with Rπ_*O=O; H⁰=0, H¹=k on both sides | Pass |
| S6.1, S6.4 dimensions | ℙ¹ O(1),O(2); SL₂ degree 2 | 1,2,3; 3 sections for O(2); 3 standard products vs tensor square 4 | Pass |
| S7.1 Chevalley coefficient | SL₂ λ=m; Brion 1.4.5 | extremal section vanishes to order m=⟨λ,α∨⟩ at the closed cell; Brion's λ_i−λ_j=⟨λ,(ε_i−ε_j)∨⟩ with v=ws_ij | Pass |
| S7.2 multiplicities | O(m) on ℙ¹ | 0,1,2 for m=0,1,2 | Pass |
| S7.3 cycle comparison | ℙ¹; GL₃ flag | hyperplane degree 1, square 0; six classes in dimensions 0,1,1,2,2,3, Euler characteristic 6 | Pass |
| S8.2 presentation | SL₂ | t=[O(−1)], (1−t)²=0 is t+t⁻¹−2=0, rank 2=|W|; ideal (f−ε(f)) excludes 1 | Pass |
| S8.3 equivariant restrictions | SL₂, z | 1⊗z↦z at e, z⁻¹ at s; z⊗1↦z at both; P=G gives R(T) | Pass |
| S8.4 isogeny | PGL₂ | [O(2)]=1+2u, image ℤ+2ℤu misses u; SL₂ cover gives 1+u | Pass |
| S8.5 Euler push-pull | ℙ¹ | χ(O)=1, χ(O(−1))=0, χ(O(−2))=−1 | Pass |
| S9.0 analytic stalks, GAGA tests | 𝔸ⁿ n=0,1,2; node; dual numbers; ℙ¹_A extension | completions ℂ, ℂ[[z]], ℂ[[z₁,z₂]], ℂ[[x,y]]/(xy); ε≠0 with dimension 2; class t gives complex [A→A] with H⁰=0 and fibre H⁰=ℂ at t=0 | Pass |
| S9.2 fixed-map hypotheses | identity of a point; identity of ℙ¹ | trace 1/1=1; det(1−d id)=0 excludes the identity of ℙ¹ | Pass (negative control) |
| S9.3 localization | SL₂, z=2, L(1) | 2/(1−1/4)+(1/2)/(1−4)=8/3−1/6=5/2=z+z⁻¹ | Pass |
| S9.4 Euler vs H⁰ | SL₂ O(−2) | Euler −1, h⁰=0 | Pass |
| S9.5 type A | GL₂ (t,0), χ=(1,1) | height t, lowered endpoint (0,1), shifted endpoint (2,1), height unchanged | Pass |
| S9.6 normalizer quotient | SU₂; general K | ℝP²: H⁰=ℤ, H²=ℤ/2; over ℚ the W-invariants of the regular representation are one-dimensional | Pass |
| S9.7 signs | HR R2a formulas | Hess=−α(X)B(v,w)/α(p); X in the negative chamber gives index 2ℓ(w) at wμ, unstable manifold of complex dimension ℓ(w); ω(v,J_flag w)=B(v,w)/|α(p)| from ω(v,w)=B(J_αv,w)/α(p); ℙ¹ indices 0,2 | Pass |
| S9.8 adapter | SL₂ λ=1,0; torus | O(1) degree +1; trivial line; torus characters 0,1 same line, distinct fibres | Pass |
| Fixed-plane strata | 𝔽₂, n=4, k₀=2 | 35 planes: d=0,1,2 have 16,18,1 points; 3 orbits = min(2,2)+1; Z₀=Gr since (k₀+1)-minors do not exist | Pass |
| GL₃ incidence representation | 40 random orbit points of e₁⊗(e₁∧e₂) | trace of u↦v(u∧ω) equals v∧ω; span rank 8 inside the 9-dimensional tensor; weights (2,1,0) and dual (0,−1,−2) | Pass |
| Decomposability | r=2,N=4, θ=e₁₂+e₃₄ | ι_(e₁*)θ=e₂, e₂∧θ=e₂₃₄≠0 | Pass |
| Word 121 blowup | plane z=ux+vy | inverse L₁=P∩P₀ off u=v=0; blowup direction [−y:x]; Rees charts v=ur, u=vs, rs=1; N(C/F)=O², E=ℙ¹×ℙ¹, O_E(E) of bidegree (0,−1) | Pass |
| Tautological sections | full flag, S_d | H⁰(S_d)=0 for 0<d<N; d=N gives V, d=0 gives 0 | Pass |

**Pinned-library audit.** Declarations opened at the pins (Mathlib 6b7abb3c, Tau Ceti a91d3aa of lake-manifest.json; main pins Tau Ceti 358314d and Mathlib f6090c7, not used).

| Declaration | File and line at the pin | What was checked |
|---|---|---|
| `Module.Grassmannian` | Mathlib/RingTheory/Grassmannian.lean:65 | module-valued functor with locally free quotient of fixed rank; no scheme (S1.1's floor is correct) |
| `Module.Basis.flag` | Mathlib/LinearAlgebra/Basis/Flag.lean:37 | span of the first k vectors; no scheme structure |
| `Matrix.J`, `SymplecticGroup.mem_iff'` | Mathlib/LinearAlgebra/SymplecticGroup.lean:58, :185 | sign [[0,−I],[I,0]] (the README's global-negation comparison is needed); membership by the column equation |
| `RootPairing.weylGroup` | Mathlib/LinearAlgebra/RootSystem/WeylGroup.lean:55 | Weyl group as automorphisms; no Coxeter-system identification at the pin (RootSystems Layer 2 target) |
| `CoxeterSystem` Bruhat and parabolic files | TauCeti/GroupTheory/Coxeter/Bruhat.lean, Parabolic.lean:236–330 | Bruhat order and minimal coset representatives exist; no bond or LS-path carrier |
| `TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology` | TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61 | sheaf cohomology of a module sheaf on a scheme (R06) |
| `TauCeti.AlgebraicGeometry.InvertibleSheaf` | TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:27–29 | full subcategory of invertible module sheaves (R06) |
| crystals, LS paths, Demazure operator, reflection bond | absent at a91d3aa (no TauCeti/RepresentationTheory/Crystal or LSPath; no Weyl/Demazure.lean) | the modules main's STATUS.md names are at a later Tau Ceti; nothing to cite yet |

**Cross-roadmap citations, all resolved anew.**

| Citation | Where it resolves | Boundary |
|---|---|---|
| ModularCurves §0G | main TauCetiRoadmap/ModularCurves/README.md:427 | relative Grassmannian of locally free quotients with charts and universal quotient |
| ReductiveGroups Layers 7, 7b, 8, 9, 10 | main TauCetiRoadmap/ReductiveGroups/README.md:627, :732 (parabolic double cosets P\G/Q≃W_L\W/W_M at :772), :1023, :1092 (pinned ℤ-groups), :1812 (Steinberg module Δ((p−1)ρ)=L=∇, dimension p^|Φ⁺|) | as cited |
| RootSystems Layers 1–3, 6 | main TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:218, :245, :274 (strong exchange, Matsumoto, Bruhat order), :356 (Bourbaki numbering, `simplyConnectedRootDatum`) | as cited |
| SchemeAndStackFoundations Layers 1–2, §§2.2, 2.6, 4.12, §5 (5.1–5.7) | main …/SchemeAndStackFoundations/README.md:2044, :3232, :3309, :3437 (projective-space cohomology, Serre vanishing), :5613 (Chow's lemma), :6535–6987 (Chow groups, refined Gysin, K₀/G₀) | as cited |
| StableReduction Layers 2, 4 | main …/StableReduction/README.md:405 (coherent curve theory; relative Proj via the shared interface), :529 (Rees algebra, blowup as relative Proj, charts, flat base change) | as cited |
| AlgebraicVectorBundles L2A | main …/AlgebraicVectorBundles/README.md:306–328 | graded quasicoherent algebras and the affine graded-ring interface |
| TopologicalKTheory T1.5 | main …/TopologicalKTheory/README.md:299, :432–440 | finite Grassmannian cells and characteristic maps |
| GroebnerGeometry G5 | main …/GroebnerGeometry/README.md:394 | minors, straightening, Plücker Gröbner basis |
| LieGroups Layer 8 | main …/RepresentationTheory/LieGroups/README.md:428–447 | compact flag G/T≅G_ℂ/B, Bruhat cells, Borel–Weil with L_λ=G_ℂ×_B ℂ_(−λ); main's LieGroups does not cite SchubertGeometry (0 hits), so no cycle on main; its revision #1051 consumes S2.1/S3.3 and ComplexComparisonPartII in prose, which is that pull request's edge |
| ComplexKahlerGeometry K3–K4 | main …/ComplexKahlerGeometry/README.md:296, :444 | germs, Weierstrass, holomorphic bundles and the RingCat-valued structure sheaf |
| RealAnalyticGeometry R3.2 | main …/RealAnalyticGeometry/README.md:728 | coherent module-sheaf carrier on `SheafOfModules`, Cartan A/B on Stein manifolds |
| HamiltonianReduction R2a | main …/SymplecticGeometry/HamiltonianReduction/README.md:157–186 | KKS form, Hessian −α(X)B(v,w)/α(p), index 2ℓ(w) for negative X, Morse–Bott strata on walls |
| MorseTheory M2 | main …/MorseTheory/README.md:124 | bands, handles, cells |
| AlgebraicTopology Stage 5 item 3 | main …/AlgebraicTopology/README.md:849, :870–885 | finite-cover transfer, p_*tr=d, tr p_*=Σ g_* |
| CharacteristicClasses C5, C5a | main …/CharacteristicClasses/README.md:1060, :1136 | Chevalley restriction and compact-Lie transgression stay there (S9.6 excludes them correctly) |
| ReflectionInvariantTheory §§1–3 | main …/ReflectionInvariantTheory/README.md:7, :19, :40 | invariant theory, not consumed |
| IndexTheory I8 | head of #1077, TauCetiRoadmap/IndexTheory/README.md:888–897 | compact boundaryless complex manifold, isolated fixed points with det(1−df)≠0, φ:f*E→E, formula Σ tr(φ_x)/det(1−df_x); item 4 names the f=g⁻¹, φ=g_E convention and calls the flag case a SchubertGeometry application; not on main, not in the merge order (R05) |
| TensorProductCombinatorics §8.3, Layer 6 | head of #1107, …/TensorProductCombinatorics/README.md:2277, :1707; From SchubertGeometry at :356 | owns coordinate paths and the puzzle rule; consumes S4.1–5; its note at :2580 still says S9.5 restates §8.3's comparison maps, a stale description on its side |
| GeometricQuantization §§3.3–3.4 | head of #1186, …/GeometricQuantization/README.md:624, :680; From SchubertGeometry at :200 | owns Pic_hol and the degree basis; consumes S9.1/S9.7; mentions a “SchubertGeometry, Part II” that does not exist yet (its side) |
| ShimuraData §3.8, §§3.14–3.15 | head of #1038 (`roadmaps show`), :535 `parabolicTypeVariety`, :656, :676–686 `integralSchubertBaseChange` | second owner of Par_t, integral cells and closures; does not cite SchubertGeometry |
| ComplexComparisonPartII C-1.1, C0.4, C1.9 | head of #848, :724, :1070, :1673 | second owner of analytification and proper GAGA; does not cite SchubertGeometry |
| AlgebraicModuliForArithmeticGeometry §1.3 | head of #853, :602, :678 `flagBundle` | second owner of the relative flag; does not cite SchubertGeometry |
| Consumers of dropped sections | ClassicalGroups #1192 :1118 cites “S4.4a's … 15-dimensional” (removed); GroupSchemesOverABase #1522 :504 cites “S3P's ordinary flag Picard group” (removed, now GeometricQuantization §3.3) | stale citations on their side; recorded so the author can warn those authors |

**Source verification.** All texts were read from the sources cache through legal routes (author pages at Stanford, Cornell and Köln; arXiv; Numdam; the Compositio article on Cambridge Core). Page offsets: Conrad printed page = page marker; SGA1 printed page = pdf page − 16 in Exposé XII; Serre printed = pdf − 1; Brion printed = pdf page; LLM printed = pdf + 292; Littelmann 1995 printed = pdf + 497.

| Seeded target | Text inspected | Outcome |
|---|---|---|
| 1.2 Root-cell dictionary | ConradReductive line 6011, Theorem 5.1.13, p. 143 (ordered root product U_Φ⁺, open cell Ω over a nonempty base); line 2993, Theorem 2.3.6, pp. 72–73; lines 6512, 6551, Corollaries 5.2.8–5.2.9, pp. 155–157 | supports S1.0/S1.2 as stated; the ℤ-cell statement is a deduction with field Bruhat, as the README says |
| 3.1 Associated lines | BrionFlags lines 592–602 (§1.4, pp. 15–16: L_λ=G×_B ℂ with b(g,t)=(gb⁻¹,λ(b)t)), 613–639 (1.4.3: degree λ_i−λ_j on the curve) | rank-one degree ⟨λ,α∨⟩ agrees; Brion uses the positive Borel, so the README's “after opposition” is right |
| 3.2 Sections and extremal spans | no literature locator in the README; BrionFlags line 667 (1.4.5, p. 17: H⁰(λ)≠0 iff λ dominant, B−-eigenline of character −λ) supports the convention | mathematics checked on SL₂; locator missing (R02) |
| 3.6 A₂ calculation | KnutsonDemazure line 142 (§4.0.2, p. 4: word (12)(23)(12), λ=2ω₁+5ω₂, roots x₂−x₁, x₃−x₂); lines 85–98 (§3, p. 3: operator and the divisibility remark); line 102 (start at w₀·λ) | source identifies the example and operator; the 46-weight formula is the roadmap's deduction and was recomputed |
| 5.1 Frobenius modules and trace | no locator; computations above | standard (Brion–Kumar 1.3); locator missing (R02) |
| 5.2 Compatible ideals | no locator; computations above | same |
| 5.5 Dominant vanishing | LLM line 324, Theorem 6, p. 301 (H⁰(Z_i,L_i,m)≅V*_i,m, projective normality, H^i=0 for i≥1, also for Z_i,m) | supports the word vanishing and section comparison as cited |
| 6.3 Minuscule induction | “the source's minuscule induction” unnamed | not locatable (R02); the exact sequence and m=0 case are correct |
| 6.5 Ideals and normal generation | GroebnerGeometry G5 (main :394) for Rees/SAGBI; LLM Theorem 4 (line 251, p. 299) for the basis | supplier and theorem resolve; “the source's toric degeneration” unnamed (R02) |
| 8.1 Flag Grothendieck groups | BrionFlags lines 1345–1365 (§3.3, pp. 37–38: K₀ of coherent sheaves, K⁰ of bundles, the map φ) | as cited |
| 9.2 Holomorphic Lefschetz input | IndexTheory I8 (#1077 :888–897); Atiyah–Bott II Theorem 4.12 named there | hypotheses match; direction issue R05 |
| 9.4 Character comparison | no external locator; depends on S9.3/S3.3 | SL₂ instance checked |
| 9.5 Type-A path specialization | RootSystems Layer 6 (main :356) | as cited |
| 9.7 Moment–Morse comparison | HamiltonianReduction R2a (main :157–186) | signs and indices agree (table row) |
| 9.8 Associated-line analytification | S3.1, S9.1, LieGroups Layer 8 (main :428) | as cited |
| also read: 1.0 | SGA1 lines 9399 (XII.1.1, pp. 239–240), 9479 (1.3.1, p. 241), 9738 (4.2, p. 248), 9801 (4.3, p. 249), 9805 (4.4, pp. 249–250); SerreGAGA lines 735, 741, 746 (§12, Theorems 1–3, pp. 19–20) | all five SGA1 and three Serre locators correct |
| also read: 2.2, 3.4, 4.3, 4.4, 5.4 | LLM line 282 (§1.4, pp. 300–301), line 265 (Theorem 5, p. 299); CFL lines 188 (Definition 2.1, p. 4), 941–962 (§7.1, p. 18, bonds (σλ,β∨), gcd condition referred out); BrionFlags lines 809 (2.1.1, p. 22), 918 (2.2.3, p. 25), 1439 (3.4.1, p. 40); Littelmann1995 lines 137 (§1, p. 502), 747 (Theorem 7.1, p. 518), 815 (Theorem 9.1, p. 520), 848 (§10, p. 521) | all locators correct |

## Not verifiable

- The Knutson Bott–Samelson handout, the algebraic-varieties notes (S1.5's symplectic exercise, S2.2's “handout”, S4.7's “notebooks”) are not identified in the README and were not located; R02.
- KnutsonDemazure §4.0.2's diagram entries are OCR-damaged (lines 147–149); the coefficients were recomputed, not read.
- KnutsonBorelWeil pp. 4–5 (lines 296–338) has its displayed formulas stripped from the extraction; the prose supports the eight-versus-nine discussion, the numbers are my recomputation.
- Littelmann 1995 is an OCR of the author's scan; theorem numbers, section starts and pages were verified, the displayed formulas were not.
- No general proof was checked: the table records instances. The interval-gcd connectivity (S4.3), integral Schubert closure normality (S5.6) and all-word derived comparison (S5.7) were checked only on the displayed small cases.
- Ownership was checked against main, the board packages index, the sibling heads the brief lists, and `roadmaps grep`/`roadmaps show` for ShimuraData, ComplexComparisonPartII and AlgebraicModuliForArithmeticGeometry; open pull requests without readable files were not reviewed.

## Source issues

- **Misprint** in KnutsonDemazure at §3, printed p. 3 (line 96): the source says the numerator p−α·r_α(p) is negated by the reflection r_α; it should be multiplied by −α⁻¹ (so it still vanishes along ker α); affects nothing.
- **Misprint** in KnutsonDemazure at §1, printed p. 1 (lines 12–17): the source says degree-k Čech cochains live on k-fold intersections with global sections at the empty intersection; it should be (k+1)-fold intersections; affects nothing.
- **Misprint** in SGA1 at Exposé XII, Proposition 1.3.1, retyped p. 241 (line 9479): the source says the functor takes an O_Xan-module F to F^an; it should say an O_X-module; affects nothing.
