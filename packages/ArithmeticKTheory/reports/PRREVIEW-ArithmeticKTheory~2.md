# Review of ArithmeticKTheory (pull request #1418 at 00f60c5)

**Verdict:** accepted

No new findings. Acceptance is conditional on the two declared supplier contracts below, and means ready for human final approval, not approval or merge by this review.

The previous findings were checked before the full review:

- **Previous R01, repaired.** `TauCetiRoadmap/ArithmeticKTheory/README.md:254` now says “What StableHomotopyKTheory must provide (gap:connective-c2-homotopy-orbit-spectral-sequence)”; line 393 similarly assigns `gap:number-ring-witt-signature` to GeometryOfNumbersAndQuadraticArithmetic. Section 3.5 consumes these constructions to prove arithmetic finiteness. The two slugs agree with `packages/ArithmeticKTheory/design/plan.json`. The first contract specifies a connective spectrum, coherent action, actual coefficient module, convergence and filtration; the second specifies number fields, finite S, the symmetric Witt carrier, the actual real-signature map, finite kernel and full-rank image. Neither is left to an unnamed supplier or reconstructed locally. The finite-group extension uses the same skeletal construction. Generic filtered-spectrum machinery and integral-ℤ signature calculations do not already supply these two arithmetic interfaces.
- **Previous R02, repaired.** `TauCetiRoadmap/ArithmeticKTheory/README.md:561` replaces the unrelated K-book locator with `IsLocalization.isLocalization_of_submonoid_le`. Its pinned signature in `Mathlib/RingTheory/Localization/LocalizationLocalization.lean:193` is localization in stages for nested submonoids, with the algebra/scalar-tower hypotheses. The preceding §1.1 supplies the denominator identification needed to apply it. The identity inclusion and ℤ → ℤ[1/2] → ℤ[1/6] tests have the asserted localization maps.

## Verified sound

This was a full review of all **52 numbered subsections**, the conventions and supplier contracts, and all **four Lean declarations**. I read the repository's writing checklist and contribution rules, and compared the shape with `TauCetiRoadmap/Completed/EffectiveBounds/README.md` and `TauCetiRoadmap/Completed/HeightsAndUnits/README.md`. The retained definitions have prose APIs and at least three discriminating Checks; the eight layers have examples and dependencies. The finite lists of relations are mathematical witnesses, not a proposed computational algorithm. No route excludes bad arithmetic primes, no existing roadmap is re-planned, and no source text is embedded as a substitute for the author's statements.

### Gate, elaboration and signatures

The reviewed git head is `00f60c528eba38c504cec460388d34fab3dc4a56`. The diff outside `TauCetiRoadmap/ArithmeticKTheory` is empty. The worker's gate reports:

```text
gate ArithmeticKTheory: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

I independently ran the prescribed dependency check:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. I also ran direct `lake env lean` on the original `Suggested.lean`: successful elaboration, with precisely the three expected `sorry` warnings. A scratch copy with `#check @name` for each of the four declarations also elaborated. The elaborated types retain the Dedekind, field, algebra and fraction-ring binders; arbitrary S; the class-group torsion hypothesis; and primality, oddness, class-number regularity and k≥1. No binder or mathematical statement changed.

The three admitted theorems were each tried with `rfl`, `simp` and `infer_instance` in a scratch copy; none closed. Searching the relevant pinned localization, S-integer and Bernoulli objects did not find a single existing lemma giving one of these conclusions. The second localization theorem requires the torsion-class-group argument, not merely unfolding a definition. The regular-prime statement extends a finite criterion to every positive divided-Bernoulli index. None is a boundary-case computation or a renamed library fact.

### Headline coverage

| README result | Acceptance-test disposition |
| --- | --- |
| §1.1 localization criterion for arbitrary S and denominator submonoid M | `integer_isLocalization_iff`, with the real-bodied `sUnitSubmonoid` definition. The zero denominator is excluded by invertibility, not by an unstated nonzero hypothesis. |
| §1.1 localization under torsion of the whole class group | `integer_isLocalization_of_torsion_classGroup`; no finite-S or PID restriction. |
| §7.2 regular-prime nondivisibility for every B₂k/k, k≥1 | `regularPrime_dividedBernoulli_num`; the native cyclotomic class number and Bernoulli number appear in the signature. |
| §§3.2–3.4 Quillen finite generation, actual rational localization, ranks for orders and number rings | Named as not statable in the module docstring: genuine higher Quillen groups and their maps are missing at the pins. The finite-CW arithmetic model likewise lacks its bordification/quotient carrier. |
| §3.5 symmetric, quadratic and genuine hermitian finiteness | Named as not statable: the required GW/L spectra and comparison maps are absent. Exact K₀ alone is insufficient. |
| §§5.1–5.5 Soulé, e-invariant, odd integral groups, real extensions and Harris–Segal | Named as not statable: higher K-groups, coefficient spectra, maps and descent objects. |
| §§6.1–6.13 even primary groups, real dyadic table, wild kernels, divisibility and special-field obstruction | Named as not statable on the genuine higher K/cohomology comparison carriers. No arbitrary-group surrogate is offered. |
| §§6.15–6.16 all-integer Bott tables and comparison | Named as not statable: Bott-inverted spectra and their actual comparison maps. |
| §7.5 H₃(Kℤ;ℤ), K₄(ℤ)=0, special-value orders, integer table and conditional Vandiver consequences | Named as not statable: ordinary spectrum homology and higher K carriers; the arithmetic hypotheses are not encoded as empty predicates. |
| §§8.5, 8.8–8.10 Gaussian/golden tame-kernel presentations and arithmetic K₃ examples | Named as not statable on their actual K-groups. The elementary matched-order argument in §6.14 is an API ingredient, not an omitted deep headline. |

### Seeded source sample

These are checks of the stated hypotheses and locator text, not inferences from a successful Lean build. Source line numbers below refer to the supplied extractions. Settled waived originals are distinguished in **Not verifiable**.

| Sampled target | Text opened and conclusion |
| --- | --- |
| 1.2 Enlarging primes and extending fields | The repaired first claim is supported by pinned `IsLocalization.isLocalization_of_submonoid_le`, file above, line 193. K-book V.6.1, p.406 (`kbook line 24313`), supplies the regular localization context. Finite projectivity uses precisely the full inverse image of S in the number-field extension; arbitrary extra upper primes are not asserted finite over the lower ring. |
| 2.3 Residue transfer and ramification-weighted restriction | K-book V.6.6 and V.6.6.3, pp.409–410, `kbook line 24532` onward: residue transfer uses the residue extension, while flat restriction retains the local length/ramification factor. SchemeKTheoryOperations §3.6 supplies `dvrBoundary_flat_ramification`, §3.7 the transfer square. The e/f distinction survives the degree-zero tests below. |
| 2.4 Even injectivity and what exactness supplies | K-book IV.1.13 and V.6.6, pp.269,409, `kbook line 15636` and line 24532: positive even finite-field K vanishes. The zero preceding term proves even injectivity. Odd surjectivity follows here, while odd injectivity is reserved for Soulé. |
| 3.4 Ranks, finite even groups and infinite field groups | K-book IV.1.17–1.18, pp.270–271, `kbook line 15726` onward: rational comparison and Borel ranks for orders. Finite generation is used for the number ring, not falsely attributed to even field K-groups. Degree zero is explicitly separated. |
| 4.3 Exceptional fields and the dyadic formula | K-book VI.2.2–2.3, pp.470–471, `kbook line 28465` onward; Rognes–Weibel Definition 1.7 and Propositions 1.8–1.9, pp.6–7, `rognes-weibel line 365` onward. The cyclotomic Galois exponent, finite root count and exceptional/nonexceptional distinction are retained. The README does not repeat the K-book's assertion about ℝ. |
| 5.2 The e-invariant and the first descent edge | K-book VI.1.3–1.7.1, pp.464–468 (`kbook line 28097`, line 28322), and VI.8.2–8.5/9.1–9.4, pp.513–519 (`kbook line 31312`, line 31663); `rognes-weibel line 356` explicitly identifies the torsion projection and restriction to the separable closure. The field-cycle supplier is not misrepresented as already covering mixed-characteristic integer bases: that extension is a target here. Bott Bockstein fixes the normalization. |
| 5.4 Diagonal extensions and real places | Rognes–Weibel Theorem 6.7, pp.32–33, `rognes-weibel line 1640` onward, especially the extension argument at line 1732; Theorem 6.9, pp.33–34. Abelian diagonal extensions, the real corrections and their congruence classes agree. An abstract nonabelian extension is not silently classified by the abelian argument. |
| 6.3 The real dyadic integral table | K-book VI.9.10, Example 9.10.1 and Theorem 9.11, pp.523–525, `kbook line 32010` onward. The degree-4 hidden kernel has rank ρ, with j≤ρ≤r₁−1; it is not a function of r₁ alone. The 8k+4 row remains an extension and the 8k+6 row uses the real-restriction kernel. |
| 6.12 Divisibility, special-field obstruction and completion boundary | `wildkernel line 556`, line 567, line 602 and line 655, §§7–8, pp.18–21; Hutchinson Lemma 5.2, Corollaries 5.3–5.4, 5.6–5.7, pp.18–19, `hutchinson line 800`, line 829 and line 858. These support the H² comparison, ambient divisibility and order-two special-field obstruction. Raw completion equality is only asserted in degree two. The damaged OCR in one displayed lemma is noted below. |
| 6.14 Finite presentations with independent lower bounds | Native `Module.Relations.Solution` quotient/span lemmas and `IsPresentation`, `Mathlib/Algebra/Module/Presentation/Basic.lean:250`, :266, :272, :283. Two surjections with matching finite orders force bijectivity; the relation solution alone does not. K-book III.5.2.2 and III.6.2.1, pp.218,232, are arithmetic examples, not purported sources of the generic native API. |
| 6.16 Comparison with ordinary K-theory and degree one | FGV Proposition 2.9, Lemmas 2.10–2.11 and 2.14, pp.12–15, `fgv line 510` onward. The ordinary/Bott comparison keeps the degree-one exception over ℤ, and handles the rank/Picard degree-zero term separately. All periodic weights are integer-valued. |
| 8.2 Integers, one inverted prime and the rational field | K-book III.6.5.1, p.236, `kbook line 13575`, gives the split rational tame sequence. V.6.6 and Soulé give the higher localization applications. Existing K₂(ℤ), K₂(ℚ) and low-degree maps are cited to K2SymbolsBrauer/KTheoryLowDegrees, rather than re-owned. |
| 8.3 Tate's filtration and the unit quotient | Groenewegen Lemma 7 and its triangle, journal pp.1448–1449 (preprint pp.6–7), `groenewegen line 265` onward: the old-unit quotient and the induced residue map support the filtration argument. The Bass–Tate original remains waived. Tate's uniformizer-last convention is explicitly inverse to the right-linear K-boundary. |
| 8.6 Congruence lattices in the golden field | Groenewegen Lemmas 6, 9, 12 and their proofs, journal pp.1447,1450,1453, `groenewegen line 226`, line 333, line 470. The kernel lattice has index q^(s−1); the same argument extends the displayed pair/triple cases to arbitrary s. The README uses Minkowski with density bound 1 and the specified complex measure, and retains t<q for old-unit membership. |
| 8.8 Finite residue relations and lattice indices | Groenewegen Lemma 7, `groenewegen line 265`, and native lattice index/determinant comparison justify the quotient argument. The 173 identities and 23 selected minors are the author's explicit data, not attributed to a source table; I recomputed all of them exactly, as recorded below. |

No unresolved locator was labelled “unverified” in the README. I also inspected the source signatures used in §§7.1–7.3 at the cited AINTLIB commit: Main's finite `kummer_criterion` (`aintlib`, Main line 26), restricted divided integrality (VonStaudtClausen line 146), restricted Kummer congruence (Kummer line 154), the finite-range Teichmüller bridge (Bridge line 265), and the implication in Herbrand/Basic line 178. Their extra index hypotheses are explicitly retained when describing the source. The unrestricted extension is assigned to CyclotomicClassGroupsAndStickelberger §3.1, not claimed to be a theorem of that source. Rognes's published component-filtration argument and low spectrum-homology calculation were also opened: `rognes-k4 line 290`, line 303, line 339 and line 342, §§7–8, pp.278–280.

### Computed adversarial pass

Notation: Cₘ denotes the cyclic group of order m, and 0 the trivial additive group. “Pass; retain” means the stated hypotheses exclude the displayed negative control; it does not mean a theorem has been formally proved. Values separated by `=` compare the independently evaluated sides. Groups and dimensions are computed in the indicated small model. The 132 rows in this table and 11 detailed residue rows below cover every numbered target, all sampled targets, the headline results and the convention adapters.

| Statement | Instances tried | Values computed on each side | Result / change |
| --- | --- | --- | --- |
| §1.1 S-unit denominator submonoid | ℤ, S=∅ and S={2} | Units are {±1} and {±2ᵃ:a≥0}; 2 is admitted only in the second, 3 in neither; 0 is in neither | Pass; retain |
| §1.1 localization criterion, both directions | M={1}, S=∅; M=⟨2⟩, S={2}; M={1}, S={2} | Rings ℤ=ℤ, ℤ[1/2]=ℤ[1/2]; last RHS lacks an element in (2), and 1/2 is missing from the proposed localization | Pass; retain |
| §1.1 class torsion and nonprincipal primes | Class number 2, p²=(2) in ℤ[√−5] | The prime class has order 2; denominator 2 lies in p and is supported on p; requiring p itself principal would incorrectly give no denominator | Pass; retain |
| §1.1 empty height-one spectrum | R a field | Spec¹(R)=∅, S-integers=R, denominator submonoid=Rˣ | Pass; no fictitious closed prime |
| §1.2 S enlargement and composition | ∅⊆{2}⊆{2,3} over ℚ | ℤ→ℤ[1/2]→ℤ[1/6]; both composites send 1/6 to 1/6; identity sends x to x | Pass; repaired locator |
| §1.2 exact inverse image of S | ℚ(i)/ℚ, S=∅; invert 2+i upstairs only | ℤ[i] has rank 2; N((2+i)⁻¹)=1/5, so the enlarged upper element is not integral | Pass; full-inverse-image hypothesis needed |
| §1.3 K₀ transfer and Steinitz power | degree d=2, virtual ranks 0,1,−1 | Rank outputs 0,2,−2; determinant correction 1,c_B,c_B⁻¹ respectively | Pass; negative ranks retained |
| §1.3 K₁ norm/transfer | ℚ(i)/ℚ, −1 and i | N(−1)=1=(−1)²; N(i)=1 | Pass; same extension map |
| §2.1 residue index set | Field; DVR; S containing one prime | 0 coordinates; 1 coordinate; that inverted prime contributes 0 remaining coordinates | Pass; no maximal zero ideal |
| §2.1 raw Bockstein sign | ζ₅ reducing to 3 at 11 | Raw composites 3⁻¹=4 and 3; signed adapter changes 4 to 3 | Pass; anticommutation not commutation |
| §2.1 coefficient reductions | C₄, coefficient levels 4→2 | Quotient reduction sends 1 mod4 to 1 mod2; torsion transition is multiplication by 2, sending 1 mod4 to 2 mod4 | Pass; distinct maps retained |
| §2.2 uniformizer/tame sign | π=5,u=2 | β{5,2}=2, β{2,5}=3 in 𝔽₅ˣ; inverse symbol gives 3,2 | Pass; fixes inverse convention |
| §2.2 native valuation adapter | uniformizer, its inverse, unit | Native exponents −1,1,0; positive orders 1,−1,0 | Pass; negate exactly once |
| §2.2 inverse ideal in K₀ | 0→p→R→R/p→0 | [R/p]=(0,[p]⁻¹); for class c of order 3 this is c², not c | Pass; sign visible beyond C₂ |
| §2.3 ramified restriction versus transfer | Quadratic totally ramified DVR extension | On residue K₀, restriction 1↦2, transfer 1↦1; e=2,f=1 | Pass; e and f not interchanged |
| §2.3 unramified restriction versus transfer | Quadratic unramified extension | Restriction 1↦1, transfer 1↦2; e=1,f=2 | Pass |
| §2.3 multiplicative and tower conventions | e=2,u=2 mod5; indices 2 then 3 | uᵉ=4; composite multiplicity 2·3=6 | Pass |
| §2.3 split primes | Two degree-one primes above v | Restriction is x↦(x,x); transfer is (a,b)↦a+b; composite 2x | Pass; direct sum retained |
| §2.4 exactness consequences | n=4 and residue 𝔽₂; n=3 | Preceding K₄(𝔽₂)=0; K₃(𝔽₂)=C₃ has order 3, so exactness alone does not erase the odd kernel | Pass |
| §3.1 proper layer poset | dim V=0,1,2 over 𝔽₂ | Proper layer-pair counts 0,2,11; adding (0,V) adds a terminal object, changing reduced homology to 0 | Pass; exclusion necessary |
| §3.1 projective rank strata | Rank 1 over a nontrivial Picard group | One stratum for each ideal class; retaining only the principal class gives 1 rather than #Pic strata | Pass |
| §3.2 Tits/Steinberg normalization | dim1; dim2 over 𝔽₂ | Empty building has H̃₋₁=ℤ; three lines give H̃₀=ℤ², with rank 3−1=2 | Pass |
| §3.2 neat finite CW model | Rational rank-one quotient; real quadratic rank-one quotient | Point and circle: integral homology (ℤ,0,…) and (ℤ,ℤ,0,…) | Pass |
| §3.2 collar exhaustion | collar parameter t=1/2 in 1/t | Value 2 and derivative −4; no critical point in the prescribed collar | Pass; relative Morse input applies |
| §3.2 torsion-free necessity | C_p acting on a point | Quotient point has H₂=0; BC_p has H₂(−;𝔽_p)=𝔽_p | Pass; compact orbit space alone insufficient |
| §3.2 orientation character | diag(−1,1,…), m=2 and 3 | sign(Ndet)^(m−1)=−1 and +1 | Pass; orientation twist retained |
| §3.2 relative homology shift | m=1,i=1 and i=0 | H_(i−m) gives H₀ and H₋₁=0; rank-one top contribution is ⊕Pic ℤ | Pass; integer indexing |
| §3.2 stability ranges | i=0,1; ranks m=i and i+1 | Surjectivity thresholds 0,1; isomorphism thresholds 1,2, respectively | Pass; no extra isomorphism at the boundary |
| §3.2 finite-generation criterion | BQ for a number ring | π₁BQ=K₀=ℤ⊕Pic, not 0; connected abelian-space theorem permits this π₁ | Pass; no unjustified simple connectivity |
| §3.3 actual rational localization | ℤ⊂ℤ[1/2], n=5 and n=1 | Rank at n=5 is 1 on both sides; unit ranks at n=1 are 0 and 1 | Pass; n≥2 essential |
| §3.3 map normalization | Rank-one rational summand, identity inclusion | Actual map sends x to x; arbitrary replacement 2x changes the marked map despite being a ℚ-isomorphism | Pass; actual map specified |
| §3.4 Borel ranks | ℚ and ℚ(i), n=3,5 | Ranks (0,1) and (1,1); matrix algebras keep these ranks, two field factors double them | Pass |
| §3.4 degree-zero boundary | ℚ, n=0 | Positive-degree rank formula's default 0 differs from rank K₀=1 | Pass; n=0 excluded |
| §3.4 ring/field finiteness | K₂(ℤ), K₂(ℚ) | Orders 2 and ∞; field group is torsion with residues C_(p−1) of unbounded order | Pass; ring/field distinction retained |
| §3.5 quadratic Witt injection | q with bilinearization zero on L, char fraction field≠2 | b(x,x)=2q(x)=0 gives q(x)=0; in characteristic 2, 2q=0 permits q=1 | Pass; characteristic hypothesis needed |
| §3.5 L-degree tables | ℤ, positive symmetric/quadratic sign, degrees 0–3 | Symmetric (ℤ,C₂,0,0); quadratic (ℤ,0,C₂,0); changing coefficient sign shifts by 2 | Pass |
| §3.5 real signature contract | Golden field lines ⟨1⟩,⟨ε⟩; hyperbolic plane | Signature vectors (1,1),(1,−1), determinant −2; hyperbolic vector (0,0) | Pass; full rank does not mean onto ℤ² |
| §3.5 no real places | ℚ(i) | Signature target ℤ⁰=0; finite kernel assertion is finiteness of the whole Witt group | Pass |
| §3.5 orbit spectral sequence | Hℤ with trivial C₂ action | H₀,H₁,H₂=(ℤ,C₂,0); degree-zero coinvariants ℤ=π₀ of orbits | Pass; conditional supplier contract |
| §3.5 nontrivial action | Hℤ with sign C₂ action | H₀,H₁,H₂=(C₂,0,C₂), not the trivial-action sequence | Pass; actual module required |
| §3.5 connectivity/finite-group controls | ΣHℤ; zero spectrum; S₃ trivial action | Orbit π₀,π₁,π₂=(0,ℤ,C₂); zero gives (0,0,0); H₁(S₃;ℤ)=C₂ | Pass; finite diagonals and nonabelian control |
| §3.5 genuine comparison ranges | m=0 and m=1 | Low/high ranges end/start at −2/−1 and 0/1 | Pass; all integer degrees covered |
| §4.1 fixed twists | 𝔽₃, i=1,2; ℚ,i=0 | Orders 3−1=2,3²−1=8; weight-zero fixed ℚ/ℤ is infinite | Pass; no finite w₀ |
| §4.1 tensor and functoriality | ℚ/ℤ tensor ℚ/ℤ; extension degree2 | Ordinary tensor is 0, unlike the Tate twist; corestriction∘restriction is 2 | Pass; wrong twist model excluded |
| §4.2 odd-primary exponent | ℚ, ℓ=3, i=1,2,6 | Orders 1,3,9; corresponding exponents divide i precisely in those ranges | Pass |
| §4.3 exceptional predicate | ℚ,ℚ(i),ℚ(√−7),ℚ(√−2),ℝ | Exceptional values true,false,true,false,false; Gal(ℂ/ℝ)=C₂ is cyclic | Pass; source's ℝ error avoided |
| §4.3 dyadic root threshold | ℚ,ℚ(i),ℚ(√−2), weight2 | a=2,2,3 gives order 8,8,8; last is not 16 | Pass; branch distinction discriminates |
| §4.3 weight-one dyadic behavior | ℚ and ℚ(i) | Fixed roots have orders 2 and 4 | Pass |
| §4.4 rational w-values | i=2,4,6,10,12 | Bernoulli denominators give 24,240,504,264,65520, equal to primary products | Pass; w₁₀≠1320 |
| §4.4 sign of weight | i=2 and −2 over ℚ | Both fixed-group orders 24; inverse character has the same kernel | Pass |
| §5.1 Soulé degree threshold | ℤ→ℚ, n=3 and n=1 | K₃ is C₄₈ on both sides; units ±1 omit 2∈ℚˣ | Pass; n=1 excluded |
| §5.1 finite-field boundary | q=2,i=1 and 2 | qⁱ−1=1 and 3; first residue group 0, second C₃ | Pass; trivial residue allowed |
| §5.2 norm-residue diagonal | 𝔽₅, a=0,1, ℓ=2 | Degree-zero 1↦1; squareclasses have order2 with 2 nonzero | Pass |
| §5.2 Suslin normalization | ζ₅↦ζ₅², weight2 | Action scalar 2²=4 mod5, not 2 | Pass; twist fixed by Bott |
| §5.2 arithmetic motivic extension | ℤ[1/5], weight1 | H¹={±5ⁿ}, H²=Pic=0; class 3 over ℚ has boundary 1 at 3 | Pass; correct arithmetic base |
| §5.2 coefficient Bockstein | 𝔽₅, modulus2, weight1 | μ₂=C₂→C₄[2]={1,−1}; nonzero class maps to −1 | Pass; zero map excluded |
| §5.2 weight separation | ℤ[1/2], modulus2 | Weight-one unit-square group has 4 elements; weight-zero H⁰ has 2 | Pass |
| §5.2 e-invariant real defect | ℚ, degrees3 and5 | C₄₈→C₂₄ has kernel C₂; 0→W₃=C₂ has cokernel C₂ | Pass; not a uniform isomorphism |
| §5.3 imaginary odd integral table | ℚ(i), degree3 | Free rank1 and torsion C₂₄ give ℤ⊕C₂₄ | Pass |
| §5.4 real Bott coefficients | Degrees0–7 | KO groups (ℤ,C₂,C₂,0,ℤ,0,0,0); mod2 orders (2,2,4,2,2,1,1,1) | Pass; degree2 extension is C₄ |
| §5.4 complexification | Degrees0 and4 | Multipliers 1 and2, so quaternionic generator maps to twice the complex one | Pass |
| §5.4 diagonal abelian extension | (w,r)=(24,1),(2,2),(8,2) | Groups C₄₈, C₄⊕C₂, C₁₆⊕C₂; orders 48,8,32 equal w·2ʳ | Pass |
| §5.4 nonabelian negative control | D₈ with rotation a and reflection s | a² is nonzero central kernel, but (as)²=1; lift-square data differ from the abelian diagonal law | Pass; abelian hypothesis retained |
| §5.4 rational odd degrees | n=3,5 | C₄₈ and ℤ; dyadic torsion orders 16 and1 | Pass |
| §5.5 transfer-detected summand | q=7,ℓ=3,rank2 | #GL₂(𝔽₇)=2016, wreath subgroup order18, index112 prime to3 | Pass |
| §5.5 full root subgroup | q=19,ℓ=3 | μ₃ has index6 divisible by3; μ₉ has index2 prime to3 | Pass; truncated roots would fail |
| §5.5 cyclic norm obstruction | C₈ acted on by3 or7 | Action3: N=4, invariant subgroup {0,4}; inversion7: N=0 | Pass; exceptional norm case retained |
| §6.1 even étale comparison | ℚ(i) with one dyadic prime and trivial localized Picard group | Degree-two dyadic rank t+s−1=0; group order1 | Pass |
| §6.1 real negative control | ℚ, degree6 | K₆ dyadic group 0; unreduced real H² in twist4 has order2 | Pass; real hypothesis/table distinguished |
| §6.2 signature defect | ℚ; ℚ(√7), S=∅ and S containing7 | Defects 0;1 and0 | Pass; support matters |
| §6.2 Selmer rather than unit signatures | ℚ(√34), 5+√34 | Norm=25−34=−9; opposite real signs give defect0, whereas unit signatures alone give1 | Pass |
| §6.3 hidden real subgroup | ℚ(√2), ℚ(√7) | ρ=0 and1 with r₁=2 in both; for √7, K₄{2}=C₂ but H²=0 | Pass; kernel not erased |
| §6.3 low-degree exclusions | ℚ, n=0,1,5 | K₀ has rank1, K₁ torsion C₂; n5 torsion0; n0/1 are outside the n≥2 table | Pass |
| §6.4 two-rank function | (r,s,t,j)=(1,1,0,0), n=2,4,6,8 | Ranks (1,0,0,0), giving group mod2 orders (2,1,1,1) | Pass |
| §6.4 real/signature correction | (r,s,t,j)=(2,1,0,1), same degrees | Ranks (2,1,1,0), orders (4,2,2,1) | Pass |
| §6.4 subtraction boundary | Natural s=0 and s=1 | s−1=0 in both, so the claimed increment cannot be extended to s=0 | Pass; s≥1 retained |
| §6.5 total-real order ratio | ℚ, weights2 and4 | 2·2/48=1/12 and 2·1/240=1/120, equal to the absolute zeta values | Pass; real factor retained |
| §6.6 intersection divisibility | ℤ,ℚ,C₄,ℚ⊕C₄,ℚ/ℤ | Intersections are 0,ℚ,0,ℚ⊕0,ℚ/ℤ respectively | Pass; not just torsion |
| §6.6 nondivisible intersection | 2x=0, 2ⁿyₙ=x in the presented group | x has roots at every level; intersection contains C₂, whose internal doubling is0 | Pass; ambient roots distinguished |
| §6.6 fixed-modulus trap | A=C₄,T=2A,m=2 then4 | T∩2A=C₂ but div A=0; T∩4A=0 | Pass; annihilating T alone insufficient |
| §6.6 arithmetic modulus control | Caputo sextic, p=3 | Global μ₃ versus local μ₉; fixed-modulus defect C₃ while div=0 | Pass; eventual modulus retained |
| §6.7 symbol versus raw kernel | ℚ, symbol {−1,−1} | Real symbol=−1, hence class is outside the wild kernel despite trivial finite tame residues | Pass; real places included |
| §6.7 local twist index | i=1, ℚ₂ | Local root quotient uses w₁(ℚ₂)=2; substituting w₂ gives24 | Pass; no index shift |
| §6.8 Moore/global correction | ℚ in degree2 | Real sign contributes order2; omitting it changes the order factor from2 to1 | Pass |
| §6.9 real H² parity | C₂ on ℤ₂(i+1), i=1 and2 | H²=C₂ and0 respectively | Pass; actual parity retained |
| §6.9 finite versus continuous coefficient term | Trivial C₂ action, finite modulus2 versus ℤ₂ | H¹(C₂;C₂)=C₂ whereas H¹(C₂;ℤ₂)=0 | Pass; finite Bockstein term cannot be discarded |
| §6.10 special/very special | ℚ,ℚ(i),ℚ(√−14),ℚ(√−17) | First two nonspecial; √−14 special but not very special; √−17 very special | Pass; predicates not conflated |
| §6.10 local test for √−17 | 17 in ℚ₂; roots in F(i) | 17 is a square in ℚ₂, local extension ℚ₂(i); both root groups μ₄, despite the very-special obstruction | Pass; extra-root-only test rejected |
| §6.10 finite norm test | C₄ and C₈ with action3 | On C₄, N=0 with invariant C₂; on C₈, N=4 maps coinvariant C₂ isomorphically to invariant C₂ | Pass |
| §6.11 descent and non-left-exactness | Sign C₂ action on C₄ | Coinvariants C₂; H₁=C₂, so an uncorrected left-exact descent assertion fails | Pass |
| §6.11 full versus twist cyclotomic field | Very-special case, odd i | Full-field descent defect C₂; twist-field correction removes it, leaving0 | Pass |
| §6.11 compatible Frobenius prescription | ℚ(i), rational prime norm mod4 | Split norms are1 mod4; prescription3 mod4 is incompatible, not a positive-density split class | Pass; intersection condition retained |
| §6.12 special obstruction | ℚ and ℚ(√−14), odd i | WK/div quotients0 andC₂ | Pass; exceptional cases included |
| §6.12 hidden class/divisibility | ℚ(√7), degree4 | Hidden group C₂ survives in K₄; internal doubling0, but ambient roots exist | Pass; ambient div, not divisible finite group |
| §6.12 raw completion comparison | i=1; local torsion in uniquely divisible kernel | Torsion intersection=0, so raw=symbol in degree2; a divisible torsion group C_(p∞) would instead contain C_p | Pass; higher equality not inferred |
| §6.13 twisted Picard action | p=5, χ=2 and class-component action3 | Correct diagonal action 2·3=1 survives; untwisted scalar3 and reverse-twist scalar3·3=4 both give zero coinvariants | Pass; actual character direction fixed |
| §6.14 matched finite orders | P=C₄→A=C₂; empty presentation | Upper4 versus possible lower≤2 excludes matching; empty P has order1 and spanning forces A=0 | Pass; no tautological certificate |
| §6.14 hidden-kernel lower bound | ℚ(√7), degree4 | Correct lower order2; cohomological quotient alone has order1 | Pass; hidden kernel included |
| §6.15 Bott slot degrees | j=0 and j=−1 | Positive/negative slots (0,0)/(2,1), then (2,0)/(0,−1); latter total degree−2 | Pass; integer grading |
| §6.15 Adams projectors | Modulus3 versus2 | 1/2=2 mod3 yields complementary projectors; 2=0 mod2 has no inverse | Pass; odd modulus needed |
| §6.16 degree-one comparison | ℤ, ℤ[1/3], coefficients3 | Ordinary ℤ-unit quotient0; inverted prime supplies C₃ valuation quotient | Pass; degree1 exception retained |
| §6.16 degree-zero comparison | ℤ, coefficients3 | K₀/3=C₃, from rank; Pic/3=0 | Pass; no unreduced ℤ summand |
| §7.1 Bernoulli conventions | Indices0,1,2 | B₀=1, B₁=−1/2, B′₁=+1/2, B₂=1/6; positive reindexing excludes its n=0 junk value−1 | Pass |
| §7.1 Voronoi congruence | (p,a,n)=(5,2,2) and (7,3,4) | First difference −55/2 is divisible by5; second corrected difference 54586/3=49·1114/3 | Pass; higher-order correction needed |
| §7.2 regular-prime headline | (p,k)=(3,1),(5,5),(5,7),(5,63) | Numerators modulo p are1,1,1,4; nonzero in all cases, including k divisible by p | Pass; not restricted to finite source range |
| §7.2 denominator and k=0 controls | p=3,k=1; k=0 | Denominator divisible by3 while numerator1; totalized B₀/0=0 has numerator0 | Pass; numerator statement and k≥1 essential |
| §7.2 irregular control | p=37,k=16 | B₃₂ numerator −7709321041217=−37·208360028141 | Pass; regularity cannot be omitted |
| §7.3 tame idempotents | C₂ over 𝔽₃ | e₊=(2,2), e₋=(2,1); sum=(1,0), product=(0,0), squares=e₊,e₋ | Pass |
| §7.3 Teichmüller direction | p=5, lifts1,7,18,24 | Weighted sum165/5=33≡3; inverse-weight sum154 is not divisible by5 | Pass; inverse character is not interchangeable |
| §7.3 Herbrand character | p=37,n=32 | 1−32≡5 mod36, not31 | Pass; direct Artin action retained |
| §7.4 regular-prime torsion pattern | ℓ=3 and5 | Generator degrees (0,3,1), shift4; (0,7,1,5), shift8. Low dimension patterns (1,1,0,1) and (1,1,0,0,0,1,0,1) | Pass |
| §7.4 irregular negative control | ℓ=37 | Nonzero even eigenspace detected by B₃₂ numerator divisible by37 | Pass; regular hypothesis retained |
| §7.5 low spectrum differential | Two C₃ terms contributing to degrees3/4 | Actual differential is an isomorphism: kernel/cokernel0; zero differential would leave order3 in each | Pass; ordinary spectrum homology used |
| §7.5 K₄(ℤ) | Odd-primary spectrum argument and dyadic rank | Odd part0, dyadic rank0, hence group0 | Pass; neither part alone suffices |
| §7.5 integer even orders | n=2,6,22 | Orders2,1,691; corrected Bernoulli index in degree22 produces691 | Pass |
| §7.5 Vandiver boundary | Degree1 versus advertised higher table | K₁(ℤ)=C₂, whereas the higher odd-rank pattern would introduce ℤ | Pass; n>1 and conditional premise retained |
| §8.1 marked field data | F=ℚ(√5) | Degree2, discriminant5, signature(2,0), class number1; arbitrary degree3 data contradict finrank2 | Pass; actual field invariants required |
| §8.2 localization examples | ℤ[1/2], ℤ[1/3] | K₂=C₂ and C₂²; K₄(ℤ[1/2])=C₃ since 2²−1=3 | Pass |
| §8.2 rational field | K₂(ℚ) | C₂⊕⊕p 𝔽_pˣ is torsion and infinite; p=2 contributes order1 | Pass |
| §8.3 old-unit quotient | ℤ at5; Gaussian prime1+i | t{2,5}=2, reversed symbol3; i=1+(1+i)i exactly | Pass; actual image filtration |
| §8.4 strict norm bound | q=5, product of two new primes | Norm at least25; hypothesis <25 excludes it. Difference0 is allowed and gives ratio1 | Pass; no division by zero |
| §8.5 Gaussian presentation | Generator g={i,i} | 3g=0 and4g=0 imply g=(4−3)g=0; upper/lower orders1 | Pass; field K₂ not claimed zero |
| §8.6 congruence lattice | ℚ,s=2,q=5,a=2 | (2,1) satisfies2−2=0; (1,1) gives−1≠0; index/covolume5=5 | Pass |
| §8.6 arbitrary s and measure | Golden field,s=2,3 | Covolumes5q and5√5·q²; complex coordinate uses 2dxdy, so Gaussian integer lattice covolume2=√4 | Pass |
| §8.6 strict old-unit condition | t=q, tuple(q,q) | Both residues0 and normsq, so coordinates are not old units; t<q excludes this | Pass |
| §8.6 stretch normalization | Golden ε,ε² | Norms−1 and1; positive archimedean reciprocal stretch has determinant1 | Pass |
| §8.7 cutoff | Golden d=2√5/π | d≈1.423525; four bounds≈32.422779,9.323882,2.884665,12.318230, all <33 | Pass; cutoff applies |
| §8.7 small-fraction equality | Over ℚ at5, 2 and1/3 | Cross-difference2·3−1=5; product norm bound12<25 | Pass; quotient equivalence uses strict bound |
| §8.8 complete small-prime list | Rational primes≤31 | Residue norms4,5,9,11,11,19,19,29,29,31,31; next inert norm≥49>33 | Pass; 11 primes complete |
| §8.9 independent lower bound | Golden g,h and two real signs | Sign vectors (−1,−1),(1,−1) span four sign pairs; upper order≤4 and lower order≥4 give4 | Pass; no special-value circularity |
| §8.9 separate special-value check | Golden w₂=120 | |K₂|/w₂=4/120=1/30 | Pass; check not used for lower bound |
| §8.10 degree-three examples | ℚ andℚ(i) | C₄₈ andℤ⊕C₂₄, with ranks0 and1 | Pass |

All field extensions in the arithmetic portion are characteristic-zero separable extensions. Zero rings, nonreduced rings and inseparable extensions are therefore outside those quantified domains; they are not implicitly treated as number fields or DVRs. Arbitrary S occurs only where explicitly stated; the finite-generation and cardinality arguments keep finite S.

The 11 §8.8 steps were checked by exact arithmetic in ℚ[ε]/(ε²−ε−1). For **each of the 173 rows**, I evaluated both sides of `g^A−g^B=πg^C`; their difference was the pair **(0,0)**. Negative powers used conjugate divided by nonzero norm. Independently, I formed each selected integer matrix and computed its determinant by rational elimination, then computed the subgroup generated by the residue images. This gives the following additional statement-by-statement table:

| Prime π | q | Identity rows, all LHS−RHS=(0,0) | Signed determinants computed | gcd = residue subgroup order = q−1 | Result / change |
| --- | ---: | ---: | --- | --- | --- |
| 2 | 4 | 4 | 6, −3 | 3=3=3 | Pass; retain |
| −1+2ε | 5 | 3 | 4 | 4=4=4 | Pass; retain |
| 3 | 9 | 4 | 8 | 8=8=8 | Pass; retain |
| 3+ε | 11 | 15 | 60, −30, −10 | 10=10=10 | Pass; retain |
| 4−ε | 11 | 12 | 70, −20 | 10=10=10 | Pass; retain |
| 4+ε | 19 | 14 | −54, −36 | 18=18=18 | Pass; retain |
| 5−ε | 19 | 16 | 216, −18 | 18=18=18 | Pass; retain |
| 5+ε | 29 | 27 | −168, −224, 420 | 28=28=28 | Pass; retain |
| 6−ε | 29 | 20 | 56, 28 | 28=28=28 | Pass; retain |
| 5+2ε | 31 | 22 | 90, 60 | 30=30=30 | Pass; retain |
| 7−2ε | 31 | 36 | −180, −240, −90 | 30=30=30 | Pass; retain |

The gcd argument really gives both inequalities: the full relation lattice has index dividing the selected gcd, and its residue quotient has order q−1. It does not require a selected minor individually equal to q−1.

### Pinned library and ownership audit

I searched objects as well as proposed declaration names: S-integer denominators and localizations, class-group torsion and norm, exact/Grothendieck K₀ versus higher K, Tate twists, Bernoulli congruences, module presentations, real lattices, arithmetic Steinberg finiteness, Borel ranks, hermitian signature and homotopy orbits. Searches covered the pinned libraries, main/completed roadmaps, board packages, and the supplied open-roadmap checkouts, using the roadmap search service for the cross-roadmap searches. No duplicate fully qualified name was found for the four declarations in this `Suggested.lean`.

The following native declarations were opened, not inferred from a search hit:

| Pinned file and line | Declaration/object and what it supplies |
| --- | --- |
| `Mathlib/RingTheory/DedekindDomain/SInteger.lean:65`, :88, :94, :114, :133 | `Set.integer`, universal/empty support comparisons, `Set.unit` and the unit equivalence. Membership is valuation≤1 outside S; it does not assume S finite or prove every such overring a localization. |
| `Mathlib/RingTheory/Localization/LocalizationLocalization.lean:193` | `IsLocalization.isLocalization_of_submonoid_le`, with nested submonoids and the scalar tower. |
| `TauCeti/RingTheory/DedekindDomain/SInteger/Basic.lean:194` | `integer_map_comap_eq` and the subsequent Dedekind instances. Extension of ideals from the base is not the localization criterion stated here. |
| `TauCeti/RingTheory/DedekindDomain/SInteger/Spectrum.lean:180`, :225 | `integerHeightOneSpectrumEquiv`, `valuation_integerHeightOneSpectrumEquiv`; primes outside S and their unchanged valuations. |
| `TauCeti/RingTheory/DedekindDomain/SInteger/ClassGroup.lean:86`, :129, :136 | `integer_extendedHom_surjective`, `ker_integer_extendedHom` and the subsequent quotient equivalence. These are consumed, not rebuilt. |
| `TauCeti/RingTheory/DedekindDomain/SInteger/Unit.lean:105`, :123, :130, :149, :207 | `Set.unitValuation`, `unit_mono`, `unitValuation_ker`, finite-generation results. The valuation target is a product, not already a finite-support direct sum; finiteness needs finite S. |
| `TauCeti/RingTheory/ClassGroup/RelNorm.lean:143`, :151, :166 | `ClassGroup.relNorm`, `relNorm_mk0`, `relNorm_extendedHom`; the composite raises the class to the module rank. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Exact.lean:339` | `TauCeti.ExactK0.liftEquiv` on the exact-category Grothendieck group. It provides no higher Quillen groups or Bott spectrum. |
| `TauCeti/NumberTheory/NumberField/WorkedExamples/Sqrt5/Basic.lean:42`; `Invariants.lean:76`, :96, :114, :129, :135, :140, :153, :163 | Native golden-field degree2, integral basis/index1, discriminant5, real places2, PID/class number1, unique dyadic prime with e=1,f=2. Hypotheses include the actual minimal polynomial and primitive generator. |
| `TauCeti/NumberTheory/NumberField/WorkedExamples/Sqrt5/RealPlace.lean:68`; `Units.lean:81` | Unit rank1 and torsion order2, on the same marked field model. |
| `Mathlib/Algebra/Module/Presentation/Basic.lean:250`, :266, :272, :283 | Kernel/span and quotient-surjectivity comparisons; `IsPresentation` means bijectivity of the actual solution map. |
| `Mathlib/LinearAlgebra/FreeModule/Finite/CardQuotient.lean:98`; `Mathlib/Algebra/Module/ZLattice/Covolume.lean:170` | `AddSubgroup.index_eq_natAbs_det` and `ZLattice.covolume_div_covolume_eq_relIndex'`; full-rank/discrete lattice conditions remain necessary. |
| `Mathlib/MeasureTheory/Group/GeometryOfNumbers.lean:91` | `exists_ne_zero_mem_lattice_of_measure_mul_two_pow_le_measure`, the actual Minkowski lattice-point input. |
| `Mathlib/NumberTheory/Bernoulli.lean:194`, :204, :214, :662 | `bernoulli`, the relation to `bernoulli'`, value at1 and `Bernoulli.vonStaudt_clausen`; no unrestricted divided-numerator regular-prime theorem. |

Resolved supplier citations, grouped by consumed object, are recorded below. Line numbers refer to the cited README, and ranges are listed by section rather than treating an entire roadmap as a theorem. Existing roadmaps were checked on main; new roadmap suppliers were checked at their open heads. The two expressly declared gaps are contracts, not nonexistent-declaration findings.

| Supplier and checked location | Consumed interface |
| --- | --- |
| StableHomotopyKTheory §§1.24–1.28, 3.36–3.37 (`README.md:1417`), 7.1–7.13, 7.21–7.28 (:2593 onward) | Category/relative homology, abelian-space finite type, coefficients, Bocksteins, filtered convergence and safe products. The coherent finite-group homotopy-orbit specialization is the declared gap. |
| GeneralAlgebraicKTheory §§2.1–2.6 (:260), 4.3 (:729), 4.8 (:799), 4.14 (:889), 7.4–7.8 (:1478), 8.12–8.13 (:1773) | Genuine Q groups, additivity, dévissage, localization, transfers and right-linear boundary, with the left-slot sign. |
| EtaleCohomologyFoundations F.0.1–F.0.3 (:233), F.4 | `VanishingCycles.etaleTateTwists` and realizations. The resolver's one lead is this planned supplier declaration, which exists in F.0.3; it is not falsely claimed to exist in pinned Tau Ceti. |
| IntegralIwasawaTheory §§3.1 (:438), 6.0 (:705), 7.4 (:900), 7.7–7.8 (:941), 10.4–10.5 (:1368), 12.3 (:1613) | One-prime class control, rational special values, Vandiver propagation and Euler quotients with the correct twist/real corrections. |
| CyclotomicClassGroupsAndStickelberger §§0.1–0.4 (:116), 2.1 (:396), 3.1 (:519), 3.3 (:573), 4.5 (:924), 5.1/5.4 (:952/:997) | Covariant class action, projectors, unrestricted Bernoulli refinements, reflection, Herbrand–Ribet and regular towers. |
| SchemeKTheoryOperations §§3.6–3.7 (:1017/:1116) | DVR boundary, ramification-weighted pullback and residue transfer. |
| KTheoryLowDegrees §§5.1–5.5 (:535/:646), 8.1 (:836), 11.1–11.3 (:1212) | Rank–Picard/Steinitz transfer, determinant and arithmetic SK₁/unit comparison. |
| K2SymbolsBrauer §§7.1–7.2 (:1202), 9.2–9.6 (:1425), 11.2 (:2516), 12.1–12.3 (:2648), 12.5 (:2720), 12.10–12.11 (:2839) | Matsumoto, inverse tame-symbol convention, low-degree localization, real signs and supplied K₂(ℤ), K₂(ℚ). |
| ClassicalArithmeticCompletion §§1.14–1.15 (:713/:769), 1.35 (:1383) | Arithmetic-Frobenius norm-residue symbols and norm criterion, including archimedean cases. |
| ArithmeticGaloisDuality R02.1, R02.3, R02.4.3–R02.4.4 (:3436 onward) | Inverse limits, Kummer/Brauer and Poitou–Tate; real terms and the full inverted-prime support survive. |
| SelmerIwasawaCohomology §§2.1–2.4 (:343), 2.21–2.23 (:849) | Strict kernels, mapping fibres, H⁰ correction and change-of-condition triangles. |
| GeometryOfNumbersAndQuadraticArithmetic §§6.1a (:2252), 6.4.2, 6.8a (:2934), 6.9 (:3071), 6.10a (:3173) | Poincaré carriers, coherent duality, GW/L fibre sequence, localization and integer L/signature normalization. General number-ring signature is the separate §6.11 gap. |
| HermitianKTheoryOfPoincareCategories §§0.1–0.3 (:83), 1.2–1.4 (:248), 4.4 (:587), 7.1–7.5 (:1042), 8.1–8.2 (:1253) | Genuine/symmetric/quadratic comparison ranges and classical fibre sequences; no degree-four comparison is applied in degrees0–3. |
| KTheoryFiniteLocalFields §0.5 (:189), §§1.1–1.6 (:211), 2.2 (:411), 3.0a (:512), 3.1–3.5 (:548), 6.2–6.9 (:1287), 6.5a (:1360), 7.3 (:1639) | Finite fields, local symbols/completion, shared cycles and field descent. Arithmetic-base motivic descent belongs here as the explicitly stated extension. |
| ClassFieldTheory Layers11–13; NumberFieldArithmetic Layers1–5,7–8; Chebotarev Layer10 (:686) | Reciprocity/S-class action, marked number-field arithmetic, compatible Frobenius prescriptions with finite exclusions. |
| GeneralizedCohomology G5.4 (:1560, :1653–1683) | Constructed ku/ko/KU/KO, connective covers and complexification, with c(a)=2u². |
| ArithmeticLocallySymmetricSpaces ALS.2.2–ALS.2.3 (:2252/:2296), ALS.5a.1 (:4028); MorseTheory M1–M3 (:90/:124/:430) | Neat compact bordification, rounded collar and relative Morse approximation/finite cells. Triangulability is not smuggled in from conditional ALS.2.4. |
| GeometricTopology collar and smoothing/triangulation sections; ClassifyingSpaces Stages3–4; AlgebraicTopology Stage8; HomotopySpheres Stage9 (:885); AdelicAlgebraicGroups §3.6 (:3587) | Generic topological comparisons, Hurewicz, stable fourth-stem vanishing and fixed-maximal-compact reduction inputs. |

Further ownership checks at the supplied open heads: `TauCetiRoadmap/BorelRegulators/README.md:11` and :77 assign finite generation and Borel ranks to ArithmeticKTheory and build regulator lattices downstream; `TauCetiRoadmap/K3BlochGroups/README.md:105`, :1955 and :1959 import the ambient K₃ groups and torsion comparison before forming indecomposable quotients. `TauCetiRoadmap/MotivicEtaleKTheory/README.md:7`, :9 and :17 restrict its new work to cycle adapters, higher Chern/Deligne comparisons and regulators, explicitly excluding arithmetic K-group computations and finite-coefficient étale descent. The scopes of `TauCetiRoadmap/GeneralAlgebraicKTheoryPartII/README.md:3` and `TauCetiRoadmap/StableHomotopyKTheoryPartII/README.md:3` concern their chromatic/enhanced extensions, not the arithmetic tables here. The present roadmap therefore owns the arithmetic assembly and explicit tame-kernel presentations; the general carriers and already owned low-degree theorems remain imports. No upward supplier was added to resolve an apparent overlap.

## Not verifiable

- The originals keyed `harris-segal`, `mitchell`, `quillen`, `bass-tate`, `serre` and `groenewegen-preprint` remain **settled waived sources**. Their quoted locators were retained; I did not request them again or claim to have read their unavailable original text. The cached K-book, Sun, Rognes–Weibel, and the legal Groenewegen journal text provide the accessible comparisons used in this review. In particular the exact Bass–Tate original pagination and the waived 2002 preprint pagination are not newly certified here.
- The displayed formula in wild-kernel Lemma 7.4 is damaged in the cached extraction (`wildkernel line 565`). Its following proof (`wildkernel line 567`) is readable, and the needed localization/comparison is independently supported by Hutchinson Lemma 5.2 and Corollaries 5.3/5.7. I do not certify the unreadable formula character by character.
- The two declared supplier gaps are not implemented or already present as the full specified theorems in their suppliers. Acceptance is conditional on their stated contracts, as allowed by this job; it is not evidence of completed formal proofs.

## Source issues

- **Misprint** in kbook at V.6.8, proof, p.413 (line 24785): the source applies the boundary to x inside the Bott multiple; it should apply it to the lifted element s; affects the proof.
- **Error** in kbook at V.6.8.2, p.413 (line 24801): the source identifies the coefficient kernel at every modulus annihilating the tame torsion with div; it should require sufficiently large admissible moduli; affects a stated result.
- **Error** in kbook at V.6.8.2, p.413 (line 24803): the source identifies divisibility with the raw wild kernel without exceptions; it should distinguish raw/symbol kernels and retain the special dyadic order-two obstruction; affects a stated result.
- **Error** in kbook at V.6.9.2, p.414 (line 24898): the source includes K₁ in the odd-degree DVR-to-field isomorphism; it should restrict that isomorphism to odd degrees at least three; affects a stated result.
- **Misprint** in kbook at VI.2.1.2, p.470 (line 28420): the source gives w₁₀(ℚ)=1320; it should give 264, with no factor five; affects a stated result.
- **Error** in kbook at VI.2.3, p.471 (line 28509): the source declares ℝ exceptional; it should exclude real-closed fields, whose cyclotomic extensions have cyclic group of order at most two; affects a stated result.
- **Misprint** in kbook at VI.8.1, p.513 (line 31276): the source assigns finite even K-groups and finitely generated odd groups to F; it should use O_S for those assertions; affects a stated result.
- **Misprint** in kbook at VI.9.12, proof, p.525 (line 32114): the source uses h₁,i in the real-corrected even-group order; it should use h₂,i divided by 2^r₁; affects the proof.
- **Misprint** in kbook at VI.10.1(6), p.527 (line 32192): the source gives c₂k₊₁ for degree 8k+6; it should give c₂k₊₂; affects a stated result; corrected in print at Table VI.10.1.1, p.528.
- **Misprint** in caputo at Example 2, p.17 (line 852): the source says the generic auxiliary degree-p field splits at 3; it should say it splits at p; affects the proof.
- **Misprint** in fgv at Corollary 2.12, proof, p.14 (line 629): the source gives target twist 2k−1 after multiplying a weight-one class by β^(2k−1); it should give target twist 2k; affects the proof.
- **Misprint** in fgv at Remark 2.13, p.15 (line 645): the source displays unreduced ℤ⊕Pic for K₀ with ℤ/q coefficients; it should display (ℤ⊕Pic)/q; affects the proof.
