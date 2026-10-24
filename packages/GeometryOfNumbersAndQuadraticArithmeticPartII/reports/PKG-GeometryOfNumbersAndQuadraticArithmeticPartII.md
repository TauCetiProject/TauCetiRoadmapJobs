# Package report: geometry of numbers and quadratic arithmetic, Part II

The package contains README.md, Suggested.lean, metadata.toml and a sources manifest. The README was generated from the 31-node design skeleton and expanded into six prose layers, retaining all definition APIs and all 19 explicit definition Checks. Each of the other targets also has discriminating numerical or degenerate-case Checks. Imported targets have their complete contracts and arithmetic examples instead of duplicate target blocks. The independent polynomial-lattice and toral-joining inventories remain in the unchanged design fields; they are outside this roadmap's direction.

The separate design/review.json and earlier report files named in the brief were absent. The accepted review embedded in design/plan.json was read in full, including its per-node corrections. Its claims were checked against the source texts and the actual repository pins rather than treated as instructions.

## Headline inventory and acceptance signatures

This inventory was made before writing Suggested.lean and then updated when inspection of the newer pins exposed the statable field restriction theorem. “Not statable” below identifies a missing carrier, not a missing proof. The three admitted statements use native carriers and only three simple definitions, all with real bodies.

| Headline | Status at the pins |
| --- | --- |
| Canonical decomposition of dyadic completion into prime-adic factors and valuation-completion integer rings | Stated: `dyadicCompletionDecomposition`, README §2.1. It quantifies over arbitrary Dedekind domains with two nonzero, including the empty dyadic product. |
| The 32-class additive presentation of W(ℚ₂), multiplication by c, and the resulting ideal and annihilator | Stated jointly: `q2WittRingPresentation`, README §4.1. Its additive equivalence has prescribed values `q2Coordinates`, built from `q2V` and `q2C`. The multiplication formula determines the four-element ideal and eight-element annihilator. |
| Restriction and specified Scharlau transfer for ℚ₂(√−3), with kernel (c) and transfer image ann(c) | Stated: `eisensteinFieldWittExactness`, README §5.3. The actual field, algebra, finite-dimensionality, ordered basis, first basis vector and square relation occur in its signature. |
| Integral polarisation and its invert-two equivalence | Not statable: metabolic symmetric/quadratic Witt groups over commutative rings and the actual induced comparison map are absent. |
| Integral symmetric Witt injection in every characteristic and zero polarisation in characteristic two | Not statable: the same ring Witt carriers are absent. The characteristic-not-two polarisation injection is consumed from ArithmeticKTheory §3.5. |
| Canonical line-valued second residue, uniformizer formula and finite-support boundary | Not statable: line-valued symmetric Witt groups and their canonical L-boundary are absent. |
| Finite-field absolute-trace Arf isomorphism and extension-degree law | Not statable: the characteristic-two quadratic Witt carrier and its scalar extension are absent; ordinary quadratic maps alone do not supply the quotient. |
| Symmetric global characteristic-two table and its two-periodicity | Not statable: periodic Poincaré L-spectra and their homotopy groups are absent. |
| General arithmetic fracture with both K₀-image subcategories and coefficients | Not statable: enhanced perfect-complex/Poincaré categories, their coefficient structures and GW/L spectra are absent. |
| Noncommutative quadratic lifting for complete rings with Wall anti-structure | Not statable in its full scope: native quadratic maps require commutative scalar rings, and Wall's general sesquilinear refinement carrier is absent. The native tensor-product quadratic base-change API also assumes two invertible. No two-inverted stand-in was written. |
| Complete quadratic rigidity, integrally for both signs and every degree | Not statable: periodic quadratic L-spectra are absent. |
| Henselian quadratic rigidity for all commutative henselian pairs | Not statable: periodic quadratic L-spectra are absent, despite native henselian-pair predicates. |
| Concrete total-cokernel obstruction and its realization in the degree-three exact extension | Not statable: its actual Ws(C), Wq(C) and ring comparison maps are absent. A generic two-image quotient would not be the arithmetic headline and was not added. |
| Number-field quadratic Arf coordinates and finite two-primary obstruction | Not statable: ring quadratic Witt/L carriers are absent. |
| Canonical parity quotient A(R)→(ℤ/2)^d/Δ(ℤ/2) | Not statable: the arithmetic obstruction's Witt carriers are absent. A free additive-group quotient would be a stand-in. |
| Nondyadic quadratic localization/dévissage for arbitrary sets of primes | Not statable: quadratic L-spectra, coefficient lines and the actual maps are absent. |
| E₈ quadratic refinement's integral-to-dyadic Arf comparison | Not statable as the stated arithmetic comparison: integral quadratic Witt groups and reduction maps are absent. A 256-value count alone is a Check, not its substitute headline. |
| Integral dyadic Witt subgroup, its residue splitting and local quadratic polar image c+4u | Not statable: Ws(ℤ₂), Wq(ℤ₂) and their maps are absent. The field ring is available but is a different carrier. |
| Eisenstein symmetric integral Witt group with generator of order four | Not statable: Ws(ℤ[ζ₃]) and its integral/completed maps are absent. |
| Integral Eisenstein restriction kernel and cokernel | Not statable: the integral Witt carriers are absent. The field exact sequence is stated above, not used as a replacement for this integral theorem. |
| Zero quadratic base change and new Arf-one local polar class | Not statable: the two integral quadratic Witt groups and their map are absent. |
| Corrected Eisenstein periodic tables [ℤ/4,ℤ/2,0,0] and [0,0,ℤ/2,ℤ/4] | Not statable: periodic L-spectra and integral Witt groups are absent. |
| General field L-computations, generic sign shifts, characteristic-not-two Dedekind tables and integer tables | Consumed headline results, not declared here: HermitianKTheoryOfPoincareCategories §§1.6, 4.5–4.6, 6.6 and 7.9; ArithmeticKTheory §3.5; GeometryOfNumbersAndQuadraticArithmetic §6.10a. Their spectral carriers are also absent at the pins. |

## Corrections and precise limitations

1. The design's general commutative-ring identification Ls₀(R)=Ws(R) was too broad. Classical polarisation is defined for all commutative rings, and Lq₀ has its general classical Witt comparison. The symmetric periodic comparison here carries the Dedekind hypotheses. HermitianKTheoryOfPoincareCategories §4.5 identifies genuine symmetric degree zero generally; §6.6 supplies the needed periodic symmetric Dedekind comparison. These must not be conflated.
2. The actual pins differ from the design audit: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, read from lake-manifest.json. In particular the field Witt carrier is available. This makes the ℚ₂ presentation and the specialized field restriction sequence statable, whereas the old design's generic quotient and small admitted examples are not suitable acceptance signatures.
3. The full dyadic decomposition signature includes both native ideal-adic factors and the integer rings in valuation completions. Their R-algebra structures fix the maps from R; it is not merely an abstract bijection.
4. The source corrections accepted by the design were recomputed: ann(c)=⟨2u,c⟩, not ⟨2u,v⟩; inertness at two requires irreducibility, beyond odd discriminant; quadratic 𝔽₂→𝔽₄ base change is zero. The corrected Eisenstein table is [0,0,ℤ/2,ℤ/4]. These findings concern arXiv v4; no assertion is made about an unread journal correction.
5. The residue linking quotient is L∨/L. R_S is the valuation overring of GeometryOfNumbersAndQuadraticArithmetic §6.9.2 and need not be a localization obtained by a single multiplicative subset. Completion counts primes, not ramification exponents. These review corrections are retained.
6. The field-Witt coordinate convention is explicitly a unital comparison of symmetric diagonal coefficients. Inverse polarisation uses the half-diagonal instead. On the ℚ-line these produce x² and x²/2 respectively and differ by ⟨2⟩. This prevents a hidden scaling error in the ℚ₂ tensor calculations.
7. Complete rigidity is not inferred from isometry lifting alone: the degree-one elementary/formation relation comparison is named explicitly, with Wall-1973 cited as uncertified. Henselian rigidity retains the approximation and colimit hypotheses. General arithmetic fracture retains both K₀ controls; their deletion is only the supplied Dedekind result.

The README cannot provide missing pinned spectral or ring Witt carriers, and does not pretend that admitted Lean signatures prove its mathematics. It does not certify the unaccessed book or Wall-1973 proofs. It gives exact locators for those settled uncertified citations and imports the relevant supplier contracts. No global characteristic-two quadratic table, arbitrary-coefficient rigidity extension, or canonical splitting of the degree-three extension is promised.

## Ownership and duplication sweep

Read the main-branch GlobalQuadraticForms and QuadraticFormInvariants roadmaps and Completed/IntegralLattices before writing. The indexed head searches covered README and Suggested.lean objects, not only proposed names: field Witt quotients, finite/characteristic-two Arf, perfect polar refinements, residue duality lines and linking forms, localization, L-spectra and surgery, derived completion, complete/henselian rigidity, total cokernels, E₈, and local/global classification. The board's packages and designs were also searched, including QuadraticFormInvariantsPartII's later characteristic-two programme.

The relevant new-folder suppliers were checked at the indexed heads: GeometryOfNumbersAndQuadraticArithmetic `465728d`, HermitianKTheoryOfPoincareCategories `5a6365d`, GeneralAlgebraicKTheory `e0552fe`, StableHomotopyKTheory `00bfbf7`, KTheoryFiniteLocalFields `afe02e8`, and ArithmeticKTheory `3d10f78`. Existing-roadmap revision heads were only search leads; the main copies supply QuadraticFormInvariants, GlobalQuadraticForms, SchemeAndStackFoundations and IntegralLattices. No later roadmap is used as a supplier. The broad open-head search included the named open work in the brief through the supplied index; no separate remote PR discovery was performed.

Every removal or change of ownership is listed here:

| Object removed from this roadmap's independent targets | Exact owner consumed |
| --- | --- |
| Native quadratic-map, full polar, isometry and anisotropy constructions | Mathlib QuadraticForm/Basic.lean and IsometryEquiv.lean. |
| Generic field Witt/GW carriers, tensor structure and base change | Tau Ceti Witt/Ring.lean and Witt/BaseChange.lean; QuadraticFormInvariants Layer 4. |
| Generic exact symmetric and classical quadratic Witt carriers | GeometryOfNumbersAndQuadraticArithmetic §§6.2–6.5, 6.8a; HermitianKTheoryOfPoincareCategories §§3.4 and 4.5. |
| Poincaré categories, genuine/periodic flavours, spectra and generic surgery | GeometryOfNumbersAndQuadraticArithmetic §6.8a; HermitianKTheoryOfPoincareCategories Layers 0–7. |
| The 𝔽₂ Arf quotient and classification | HermitianKTheoryOfPoincareCategories §7.9. TangentialBordism's generic 𝔽₂ invariant was found as an additional ownership lead; no competing F₂ declaration is added here. The finite-field trace extension is the retained variant. |
| General field L-groups and perfect-characteristic-two symmetric groups | HermitianKTheoryOfPoincareCategories §7.9; KTheoryFiniteLocalFields §1.7. |
| Generic coefficient sign/double-suspension comparisons | HermitianKTheoryOfPoincareCategories §1.6. Numerical arithmetic shift witnesses stay as Checks. |
| Canonical derived residue line and foundational symmetric localization/dévissage | GeometryOfNumbersAndQuadraticArithmetic §§6.8a–6.9. The explicit line-valued second residue formula remains the arithmetic target. |
| Characteristic-not-two polarisation injection | ArithmeticKTheory §3.5. The symmetric all-characteristic injection and characteristic-two zero map remain here. |
| General characteristic-not-two symmetric Dedekind four-periodic table | ArithmeticKTheory §3.5, dedekindSymmetricLTable. Its DVR and global numerical applications remain in README §1.2. |
| General global residue cokernel Pic(R)/2 and the resulting global symmetric table | ArithmeticKTheory §3.5. No second global Witt residue kernel theorem is planned here. |
| Dedekind quadratic/symmetric completion pullback and four-periodic quadratic table, including its unsplit extension | ArithmeticKTheory §3.5, dedekindQuadraticLTable and quadraticL_oddExtension, with its explicit ownership of the localization–completion prerequisites. README §3.1 retains the concrete two-image quotient; §3.2 retains finite Arf coordinates and finite two-primary identification. |
| Integer Witt signature/E₈ normalization and periodic symmetric/quadratic tables | GeometryOfNumbersAndQuadraticArithmetic §6.10a, integralLTheoryCalculations. Only the new E₈ refinement reduction and integral dyadic images are targets here. |
| Integral lattice carriers, E₈ construction, evenness, unimodularity and signature divisibility | Completed/IntegralLattices and IntegralLattices. |
| Generic Scharlau transfer, Frobenius reciprocity, local Hilbert formula and local classification | Native Transfer/Witt.lean and local-field modules; QuadraticFormInvariants Layers 6 and 9. Specialized arithmetic exactness remains; the missing generic exact-sequence export is a supplier gap. |
| Generic ideal-adic completion, additive ranges/quotients and two-ideal CRT | Native Mathlib modules named in Exact supplier contracts. The dyadic product and arithmetic quotient identifications remain. |
| General henselian smooth lifting, Popescu, and regular completion infrastructure | SchemeAndStackFoundations §§0.14–0.15 and 0.21. |
| Generic dense triangulated K₀ classification and ordinary localization | GeneralAlgebraicKTheory §§11.3–11.4 and 11.15. |

The retained objects are arithmetic variants not otherwise supplied: full finite-field Arf trace/base change, explicit second-residue coordinates, global characteristic-two tables, general integral fracture/rigidity, dyadic CRT comparison, concrete total cokernel, parity obstruction, nondyadic quadratic dévissage, and the ℚ₂/integer-dyadic/Eisenstein image calculations. No Suggested.lean declaration uses the fully qualified name of another roadmap's declaration.

## Supplier gaps and direction

Only the top-level gaps list of design/plan.json changed; every other parsed field is identical and the original bytes outside that value were preserved. Two entries now have the required slug/needs/supplier/section fields and matching “What … must provide” text in README:

- derived-completion-poincare-criterion → GeometryOfNumbersAndQuadraticArithmetic §6.8a: the still-unstated derived completion/change-of-rings criterion, rather than a duplicate Poincaré foundation.
- quadratic-extension-witt-exactness → QuadraticFormInvariants Layer 9: the exact cyclic restriction/transfer/Pfister-multiplication sequence, beyond transfer and reciprocity.

The old G1 inventory is largely supplied by the expanded base and hermitian roadmaps. G2's global residue theorem is now explicit in ArithmeticKTheory §3.5. G3 is a proof input in this roadmap, with the citation settled as uncertified, not a fabricated supplier. G4's generic approximation is explicit in SchemeAndStackFoundations. G5 remains the exact field-theory supplier gap. The immutable design nodes still contain their historical gapIds, while the permitted top-level gaps now records the live supplier requests.

No notion was moved down from a later roadmap. In particular the later QuadraticFormInvariantsPartII is not consumed: generic classical quadratic carriers come from the earlier hermitian supplier, and this roadmap owns its finite-field arithmetic extension. The independent polynomial-lattice and toral-joining split proposals were left unchanged.

## Source access and locator audit

Four texts were fetched through the sources service and read at the cited lines: CDHHLMNNS-III-v4 (especially lines 1819–1857, 1881–2102, 2110–2249), CDHHLMNNS-II-v5 (Proposition 4.5.5, pp.108–110, lines 5253–5301), Wall-1970 (Lemma 1/Theorem 2, lines 104–167), and CMM (Theorem 3.15, line 892, and Remark 5.6, lines 1659–1674). The source SHA256 values are in sources.toml; none of their text was copied into the package.

Wall-1973 and Scharlau-1985 were settled by the service as uncertified publisher citations. The Lam-2005 DOI reached the AMS book landing page, but the service's licence classifier did not obtain an open text. The book is recorded once as an uncertified locator-only citation with that access limitation; no fetched metadata, hash or licence was invented. Its statement is requested from the named supplier and its specific application is described in the read open paper. These settled citations are not unresolved reference requests. There are no pending missing-text requests.

The Paper III v4 proposition and example numbering, rather than journal pagination, was verified. The corrected Eisenstein entries are our derived targets, not attributed as the printed table. The Paper II criterion's coefficient equivalence, central Ore conditions, cofiber equivalence and Tate-boundary vanishing were read in place; the arithmetic specialization uses exactly those inputs. CMM's argument uses finite-type henselizations and their regular completion, not arbitrary Noetherian completions without excellence hypotheses.

## Pinned definitions and hypothesis audit

| Pinned object | File and locator | What the definition supplies and omits |
| --- | --- | --- |
| QuadraticMap | Mathlib/LinearAlgebra/QuadraticForm/Basic.lean:146 | A function, degree-two scalar homogeneity, and existence of a bilinear companion. It does not impose finite projectivity, nondegeneracy or perfect adjoint. |
| Full polar | The same file:317 | The bilinear polar without dividing by two. A one-dimensional square over 𝔽₂ has polar zero. |
| Quadratic equivalence | Mathlib/LinearAlgebra/QuadraticForm/IsometryEquiv.lean:46 | Nonempty linear isometry equivalence, not equality of value sets. |
| Native quadratic base change | Mathlib/LinearAlgebra/QuadraticForm/TensorProduct.lean:38–149 | The relevant construction is in the invertible-two section; it cannot express the full dyadic lifting headline. |
| AdicCompletion | Mathlib/RingTheory/AdicCompletion/Basic.lean:171 | Compatible quotient families; Hausdorffness does not itself imply completeness. Noetherian ideals here supply finite generation. |
| Two-ideal CRT | Mathlib/RingTheory/Ideal/Quotient/Operations.lean:325 | Ring equivalence R/(IJ)≃R/I×R/J for coprime I,J. The prime-power limit/cofinality theorem is retained here. |
| WittRing | TauCeti/LinearAlgebra/QuadraticForm/Witt/Ring.lean:218 | Literally the field Witt–Grothendieck ring modulo the hyperbolic ideal; requires Field and Invertible two. No characteristic-two or integral carrier is included. |
| wittClass and rank parity | The same file:288,386 | The genuine quotient map and its dimension-mod-two homomorphism. |
| Field base change | TauCeti/LinearAlgebra/QuadraticForm/Witt/BaseChange.lean:210 | Actual ring map on native Witt quotients. |
| Scharlau transfer and reciprocity | TauCeti/LinearAlgebra/QuadraticForm/Transfer/Witt.lean:147,186 | Finite extension and nonzero linear functional; additive map, not a ring map or a generic exact sequence. |
| Local classification | TauCeti/NumberTheory/LocalField/QuadraticForm/Classification.lean:129 | `TauCeti.RegularFormClass.eq_iff_rank_eq_and_discr_eq_and_localHasse_eq` uses rank, plain determinant and local Hasse invariant with the local-field/topology/valuation hypotheses. |
| ℚ₂ Hilbert formula | TauCeti/NumberTheory/LocalField/QuadraticForm/PadicTwo.lean:156 | Field units, valuation exponents and integral units with the explicit equalities tying them to a,b. No arbitrary unconnected invariants. |
| General-Dedekind complete integers and residue equivalence | TauCeti/RingTheory/DedekindDomain/AdicValuation/Completion.lean:367,434 | All height-one primes of Dedekind domains; no number-field or residue-finiteness restriction. |
| Class-group/Picard quotient | Mathlib/RingTheory/ClassGroup/Basic.lean:347,353; PicardGroup.lean:876 | Surjectivity, principal-ideal kernel and the Picard equivalence. Together with prime factorization these provide the divisor-class quotient in characteristic two. |

All section binders needed in Suggested.lean were carried explicitly. A scratch file appended `#check @name` for each of its six declarations and was elaborated after the final edits. The expanded types retain the Dedekind and two-nonzero hypotheses, each invertibility argument, the actual Witt codomains, the field algebra and finite-dimensionality, and both basis relations. The CRT signature tests both representations of the completed factors. The field restriction theorem computes its functional as the second basis coordinate, proves that functional nonzero with a real proof, and supplies the induced extension-field inverse of two locally. No free proposition, admitted data or erased standing hypothesis remains.

## Adversarial mathematics pass

The following are finite witnesses and counterexample checks, not formal proofs. Every main design statement, the retained definition APIs and the shared conventions are audited below. Equal-rank local comparisons were recomputed after hyperbolic stabilization to dimension 32 for even rank and 33 for odd rank. A local key is (rank parity, determinant valuation parity, odd determinant modulo eight, Hasse sign); the hyperbolic zero key in dimension 32 is (0,0,1,+1). A scratch audit initially used too small a stabilization dimension for tensor products; raising it to the same 32/33 dimensions on both sides corrected that audit error. No mathematical statement was changed to fit the erroneous comparison.

| Statement | Instances tried | Values on the two sides | Result | Change |
| --- | --- | --- | --- | --- |
| DA.0 integral comparison | ℚ-line, 𝔽₂ anisotropic plane, zero module | polar(x²/2)(1,1)=1=b(1,1); Arf=1 but symmetric polar class=0; zero adjoint 0→0 invertible | General σ holds; no unconditional dyadic isomorphism | Restricted periodic symmetric L₀ identification to Dedekind rings |
| DA.0 integral injection | ℤ→ℚ; 𝔽₂[t]→𝔽₂(t); identity field map | ⟨1⟩ has signature 1→1; hyperbolic polar 0→0; identity kernel={0} | Matches symmetric injection and char-two zero σ | Imported char-not-two σ injection from ArithmeticKTheory |
| DA.0 second residue | ℤ_(2):3,2,4; ℤ_(3):6 | ∂3=0, ∂2=⟨1⟩, ∂4=0; ∂3⟨6⟩=⟨2⟩ | Parity and unit coefficient both retained | Used L∨/L, not its reverse |
| DA.0 finite Arf | xy and x²+xy+y² over 𝔽₂; their 𝔽₄ extensions; zero space | 𝔽₂ nonzero-plane values 1,1,1; Arf=1; extended plane has 7 zeros and trace(1)=0; qζ has 1 zero and trace(ζ)=1; rank-zero trace=0 | Absolute trace distinguishes the extension maps | 𝔽₂ classification imported; general finite extension law retained |
| DA.0 field L adapter | ℚ, 𝔽₂ and 𝔽₄ | ℚ residues W,0,0,0; both even characteristic-two symmetric unit classes have parity 1; odd groups=0 | Field and perfect-field scopes differ | Entire field computation moved to supplier contracts |
| DA.1 symmetric Dedekind table | ℤ and ℤ[1/2] | ℤ residues ℤ,ℤ/2,0,0; inverting two leaves W,0,0,0 | Matches localization and empty dyadic set | Imported ArithmeticKTheory §3.5 |
| DA.1 global residue cokernel | ℤ and 𝔽₃[t] | Pic/2=0 in both; parity of residue ⟨p⟩ equals divisor coefficient 1 and principal class 0 | Both maps agree; kernel exactness is a separate supplied theorem | Imported complete global contract, not only its parity surjection |
| DA.1 global symmetric table | ℤ; 𝔽₃[t]; number-field example with d=1 | degree-one ranks 1 and 0; Eisenstein d=1 gives ℤ/2 despite different Ws | d counts dyadic primes, not real places or residue degrees | Imported table; retained numerical applications |
| DA.1 global characteristic two | 𝔽₂[t], 𝔽₂(t), 𝔽₂[t,t⁻¹] | odd groups=Pic/2=0; ∂t⟨t⟩=1; the inverted t-prime contributes 0 coordinates | No perfectness of the global field is used | Native ideal-class quotient replaces obsolete broad divisor attribution |
| DA.1 local symmetric | ℤ_(2), ℤ_(3), 𝔽₂[[t]] | ∂⟨π⟩=1 in each; degree one is ℤ/2,0,0 respectively | Residue surjectivity does not determine degree one without characteristic | Kept the arbitrary-residue-field scope |
| DA.1 sign shifts | negative-sign ℤ degrees 0 and 2 | L−s₀=Ls−2=0; L−s₂=Ls₀=ℤ | Uses n−2 for Σ² | Imported generic shift, retained arithmetic witness |
| DA.2 completion | ℤ, ℤ[1/2], ℤ[i], ℤ[ζ₃] | factor counts 1,0,1,1; Gaussian exponents 2m are cofinal; Eisenstein residue cardinality 4 | No rank or ramification multiplicity substituted for prime count | Stated both native completion representations |
| DA.2 arithmetic fracture | ℓ=1; ℤ/4 at 2; ℤ at 2; even-Euler category | completion 0,ℤ/4,ℤ₂; overlap maps (1,1)↦0,(2,1)↦1; control subgroup 2ℤ excludes class 1 | Derived comparison and K₀ controls are necessary inputs | Retained coefficient and control hypotheses |
| DA.2 quadratic lifting | ℤ₂; dual numbers; M₂(𝔽₂) with transpose and J=0 | xy polar det −1 is a unit; error ε goes to ε²=0; identity reduction sends each matrix to itself; Arf 0 versus 1 cannot lift an isometry | No division by two; noncommutative involution scope included | Defined the actual Wall anti-structure and refinement relation |
| DA.2 complete rigidity | ℤ₂→𝔽₂; dual numbers→𝔽₂; zero ideal; unit ideal | quadratic residues ℤ/2,0,ℤ/2,0 agree; unit-ideal complete separated ring is 0; symmetric orders 16 versus 2 disagree | Quadratic equivalence, symmetric negative control | Named the missing degree-one relation/kernel proof input |
| DA.2 henselian rigidity | ℤ₂,(2); 𝔽₂[ε]/ε²,(ε); any R,0 | residue quadratic even groups ℤ/2 agree; ε²=0; J=0 map is id; (2) is nonnilpotent | Nilpotence and two-invertibility are unnecessary | Imported smooth approximation with finite-type henselization hypotheses |
| DA.3 Dedekind pullback | ℤ[1/2]; ℤ₂; ℤ | C=0 yields identity flavour comparison; complete ring gives identity completion map; integer images span 16 classes | No generic K₀-surjectivity claim | Imported supplied Dedekind square |
| DA.3 correction definition | D=ℤ/4, images 2D and 0; then 2D and D | quotients have orders 2 and 1; quotient by intersection would have order 4 in first case | Sum, not intersection or one image | No generic quotient stand-in in Lean |
| DA.3 quadratic Dedekind table | ℤ and Eisenstein R | integer residues ℤ,0,ℤ/2,0; Eisenstein 0,0,ℤ/2,ℤ/4 | Extra degree-three kernel retained | Imported table, kept concrete obstruction calculation |
| DA.3 number-field quadratic | d=0 and d=1; ℤ versus Eisenstein | degree-two orders 1 and 2; A orders 1 and 4 for the two d=1 rings | Degree two does not determine A | Retained finite two-primary and actual Arf maps |
| DA.3 parity obstruction | d=0,1,2,3 | diagonal quotient orders 1,1,2,4; 2^(d−1) used only for d≥1 | No d=1 vanishing inference | Added d=0 and d=1 negative controls |
| DA.3 nondyadic dévissage | empty S; S={3}; forbidden S={2} over ℤ | empty cofiber=0; 3 leaves ℤ₂ completion fixed; false dyadic sequence forces ℤ/2=0 from adjacent zero groups | Dyadic counterexample rejects overbroad localization | Used valuation overring and finite support for arbitrary S |
| DA.4 ℚ₂ presentation | all 32 (a,b,e); c-products | 32 distinct keys; cu=c,cv=4u,c²=0; |(c)|=4, |ann(c)|=8 | Matches every generator and all multiplication-by-c coordinates | Correct annihilator uses c, not v |
| DA.4 integer Witt/E₈ | root, adjacent root pair, all 256 vectors | B(e,e)=2,q(e)=1; q(e+f)=1; det Gram=1; 136 zeros and 120 ones; signature 8 maps to 8 | Correct half-norm and Arf zero | Imported classification; retained actual refinement computation |
| DA.4 integral dyadic subgroup | u,v,c and polar plane | residues 0,1,0; |kernel|=16; polar key (0,0,5,−1)=(4,0,1) | Polar class is c+4u | Distinguished quadratic form from its symmetric image |
| DA.4 integer tables | degrees 0,1,2,3 and comparison | Ls ℤ,ℤ/2,0,0; Lq ℤ,0,ℤ/2,0; σ₀(1)=8; A=0 | Matches two-image quotient and Pic=0 | Imported integer tables |
| DA.5 Eisenstein arithmetic | t=0,1 mod 2; norm-one solutions; √−7 control | t²+t+1 gives 1,1; six norm-one pairs; t²+t+2 gives 0,0; discriminants odd in both examples | Odd discriminant alone cannot prove inertness | Separated irreducibility and unramifiedness |
| DA.5 Eisenstein symmetric | 0,u,2u,3u,4u | parity/determinant (0,1),(1,1),(0,−1),(1,−1); 2u≠0,4u=0 | Cyclic order four, preserved on completion | No claim of having read the book proof |
| DA.5 restriction | c,4u,u; λ on basis (1,s) | θc=θ4u=0; order θu=4; λ1=0,λs=1; kernel order 4,cokernel order 8 | Actual restriction and transfer sequence | Added statable field theorem; integral version remains prose |
| DA.5 Arf change | old plane and new qζ over 𝔽₄/O | old trace=0 and 7 zeros; new trace=1 and 1 zero; Norm(1−4ζ)=21≡5; Norm(−1)=1 | t distinct from 0 and 2u; intersection trivial | Corrected quadratic scalar-extension arrow |
| DA.5 final table | transfer matrix and subgroup quotient | det=21; diag 1,−1,4,−21/4; transfer(t)=c; |ann(c)/⟨c⟩|=8/2=4; pullback kernel=0 | Wq(R)=0,A(R)=ℤ/4 | Corrected source degrees zero and three |

The following rows audit each definition API and every shared normalization used across layers. The individual numerical Checks in the README are the same substitutions, with the wrong model named explicitly.

| Statement/API | Instances tried | Computed values | Result | Change |
| --- | --- | --- | --- | --- |
| Polarisation respects isometries/scalar extension | q=xy; exchange x,y; ℤ₂→𝔽₂ | q(y,x)=q(x,y)=xy; polar matrix [[0,1],[1,0]] reduces to the same matrix | Same actual form, not just an invariant | None |
| Polarisation preserves sums/zero | two hyperbolic planes and zero | block polar H⊕H; empty block is 0×0 with perfect zero adjoint | Additive descent holds in examples | None |
| Quadratic Lagrangian maps to symmetric Lagrangian | q=xy, L=k×0 | q|L=0, b|L×L=0, L⊥=L, rank L=1 | Both conditions checked | None |
| Half-diagonal inverse | b=xy over ℚ | q(1)=1/2; polar(1,1)=1; (polar q)(x,x)/2=q(x) | Not valid over 𝔽₂ | Added exact ring hypothesis |
| Second residue homomorphism/source/target | ℤ_(2), forms ⟨2⟩,⟨−2⟩ | residues 1 and 1 in Ws(𝔽₂); sum 0 equals residue of hyperbolic pair | Metabolic relation killed | Canonical line retained |
| Second residue on units | ⟨3⟩ at two | valuation 0→residue 0 | Rejects coefficient-only reduction | None |
| Second residue on uniformizer times unit | ⟨6⟩ at three | v3=1, unit=2→⟨2⟩ | Unit square class retained | None |
| Second residue square scaling | 2 versus 8; 1 versus 4 at two | odd valuations 1,3 both→1; even valuations 0,2 both→0 | Parity, not divisibility | None |
| Second residue uniformizer change | π=5 versus π′=10 on ⟨5⟩ | unit residues 1 versus 3=2⁻¹ mod5; ⟨3⟩=⟨2⟩ since 3/2=4 | Both directions of coordinate transport agree | Explicit witness added |
| Second residue finite support | ⟨6⟩ over ℚ | nonzero possible only at 2,3; at every p>3 valuation 0 gives 0 | Finite family, not product | None |
| Second residue ramified base change | ℤ→ℤ[i] at two | v_(1+i)(2)=2→residue 0 although residue field inclusion is id | Ramified linking map not identity | Kept review correction |
| Arf definition and basis independence | anisotropic 𝔽₂ plane with (e,f) and (f,e) | q(e)q(f)=1·1=1 in both bases | Swapping basis does not change trace | Native full polar retained |
| Arf orthogonal sum | two 𝔽₂ Arf-one planes | 1+1=0; diagonal copy of 𝔽₂² has q=0 and dimension 2 of total 4 | Nonzero class has order two | None |
| Arf hyperbolic class | q=xy | q(e)q(f)=0·0=0; nonzero isotropic e | Zero Witt class maps to zero | None |
| Arf zero iff metabolic | q=xy and q=x²+xy+y² over 𝔽₂ | zero-set cardinalities 3 and 1; invariants 0 and 1; only first has a nonzero isotropic line | Both directions distinguished | No arbitrary-polar regularity shortcut |
| Arf additive isomorphism | 𝔽₂ plane classes 0 and anisotropic plane | coordinates 0,1; adding anisotropic class twice gives 0 | Two distinct classes of order two | Imported F₂ quotient, generalized trace |
| Arf base change | degree two 𝔽₂→𝔽₄; identity degree one | Tr4(1)=0=2·1; Tr2(1)=1=1·1 | Even and odd degrees separated | Corrected Eisenstein arrow |
| Arf native regularity | line x² and plane xy over 𝔽₂ | line polar 0 with 1-dimensional kernel; plane polar determinant 1 | Nonzero quadratic map need not be nonsingular | Negative control retained |
| Dyadic completion ring equivalence | ℤ/2^m and Gaussian (1+i)^(2m) | one factor in both; m=1 residue quotients ℤ/2 and ℤ[i]/(2) of orders 2 and 4 | Ramification affects exponents, not factor count | Native scalar maps included |
| Dyadic completion structure maps | R=ℤ, elements 1,3 mod4 | mod2 both project to 1; sum 1+3=0 mod4 projects to 0=1+1 mod2 | Quotient projections commute with operations | Projection extensionality explicit |
| Dyadic completion cofinality | ramification e=2, n=1,2,3 | choose m=1,1,2 so 2m≥n; powers 2m unbounded | All prime-adic levels reached | None |
| Finite Arf definition versus raw basis sum | q=xy over 𝔽₄, standard basis versus ((1,1),(ζ,ζ²)) | raw sums 0 and 1; polar pairing ζ+ζ²=1; traces 0 and 0 | Basis trace is invariant; raw sum is not | Added discriminating basis-change Check |
| Dyadic completion residue API | ℤ₂, Gaussian completion and Eisenstein completion | residue field cardinalities 2,2,4; Gaussian R/(2) has 4 elements but residue field has 2 | Completion factors use R/p, not R/(2) indiscriminately | None |
| Dyadic completion invert-two API | ℤ₂ and ramified Gaussian factor | 2=π in first and unit times π² in second; inverting 2 inverts π in both, giving the fraction field | Positive valuation of 2 is needed | None |
| Dyadic completion away API | ℤ→ℤ[1/3] at two | 3 is a unit in every ℤ/2ⁿ; mod4 its inverse is 3 since 3·3=1 | Inverting nondyadic primes preserves each quotient and limit | None |
| Dyadic completion projection extensionality | two-factor completion; empty completion | x↦(0,0) versus x↦(0,1): first values 0=0, second 0≠1; empty product has one element | All factors required; empty condition valid | Added explicit Check |
| Obstruction quotient surjectivity | D=ℤ/4 modulo 2D | classes 0 and 1 have representatives 0 and 1 | Every class attained | None |
| Obstruction zero iff sum of images | D=ℤ/4 with s-image 2D and q-image 0 | 2=2+0 maps to zero; 1 cannot be 2a+0 and maps to the nonzero class | Both directions hold in the cyclic model | None |
| Obstruction native quotient API | D=ℤ/4 with two images 2D and 0 | subgroup supremum {0,2}; native quotient cardinality 2 | No second quotient carrier needed | None |
| Nonfree integral symmetric carrier | I=(2,1+√−5) over ℤ[√−5] | I² generated by 4,2+2√−5,−4+2√−5 equals 2R; (1/2)I=I⁻¹, so adjoint of xy/2 is an isomorphism | A perfect rank-one form need not have a free carrier | Added explicit negative control against free-only definitions |
| Dyadic completion empty product | ℤ[1/2] and ℚ | (2)=R; quotient cardinality 1 at every m; empty product has one element | Zero ring, not R | Empty case retained |
| Obstruction quotient construction/projection | D=ℤ/4, images 2D and 0 | kernel {0,2}, quotient {0,1} modulo 2D | Both kernel and quotient computed | No choice of splitting |
| Obstruction kills both images | D=ℤ/4, images 2D and D | images generate D; every quotient value=0 | Separate image killing required | None |
| Obstruction universal property | D=ℤ/4→ℤ/2 reduction; images 2D,0 | 2↦0 so it factors; identity D→D sends 2↦2 and does not factor | Positive and negative models | None |
| Obstruction total cokernel comparison | global 0→D, completed quadratic D→D identity | coker σ_C=0 gives total cokernel 0; two-image quotient D/D=0 | One-image cokernel would be D | No stand-in theorem |
| Obstruction commuting functoriality | identity square on D=ℤ/4 with image 2D | induced quotient map sends 0→0,1→1; if target image is 0, id sends 2 outside it | Noncommuting/nonpreserving map rejected | Restricted statement to compatible maps |
| q2V defining diagonal/nonzero weights | coefficients 1,−2 | both nonzero; signed determinant 2; coordinate (0,1,0) | Native regular class, not degenerate square line | None |
| q2V order and residue | v,2v | coordinate (0,1,0)→(0,0,0); second residue 1→0 | Order exactly two | None |
| q2C defining diagonal/square replacement | 3 versus −5 | −5/3≡1 mod8; signed determinant −3 unit class5 | Same binary class | None |
| q2C order and multiplication | c,2c,c²,cv | coordinates (0,0,1),0,0,(4,0,0) | Nonzero nilpotent, not zero class | Correct annihilator |
| q2Coordinates additive and unique | all 32 triples and cyclic wrap | 32 keys distinct; 8u=2v=2c=0; (7,1,1)+(1,1,1)=(0,0,0) | Correct cyclic reduction | No integer-coefficient ambiguity |
| q2Coordinates surjective/local classification | rank parity plus determinant and Hasse restrictions | 32 allowed local Witt keys and 32 coordinates | Finite invariant completeness relies on imported classification | Equal dimensions fixed in audit |
| Residue-line derived shift | ℤ/2 with resolution ℤ→²ℤ | Hom into ℤ has H⁰=0,H¹=ℤ/2; spectrum coefficient degree −1 | No degree-zero Hom duality | Imported canonical line |
| Perfectness versus determinant nonzero | ℤ-line B=2xy; rank zero | cokernel ℤ/2 versus zero cokernel on 0→0 | Unit determinant/perfect adjoint required | Negative control included |
| Noncommutative anti-structure | M₂(𝔽₂), transpose, u=1 | transpose²=id; uau⁻¹=a; transpose(u)=u⁻¹=1 | Genuine noncommutative ring passes | Wall carrier distinguished from commutative QuadraticMap |
| Group quotient scope | C₄ and S₃ with a transposition subgroup | C₄/2C₄ has 2 classes; transposition subgroup has 3 conjugates and is not normal | Additive abelian quotient cannot be generalized to arbitrary subgroup quotient | Only AddCommGroup used |
| Signed versus plain determinant | hyperbolic 2-plane and transferred 4-form | plain dets −1,21; signed dets 1,21; 21 unit class5=−3 | Parity factor applied before comparison | Convention explicit |
| Unital field-Witt versus half-diagonal | bilinear unit line over ℚ | unital diagonal coefficient 1; half-diagonal coefficient 1/2; ratio2 | Different comparison maps | Normalization correction recorded |
| Hilbert sign normalization | (−1,−1),(2,5),(−1,2) over ℚ₂ | values −1,−1,+1 from ε/ω formula | Same formula in every ℚ₂ layer | No sign reversal |
| Difference map normalization | (1,1),(2,1),(1,2) | 1−1=0,2−1=1,1−2=−1 | A sum gives 2 at (1,1), so cannot be the complex map | Consistent with stable supplier |
| Pic/2 versus two-torsion and inverse class | Pic model ℤ/4; class x=1 | cokernel elements 0,1 mod2; two-torsion elements 0,2; −1=1 modulo2 | Same order need not mean same map | Cokernel and divisor sign explicit |
| Characteristic/empty/zero-ring boundaries | char2 R=𝔽₂[t]; char≠2 R=ℚ; zero ring | two=0 excludes first from dyadic CRT; d=0,C=0 for ℚ; zero ring Witt/L=0 | No division by zero or invalid dyadic finite-prime set | Separate cases retained |

The transfer diagonalization was checked by rational congruence, not only by determinant. On the ordered source basis, orthogonal vectors are (0,0,1,0), (0,1,−1,0), (1,2,−2,0), (−3/4,−1/2,3/2,1); their norms are 1,−1,4,−21/4 and all six off-diagonal pairings are zero. All denominators 2,4 are nonzero in ℚ or ℚ₂; no such divisions occur over 𝔽₂ or integral dyadic coefficients.

The complete multiplication-by-c audit is recorded here. Coordinates mean au+bv+ec, and each entry was independently classified by the equal-dimension Hilbert key.

| Input (a,b,e) | Product by c |
| --- | --- |
| (0,0,0) | (0,0,0) |
| (0,0,1) | (0,0,0) |
| (0,1,0) | (4,0,0) |
| (0,1,1) | (4,0,0) |
| (1,0,0) | (0,0,1) |
| (1,0,1) | (0,0,1) |
| (1,1,0) | (4,0,1) |
| (1,1,1) | (4,0,1) |
| (2,0,0) | (0,0,0) |
| (2,0,1) | (0,0,0) |
| (2,1,0) | (4,0,0) |
| (2,1,1) | (4,0,0) |
| (3,0,0) | (0,0,1) |
| (3,0,1) | (0,0,1) |
| (3,1,0) | (4,0,1) |
| (3,1,1) | (4,0,1) |
| (4,0,0) | (0,0,0) |
| (4,0,1) | (0,0,0) |
| (4,1,0) | (4,0,0) |
| (4,1,1) | (4,0,0) |
| (5,0,0) | (0,0,1) |
| (5,0,1) | (0,0,1) |
| (5,1,0) | (4,0,1) |
| (5,1,1) | (4,0,1) |
| (6,0,0) | (0,0,0) |
| (6,0,1) | (0,0,0) |
| (6,1,0) | (4,0,0) |
| (6,1,1) | (4,0,0) |
| (7,0,0) | (0,0,1) |
| (7,0,1) | (0,0,1) |
| (7,1,0) | (4,0,1) |
| (7,1,1) | (4,0,1) |

## Elaboration and dependency checks

The permitted targeted builds completed for TauCeti.LinearAlgebra.QuadraticForm.Witt.Ring, TauCeti.LinearAlgebra.QuadraticForm.Witt.BaseChange, TauCeti.LinearAlgebra.QuadraticForm.Transfer.Witt, and TauCeti.RingTheory.DedekindDomain.AdicValuation.Completion. No bare build, update or cache command was used.

Ran `lake env lean` from the content checkout on the final `packages/GeometryOfNumbersAndQuadraticArithmeticPartII/Suggested.lean`. Exit status 0. Exactly **3** warnings, each with the message ``warning: declaration uses `sorry` ``; zero errors and zero other messages. The three warning locations in the final file are its three headline theorems. The final scratch type-check elaboration also succeeded, with the same three sorry warnings and the requested six expanded declaration types. The intermediate overlapping-instance warning was corrected by removing redundant IsDomain, since IsDedekindDomain already supplies it. The extension-field invertibility choice is made from the native supplier and the nonzero-functional proof was simplified; no options were overridden.

The final dependency-check output was:

```text
depcheck: 34 roadmaps, 308 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. Citation resolution against main d225eaf and the indexed heads reports no unresolved cross-roadmap citations and no unresolved Lean names. Its final note says it did not index library names because it found no pinned Lake packages in its own host lookup; direct reads of the specified pins and the successful elaborations above cover those library names instead.

Only the six authorized package/report paths were changed. No content checkout source, toolchain, manifest pin, merge order, external issue or pull request was edited. The worklist, generated skeleton and finite arithmetic/type-check evidence were kept in scratch.
