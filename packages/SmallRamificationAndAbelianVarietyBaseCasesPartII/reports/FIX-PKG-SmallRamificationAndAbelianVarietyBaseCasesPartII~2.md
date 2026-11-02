# Repair report

## F01 (P2) — applied

Ambient finite-length M → generating M∈MFₜₒᵣ[0,r], killed by p, explicitly requiring Σᵢφᵢ(FilⁱM)=M. Propagated through §§1.2–1.7 and the realization in §1.8. A(E) retains its larger ambient category. Added the zero-Frobenius negative control in §1.2. Fontaine93 lines 75–77, 309–319 and the supplier’s §R07.3.4 distinguish these domains.

## F02 (P2) — applied

“Unstatable K3 obstruction” → `geometricK3_hasBadWittPrime`, expanding exactly the five native conditions of K3SurfacesAndSymplecticBoundedness §1.1 after geometric base change. Updated the module docstring and README §4.2. No second K3 predicate or differential-form definition is introduced. The contradiction is h²⁰=1 versus 0 (Schroeer23 lines 683–697; Fontaine93 lines 93–103).

## F03 (P2) — applied

New discriminant evaluation request → ordinary consumption of SmallRamificationAndAbelianVarietyBaseCases §1.9, row (b)’s accompanying exact lower bound 7.00 at n=11 and monotonicity. Removed `root-discriminant-seven` from the supplier contracts and top-level gaps. Updated scope, §2.4 and Layer 2 dependencies. The existing worked example still yields 6n″≤10 and n″=1.

## F04 (P3) — applied

Repeated or non-instance Checks → concrete instances and prose qualifications. Cleaned §§0.1–0.2, 1.1, 1.3–1.8, 2.1–2.8, 3.1–3.3 and 4.1. Made §1.6’s modulo-nine obstruction and §2.3’s ramified transvection explicit; specialized §3.2’s pair list to ℙ². Every numbered section retains at least three Checks. Added no Lean padding.

## F05 (P2) — applied

One compound `fl-local-weight-ext` gap → three separately quantified contracts: `fl-weight-zero-unramified`, `fl-rank-one-inertia`, `fl-oriented-mod-p-splitting`. Updated §§2.3, 2.6, 2.5 respectively, and Layer 2 dependencies. The same eight resulting supplier contracts occur verbatim in README and top-level gaps. The domains follow Fontaine93 lines 184–228 and 245–272; generic categories remain supplier-owned.

## Mathematical audit

Each row records an instance calculation, not a formal proof from the admitted acceptance signatures. Supplier-dependent assertions remain conditional on their stated contracts. Entries covering an API state which of its laws is tested; no identity is justified solely by elaboration.

| Statement or convention | Instances and computed values | Result and change |
| --- | --- | --- |
| Scheme domain, smoothness and properness | Empty X has zero cohomology; ℙ⁰ has h⁰⁰=1; Spec ℚ[ε]/ε² is nonreduced and not smooth; 𝔸¹ is smooth but not proper. | Included and excluded inputs agree with the hypotheses. |
| Witt base and prime domain | At p=2, W(F̄₂) has characteristic zero and residue characteristic two; p=0 and p=1 both have Prime=false, excluding ZMod 0 and the zero coefficient ring. | No good-prime restriction or equal-characteristic substitute. |
| §0.1 local model definition and its existential characterization | For ℙⁿ, base change of ℙⁿ over the Witt ring identifies both generic fibres, including n=0. For the empty scheme both generic fibres are empty. | Local model predicate has actual witnesses; no nonemptiness hypothesis added. |
| §0.1 transport, isomorphism and integral-model API | Identity on ℙ¹ induces identity on each generic fibre; composing two identity identifications still gives identity. ℙ¹ over ℤ supplies one model after each ℤ→W(F̄ₚ). | Maps and isomorphisms are over the same field, with the required projection equality. |
| §0.1 local versus everywhere property | E:y²=x³−x has Δ_min=64: v₃(Δ)=0, v₂(Δ)=6; j=1728 has v₂(j)=6. Local property at 3 is true; at 2 it is false despite potential good reduction. | Three discriminating Checks retained; ℓ=3 is different from residue characteristic 2. |
| §0.2 cohomology realization | Spec ℚ has dim H⁰=1 and dim Hᵐ=0 for m>0; two disjoint rational points give 2 and 0. | Connectedness is unnecessary. |
| §0.2 twists, duals and Hodge–Tate comparison | For ℙ¹ and q=2: H² Frobenius=2, dual=1/2, weights −1 and +1. The dimension of (C₇(i)⊗H²)^G is 1 for i=1 and 0 for i=0,2. | Pins geometric Frobenius and the positive cyclotomic Hodge–Tate sign; duplicate Checks deleted. |
| Purity convention and supplier compatibility | χ⁰⊕χ¹ at q=2 has eigenvalues 1,1/2 and weights 0,−2, rather than a single pure weight. Dual ℙ¹ has modulus 1/2=2^(−2/2). | Recomputed the sign witness in Layers 0 and 3 and against the purity supplier. |
| Local weight interval and valuation normalization | p=2 gives no positive r<1; p=3 gives only r=1; p=7,r=3 gives r/(p−1)=1/2. For e=2, v₀(π)=1/2 and v₀(p)=1. | No zero denominator or unsupported ramified-base generalization. |
| §1.1 ideal, quotient map and equality of classes | At p=3,r=1,E=ℚ₃(π), π²=−3, b=(π²), A=𝔽₃[π]/π². Classes π and 0 differ; π² and 0 agree. Since v₀(3)=1>1/2, 3 maps to zero. | Strict cutoff and kernel API agree. |
| §1.1 filtration and divided Frobenius | In that quotient Fil¹=𝔽₃π; φ₁(π)=π³/(−3)=π; division by +3 gives −π≠π. At E=ℚ₃, A=𝔽₃ and Fil¹=0. | Correct sign and valuation threshold; repeated boundary Check deleted. |
| §1.1 additivity and embedding API | φ₁(π+π)=φ₁(2π)=2π=π+π. Identity sends π to π, and π↦−π commutes with φ₁, giving −π on both sides. | Tests addition, semilinearity over 𝔽₃, and source/target compatibility. |
| §1.1 ambient size | Values 1/3,1/4,1/5,… all lie below 1/2. A finite nonzero k-linear combination has the smallest occurring value, still ≤1/2, hence nonzero class. | Infinitely many independent classes; A(K̄) must remain ambient. |
| §1.2 generation and invertible matrix | M=0 has image sum 0=M and the empty invertible matrix. Weight-zero unit has image sum M, matrix (1), determinant 1. Nonzero zero-Frobenius M has image sum 0≠M and determinant 0. | F01 fixes the missing distinction everywhere the matrix is used. |
| §1.2 negative control | For zero-Frobenius M=𝔽₃ and A=𝔽₃[π]/π², φ₀(a+bπ)=a, so Hom images are 0,π,−π: cardinality 3. The exact equation x³=0 in E has cardinality 1. | Ambient counterexample explicitly excluded; generation restores the source’s domain. |
| §1.2 solution definition | Zero M gives 1 exact tuple and 1 Hom. Weight-zero unit at p=3 gives exact roots 0,1,−1 and three fixed classes. Weight-one unit gives 1 root over ℚ₃ and 3 over ℚ₃(π). | Positive and negative cardinality controls retained. |
| §1.2 matrix direction | For weights (0,1), matrix rows (1,1),(0,1), and θ³+3θ+3=0, (1,θ) gives 1=1 and θ³=−3−3θ, with v₀(θ)=1/3. Transposition requires 1=1+θ. | Column convention excludes the transpose. |
| §1.2 Hom, equality and functoriality API | A map out of zero is unique; unit endomorphisms 0 and 1 give distinct Hom maps. Precomposing twice with −1 multiplies solutions by (−1)²=1, agreeing with identity. | Contravariance, basis extensionality and composition have concrete witnesses. |
| §1.2 exact solutions are a set | At p=3, roots 1 and 1 have sum 2, while 2³−2=6≠0 in E. In the truncated Hom, 1+1=−1. | Excludes coordinatewise addition on exact lifts. |
| §1.3 exact-lift bijection | For zero M, 1=1; weight-one unit over ℚ₃, 1=1; over ℚ₃(π), 3=3. With e=2 the initial integer precision n>1 admits 2 and excludes 1. | F01’s generating domain carried into the bijection. |
| §1.3 uniqueness cutoff | π−(−π)=2π has value 1/2: the two exact roots have distinct classes with v>1/2 cutoff and coincide with a v≥1/2 cutoff. | Strictness retained; structure-transfer qualification moved into prose. |
| §1.4 comparison | Zero M: dimensions 0=0. Weight-zero unit: dimensions 1=1, cardinalities 3=3. Weight-one: φ₁(π)=π on both realizations; a zero map would have image cardinality 1 rather than 3. | F01 domain repaired; projection and normalization remain required from gap:fl-acris-truncation. |
| §1.5 splitting-field iff, both directions | Zero M gives L=K and #J=1=p⁰. Weight-one at p=3 gives #J(K)=1<3 and L⊄K; at E=L the count is 3=3 and L⊆E. | Both implications tested, using equivariant exact lifts. |
| §1.5 further extension | At E containing L=ℚ₃(π), the equation still has exactly roots 0,π,−π: cardinality 3, independent of [E:L]. | Containment, rather than equality of fields, is the criterion. Duplicate zero-rank Check deleted. |
| §1.6 approximate-map threshold | p=3,r=1 gives c=3/2. m=2 satisfies m>c; m=3/2 does not. An element of value 2 dies in the ≥2 ideal, whereas π of value 1/2 survives the period quotient. | Ideals have distinct inequalities and purposes. |
| §1.6 actual approximate obstruction | For L=ℚ₃(π), E=ℚ₃ and m=2, x²+3 modulo 9 for x=0,…,8 is 3,4,7,3,1,1,3,7,4. No residue is 0. For L=K the identity supplies both map and embedding. | F04 replaces an uncomputed exclusion by an explicit relation check. |
| Shifted/Serre convention and §1.7 bound | ℚ₃(ζ₃): shifted break 1, Serre break 0, lower displacement 1/2, different 1−1/2=1/2<3/2. Unramified L gives different 0<3/2. At p=7,r=3, shifted bound=3/2 and Serre bound=1/2. | Recomputed against §R07.6.2. F01 domain propagated and duplicate Checks deleted. |
| Generic all-m refinement contract | With c=3/2,e=2, unrefined u<m+1/e for all m>c yields only u≤2, not u≤3/2. The tame witness has u=1≤3/2. | gap:pm-remove-inverse-e remains necessary; no invalid infimum argument. |
| §1.8 crystalline subquotient | Zero quotient: different 0. ℤ/3(1): different 1/2<3/2. ℤ/9(1): e=6, different exponent 9, normalized different 9/6=3/2. | Last object is outside killed-three domain; realization now explicitly requires generating M. |
| §2.1 category and exponent | Trivial ℤ/49 has 49 elements and 7·1=7≠0. Zero has one element. Mod-seven χⁱ at a tame generator χ=3 gives 1,3,2,6 for i=0,1,2,3 and 4 for i=4. | Arbitrary seven-power lengths admitted; weight four excluded. |
| §2.1 morphisms and closure API | In trivial ℤ/49, the subgroup 7ℤ/49 and its quotient both have order 7; their direct sum has order 49 and trivial action. Identity acts as 1 and zero map as 0. | Tests subobject, quotient, direct sum, zero, and underlying-map equality. Ambient extension closure is not inferred. |
| §2.2 step definition and quotient interpretation | S₃ acting on ℚ³, χ=1: step₀(0)=ℚ(1,1,1), dimension 1; step₀(top)=top, dimension 3. The line ℚe₁ is sent by (12) to ℚe₂, so is not stable. | Both a nonabelian group and the missing-stability case tested. |
| §2.2 monotonicity, containment and naturality API | For that S₃ action, 0⊆top gives the dimension inclusion 1≤3. For identity on U and N=top, step maps to itself with dimension 3; zero map has image dimension 0 inside each target step. | Inverse-image construction and equivariant transport have their intended domains. |
| §2.2 pure-character steps | On a χ²-line over a field with distinct χ⁰,…,χ³, dimensions (U₄,U₃,U₂,U₁,U₀)=(0,0,1,1,1). On the zero module all dimensions are 0. | Correct descending index order and scalar quotient action. |
| §2.2 nonsplit orientation | For C₇⋊C₆, t=diag(6,1), w=((1,1),(0,1)): twt⁻¹=w⁶. Common invariants have dimension 0. Descending steps 3,2,1,0 have dimensions (1,1,1,2); reversed order gives (0,0,0,1). | Nonsemisimple witness pins the orientation without a claim of arithmetic realizability. |
| §2.2 ring versus field | Over ℤ/25, χ=ρ=6 has powers 1,6,11,16. Difference 6−16=−10 has kernel 5(ℤ/25), cardinality 5, so step₃ is nonzero despite distinct units. | Field hypothesis of the pure-line Check is essential. |
| §2.3 trivial endpoints | Trivial ℤ/49 has an element of order 49, while ℤ/7⊕ℤ/7 has exponent 7. Nevertheless both actions are trivial. Zero U has kernel field ℚ with degree 1 and rd=1. | Action triviality does not assert group splitting. |
| §2.3 new ramified ambient extension | a(g)=(χ₇(g)⁶−1)/7 mod 7 is additive because χ₇⁶≡1 mod 7. For χ₇(g)=8 mod 49, a(g)=37449 mod 7=6. The transvection has order 7 and is not identity. | Actual nontrivial inertia contradicts weight-zero unramifiedness, excluding this middle term from C₇[0,3]. |
| New weight-zero supplier contract | Zero has inertia on a zero module; a trivial rank-two ℤ/49-module has inertia matrix I₂ and cardinality 49²=2401. The preceding transvection has nonidentity inertia. | Arbitrary rank and finite p-power length distinguished from rank-one and killed-p exports. |
| New rank-one inertia supplier contract | At p=7,n=2, ℤ/49(1) has 49 elements and 7·1=7≠0. For an unramified character λ with Frobenius −1, λ on inertia is 1, so χⁱλ and χⁱ have identical inertial scalars. | Does not falsely specify the full local Galois character; mod-seven alone is insufficient. |
| New oriented local splitting supplier contract | At p=3,r=1, quotient weight 1 and subobject weight 0 satisfy 0<1; reversed weights give 1<0=false. At p=2 no distinct pair fits r<1. | Order, essential-image condition and pU=0 remain explicit. |
| §2.4 simple-object degree argument | 42·6=252≤287<294=42·7, hence n″≤6. A Sylow count dividing an integer ≤6 and congruent to 1 mod 7 is 1. | Base degree bound 287 retains the unique-Sylow margin. |
| §2.4 discriminant consequence and F03 | Supplied lower bound at n=11 is ≥7, increasing with n; rd<7 excludes every n≥11. Degrees of fields containing ℚ(ζ₇) are 6,12,18,…; 12≥11 is excluded, leaving 6. | No new numerical evaluation required. n″=1 still follows. |
| §2.4 simple characters and normal p-group argument | χ=3 gives scalars 1,3,2,6,4 at weights 0,…,4. A C₇ transvection on 𝔽₇² fixes a line of dimension 1; on a simple module, a nonzero stable invariant subspace must be the whole space. | Weight four excluded; nonzero invariants plus normality supply the group step. |
| §2.5 exceptional orientation and different | For a=1,2,3: b≡a mod 6 and 0<b≤a give b=a. Tower exponents 7·5+6(a+1) are 47,53,59. The corresponding root discriminants are about 8.82480,11.65288,15.38727. | First two are <12, last >12: retains exactly quotient 0/subobject 3 as the possible exception. |
| §2.5 tame-conjugation sign | With tame value 3 and wild value 1, b=1,2 give 3,2; the inverse convention gives 5,4. | Recomputed in conventions, supplier contract, §2.5 and worked example. |
| §2.5 unramified-relative case | Discriminant exponent 7·5=35, rd=7^(35/42)≈5.06114<5.72. Degree 42>8 contradicts the supplied bound. | Class-number computation is unnecessary; orientation and killed-seven hypotheses retained. |
| §2.6 decomposition | ℤ/49(1) has g₁ of order 49 and g₀ of order 1. For 𝔽₇(1)⊕𝔽₇(2), the two eigensubgroups have orders 7 and 7, product 49. | All seven-power exponents, not only vector spaces. |
| §2.6 excluded trivial quotient | The displayed nonsplit two-dimensional χ³-by-trivial representation has a trivial quotient of dimension 1; forcing a direct sum would instead give a nonzero invariant vector, while its invariants have dimension 0. | Hypothesis excludes this wrong conclusion; unramified twists removed globally by Minkowski. |
| §2.7 finite exhaustiveness | Zero: all groups have order 1. ℤ/49(i): Uₖ has order 49 exactly for k≤i. Nonsplit two-dimensional example: dimensions (0,1,1,1,2). | Exhaustion does not imply splitting. |
| §2.8 rational exhaustiveness | ℚ₇(1)⊕ℚ₇(2) has dimensions (0,0,1,2,2). Zero has five zero dimensions. Lattice witnesses 1 mod 7ⁿ reduce to 1 at each earlier level; a level-two witness 2 does not reduce to a level-one witness 1. | Compatible limits required; no arbitrary-witness shortcut. |
| §3.1 purity and full scalar conclusion | At q=2, candidate grade moduli are 1,1/2,1/4,1/8; none is 2^(−1/2) or 2^(−3/2). In degree 2 only 1/2 survives, giving i=1. | Odd groups vanish and the sole grade is the whole dual degree-two space. |
| §3.1 nonsemisimple control | Matrix ((2,1),(0,2)) has characteristic polynomial (T−2)² and pure weight 2, but differs from 2I by a nonzero rank-one matrix. | Purity alone does not prove scalar action; exhaustive single-grade conclusion does. |
| §3.2 Hodge headline | On ℙ² all eight off-diagonal pairs of total degree ≤3 have dimension 0. On ℙ¹, h¹¹=1, so dropping i≠j would give 1=0. Empty X gives dimension 0 in every bidegree. | F04 turns the pair list into a computed instance; genuine headline kept. |
| §3.2 degree and diagonal boundaries | ℙ² has h²²=1 at total degree 4. At total degree 0 the sole pair is (0,0), so i≠j is false. | Neither a diagonal theorem nor a total-degree-four extension is asserted. |
| §3.3 integral specialization | Spec ℤ gives h⁰⁰=1 and positive groups 0. ℙ¹_ℤ gives h¹¹=1 and h¹⁰=h⁰¹=h²⁰=h⁰²=0. Elliptic Δ has values v₃=0,v₂=6. | Independent models must exist at every prime; one good prime does not suffice. |
| §4.1 geometric canonical line and base change | For geometric K3, H⁰(O)=ℚ̄ and Ω²≅O, so h²⁰ over ℚ̄ and over ℚ is 1. Multiplication of a trivializing form by 2 remains invertible; multiplication by 0 has rank 0. | No descended choice of form is needed; duplicate abelian-surface Check deleted. |
| §4.1 K3 versus other surfaces | Abelian surface: (h²⁰,h¹(O))=(1,2); K3: (1,0). Empty scheme: h²⁰=0 and geometric integrality false. | Native five-condition hypothesis excludes both wrong models. |
| §4.2 new K3 headline | At (i,j)=(2,0), i≠j and i+j=2≤3. Everywhere Witt models imply dimension 0; geometric K3 gives dimension 1. Smooth quartic geometric K3 gives the 1 side; empty X fails geometric integrality. | Negating the universal prime property gives a prime p with no Witt model, including the possibility p=2. |
| §4.3 imported projective-space formula | ℙ⁰: h⁰⁰=1 only. ℙ¹: h¹¹=1,h²⁰=0. ℙ²: h²²=1,h¹²=h²¹=0. For i>n, Ωⁱ=0, giving Hʲ=0. | Agrees with all Hodge examples and requires the sheaf exterior power, not exterior power of global sections. |
| Kernel-field dictionary contract | Zero action has fixed field K and one solution; weight-one mod-three action has quadratic kernel field, three solutions there and one over K. | Equality of cardinalities detects containment in both directions. |
| Witt comparison and completed-inertia contracts | ℙ¹ over W(F̄ₚ): dim H²_crys[1/p]=1=dim H²_et, crystalline Frobenius p; away from ℓ the geometric Frobenius at q=2 is 2. An elliptic curve with nontrivial 3-adic inertia at 2 cannot acquire such a Witt model. | Existing declared domain extensions retained; completion is not treated as an algebraic union. |

## Source, ownership and citation verification

Read the two main-branch examples `TauCetiRoadmap/SchemeAndStackFoundations/README.md` and `TauCetiRoadmap/LocalFieldsRamification/README.md` before editing. The existing layer order, API prose and mathematical scope are preserved.

Read the legal cached extractions of all three manifest entries: Fontaine93 lines 23–414, Schroeer23 lines 658–700, and LMFDB32a3 lines 158–164, 262–277, 494–517. The Fontaine numbering is the author preprint’s printed pagination, not the proceedings pagination. No new source was needed, no entry was duplicated, and no missing-reference request remains. `sources.toml` and `metadata.toml` are unchanged.

All supplier citations were resolved again against main or the provided open-head index using `roadmaps show`, followed by reading the cited sections. The citation resolver reported no unresolved roadmap citations or names. Its printed disclaimer says it did not check pinned Lake declarations; those were checked directly in the pinned trees below, rather than treating that disclaimer as evidence of absence.

| Supplier | Sections and actual objects consumed |
| --- | --- |
| SchemeAndStackFoundations, main | §§0.9, 0.11: spreading, field base change and descent; §2.6: coherent flat base change; §2.20: relative duality and canonical differentials; §3.3: global functions on proper geometrically integral curves; §§4.8–4.10: completion and formal comparison. |
| EtaleCohomologyFoundations, main | §§F.2.1–F.2.2: proper and smooth base change, with invertibility for the latter; §F.3a: trait inertia; §§F.4.0–F.4.6: stable lattices, normalized integral systems, rational cohomology and continuous actions. |
| PadicHodgeTheory, supplied head | §§0.1, 0.4, 3.2–3.5, 5.5: period domain, signs, fixed spaces, perfect-residue realization and completed-unramified descent; §8.1: proper smooth comparison over finite p-adic bases. General W(k) geometric comparison remains gap:witt-proper-smooth-comparison. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory, supplied head | §R07.3.4: ambient versus generating torsion category; §R07.3.5: strict exactness; §§R07.3.7–R07.3.12: contravariant realization, length, tame weights and safe-range closure; §§R07.3.13–R07.3.17: lattice comparison; §§R07.6.1a–R07.6.3: perfect-residue Herbrand theory, numbering, different and the 1/e-loss criterion. The refined criterion remains a gap. |
| ArithmeticGaloisRepresentations, supplied head | §§1.1–1.3, 1.6, 1.9, 2.2: continuous operations, stable lattices, reductions and unramifiedness. The full arbitrary finite p-primary kernel-field interface remains its declared gap. |
| SmallRamificationAndAbelianVarietyBaseCases, supplied head | §§1.1, 1.4, 1.7, 1.9: normalized different comparison, Minkowski, Poitou and degree bounds. Row (b)’s accompanying exact bound is 7.00 at n=11; rows (d), (f) and §1.7 supply the other numerical consequences. |
| LocalFieldsRamification, main | Layers 2–3: unramified lifting, Herbrand and different formulas, and tame conjugation θᵦ(στσ⁻¹)=θ₀(σ)ᵇθᵦ(τ). The completion-to-inertia comparison remains a declared gap. |
| DeligneWeightsAndPurity, supplied head | §§0.8–0.9: characteristic polynomials and invariant subquotient purity without semisimplicity; §7.15: proper smooth finite-field purity without projectivity. |
| K3SurfacesAndSymplecticBoundedness, supplied head | §§1.1–1.4, 2.4 and its Suggested.lean: the five native K3 conditions, field-extension invariance, projectivity and h²⁰=1. The added signature expands those conditions literally as mathematical predicates without adding a carrier. |
| CrystallineCohomology, supplied head | §CR.3.5 explicitly includes the full Ω-cohomology formula for projective space over any base ring, beyond twisting-sheaf cohomology. |
| EllipticCurves, main | Layer 4: integral-j potential good reduction, minimal-equation reduction and Néron–Ogg–Shafarevich with ℓ different from the residue characteristic. |
| EnriquesSurfacesAndIntegralNonexistence, supplied head, consumer only | §§3.11, 3.13 construct compatible local scheme models and use Fontaine’s obstruction. No input edge from that consumer is added. |

Searched by object with `roadmaps grep` at the supplied open heads and main, with local searches in board packages and both pinned libraries. General filtered modules and realizations remain owned by FiniteFlatGroupsAndIntegralPadicHodgeTheory, and the geometric K3 predicate remains owned by K3SurfacesAndSymplecticBoundedness. This package owns the higher-weight continuation and Fontaine/K3 arithmetic endpoint because the base SmallRamificationAndAbelianVarietyBaseCases stops at its finite-flat/discriminant/abelian-variety conclusions. The added declaration has this package’s namespace, not a supplier’s fully qualified name. No independently searched remote checkout was used beyond the provided roadmap service.

The Enriques consumer still routes `fontaine-low-degree-hodge` to PadicHodgeTheory, Part II §everywhere-good-reduction. Its actual local-model mathematical requirement is supplied here by §§3.2–3.3 and 4.2. Reconciliation of that consumer’s routing is outside these editable files; no consumer change or merge-order change was made.

Pinned Mathlib is `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; pinned Tau Ceti is `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, as in the content checkout’s `lake-manifest.json`.

| Pinned declaration | File and line; checked meaning and limitation |
| --- | --- |
| Representation | Mathlib/RepresentationTheory/Basic.lean:48: `G →* V →ₗ[k] V`; no continuity condition. |
| Representation.invariants, Representation.mem_invariants | Mathlib/RepresentationTheory/Invariants.lean:73,80: vectors fixed by all g. |
| Submodule.comap | Mathlib/Algebra/Module/Submodule/Map.lean:171: inverse-image submodule. |
| Module.finrank | Mathlib/LinearAlgebra/Dimension/Finrank.lean:61: natural-valued rank, not a substitute for a finite-dimensionality hypothesis. |
| NumberField.rootDiscr, NumberField.rootDiscr_rat | Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean, rootDiscr definition and line 83: ℚ value 1. |
| WittVector.isDiscreteValuationRing, WittVector.isAdicCompleteIdealSpanP, WittVector.p_nonzero | Mathlib/RingTheory/WittVector/DiscreteValuationRing.lean:148; Complete.lean:116; Identities.lean:88: perfect characteristic-p field assumptions give the Witt DVR, p-adic completeness and nonzero p. |
| IsProper | Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41: separated, universally closed and locally finite type. It imposes neither connectedness nor projectivity. |
| SmoothOfRelativeDimension | Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:127: local standard smooth presentations of the specified dimension. |
| GeometricallyIntegral | Mathlib/AlgebraicGeometry/Geometrically/Integral.lean:40: every field fibre is integral, excluding the empty geometric fibre. |
| Scheme.relativeDifferentials | TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85: sheafification of relative Kähler differentials for the specified over-structure. |
| SheafOfModules.exteriorPower | TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower.lean:49: sheafification of the presheaf exterior power, not exterior power of global sections. |
| Scheme.Modules.Cohomology | TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61, under TauCeti: underlying additive group of small Zariski-site cohomology; no built-in geometric vanishing theorem. |
| Scheme.Modules.cohomologyBaseModule | TauCeti/AlgebraicGeometry/Cohomology/Module/Base.lean:45: base-ring action via global functions, not finite-dimensionality. |
| Representation.invariants_ne_bot_of_isPGroup | TauCeti/RepresentationTheory/Unipotent/PowerOrder.lean:158: nonzero finite-dimensional representation over a field of exponential characteristic p; acting group need not be finite. |
| TauCeti.Hodge.tate_piece | TauCeti/Geometry/Hodge/Tate/Basic.lean:111: abstract Tate piece at −m; for m=−1 its index is 1. It does not identify scheme cohomology. |

Object searches in both pinned trees found no Fontaine–Laffaille/crystalline-realization or shared K3 predicate that would replace these planned carriers. The K3 conditions themselves are native, which is precisely why F02 is applied. The remaining unstatable headlines are explicitly identified by their missing carriers in the module docstring; none is replaced by an abstract free-predicate surrogate.

## Check outcomes

- Prescribed `lake env lean` invocation from the content checkout on `packages/SmallRamificationAndAbelianVarietyBaseCasesPartII/Suggested.lean`: exit 0. Exactly two diagnostics, both `declaration uses sorry`, at the two headline theorems (lines 60 and 74). All imported object files were available; no build was required. No Lean process remains running.
- A single scratch copy appended `#check @name` for all four declarations and was elaborated once: exit 0, the same two sorry warnings. The two model predicates retain the structure morphism, and the local predicate retains the explicit prime instance. `lowDegreeHodgeVanishing` retains Smooth, IsProper, everywhere Witt reduction, i≠j and i+j≤3. `geometricK3_hasBadWittPrime` retains Smooth, IsProper, the specified geometric pullback and all five K3 conditions, and concludes existence of a prime with the negated local predicate. No binder repair was necessary.
- README names and Lean names agree: two necessary real-bodied model definitions and two deep headline theorems; no API, computation or boundary-case declarations were added. The Lean imports remain one `import Mathlib` and the three individually used pinned Tau Ceti modules; no `set_option` or sorry-valued data.
- JSON parse and structural comparison against the starting plan: only its top-level `gaps` value changed. All other keys and values agree. Eight gap entries have matching supplier, section and verbatim needs in the README; both obsolete slugs are absent from the README and gap list.
- All 24 numbered sections have at least three Checks. Each definition retains its API. New values independently recomputed: modulo-nine residues 3,4,7,3,1,1,3,7,4; ramified character value 6; tame scalars 1,3,2,6,4; root discriminants approximately 5.06114,8.82480,11.65288,15.38727 at exponents 35,47,53,59 over denominator 42.
- Final prescribed dependency check: exit 0, exact output:

```text
depcheck: 54 roadmaps, 604 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. No gate failures were listed in the brief; none arose in the requested checks. The citation resolver reported no missing roadmap citations or Lean names; pinned declarations were additionally read directly as recorded above.

## Maintainer notes

Only `packages/SmallRamificationAndAbelianVarietyBaseCasesPartII/README.md`, `Suggested.lean`, the permitted top-level gaps in `design/plan.json`, and this report changed. No commit, push, issue, pull-request or merge-order mutation was made. No existing Lean name changed or disappeared; the one added name is `geometricK3_hasBadWittPrime`. Suppliers need eight contracts rather than seven: one redundant gap was deleted and one compound gap became three. The Enriques routing reconciliation described above remains a consumer integration matter. Successful elaboration is a signature check, not a proof or independent acceptance of the roadmap.
