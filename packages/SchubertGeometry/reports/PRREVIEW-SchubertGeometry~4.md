# Review of SchubertGeometry (pull request #1224 at f26277a)

**Verdict:** needs changes

## R01 (P1) — The alleged singular Schubert variety is a smooth curve

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:957`, “X_(2,1)={V : V∩F₂≠0}”; the same label occurs at line 1001.

**Claim:** With this roadmap's partition convention, X_(2,1) is the three-dimensional quadric cone in Gr(2,4), providing the non-Cartier boundary and singular K-theory controls.

**Witness:** Section 1.3, line 188, gives λ_i=2+i−p_i. The cone has pivots (2,4), hence λ=(1,0) and dimension 3. Partition (2,1) has pivots (1,3): F₁⊂V⊂F₃, a smooth ℙ¹ of dimension 1.

**Repair:** Replace X_(2,1) by X_(1) in both places. Keep the displayed cone equations and the two boundary planes. Add the contrasting X_(2,1)≃ℙ¹ calculation to the Check. With the corrected label, p₂₄=0 in the cone gives p₁₄p₂₃=0, exactly the two stated reduced planes; each is non-Cartier at the vertex. The dimension formula now gives 4−1=3, while the negative control gives 4−3=1. Thus the intended examples survive without changing the convention.

## R02 (P2) — A full Weyl-group cover need not define a quotient cover bond

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:936`, “It equals S4.3's cover bond b_λ(w,v)”.

**Claim:** Every full-flag divisor coefficient for v=ws_β<w equals the positive cover bond defined in S4.3 on W/W_λ.

**Witness:** The Check at line 941 takes λ=ω₁, w=s₁s₂, v=s₁. Its coefficient is 0 and wλ=vλ=ε₂. Section 4.3 defines bonds only on strict quotient covers, with positive value: this bond does not exist.

**Repair:** Keep the universal full-flag multiplicity ⟨λ,β∨⟩. Identify it with S4.3's bond only when the projected pair is a strict cover in W/W_λ, using the projected indices explicitly. Positivity alone is insufficient: for λ=ω₁, w=s₂s₁, v=s₂, β=α₁, the coefficient is 1 but the images ε₃>ε₁ have intermediate ε₂. Add this second negative control alongside the existing collapsed pair. For the actual quotient cover s₂s₁>s₁ the pairing and bond are both 1; for the collapsed pair retain coefficient 0 without asserting a bond. This repairs the interface used by S4.6 and S6.3 without restricting the divisor theorem to regular weights.

## R03 (P3) — Steinberg's freeness theorem is not the cited equivariant K-ring theorem

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:1037`, “The equivariant presentation is the tensor form of Steinberg1975's freeness theorem, pp. 173–177.”

**Claim:** The locator supplies R(T)⊗_(R(G))R(T)≃K₀ᵀ(G/B), and its parabolic analogue.

**Witness:** Steinberg1975 lines 12–17, 30–50: Theorems 1.1, 1.3 and 2.2 concern freeness of representation rings, including the algebraic version. They do not construct or identify K₀ᵀ(G/B); the introduction refers elsewhere for K-theory applications.

**Repair:** Cite Theorem 2.2, p. 173, for precisely the freeness input. Give a locator for the geometric equivariant characteristic-map identification, or explicitly supply its proof route here from the owned equivariant flag comparisons, naming the required change-of-groups/filtration maps. Distinguish that argument from tensoring a free module. The SL₂ control must still send 1⊗z to (z,z⁻¹), and z⊗1 to (z,z); freeness and rank 2 alone cannot identify these maps. This is an attribution/proof-route issue, not a counterexample to the presentation.

## R04 (P3) — The cited works still have no source manifest

**Location:** `TauCetiRoadmap/SchubertGeometry/README.md:1451`–end, References; absent `TauCetiRoadmap/SchubertGeometry/sources.toml`.

**Claim:** The bibliography has durable source identities and verification status for each cited work.

**Witness:** The folder contains README.md, Suggested.lean and metadata.toml, but no sources.toml. Fifteen directly cited works include thirteen readable texts and two locator-only texts; none has a manifest entry tying its key to that status.

**Repair:** Record each work once using the required source-manifest schema, preserving the README's existing keys. Include version-specific numbering and the legal fetch metadata for the thirteen readable texts; record the locator-only status for Pittie1972 and Jantzen. Mehta–Ramanathan 1985 is only an indirect citation through Ramanathan1987; label it accordingly rather than implying an independent verification. Re-fetching LLM, for example, must resolve the same key and its published Theorems 4–6, not create a new entry for its DOI.

## Verified sound

This was a full review of both listed files, including all 53 numbered subsections, conventions, API bullets, Checks and worked examples. The two mathematical findings above prevent acceptance despite the passing gate. The finite calculations below are counterexample tests, not proofs of the general construction programme.

**Previous findings, checked first against this head.**

| Previous finding | Passage/evidence at this head | Disposition |
|---|---|---|
| R01, orphan simple-generator acceptance file | The auxiliary file is absent. Suggested.lean says “None of the following headlines is statable at the pins” and has no declarations. | Repaired. The removed programme has not returned. |
| R02, unidentified sources | References now identify “KnutsonBorelWeil”, “KnutsonBottSamelson”, “KnutsonSymplectic” and “KnutsonDemazure”, with titles, URLs and locators; S5 cites Ramanathan1987 and S3.2 cites Jantzen II.14. | Partly repaired. Names and most locators resolve; the missing manifest remains R04. The newly explicit S8.3 attribution needs R03. |
| R03, obsolete item numbers | S2.3 now cites “S5.6”; S5.2 says “S5.6 constructs their characteristic-zero mixed-family comparison”; S9.7 uses “same homogeneous coadjoint orbit”. | Repaired. Old unnamed item references no longer determine the build. |
| R04, absent Checks | S3.2, S7.1, S7.2, S8.1 and S9.6 each now have three Checks. S9.6 includes “H²=ℤ/2” for ℝP². | The missing-block defect is repaired. Their mathematical content was reviewed afresh; S7.1/S7.2 expose R02/R01. |
| R05, IndexTheory placement advisory | S9.2 still consumes “IndexTheory I8”, whose explicit fixed-map input exists at the supplied open head. | Not renewed. The binding placement rule does not make absence from ORDER a defect; the mechanical check has no UPWARD/CYCLE line. |
| R06, missing native cohomology/line contracts | Lines 46–64 now specify `Scheme.Modules.Cohomology`, `InvertibleSheaf` and `SheafOfModules.isInvertible`, and distinguish their carriers from the missing geometric theorems. | Repaired; the definitions were opened at the pin. |

No settled “not actionable in this package” finding is re-raised.

**Gate, scope and Lean.** The supplied gate is for f26277a and reports every check zero, including `stray-files=0`, `outside-folder=0`, `depcheck=0` and `build=0 OK`. The independent outside-folder diff is empty. Direct `lake env lean` elaboration of `TauCetiRoadmap/SchubertGeometry/Suggested.lean` exited 0 with no diagnostics. It contains one `import Mathlib`, one module docstring and the required namespace; no data, theorem, axiom, `set_option`, extra import or admitted example. There are zero own signatures for a `#check @name` probe and zero sorried theorems for a one-tactic padding probe. No worktree file was changed.

The dependency command prescribed in the brief returned:

    depcheck: 204 roadmaps, 1471 edges, 0 problem(s)

There was no UPWARD, CYCLE or moved line. I read every Needs line. The apparent S4/S5/S7 interleaving is explicitly resolved: early S4.1–5 is combinatorial, S7.1–2 follows S5, and geometric S4.6–7 follows both. The characteristic-p half of S5.4–5.5 precedes S5.6; the characteristic-zero half follows its integral comparison. S2.5 is a late complex comparison and is not an input to the algebraic word construction. No declared supplier gaps were supplied for this job.

**Headline acceptance coverage.** The README's headline families are: relative parabolic/flag representability and Schubert incidence (S1); all-word images and derived O-pushforward (S2/S5.7); geometric Demazure/Weyl characters (S3); LS components, interval bonds, characters and tensor decomposition (S4); compatible splitting, normality, dominant vanishing and integral base change (S5); all-degree standard monomials and normal generation (S6); Chevalley multiplicities and cycle comparison (S7); ordinary/equivariant flag K-rings (S8); proper coherent GAGA, flag/word realization, Lefschetz characters, moment–Morse and associated-line comparison (S9). The module docstring names each family and its missing carriers. The native module Grassmannian does not make flag schemes available, and a generic K₀ or cohomology carrier does not construct these geometric objects. Finite signed strings are statable algebra, but are an input to the geometric headline, not a substitute for it. No missing statable headline or padding finding resulted.

**Seeded source sample: 15 targets.** All fifteen targets were inspected at the requested locators; the attribution limitation in S8.3 is R03. Source text was obtained through the sources service from author/institutional pages, arXiv, Numdam and the open publisher PDF. OCR-dependent displayed formulas were also inspected on rendered pages where needed. These are descriptions of the sources, not copied passages.

| Target | Text and precise locator read | Scope and result |
|---|---|---|
| 2.2 Word schemes | LLM lines 282–328, §1.4, pp. 300–301; KnutsonBottSamelson lines 10–66, §§1–2, pp. 1–2, and 153–165, §5, p. 4 | Contracted products and iterated ℙ¹ bundles, including nonreduced words. The integral extension is an explicit quotient-chart target, not claimed as LLM's theorem over arbitrary bases. The handout reverses the displayed factor order; the README fixes its own chronological product. |
| 2.5 Compact word comparison | KnutsonBottSamelson lines 168–173, §5 continuation, p. 5 | Compact rank-one factors modulo the torus give the model. The README correctly retains the finite central kernel omitted by the handout's direct-product wording. The analytic adapter is owned in S9. |
| 3.4 Demazure/Weyl characters | LLM lines 265–266, Theorem 5, p. 299; lines 324–328, Theorem 6, p. 301; KnutsonDemazure lines 85–123, §3, p. 3 | Character formula and geometric interpretation are distinguished. Dominance supplies vanishing; positive characteristic does not identify induced and simple modules. The positive-denominator operator is conjugated by weight inversion. |
| 3.6 A₂ character calculation | KnutsonDemazure lines 142–146, §4.0.2, p. 4, also visually read | The source diagram uses 2ω₁+5ω₂ and word 121. The README's extra coefficient formula is its own signed-string deduction. Independent coefficientwise computation gives all 46 weights and dimension 81. |
| 4.1 Paths/crystals | Littelmann1995 lines 137–151, §1, p. 502; lines 194–205, Lemma 2.1, pp. 503–504 | Rational PL paths and nondecreasing continuous surjective PL reparametrizations; integral-endpoint submodule distinguished from all paths. The README's finite-type and central-lattice additions are explicit constructions. |
| 4.2 Root operators | Littelmann1995 lines 152–182, §1, pp. 502–503; lines 194–203, Lemma 2.1 | First/last cuts, reflected record segments and unchanged excursions, followed by endpoint changes and partial inverses. Whole-interval reflection is not asserted on arbitrary paths. |
| 4.4 Characters/tensor components | Littelmann1995 lines 742–775, Theorem 7.1, pp. 518–519; lines 810–843, Theorem 9.1, p. 520; lines 848–865, §10, p. 521 | Dominant rational paths, integral endpoint, component isomorphism, character and concatenation decomposition. Characteristic-p Weyl/induced character comparisons require the named rational-representation supplier, not a characteristic-p simplicity claim from this paper. |
| 6.3 Minuscule induction | LLM lines 251–255, Theorem 4, p. 299; lines 324–328, Theorem 6, p. 301 | The source gives the standard-monomial basis/geometric interpretation. The reduced-boundary exact-sequence induction is a proposed deduction, using S5 and S7, not a quotation from that theorem. Tested m=0 and positive twists. |
| 7.3 Cycle comparison | BrionFlags lines 398–490, §1.3, pp. 11–13 | Complex flag cycles, orientation, opposite intersections and Schubert bases. The general cycle machinery is supplied separately. The printed dimension typo is recorded below; the README does not repeat it. |
| 8.3 Equivariant characteristic map | Steinberg1975 lines 12–54, Theorems 1.1, 1.3, 2.2 and Remark 2.3, pp. 173–174; proof through line 220, p. 177 | Freeness, explicit basis and rank are verified. This source does not itself give the equivariant geometric presentation: R03. |
| 9.0 Proper coherent GAGA | SGA1 lines 9399–9490, XII.1.1/1.3.1, pp. 239–241; lines 9738–9835, XII.4.2–4.4, pp. 248–251. SerreGAGA lines 735–746, §12 Theorems 1–3, pp. 19–20; §§13–17, lines 766–1035, pp. 20–27 | Locally finite-type schemes, proper pushforward, coherent sheaves, nilpotents, projective starting case and proper dévissage agree. Read the projective-twist/extension argument, not merely the theorem headings. The README correctly limits faithful detection to coherent sheaves and does not promise arbitrary underived base change. |
| 9.3 Word fixed-point formula | KnutsonDemazure lines 48–60, §2, p. 2, and lines 85–123, §3, p. 3; IndexTheory I8 at its supplied head | Generic torus element/localization and nondegenerate isolated fixed points are essential. The README uses f=g⁻¹ with the section lift, giving the displayed negative tangent weights in the denominator. |
| 9.4 Character comparison | Same fixed-point and Demazure passages; LLM Theorems 5–6, pp. 299–301 | Euler classes are compared first; dominance is used only for the H⁰ interpretation. The O(−2) control is −1 versus h⁰=0. |
| 9.5 Type-A specialization | Littelmann1995 §1, pp. 502–503, and Theorem 7.1, pp. 518–519, specialized to adjacent coordinate differences; TensorProductCombinatorics §8.3 | This is the root-datum specialization of the generic construction. Coordinate-presentation equivalence remains with the named downstream owner. The GLₙ central coordinate is retained. |
| 9.8 Associated-line analytification | SGA1 XII.1.1/1.3.1 and XII.4.4 as above; SerreGAGA Theorems 1–3, pp. 19–20; S3.1 transition-function construction | Tensor, fibre and dual comparison follows by applying coherent analytification to the associated-line cocycle. No reconstruction of the downstream ordinary Picard group is claimed. |

Additional locator checks: ConradReductive Theorem 2.3.6 (lines 2993–3022, pp. 72–73), Theorem 5.1.13 (lines 6011–6036, p. 143), Corollaries 5.2.8–5.2.9 (lines 6512–6575, pp. 155–157); CFL Definition 2.1 (lines 188–204, p. 4) and §7.1 (lines 941–974, pp. 18–19); Ramanathan1987 Definition 1.1/Proposition 1.4 (lines 175–246, pp. 65–66), §1.16–Lemmas 1.18–1.19 (lines 360–418, pp. 70–71), Theorem 3.5(i) (line 799 onward, pp. 82–83) and Theorem 3.7 (lines 904–912, pp. 84–85); KnutsonBorelWeil pp. 4–5 (lines 296–338, with p. 5 viewed); KnutsonSymplectic §§1–4 (lines 9–158, pp. 1–4). The readable source count is thirteen distinct directly cited works. Pittie1972 and Jantzen are handled under Not verifiable.

**Adversarial calculations: 89 rows.** Each row gives actual values, including controls that the intended construction must exclude. “Pass” means these instances agree, not universal certification. Exact integer/rational calculations were run for the A₂ characters, symplectic matrices, incidence span, wall projections, pivots, orbit counts and fixed-point sums; the remaining rows are direct small computations. Rows cover all 53 subsections, the headline families and the worked examples. The change column names a repair only where the calculation refutes the text.

| Statement | Instances | Values computed on the two sides / wrong-model control | Result; change |
|---|---|---|---|
| Conventions: right quotient and cell dimension | SL₂, e and s | C(e)=point, dimension 0=ℓ(e); C(s)=𝔸¹, dimension 1=ℓ(s) | Pass; none |
| Conventions: line and ordinary dual | SL₂ λ=1; A₂ λ=ω₁ | Degree +1; section weights ±1. Ordinary dual of ∇(ω₁) has highest weight ω₂, not ω₁ | Pass; none |
| S1.0 parabolic representability/canonical line | GL₂/ℤ; P=G; anisotropic quaternion group/ℝ | Borel component ℙ¹, determinant-dual degree 2; full parabolic component S, fibre one point; anisotropic conic has 0 real points but becomes ℙ¹ over ℂ | Pass; none |
| S1.0 root charts/base change | GL₃/𝔽₂; dual numbers | Cell counts 1+2+2+4+4+8=21=168/8; chart ring ℤ[ε,z]/ε² has ε≠0, unlike its reduction | Pass; none |
| S1.1 flag incidence | Ranks (1,2) in rank 3; empty rank list | Ambient dimension 4 versus incidence dimension 3; empty list gives S. Pair (e₁+εe₃, span(e₁,e₂)) has obstruction ε≠0 versus 0 after reduction | Pass; none |
| S1.2 root-cell dictionary | S₃; torus; full/partial GL₃ flags | (123)⁻¹=(132), inverse again (123); torus flag dimension 0; fixed sections 6 versus 3, fibres of projection size 2 | Pass; none |
| S1.3 pivot/partition convention | Gr(2,4), pivots (1,2),(1,3),(3,4) | Dimensions 0,1,4 equal 4−partition size 4,3,0 respectively | Pass; used by R01 |
| S1.3 out-of-range ranks | N=0, r=0 or 1 | Rank-0 functor has one subspace; rank-1 functor empty; natural subtraction N−r is 0 in both, so the r≤N guard is necessary | Pass; none |
| S1.4 determinantal scheme | Dual-number incidence; oversized minor | Ideal (ε)≠0 although its reduced zero set is whole point; oversized-minor ideal 0, not (1) | Pass; none |
| S1.5 isotropic dimensions | Symplectic dimension 4, r=0,1,2,3 | Dimensions 0,3,3; r=3 empty by 2r≤4 failure | Pass; none |
| S1.5 multiplication and inverse | r=s=1, Y=(1,2),Y′=(3,4),Z=5,Z′=6 | YᵀJ₀Y′=−2; product ((4,6),9), not ((4,6),13); matrix AᵀJA=J and A·A⁻¹=I₄. Reduction mod 2 still satisfies both identities | Pass; none |
| S1.5 limiting blocks | r=m and r=0 | Empty Y block leaves additive symmetric matrices; r=0 leaves identity group, dimension 0 | Pass; none |
| S2.1 two cranks | Point, constant map from 𝔸¹, empty scheme | Right crank dimensions 1,2; over 𝔸¹ fibre ℙ¹ is proper but total 𝔸¹×ℙ¹ is not proper over k; empty input gives empty output | Pass; none |
| S2.2 word tower | Empty word, i, ii | Dimensions 0,1,2; torus fixed sections 1,2,4 | Pass; none |
| S2.3 image and subword convention | ii | Demazure product s, ordinary product e; image dimensions 1 versus 0. Fixed subwords map to e,s,s,e | Pass; none |
| S2.3 tangent and fibre signs | One letter, SL₂ λ=1 | Tangent weights +α,−α; fibre weights +1,−1; at z=2 tangent values 4,1/4 and fibres 2,1/2 | Pass; none |
| S2.4 refinements/opposition | A₂ words 121,212; subsystem {α₁,α₂} | Both length 3 and product w₀; w₀α₁=−α₂, not −α₁. Empty refinement remains point | Pass; none |
| S2.5 compact comparison | One letter; U₂ central cover | ℙ¹(ℂ) and SU₂/U₁ both S²; SU₂×U₁→U₂ kernel size 2, not 1 | Pass; none |
| S3.1 associated lines/tensor/forgetful | SL₂ weight 1; GL₂ det; torus | Degrees 1,0,0; tensor 1+1 gives degree 2; torus weights 0 and 1 are distinct equivariantly despite ordinary dimension 1 | Pass; none |
| S3.2 extremal spans | SL₂ point/full flag λ=1; GL₃ λ=ω₁ | Section dimensions 1 and 2; point dual weight −1. e and s₂ project to the same ω₁ weight ε₁ and give the same one-dimensional span | Pass; none |
| S3.3 signed strings | m=0,−1,−2 | D(eλ)=eλ,0,−e^(λ+α), augmentations 1,0,−1; h⁰-only answer at −2 would be 0 | Pass; none |
| S3.3 inversion/idempotence | SL₂, weight ±1 | D(z)=z+z⁻¹; Δ(z⁻¹)=z⁻¹+z; D(z⁻¹)=0; D²(z)=z+z⁻¹ | Pass; none |
| S3.3 numerator normalization | p=1, x=eα | N=1−x, sN=1−x⁻¹=−x⁻¹N; −N=x−1 differs | Pass; none |
| S3.4 character/dominance | SL₂ λ=2, characteristic 2 | Weyl/induced character z²+1+z⁻² has dimension 3; simple Frobenius-twist character z²+z⁻² has dimension 2 | Pass; none |
| S3.4 braid and longest invariance | A₂, 121 and 212 on e^(0,5,7) | Both outputs have identical 46 coefficients, total 81; applying either Δ again preserves all coefficients | Pass; none |
| S3.5 scheme stabilizer | ℙ¹: O(1), O, Frobenius twist | Maps have differential ranks 1,0,0; Frobenius has bijective geometric points but degree p, not an immersion | Pass; none |
| S3.6 successive strings | Same A₂ weight | 121 augmentations 1,6,33,81; 212 augmentations 1,3,21,81; Weyl dimension (3·6·9)/2=81 | Pass; none |
| S3.6 coefficient formula | Interlacing patterns; centre and outside support | Pattern count 81 equals sum of coefficients; multiplicity histogram 21×1+15×2+10×3=81 over 46 weights; (4,4,4) has 3 and (9,3,0) has 0 | Pass; none |
| S4.1 path quotient/normalization | Constant and subdivided straight path | Constant has 0 segments and endpoint 0; subdivided (t,0) retains endpoint (1,0) and the same path, not a second crystal vertex | Pass; none |
| S4.1 central addition obstruction | φ(1/2)=1/4, χ=(1,1) | Naive shifted point (3/4,1/2) gives x−2y=−1/4; canonical point (1,1/2) gives 0 | Pass; none |
| S4.1 normal strings | B(0), B(1) for SL₂ | B(0) has 1 vertex, ε=φ=0; B(1) has weights 1,−1 and string lengths (0,1),(1,0) | Pass; none |
| S4.2 root operators | SL₂ highest path; central GL₂ path | f changes endpoint 1 to −1 and e returns 1; next f undefined. Central (t,t) height 0 gives both operators undefined | Pass; none |
| S4.3 a-chains/gcd | Rank-one bond 2; equal endpoints | At a=1/2 product 1 integral; at 1/3 product 2/3 nonintegral; q=2 divides gcd 2, q=3 does not. Empty gcd 0 is divisible by every q>0 | Pass; none |
| S4.3 nonabelian rank-two chains | A₂ λ=ρ, interval e to w₀ | Four saturated chains have bond lists (1,2,1),(1,1,1),(1,1,1),(1,2,1), each gcd 1 | Pass; none |
| S4.3 quotient wall and convexity | λ=ω₁; pure central χ | s₂λ=λ=ε₁; no strict edge. At t=1/2, π(t)=χ/2 lies in (1/2){χ}, not {χ} if χ≠0 | Pass; R02 uses this domain |
| S4.3 typed central transport | GL₂ λ=(1,0), χ=(1,1), ψ=(2,2), σ=(3,3) | Both composite routes have endpoint (7,6); shift-then-inverse subtracts χ and returns (1,0) | Pass; none |
| S4.4 tensor character | SL₂ B(1)⊗B(1) | Character (z+z⁻¹)²=z²+2+z⁻²=(z²+1+z⁻²)+1; component sizes 3+1=4 | Pass; none |
| S4.4 adjoint controls | E₁₂,E₂₃,E₁₃ and negative root units | [E₁₂,E₂₁]=H₁; [E₁₃,E₃₁]=H₁+H₂; [E₁₂,H₁]=−2E₁₂; [E₁₂,H₂]=E₁₂. Three forced Cartan lines have determinant pairs 1,1,−1 in dimension 2 | Pass; none |
| S4.5 chain simplices | S₃; bond 2 | 6 vertices, 4 maximal length-3 chains, hence 4 tetrahedra; internal break 1/2 allowed, 1/3 excluded although both lie in the real interval | Pass; none |
| S4.6 geometric sections | SL₂ λ=2, point/full flag | Three one-dimensional indexed leaves/sections on full flag; one surviving section at the closed point; dimensions 3 and 1 match characters | Pass on instance; none |
| S4.7 opposition/section weight | A₂ λ=ω₁, κ=ω₂, point | Initial path endpoint κ; −w₀κ=ω₁, the required point fibre. Without w₀ transport, −κ≠ω₁ | Pass; none |
| S5.1 Cartier trace | k[x], p=2; dimension 0 | Tr(1)=0, Tr(x)=1, Tr(x³)=x; σ(f)=Tr(xf) gives σ(1)=1,σ(x²)=x. Dimension 0 trace 1→1 | Pass; none |
| S5.2 compatible ideals | p=2, ideals 0,(x),(1),(x²) | First three preserved; σ(x²)=x∉(x²). Two split points have coordinate ring k×k, dimension 2 | Pass; none |
| S5.3 central descent | SL₂→PGL₂, p=2 | μ₂ ring k[u]/(u−1)² has length 2 and nonzero nilpotent; both flag schemes ℙ¹, induced flag map an isomorphism | Pass; none |
| S5.4 normality/direct image | Point and rank-one Schubert; reducible union xy=0 | Normal point/ℙ¹ have π_*O=O; node normalization k[x]×k[y] strictly exceeds k[x,y]/xy, excluding union-normality | Pass; none |
| S5.5 dominant vanishing/restriction | ℙ¹, m=0,1,2; mixed two-point union | h⁰=1,2,3 and h¹=0; common-Borel point restriction surjective. For {0,∞}, constants map k→k² diagonally, cokernel dimension 1= h¹(O(−2)) | Pass; none |
| S5.6 integral/base-change comparison | ℙ¹/ℤ; empty union; dual-number base | H⁰ ranks 1,2,3 remain 1,2,3 mod 2 and mod 3; empty union rank 0 even in degree 0; ε stays nonzero after flat flag pullback | Pass; none |
| S5.6 fibrewise cokernel test | Finite ℤ-module M=ℤ/2; M=0 | M⊗𝔽₂=𝔽₂≠0, detected at prime 2; zero M has zero fibre at every prime. A nonzero torsion cokernel cannot evade all prime tests | Pass; none |
| S5.7 all-word derived comparison | Q=ii, image ℙ¹ | Source dimension 2, fibre ℙ¹ with H⁰=k,H¹=0; image and source pullback of O(−2) both have H⁰=0,H¹=k | Pass; none |
| S6.1 graded coordinate/section map | ℙ¹, polarizations O(1),O(2),O | Degree-1 dimensions 2,3,1; degree-m dimensions m+1,2m+1,1. Last Proj is point, not ℙ¹ | Pass; none |
| S6.2 determinant sections | Gr(2,4), two-frame e₁,e₂ | p₁₂=1, other minors 0, Plücker relation 0−0+0=0. Degrees 0,1,2 have dimensions 1,6,20=21−1 | Pass; none |
| S6.3 minuscule induction | ℙ¹, D a point, m=1,2; boundary m=0 | Exact dimensions 1→2→1 and 2→3→1; at m=0, H⁰(O(−1))=0→k→k and H¹(O(−1))=0 | Pass; none |
| S6.4 standard products | SL₂, two degree-1 factors | Standard products x²,xy,y²: 3 versus tensor-square dimension 4; closed-point restriction leaves dimension 1; empty product 1 | Pass; none |
| S6.5 ideals/unions/normal generation | Two coordinate axes; ℙ¹ | (x)∩(y)=(xy), (x)+(y)=(x,y); union ring reduced but not normal. Products of degree-1 sections span all m+1 monomials on ℙ¹ | Pass; none |
| S7.1 full-flag multiplicities | GL₃ w=s₁s₂, λ=ω₁ or ρ | Coefficients at (s₁,s₂) are (0,1) or (1,2); constant-one boundary rule gives wrong (1,1) | Pass for multiplicities; none |
| S7.1 claimed cover-bond equality | λ=ω₁, w=s₁s₂, v=s₁ | Coefficient 0; projected endpoints ε₂=ε₂; S4.3 strict-cover bond undefined, not a positive 0 | Fail; R02 |
| S7.1 positive pairing still not enough | λ=ω₁, w=s₂s₁, v=s₂ | Coefficient 1; projected ε₃>ε₁ skips ε₂. For genuine quotient cover s₂s₁>s₁, coefficient=bond=1 | Fail without cover condition; R02 |
| S7.2 partition label | Gr(2,4), cone versus X_(2,1) | Cone pivots (2,4) yield (1,0), dimension 3; (2,1) yields pivots (1,3), dimension 1 and smooth ℙ¹ | Fail; R01 |
| S7.2 repaired Cartier/Weil control | Cone X_(1), p₂₄=0 | Equation reduces to p₁₄p₂₃=0: two reduced planes, each coefficient 1; their union is Cartier, individual ruling planes are not Cartier at vertex | Pass after R01 |
| S7.3 integral cycle map | Point, ℙ¹, GL₃ full flag | Point generator 1→1; on ℙ¹ degree(h)=1 and h²=0; flag Betti ranks 1,2,2,1 sum to 6, with opposite-basis diagonal intersections 1 | Pass; none |
| S8.1 K₀/G₀ and ambient classes | ℙ¹; cone control | K₀(ℙ¹)=ℤ[u]/u²; rank(O)=rank(O(1))=1 but Euler values 1,2. Singularity control applies to X_(1), not smooth X_(2,1) | R01 label repair; otherwise pass |
| S8.2 ordinary characteristic map | SL₂; torus | ℤ[z,z⁻¹]/(z+z⁻¹−2) has (z−1)²=0 and rank 2; torus quotient sends z→1, ring ℤ | Pass; none |
| S8.3 equivariant characteristic map | SL₂; P=G | Restrictions of 1⊗z are (z,z⁻¹), of z⊗1 are (z,z); at P=G tensor reduces to R(T) with rank 1 over itself | Instance passes; attribution R03 |
| S8.4 isogeny obstruction | PGL₂, SL₂, rationalization | u²=0, [O(2)]=1+2u; image ℤ+2ℤu misses u; cover contains 1+u; over ℚ, ([O(2)]−1)/2=u | Pass; none |
| S8.5 Euler push-pull | ℙ¹, O,O(−1),O(−2); point | Euler values 1,0,−1; push-pulls 1,0,−[O]; point operator identity on ℤ | Pass; none |
| S9.0 analytic local carriers | Affine dimension 0,1,2; dual numbers; node | Completions ℂ,ℂ[[z]],ℂ[[x,y]]; dual-number ring dimension 2 versus reduced dimension 1; node xy=0 with x,y both nonzero | Pass; none |
| S9.0 proper exchange and full faithfulness | Identity; ℙ¹ O(−2); affine line | Identity exchange 1, higher images 0; both ℙ¹ theories give (h⁰,h¹)=(0,1); exp(z) exists analytically on affine line but is not polynomial | Pass; none |
| S9.0 base-change counterexample | Extension class t over A=ℂ[t] | Complex [A --t→ A] has H⁰=0,H¹=A/(t); at t=0 differential 0 and H⁰=ℂ. Underived base-change map 0→ℂ fails on both sides | Pass; none |
| S9.1 flag/word analytification | Empty word, i, affine root chart | Point→point; one letter ℙ¹→ℙ¹(ℂ); coordinate z→z, derivative 1; dual-number ε→ε≠0 | Pass; none |
| S9.2 holomorphic Lefschetz input | Point identity; ℙ¹ identity | Point numerator/denominator 1/1=1; ℙ¹ identity has whole ℙ¹ fixed, tangent determinant 0, so isolated formula excluded | Pass; none |
| S9.3 fixed-point sign | SL₂ O(1), z=2; z=1 | Contributions 8/3 and −1/6 sum 5/2=2+1/2. At z=1 both denominators 0 but character 2, so individual evaluation forbidden | Pass; none |
| S9.3 repeated/empty words | ii and empty | Four-term ii sum 5/2 equals one-letter character 5/2; empty denominator product 1, sole numerator eλ | Pass; none |
| S9.4 Euler/H⁰ distinction | SL₂ O(−2) | Localized Euler sum −1; h⁰=0,h¹=1, so h⁰ alone gives wrong 0 | Pass; none |
| S9.5 type-A/central specialization | GL₂ (t,0), shifted by (1,1) | Height t, lowered endpoint (0,1); shifted endpoint (2,1) has same height; pure central (t,t) has height 0, endpoint (1,1)≠0 | Pass; none |
| S9.6 normalizer transfer | SU₂; torus; SU₃ | ℝP² integral cohomology (ℤ,0,ℤ/2), rational (ℚ,0,0); torus quotient point; SU₃ Euler ratio 6/6=1 | Pass; none |
| S9.7 moment/Morse signs | Point; rank-one orbit; central height | Point polynomial 1; negative-chamber ℙ¹ indices 0,2 give 1+q² and χ=2; central height has entire ℙ¹ critical, not 2 points | Pass; none |
| S9.7 root-plane metric | α(p)=2, α(X)=−3 | g=B/2 and Hessian coefficient −α(X)/α(p)=3/2>0; at reflected p the coefficient is −3/2<0, giving index 2 | Pass; none |
| S9.8 fibre/tensor/dual | SL₂ weights 1 and −1; torus | Root degrees +1,−1; tensor unit 1·1=1 and degrees sum 0; torus fibres at t=2 act by 1 and 2 despite equal ordinary dimension | Pass; none |
| Worked fixed-plane stabilizer | n=4,k₀=2; n=3,k₀=2; n=0 | Admissible d sets {0,1,2},{1,2},{0}; orbit counts 3,2,1 equal min(k₀,n−k₀)+1 | Pass; none |
| Worked orbit closures/minors | n=4,k₀=2,d=0,1,2 | O₂ point⊂Z₁ dimension 3⊂Z₀ dimension 4; d=0 minors size 3 of 2×2 map give ideal 0 | Pass; none |
| Worked decomposability | θ=e₁∧e₂; θ=e₁∧e₂+e₃∧e₄ | First contractions wedge θ to 0; contraction of second by e₁* gives e₂∧e₃∧e₄≠0, including characteristic 2. r=0 gives projective point, r>dim V gives empty | Pass; none |
| Worked tautological sections | ℙ¹, d=0,1,2 in N=2 | H⁰(S₀)=0,H⁰(O(−1))=0,H⁰(S₂)=k²; H⁰(S₁*)=k² | Pass; none |
| Worked function field | X=ℙ¹, U=𝔸¹ | O(U)=k[t] differs from k(t)=k(X)=k(U); trdeg k(t)=1=dim X | Pass; none |
| Worked flag embedding | GL₃ O(1,1) versus O(1,0) | Positive pair gives 3-dimensional embedded flag; zero second coefficient gives image ℙ² dimension 2 with ℙ¹ fibres | Pass; none |
| Worked eight-versus-nine module | GL₃ incidence and rank-one matrices | v∧ω=ax+by+cz=trace; eight incident rank-one matrices have span rank 8, every trace 0. Tensor dimension 9; section quotient dimension 9−1=8 | Pass; none |
| Worked module/ordinary dual | Same incidence | Highest weight (2,1,0) versus dual (0,−1,−2); sum of weights changes from 3 to −3, so they are not the same GL₃ module | Pass; none |
| Worked small-characteristic cyclicity | SL₂ Sym⁴, p=3 | Binomial coefficients (1,4,6,4,1) reduce to (1,1,0,1,1); orbit of highest vector misses x²y², generated span dimension 4<5 | Pass; none |
| Worked 121 blowup charts | Moving plane z=ux+vy | u=1,v=2 gives intersection [x:y]=[−2:1] and blowup direction [−1:−2]=[1:2]; chart r=2,s=1/2 has rs=1. At u=v=0 fibre ℙ¹ | Pass; none |
| Worked exceptional divisor | Centre C=ℙ¹, flat flag→ℙ² | Normal bundle O_C²; exceptional P(O_C²)=ℙ¹×ℙ¹, fibre-normal degree −1 on second factor, not +1 | Pass; none |

**Pinned definitions and duplication by object.** Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Searches used carriers, fields and operations, including Grassmannians, flags, Bruhat/parabolic cosets, paths, splitting/trace, sections, K-rings and analytification, rather than just proposed names. The following definitions/theorems were opened, not inferred from documentation alone:

| Pin-relative file and line | Actual declaration/body inspected | Consequence |
|---|---|---|
| `Mathlib/RingTheory/Grassmannian.lean:66` | `Module.Grassmannian`: submodule with finite projective quotient and fixed stalk rank | Module functor, not a representing flag/Schubert scheme; quotient rank N−r needs r≤N. |
| `Mathlib/LinearAlgebra/Basis/Flag.lean:37` | `Module.Basis.flag`, span of the specified initial basis segment | Supplied basis flag; relative incidence remains geometric work. |
| `Mathlib/LinearAlgebra/SymplecticGroup.lean:58`, line 185 | `Matrix.J` has blocks 0,−1,1,0; `SymplecticGroup.mem_iff'` tests AᵀJA=J | The adapted block form needs the README's basis comparison; no division by 2 is supplied or needed. |
| `Mathlib/LinearAlgebra/RootSystem/WeylGroup.lean:55` | `RootPairing.weylGroup = Subgroup.closure (range (Equiv.reflection P))` | Supplies a reflection-generated group, not LS paths/crystals. |
| `Mathlib/Analysis/Convex/Combination.lean:213` | `Convex.sum_mem`, nonnegative coefficients summing to 1 | Normalized elapsed durations supply exactly these hypotheses for t>0; t=0 is separate. |
| `Mathlib/Analysis/Convex/Hull.lean:49`, line 52 | `subset_convexHull`, `convex_convexHull` | The existing convex-hull facts are consumed, not planned again. |
| `TauCeti/GroupTheory/Coxeter/Bruhat.lean:87`, line 159 | `CoxeterSystem.BruhatStep`, reflection with strict length increase; `BruhatLE`, its reflexive-transitive closure | Existing Bruhat order is not rebuilt; a Bruhat step alone is not necessarily a cover. |
| `TauCeti/GroupTheory/Coxeter/Parabolic.lean:101`, line 233, line 330 | `parabolic`, `IsMinimalCosetRep`, `existsUnique_isMinimalCosetRep_mul` | Native parabolic subgroup and minimal-representative factorization; no quotient cover bond or interval-gcd theorem is hidden in these definitions. |
| `TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61`, lines 66–86 | `Scheme.Modules.Cohomology`, functor/additivity/H⁰ comparison | Sheaf cohomology after forgetting module structure; no coherence or properness theorem is part of its definition. |
| `TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:89`, line 112 | `SheafOfModules.isInvertible`, `InvertibleSheaf` full subcategory | Locally rank-one module sheaves; no chosen equivariant structure, fibre trivialization or flag comparison. |

No fully qualified own declaration can duplicate another acceptance file: there are zero such declarations in this head. The missing-carrier statements were checked at these pins; newer status files or later Tau Ceti work were not treated as imports.

**Supplier and ownership resolution.** Searches used `roadmaps grep` across main and open heads, supplemented by the supplied sibling files and the board packages. Twenty named roadmaps were resolved below; several supply more than one section. Revisions of existing roadmaps were checked against main for supply, not substituted by newer open revisions. Main's ReflectionInvariantTheory and RootSystems were also used as shape examples. No computational algorithm programme or copied source passage was found in the target.

| Roadmap / relative file locator | Object and direction checked |
|---|---|
| `TauCetiRoadmap/ModularCurves/README.md:427`, §0G | Finite-locally-free Grassmannian representability, charts and universal quotient; flags add closed incidence. |
| `TauCetiRoadmap/ReductiveGroups/README.md:627`, Layers 7–9; line 772, Layer 7b; lines 1780–1826, rational-representation extension | Field Bruhat, parabolics/double cosets, integral models, contravariant duality and independent algebraic Steinberg input. No geometric splitting is used to supply that Steinberg input. |
| `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:218`, Layers 1–3; line 356, Layer 6 | Weyl/Coxeter and integral root-data floor. The new path carrier and interval arithmetic are distinct; central reductive characters also use ReductiveGroups. |
| `TauCetiRoadmap/GroebnerGeometry/README.md:394`, G5 | Polynomial minors, straightening and initial/Rees algebra; S6 owns the section/scheme comparison, not a second polynomial straightening library. |
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:2044`, Layer 1; lines 3309,3437,5613, §§2.2,2.6,4.12; line 6535 onward, §5; line 6988 onward, §5.7 | Scheme/gluing floor, coherent Leray and projective cohomology, Chow modification, cycles and regular-resolution K₀/G₀. The finite-resolution hypothesis is respected in S8.1. |
| `TauCetiRoadmap/StableReduction/README.md:405`, Layer 2, especially relative Proj at line 433; Layer 4 at line 529 | Relative Proj and Rees/blowup charts; the worked 121 example is a specific flat-base-change identification, not a new generic blowup construction. |
| `TauCetiRoadmap/AlgebraicVectorBundles/README.md:217`, L0; line 306, L2A | Tensor/dual/exterior/determinant sheaves and the single graded quasicoherent algebra. |
| `TauCetiRoadmap/TopologicalKTheory/README.md:252`, T1.5 | Finite Grassmannian Schubert characteristic maps, exact pivots and complex orientation; S2.5/S9 compare algebraic models to these carriers. |
| `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:428`, Layer 8 | Compact full flags and homogeneous complex/root-cell comparisons. S9 supplies the algebraic comparison and partial-flag application, not a replacement compact carrier. |
| `TauCetiRoadmap/IndexTheory/README.md:888`, I8, supplied open head | Holomorphic fixed-map trace, isolated nondegenerate points and inverse-base-map section convention; S9.2 specializes this target. |
| `TauCetiRoadmap/ComplexKahlerGeometry/README.md:296`, K3; line 444, K4 | Holomorphic germs/Weierstrass and bundle/module-sheaf calculus; these do not by themselves give coherent GAGA with nilpotents. |
| `TauCetiRoadmap/RealAnalyticGeometry/README.md:728`, R3.2 | Native coherence, coherent kernels and Cartan A/B; S9.0 owns passage to coherent ideal quotients and analytic spaces. |
| `TauCetiRoadmap/SymplecticGeometry/HamiltonianReduction/README.md:157`, R2a | Root-plane KKS/Hessian signs and wall Morse–Bott scope agree with S9.7. |
| `TauCetiRoadmap/MorseTheory/README.md:124`, M2 | Generic negative-handle attachments; S9.7 owns comparison with the named Schubert generators. |
| `TauCetiRoadmap/AlgebraicTopology/README.md:870`, Stage 5 item 3 | Finite-covering transfer and deck-group action, with integral composite multiplication by degree; rational averaging used only after inverting that degree. |
| `TauCetiRoadmap/ReflectionInvariantTheory/README.md`, §§1–3 | Reflection invariant polynomiality is explicitly excluded from S9.7's ownership. |
| `TauCetiRoadmap/CharacteristicClasses/README.md:1060`, C5; line 1136, C5a | Borel/compact universal-cohomology programme is explicitly excluded; the finite flag/normalizer comparison is not its replacement. |
| `TauCetiRoadmap/TensorProductCombinatorics/README.md:2277`, §8.3, supplied open head; Layer 6 | It explicitly consumes S4.1–2 for coordinate paths and owns the coordinate quotient/operator comparison. Type-A datum specialization in S9.5 is not that coordinate construction. |
| `TauCetiRoadmap/GeometricQuantization/README.md:624`, §3.3; line 680, §3.4, supplied open head | Consumes S9.1/S9.7 and owns ordinary Picard, root degrees and the compact forgetful map. S9.8 is only the tensor-compatible analytification adapter. |
| `TauCetiRoadmap/KacMoody/README.md:172`, supplier contract; line 920, §5.4, supplied open head | It imports SchubertGeometry's finite path/bond theorem for its finite comparison; its infinite-root programme is not a prerequisite here. |

The on-main SchubertGeometry already plans Schubert schemes, finite paths, splitting, standard monomials and flag K-theory. This head develops that programme and removes the unrelated simple-generator extension rather than replacing the base programme. Relative parabolic/flag constructions, integral Schubert comparison and proper coherent GAGA remain owned here as prerequisites that cannot be supplied upward. Broad search also returned overlapping later open work in ComplexComparisonPartII, AlgebraicModuliForArithmeticGeometry and ShimuraData; their full head files were not supplied for this review, so ownership against those open heads was not independently certified and no new finding against this folder rests on those search snippets. The move of these prerequisites into S1.0/S1.1/S5.6/S9.0 is recorded, not an instruction to add an upward supplier. The five unresolved names in the worker's citation scan are literature keys, not missing roadmap suppliers.

## Not verifiable

- **Pittie1972**, *Homogeneous vector bundles on homogeneous spaces*, Topology 11 (1972), pp. 199–203, DOI 10.1016/0040-9383(72)90007-9: the sources service reached the publisher/DOI route and classified it as paywalled/uncertified. I did not read its text or certify its K-theory statement. Steinberg's explicit freeness theorem was read independently; it does not cure R03 by itself. This remains a locator-only citation, not a repeated request for access.
- **Jantzen**, *Representations of Algebraic Groups*, second edition (2003), II.14: title/author lookup through the sources service did not provide a legal readable copy. The arbitrary-field Demazure-module/contravariant-dual citation was not certified. The dual-weight tests above verify the displayed small cases independently. The source request records this unresolved text; the review is complete rather than parked.
- Full ownership checks against open heads for which the brief supplied no files were not performed. Search-index matches were treated as leads only. All actual suppliers named in this folder were resolved as recorded above.

## Source issues

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
