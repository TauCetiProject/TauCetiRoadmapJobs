# Review of CompletedCohomologyAndLocalGlobalCompatibility (pull request #1270 at b6c9115)

**Verdict:** needs changes

## R01 (P2) — State the Pan–Tung comparison before consuming it

**Location:** `TauCetiRoadmap/CompletedCohomologyAndLocalGlobalCompatibility/README.md:1031`, §3.2(c): “These conventions are kept separate until a duality and Hecke/reciprocity dictionary is supplied”. The consumers are §2.8, lines 946–950, and the normalisation contract at line 209.

**Claim.** The typed deformation-to-Hecke theorem transports representations, residual representations, Hodge types, Hecke operators and the selected auxiliary root through a comparison attributed to §3.2(c). That section gives the two determinants and asks for a comparison, but never states its map or equations. In particular it does not say whether the representation is dualized, Tate-twisted, or both, nor which central characters and residual factors correspond. This is a missing mathematical interface, not a request to prove the roadmap now. It leaves CC1's change of presentation undefined.

**Witness.** PAN line 1008 uses geometric Frobenius and determinant ψε⁻¹; TUNG-2 lines 178, 955–959 use arithmetic Frobenius and determinant ψ_Tε. These specify two separate constructions, not their identification.

Take a geometric Frobenius matrix `A=diag(2,3)` at a prime of norm 7, over ℚ₅. Its trace and determinant are 5 and 6. Merely evaluating the same representation on arithmetic Frobenius gives `(5/6,1/6)`. Dualizing the representation *as well* gives `(5,6)`. Instead tensoring the original representation with ε and then evaluating arithmetic Frobenius gives `(35/6,49/6)`. The selected root 2 becomes respectively 1/2, 2, or 7/2. All three are distinct operations. The README's two displayed determinant labels do not select one, and no stated law for the promised comparison rejects the wrong choice. Its worked example at line 2308 correctly warns that determinant agreement is insufficient, but supplies no replacement comparison.

**Repair.** Give §3.2(c) an explicit comparison theorem: name its source and target Hecke factors, the central-character transformation, the representation operation, the images of T, S and the auxiliary U-root, and the resulting residual and labelled Hodge-type transformations. Include the commuting deformation-to-Hecke square used in §2.8. For any same-representation change from geometric to arithmetic Frobenius the mandatory equations are `T ↦ T/d`, `d ↦ 1/d`, `α ↦ 1/α`, where `d=qS` is a unit; state separately the changes contributed by duality or a twist. Test the chosen combined transformation on the matrix above and on a repeated root. This distinguishes all three candidates numerically. Alternatively, state the Pan and Tung typed theorems separately on their native objects and remove every inter-presentation transport assertion and dependency; keeping both full native branches preserves the scope without requiring this extra identification. Do not treat the bare determinant equations as that identification.

This is distinct from the previous R02: the algebraic determinant-exponent comparison in §6.3 has been repaired.

## Verified sound

### Recheck of the previous four findings

All four previous findings were checked before the full review. None is re-raised.

| Previous finding | Passage at this head | Result |
|---|---|---|
| R01, ordinary Eisenstein seed | README §3.7a, line 1268: “after a finite coefficient extension O → O′ there is a tame open compact” followed by the maximal-ideal assertion | Repaired. The target now owns PAN Proposition 5.6.1, including the local ordinary-character generators and the endpoint L-value condition. ClassicalSerreModularity §I.1 really supplies its ordinary tower. |
| R02, global algebraic normalisation | README §6.3, line 2185: “the K-equivariant scalar-extension map” and “A_{0,1−k} → (Sym^{k−2}E²)^∨” | Repaired. Source, target, lattice, determinant exponent and characteristic-zero pairing are specified. At k=4 and scalar 6 both corrected factors act by 1/36; the printed detᵇ factor acts by 1/1296. |
| R03, Serre-weight supplier locators | README line 150: “§§3.1, 3.3 and 3.10” and “§§4.2–4.3” | Repaired. These are the Hasse, theta, supersingular-periodicity and numerical-weight sections of the supplier; §4.5 supplies renormalized twists. The local Hecke module remains a separate target. |
| R04, undeclared Lean API names | README line 9: “The prose interfaces below specify the library to be built” | Repaired. The empty Lean namespace is no longer presented as an API catalogue. The identifier gate passes. The two resolver leads are names of supplier contracts, verified below. |

The changes file records 534 changed lines. This review covered the whole README and the whole Lean file, including unchanged sections; it was not an incremental approval of those changes.

### Gate, build, shape and principles

The supplied gate at the reviewed head reports:

```text
gate CompletedCohomologyAndLocalGlobalCompatibility: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

I independently ran the prescribed dependency check:

```text
depcheck: 205 roadmaps, 1498 edges, 0 problem(s)
```

There was no UPWARD or CYCLE line. The targeted build in the worker's gate passed. Independently, `lake env lean` on this folder's `Suggested.lean` exited 0 without diagnostics. HEAD was the specified commit; the diff outside this roadmap folder was empty. No pull-request file was changed.

The README has the summary, ownership, conventions, contracts, build guide, seven numbered layers, examples/dependencies and references. The retained definitions have prose APIs and discriminating checks; theorem restrictions distinguish zero modules, torsion, fixed central characters, p=2, p=3, reducible residual representations, supports and components. No computational algorithm, sorry'd data, `set_option`, copied source passage, good-prime restriction replacing the general theory, or replacement of a generic supplier construction was found. R01 is the remaining exception to the requirement that a promised comparison be a fully stated target.

### Source sample: 15 targets

Every seeded target was compared with source text, including the surrounding hypotheses and proof inputs. There are no locators explicitly marked unverified in the README. Source keys below refer to legal source-service extractions; page references are the printed or manuscript pagination used by the README, not PDF offsets. All 51 bibliography entries were located: 49 successful fresh service fetches, the existing readable EDIX OCR, and the previously settled RIBET-90 entry. Fetching is not counted as verifying an entire paper.

| Target | Text actually inspected | Outcome |
|---|---|---|
| §0.5 Local Serre-weight Hecke module | EM11 lines 1604–1669, Definitions 3.5.1–3.5.4 and Lemma 3.5.5, pp.31–32 | The dual weight convention, T=0 irreducible branch, invertible Z, and reducible inertia-Hom branch agree. The peu-ramifiée endpoint is retained. |
| §1.3 Degrees and supports | EM06 lines 2490–2516, 2555–2565, 2578 onward, Propositions 4.3.1, 4.3.6, 4.3.9, pp.52–54; EM-PAMQ lines 3175–3198 and 3421–3435, §§7.2.10–7.2.11, Lemma 7.3.19, pp.64–65,69 | Vanishing is after the level colimit and completion. Integral and rational forget-supports maps are covered. The twist is checked using geometric Frobenius, not an unlabelled ψ(ℓ). |
| §2.3 Global and good weights | EM11 lines 3295–3335, Definitions 5.7.1, 5.7.5 and Remarks 5.7.2–5.7.4, p.63 | The determinant-weight exclusion at the boundary and non-scalar standing hypothesis are present. Numerical minimal weight is not substituted for global occurrence. |
| §2.4 Weight bounds/genericity | EM11 lines 3335–3374, Theorem 5.7.7, pp.64–65; EDIX lines 182–201, Theorems 2.5–2.6, author pp.5–6 | The weight assertion is an upper bound; the multiplicity statement requires a good weight; away-p genericity retains the non-scalar condition. The source's ordinary/supersingular distinction retains a_p. |
| §2.7 Quaternionic classical comparison | DLB lines 877–915, Lemmes 4.5–4.7, pp.21–22; PAN lines 1260–1274, using §3.2.10, p.22 | W versus W* and inverse coefficient action agree. The missing tame level in DLB's final display is corrected. General F is separately supplied, not attributed to DLB. |
| §3.2 Galois determinant | EM11 §5.2, pp.47–49; PAN lines 1008–1048, §3.3.5, p.24; TUNG-2 lines 949–959, Proposition 4.2.5, pp.19–20; PAN-I lines 3023–3054, §6.1.1, pp.67–68 | The individual native existence statements are supported. Their claimed transport is R01. PAN-I's D_S itself has coefficients ℓ⁻¹T and ℓ⁻¹S; its inverse-cyclotomic twist gives this README's cohomological polynomial. These must not be silently identified. |
| §3.6 Classical density | EM11 lines 2884–2933, Definition 5.4.4, Corollaries 5.4.5–5.4.6, Definition 5.4.7 and Lemma 5.4.9, pp.55–56 | Crystalline density and the extra absolute-irreducibility/non-exceptionality in allowable points match. Density in Hecke does not establish injectivity of a deformation quotient. |
| §3.7a Ordinary Eisenstein existence | PAN lines 3156–3168, 3738–3751, 3905–3976, Proposition 5.6.1 and proof, pp.86,89–91 | Both families of generators are present. The mixed-case argument uses nontriviality at some p-place for each character. The local-degree bound from the earlier patching setup is not used in this construction; the README gives the construction rather than importing that setup wholesale. |
| §4.5 Emerton compatibility | EM11 lines 100–145, Theorem 1.2.1, pp.3–4 | The nonzero-map, embedding and isomorphism conclusions remain separate, with their different local conditions. The p-distinguished split branch is retained. |
| §4.11 Pan block compatibility | PAN lines 1245–1278, 1377–1439, Theorem 3.5.5, Corollaries 3.5.10–3.5.12 and Theorem 3.6.1, pp.29–34 | Equality of central actions, finiteness/faithfulness of the multiplicity module, local-irreducibility classicality and dimension ≥1+2[F:ℚ] match. The p=3 character-block exclusion remains. |
| §5.5a Partial type | TUNG-2 lines 1412–1449, §6.1, Proposition 6.1.2, p.30, and §§6.2–6.3, pp.31–33 | The partial type, further component quotient and nonzero hypothesis are distinguished. Projectivity is asserted for P′ in the fixed-character category, not for every component quotient. The invariant base must undergo the same component change. |
| §5.7 Nice-prime patching | PAN lines 1645–1683, Definition 4.1.4, Theorem 4.1.7 and Corollary 4.1.8, pp.39–40 | Nice means characteristic p and dimension one, with a nonsplit residual lattice, the dihedral restriction and the fixed away-p lifts. Nilpotent kernel is not replaced by an isomorphism. |
| §5.8 Irreducible-residual patching | PAN lines 5555–5585 and 5873–5882, Theorem 8.0.1, pp.124–125, Proposition 8.4.9/Corollary 8.4.10, p.132 | Residual modularity is an explicit assumption. Both p=3 extension orientations and local absolute irreducibility are retained. The unconditional ℚ corollary is separately identified as using Serre. |
| §6.2 R=T | NAK lines 720–747, Theorem 2.1, pp.17–18; BOE lines 111–124, 435–465, Assumption 2.1, Theorem 3.7, Corollary 3.8, Theorem 3.9, pp.3,9–10; DFG lines 1742–1749 and 2901–2907, Corollary 2.3 p.698/Theorem 3.6 p.723 | The exact NAK statement matches. Böckle's original local alternatives are not advertised as covering every irreducible restriction. DFG's short crystalline and residual-image hypotheses and EM11's endpoint argument remain separate inputs. Reducedness is required. |
| §6.6 Exports | EM11 §1.2, pp.3–6; the preceding PAN/TUNG statements; GL2ModularityLifting conditional contracts, README lines 196–200 | CC1–CC5 retain the theorem-specific restrictions. The selected U-factor is carried into dyadic type and augmentation comparisons. R01 blocks the proposed change of normalisation, not these native source theorems. |

### Adversarial values

The following 124 rows give explicit tests of the statements and their interfaces, not claims that finite examples prove the deep theorems. “Retain” means that the stated hypotheses reject the negative control and no change is requested. A zero ring is excluded from coefficient-DVR/local-field hypotheses; an empty prime spectrum is used only in the ring-theoretic zero-quotient checks. Rows for an arithmetic theorem test the algebraic consequence it asserts, not the existence of a global form with arbitrarily assigned eigenvalues.

| Statement | Instances | Computed values on the two sides / wrong model | Result; change |
|---|---|---|---|
| Conventions: Frobenius and dual | A=diag(2,3) | geom trace/det=(5,6); arithmetic=(5/6,1/6); dual at arithmetic=(5,6) | Distinct operations; R01. |
| Conventions: twist | q=7, twist ε | ε(geom)=1/7; ε(arith)=7; twisted arithmetic trace/det=(35/6,49/6) | R01's three models differ. |
| Conventions: centre | scalar uI, det representation | det(uI)=u², not u | Retain. |
| §0.1 Integral criterion | id:O→O | residual map id, kernel=0; integral cokernel=0 | Retain. |
| §0.1 Rational-isomorphism hypothesis | O→O², x↦(x,0) | residual kernel=0 but cokernel=O; rational dimensions 1≠2 | Correctly excluded. |
| §0.1 Residual-socle hypothesis | multiplication by ϖ | rational kernel/cokernel=0; residual map=0; integral cokernel=k | Correctly excluded. |
| §0.1 Admissibility | infinite sum of trivial k | invariants dimension=∞ versus required finite dimension | Correctly excluded. |
| §0.1 Ordinary parts | generic χ≠χ^w | Hom_T(χ,χ^w)=0; identity of Ind from opposite Borel≠0 | Opposite Borel is essential; retain. |
| §0.1 Zero functors | zero representation | ordinary parts=0, Jacquet=0 | Retain. |
| §0.2 Correspondence/endomorphisms | split distinct characters; nonsplit extension with distinct characters | End dimensions 2 and 1 | Separate residual branches retained. |
| §0.2 Compact dual character | ψ(g)=2 | dual scalar=1/2; product=1 | Inverse central character retained. |
| §0.3 Algebraic factor | (a,b)=(0,−1),(0,−2),(0,−3) | dimensions 1,2,3; scalar actions 1,u⁻¹,u⁻² | Agrees with dual Sym powers. |
| §0.3 Unitary hypothesis | diag(5,1/5) on Sym² | eigenvalues 25,1,1/25; largest 5-adic norm=25 | Algebraic carrier alone is not a unitary Banach representation. |
| §0.3 Type multiplicity | supercuspidal π and unramified twist | K-type Hom dimension 1 at both; wrong inertial class dimension 0 | Retain type rather than full π. |
| §0.4 Schur and small primes | p=3; p=2 | at p=3, ω⁻¹=ω; at p=2, ω=1 | Exceptional branches cannot be inferred from p≥5. |
| §0.4 Ring identification | k→k[η]/η² | ranks 1 and 2; residual points both one | Finite map/residual agreement is not isomorphism. |
| §0.5 Irreducible Serre weights | p=5,a=3,b=1 | (r,s)=(1,3),(3,2); dimensions 2,4; Hecke T=0 on both | Matches dual-weight recipe. |
| §0.5 Reducible Hecke module | unramified characters with geometric eigenvalues 2,3 | inertia-Hom dimension 2; T eigenvalues 2,3 rather than 0 | Distinguishes reducible from irreducible recipe. |
| §0.6 Cohomological bound | heights n=1,2 | bound 2(n−1)=0,2; zero coefficient gives every Sⁱ=0 | No unjustified degree-two vanishing at n=2. |
| §0.6 Height components | rank 2, scalar ϖI | determinant valuation=2; quotient height classes=ℤ/2 | Do not collapse all heights to one. |
| §0.6 Torsion coefficients | (E/O)[ϖ^j] | O-length=j, not a free O-module | Torsion and integral coefficient limits distinguished. |
| §0.7 Definite group | norm-one rank-one torus at a real place | real points S¹ compact; GL₁(ℝ)=ℝ× noncompact | Correct definite form retained. |
| §0.7 Stabilizer/trace | C₂ on ℤ/4 by sign; index 2 over 𝔽₂ | invariants={0,2}; trace on constants=2=0 | No division by the index integrally. |
| §1.1 Coefficient tower | one point, O/ϖ^n | inverse limit O; quotient modulo ϖ=k | Correct order of the two limits. |
| §1.2 Regular module | C(K,k)^r and open U | dim invariants=r[K:U]; r=0 gives 0 | Finite generation/admissibility has concrete content. |
| §1.2 Rational averaging | finite index d | normalized trace on invariant vector=d/d=1 | Denominator allowed after inverting p, not in k. |
| §1.3 Degree two | pullbacks ×p on O | finite H²_c=O; colimit O[1/p]; completion=0 | Completed vanishing does not say finite H²_c=0. |
| §1.3 Hecke twist | ℓ=2, (a,s)=(−2,1), ψ=ε | (a′,s′)=(−1,1/4); determinant 2s′=1/2 | Correct inverse powers. |
| §1.4 Non-Eisenstein boundary | residual χ₁⊕χ₂ versus irreducible ρ̄ | boundary eigen-trace χ₁+χ₂; irreducible localization=0 | Irreducibility cannot be dropped. |
| §1.4 Pro-p invariants | free dual of rank r, index d | regular invariants dimension rd | Correct regular-representation conclusion. |
| §1.5 Duality | H=E/O, A_n=O/ϖ^n | Tate module=O; continuous O-dual of O=O | Divisibility gives the advertised integral lattice. |
| §1.5 Nondivisible control | H=(E/O)[2] at p=2 | H≠0, transition inverse Tate limit=0 | Divisibility is essential. |
| §1.6 Rational centre | odd mod-4 ψ on ℚ, O=ℤ₂ | −1 forces 2f=0; O-valued space=0, E/O-valued values include k | Rank formula retains compatibility. |
| §1.6 Closedness | nonzero indiscrete 𝔽₃ space | {0}≠whole space and is not closed | Hausdorff assumption necessary. |
| §1.6 Character twist | ψ=1, norm character θ | new central value θ(u²)=θ(u)² | ψθ² rather than ψθ. |
| §1.6 Translation direction | S₃, g=(12),h=(23) | gh=(123), hg=(132) under usual right-to-left composition | Inverse pullback preserves multiplication; forward pullback reverses it. |
| §1.7 Freeness/projectivity | two free class orbits | functions=C(K)^2, dual=O[[K]]² | Rank two; stabilizers cannot be discarded at coarse level. |
| §1.7 Fixed character | −I at p=2, nonzero finite reduction | prescribed sign becomes 1 modulo 2; k[C₂]=k[t]/t², trivial k not free | Projectivity is in the specified central-character category. |
| §2.1 Classical algebraic weights | k=2,3 | dim Sym^(k−2)=1,2; central dual weights 0,−1 | Correct dual in evaluation. |
| §2.1 Lie-algebra correction | trivial sl₂ coefficient | H⁰ dimension 1, H³ dimension 1 | H⁰ correction is not erased by a blanket higher-degree assertion. |
| §2.2 Mahler density | f=1 and f(x)=x | coefficients (1,0,…) and (0,1,0,…); partial sums already exact | Polynomial span, not just constants. |
| §2.3 Good weights | p=5, r=3 and r=4 | r=3 is below boundary; r=4 with overlapping determinant weight is excluded | Good is a real extra condition. |
| §2.4 Upper bound | weight absent globally but locally predicted | occurrence multiplicity=0; local allowed-set indicator=1 | Upper inclusion permits this; no converse asserted. |
| §2.4 Good-weight multiplicity | rank-two ρ̄, one-dimensional multiplicity | tensor dimension 2·1=2 | Does not force every weight to have multiplicity one without goodness. |
| §2.5 Classical eigenvalues | level-11 form, ℓ=2, p=3 | polynomial X²+2X+2 mod3 has values 2,2,1 at 0,1,2 | Correct irreducibility test and trace/determinant signs. |
| §2.5 Level-11 ordinary test | p=5, #E(𝔽₅)=5 | a₅=5+1−5=1 | Ordinary, unlike a_p=0 branch. |
| §2.6 Duality twist | geometric Frobenius at 2 | ε=1/2, tensoring twice gives 1/4 | Tate twist remains visible in the homological comparison. |
| §2.7 Weighted forms | transitive two-point K-set, trivial W | invariants dimension 1, all functions dimension 2 | Weighted forms are not all functions. |
| §2.7 Evaluation/dual | X=K, scalar t=2 | f(k)=ρ(k)w; dual scalar 1/2; pairing product 1 | Replacing the dual by W gives factor 4. |
| §2.7 Fixed-point control | k fixes x, scalar 2 on W | f(x)=2f(x) implies f(x)=0 | Constant nonzero wrong model excluded. |
| §2.8 Tensor side | t=2 on σ, u=1/2 or 2 on M | balancing t⁻¹−u=0 or −3/2 | Right inverse action selects precisely the dual summand. |
| §2.8 Type/weight dual | W=det, scalar u=2 | W scalar=4; W* scalar=1/4 | Central-character labels must change with the dual. |
| §2.8 Rank and auxiliary factor | c classes, type dimension d; oldform pair | rank=cd before localization; two U-lines become one after e_α | Selected and spherical factors distinguished. |
| §2.8 Change of Galois presentation | q=7,A=diag(2,3) | possible root images 1/2,2,7/2 | Not determined; R01. |
| §3.1 Derived/cohomological images | k[η]/η²→k | nilpotent kernel (η), dimension 1 over k; residual labels identical | No ring isomorphism inferred from labels. |
| §3.2 Modular determinant | T=5,qS=6 | polynomial X²−5X+6; inverse polynomial X²−(5/6)X+1/6 | Native polynomial correct; transport must be explicit. |
| §3.2 PAN-I normalisation | ℓ=2,T=−2,S=1 | PAN-I trace/det=(−1,1/2); ε⁻¹ twist gives (−2,2) | Source supports the cohomological formula after that twist. |
| §3.2 Inflation | element in kernel of ramification quotient | image=1; rank-two determinant polynomial=(X−1)² | Correct direction of quotient. |
| §3.3 Noetherian input | square-zero ring with infinitely many ε_i | cotangent dimension=∞, versus finite for complete noetherian local ring | Profinite alone is insufficient. |
| §3.4 Residual projector | T=T₁×T₂ | e=(1,0), e²=e, other factor maps to 0 | Inherited topology, not an arbitrary module completion. |
| §3.4 Completion negative control | Mahler shift Δ | Δ binom(x,n+1)=binom(x,n); Δ is onto, so Δ-adic quotients=0 | Ordinary ideal completion can erase a nonzero module. |
| §3.5 Cayley–Hamilton action | diag(1,2), trace 3+x, determinant 2+y | CH defect diag(y−x,y−2x); zero forces x=y=0 | Two coefficients really determined. |
| §3.5a Allowable point | roots (1,2) versus (1,1) | discriminants 1 and 0 | Repeated-root exclusion is not just non-diagonalizability. |
| §3.5a Eigenvariety dimensions | one weight parameter plus central parameter | dimensions 1 and 1+1=2 | Fixed-centre and full character spaces differ. |
| §3.6 Crystalline locus | good reduction versus Steinberg | monodromy ranks 0 and 1 | Classical alone does not mean crystalline. |
| §3.6 Density use | k[x]→k, x↦0 | dense target point, kernel (x)≠0 | Source-side density needed for R=T. |
| §3.7 Eisenstein summand | discriminant-2 class-number-one tower, minimal level | constants rank 1; T_ℓ=1+ℓ; weight-two cusp space at level 2 has dimension 0 | Constants cannot be declared cuspidal. |
| §3.7 Selected factor | residual roots α≠β | spherical oldform dimension 2; e_α rank 1; e_α²=e_α | Retain auxiliary U and root. |
| §3.7a Character generators | p=5, two p-places, χ̄ values (2,2) | choices (1,2) and (2,1) both have trace 3 | Trace alone does not prescribe ordinary characters. |
| §3.7a Mixed cusp argument | same example | θ̄=(1,3), θ̄χ̄=(2,1); each nontrivial somewhere | Endpoint argument is genuinely separate. |
| §3.7a Ideal properness | ring k; all discrepancies 0 or one discrepancy 1 | quotient k or 0 | Existence theorem excludes the latter. |
| §3.7a Lift independence/L-value | c replaced by c+ϖd; unit versus ϖ | discrepancy difference −ϖd; valuations 0 versus 1 | Ideal unchanged; endpoint hypothesis not automatic. |
| §3.8 Promodular image | surjection R→R/I | image V(I); I=0 gives all, I=(1) gives empty | Both directions of kernel containment hold. |
| §3.8 Surjectivity control | ℤ→ℚ | kernel=0 but (2) has no inverse image point | Image=V(kernel) requires surjectivity. |
| §4.1 Empty product/family | Σ₀ empty; M=T/I | W=T; derivative rank 1; End_T(M)=T/I | Empty product is the unit, not zero. |
| §4.2 Toric Frobenius | split multiplicative J₀(11) | X*(T): scalar 1; T_p(T): geometric scalar 1/11 | Dual and Tate twist both retained. |
| §4.3 Evaluation | V=E² trivial, H=E | Hom(V,H)⊗V has dimension 4, target dimension 1 | Arbitrary evaluation is not injective. |
| §4.3 Cancellation | V=0; f:O→0 | tensor map 0→0 is iso, f is not | Nonzero tensor factor is essential. |
| §4.4 Integral comparison | ×ϖ:O→O | rational iso; residual map 0; integral cokernel k | Saturation/residual hypotheses retained. |
| §4.4 Semisimplification | 2×2 unipotent Jordan block versus identity | both eigenvalues (1,1); ranks of g−1 are 1 and 0 | Equal semisimplifications do not identify integral modules. |
| §4.5 Nonzero versus embedding | projection B₁⊕B₂→B₁ | map≠0, kernel=B₂ | Nonzero-map clause alone cannot give an embedding. |
| §4.5 Irreducible source | nonzero map from simple B | kernel is a proper subobject, hence 0 | Correct additional embedding route. |
| §4.6 Mod-p restrictions | p=2,3 | condition p>2 evaluates false,true | p=2 is a separate weaker theorem. |
| §4.7 Scalar endomorphisms | rank-one scalar module vs split two-character module | End dimensions 1 versus 2 | Scalar residual endomorphisms retained. |
| §4.8 Support | M=0; M=k[x]/(x) | supports ∅ and {(x)}; fibre dimensions 0, and 1 at x=0/0 away | Nonzero/full-support assertions are separate. |
| §4.9 Multiplicity | π repeated r times, End π=E | Hom dimension r; oldform pair r=2 | Does not confuse multiplicity with dim π. |
| §4.10 Block evaluation | P=E, M=E^r | Hom(P,M)⊗P=E^r; off-block Hom=0 | Correct right endomorphism action and block separation. |
| §4.11 Dimension | d=[F:ℚ]=1,2 | lower bounds 3,5; uniform central quotient dimensions 3,6 | Constants in the dimension comparison agree. |
| §4.11 Classicality restriction | local split sum versus absolutely irreducible local representation | invariant line dimensions ≥1 versus 0 | Irreducibility is not dispensable. |
| §4.12 Quaternion exchange | invariants at p and ∞ | (0,1/2) becomes (1/2,0); geometric dimensions 0 and 1 exchange | Same quaternion algebra is not used on both sides. |
| §5.1 Patched projectivity | central ring O[[s,t,u]], imposed t=u | t−u annihilates module; nonzero projective over domain has no such torsion | Fixed-character category is essential. |
| §5.1 Zero/augmentation | zero coefficient; no Taylor–Wiles variables | patched module=0; augmentation ideal=(0) | No positivity or loss of framing variables inferred. |
| §5.2 Hodge convention | λ=(0,0),(1,1),(1,0) | h=(1,0),(0,−1),(1,−1) | Dual convention applied in stated order. |
| §5.2 Lattice and root | σ° and ϖσ°; selected oldform pair | rational types identical; selected multiplicity 1 versus spherical 2 | Integral lattice and auxiliary factor retained. |
| §5.2a Triangulations | ranks 1,2 with distinct eigenvalues | numbers of ordered refinements 1,2; repeated-root ratio=1 | Regularity exclusions are meaningful. |
| §5.2a Nonreduced coefficients | A=E[η]/η² | multiplication by η≠0 over A, equals 0 on residue fibre | Field points alone do not define the deformation functor. |
| §5.2a Saturation | tR⊂R | quotient R/tR is torsion and not projective | Injection alone is not a triangulation. |
| §5.3 Components versus full support | R=k[x,y]/xy, M=R/(x) | support=V(x), misses generic point of V(y); Ann=(x) | Union of components is weaker than full support. |
| §5.3 Reducedness | R=k[η]/η², M=k | full support; Ann=(η)≠0, Ann²=0 | Near faithful does not imply faithful here. |
| §5.3 Scalar annihilator test | M=R/I, generator 1; empty generators | Ann(1)=I; Ann(0 module)=R | Finite-module hypotheses not silently imported for Iwasawa-finite objects. |
| §5.4 Montréal multiplicity | n_y=1,2 | dimensions 2n_y=2,4 | Nonzero fibres and multiplicities are not rank-one assertions. |
| §5.5 Dyadic normalization | A=ℤ₂[z]/z(z+2) | rank over ℤ₂=2; special length 2; divide by 2 gives 1 | Full determinant fibre versus invariant ring distinguished. |
| §5.5 Multiplicity additivity | two copies of previous module | special length 4; normalized multiplicity 2 | Normalization does not erase module multiplicity. |
| §5.5 Torsor rank | t=0,1,2 | 2^t=1,2,4 | Rank and coefficient base change agree. |
| §5.5a Partial type | only one dyadic place | empty tensor=O; partial operation leaves M unchanged | One-place action survives. |
| §5.5a Zero components | selected component module zero | rational fibre=0, Montréal fibre=0 | Explicit nonzero hypothesis blocks a false full-support conclusion. |
| §5.5a Invariant base | z(z+2)=0, choose z=0 | component quotient rank 1; full fibre rank 2 | Must base change the invariant data consistently, not reuse the unquotiented base. |
| §5.5a Semilinear support | involution z↦−2−z | branches z=0 and z=−2 exchanged | Transitivity needs the compatible module action, not just ring automorphisms. |
| §5.6 Full support | R reduced, Ann(M) nilpotent | Ann(M)⊂nilradical=0 | The reducedness step is indispensable. |
| §5.7 Nice-prime kernel | k[[t]][η]/η²→k[[t]] in char p | source quotient dimension 1; kernel=(η)≠0 but square=0 | Nilpotent kernel, not integral R=T. |
| §5.7 Oddness/dihedral condition | complex conjugation diag(1,−1) | determinant −1, trace 0; scalar identity determinant 1 | Odd reconstruction and the extra dihedral hypothesis remain distinct. |
| §5.8 Residual seed | modular seed present/absent | assumption (5) true/false; theorem applies only to first | No replacement by the full Serre theorem in the independent route. |
| §5.8 p=3 local exclusions | ω of order 2 | ratios ω and ω⁻¹ coincide | Both extension orientations still matter. |
| §6.1 Classicality cases | self-extension of χ; split distinct weights | weights (h,h) versus (h₁,h₂), h₁≠h₂ | Self-extension cannot enter distinct-weight branch. |
| §6.1 Prime range | p=2,3 | p>2 false,true | Promodularity theorem does not cover p=2. |
| §6.2 Density/reducedness | k[x]→k; k[η]/η²→k | kernels (x) and (η), respectively nonnilpotent and nilpotent | Both source density and reducedness required. |
| §6.2 Unobstructed dimension | O[[x₁,x₂,x₃]] | relative dimension 3, total dimension 4 | Remark correctly conditional on H²=0. |
| §6.3 Corrected lattice | k=4,u=6 | A_(0,−3) scalar=6²·6⁻⁴=1/36; dual Sym²=1/36 | Previous R02 repaired. |
| §6.3 Printed exponent control | same weights with detᵇ | 6²·6⁻⁶=1/1296≠1/36 | Source slip not propagated. |
| §6.3 Pairing range | degree n=2, coefficient characteristic 2 | symmetrization factor 2=0; over E it is invertible | No integral perfectness claim. |
| §6.4 Niveau-two CM seed | p=5,r=0 | exponents 1 and 5 modulo 24 differ | Induction is irreducible; scalar inertia model fails. |
| §6.4 Unramified twist | Satake pair (α,β) multiplied by u | ratio uα/uβ=α/β | Globalization up to twist does not prescribe all eigenvalues. |
| §6.5 Independence | seed via hypothesis versus seed via Serre | dependency uses 0 versus 1 invocation of full Serre | Branches are correctly labelled. |
| §6.6 Exports | auxiliary oldforms and p-ranges | selected dimension 1 versus 2; p=2 fails odd-prime branch | Native export restrictions preserved; R01 for cross-normalisation. |

### Pinned libraries and headline signatures

The pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Object searches covered completed arithmetic cohomology, Montréal/Colmez functors, trianguline spaces, Galois deformation rings, continuous representations, group algebras, spectra, module supports, adic completion and Mahler approximation. Hits mentioning Scholze in unrelated condensed/profinite material do not construct the required functor.

The following 13 native declarations were opened at the pin, including their hypotheses:

| Declaration | File and line | What it supplies, and does not supply |
|---|---|---|
| `ContinuousMap` | `Mathlib/Topology/ContinuousMap/Defs.lean:32` | A function with continuity; no Hausdorff or compactness axiom is built into its carriers. |
| `CompactSpace` | `Mathlib/Topology/Defs/Filter.lean:296` | Compactness; it does not supply a separated arithmetic tower. |
| `Field.absoluteGaloisGroup` | `Mathlib/FieldTheory/AbsoluteGaloisGroup.lean:42` | Automorphisms of the algebraic closure; not a modular Galois representation. |
| `Matrix.GeneralLinearGroup` | `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean:42` | Units of finite square matrices; not a deformation problem. |
| `Representation.IntertwiningMap` | `Mathlib/RepresentationTheory/Intertwining.lean:36` | Algebraic equivariant linear maps; continuity is separate. |
| `ContIntertwiningMap` | `Mathlib/RepresentationTheory/Continuous/Basic.lean:80` | Continuous equivariant linear maps on existing representations. |
| `RingCat.sectionsSubring` | `Mathlib/Algebra/Category/Ring/Limits.lean:292` | Compatible sections of a ring diagram; the finite Hecke-image diagram still has to be constructed. |
| `AdicCompletion.eval_surjective` | `Mathlib/RingTheory/AdicCompletion/Basic.lean:394` | Evaluation surjectivity, without a finite-generation assumption on the module. |
| `AdicCompletion.pow_smul_top_eq_ker_eval` | `Mathlib/RingTheory/AdicCompletion/Completeness.lean:151` | The ideal must be finitely generated. |
| `PadicInt.dense_span_mahler` | `Mathlib/NumberTheory/Padics/MahlerBasis.lean:397` | Complete ultrametric normed coefficient ring and bounded ℤ_p scalar action; not arbitrary topological coefficients. |
| `Module.support_eq_zeroLocus` | `Mathlib/RingTheory/Support.lean:216` | Uses `Module.Finite`; does not justify a scalar-finiteness assertion for raw completed homology. |
| `PrimeSpectrum.range_comap_of_surjective` | `Mathlib/RingTheory/Spectrum/Prime/RingHom.lean:236` | Surjectivity is required. |
| `PrimeSpectrum.zeroLocus_eq_univ_iff` | `Mathlib/RingTheory/Spectrum/Prime/Basic.lean:302` | Full zero locus means containment in the nilradical, not zero ideal without reducedness. |

Headline inventory: the integral criterion and local correspondence/completion comparisons (§§0.1–0.4); Scholze finiteness (§0.6); non-Eisenstein injectivity (§1.4); classical, density, Serre-weight, homological and quaternionic comparisons (§§2.1–2.8); Hecke-valued Galois, factorization and density (§§3.2–3.6); ordinary Eisenstein existence and promodular image (§§3.7a–3.8); refined, Banach, mod-p, homological, definite, block and Scholze local–global comparisons (§§4.4–4.12); patched projectivity, typed and trianguline comparisons, support, dyadic cycles/partial types, nice-prime and irreducible-residual patching (§§5.1–5.8); promodularity, Fontaine–Mazur/Kisin, R=T, the locally algebraic formula and supercuspidal globalization (§§6.1–6.4), with independence/export contracts (§§6.5–6.6).

`Suggested.lean` is 101 lines and contains **zero declarations**, zero admitted examples and zero sorry'd data. Its docstring names these headline groups and their missing arithmetic carriers. The searched pins supply generic functions, modules and representations, but not the required arithmetic towers, local correspondences, type rings or patched objects. No statable headline was identified as missing. No replacement predicate or arbitrary-data stand-in is present. Consequently there are **zero** declaration signatures to inspect with `#check @name` and **zero** sorried theorems to subject to the one-tactic padding probe; this is a vacuous declaration audit, not a claim to have proved the headlines. The independent elaboration checks the import/docstring/namespace file only.

### Ownership and supplier direction

I used the roadmap tools' object searches and current supplier texts, the named sibling checkout, main-roadmap material and package searches. The two roadmap shapes consulted on main were `TauCetiRoadmap/PadicFunctionalAnalysis/README.md` and `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md`. The citation resolver found no absent cross-roadmap citation. Its two Lean-name leads resolve to planned supplier contracts: `GL2Block.residualGalois` in `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:1795` and `WDTypeRing.blockIdentification` at line 2090; neither is claimed to exist in pinned Mathlib.

The important object-level resolutions are as follows. Line numbers in `roadmaps show` output have a one-line display banner; the repository locators below remove that banner.

| Object | Resolved owner and section | Boundary checked |
|---|---|---|
| Ordinary Hecke/control | `TauCetiRoadmap/ClassicalSerreModularity/README.md:427`, §I.1 | Odd p, even-degree totally real field, actual ordinary towers and permissible ideals. Pan's prescribed-place existence is the new §3.7a target. |
| Hasse/theta/weight tables | `TauCetiRoadmap/AlgebraicModularFormsAndSerreWeights/README.md:591`, §§3.1,3.3,3.10,4.2–4.5 | Numerical weight and Hecke-module occurrence remain different objects. |
| Full local character prescription | `TauCetiRoadmap/GL2AutomorphicRepresentationsAndTransfer/README.md:645`, R16.1.8; R17.5 | Full local characters and auxiliary ramification; prescribed CM induction retains the S-unit condition. |
| Ordinary congruence inputs | `TauCetiRoadmap/OrdinaryAutomorphicFormsAndModularityLifting/README.md:365`, §2.12(a); `IntegralIwasawaTheory` §§6.0–6.3 | Deligne–Ribet distribution/interpolation is imported; Pan's mixed ordinary-place construction is owned here. |
| Completed towers, duals and Hecke labels | `TauCetiRoadmap/CompletedCohomologyPartII/README.md:1013`, §§3.13–3.17; §§5.1,5.5,6.1–6.7,7.1–7.2,8.1–8.15 | Native coefficient limits, derived-image diagrams and residual projectors. The degree-one faithful image comparison here is additional. |
| Common local correspondence | `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:273`, §§0.1,0.3–0.5,1.7,2.2–2.3,3.2–3.3,3.7–3.8,4.1–4.4,5.1–5.9,5.12 | Shared duality, deformation, cycle, block and type constructions are imported. This roadmap transports conventions and adds arithmetic comparisons. |
| Definite forms | `TauCetiRoadmap/HilbertModularVarietiesAndShimuraCurves/README.md:2702`, R18.3.1–R18.3.3 and R18.3.19–R18.3.22 | General F, effective central stabilizers, coefficient realizations and characteristic-zero transfer; not an unconditional free raw quotient. |
| Shimura vanishing | Same supplier, `README.md:3422`, R18.4.8 | Finite coefficient local systems and irreducible residual ideal. The O/ϖⁿ and torsion-limit extension is explicitly owned here. |
| Modular comparisons/Ihara/toric data | `TauCetiRoadmap/ModularCurvesPartII/README.md:3575`, §§14.4–14.15,15.6–15.10,17.2,17.4–17.7 | Finite-level, boundary, pairing and monodromy restrictions retained; the dyadic boundary and coefficient/tower strengthening are new targets here. |
| Hecke determinants | `TauCetiRoadmap/IntegralHeckeAndGaloisDeterminants/README.md:1914`, §§1.2–1.3,4.2; `AutomorphicGaloisRepresentations` §§1.5,4.3–4.7,6.8–6.10 | Determinant laws/reconstruction and geometric finite-level attachments supplied; global completed interpolation is the arithmetic application. |
| Robba modules/triangulations | `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:707`, §§1.1–1.2,7.1,7.5 | Affinoid finite-projective modules and saturated filtrations, including coefficient line bundles. Representable triangulation spaces and patched geometry here are additional. |
| Local deformation conditions | `TauCetiRoadmap/LocalGaloisDeformationRings/README.md:664`, F.2.5,F.2.11,§§0.4,1.23,3.1,3.4,3.9,8.3,8.5 | Schur/continuity and nonreduced-coefficient type conditions retained; unrestricted ring irreducibility is separately commissioned here. |
| Analytic Jacquet/eigencurve | `TauCetiRoadmap/OverconvergentAutomorphicForms/README.md:313`, §0.6; `PadicFamilies` §§2.4–2.10,5.9a–5.10 | Generic functor and modular charts imported; arithmetic completed-cohomology eigenvariety and arbitrary-rank patched geometry distinguished. |
| Smooth local families | `TauCetiRoadmap/SmoothRepresentationsOfLocalGroups/README.md:4284`, SR.5.1–SR.5.3 | Co-Whittaker carrier, derivative and scalar endomorphisms supplied; finite-residue descent and product comparison owned here. |
| Abstract patching/support | `TauCetiRoadmap/DeformationAndDerivedPatchingAlgebra/README.md:1082`, §§3.11–3.12,5.3–5.4,6.1,6.4,6.7,8.4 | Abstract limits/support do not supply arithmetic full support automatically. |
| Dyadic determinant torsor | `TauCetiRoadmap/GlobalGaloisDeformations/README.md:996`, §§4.7,4.11,6.6 | Square-equivariance, finite rank 2^t and finite-level data imported; arithmetic module/partial-type comparison owned here. |
| Scholze functor versus later extension | `TauCetiRoadmap/ScholzeFunctorAndModpCohomologyOfTheLubinTateTower/README.md:9` at its supplied open head | Explicitly imports this roadmap's §0.6 and §1.7. Its complete-local-coefficient refinements are later consumers, not suppliers here. |
| Modern lifting consumers | `TauCetiRoadmap/GL2ModularityLifting/README.md:196`, CC1–CC5 and §§8.7–10.6,12.4 | These are conditional consumers; the nice-prime predicate at §10.1 is the earlier shared predicate. No circular proof of the conditional lifting results is used here. |

The remaining geometric citations identify the period-tower/site foundations (PerfectoidTowers P9, AdicEtaleGeometry A1.6/A4.2a, DiamondEtaleCohomology C0–C1, EndoscopicTransferAndUnitaryTraceComparison §§12.3,12.5–12.8), arithmetic tower/group foundations (ArithmeticLocallySymmetricSpaces ALS.6, AdelicAlgebraicGroups Layer 1, ReductiveGroupsPartII RG2.0a), and the common definite forms and weighted Hecke action (QuaternionicModularForms §§2.1,3.1 through AutomorphicFormsOnReductiveGroups §§7.4–7.5). They are supplier citations, not newly duplicated generic constructions. ArithmeticGaloisRepresentations §5.10 supplies the trace-conjugacy input; local absolute Galois groups and reciprocity remain with LocalGaloisGroups and ClassFieldTheory.

No duplicate fully qualified declaration can arise from this folder's empty Lean namespace. No existing roadmap was found to own the complete collection of arithmetic comparisons as a second roadmap. The new Scholze, ordinary Eisenstein, finite-residue descent and partial-patching targets have explicit ownership boundaries. There are no declared supplier gaps to accept conditionally, and no supplier move is requested. The unspecified bridge in R01 is owned here; it should be stated here rather than assigned upward.

## Not verifiable

- RIBET-90, Proposition 3.8, is retained at its settled uncertified status. I did not reopen the settled source request. Its toric-Frobenius use was checked against the explicit dual/Tate-twist calculation and EM11's comparison, not certified as a fresh reading of that proposition.
- The Pan–Tung inter-presentation map cannot be verified because no map is stated; R01 records the precise missing data. This is not a missing-text request.
- The passing Lean file verifies no deep theorem: it has no theorem declarations. The report certifies source agreement and the listed counterexample tests, not proofs of the roadmap's future mathematical library.

## Source issues

- **Error** in EM11 at Lemma 3.1.6, p.15: the source says rational injectivity and residual-socle injectivity force an integral isomorphism; it should require a rational isomorphism, excluding O→O²; affects a stated result.
- **Misprint** in EM11 at §5.2, p.46: the source says finite-level Hecke endomorphisms commute with the full p-adic group action; it should use finite-level correspondences, with full group equivariance on the tower; affects a stated result.
- **Error** in EM11 at the paragraph after Definition 5.3.1, p.49: the source says the residual summand is ordinary maximal-ideal module completion; it should use the residual idempotent summand with its inherited uniformizer topology; affects a stated result.
- **Misprint** in EM11 at §7.4, p.97: the source says the algebraic factor and its lattice use detᵇ; it should use detᵇ⁺¹, consistently with Theorem 3.3.22; affects the proof.
- **Error** in PAN at §3.1.1, equation (3), p.17: the source says central compatibility on U suffices for the quotient-stabilizer formula; it should also impose rational-centre compatibility or retain the rational-central invariant submodule; affects a stated result.
- **Error** in PAN at Corollary 3.1.3, p.18: the source says a finite coefficient module produces finite free forms at small level; it should require finite free coefficient modules for this freeness conclusion; affects a stated result.
- **Misprint** in PAN at §5.3.1, p.74: the source says the congruence condition ranges over Σₚ minus S; it should range over S minus Σₚ; affects a stated result.
- **Misprint** in DLB at Lemme 4.7, p.22: the source says the final algebraic decomposition retains only K_p invariants; it should retain K^p as well at fixed K_p, or K^p in the group-equivariant version; affects a stated result.
- **Misprint** in DLB at the proof of Lemme 5.6, p.27: the source says the local prescription uses an undefined η_p; it should specify the prescribed residual local character of χ; affects the proof.
- **Misprint** in TUNG-2 at §6.1, p.30: the source says the component-specialized ring is free over the type-specialized invariant base; it should specialize that invariant base to the same chosen components; affects a stated result.
- **Misprint** in EM-PAMQ at the proof of Lemma 7.3.19, p.69: the source says the spherical twisting formula ranges over primes in Σ(K^p); it should range over primes outside Σ(K^p); affects the proof.
