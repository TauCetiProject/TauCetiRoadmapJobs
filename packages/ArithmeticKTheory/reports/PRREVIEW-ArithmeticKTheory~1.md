# Review of ArithmeticKTheory (pull request #1418 at 76f1a28)

**Verdict:** needs changes

## R01 (P2) — Reconcile the two declared supplier contracts with §3.5

**Location:** `TauCetiRoadmap/ArithmeticKTheory/README.md:1257` and `:1281`; also the ownership claims at `:44`, `:247` and `:373`. The text says “For every number field F and finite S, construct the homomorphism” and “For every finite group G and connective spectrum E”.

**Claim:** The number-ring Witt signature theorem and the connective homotopy-orbit spectral sequence are local construction targets. However, both remain declared supplier work in the package plan. The README contains neither corresponding `gap:` declaration. This gives the same objects two owners and makes the declared gaps nonminimal against the work planned here. Generalizing the orbit target from C₂ to finite G does not remove the overlap on C₂.

**Witness:** `packages/ArithmeticKTheory/design/plan.json:4` assigns the orbit sequence to StableHomotopyKTheory Layer 7; `:10` assigns the number-ring signature theorem to GeometryOfNumbersAndQuadraticArithmetic §6.11. README §3.5 constructs both.

**Exact repair:** Restore, in the corresponding supplier subsections, the two `What <Supplier> must provide (gap:<slug>): <needs>` contracts with the hypotheses and slugs in the plan: `connective-c2-homotopy-orbit-spectral-sequence` and `number-ring-witt-signature`. Consume them in §3.5. Keep the arithmetic finite-generation deductions and their Checks, but remove the duplicate general constructions and their local ownership claims. If the finite-G extension is retained, assign that general extension to the homotopy supplier as well. Do not wait for the exports or pretend they already occur in the supplier text: the declared contracts are sufficient inputs.

**Repair check:** The C₂ input applied to Hℤ with trivial action still gives ℤ, ℤ/2, 0 in degrees 0,1,2; sign action gives ℤ/2, 0, ℤ/2. The signature input gives rank 0 for the Gaussian ring and rank 2 for the golden ring, witnessed by determinant −2. Thus both finiteness arguments retain their required inputs after removing the duplicate ownership. This does not dispute the settled missing-export explanation in `packages/ArithmeticKTheory/reports/FIX-RT-ArithmeticKTheory~2.md`, F07; absence of the exports is not this finding.

## R02 (P3) — Replace the unrelated localization locator

**Location:** `TauCetiRoadmap/ArithmeticKTheory/README.md:544`: “(K-book, V.6.1, p. 406; VI.9.4, p. 519.)”

**Claim:** These locators support localization under arbitrary S⊆S′ for a Dedekind domain with torsion class group.

**Witness:** `kbook line 31663` begins VI.9.4: a table of divisible 2-primary K-theory coefficients for real number fields with 2 inverted. It does not state the asserted ring-localization theorem.

**Exact repair:** Remove VI.9.4 here. Explicitly derive the assertion from §1.1: for its denominator monoids M⊆M′, localizing M⁻¹R at the image of M′ gives M′⁻¹R by the universal property. Cite §1.1 for the S-integer identification; reserve V.6.1 for the K-theory localization application.

**Repair check:** R=ℤ, S=∅, S′={(2)} gives ℤ→ℤ[1/2]; S=S′ gives the identity; adjoining 3 afterwards gives ℤ[1/6]. These are the asserted maps, without any real-place or dyadic hypothesis.

## Verified sound

The review covered the entire 4,962-line README, its 52 numbered subsections, and the 72-line Lean file at the requested head. It included all fifteen seeded source targets, the definitions and Checks surrounding them, all three Lean theorem signatures, the supplier contracts and Needs lines, and object searches across the pinned libraries, main roadmaps, the supplied open-head index and board packages. The mathematics and verdict were assessed independently; text-location helpers supplied only search locations, which were opened before use.

The worker's gate at this head passed every listed check, including the targeted build, source-material/stray-file checks and outside-folder scope check. Direct elaboration of `TauCetiRoadmap/ArithmeticKTheory/Suggested.lean` also exited successfully with exactly three `sorry` warnings. The outside-folder diff was empty. The independently run dependency check returned:

```text
depcheck: 204 roadmaps, 1492 edges, 0 problem(s)
```

No UPWARD or CYCLE line appeared. R01 is an ownership-contract discrepancy, not a mechanical order failure. Neither declared gap is unowned or vague; their hypotheses are precise. Their absence from the supplier today is not a finding.

**Seeded source audit.** All locators below were opened in the supplied legal text, or in a version fetched through the sources service. A derived assertion is distinguished from a verbatim theorem at its locator. No README locator was explicitly marked unverified. Waived primary texts remain uncertified as specified below.

| Sample | Text inspected and result |
| --- | --- |
| 1.1 Denominators | `kbook line 1322`, I.3, pp.18–21; line 1742, I.6, pp.28–29. Ideal factorization/invertible ideals support the denominator argument. The arbitrary-S iff is a deduction, not a theorem printed there. Finitely many negative valuations and powers principalizing each relevant ideal give the claimed proof. |
| 1.2 S-enlargement/fields | `kbook line 24313`, V.6.1, p.406; line 24596, V.6.6.3, p.410; I.3 above. Finite integral closure localizes to the full inverse-image prime set. VI.9.4 is unrelated: R02. |
| 2.1 Localization indexing | `kbook line 24007`, V.5 localization; line 24313, V.6.1; line 24518, V.6.6; line 16293, IV.2.1 coefficient sequence; line 24719, V.6.8. The torsion support is finite on each element, the residue indexing and K₀ tail agree. The signed Bockstein adapter is separately constructed, not inferred from exactness. |
| 2.3 Transfer/ramification | `kbook line 24596`, V.6.6.3–4, p.410, supplies residue transfer and projection formulas. Ramification-weighted pullback is the separately resolved SchemeKTheoryOperations §3.6 contract. The distinction between e and residue degree f is retained. |
| 3.1 Proper layers | `kahn line 409`, §§3–4; line 639, §§4.2–4.3, pp.12–14; `sun line 145`, §2, pp.3–5; `kbook line 19050`, IV.6.9. Proper layers exclude the full interval and rank-zero case; all projective isomorphism classes occur. |
| 3.3 Rational map | `kbook line 24313`, V.6.1; line 24518, V.6.6; line 15636, IV.1.13; line 18731, IV.6.5. Finite residue groups give torsion defects in degrees ≥2, so the actual localization map rationalizes to an equivalence. Quillen's original finite-generation proof remains waived. |
| 4.1 Fixed twists | `kbook line 28316`, VI.1.3; line 28399, VI.2.1–2.3, pp.469–471; `rognes-weibel line 365`, Definition 1.7 and Proposition 1.8. Invariants use the cyclotomic action raised to the twist, with exponent dividing the weight. Weight zero is excluded from finite-order notation. |
| 5.2 e-invariant/descent | `rognes-weibel line 356`, §1, p.8, defines the torsion e-map via algebraic closure. `kbook line 29046`, VI.4.1–4.2, p.480, applies over fields/smooth field bases. `wildkernel line 556`, Lemmas 7.2–7.3 and the proof following Lemma 7.4, pp.18–19, supports the number-ring localization step; the damaged OCR of Lemma 7.4 itself is recorded below. `fgv line 533`, Proposition 2.9 and its proof, pp.12–13, gives the field-to-arithmetic-base descent route. The README explicitly owns the extension to its larger S-integer setting; it does not claim VI.4.2 already applies to a mixed-characteristic base. |
| 6.3 Real dyadic table | `kbook line 31935`, VI.9.7–9.9, pp.522–524; `rognes-weibel line 2322`, Corollary 7.12, p.44. The degree-four hidden elementary 2-group and degree-six real quotient are retained. The index is 2i with twist i+1. |
| 6.9 Cohomological kernels | `wildkernel line 87`, (0.5)–(0.6), p.3; line 598, Proposition 8.1 and (8.2), p.20; line 655, Theorem 8.7, p.21. Ordinary real terms and the hidden kernel are distinguished. The hidden subgroup lies in ambient div K, not necessarily in a divisible subgroup of the finite integral K-group. |
| 7.5 K₄ and Vandiver | Published `rognes-k4 line 40`, line 290 and lines 342–351, pp.268 and 278–280, were read in addition to the older cached manuscript. `miller-patzt-wilson line 60`, pp.2–3, and `hutchinson-ge2 line 428`/line 473, p.9, support the stable-filtration scope and PID negative control. `kbook line 32187`, VI.10.1; line 32234, Table 10.1.1; line 32579, VI.10.9–10.10, pp.527–533, supports the order/table argument with the corrected degree-22 index. |
| 8.1 Arithmetic data/presentations | This is an assembly target using §6.14 and actual arithmetic equalities, not an independent literature theorem. `Module.Relations.Solution` at the pin supplies presentations; a relation list alone supplies only an upper bound. The supplied golden arithmetic retains both minpoly and generation hypotheses. |
| 8.2 ℤ, ℤ[1/p], ℚ | `kbook line 13575`, III.6.5.1, p.236; line 28040, VI.1, pp.462–463; line 31706, VI.9.5, p.520; line 32284, VI.10.1.3, p.528. Localization gives the claimed higher residue groups; the already-owned K₂(ℤ), K₂(ℚ) are used as examples. |
| 8.5 Gaussian tame kernel | `kbook line 12517`, second paragraph of III.5.2.2, p.218, explicitly includes ℤ[i]. The primary Bass–Tate Appendix, pp.431–436, remains waived. The displayed small-prime and symbol calculations were recomputed independently below. |
| 8.8 Residue relations | `groenewegen line 265`, Lemma 7, printed p.1448; line 281, triangle, p.1449, supports the quotient criterion. The cited preprint numbering pp.6–7 is identified in References. The 173 exponent identities and 23 signed minors are this roadmap's data, not a purported source table; all were independently recomputed. |

The extra formal-source audit opened eight AINTLIB modules at the cited commit through the sources service. In `aintlib` Main, line 26 states the finite Kummer criterion. VonStaudtClausen lines 146, 177 and 498 have exactly the restricted bounds described in §7.1; Kummer line 154 includes the restrictions on m,n,m+1,n+1 and all j below the indices. Bridge line 265, Herbrand/Basic line 178 and Idempotents lines 183, 278, 355 and 361 support the stated windows and projector conventions. The unrestricted all-index theorem here properly consumes CyclotomicClassGroupsAndStickelberger §3.1 instead of silently enlarging these formal-source signatures.

**Headline coverage and Lean probes.** The endpoints are denominator localization; Quillen finite generation and Borel ranks; Soulé localization; odd integral and even primary tables; hermitian finiteness; e-invariants/Harris–Segal detection; higher wild kernels and divisibility; Bott descent; regular-prime consequences; K₄(ℤ)=0 and ordinary H₃ of its K-spectrum; special-value and integer order formulas; the Vandiver table; Gaussian and golden tame-kernel presentations. The arithmetic finite CW input is also explicitly identified in the docstring. The two denominator theorems and the all-index regular-prime Bernoulli consequence are stated in Lean. The remaining endpoints require missing higher Quillen, spectrum, GW/L or arithmetic-quotient carriers, and are named in the docstring rather than encoded by arbitrary data.

All four `#check @...` signatures were elaborated on a scratch copy and compared with the README. The class-group torsion binder, arbitrary S, fraction-ring structure, odd prime, regularity and k≥1 binders survive; no signature correction is needed. Each of the three admitted theorems was tried with the one-tactic alternatives `rfl`, `simp` and `infer_instance`; none closed. Object searches found no pinned theorem providing any of the three by a single `exact`. The one real-body definition is needed by the two localization headlines. There is no padding finding, sorry'd data, placeholder carrier, forbidden import or `set_option` in the target file.

**Pinned declarations opened.** These are library-relative paths at the manifest pins, not claims about a newer library.

| Object | File/line and inspected contract |
| --- | --- |
| S-integers and units | `Mathlib/RingTheory/DedekindDomain/SInteger.lean:65`, `:88`, `:94`, `:114`, `:133`: valuations ≤1 outside S; all/empty sets; unit carrier and unit equivalence. No finite-S assumption is built into the carrier. |
| S-unit valuation | `TauCeti/RingTheory/DedekindDomain/SInteger/Unit.lean:105`, `:123`, `:130`, `:149`, `:207`: product-valued valuation, monotonicity, empty-unit kernel and finite-S finite generation. A direct sum and the unit-rank identity are additional inputs, not consequences of the definition. |
| Localized classes/primes | `TauCeti/RingTheory/DedekindDomain/SInteger/Spectrum.lean:180`; `ClassGroup.lean:94`, `:136`: remaining height-one primes, finite localized class group and class quotient. |
| Norm | `TauCeti/RingTheory/ClassGroup/RelNorm.lean:143`, `:151`, `:166`: ideal-class norm and norm-after-extension equals degree power. This is not a scalar formula for the whole K₀ transfer without its Steinitz factor. |
| Exact K₀ | `TauCeti/CategoryTheory/GrothendieckGroup/Exact.lean:15`: exact Grothendieck-group presentation. Its existence does not supply the missing Q-space or higher groups. Searches of the homotopy and category trees found no required higher Quillen/GW spectrum carrier. |
| Golden arithmetic | `TauCeti/NumberTheory/NumberField/WorkedExamples/Sqrt5/Basic.lean:42`; `Invariants.lean:129`, `:135`, `:141`; `RealPlace.lean:68`: degree two, PID, class number one, dyadic place and unit rank. The field-generation hypothesis accompanies the minimal polynomial. |
| Bernoulli | `Mathlib/NumberTheory/Bernoulli.lean:194`, `:204`, `:214`, `:662`: arithmetic sign, B₁, primed comparison and von Staudt–Clausen. These do not include the all-index regular-class-number consequence. |
| Zeta | `Mathlib/NumberTheory/LSeries/HurwitzZetaValues.lean:251`: ζ(−k)=(−1)^k B_(k+1)/(k+1). At k=1,3 this gives −1/12,1/120. |
| Presentations | `Mathlib/Algebra/Module/Presentation/Basic.lean:266`, `:272`: surjectivity from the quotient iff generators span. Neither theorem supplies arithmetic completeness of relations. |
| Lattice index | `Mathlib/LinearAlgebra/FreeModule/Finite/CardQuotient.lean:98`: equal-rank bases give index = absolute determinant. `Mathlib/Algebra/Module/ZLattice/Covolume.lean:170`: covolume quotient = relative index for full discrete lattices. |
| Minkowski | `Mathlib/MeasureTheory/Group/GeometryOfNumbers.lean:91`: symmetric compact convex body, nontrivial finite-dimensional real space, discrete lattice/fundamental domain, and volume threshold. The non-strict volume threshold has the compactness hypothesis used here. |
| Smooth cutoff | `Mathlib/Geometry/Manifold/PartitionOfUnity.lean:555`: smooth subordinate partition; the finite-dimensional, Hausdorff and sigma-compact context is retained by the arithmetic manifold hypotheses. |

**Cross-roadmap and ownership audit.** The 25 supplier subsections were resolved against main or the new-roadmap heads returned by the required roadmap service. Unless a Completed path is specified, each row refers to `TauCetiRoadmap/<Supplier>/README.md`. Representative exact locations, including the convention-sensitive and proof-route inputs, are:

| Supplier | Resolved location and supplied object |
| --- | --- |
| StableHomotopyKTheory | README §§1.24–1.28; §3.36; `:1428` §3.37 rational finite-type H-space comparison; §§7.1–7.13, 7.21–7.28. Its ordinary AHSS is not a coherent nontrivial-action orbit theorem; the latter is the declared contract in R01. |
| GeneralAlgebraicKTheory | README `:260`–`:372`, §§2.1–2.6; `:729` additivity; `:799` dévissage; `:889` Serre localization; `:1478` onward products/transfers; `:1783` right-linear boundary. |
| EtaleCohomologyFoundations | README `:231`, F.0.3, `VanishingCycles.etaleTateTwists`; `:961`–`:1089`, F.4.1–F.4.6. The resolver's sole “missing” lead is a planned supplier declaration here, not a missing pinned declaration. |
| IntegralIwasawaTheory | README `:705` §6.0 rationality; `:900` §7.4 Vandiver; `:941`–`:945` cyclicity/comparisons; `:1368`–`:1388` twist Euler quotients; `:1613` §12.3 including the subsequent dyadic paragraph. Both primes use H²/H¹ and totally real hypotheses. |
| CyclotomicClassGroupsAndStickelberger | README `:116`, `:141`, `:164`, `:182`, §§0.1–0.4; `:396` §2.1; `:519` §3.1 unrestricted congruences; `:573` reflection; `:924` Herbrand–Ribet; `:952` criterion; `:997` tower stability. |
| SchemeKTheoryOperations | README `:1017`, §3.6, DVR valuation and flat ramification square; `:1116`, §3.7, divisor/Dedekind localization. |
| KTheoryLowDegrees | README `:535`–`:646`, §§5.1–5.5, rank–Picard and corrected transfer; `:836`, §8.1 determinant; `:1212`–`:1291`, §§11.1–11.3 arithmetic SK₁. |
| K2SymbolsBrauer | README `:1202`, `:1221`, Matsumoto adapter; `:1425`–`:1514`, tame convention; `:2516`, Dedekind sequence; `:2648`–`:2692`, S-integers; `:2720`, real sign; `:2839`, `:2853`, K₂(ℤ), K₂(ℚ). Its uniformizer-last symbol is the inverse of this roadmap's raw boundary. |
| ClassicalArithmeticCompletion | README `:713`, `:769`, `:1383`, §§1.14,1.15,1.35: local/real norm-residue symbols and norm criterion. |
| ArithmeticGaloisDuality | README `:599`, inverse limits; `:1697`, S-units; `:1838`, restricted ramification; `:3436`, `:3505`, Poitou–Tate and finiteness; real modifications are retained. |
| SelmerIwasawaCohomology | README `:343`, `:372`, `:411`, `:427`, strict kernels and functoriality; `:849`, `:899`, `:918`, mapping fibres and H⁰ corrections. |
| GeometryOfNumbersAndQuadraticArithmetic | README `:2252`, stable carriers; `:2511`, ExactW0; `:2524`, field comparison with 2 invertible; `:2934`, Poincaré spectra; `:3071`, localization; `:3173`, integral ℤ tables. These are not the general number-ring signature theorem: see declared contract R01. |
| HermitianKTheoryOfPoincareCategories | README `:83`–`:275`, flavours and fibre sequences; `:587`, quadratic comparison; `:1042`–`:1104`, symmetric and Dedekind ranges; `:1253`, `:1266`, classical connective fibre sequences. |
| KTheoryFiniteLocalFields | README `:189`, finite-cover transfers; `:211`–`:284`, coefficients/finite fields; `:411`, signed boundary; `:512`, motivic cycles; `:548`–`:613`, Moore K₂; `:1287`–`:1459`, local completion/descent; `:1639`, Hilbert symbols. |
| ClassFieldTheory | README `:1827`–`:1832`, Hilbert/narrow class fields and class-group comparison; Layers 11–13 resolve. |
| NumberFieldArithmetic | `Completed/NumberFieldArithmetic/README.md`, Layers 1–5 and 7–8; `:1959`, quadratic integers; `:1996`, units; `:2259`, golden; `:2287`, Gaussian. The more recent pinned golden results are reused. |
| Chebotarev | `Completed/Chebotarev/README.md:686`, Layer 10, density of a Frobenius set; finite exclusions do not change density. |
| GeneralizedCohomology | G2.5 shared stable comparison and G5.4 real/complex Bott theory; complexification is 1 in degree 0 and 2 in degree 4. |
| ArithmeticLocallySymmetricSpaces | README `:2252`, `:2296`, ALS.2.2–2.3; `:4028`, ALS.5a.1 rounded boundary manifold. The finite CW route here does not use the separately conditional triangulation of ALS.2.4. |
| MorseTheory | README `:90`, M1; `:124`, M2; `:430`, M3. The application is to the boundaryless interior with a fixed collar function. |
| GeometricTopology | README `:208`, smooth collars in Layer 1; `:930`, separate smoothing/triangulation comparison. |
| ClassifyingSpaces | README `:184`, `:195`, Stage 3 items 12–13; `:224`, Stage 4 item 16: classifier uniqueness, lifted cells and group homology. |
| AlgebraicTopology | README `:1694`, Stage 8 item 4, simply connected relative Hurewicz with the indicated vanishing range. |
| HomotopySpheres | README `:894`, Stage 9 item 2: fourth stable stem vanishing; comparison to the shared spectrum uses GeneralizedCohomology G2.5. |
| AdelicAlgebraicGroups | README `:3587`, §3.6: fixed-maximal-compact Siegel covering and finite overlap. |

Object searches also resolved the apparent neighboring overlaps. Polylogarithms §1.1 (`TauCetiRoadmap/Polylogarithms/README.md:128`) constructs a GL-rank filtration through rational primitives for arbitrary rings; ArithmeticKTheory §3.1 filters the projective Q-category, and §3.4 uses the finite-type arithmetic specialization of StableHomotopyKTheory §3.37. These are different interfaces. BorelRegulators consumes the arithmetic rank result and owns regulator normalization/covolumes. EllipticKTheory's Steinberg application is over global function fields. GlobalQuadraticForms supplies field Witt signatures, not the integral number-ring finite-kernel result. No duplicate fully qualified Lean name was found. Outside R01, the arithmetic localization, arithmetic rank and explicit tame-kernel targets have a distinct ownership boundary.

**Computed adversarial pass.** The main table has 131 rows, followed by eleven index checks and all 173 individual relation evaluations. C_m means the cyclic group of order m; C₁=0. Each row gives an actual value, map value or both sides of the tested equality. “Pass” records the listed instances and convention controls, not a claim that finite tests prove a general theorem. The stated hypotheses were also inspected; the zero ring is excluded wherever a fraction field or number field is required. Finite-field q=1 is excluded. The periodic degree tables and ordinary connective groups were tested separately.

| Statement | Instances | Values computed / compared | Result; change |
| --- | --- | --- | --- |
| Conventions: unit rank | ℚ, S=∅ and {2} | 1+0+0−1=0; 1+0+1−1=1, matching ±1 and ±2^ℤ | Pass; none |
| Conventions: β versus t | v₅, (5,2) and (2,5) | β=2,3; t=3,2 in F₅×; 2·3=1 | Pass; none |
| 1.1 denominator definition | ℤ, S=∅,{2},all | M=±1, ±2^a (a≥0), ℤ\{0}; 3∉M_{2}, 0∉all | Pass; none |
| 1.1 localization iff | S={2}; M=⟨2⟩,⟨3⟩,{1} | (left,right)=(true,true),(false,false),(false,false); 1/2 is missing in latter two localizations | Pass; none |
| 1.1 class torsion suffices | O_(ℚ(√−5)), nonprincipal p over 2 | [p] has order 2; p²=(2); inverting 2 meets p without choosing a generator of p | Pass; none |
| 1.1 field/empty spectrum | R=F a field, S=∅ | M=F×; localization F=F; prime-meeting condition empty | Pass; none |
| 1.2 inclusion/towers | ∅⊂{2}⊂{2,3} over ℚ | 1/2↦1/2, then 1/6 exists; composite ring ℤ[1/6] on both routes | Pass; R02 locator |
| 1.2 finite extension | ℚ⊂ℚ(i), T over {2} | basis (1,i), rank 2=[E:F]; extra upper 5 permits 1/5, not integral over ℤ | Pass; none |
| 1.3 transfer coordinates | d=2; virtual ranks 1,−1 | (1,1)↦(2,c_B); (−1,1)↦(−2,c_B⁻¹); free B has c_B=1 | Pass; none |
| 1.3 unit norm | quadratic extension; u=−1 | N(res(−1))=1=(−1)²; identity extension gives u | Pass; none |
| 2.1 support/localization | field; DVR; ℤ→ℤ[1/2] | residue sums respectively 0, one summand, one F₂ summand; ord(2)=1 | Pass; none |
| 2.1 coefficient transition | C_(p²)→C_p on bounded torsion | eventual reduction multiplies by p; p on C_p is 0, not identity | Pass; none |
| 2.1 Bockstein sign | fifth root reducing to 3 mod 11 | raw composites 3 and 4=3⁻¹; signed adapter gives 3=3 | Pass; none |
| 2.2 inverse-ideal class | uniformizer ideal p | quotient [R/p]=[R]−[p]; Pic coordinate [p]⁻¹, not [p] | Pass; none |
| 2.2 valuation adapter | ℤ, x=2 at (2) | native multiplicative exponent −1; arithmetic order −(−1)=1 | Pass; none |
| 2.3 residue restriction | e=2, residue unit 2 mod 5 | 2↦2²=4; omission of ramification gives 2 | Pass; none |
| 2.3 transfer | unramified quadratic residue extension | K₀ transfer rank 2; ramified quadratic has residue degree 1 and rank 1 | Pass; none |
| 2.3 tower | e₁=2,e₂=3 | e_total=6=2·3; x↦x⁶ on both routes | Pass; none |
| 2.4 even injection | F₂ residue, n=2 and n=4 | K₂(F₂)=K₄(F₂)=0, so preceding obstruction 0 | Pass; none |
| 2.4 odd surjection | residue F₃, n=3 | K₂(F₃)=0, hence cokernel 0; preceding K₃(F₃)=C₈ need not be 0 | Pass; none |
| 3.1 Q₀ and proper layers | dimensions 0,1,2 over F₂ | Q₀ point; proper-layer objects 0,2,11; including full interval would add one | Pass; none |
| 3.1 projective indexing | nontrivial class in Cl(ℤ[√−5]) | rank-one objects include R and p, two nonisomorphic classes | Pass; none |
| 3.2 Solomon–Tits | rank 1 and rank 2 over F₂ | empty building has H̃₋₁=ℤ; three points have H̃₀=ℤ² | Pass; none |
| 3.2 finite arithmetic CW | neat rank-one ℚ and real quadratic | models point and circle; H₀=ℤ in both, H₁=0 and ℤ | Pass; none |
| 3.2 collar exhaustion | f(t)=1/t, t=1/2 | f=2, derivative −4≠0; no critical collar points | Pass; none |
| 3.2 torsion control | C₃ versus trivial group | H_(2a+1)(C₃;ℤ)=C₃ for a≥0; trivial group positive homology 0 | Pass; none |
| 3.2 dualizing orientation | ℚ, diag(−1,1,…), m=2,3 | Norm(det)^(m−1)=−1,+1; dimensions 1,3 | Pass; none |
| 3.2 relative shift | rank m=1, i=1 and i=0 | i−m=0 and −1; contributions ⊕Pic ℤ and 0, not H₀ in the latter | Pass; none |
| 3.2 stability/finite generation | Q₀→Q₁→Q, H₀ | ℤ→ℤ→ℤ identity; π₁(BQ)=K₀ remains ℤ⊕Pic | Pass; none |
| 3.3 actual rational map | ℚ, n=5, S⊂S′ | one-dimensional map sends class x to its localization; replacement 2x differs when x≠0 | Pass; none |
| 3.3 finite-S range | ℤ⊂ℤ[1/2], n=1,2 | rational ranks 0→1 at n=1; 0→0 at n=2; n≥2 restriction necessary | Pass; none |
| 3.4 Borel ranks | ℚ and ℚ(i), degrees 3,5 | (0,1) and (1,1); F×F doubles these, M₂(F) does not | Pass; none |
| 3.4 numerical rank domain | ℚ, n=0,1,2 | ρ=(0,1,0); actual ranks K₀,K₁,K₂=(1,0,0) | Pass; none |
| 3.4 ring/field finiteness | K₂(ℤ), K₂(ℚ) | C₂ finite; C₂⊕⊕_p F_p× infinite torsion | Pass; none |
| 3.5 Witt injection | characteristic 0; hyperbolic quadratic plane | q on a symmetric Lagrangian satisfies 2q=0⇒q=0; in characteristic 2 that implication fails | Pass on stated domain; none |
| 3.5 periodic L-tables | ℤ, positive sign, residues 0,1,2,3 | symmetric (ℤ,C₂,0,0); quadratic (ℤ,0,C₂,0) | Pass; none |
| 3.5 metabolic convention | diag(1,−1), vector (1,1) | pairing 0; primitive isotropic line; (1,0) has self-pairing 1 versus even hyperbolic self-pairings | Pass; none |
| 3.5 signature map | ℤ; golden; Gaussian | ⟨±1⟩↦±1; golden vectors (1,1),(1,−1), determinant −2; Gaussian target rank 0 | Pass; R01 ownership |
| 3.5 orbit sequence | C₂ on Hℤ, trivial/sign | π₀,π₁,π₂=(ℤ,C₂,0)/(C₂,0,C₂), from alternating 0,2 / 2,0 | Pass; R01 ownership |
| 3.5 connectivity | ΣHℤ and zero spectrum | π₀,π₁,π₂=(0,ℤ,C₂) and (0,0,0); negative q rows absent | Pass; R01 ownership |
| 3.5 genuine comparison ranges | m=0,1 | n≤−2 or n≥−1; n≤0 or n≥1; union is all integers | Pass; none |
| 4.1 invariants | F₃, i=1,2 | 3¹−1=2; 3²−1=8; i=0 invariants infinite, not order 0 | Pass; none |
| 4.1 functoriality | degree-two res/cor, invariant x | cor(res x)=2x; on C₈, x=1 gives 2, not 1 | Pass; none |
| 4.1 negative twists | ℚ, i=±2 | kernel of χ²−1 equals kernel of χ⁻²−1; both order 24 | Pass; none |
| 4.2 odd-primary orders | ℚ, ℓ=3, i=1,2,6 | 1,3,9; divisibility condition 2∣i distinguishes first case | Pass; none |
| 4.3 exceptional definition | ℚ, ℚ(i), ℝ | cyclotomic groups eventually noncyclic, cyclic, C₂ respectively | Pass; none |
| 4.3 dyadic formula | ℚ,i=2; ℚ(i),i=1; ℚ(√−2),i=2 | 8; 4; 2^(3+1−1)=8, not 16 | Pass; none |
| 4.4 rational w | weights 2,4,6,10 | 24,240,504,264; Bernoulli denominators match | Pass; none |
| 5.1 Soulé localization | odd n≥3, ℤ⊂ℚ | kernel/cokernel 0; n=1 units map has cokernel ⊕_pℤ | Pass; none |
| 5.2 Kummer normalization | F₅×/(F₅×)² | class of 2 nonzero, class of 4 zero; zero comparison fails | Pass; none |
| 5.2 Bott covariance | primitive fifth root, exponent a=2, weight i=2 | multiplier a²=4 mod 5 | Pass; none |
| 5.2 arithmetic descent | ℤ[1/5] and ℤ[1/2] | units ±5^ℤ, Pic=0; latter square-class group order 4 | Pass; none |
| 5.2 torsion e-map | ℚ,K₃ and K₅ at 2 | C₄₈→C₂₄ kernel C₂; K₅{2}=0→W₃{2}=C₂ cokernel C₂ | Pass; none |
| 5.2 finite residue coefficient edge | F₅, mod 2 Bott | Bockstein hits −1∈F₅×; target order 2, not zero | Pass; none |
| 5.3 imaginary odd groups | ℚ(i), n=3 | free rank 1, torsion C₂₄; total ℤ⊕C₂₄ | Pass; none |
| 5.4 real comparison | ko mod 2, degrees 0,…,7 | orders 2,2,4,2,2,1,1,1; complexification degrees 0,4 multiplies by 1,2 | Pass; none |
| 5.4 diagonal extension | w=24,r₁=1; w=2,r₁=2 | C₄₈; C₄⊕C₂; D₈ excluded by abelianness | Pass; none |
| 5.4 odd integral table | ℚ, degrees 3,5,7,9 | C₄₈,ℤ,C₂₄₀,ℤ⊕C₂; torsion orders 48,1,240,2 | Pass; none |
| 5.5 Sylow detection | q=7,ℓ=3,rank 2 | GL₂ order 2016; detecting subgroup order 18; index 112 prime to 3 | Pass; none |
| 5.5 twisted norm | C₈, action 3 versus 7 | norm 1+3=4, image {0,4}; 1+7=0, image {0}; distinction retained | Pass; none |
| 6.1 even H² | one ℓ-place and trivial ℓ-class quotient | t+s−1=0; with t=1 gives rank 1, consistent with either C_ℓ or C_(ℓ²) | Pass; none |
| 6.1 excluded real dyadic case | ℚ, degree 6 | K₆{2}=0; H²(twist 4)=C₂; blanket isomorphism would fail | Pass; none |
| 6.2 signature defect | ℚ; ℚ(√7), dyadic S then add 7 | j=0; j=1 then 0; S-change matters | Pass; none |
| 6.2 Selmer versus units | 5+√34 | norm −9, signs (+,−); even valuations permit mixed signature beyond ordinary-unit test | Pass; none |
| 6.3 hidden degree-four group | ℚ(√2), ℚ(√7) | ρ=0,1; latter K₄{2}=C₂ maps to H²=0 | Pass; none |
| 6.3 real local H² | ℤ₂(j), j odd/even | H²(C₂,sign ℤ₂)=0; H²(C₂,trivial ℤ₂)=C₂ | Pass; none |
| 6.4 even two-rank | (r₁,s,t,j)=(1,1,0,0),(2,1,0,1) | residues 2,4,6,8: (1,0,0,0),(2,1,1,0) | Pass; none |
| 6.4 mod-two orders | ℚ, n=1,…,8 | log₂ orders 2,2,2,1,1,0,1,1 at ℤ[1/2], from a=2,b=1,c=1,d=0 | Pass; none |
| 6.4 S-change and n=0 | (s,j)=(1,1)→(2,0); numerical n=0 | j+s−1=1 on both sides; n=0 formula excluded from positive-degree interpretation | Pass; none |
| 6.5 totally real ratio | ℚ, i=2,4 | 2·2/48=1/12=2/24; 2·1/240=1/120=2/240 | Pass; none |
| 6.6 div definition | ℚ, C₄, ℚ⊕C₄ | intersections mA are ℚ,0,ℚ⊕0 respectively | Pass; none |
| 6.6 div need not divisible | 2x=0, 2^n y_n=x | x∈∩mA, of order 2; div A=C₂ has 2·div A=0≠div A | Pass; none |
| 6.6 eventual coefficient kernel | A=C₄,T=2A | m=2: T∩2A=T=C₂; m=4: T∩4A=0=div A | Pass; none |
| 6.6 arithmetic negative control | Caputo's sextic field, p=3 | localized class part C₃, eventual wild/div part 0; a single exponent-3 stage is not eventual stabilization | Pass against cited example; none |
| 6.7 raw/positive/symbol kernels | ℚ,K₂; real sign generator | {−1,−1} has sign −1 and is outside K⁺; raw kernel=0; local symbol target uses w₁, not w₂ | Pass; none |
| 6.7 finite support | direct-sum element versus infinite tuple | a tuple supported at one v is admissible; tuple nonzero at every v has infinite support and is excluded | Pass; none |
| 6.8 Moore order | ℚ,i=1,ℓ=2 | WK order 1, K⁺ order 1, D(Q₂) order 2, D(ℚ) order 2: 1·2=1·2 | Pass; none |
| 6.8 added prime | ℓ=3,i=1,v=7 | residue order 7−1=6 has 3-part 3; omitting it loses a C₃ term | Pass; none |
| 6.9 strict Selmer specialization | one identity local map C₂→C₂ | strict kernel 0; relaxed condition kernel C₂; unrelated conditions cannot be identified | Pass; none |
| 6.9 real hidden subgroup | ℚ(√7), i=2 | symbol wild C₂→Sha²=0 has kernel order 2=2^ρ | Pass; none |
| 6.10 special/very special | ℚ; ℚ(i); ℚ(√−14); ℚ(√−17) | exceptional/non-special; nonexceptional; special/not very special; very special with dyadic Q₂(i) | Pass; none |
| 6.10 finite norm test | m=4,a=3; m=8,a=3 | norms 0 and multiplication 4; invariant groups both C₂, first norm not onto, second onto | Pass; none |
| 6.11 twisted descent | C₂ acts by −1 on C₄ | coinvariants C₂; H¹=C₂; discarding H¹ loses order 2 | Pass; none |
| 6.11 compatible Frobenius | fibre product over C₂ | permitted pairs (0,0),(1,1); independently chosen (0,1) excluded | Pass; none |
| 6.11 real norm | ℂ/ℝ and −1 | real norms positive; −1 not a norm, positive 1 is | Pass; none |
| 6.12 special obstruction | special field, i odd/even | symbol/div quotient orders 2/1; at ℚ non-special quotient order 1 | Pass; none |
| 6.12 hidden classes and completion | ℚ(√7), i=2 | hidden C₂⊂div K₄(F); its image in cohomological quotient 0 | Pass; none |
| 6.13 twist in Picard injection | p=5, χ(g)=2 | required eigenvalue 2⁻¹=3; twisted eigenvalue 3·2=1; wrong 2 gives 4 | Pass; none |
| 6.13 ramification allowed | ℚ(ζ₃), p=3 | e=2; theorem still applies, unlike an unramified-only variant | Pass; none |
| 6.14 presentation bounds | C₄↠C₂; empty presentation | upper 4 versus lower 2 insufficient; empty upper bound 1 forces zero group | Pass; none |
| 6.14 cohomological order/rank | C₂ versus C₄ | both mod-2 rank 1; orders 2 versus 4, so rank cannot replace order | Pass; none |
| 6.15 Adams degree slots | j=0,−1,1 | plus (0,0),(2,0),(2,2); minus at j=0 is (2,1), at −1 is (0,−1) | Pass; none |
| 6.15 dualization | odd weight j=1; even j=0 | eigenvalues −1,+1; over F₃ projectors use 1/2=2 | Pass; none |
| 6.16 ordinary comparison | ℤ→ℤ[1/p], p odd | K₁ mod p: 0→C_p; exceptional valuation term has order p | Pass; none |
| 7.1 Bernoulli conventions | k=0,1,2,6 | b_k=−1,1/6,1/30,691/2730; primed B₁=+1/2, arithmetic B₁=−1/2 | Pass; none |
| 7.1 w denominator identity | k=1,2,3,5 | B_(2k)/(4k)=1/24,−1/240,1/504,1/264 | Pass; none |
| 7.1 Voronoi mod p | p=5,a=2,n=2 | D=−55/2=5·(−11/2); residue 0 mod 5 | Pass; none |
| 7.1 Voronoi mod p² | p=7,a=3,n=4 | D=−250460/3; correction 101682; sum 54586/3=49·1114/3 | Pass; none |
| 7.2 all-index regular consequence | p=5,k=5,7,63 | B₁₀/5=1/66; B₁₄/7=1/6; B₁₂₆/63 has residue 1; all numerators nonzero mod 5 | Pass; none |
| 7.2 exceptional denominator branch | p=3,k=1; k=0 | 1/6 has numerator 1 and v₃=−1; totalized k=0 gives 0, excluded | Pass; none |
| 7.2 irregular control | p=37,k=16 | numerator B₃₂=−7709321041217=−37·208360028141; remainder 0 | Pass; none |
| 7.3 character exponent | p=37,k=16 | 1−32≡5 mod 36; opposite 31 is different | Pass; none |
| 7.3 projectors/Teichmüller | C₂ over F₃; lifts mod25 | e₊=(2,2),e₋=(2,1), sum=(1,0); weighted lift sum165, /5=33≡3 mod5 | Pass; none |
| 7.4 regular coefficient table | p=3,5; one period | dimensions (1,1,0,1); (1,1,0,0,0,1,0,1) | Pass; none |
| 7.4 root-choice invariance | F₅×, a=2 | a^(p−1)=2⁴=1 mod5; Bott-period class unchanged | Pass; none |
| 7.5 K₄(ℤ) endpoint | stable stem and mod2 obstruction | π₄^S=0 gives odd quotient 0; two-rank 0 gives dyadic group 0; total 0 | Pass; none |
| 7.5 spectrum H₃ | ℤ K-spectrum | ordinary H₃=C₂; odd localizations 0; not H₃(BGL) or π₃=C₄₈ | Pass; none |
| 7.5 PID scope control | O_(ℚ(√−19)) | class number 1 but GE₂ fails; rank-two common-basis graph disconnected | Pass; none |
| 7.5 zeta/order ratio | ℚ, k=1,2 | abs ζ(−1)=1/12=4/48; abs ζ(−3)=1/120=2/240 | Pass; none |
| 7.5 even orders | a=0,2 | K₂ order2, K₆ order1; K₂₂ order c₆=691, not c₅=1 | Pass; none |
| 7.5 global Vandiver table | degrees2,3,4,5,6,7 | C₂,C₄₈,0,ℤ,0,C₂₄₀; degree1 actual C₂ excludes free 8a+1 row at a=0 | Pass; none |
| 8.1 arithmetic record | golden generator ε | minpoly degree2 and generation force degree2; supplied “degree3” data fail equality 2=3 | Pass; none |
| 8.1 presentation completeness | upper C₂², real sign image | upper order4; two independent signs give lower order4; equality 4=4 | Pass; none |
| 8.2 one prime inverted | p=2,3 | K₄(ℤ[1/p])=C_(p²−1)=C₃,C₈; K₂=C₂⊕C_(p−1)=C₂,C₂² | Pass; none |
| 8.2 rational field | K₂(ℚ) | summands C₂ and F_p×; infinitely many nonzero; each nonzero finite-support element fails some divisibility test | Pass; none |
| 8.3 old-unit quotient | Gaussian π=1+i | 1+(1+i)i=i, so i∈U₁ and U/U₁=0 | Pass; none |
| 8.3 ordered symbol | ℚ, v=5 | t{2,5}=2; t{5,2}=3; α uses first pair | Pass; none |
| 8.4 small norm | rational a=6,b=1,v=5 | N(a−b)=5<25, quotient (a−b)/5=1; at a=26,b=1 equality25 permits two factors | Pass; none |
| 8.4 finite descent | support in first m primes | zero residue lowers m by1; repeated m times reaches0, no infinite limit used | Pass; none |
| 8.5 Gaussian small prime | q=5 | 8 representatives cover4 units; 1+1/√2≈1.707<√5≈2.236 | Pass; none |
| 8.5 Gaussian symbol | z={i,i} | 3z=0,4z=0⇒z=4z−3z=0; presentation order1 | Pass; none |
| 8.6 golden arithmetic | ε=(0,1) | ε²=(1,1)=1+ε; conjugate=(1,−1); norm −1 | Pass; none |
| 8.6 congruence covolume | golden, s=2,3 | (√5)^s q^(s−1)=5q,5√5q²; s=1 gives √5 | Pass; none |
| 8.6 Minkowski bound | golden n=2 | d=2√5/π≈1.423525; n=0 excluded, no 0-dimensional nonzero lattice point claimed | Pass; none |
| 8.7 cutoff | four golden inequalities | bounds≈32.422779,9.323882,2.884665,12.318229; all<33 | Pass; none |
| 8.7 inverse-ideal estimate | prime norm q′ | covolume scales by1/q′, norm bound √5/q′; an integral generator instead has norm q′ | Pass; none |
| 8.8 prime completeness | rational primes≤31 | inert 2,3 give norms4,9; ramified5 gives5; split11,19,29,31 give two each; next inert7 gives49>33 | Pass; none |
| 8.8 index implication | first norm11 prime | determinants60,−30,−10 have gcd10; residue image order10 forces index10 | Pass; none |
| 8.9 golden lower bound | {−1,−1},{−1,ε} | signs (−1,−1),(1,−1) generate C₂², order4 | Pass; none |
| 8.9 independent zeta check | golden w₂=120, tame order4 | 4/120=1/30=ζ_F(−1) | Pass; none |
| 8.10 K₃ examples | ℚ and ℚ(i) | C₄₈ versus ℤ⊕C₂₄; real correction doubles torsion only in first case | Pass; none |

**Full finite-relation audit (§8.8).** Coordinates (a,b) mean a+bε, with ε²=ε+1. Rows use the README’s prime order and local relation numbers. For exponent rows A,B,C, the two columns evaluate g^A−g^B and πg^C separately using rational arithmetic. All 173 equalities hold. The residue images generate the full multiplicative group at each of the eleven steps. The 23 signed maximal minors agree with the displayed values; their gcd and the residue-image order coincide, giving the claimed lattice index. These computations verify finite mathematical examples, not an added algorithmic roadmap target.

| π coordinates; norm | Relations | Signed minors computed | gcd | Residue-image order | Result/change |
| --- | ---: | --- | ---: | ---: | --- |
| (2, 0); 4 | 4 | 6, -3 | 3 | 3 | Pass; none |
| (-1, 2); 5 | 3 | 4 | 4 | 4 | Pass; none |
| (3, 0); 9 | 4 | 8 | 8 | 8 | Pass; none |
| (3, 1); 11 | 15 | 60, -30, -10 | 10 | 10 | Pass; none |
| (4, -1); 11 | 12 | 70, -20 | 10 | 10 | Pass; none |
| (4, 1); 19 | 14 | -54, -36 | 18 | 18 | Pass; none |
| (5, -1); 19 | 16 | 216, -18 | 18 | 18 | Pass; none |
| (5, 1); 29 | 27 | -168, -224, 420 | 28 | 28 | Pass; none |
| (6, -1); 29 | 20 | 56, 28 | 28 | 28 | Pass; none |
| (5, 2); 31 | 22 | 90, 60 | 30 | 30 | Pass; none |
| (7, -2); 31 | 36 | -180, -240, -90 | 30 | 30 | Pass; none |

| π; relation | g^A−g^B | πg^C | Result/change |
| --- | --- | --- | --- |
| (2, 0); 1 | (-10, 6) | (-10, 6) | Pass; none |
| (2, 0); 2 | (-4, -6) | (-4, -6) | Pass; none |
| (2, 0); 3 | (-6, -10) | (-6, -10) | Pass; none |
| (2, 0); 4 | (-2, 2) | (-2, 2) | Pass; none |
| (-1, 2); 1 | (-32, -16) | (-32, -16) | Pass; none |
| (-1, 2); 2 | (-4, -12) | (-4, -12) | Pass; none |
| (-1, 2); 3 | (-8, 6) | (-8, 6) | Pass; none |
| (3, 0); 1 | (-30, 15) | (-30, 15) | Pass; none |
| (3, 0); 2 | (-12, -6) | (-12, -6) | Pass; none |
| (3, 0); 3 | (-15, -15) | (-15, -15) | Pass; none |
| (3, 0); 4 | (0, -6) | (0, -6) | Pass; none |
| (3, 1); 1 | (-6, -24) | (-6, -24) | Pass; none |
| (3, 1); 2 | (-10, -18) | (-10, -18) | Pass; none |
| (3, 1); 3 | (-4, 6) | (-4, 6) | Pass; none |
| (3, 1); 4 | (-12, 18) | (-12, 18) | Pass; none |
| (3, 1); 5 | (-7, 5) | (-7, 5) | Pass; none |
| (3, 1); 6 | (-15, 6) | (-15, 6) | Pass; none |
| (3, 1); 7 | (-27, -9) | (-27, -9) | Pass; none |
| (3, 1); 8 | (-3, 21) | (-3, 21) | Pass; none |
| (3, 1); 9 | (-2, 14) | (-2, 14) | Pass; none |
| (3, 1); 10 | (-20, -25) | (-20, -25) | Pass; none |
| (3, 1); 11 | (-9, -3) | (-9, -3) | Pass; none |
| (3, 1); 12 | (-9, 8) | (-9, 8) | Pass; none |
| (3, 1); 13 | (-6, -13) | (-6, -13) | Pass; none |
| (3, 1); 14 | (-5, 2) | (-5, 2) | Pass; none |
| (3, 1); 15 | (-4, 28) | (-4, 28) | Pass; none |
| (4, -1); 1 | (-11, 0) | (-11, 0) | Pass; none |
| (4, -1); 2 | (-15, 12) | (-15, 12) | Pass; none |
| (4, -1); 3 | (-5, -7) | (-5, -7) | Pass; none |
| (4, -1); 4 | (-22, 22) | (-22, 22) | Pass; none |
| (4, -1); 5 | (-16, -18) | (-16, -18) | Pass; none |
| (4, -1); 6 | (-4, -10) | (-4, -10) | Pass; none |
| (4, -1); 7 | (-2, -5) | (-2, -5) | Pass; none |
| (4, -1); 8 | (-10, 8) | (-10, 8) | Pass; none |
| (4, -1); 9 | (-9, -6) | (-9, -6) | Pass; none |
| (4, -1); 10 | (-10, 8) | (-10, 8) | Pass; none |
| (4, -1); 11 | (-8, -20) | (-8, -20) | Pass; none |
| (4, -1); 12 | (-15, -21) | (-15, -21) | Pass; none |
| (4, 1); 1 | (-24, -6) | (-24, -6) | Pass; none |
| (4, 1); 2 | (-3, 4) | (-3, 4) | Pass; none |
| (4, 1); 3 | (-17, 10) | (-17, 10) | Pass; none |
| (4, 1); 4 | (-9, -7) | (-9, -7) | Pass; none |
| (4, 1); 5 | (-20, 14) | (-20, 14) | Pass; none |
| (4, 1); 6 | (-13, -8) | (-13, -8) | Pass; none |
| (4, 1); 7 | (-13, -8) | (-13, -8) | Pass; none |
| (4, 1); 8 | (-16, 15) | (-16, 15) | Pass; none |
| (4, 1); 9 | (-16, -4) | (-16, -4) | Pass; none |
| (4, 1); 10 | (-17, 10) | (-17, 10) | Pass; none |
| (4, 1); 11 | (-5, 13) | (-5, 13) | Pass; none |
| (4, 1); 12 | (-11, 2) | (-11, 2) | Pass; none |
| (4, 1); 13 | (-9, 12) | (-9, 12) | Pass; none |
| (4, 1); 14 | (-6, 8) | (-6, 8) | Pass; none |
| (5, -1); 1 | (-32, 14) | (-32, 14) | Pass; none |
| (5, -1); 2 | (-12, 10) | (-12, 10) | Pass; none |
| (5, -1); 3 | (-21, 8) | (-21, 8) | Pass; none |
| (5, -1); 4 | (-24, 20) | (-24, 20) | Pass; none |
| (5, -1); 5 | (-1, -15) | (-1, -15) | Pass; none |
| (5, -1); 6 | (-13, -5) | (-13, -5) | Pass; none |
| (5, -1); 7 | (-18, 15) | (-18, 15) | Pass; none |
| (5, -1); 8 | (-4, 16) | (-4, 16) | Pass; none |
| (5, -1); 9 | (-16, 7) | (-16, 7) | Pass; none |
| (5, -1); 10 | (-6, 24) | (-6, 24) | Pass; none |
| (5, -1); 11 | (-14, -1) | (-14, -1) | Pass; none |
| (5, -1); 12 | (-12, 10) | (-12, 10) | Pass; none |
| (5, -1); 13 | (-19, 19) | (-19, 19) | Pass; none |
| (5, -1); 14 | (-5, 20) | (-5, 20) | Pass; none |
| (5, -1); 15 | (-19, 19) | (-19, 19) | Pass; none |
| (5, -1); 16 | (-4, 16) | (-4, 16) | Pass; none |
| (5, 1); 1 | (-11, 21) | (-11, 21) | Pass; none |
| (5, 1); 2 | (-20, 25) | (-20, 25) | Pass; none |
| (5, 1); 3 | (-14, 3) | (-14, 3) | Pass; none |
| (5, 1); 4 | (-26, 18) | (-26, 18) | Pass; none |
| (5, 1); 5 | (-4, 5) | (-4, 5) | Pass; none |
| (5, 1); 6 | (-4, 5) | (-4, 5) | Pass; none |
| (5, 1); 7 | (-1, -6) | (-1, -6) | Pass; none |
| (5, 1); 8 | (-6, -7) | (-6, -7) | Pass; none |
| (5, 1); 9 | (-1, -6) | (-1, -6) | Pass; none |
| (5, 1); 10 | (-18, -21) | (-18, -21) | Pass; none |
| (5, 1); 11 | (-13, 9) | (-13, 9) | Pass; none |
| (5, 1); 12 | (-16, 20) | (-16, 20) | Pass; none |
| (5, 1); 13 | (-6, -7) | (-6, -7) | Pass; none |
| (5, 1); 14 | (-16, -9) | (-16, -9) | Pass; none |
| (5, 1); 15 | (-7, 16) | (-7, 16) | Pass; none |
| (5, 1); 16 | (-2, -12) | (-2, -12) | Pass; none |
| (5, 1); 17 | (-1, -6) | (-1, -6) | Pass; none |
| (5, 1); 18 | (-3, 11) | (-3, 11) | Pass; none |
| (5, 1); 19 | (-16, -9) | (-16, -9) | Pass; none |
| (5, 1); 20 | (-15, -3) | (-15, -3) | Pass; none |
| (5, 1); 21 | (-14, 3) | (-14, 3) | Pass; none |
| (5, 1); 22 | (-1, 23) | (-1, 23) | Pass; none |
| (5, 1); 23 | (-20, -4) | (-20, -4) | Pass; none |
| (5, 1); 24 | (-8, 10) | (-8, 10) | Pass; none |
| (5, 1); 25 | (-24, 1) | (-24, 1) | Pass; none |
| (5, 1); 26 | (-13, 9) | (-13, 9) | Pass; none |
| (5, 1); 27 | (-11, -8) | (-11, -8) | Pass; none |
| (6, -1); 1 | (-10, -8) | (-10, -8) | Pass; none |
| (6, -1); 2 | (-9, -13) | (-9, -13) | Pass; none |
| (6, -1); 3 | (-14, -17) | (-14, -17) | Pass; none |
| (6, -1); 4 | (-5, -4) | (-5, -4) | Pass; none |
| (6, -1); 5 | (-8, 11) | (-8, 11) | Pass; none |
| (6, -1); 6 | (-2, 10) | (-2, 10) | Pass; none |
| (6, -1); 7 | (-6, 1) | (-6, 1) | Pass; none |
| (6, -1); 8 | (-11, -3) | (-11, -3) | Pass; none |
| (6, -1); 9 | (-8, -18) | (-8, -18) | Pass; none |
| (6, -1); 10 | (-10, -8) | (-10, -8) | Pass; none |
| (6, -1); 11 | (-3, 15) | (-3, 15) | Pass; none |
| (6, -1); 12 | (-31, 10) | (-31, 10) | Pass; none |
| (6, -1); 13 | (-3, 15) | (-3, 15) | Pass; none |
| (6, -1); 14 | (-4, 20) | (-4, 20) | Pass; none |
| (6, -1); 15 | (-10, 21) | (-10, 21) | Pass; none |
| (6, -1); 16 | (-9, 16) | (-9, 16) | Pass; none |
| (6, -1); 17 | (-30, 5) | (-30, 5) | Pass; none |
| (6, -1); 18 | (-15, 17) | (-15, 17) | Pass; none |
| (6, -1); 19 | (-5, 25) | (-5, 25) | Pass; none |
| (6, -1); 20 | (-19, 8) | (-19, 8) | Pass; none |
| (5, 2); 1 | (-26, 2) | (-26, 2) | Pass; none |
| (5, 2); 2 | (-3, 5) | (-3, 5) | Pass; none |
| (5, 2); 3 | (-1, 12) | (-1, 12) | Pass; none |
| (5, 2); 4 | (-19, -20) | (-19, -20) | Pass; none |
| (5, 2); 5 | (-3, 5) | (-3, 5) | Pass; none |
| (5, 2); 6 | (-12, -11) | (-12, -11) | Pass; none |
| (5, 2); 7 | (-3, 5) | (-3, 5) | Pass; none |
| (5, 2); 8 | (-16, 6) | (-16, 6) | Pass; none |
| (5, 2); 9 | (-7, -9) | (-7, -9) | Pass; none |
| (5, 2); 10 | (-18, -1) | (-18, -1) | Pass; none |
| (5, 2); 11 | (-2, 24) | (-2, 24) | Pass; none |
| (5, 2); 12 | (-5, -2) | (-5, -2) | Pass; none |
| (5, 2); 13 | (-9, -16) | (-9, -16) | Pass; none |
| (5, 2); 14 | (-24, -22) | (-24, -22) | Pass; none |
| (5, 2); 15 | (-6, 10) | (-6, 10) | Pass; none |
| (5, 2); 16 | (-21, 4) | (-21, 4) | Pass; none |
| (5, 2); 17 | (-4, 17) | (-4, 17) | Pass; none |
| (5, 2); 18 | (-17, -13) | (-17, -13) | Pass; none |
| (5, 2); 19 | (-4, -14) | (-4, -14) | Pass; none |
| (5, 2); 20 | (-2, 24) | (-2, 24) | Pass; none |
| (5, 2); 21 | (-17, 18) | (-17, 18) | Pass; none |
| (5, 2); 22 | (-4, 17) | (-4, 17) | Pass; none |
| (7, -2); 1 | (-23, -20) | (-23, -20) | Pass; none |
| (7, -2); 2 | (-14, -27) | (-14, -27) | Pass; none |
| (7, -2); 3 | (-13, 17) | (-13, 17) | Pass; none |
| (7, -2); 4 | (-21, 6) | (-21, 6) | Pass; none |
| (7, -2); 5 | (-8, 20) | (-8, 20) | Pass; none |
| (7, -2); 6 | (-7, 2) | (-7, 2) | Pass; none |
| (7, -2); 7 | (-4, 10) | (-4, 10) | Pass; none |
| (7, -2); 8 | (-5, -3) | (-5, -3) | Pass; none |
| (7, -2); 9 | (-7, 2) | (-7, 2) | Pass; none |
| (7, -2); 10 | (-2, 5) | (-2, 5) | Pass; none |
| (7, -2); 11 | (-13, 17) | (-13, 17) | Pass; none |
| (7, -2); 12 | (-6, 15) | (-6, 15) | Pass; none |
| (7, -2); 13 | (-1, 18) | (-1, 18) | Pass; none |
| (7, -2); 14 | (-21, 6) | (-21, 6) | Pass; none |
| (7, -2); 15 | (-15, -9) | (-15, -9) | Pass; none |
| (7, -2); 16 | (-10, 25) | (-10, 25) | Pass; none |
| (7, -2); 17 | (-13, -14) | (-13, -14) | Pass; none |
| (7, -2); 18 | (-4, -21) | (-4, -21) | Pass; none |
| (7, -2); 19 | (-30, 13) | (-30, 13) | Pass; none |
| (7, -2); 20 | (-23, 11) | (-23, 11) | Pass; none |
| (7, -2); 21 | (-17, 27) | (-17, 27) | Pass; none |
| (7, -2); 22 | (-21, 6) | (-21, 6) | Pass; none |
| (7, -2); 23 | (-10, 25) | (-10, 25) | Pass; none |
| (7, -2); 24 | (-18, 14) | (-18, 14) | Pass; none |
| (7, -2); 25 | (-12, -1) | (-12, -1) | Pass; none |
| (7, -2); 26 | (-11, 12) | (-11, 12) | Pass; none |
| (7, -2); 27 | (-11, 12) | (-11, 12) | Pass; none |
| (7, -2); 28 | (-7, -29) | (-7, -29) | Pass; none |
| (7, -2); 29 | (-1, 18) | (-1, 18) | Pass; none |
| (7, -2); 30 | (-31, 0) | (-31, 0) | Pass; none |
| (7, -2); 31 | (-11, 12) | (-11, 12) | Pass; none |
| (7, -2); 32 | (-8, 20) | (-8, 20) | Pass; none |
| (7, -2); 33 | (-3, 23) | (-3, 23) | Pass; none |
| (7, -2); 34 | (-31, 0) | (-31, 0) | Pass; none |
| (7, -2); 35 | (-26, 3) | (-26, 3) | Pass; none |
| (7, -2); 36 | (-17, 27) | (-17, 27) | Pass; none |

## Not verifiable

The following six source entries are settled as waived. Their locators are retained without certification of the inaccessible primary text; none was requested again. The supplied manifest/brief identifies the attempted legal locations. Independent calculations and readable supporting sources are distinguished above from checking these texts themselves.

- `harris-segal`: §3, pp.20–33, detected arithmetic torsion. The manifest’s publisher/DOI record is settled as waived; the primary proof was not read.
- `mitchell`: §3, Theorem 3.4 and proof sketch, pp.184–186, stable-transfer detection. The listed Rochester institutional copy is settled as waived.
- `quillen`: §1, pp.179–185, arithmetic finite generation. The listed Rochester institutional copy is settled as waived; Kahn, Sun and the K-book were read for the surrounding route.
- `bass-tate`: II §3 and Appendix Proposition 1, especially pp.429–446, the unit criterion. The listed institutional volume is settled as waived. The K-book’s Gaussian result and the roadmap’s finite relations were checked independently.
- `serre`: III §1, IV §§3,6 and V §§1–2, pp.425–505, the H-space finite-type argument. The listed institutional scan is settled as waived; the named stable-homotopy supplier was resolved.
- `groenewegen-preprint`: printed pp.1–16, especially pp.6–7. The listed Leiden preprint is settled as waived. The readable journal text was checked at the corresponding numbered results; preprint pagination itself remains uncertified.

The readable `wildkernel` cache is OCR of the legal Rutgers author PDF. Lemma 7.4’s statement at `wildkernel line 565`–566 is corrupted beyond reliable transcription. Its following localization proof, adjacent Lemmas 7.2–7.3 and later conclusions were readable, but this review does not certify the exact wording of that damaged statement. No missing-text request or manifest change was made.

The finite computations above are evidence against the stated defect classes, not formal proofs of the unfinished higher-K targets. In particular, the three `sorry` declarations elaborate; they have not been proved by this review. Acceptance is withheld for R01, independently of these source-access limitations.

## Source issues

These are errors in the cited texts, not additional findings against the roadmap, which distinguishes or corrects the affected formulas. Source line numbers below refer to the supplied extractions.

- **Misprint** in kbook at V.6.8 proof, printed p.413 (`kbook line 24785`): the source says the boundary of x equals the Bott power times the boundary of x; it should be the Bott power times the boundary of s; affects the proof.
- **Error** in kbook at V.6.8.2, printed p.413 (`kbook line 24801`): the source says any modulus annihilating integral torsion identifies the coefficient kernel with all divisible elements; it should be an eventual modulus, or retain the fixed-modulus intersection T∩mK; affects a stated result.
- **Error** in kbook at V.6.8.2, printed p.413 (`kbook line 24803`): the source says divisibility equals the unqualified completion wild kernel for every number field; it should be distinguished from the symbol wild kernel, whose quotient by divisibility has order two in special fields at odd weight; affects a stated result.
- **Error** in kbook at V.6.9.2, printed p.414 (`kbook line 24898`): the source says the odd-degree DVR-to-fraction-field map is an isomorphism for every i>0; it should be restricted to i≥2, since at i=1 valuation gives a nonzero ℤ quotient; affects a stated result.
- **Misprint** in kbook at VI.2.1.2, printed p.470 (`kbook line 28420`): the source says w₁₀(ℚ)=1320; it should be 264, with no factor five because four does not divide ten; affects a stated result.
- **Error** in kbook at the paragraph after VI.2.3, printed p.471 (`kbook line 28509`): the source says ℝ is exceptional; it should be omitted from that assertion, since its cyclotomic extensions have cyclic Galois group of order at most two; affects a stated result.
- **Misprint** in kbook at VI.8.1 introduction, printed p.513 (`kbook line 31276`): the source says positive even K-groups of the number field are finite; it should be the K-groups of its finite-S integer ring; affects a stated result.
- **Misprint** in kbook at VI.9.12 proof, printed p.525 (`kbook line 32114`): the source says the exceptional even-group order is h₁,ᵢ(2)/2^r₁; it should be h₂,ᵢ(2)/2^r₁; affects the proof.
- **Misprint** in kbook at VI.10.1(6), printed p.527 (`kbook line 32192`): the source says the order in degree 8k+6 is c₂ₖ₊₁; it should be c₂ₖ₊₂, giving 691 in degree 22; affects a stated result; corrected in print at Table 10.1.1, printed p.528.
- **Misprint** in caputo at Example 2, printed p.17 (`caputo line 852`): the source says the degree-p field E splits totally at three under the general order hypothesis; it should be at p, before specializing p=3; affects the proof.
