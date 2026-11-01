# Review of SchemeKTheoryOperations (pull request #1229 at 98204e2)

**Verdict:** needs changes

## R01 (P1) — Repoint the localization-boundary supplier

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:60`, also `:914` and `:1011`: “§§4.14 and 4.16 supply Serre localisation and the coker-minus-ker automorphism boundary.”

**Claim:** The exact supplier contract and two Needs lines assign the index formula to a section that does not supply it. This is supplier drift, not a missing mathematical theorem or a request for a new supplier.

**Witness:** `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:899` (§4.16) compares additive automorphisms with split-exact Q-theory. Its §8.11, at `:1754`, supplies the Serre boundary `[coker α]−[ker α]`.

**Repair:** Replace the three §4.16 boundary citations by §8.11. Retain §4.14 for localization and §§8.12–8.13 for valuation and product orientation. The corrected supplier gives `∂[π]=1−0=1` over a DVR and `∂[ε]=1−1=0` over the dual numbers; these are exactly the examples used here. No merge-order change is needed.

## R02 (P2) — Restrict the rank Check to the standard representation

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:2374`: “A representation pulled back from `GL_N` has underlying class `[Aᴺ]`.”

**Claim:** The preceding API permits every representation σ of GL_N. Its underlying rank is the rank of σ, which need not be N. The Check is missing the word “standard”.

**Witness:** Take A=ℚ, N=2, G trivial and σ=Λ² of the standard GL₂ representation. Its pullback is ℚ, so its K₀ class has rank 1; `[ℚ²]` has rank 2.

**Repair:** Say that the pullback of the **standard N-dimensional representation** has underlying class `[Aᴺ]`. For general σ, say that forgetting the action yields the underlying scalar-extended module σ_A. Keep the determinant example as a negative control: standard GL₂ gives 2, its determinant gives 1, and the zero representation gives 0. The general pre-λ-homomorphism remains unchanged.

## R03 (P1) — Break the lifting/operation dependency loop

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:2429`: “*Needs:* §6.3.4, exact representation maps; the lifting and uniqueness construction above.” See also `:2403`–`:2405`.

**Claim:** The genuine-operation construction depends on the universal lifting/uniqueness theorem below it. That theorem then depends on the lifting/uniqueness construction above. The introductory promise to prove lifting first does not resolve these contradictory prerequisites. The mechanical inter-roadmap check does not inspect this internal loop.

**Witness:** The dependency graph has `genuine operations → universal lifting → genuine-map lifting construction`. The last construction is the first target, whose first sentence invokes the theorem below. No independent lifting target occurs between them.

**Repair:** Put the universal lifting theorem first and give it independent inputs: §6.3.4's representation maps and the explicitly owned obstruction/phantom argument used to prove Weibel IV.5.7. Remove its dependency on constructed operations. Then define operations from that theorem, followed by their identities. Test the resulting graph: no path returns from lifting to operations. Retain the unit-loop discriminator: for u=2 in K₁(ℚ), genuine λ² gives −[2]≠0, whereas exterior square of the one-dimensional module gives 0. Thus finite-rank exterior powers alone cannot replace the missing order of construction.

## R04 (P3) — Cite the flag API by its actual supplier targets

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:91`: “The flag interfaces are `flagBundle`, `flagBundle.projection`, `flagBundle.toGrassmann` and `flagBundle.baseChange`”.

**Claim:** AlgebraicModuliForArithmeticGeometry §1.3 supplies all the required geometry in prose, but its current README and Suggested.lean do not declare the three dotted names. In particular, `flagBundle.toGrassmann` is an unresolved name, not a pinned interface.

**Witness:** `TauCetiRoadmap/AlgebraicModuliForArithmeticGeometry/README.md:677`–`:689` defines flagBundle and lists the structure map, quotient-rank step and base change in prose. Its Suggested.lean contains none of those dotted declarations.

**Repair:** Cite §1.3's flagBundle target and its three prose API facts, without inventing declaration names. This is a citation repair, not an unowned prerequisite. For a rank-three bundle and type [1,2], retain quotient ranks 2 and 1 with nested kernels; the repaired citation supplies precisely those maps and their base changes.

## Verified sound

**Previous findings, checked individually.** The seven findings at b1e77b8 were revisited before the full pass. None was marked “not actionable in this package” in the supplied previous review.

| Previous finding | Passage at this head | Assessment and recomputed witness |
| --- | --- | --- |
| R01, negative grading | §2.1: “K_n(X) := π_n 𝕂(X) for every integer n”; §3.1 and §6.1 use nonconnective homotopy groups. | Repaired. Full support on a nodal curve gives K₋₁=ℤ; connective π₋₁=0. Empty support and regular ℤ give 0. |
| R02, torus coefficients | §6.3.1 uses “K₀(A)[X]” and the classes of projective weight modules. | Repaired. For A=ℤ[√−5], I=(2,1+√−5), the corrected character preserves [I]−[A]≠0; rank still sends it to 0. |
| R03, Moore supplier | Line 73 cites “§7.33” and “§7.34”, retaining η·1=0 and the exceptional-modulus conditions. | Repaired against the current supplier. Hℤ/2=H𝔽₂; odd p,n=1,q=2 meets q≥2; p=2,n=1,q=3 meets 2q≥6. |
| R04, highest weights | Line 95: “Sections 10A–10B supply … highest-weight triangularity, classification …”. | Repaired against ReductiveGroups on main. For SL₂/𝔽₂, L(2) has weights ±2 and dimension 2; the induced character has the extra weight 0 and dimension 3. The new exact representation-ring comparison remains here. |
| R05, nonconnective comparison locator | §2.1 cites “Definition 11.4 and Theorem 11.7” and uses idempotent completeness. | Repaired. Schlichting lines 963–1010 gives the stated comparison. Perf(k) has ℤ→ℤ in degree zero; the even-Euler dense subcategory has 2ℤ→ℤ after completion. |
| R06, own-name catalogue | Suggested.lean and README now share IsStrictlyPerfect, IsPerfectComplex and IsPerfectComplex.exists_strictlyPerfect; API lists are predominantly prose. | Repaired for the roadmap's own declarations: exactly two definitions and one theorem. The separate stale supplier names are R04 above. |
| R07, per-target dependencies | There are 305 Needs lines, including distinct §5.7 and §5.8 inputs. | The requested metadata is present. The full pass found the specific §6.4 loop in R03 above. Cartier blowup adds 0 exceptional summands; codimension two adds 1. |

**Scope, gate and elaboration.** I read both complete target files, their API lists and Checks, the normative repository README and CONTRIBUTING, and representative layers of DGAInfinity, StableReduction and ReductiveGroups on main. The review covers 63 numbered topic subsections, seven Examples sections, seven Dependencies sections and 90 Checks blocks. The diff outside this roadmap folder is empty. No PR file was edited.

The supplied gate at the requested head reports every scanner, dependency and targeted-build check passing, ending `build=0 OK`; there are no stray files. Independently running the requested dependency check returned:

```text
depcheck: 205 roadmaps, 1468 edges, 0 problem(s)
```

There was no UPWARD or CYCLE line. This does not certify the within-subsection graph in R03. No declared supplier gap was supplied.

Direct `lake env lean` elaboration of Suggested.lean passed with only its expected `sorry` warning. A scratch copy with `#check @name` for all three declarations also passed. The elaborated theorem retains CompactSpace, QuasiSeparatedSpace, HasDerivedCategory, the finite-type quasicoherent quotient condition, and the local-perfectness hypothesis. Its conclusion is a derived isomorphism to a globally bounded finite locally free complex, not equality of complexes. No binder repair is needed. Separate one-tactic probes with `simp`, `rfl` and `infer_instance` all failed to prove the theorem; object-based library searches found no single existing global strict-representative theorem to invoke. There is no Lean padding, sorry'd data, set_option or arbitrary-predicate stand-in.

**Headline coverage.** The end results are global strict representatives; enhanced/strict and Cartan comparisons; perfect/coherent localization and residues; spectral and coniveau descent; Gersten and Bloch; Witt completion and hyperdescent; homotopy invariance, projective bundles, Bass and blowups; higher λ/Adams operations and rational/finite-coefficient weights; supported operations and filtration products; Chern-character, GRR and excess-intersection comparisons. Only the global strict-representative theorem has all its carriers at the pins with two simple definitions. It is stated. The module docstring names the remaining families and the missing scheme K/G spectra, enhancements, operation and Chow/Chern carriers. Searches at the pins did not find those full carriers; generic triangulated K₀ and underived sheaf tensor are not substitutes.


**Source sample.** All 15 seeded targets were examined against their stated hypotheses and tested below. Twelve have readable primary support for the central claim; three have a primary-text limitation, and §4.7's Panin locator is additionally inaccessible. “Partial” is not a certification of the missing source. No locator was explicitly marked unverified in the README. All bibliography entries received a sources-service fetch attempt; failed attempts are listed under Not verifiable.

| Seeded target | Text and locator inspected | Scope/result |
| --- | --- | --- |
| 1.3 Perfect objects and derived operations | Stacks.cohomology lines 5400–5469, §49, pp.117–118; TT90 lines 1713–1729 and 2218–2242, §§2.2.10–2.2.12 and 2.5.1, pp.290–291,303; Stacks.derived lines 496–501, 05QW; Stacks.perfect lines 77–83, 08DT | Local strict models, Tor bounds, pullback/tensor, and the coproduct/idempotent argument agree. No global bounded representative is asserted without additional hypotheses. |
| 1.6 Global representatives | Stacks.perfect lines 4250–4318 and 4392–4438, §§36–37, especially 0F8F, 0F8G and 0F8H | The resolution property is needed for a global bounded finite locally free representative; the conclusion is a derived isomorphism. This is the Lean headline. |
| 2.1 Three theories | TT90 lines 2607–2648, §§3.1–3.3, pp.312–313; Schlichting lines 963–1010, Definition 11.4 and Theorem 11.7, pp.20–21 | Connective K, nonconnective 𝕂 and coherent G are separated. Degree-zero comparison retains idempotent completeness. |
| 3.2 Extension/localization of objects | TT90 lines 3587–3668 and 3780–3859, §§5.2–5.5, pp.338–344; Stacks.perfect lines 1510–1649, 08EG/08EI/08EK/09IM, pp.34–36 | K₀-image obstruction, stable extension, supported extension and roofs have the stated qcqs/quasicompact restrictions. E⊕E[1] has zero K₀ obstruction. |
| 3.3 Spectra and boundaries | TT90 lines 4593–4626, Theorem 7.4, p.365; Weibel lines 24349–24354, V.6.1.2, printed p.406/PDF414 | The localization sequence and positive uniformizer boundary agree. The supplier section, rather than the sign, needs R01's repair. |
| 3.8 Witt support/completion | BS17 lines 872–919, §6, pp.19–20; Bhatt.2014 lines 999–1024, Lemma 5.12/Remark 5.13, p.23; Scholze lines 1969–1980, Proposition 8.8, p.47 | The primary algebraization argument is Bhatt's qcqs statement with derived reduction. Scholze's Banach formulation is not treated as a general algebraic completion theorem. Regular-perfection and supported comparison are separate constructions. |
| 4.7 Gersten | Quillen lines 2057–2162, §§5.11–5.13, scan headers125–127/LNM133–135; Weibel lines 26578–26826, V.9.6–9.7, printed pp.438–442 | Regularity and finite semilocalization are retained, including the approximation route. Panin's separate Theorem A locator could not be read this round. |
| 5.1 Graded G-homotopy | Weibel lines 23162–23190, V.2, PDF396; lines 24376–24437, V.6.2, printed p.407/PDF415; lines 25079–25120, V.6.13, printed p.417/PDF425 | The finite t-power filtration repairs the source's false bounded-grading step. Globalization includes nonseparated Noetherian schemes. |
| 5.3 Projective cohomology/Koszul | TT90 lines 3290–3357, §§4.1–4.2, pp.330–331; Stacks.cohomology-schemes lines 1024–1060, 01XX, pp.20–21 | Quotient convention gives Symᵈ(E), determinant dual in top cohomology, and the Koszul relation. Rank one is separated from 01XX's rank≥2 statement. |
| 5.8 Blowup decomposition | Thomason93 lines 164–452, Theorem 2.1 and Lemmas 2.3–2.5, pp.198–204 | Regular immersion, the d−1 exceptional factors and negative exceptional twists agree. Cartier blowups have no exceptional summand. |
| 6.1 Products | TT90 lines 2823–2871, §3.15, pp.318–319 | Derived tensor/support intersections and external products agree. Coherent external products retain their extra Tor conditions; relative products use fibres of nonconnective spectra. |
| 6.12 Supported operations | LiLiu.2021 lines 3036–3149, Appendix B, pp.60–62; Stacks resolution-property text above | Partial: application and resolution-property scope were checked, but GS87's primary supported λ-construction and Proposition 5.3 were inaccessible. No certification of that primary locator. |
| 7.1 γ-filtration/cycles | Weibel lines 8540–8582, II.8.7–8.8, printed p.153/PDF161 | Low graded pieces and rank/determinant are supported. Partial: GS99 Theorem 4, p.51 of the specified 60-page version, was inaccessible. |
| 7.4 Euler/GRR | Borel–Serre lines 529–717, §§5d,7–8 and Lemmas 15–16, pp.110–114; Weibel lines 8185–8196 and 8668–8674, II.8.2.3 and II.8.10, printed p.155/PDF163 | Euler pushforward and GRR have the smooth/projective or smooth quasi-projective hypotheses used here; broader regular-scheme variants explicitly require broader intersection interfaces. |
| 7.7 Supported cycles/dimension one | LiLiu.2021 lines 3036–3149, Appendix B; Zhang.2021 lines 2493–2536, §9.1, pp.924–925 | Partial: the supported arithmetic applications and dimension/codimension conversion were read. GS87 Theorem 8.2, pp.274–275, was inaccessible, so its general primary assertion remains unverified. |

**Library and ownership audit.** Object-based searches used perfect complexes, finite locally free sheaves, exact/triangulated Grothendieck groups, Cartan maps, tensor/duality, representation rings, λ/Adams operations, supported cycles, Witt completion and K/G spectra. I used the roadmap service's grep/show results, main, the relevant supplied open checkouts, and the board package search. No duplicate fully qualified name was found for the three Lean declarations. Scheme strict-model comparisons, scheme localization and ordinary scheme operations belong here; generic module perfectness, categorical K-theory, enhanced functors and geometric intersection theory remain imported.

The following pinned declarations were opened (paths are relative to the respective pinned library roots). These checks distinguish native carriers from merely similar constructions.

| Pin | File and line; declarations | Verified contract |
| --- | --- | --- |
| Mathlib 6b7abb3 | AlgebraicGeometry/Modules/Sheaf.lean:36,339; Scheme.Modules, restrictFunctor | Module sheaves and restriction along an open immersion; no perfectness predicate is built into Modules. |
| Mathlib 6b7abb3 | Algebra/Category/ModuleCat/Sheaf/LocallyFree.lean:61; Generators.lean:142; Quasicoherent.lean:269 | IsLocallyFree supplies local free generators without finiteness. IsFiniteType supplies finiteness; IsFinitePresentation supplies a finite local presentation. The Lean definition uses both local freeness and finite type. |
| Mathlib 6b7abb3 | RingTheory/OrderOfVanishing/Basic.lean:324; Ring.ordFrac | Multiplicative-with-zero target ℤᵐ⁰; the additive valuation adapter must restrict to nonzero elements. |
| Tau Ceti a91d3aa | CategoryTheory/GrothendieckGroup/Exact.lean:163; Triangulated.lean:139,154,169,193 | ExactK0 and TriangulatedK0 are relation quotients; distinguished triangles give subtraction and shift gives negation. They are not scheme spectra. |
| Tau Ceti a91d3aa | Algebra/Category/ModuleCat/CartanMap/Basic.lean:124,222,381,515,530,673,686 | Finite projective means finite and projective; exact structures, cartanMap, moduleResolutionEquiv, moduleEulerClassOf, cartanInverse and cartanEquiv have their finite-resolution hypotheses. |
| Tau Ceti a91d3aa | AlgebraicGeometry/Modules/TensorProduct.lean:52,57,63; Algebra/Category/ModuleCat/Sheaf/TensorProduct/Closed.lean:73,104 | Underived monoidal/symmetric/closed structures and dual; not a derived tensor enhancement. |
| Tau Ceti a91d3aa | AlgebraicGeometry/Modules/Quasicoherent/Affine.lean:35,42,50 | affineEquiv and its two functor identifications require IsAffine X. |
| Tau Ceti a91d3aa | RepresentationTheory/RepresentationRing/Basic.lean:106; Exact.lean:42 | The split finite-dimensional representation ring is not arbitrary-base exact K₀. The exact comparison retains its field/Maschke assumptions. |

Cross-roadmap contracts were resolved as follows. Section names below refer to README.md in the named roadmap; locations for the two defects are in R01 and R04. The service's seven unresolved-name leads were investigated: three are targets in SchemeAndStackFoundations, IsCMRegular is in AlgebraicModuliForArithmeticGeometry's namespace ProjectiveBundles code block, exactCubeComplex.homologyEquivK belongs to ColemanIntegration, the strict-representative name is local, and the flag dotted name is R04.

| Supplier/related work | Sections and object checked | Ownership conclusion |
| --- | --- | --- |
| GeneralAlgebraicKTheory | §§3.1–3.4,3.12–3.14; §§4.14,4.16; Layers5–6; §§7.2–7.7; §§8.11–8.13; ring Bass/Nil; §§11.7–11.16,12.10–12.11,13.6 | Generic categorical/ring interfaces imported. Repoint boundary to §8.11, R01. |
| AlgebraicKTheory | Layer2, especially §2.3; Layer4, especially §4.1 | Determinant/scalar section/SK₁ and semilocal stable range are imported; scheme comparison is new. |
| StableHomotopyKTheory | Layer3,Layer5; §§7.1–7.10,7.21–7.28,7.33–7.34 | Generic spectra/coefficients/convergence imported. The actual Browder and Eₙ hypotheses match the corrected contract. |
| AlgebraicVectorBundles; DGAInfinity | L0B–L0C; Layer5 | Finite locally free/exterior/determinant and module Perf/compact/thick carriers imported, with right/left-module conversion. |
| EnhancedDerivedSheaves | E0,E1.2–E1.4,E1.8–E1.9; E2.8; E4.2,E4.5; E5 presentability, animation, spectra comparison and cotangent export | Enhancements, proper-support pushforward, h-descent and coefficient reconstruction imported. Witt perfect effectivity and the v-upgrade are explicitly separate targets here. |
| SchemeAndStackFoundations | §§0.6,0.9,0.15,0.24–0.26; §§1.1,2.6,2.12–2.14,2.18; §4.19; §§5.4,5.7–5.8 | Approximation, pseudo-coherence, ordinary derived functors, alterations, geometric K₀/Chow/GRR imported. Local finite-level refinements and K/G realizations remain here. |
| StableReduction; AlgebraicModuliForArithmeticGeometry | Layer4; §§1.3,1.5 | Rees blowups, flags and field regularity imported; exceptional K-decomposition and relative regularity are new. R04 corrects names, not ownership. |
| JacobianChallenge | Layers A–C, especially README.md:145–182 | Divisor/Picard, curve Riemann–Roch and proper coherence imported. Flatness is retained only where base change requires it. |
| ReductiveGroups | Layers0–1,4,9, §§10A–10B | Group schemes and field highest weights imported; integral exact Grothendieck-ring realizations add content here. |
| ColemanIntegration | exactCubeComplex.homologyEquivK | A downstream construction, not an input to this roadmap. |
| SchemeKTheoryOperationsPartII; GeneralAlgebraicKTheoryPartII; StableHomotopyKTheoryPartII; MotivicEtaleKTheory | Scope/ownership and object-search hits at supplied open heads | The first imports this ordinary theory for formal/continuous extensions; the next two extend categorical/stable inputs; motivic comparisons are downstream. No relocation or duplicate native carrier is required by these hits. |

All 305 Needs lines were read. Apart from R01 and the internal loop R03, I found no additional witnessed upward supplier, route-specific shortcut, re-planning of a base roadmap, computational algorithm, copied source passage or unowned proof input. The two kept definitions have substantive API/Checks in §§1.1 and 1.3; all seven layers end with Examples and Dependencies. The table below records countermodel tests rather than treating the successful sorry build as mathematical evidence.

**Computed adversarial witnesses.** The following 218 case rows cover all 63 numbered topics, the sampled targets, headline families and finding targets. They include the previous witnesses recomputed against the repaired statements. Repeated laws share their displayed instance; these are discriminating tests, not proofs. Here k is a field unless specified, shifts are cohomological, and O is the structure sheaf. “Retain” means no defect was exposed by that computation.

| Statement | Instances tried | Values computed on the two sides / negative control | Result; change |
| --- | --- | --- | --- |
| 1.1 Strict perfectness | O(1) on P¹; skyscraper at 0 on A¹ | O(1): bounded and locally rank 1, hence true; skyscraper: local ranks 0 and 1, hence false | Retain |
| 1.1 Local versus global summand | O(1) on P¹ | Hom(O(1),Oʳ)=0, although its local free rank is 1 | Retain |
| 1.1 Zero and empty scheme | Zero complex; Spec(0) | Each term is zero; bounds [0,0] work; both predicates true | Retain |
| 1.1 Term bounds versus acyclicity | O in all degrees ≤0; its identity cone | First has infinitely many nonzero Hⁱ; cone has Hⁱ=0 but infinitely many nonzero terms; strict predicate false for both | Retain |
| 1.1 Cone and shift signs | k→0; k→k identity | Cone(k→0) has Euler −1; identity cone has 1−1=0 | Retain |
| 1.1 Local lifting bound | P=N=k[0], M=0, a=1 | Claimed H-conditions hold, but id(k)≠0 cannot lift; P⁰≠0 violates the required lower term bound | Retain negative control |
| 1.1 Surjective lifting | k²→k, first projection | Vector 1 lifts to (1,0); composite is 1 | Retain |
| 1.1 Nullhomotopy | N=Cone(id Q), M=0 | Identity contraction gives every map P→N the zero homotopy class | Retain |
| 1.2 Finite-level pseudo-coherence | ℤ/n; ⊕ℕℤ | ℤ/n has two finite free terms, hence finite type and presentation; countable free module has infinitely many generators and fails level 0 | Retain |
| 1.2 Pseudo-coherent not perfect | k over k[ε]/ε² | ε-periodic resolution has one generator in every step; Torᵢ(k,k)=k for every i≥0 | Retain |
| 1.2 Local versus uniform bounds | ⨿ₙSpec k with k[n] | Each component has amplitude [−n,−n]; no finite global interval contains all −n | Retain qcqs restriction |
| 1.2 Tensor amplitude | k⊗ᴸ over k[x] with itself | Over k: degrees −1,0; over k[x], each copy of k contributes [−1,0], giving [−2,0] | Retain |
| 1.2 Shift of amplitude | k[1] | Only H⁻¹=k; interval [0,0] shifts to [−1,−1] | Retain |
| 1.3 Local perfectness | ℤ/n; residue field of dual numbers | First represented by [ℤ→ⁿℤ], true; second has nonzero Tor in every degree, false | Retain |
| 1.3 Derived dual/tensor | k²[1], k³ | Dual is (k²)∨[−1]; tensor has dimension 6 in degree −1; Euler −6=(−2)·3 | Retain |
| 1.3 Retracts | Projector diag(1,0) on k² | Image k is finite/projective; rank 1+1=2 under complementary splitting | Retain |
| 1.4 Affine comparison | Spec ℤ and ℤ/2 | Tilde followed by sections gives ℤ/2; strict resolution has H⁰=ℤ/2 and H⁻¹=0 | Retain |
| 1.4 Coherator versus identity | Quasicoherent tilde of A² | Unit/counit recover A², rank 2 on both sides; this tests only the supplied quasicoherent subcategory | Retain |
| 1.5 Models and universes | Add acyclic [M→id M] of arbitrarily large cardinality | Derived object stays 0 and K₀ class stays 0; chain carriers have unbounded cardinalities | Retain small-model qualification |
| 1.5 Corrected approximation | Bounded vector-space complexes, Euler-equivalence weak maps | A⊕A[1] has Euler 0 while retract A has Euler 1; the extra acyclic-retract condition fails | Retain correction |
| 1.5 Flat/projective comparison | [ℤ→²ℤ] | Flat and projective models both give H⁰=ℤ/2, Euler 1−1=0 | Retain |
| 1.6 Global strict headline | P¹ point; ℤ/n; empty scheme | [O(−1)→O] resolves the point; [ℤ→ⁿℤ] resolves ℤ/n; zero resolves empty scheme | Retain Lean theorem |
| 1.6 Resolution-property necessity | Doubled affine plane | Naive bundle K₀=ℤ, perfect K₀=ℤ²; an origin class (0,1) cannot come from diagonal ℤ | Retain hypothesis |
| 1.6 Derived isomorphism, not literal equality | E plus a contractible non-finite summand | H(E⊕Cone(id M))=H(E), but its terms need not be finite; Q(E⊕Cone(id M))≅Q(E) | Retain conclusion |
| 1.7 Core truncation | Amplitude [0,0], k=𝔽₃ | Map(k,k) is discrete with 3 points; core has π₁=k×=C₂, so 1-truncated, not 0-truncated | Retain +1 |
| 1.7 Enhanced versus triangulated gluing | Identity cover of Spec k | Descent object is k, endomorphism space has π₀=k and automorphisms k× on either side | Retain enhanced carrier |
| 2.1 π₀ and exact additivity | k²→k³→k | 3=2+1; a [k²→0 k³] complex in degrees −1,0 has Euler 3−2=1 | Retain |
| 2.1 Naive versus perfect K | Doubled affine plane | ℤ versus ℤ² in degree zero; separate origin classes survive only on the latter | Retain distinction |
| 2.1 Negative grading | Nodal affine curve, full support | π₋₁ connective=0; coker(diagonal difference ℤ²→ℤ²)=ℤ | Repaired: nonconnective groups used |
| 2.1 Regular negative vanishing | Spec ℤ; Spec k; empty | Nonconnective K₋₁=0,0,0 respectively | Retain |
| 2.1 Connective cover at zero | Perf(k); even-Euler dense subcategory | First ℤ→ℤ is identity; second 2ℤ→ℤ is not onto | Repaired locator and idempotence scope |
| 2.1 G-theory class | A=k[ε]/ε² | [A]=[k]+[k]=2[k] in G₀(A)=ℤ | Retain |
| 2.2 Pullback preserves perfectness | k[t]→k, P=[A→ᵗA] | Pullback is [k→⁰k], still strict; cohomology k in degrees −1,0, Euler 0 | Retain derived pullback |
| 2.2 Composition and identity | ℤ→𝔽₂→𝔽₄ applied to ℤ² | Successive and composite pullbacks both give 𝔽₄²; identity gives ℤ² | Retain |
| 2.2 Finite-Tor G pullback | k[t]→k versus k[ε]/ε²→k | First Tor only degrees 0,1; second Torᵢ=k for all i, not bounded | Retain finite-Tor hypothesis |
| 2.3 Proper transfer | P¹→Spec k, O(−1), O(−2), O(n) | Euler 0,−1,n+1, respectively | Retain |
| 2.3 Finite locally free transfer | ℤ→ℤ[i] | Pushforward rank 2; transfer of a pulled-back rank r bundle is 2r | Retain |
| 2.3 Proper alone not K-perfect | Spec k→Spec(k[ε]/ε²) | Pushforward k has infinitely many nonzero Tor groups, despite properness | Retain perfectness condition |
| 2.3 Flat proper needs finite presentation | R=∏ℕk, I=⊕ℕk, Spec(R/I)→Spec R | All R-modules are flat; I is not finitely generated, so R/I is not finitely presented/perfect | Retain finite-presentation repair already present |
| 2.3 Perfect is not coherent over arbitrary base | A=k⊕V, V²=0, V infinite-dimensional; differential e∈V\{0} | [A→ᵉA] is strict, but kernel=V is not finitely generated | Retain separate K/G scopes |
| 2.4 Tor-independent base change | Point self-square in A¹ | Derived pullback k⊗ᴸ_A k=k⊕k[1], Euler 0; underived k has Euler 1 | Retain Tor independence for underived square |
| 2.4 Projection formula | P¹, O(n), constant bundle kʳ | χ(O(n)⊗kʳ)=r(n+1)=rχ(O(n)) | Retain |
| 2.5 Affine Cartan comparison | Finite projective A²; ℤ/n | Projective class 2[A] on both sides; Euler of ℤ/n=[ℤ]−[ℤ]=0 | Retain supplied-map comparison |
| 2.6 Regular Cartan | k versus dual numbers | k: K₀→G₀ is 1↦1; dual numbers: 1↦2, not an isomorphism | Retain regularity |
| 2.6 Compactness | D(k), k versus ⊕ℕk | Hom(k,⊕k)=⊕k; identity of ⊕ℕk has infinitely many coordinates and does not factor through a finite subsum | Retain |
| 2.7 Continuity | A=colim k[t₁,…,tₙ], matrix using t₁,t₂ | Matrix and its finite relations descend to stage 2; no bound is asserted for arbitrary infinite matrices | Retain finite-presentation data |
| 2.7 Negative G vanishing | Noetherian dual numbers | G₋₁=0 by coherent dévissage; singularity does not force negative G | Retain distinction from K |
| 3.1 Supports | Cone(t), O on A¹, empty/full support | Cone(t) restricts to 0 on D(t), O does not; empty-supported category is 0, full is Perf(X) | Retain |
| 3.1 Support is a subset | V(t) and V(t²) | Same supported perfect category; k[t]/t and k[t]/t² have units k× and k×·(1+tk) | Retain no subscheme substitution |
| 3.1 Support intersection | Points 0 and 1 on A¹ | Derived tensor of their perfect skyscrapers is 0; intersection empty | Retain |
| 3.1 All-degree support comparison | Node with full versus empty support | Full nonconnective K₋₁=ℤ; empty K₋₁=0; connective groups would give 0 for both | Repaired: nonconnective groups used |
| 3.2 Object extension obstruction | Open restriction and its K₀ image | An extending object has class in image by definition; adjoining E[1] gives [E⊕E[1]]=0, removing the class obstruction | Retain stable extension, not unconditional extension |
| 3.2 Roof denominators | D(t), multiplication t⁻¹ | Roof O←ᵗO→id O restricts to t⁻¹; no polynomial multiplication on O equals t⁻¹ globally | Retain roofs |
| 3.2 Nullhomotopy denominators | Torsion ℤ/p² | Multiplication p² kills the module, whereas p need not; denominator exponent cannot be fixed at 1 | Retain |
| 3.3 Oriented boundary | DVR π and π⁻¹ | ∂[π]=1; ∂[π⁻¹]=−1 in ℤ | Retain |
| 3.3 Right/left product sign | ℤ₅, unit 2 | ∂([5][2])=[2]; ∂([2][5])=−[2]=[3] in 𝔽₅× | Retain right-linear convention |
| 3.3 Full/empty localization | Z=X or Z=∅ | Fib(𝕂(X)→0)=𝕂(X); Fib(id)=0 | Retain nonconnective formulation |
| 3.4 Excision | Étale identity near a support; empty support | Restricted supported object and class unchanged; empty side 0→0 | Retain support-local hypothesis |
| 3.5 Dévissage | k[ε]/ε² with reduced point | G₀=ℤ and [A]=2; K₀(A)→G₀(A) is multiplication 2, so K-dévisage cannot ignore regularity | Retain |
| 3.5 Thickness | DVR O/πᵐ | Composition length m; class m[k], unlike reduced class 1 | Retain |
| 3.6 Determinant and scalar section | diag(u,v), diag(u,u⁻¹) | Determinants uv and 1; scalar diag(u,1) returns u | Retain imported determinant |
| 3.6 Order normalization | πᵐ, unit u, zero | Additive order m,0 on nonzero elements; ordFrac(0)=0 in ℤᵐ⁰ is not the additive integer 0 | Retain explicit adapter |
| 3.6 Specialization depends on parameter | π versus 2π over ℤ₅ | Relative unit changes by 2; the correction in K₁(𝔽₅) is −[2]=[3], not 0 | Retain parameter convention |
| 3.6 Transfer and ramification | ℤ₂→ℤ₂[i], π=1+i | vπ(2)=2; finite transfer has rank 2 and norm(1+i)=2 | Retain e/f distinction |
| 3.7 Divisor class | Dedekind A and nonprincipal prime I | [A/I]=[A]−[I], rank 0 but nonzero Picard component | Retain Picard component |
| 3.7 Divisor multiplicities | 12∈ℚ× | v₂(12)=2, v₃(12)=1, all other finite valuations 0 | Retain |
| 3.7 Proper curve reciprocity | t on P¹ | div(t)=[0]−[∞], degree 1−1=0; on Gₘ the boundary points are absent | Retain proper-scope distinction |
| 3.8 Witt support degree | W(𝔽_p), Cone(pᵐ) | Length m; determinant valuation m; m=0 gives cone(id)=0 | Retain |
| 3.8 Completion | Wₙ(𝔽₂)=ℤ/2ⁿ | lim ℤ/2ⁿ=ℤ₂; compatible rank-one free modules give rank one, not a direct sum of the stages | Retain derived effectivity target |
| 3.8 Frobenius/perfection | 𝔽_p[t]→𝔽_p[t^(1/p∞)] | Frobenius becomes bijective; t has a pth root, unlike in the original polynomial ring | Retain |
| 3.9 Quasi-isogeny sign | p and p⁻¹ on a Witt line | Degrees +1 and −1; composition has degree 0 | Retain |
| 3.9 Identity quasi-isogeny | β=id on a rank-one object | Cone contributions 1−1=0; underlying rank is still 1 | Retain degree is not rank |
| 3.9 Ramified coefficient | p=uπᵉ | degree(π)=1 and degree(p)=e; normalized p-degree cannot replace π-degree | Retain |
| 4.1 Mayer–Vietoris and nonconnectivity | Nodal union with two components meeting twice | Rank-difference map ℤ²→ℤ² has diagonal image and cokernel ℤ in negative degree; truncating it would erase the obstruction | Retain nonconnective grading |
| 4.1 Reduced presheaf condition | Constant Hℤ, including empty open | Value on ∅ is Hℤ with π₀=ℤ rather than 0; reducedness fails | Retain hypothesis |
| 4.1 Brown–Gersten point case | One-point space | Sections and stalk both have πₙ=πₙ(E); if all stalk groups vanish, sections have 0 groups | Retain |
| 4.2 Nisnevich residue condition | Spec(k×k)→Spec k | Two lifts with residue degree 1; cover true though source has two components | Retain |
| 4.2 Nonexample cover | Nontrivial finite field extension L/k | Residue degree [L:k]>1 at the only point, so no residue-isomorphic lift | Retain |
| 4.2 Distinguished square complement | Open identity square; empty complement | Complement maps 0→0; pullback diagram is identity on all values | Retain |
| 4.3 Sheafification | Two-point discrete space, constant presheaf ℤ | Presheaf sections ℤ; sheaf sections ℤ²; map a↦(a,a) not onto | Retain sheafification |
| 4.3 Hypercohomology not objectwise π₀ | Units on P¹ | H¹(P¹,Gₘ)=Pic(P¹)=ℤ, yielding a negative hypercohomotopy group for the associated degree-zero sheaf | Retain |
| 4.3 Godement points | Spec field with identity stalk | Stalk and sections both k; augmentation followed by totalization is identity | Retain |
| 4.4 Coniveau indexing | DVR with generic and closed point | E₁ residue differential F×→ℤ sends π↦1 and a unit↦0; total degree decreases by 1 | Retain |
| 4.4 Support tower endpoints | Dimension 0 field | Filtration F⁰=K, F¹=0; sole nonzero column is p=0 | Retain convergence bound |
| 4.4 Boundary squared | Regular surface Koszul square | Two ordered residue paths have opposite signs, +1 and −1; their sum is 0 | Retain |
| 4.5 Coherent versus perfect coniveau | Residue field of dual numbers | Coherent class [k]=1 exists; k is not perfect because Torᵢ(k,k)=k for all i | Retain separate towers |
| 4.5 Dimension versus codimension | Curve in smooth surface, then smooth threefold | Dimension remains 1; codimensions are 1 and 2 | Retain dimension indexing for coherent cycles |
| 4.5 Proper residue transfer | 𝔽₄/𝔽₂ | K₀ transfer sends 1↦2; K₁ norm of generator α is α³=1 | Retain residue degree/norm |
| 4.6 Gersten kernel | DVR | Kernel(v:F×→ℤ)=O×; π maps to 1, so v is surjective | Retain |
| 4.6 Bloch's formula | P¹ over k, codimension 1 | CH¹(P¹)=Pic(P¹)=ℤ; O(1) maps to degree 1 on both sides | Retain |
| 4.6 Codimension-zero case | Integral field | CH⁰(Spec k)=ℤ=H⁰(K₀); no negative-codimension terms | Retain |
| 4.7 Geometric/equicharacteristic case | 𝔽₂(t), regular local k[x]_(x) | Field Gersten augmentation is identity; DVR residue of x equals 1 | Retain includes imperfect fields through stated approximation route |
| 4.7 Semilocal continuity | k[t] localized at (t),(t−1) | One function field k(t) remains; product of two local rings would have two generic points | Retain semilocal, not product replacement |
| 4.7 Continuity is not codimension preservation | R→R/(t) | Height of (t) drops from 1 to 0; a termwise fixed-codimension identification would fail | Retain cohomological route |
| 4.8 Relative effacement | Λ a DVR, Λ[x]/(x−π) | Quotient is Λ and flat; Λ[x]/(π) is killed by π and not flat | Retain relative-flat divisor condition |
| 4.8 Regular equation | t=0 versus x−π | Multiplication by 0 has full kernel; x−π has zero kernel | Retain regularity hypothesis |
| 4.9 Filtered comparison | Regular DVR, identity cover | Descent and coniveau give H⁰(K₁)=O× and residue quotient 0; the nontrivial differential is v(π)=1 | Retain filtered theorem, not an E₂-only argument |
| 4.10 Valuation lifting | D(t)→A¹ and valuation centered at 0 | t is nonunit at the center; there is no lift into D(t), so not a v-cover | Retain |
| 4.10 Empty covers | ∅→Spec k; identity of ∅ | First fails lifting of Spec k; second has no valuation obstruction and both categories are zero | Retain |
| 4.10 Derived Čech chart restriction | Invert a negative-degree generator with π₀-image 0 | The localized derived algebra can retain the inverted generator; base change through π₀ forces 0 invertible and gives zero | Retain restricted chart theorem |
| 4.10 Amplitude detection | k and k[1] on a perfect point | Residue amplitudes [0,0] and [−1,−1]; the latter is excluded from the former stratum | Retain |
| 4.10 h-to-v passage | Fixed [a,b], then all perfect objects | Core truncation bound b−a+1 is finite; no single bound works for complexes of arbitrarily large amplitude width | Retain stratum-first passage |
| 4.11 Witt finite stages | W₂(𝔽₂)→𝔽₂ | Units {1,3} both reduce to 1; automorphism lifting has nontrivial kernel {1,3} | Retain groupoid/derived descent |
| 4.11 Zero-object lifting | Zero perfect complex | Deformations and automorphisms are zero/identity; its lift space is contractible | Retain |
| 4.11 Uniform amplitude | Finite free module over ℤ₂ and all mod-2ⁿ reductions | Every stage has amplitude [0,0] and rank 1; limit has the same interval and rank | Retain uniform-bound condition |
| 4.11 Supported degree | Cone(pᵐ) on a perfect residue point | Supported K₀ degree and p-adic determinant valuation both m | Retain |
| 4.12 Square-to-Čech descent | Identity cover; disjoint two-point cover | Identity gives E; disjoint cover gives E×E, equal to value on two points for a sheaf | Retain |
| 5.1 G-homotopy invariance | A=k[ε]/ε², polynomial t | G₁(A[t])=G₁(k[t])=k×; K₁ has nonconstant unit 1+εt | Retain G/K distinction |
| 5.1 Graded torsion category | S=R[t,u], S/tS | t-torsion true, but graded pieces R·uⁿ exist for every n≥0; finite-support grading would exclude it | Retain |
| 5.1 Dehomogenization | S(−n), S/t, S/u, with t=1 | Outputs R[s],0,R respectively; grading shift becomes a free module | Retain |
| 5.1 Zero-section Euler | Trivial line zero section | Koszul alternating class 1−1=0; two terms cancel | Retain |
| 5.2 Regular K homotopy | k→k[t] | K₀ is ℤ→ℤ, 1↦1; K₁ is k×→k× | Retain regularity |
| 5.2 Laurent factor | k[t,t⁻¹] | K₁=k×⊕ℤ; t has coordinates (1,1), a constant a has (a,0) | Retain |
| 5.3 Rank-zero projective bundle | E=0 | P(E)=∅; K=0 and zero summands on the right | Retain |
| 5.3 Rank-one convention | E=L | P(E)=X, O(1)=L, pushforward O(n)=Lⁿ | Retain quotient convention |
| 5.3 Positive twist | E=L⊕O, rank 2 | π_*O(1)=L⊕O, not L∨⊕O | Retain |
| 5.3 Negative twist/top cohomology | Rank-2 E | Rπ_*O(−1)=0; Rπ_*O(−2)=det(E)∨[−1] | Retain determinant and shift |
| 5.3 Koszul relation | E=k², L=[O(−1)] on P¹ | 1−2L+L²=0, equivalently (1−L)²=0 | Retain |
| 5.4 Relative regularity | O on P¹ over any affine base | H¹(O(−1))=0, evaluation surjective; no field-only hypothesis is used for this example | Retain relative extension |
| 5.4 Quillen resolution | O(1) on P¹ | T₀ has rank 2, T₁ rank 1; Euler reconstruction 2−L=[O(1)] | Retain |
| 5.4 Regularity negative control | O(−1) with an unjustified regular presentation | Naive zero-section data would give 0 although [O(−1)]=L≠0; required regularity fails | Retain |
| 5.5 Projective bundle basis | O(m) on P¹ | Coordinates (m+1,−m); rank (m+1)−m=1, Euler m+1 | Retain |
| 5.5 Independence in rank 2 | 1 and L on P¹ | Rank/Euler columns (1,1),(1,0) have determinant −1 | Retain |
| 5.6 Bass boundary | k[t,t⁻¹] | ∂[t]=1, ∂[a]=0 for a∈k× | Retain |
| 5.6 Nil terms | A=k[ε]/ε² | 1+εt is nonzero NK₁ class; evaluation 0 gives 1, evaluation 1 gives 1+ε | Retain evaluation-at-zero convention |
| 5.6 Iterated Laurent signs | Symbols [t][u] and [u][t] | Iterated oriented residues are +1 and −1 | Retain grading signs |
| 5.7 Codimension-one blowup | Cartier divisor | Blowup map is identity; exceptional-index set 1≤i≤d−1 is empty | Retain |
| 5.7 Adjunction and vanishing | d=2, exceptional fibre P¹ | Rp′_*O=k, Rp′_*O(−1)=0; unit k→k is identity | Retain |
| 5.7 Exceptional recovery | d=2 versus d=1 | In d=2 the unwanted twist has RΓ(O(−1))=0; d=1 retains an extra k[−1], so the proposed recovery would give k⊕k[−1] | Retain d≥2 restriction |
| 5.7 Exceptional sign | Exceptional divisor E | 0→O→O(E)→i_*O_E(−1)→0 gives [i_*O_E(−1)]=[O(E)]−1 | Retain |
| 5.8 Blowup decomposition | Blowup A² at origin; blowup P² at point | K₀ ranks 1+1=2 and 3+1=4; d=1 gives rank addition 0 | Retain |
| 5.8 Exceptional image discriminator | O versus O_E(−1) on exceptional P¹ | RΓ(O)=k while RΓ(O(−1))=0; using O would destroy orthogonality | Retain |
| 5.9 Bass comparison | k; nodal curve | Both nonconnective models give K₋₁(k)=0 and K₋₁(node)=ℤ; connective K gives 0 for the node | Retain nonconnective comparison |
| 6.1 Internal/external products | k² and k³; disjoint supported points | Rank 2·3=6; disjoint support product 0 | Retain |
| 6.1 Graded commutativity | Two degree-one unit classes | Reversing factors introduces −1; their DVR boundaries are [u] and −[u] | Retain |
| 6.1 Relative fibre | Identity map X→X; restriction along ∅→X | Fibre of identity is 0; fibre of K(X)→0 is K(X) | Retain nonconnective fibre |
| 6.1 Tensor versus auxiliary λ-product | Unit symbols t,u over k(t,u) | Iterated tame residue of tensor symbol is 1∈ℤ, hence product nonzero; auxiliary positive×positive product is 0 | Retain distinction |
| 6.2 Special λ sum | Rank 2 and rank −1 | λ_t(2)=1+2t+t²; λ_t(−1)=1−t+t²−t³+… | Retain formal inverse |
| 6.2 Universal product polynomial | Rank-2 bundles P,Q, operation λ² | λ²(P⊗Q) has rank C(4,2)=6; product identity gives 2·2·1+2·2·1−2·1·1=6 | Retain |
| 6.2 Universal composition polynomial | Rank-4 bundle E, λ²λ² | C(C(4,2),2)=C(6,2)=15; corresponding universal expression 4·4−1=15 | Retain |
| 6.2 Disconnected rank | Two-point scheme, ranks (1,2) | Augmentation is function (1,2), not one integer; λ² has ranks (0,1) | Retain locally constant target |
| 6.2 Nonunital filtration | J=(x³) in ℤ[u,u⁻¹]/(u−1)⁴ | γ_t(x³)=1+x³(t−3t²+2t³); F³ in the ℤ-unitization is 2J, while J∩F³(ambient)=J | Retain intrinsic/induced distinction |
| 6.2 Weighted products | η=(u−1)(v−1), with (u−1)²=(v−1)²=0 | γ²η=−η≠0 although η²=0; square-zero multiplication alone does not force F²=0 | Retain weighted definition |
| 6.3 Exact versus split representations | Nontrivial extension 0→1→V→1→0 | Exact K₀ gives [V]=2[1]; an isomorphism V≅1⊕1 need not exist | Retain exact category |
| 6.3 Dedekind Euler resolution | Torsion A/I | Class [A]−[I]; for A=ℤ,I=(p), this is 1−1=0 | Retain |
| 6.3 Derived versus ordinary dual | A=ℤ[√−5], torsion A/I | Ordinary Hom(A/I,A)=0; derived Euler dual is [A]−[I∨]≠0 | Retain |
| 6.3 Torus character coefficients | Trivial torus over ℤ[√−5] | [I]−[A]≠0 maps to rank 0; corrected K₀(A)-valued character maps it to itself | Repaired K₀(A) coefficients |
| 6.3 Field formal character | Gₘ over 𝔽₂, weights 0 and 1 | Formal characters 1 and t; both rational-point characters take value 1 | Retain scheme representation |
| 6.3 Highest-weight scope | SL₂/𝔽₂, weight 2 | Simple character t²+t⁻² (dimension 2); Weyl/induced character t²+1+t⁻² (dimension 3) | Repaired: imported field classification |
| 6.3 Generic/residue lattice independence | ℤ and pℤ in ℚ | Both rank 1; both reductions intrinsically one-dimensional over 𝔽_p | Retain PID comparison |
| 6.3 Stable representation convention | GL₀; determinant of GL₂ | GL₀ representation ring ℤ; determinant monomial x₁x₂; dual monomial (x₁x₂)⁻¹ | Retain |
| 6.3 Group scheme versus abstract points | Gₘ/ℤ | Integer character lattice ℤ gives infinitely many monomials; ℤ×={±1} only detects parity | Retain |
| 6.3 Associated projective representation | Weight −1 on a line P | Associated bundle P∨, not P; rank is 1 in both but tensor with P gives O only for P∨ | Retain |
| 6.4 Higher λ and Adams | A unit loop u, k=2 | λ²[u]=−[u]; ψ²[u]=2[u]; ψ¹[u]=[u] | Retain |
| 6.4 Composition | ψ²ψ³ on a unit loop | ψ²(3[u])=6[u]=ψ⁶[u] | Retain |
| 6.4 Stable finite rank | Dimension 0 and 1 representations | Empty sum has rank 0; adding a trivial line increases rank by 1 while preserving the stabilized nontrivial weights | Retain |
| 6.5 Rational projectors | Operator T=diag(2,4) on ℚ² | (4−T)/2=diag(1,0), (T−2)/2=diag(0,1); sum=id, product=0 | Retain nonzero denominators |
| 6.5 Parameter 1 | Same proposed eigenweights with k=1 | Eigenvalue difference 1²−1=0, so projector division is invalid | Retain k>1 requirement |
| 6.6 Splitting principle | Rank 2 E with formal roots L₁,L₂ | λ_t(E)=(1+L₁t)(1+L₂t); determinant L₁L₂; no ordering enters the symmetric coefficients | Retain |
| 6.6 Higher filtration bound | Regular d-dimensional X, degree m | Bound F_γ^(m+d+1)=0 is distinct from individual γ^j=0; at m=d=0 only rank remains and F¹=0 | Retain full-filtration theorem |
| 6.7 K-coherence comparison | Field point; P¹ | Point has cohomological dimension 0; P¹ has nonzero Pic=ℤ in sheaf cohomological degree 1, requiring dimension bound 1 | Retain dimension control |
| 6.7 Pointed fringe | π₀ with a nontrivial π₁ stabilizer | Core of k has automorphism group k×; forgetting stabilizers changes a fibre from B(k×) to a point | Retain pointed-set treatment |
| 6.8 Higher operations on schemes | O(1) and unit u on P¹ | ψ²[O(1)]=[O(2)]; ψ²[u]=2[u]; these are multiplicative in degree zero and additive on higher groups | Retain different laws |
| 6.8 Product compatibility | Two line bundles L,M | ψ²(LM)=L²M²=ψ²(L)ψ²(M) | Retain |
| 6.9 Endpoint/Bockstein indexing | Two-cell Moore space S¹∪ₙe² | Coefficient K₂ has endpoints K₂/n and K₁[n]; shifting the Moore space would give a K₂[n] endpoint instead | Retain degree-two construction |
| 6.9 Finite eigenvalue separation | ℓ=5, k=2, weights 0,1,2 | Eigenvalues 1,2,4; differences 1,2,3 are units mod 5 | Retain |
| 6.9 Collision negative control | ℓ=3, k=2, weights 0,1,2 | Eigenvalues 1,2,1; first/last difference 0 | Retain strict prime/weight-width bound |
| 6.9 Generalized versus honest eigenspace | T=[[2,1],[0,2]] | (T−2)≠0 but (T−2)²=0; a length-two extension need not be scalar 2 | Retain integral endpoint/splitting inputs |
| 6.9 Coefficient product supplier | Hℤ/2; S/p² at odd p | Hℤ/2 has π₀=𝔽₂ and higher π=0; q=2,n=1 satisfies 2≥2 | Repaired supplier contract |
| 6.9 Even-prime E₁ bound | S/8 | q=3,n=1 gives 2q=6=3(n+1); S/2 gives 2<6 | Retain corrected supplier range |
| 6.10 Bott class | Zero bundle; trivial line; line L, k=2 | θ²(0)=1; θ²(O)=2; θ²(L)=1+L | Retain |
| 6.10 Negative integer convention | k=−1 and line L | θ⁻¹(L)=−L⁻¹; multiplying by (1−L) gives 1−L⁻¹ | Retain |
| 6.10 Virtual rank-zero class | 1−u in ℤ[u,u⁻¹] | θ²(1−u)=2/(1+u), not generally in ℤ[1/2,u,u⁻¹] | Retain stated localization/invertibility scope |
| 6.10 Twisted operation | Rank-one conormal, square-zero higher component x | Twisted positive product is 0; λ²(0,x)=(0,−x), not zero | Retain twist is not trivial multiplication |
| 6.11 Gysin Adams factor | Trivial conormal rank c | θᵏ(Oᶜ)=kᶜ; ψᵏi_*x=i_*(kᶜψᵏx) | Retain conormal correction |
| 6.11 Coniveau weight | Codimension p point, weight i−p | Extra kᵖ times k^(i−p) equals kⁱ | Retain shifted residue weight |
| 6.11 Low-degree Serre-error claim | Rational coefficients | Finite-torsion error category becomes 0; claimed decompositions become genuine rational direct sums | Retain modulo-error formulation integrally |
| 6.12 Supported λ/product | Regular divisor with class 1−L | λ_t(1−L)=(1+t)/(1+Lt); coefficient of t² is L²−L | Retain support operation, not exterior powers of a torsion sheaf |
| 6.12 Support self-product | Point of regular curve | Derived tensor has k in Tor₀ and Tor₁; alternating class 1−1=0 | Retain |
| 7.1 γ versus support filtration | h=1−[O(−1)] on P¹ | h∈F¹, h²=0; rank(h)=0, determinant(h)=O(1) | Retain |
| 7.1 Rank-zero ideal | Field | K₀(k)=ℤ with rank=id; F¹=0, hence all higher filtration groups 0 | Retain |
| 7.2 Leading Chern sign | Codimension c=1,2,3 | Coefficient (−1)^(c−1)(c−1)! is +1,−1,+2 | Retain |
| 7.2 Point on P² | [O_P] | ch₂ is +[P], but c₂ is −[P]; conflating Chern class with character reverses the sign | Retain |
| 7.2 Geometric character | O(n) on P¹ | ch=1+nH because H²=0 | Retain |
| 7.3 γ-valued character | h=1−L on P², L=O(−1) | ch(h)=1−exp(−H)=H−H²/2; positive H²/2 would be wrong | Retain |
| 7.3 Newton normalization | Line root a, degrees 1,2 | Components a and a²/2; denominator 2 is invertible over ℚ, not automatically over ℤ | Retain rational coefficients |
| 7.3 Associated-graded isomorphism | P¹ | K₀⊗ℚ=ℚ·1⊕ℚ·h maps to ℚ·1⊕ℚ·H by 1↦1,h↦H | Retain |
| 7.4 Euler/GRR | O(n) on P¹→point | (1+nH)(1+H)=1+(n+1)H; pushforward is n+1=χ(O(n)) | Retain |
| 7.4 Adams–Riemann–Roch | P¹, k=2, h²=0 | θ²(Ω)=2−2h, inverse=(1+h)/2; pushforward gives (1+1)/2=1 | Retain cotangent/inverse sign |
| 7.5 Relative-base normalization | Spec ℚ over Spec ℤ, e=1,r=0 | d=e+r=1 although absolute dim=0; homological ψ-factor on rank is k⁻¹ | Retain base-relative index |
| 7.5 Independence under ambient enlargement | Same point in A¹ over Spec ℤ | e+r=2 and supported γ-weight 1 give j=1; k⁻¹ agrees with the previous ambient | Retain |
| 7.5 Proper homological transfer | Finite field extension degree d | Rank class pushes to d; scalar k⁰ on dimension-zero cycles commutes: d·1=1·d | Retain |
| 7.6 Transverse excess | Independent equations x,y in k[x,y] | Excess F=0, λ₋₁(F)=1; intersection length 1 | Retain |
| 7.6 Self-intersection | Cartier conormal L∨ | Multiplier 1−L∨; a trivial conormal gives 1−1=0 | Retain |
| 7.6 All Tor degrees | Regular codimension-2 point | Tor ranks 1,2,1, then 0; alternating sum 1−2+1=0 | Retain exterior-power identification |
| 7.6 Supported map directions | Point included in a curve, then pulled back | K(point)→K(curve)→K(point) has multiplier 0; reverse restriction/extension cannot be substituted | Retain |
| 7.7 Supported Chow versus ordinary Chow | Closed point in A¹ | CH¹_with_support(A¹)=ℤ, while CH¹(Spec k)=0; support codimension belongs to the ambient | Retain |
| 7.7 Cycle multiplicity | O/πᵐ on a regular DVR | Leading cycle m[closed point], agreeing with length m and the supported K-class | Retain |
| 7.7 Dimension-one indexing | Curve in surface and in threefold | Both contribute to Gr₁ of dimension filtration; corresponding codimensions are 1 and 2 | Retain |
| 7.7 Zero-dimensional support | Finite set Y of closed points | CH₁(Y)=0; F₁G₀(Y)=F₀G₀(Y), hence Gr₁=0 | Retain |
| 1.2 Finite-level noncoherent distinction | A=k⊕V, V²=0, V infinite-dimensional; M=k | M has one generator, but its kernel V in A→k is not finitely generated; level 0 holds, level −1 fails | Retain |
| 1.3 Amplitude detection needs perfectness | ℚ/ℤ over ℤ, degree zero | Ordinary fibres over every residue field are 0, but Tor₁ at p is ℤ/p; tensor without derivation would misidentify the amplitude | Retain derived test |
| 3.6 Algebraically closed field injectivity | k→k[t]→k, t↦0 | Composite on every K-group is identity; for A=0 the target groups are 0 and the K₀ map ℤ→0 is not injective | Retain nonzero-algebra hypothesis |
| 6.1 Nonflat external perfect product | X=Z=Spec 𝔽₂ over Spec ℤ | Underived fibre product is Spec 𝔽₂; pullbacks of both units are 1, and their product is 1 | Retain; do not impose coherent flatness on this K-product |
| 6.2 Integral filtration need not terminate | ℤ[C₂], σ²=1, x=σ−1 | x²=−2x and Fⁿ=2^(n−1)ℤx for n≥1; no term vanishes | Retain nilpotence hypotheses |
| 6.3 Nonabelian representation ring | S₃ over ℂ, standard V | Character V=(2,0,−1); V⊗V=(4,0,1)=1+sign+V, so dimension 4=1+1+2 | Retain arbitrary-group exact representation construction |
| 6.3 Cyclic positive-characteristic control | C₂ over 𝔽₂, regular module | Regular module is an indecomposable length-two extension, but its exact K₀ class is 2[trivial] | Retain; no split-K₀ substitution |
| 6.9 A¹ representability | Spec k and A¹_k, degree zero | Both represented groups are K₀=ℤ; pullback sends 1 to 1 | Retain regular scope |
| 6.9 Uniqueness cannot be tested only on points | ψ² versus identity on P¹ | Both fix rank; with L=1−h, ψ²(L)=1−2h while id(L)=1−h and h≠0 | Retain natural operation on all smooth test schemes |
| 6.9 Trivial coefficient modulus | n=1 | Cofibre of identity on the sphere is 0; spectral coefficients and Moore mapping groups are both 0 | Retain separate boundary case |

| 3.3 Boundary supplier, R01 | DVR π; ε on k[ε]/ε² | coker/ker lengths (1,0) and (1,1), differences 1 and 0; supplied in §8.11, not §4.16 | Repoint three citations |
| 6.3 Pullback rank, R02 | Standard GL₂, determinant, zero; G=1,A=ℚ | Actual ranks 2,1,0 versus claimed N=2 in every case | Add standard-representation hypothesis |
| 6.4 Lifting order, R03 | Dependency edges operations→lifting and lifting→operations | Original graph has directed cycle length 2; repaired lifting→representation inputs and operations→lifting has 0 cycles | Reorder and remove reverse prerequisite |
| 6.4 Genuine versus exterior operation | u=2 in ℚ× | Genuine λ²[2]=−[2]=[1/2]≠0; Λ² of rank-one module has class 0 | Preserve lifting theorem and its proof |
| 6.4 Full γ-product polynomial | x=[t],y=[u][2],z=xy, over ℚ(t,u), k=2 | γ²x=0, γ²y=−y; RHS=−z−2z=−3z=LHS; truncated formula gives −z | Retain full sum |
| 6.4 Same formula, k=3 | Same weight-1 and weight-2 inputs | γ³z=(1−8+9)z=2z; coefficient C₃,₁,₂=−2 gives (−2)x(−y)=2z, all other contributions vanish | Retain |
| 6.4 Operation endpoints and denominators | k=1; attempted positive Newton formula at k=0 | γ¹(xy)=xy on both sides; at 0 division by k has denominator 0 and is excluded | Retain k≥1 |
| 6.6 Flag quotient maps, R04 | Rank-3 bundle, flag type [1,2] | Universal quotient ranks 2 and 1, nested kernels of ranks 1 and 2; scalar extension preserves both | Cite actual prose API |


## Not verifiable

- **GS87:** the GDZ primary scan fetch and a second attempt did not complete. Consequently §6.12's supported operations/Proposition 5.3 (pp.243–248,260–266) and §7.7's Theorem 8.2 (pp.274–275) are not source-certified this round. Li–Liu and Zhang corroborate the stated applications, not the entire general theorem.
- **GS99:** the archived author 60-page version timed out; title/DOI resolution reached a restricted landing page; the institutional CiteSeer attempt returned 404 through its archived URL. Theorem 4, p.51, and the other cited filtration locators remain unverified. I have not substituted the differently paginated CERN version or the previous review's certification.
- **Panin.2003:** MathNet timed out. Theorem A in the original pp.169–178, used in §4.7, is unverified; the readable Quillen/Weibel finite-type statements do not themselves verify this locator.
- **Riou, Brown–Gersten, Geisser:** the cited arXiv, Cornell author scan and Rikkyo author manuscript fetches respectively timed out. Their operation-representability, descent and coefficient-operation locators were not re-certified. The mathematical scope and supplier dependencies were still reviewed.
- The inaccessible works are collected in the scratch missing-reference list using their existing source keys. Soulé and Zhu initially failed classification checks but were subsequently obtained from their publisher's open archives; they are not missing.
- The seeded sample and the additional passages cited above were checked; this report does not certify every unselected bibliography locator or every full source proof. The uncompiled enhanced K/G and Chow carriers are mathematical targets, not declarations verified by Lean.

## Source issues

- **Gap** in TT90 at Theorem 1.9.8 and the related approximation criterion, printed pp.269–271: the source omits closure of acyclic objects under weak-equivalence retracts; it should require that closure in both categories; affects the proof; corrected in print at Thomason93 §4, pp.213–215.
- **Error** in TT90 at §3.16.6, printed p.320: the source gives perfect pushforward for flat proper morphisms without a finite-presentation qualification; it should require finite presentation or another hypothesis ensuring a perfect morphism; affects a stated result.
- **Error** in BS17 at proof of Theorem 11.2(2), assertion (1), preprint p.47: the source bounds the core truncation by b−a; it should bound mapping spaces by b−a and the core by b−a+1; affects the proof.
- **Error** in Weibel at proof of V.6.2, printed p.407/PDF415: the source identifies t-torsion with having finitely many nonzero graded components; it should use a finite filtration by powers of t, whose quotients may have infinite graded support; affects the proof.
- **Misprint** in Weibel at proof of II.8.9.1, printed p.155/PDF163: the source gives the leading Chern coefficient with sign (−1)ⁱ; it should use (−1)ⁱ⁻¹; affects the proof.
- **Error** in Weibel at Theorem V.9.6, printed p.438/PDF446: the source asserts the semilocal Gersten vanishing without regularity at the localized primes; it should retain that regularity hypothesis and justify the smoothing reduction over imperfect fields; affects a stated result.

The roadmap already guards against these source defects. The witnesses are, respectively, an Euler-zero complex with a nonzero-Euler retract; the flat quotient (∏ℕk)/(⊕ℕk) with non-finitely-generated kernel; π₁ of the core of 𝔽₃[0] equal to C₂; R[u,t]/(t)=R[u]; a divisor with positive first Chern class; and Quillen's explicit regular-localization hypothesis. Source lines inspected: Thomason93 798–857, TT90 2905–2906, BS17 2167–2186, Weibel 24398–24405, 8655 and 26578–26583. These are source issues, not additional findings against the roadmap.

