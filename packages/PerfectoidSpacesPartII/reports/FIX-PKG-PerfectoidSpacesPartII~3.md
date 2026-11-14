# Repair of PerfectoidSpacesPartII

## REV-PKG-PerfectoidSpacesPartII~2/R01 (P2) — applied

Unannotated numerator sets → explicit two-element `Finset R` presentations, coerced to sets where required, throughout all three Bhatt signatures. Implicit completion-module search → the explicit native completion instance. Evidence: pinned `LocalizationTopology/Basic.lean:311`, `Plus.lean:117`, Mathlib `AdicCompletion/Basic.lean:324`. The actual acceptance file now elaborates under defaults.

## REV-PKG-PerfectoidSpacesPartII~2/R02 (P2) — applied

Local perfectoid class and almost-zero predicate → native `TauCeti.Perfectoid.IsPerfectoidTateRing` and `Module.IsTorsionBySet`. Deleted §3.0's duplicate target/API, preserving its section anchor. Corrected Scope, supplier contracts and the module's missing-carrier reasons. Recorded the native almost-module category and finite-projective trace. Evidence: pinned `Perfectoid/Basic.lean:86`, `Almost/Module.lean:75`, `Trace/Projective.lean:72`, Mathlib `Module/Torsion/Basic.lean:214`.

## REV-PKG-PerfectoidSpacesPartII~2/R03 (P1) — applied

Layer 2's identity example → evaluation retraction using the existing roots, retaining other branches of the free algebra. Over ℂ₂ the new square root has distinct images U and −U; specialising the old roots to 1 gives ℂ₂ × ℂ₂, with four idempotents. This matches the free construction at ANDRE18A line 1331.

## REV-PKG-PerfectoidSpacesPartII~2/R04 (P1) — applied

Field/valuation-ring descriptions → full free-root algebras and their integral models in §§5.6, 5.8, 5.10, Layer 5 Examples and Worked examples. Added §5.4's p = 2 product witness. Replaced §5.11's equality by strict inclusion using residues (1,0) versus (a,a). ANDRE18B line 327 retains every root branch; line 598 gives the unchanged formula for S.

## REV-PKG-PerfectoidSpacesPartII~2/R05 (P2) — applied

§4.6's exact identification of the envelope's integral model with B̃° → the integral model (B̃^♮)° and its natural inclusion into B̃°, an almost isomorphism in the ramified setup. B̃° remains the integral model of B̃. Evidence: ANDRE18A line 63 and lines 3181–3185. §4.7 already uses this distinction and remains consistent.

## REV-PKG-PerfectoidSpacesPartII~2/R06 (P3) — applied differently

The duplicate §3.0 target and its erroneous Check were deleted under R02. Its corrected negative control is in Exact supplier contracts: Frobenius on ℤ_p/p is the identity, so Frobenius alone accepts ℚ_p. The pseudouniformizer divisibility excludes ℚ_p; unbounded power-bounded nilpotents exclude the square-zero algebra. No boundary theorem was added to Lean.

## REV-PKG-PerfectoidSpacesPartII~2/R07 (P3) — applied

§3.4's universal strict-inclusion example → strictness for j ≥ 1, with quotient norm |ϖ|^(−j(1−1/p)) and spectral norm 1. Added j = 0: T^(−1/p) = T^(1−1/p)U, U = 1/T, and both norms are 1. The theorem still includes every natural j. Evidence: ANDRE18A lines 2175–2218 and 2261–2283.

## REV-PKG-PerfectoidSpacesPartII~2/R08 (P3) — applied

§5.4's ζ_p − 1 witness → ζ_(p²) − 1, with valuation 1/(p(p−1)); values 1/2 and 1/6 at p = 2,3. Added ζ₂ − 1 = −2 as the failed old witness. The valuation follows from the cyclotomic product giving p and the p(p−1) conjugates of equal valuation. The almost ideal's definition is unchanged.

## REV-PKG-PerfectoidSpacesPartII~2/R09 (P3) — applied

§3.9's scalar-multiplication module system → the unital algebra tower (K°/ϖ)[X], with T-roots acting as 1 and transitions X ↦ 0. Its cokernel contains [X], not killed by ϖ^(1/p), so it is not nested; images stabilise at the constants, hence lim¹ = 0. The sufficient-not-necessary Check now lies in the theorem's category.

## REV-PKG-PerfectoidSpacesPartII~2/R10 (P3) — applied

§5.6 and Corrections to the sources: universal failure without separately adjoined coordinate roots → failure in general, witnessed by g = 1, n ≥ 1. Added the positive control n = 1, g = T₁, where the g-roots supply every coordinate root. No restriction on g or on the primes was added to the theorem.

## REV-PKG-PerfectoidSpacesPartII~2/R11 (P2) — applied

Both §5.4 finite-freeness assertions now require 0 ≤ j ≤ j′ < ∞. The infinite stage is the faithfully flat filtered union, and its completion is treated separately. Added cyclotomic degrees 1,2,4 over ℚ₂ and the infinite-degree union. Evidence: ANDRE18B lines 329–351. The purity and almost-flatness headlines retain infinite indices.

## REV-PKG-PerfectoidSpacesPartII~2/R12 (P3) — applied

Theorem 1.6, p. 2 → p. 3 in §1.2; the References range was corrected too. Proposition 4.4.4, proof (2) → proof (3) in Corrections to the sources. Evidence: BHATT18 lines 107–111 and ANDRE18A lines 2989–2992. The mathematical assertions and corrected proof routes are unchanged.

## REV-PKG-PerfectoidSpacesPartII~2/R13 (P2) — applied

Added `bhatt_kernel_without_regularity`, with quantifiers ∀ m k n, ∃ c, ∀ a and no regularity binder, on the native presentationwise carriers. Named and explained it in §1.4 and corrected the module inventory. The existing cokernel headline supplies the other half, with offset pᵏm. Evidence: BHATT18 lines 427–445. No tower carrier or substitute predicate was introduced.

## Gate failures and checks

The twelve reported signature-hygiene hits were repaired together:

- `bhatt_riemann_extension_ker_almostZero`: its three anonymous `letI` signatures → named local instance values `_instLocUniform`, `_instLocAdd`, `_instLocRing`.
- `bhatt_quantitative_riemann_extension`: its eight anonymous values → the same three named values and `_instLocHuber`, separately at the source and target presentations.
- `kummer_almost_faithfullyFlat`: its anonymous stage module → `_instStageModule`; `_instCompletionModule` explicitly supplies the completed module structure and avoids the typeclass timeout.

The new kernel signature uses the same named-instance pattern. These are definitions of the prescribed structures, not arbitrary instance assumptions. Their types are definitionally the structures used by the native completion and comparison maps. The `letI` inside the real body of `IsPureHom` is not in a public signature and is unchanged.

Validation outcomes:

| Check | Exact outcome |
| --- | --- |
| Targeted import build, `lake build TauCeti.RingTheory.Perfectoid.Basic` | Exit 0; `Build completed successfully (5139 jobs).` The first elaboration exposed its missing object file, so this module was built before the successful run. |
| Actual `packages/PerfectoidSpacesPartII/Suggested.lean`, `lake env lean`, from the content checkout | Exit 0; exactly six `declaration uses sorry` warnings, for the six headline theorems; no other warning or error. No options overridden. |
| Scratch copy followed by `#check @name` for all 23 named declarations, the ring instance and three constructors | Exit 0; six expected `sorry` warnings. Compared every elaborated type with the README. No required binder disappeared. The base type alias needs neither primality nor a field instance to exist; its ring instance retains both. |
| Signature comparison | All four perfectoid headlines retain prime p, complete nondiscretely valued perfectoid-field data, complete Hausdorff perfectoid Tate R and continuous K-algebra map. The first kernel alone retains almost regularity. The new kernel has ∀ m k n, ∃ c, ∀ a. Both Kummer headlines retain characteristic p, perfection, g ≠ 0; purity retains j,l ∈ ℕ∞. |
| Prescribed dependency check | Exit 0; output below. No UPWARD, CYCLE or moved line. |
| Statement-hygiene scanner in the content-layout gate | `statement-hygiene=0`, including the added headline. All twelve supplied hits cleared. |
| Generic content-layout gate applied to this board package | Exit 1: `metadata=2 stray-files=4`; all other counters, including statement hygiene, were zero. These diagnostics arise because that invocation treats the board package as a nested content roadmap and rejects its package-only design, reports, review and sources files. Those files are required package artifacts; none was removed or moved. The worker's package gate remains the submission check. |
| Whitespace | `git diff --check`: exit 0, no output. |

```text
depcheck: 236 roadmaps, 2135 edges, 0 problem(s)
```

## Sources, suppliers and ownership

The pins read and elaborated against are Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e` and Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`, matching the content manifest and each package's HEAD. No newer library was substituted.

Every changed mathematical assertion was read against the cached legal text or verified by the elementary computations below. All five manifest sources are available; no source request, waiver or new manifest entry is needed. In particular:

| Passage | Evidence used |
| --- | --- |
| Quantitative bound and almost regularity | BHATT18 lines 348–371, 374–417; the split at exponent 1/pᵏ gives the stated constant. |
| General kernel without regularity | BHATT18 lines 427–445; base change from the universal disc and H⁰ give the kernel/cokernel pro-statement. |
| Free root algebra | ANDRE18A lines 1320–1350; a tensor construction with all root systems, not a selected branch. |
| Annular integral and quotient-norm models | ANDRE18A lines 2175–2218 and 2261–2283. |
| Nested algebra systems | ANDRE18A Proposition 4.4.1, pp. 60–61; the new example tests its category and hypothesis rather than importing a new theorem. |
| Envelope versus coreflection | ANDRE18A lines 56–68, 3171–3195; the source separates B̃ from B̃^♮. |
| Correct trace-proof locator | ANDRE18A lines 2989–2992. |
| Normalized Kummer stages, finite/infinite indices and isometries | ANDRE18B lines 313–365. |
| Flat integral model | ANDRE18B lines 589–614; the formula for S and the almost comparison remain unchanged. |
| Almost flat and faithful tensor functors | GR03 lines 1101–1104; the elementwise specialisations use the native annihilation predicate. |
| Rational almost presentation | SCHOLZE12 Lemma 6.4, beginning at line 1393; the completion and all-root presentation are retained. |

Two main-branch roadmaps were read for shape: `TauCetiRoadmap/ProfiniteCohomology/README.md` and `TauCetiRoadmap/ComplexTori/README.md`. All six layers and their order are preserved. Section 3.0's anchor remains, pointing to its supplier contract without a duplicate target or API.

The main-branch supplier clauses were reopened by section, including PerfectoidSpaces P0.1–P0.3, P0.6, P0.8–P0.16, P0.25–P0.27, P1.1/P1.7/P1.11/P1.24–P1.30, P2.2–P2.4/P2.13/P2.16 and P3.10–P3.13. P0.16 includes change of setup; P0.26 includes almost Nakayama; P0.27 includes almost-zero limits even though their headings name broader topics. AdicSpaces §3.1, AdicSpacesPartII R0.3/R0.4/R0.9, AdicSpacesPartIII R3.5/R3.9, AdicEtaleGeometry A4.2/A4.2a, DerivedModuleAlgebra §§0.K.1/0.2/1.T.1/1.1 and EnhancedDerivedSheaves E2:towers.2 retain the cited objects. The allowed earlier suppliers DerivedDeRhamCohomology §1.10 and DeformationAndDerivedPatchingAlgebra §1.13 supply the stated Noetherian completion criteria, with their completeness, torsion and faithfulness hypotheses.

The initial unresolved-name lead `Algebra.galoisTensorMap` is settled by the explicit alias at main `TauCetiRoadmap/AdicEtaleGeometry/README.md:9267`: it denotes `TauCeti.MulSemiringAction.tensorToPi`. Its tensor-factor convention is tested below. The resolver reports no unresolved cross-roadmap citation after the edits; its latest invocation did not scan external pinned Lean packages, so that output was supplemented by direct source reads at the pins.

Ownership was searched by object using `roadmaps grep`, the board packages and main. The scopes of the closest open heads were read using `roadmaps show`: PerfectoidSpaces, PerfectoidQuotients, PerfectoidTowers, RelativeFarguesFontaine and DirectSummandsAndBigCohenMacaulay. Native perfectoidness, annihilation, almost modules and projective trace have one library owner. PerfectoidSpaces supplies almost algebra and tilting; PerfectoidQuotients' integral root covers differ from the explicit normalized tower and general uniform Banach root algebra here; PerfectoidTowers owns quotients and descent; RelativeFarguesFontaine owns period geometry; DirectSummandsAndBigCohenMacaulay consumes these ramification theorems. No foundational ownership was moved. No new prerequisite or supplier gap was required, so `design/plan.json` is unchanged.

The overlap inventory lists no competing change to this package, dropped cited supplier id, or citation defined only by an open revision. All existing numbered package sections remain. No open revision was adopted as a new supplier.

## Adversarial mathematics pass

The computations below use the actual constructions, rather than elaboration as evidence of truth. Here q = |ϖ| ∈ (0,1); C denotes the completed full integral Kummer tower; A₀ denotes its coordinate integral base. Rows identify the individual construction or assertion being tested. API functoriality is tested on identity, composition, zero and split inputs alongside the distinguishing examples. No boundary declarations were added to Lean.

| Statement | Instances tried | Computed values on the two sides | Result; change |
| --- | --- | --- | --- |
| Root systems and product convention | p = 2,3; t,g with chosen roots | (t_(k+1)g_(k+1))^p = t_k g_k; for roots of 1 the chosen next root may be 1 or a nontrivial p-th root of unity. | Products agree; no implicit branch choice. |
| Prime and norm conventions | p = 2,3; q = 1/4,1/8; t = 0 or 1 | Required 0 < |t| < 1 holds for q, fails for 0 and 1. For t = 1, the root ideal contains 1 and annihilation means zero. | Degenerate parameters excluded only where required. |
| Integral/generic completion convention | R = ℤ_p and R[1/p] | ℤ_p/(p^m) has p^m elements for k = 𝔽_p; R[1/p]/(p^m) = 0, so algebraic completion of the generic fibre is 0. | Integral completion precedes inversion. |
| Zero ring, universes and coordinate rank | R = 0; n = 0,1,2 | In R all equalities read 0 = 0. Fin 0 supplies no coordinate; Fin 1 one, Fin 2 two. Test modules are in the explicitly declared base universe. | No hidden nonemptiness or coordinate in rank zero. |
| §0.1 almost-pro-zero definition | M_n = K°/ϖ^(1/p^n) | Transition image generator has exponent 1/p^n − 1/p^n′; multiplying by ϖ^(1/p^k) kills it exactly when n′ ≥ k. Choosing k = n′+1 leaves it nonzero. | Precision-dependent index is essential. |
| §0.1 ordinary/termwise almost-zero comparisons | t = 1; zero tower; constant K° | Multiplication by 1 is identity; zero images are 0; in the constant tower ϖ^(1/p^k)·1 ≠ 0 for every k. | Correct positive and negative models. |
| §0.1 extension closure and cofinality | Two annihilations; p = 2,3; even-index subsequence | Combined exponent 2/p^(k+1) equals 1/p^k at p = 2 and is (2/3)/p^k at p = 3; an even index ≥ n,k still satisfies the killing inequality. | Order of indices and divisibility correct. |
| §0.1 almost-pro-isomorphisms and cones | Identity; zero map 0 → constant K° | Identity kernel/cokernel/cone = 0; zero map has cokernel K°, whose scalar image of 1 is nonzero. In a split composition kernels/cokernels are direct sums with the same annihilation. | Rejects arbitrary comparison maps. |
| §0.2 uniform annihilation | Zero transitions; g = 1; Bhatt's shrinking-quotient tower | Offset 1 gives image 0; offset 0 leaves ϖ^(1/p^l) nonzero for l sufficiently large. For any fixed offset in Bhatt's tower choose l > n+c, giving a nonzero image. | Uniformity is stronger than almost-pro-zero. |
| §0.2 constant-source comparison | Identity R → R; R → 0 with g = 1 | First kernel/cokernel 0; second kernel R, with t_l·1 ≠ 0 in K°. | Kernel condition has content. |
| §0.3 module limits | Zero-transition tower; ℤ with ×p transitions | Difference operator is identity in the first case: lim = lim¹ = 0. Second case lim = 0, lim¹ = ℤ_p/ℤ ≠ 0. | Hypothesis excludes the counterexample. |
| §0.3 derived limits | Split complexes R[−i] ⊕ R[−i−1] with zero transitions | Product difference operator is identity in each degree, so all cohomology of R lim vanishes; constant almost-zero coefficients instead remain killed by every t_k. | Distinguishes zero from almost zero. |
| §0.4 A-linear functors | Hom, tensor; scalar-twisted additive functor | F(t_kρ) = t_kF(ρ) = 0 for A-linear F. For (A/ϖ^(1/p^n)) ⊗_ℤ A, a surviving x gives x ⊗ ϖ^(1/p^k) ≠ 0 in the stated F_p tensor model. | Linearity cannot be replaced by additivity. |
| §0.5 derived tensor constants | K = R and K = R[−1] ⊕ R[−2] | The same scalar-zero transition acts by 0 on both summands; no power of the scalar or additional offset appears. Splitting t_l as t_(l+1) times its (p−1)-st power recovers t_l. | Constant independent of amplitude. |
| §1.1 annular carrier/direction | g = T; q = 1/2; n = 1,c = 1 | Lower radii 1/2 and 1/4: the first annulus is contained in the second, and functions restrict from n+c to n. For g = 0 the denominator localisation is 0. | Native comparison direction retained. |
| §1.1 almost root presentation | g = 1; monomial u_n^(1/p) | Relation g^(1/p)u_n^(1/p) = t^(n/p) gives u_n^(1/p) = t^(n/p); transition substitutes t^(c/p)u_n^(1/p), whose product with g^(1/p) is t^((n+c)/p). | Roots and transition exponents agree. |
| `bhatt_riemann_extension_ker_almostZero` | g = 1; g = (T,0); m = 0 | For g = 1 the kernel is 0. In the product, a = (0,1) maps to 0 but t_l a ≠ 0 modulo t^m for l large; g is not almost regular. For m = 0 all quotients are 0. | Regularity retained on this headline. |
| `bhatt_quantitative_riemann_extension` | p = 2,3; (k,m) = (0,1),(1,1),(2,2) | Offsets are (1,2,8) and (1,3,18), respectively; c/p^k = (1,1,2) = m. Exponents e ≥ 1/p^k yield t^m divisibility; e < 1/p^k yield integral g^(1/p^k−e)t^((n+c)e). | Exact bound survives all primes. |
| Quantitative cokernel boundaries | g = 1; g = 0; m = 0 | g = 1: choose a = t_l x,y = 0. g = 0: all localisation expressions are 0. m = 0: t^0 = 1, choose a = 0 and y = g_k t_lρ(x). | No division by zero in the signatures. |
| §1.3 derived/Koszul form | Sequence (0) and a regular one-term sequence x | Differential 0 gives H₀ = H₁ = R; multiplication by regular x gives H₁ = 0, H₀ = R/x. Comparison constants remain pᵏm. | Vanishing needs regularity of the sequence. |
| `bhatt_kernel_without_regularity` | g = (T,0), a = (0,1); g = 0; m = 0 | g_k t_k a = (0,0) although t_k a ≠ 0 modulo t^m; for g = 0 the multiplier is 0. For m = 0 take b = g_k t_k a, since t^0 = 1. | General kernel statement distinguishes the two almost ideals. |
| §1.4 quantifier order/combination | Offsets c₁ for kernels, c₂ = pᵏm for cokernels | c = max(c₁,c₂) satisfies c−c_i ≥ 0; the longer transition factors through each shorter one, preserving its zero scalar image. The offset does not depend on a. | Lean and prose match. |
| §1.5 limit extension | Disc g = T; Laurent monomial aT^(−r), r > 0 | Annular bound |a|q^(−jr) ≤ C for every j forces a = 0; for a = 1 norms diverge. Nonnegative bounded coefficients remain in the unit ball. | Bounded extension, not extension of 1/T. |
| §2.1 p-radicial and root closure | F_p[T] ⊆ F_p[T^(1/p)]; ℤ ⊆ ℤ[i], p = 3 | (T^(1/p))^p = T; imaginary part of (a+bi)^3 is b(3a²−b²), zero only for b = 0 among integers. Thus i is integral but outside the 3-root closure. | Distinct closures remain distinct. |
| §2.1 localised complete integral closure | ℤ ⊆ ℤ[1/2]; s = 1/2 | 2^m s^n = 2^(m−n) fails integrality for n > m. For integer s all powers are integral with multiplier 1. | Positive/negative controls for power boundedness in one module. |
| §2.1 closure functoriality and saturation | Identity square; s^p ∈ R; root system t | Identity sends s to s. If t_l s is p-radicial and t_l is replaced by its next root, its p-th power has the same t_l s^p relation; taking all l preserves the saturation condition. | No selected branch or arbitrary map used. |
| §2.2 gauge unit ball | Dense K; A = K° + K°°T K°[T] | inf of allowable coefficient norms for T is 1; T ∉ A but T ∈ A_* = K°[T]. Over ℚ_p, A = ℤ_p+pTℤ_p[T] gives gauge(T) = p. | Dense/discrete distinction retained. |
| §2.2 spectral criterion | A = K°[T,ϖ⁻¹T²] | gauge(T) = 1; gauge(T²) = q; gauge(ϖ^(−1/2)T) = q^(−1/2) > 1 although its square is integral. | Rejects a non-root-closed lattice. |
| §2.2 integral/generic dictionary | B = K; B = 0 | (K°[1/ϖ])° = K°; 0[1/ϖ] = 0 and its unit ball is 0. Multiplication by nonzero ϖ is injective in both. | Zero object allowed. |
| §2.3 root saturation | Disc b = 1,T⁻¹; product g = (T,0) | T_l·1 is integral; T_l/T has negative exponent for l ≥ 1. Localisation sends (0,1) to 0 in the product. | Correct ambient localisation and injectivity hypothesis. |
| §2.3 saturation can enlarge | A = K + closure(Σ T₁^(1/p^m)P) inside two-variable P | T₂ ∉ A, while T₁^(1/p^m)T₂ ∈ A for every m; hence T₂ lies in the saturated generic algebra. | No perfectoid-implies-saturated shortcut. |
| §2.4 quotient norm | K×K; g = (ϖ²,1), λ = ϖ, a = (1,ϖ²) | First component dies; quotient norm of a is q². inf_m max(q^m,q^(2−m)) = q, attained at m = 1. At q = 1/2 these are 1/4 and 1/2. | False source infimum remains excluded. |
| §2.4 restriction and invariance | Same g, λ = ϖ³, μ = ϖ; g = 1 | Restriction (x,y) ↦ y has kernel K×0; unit g gives localisation A and identity restrictions. The algebraic limit detects both factors when λ is small. | No levelwise injectivity assumption. |
| §2.4 closed ideal/spectral point bound | B = K, f = 0 or 1; |λ| < 1 | f = 0 makes fU−1 = −1 a unit, quotient 0. At a Gauss point, norm((fU−1)h) = max(1,|f|)norm(h) ≥ norm(h). | Closed-image argument and empty rational locus agree. |
| §2.5 Weierstrass model | f = T, λ = ϖ; f = ϖT, λ = ϖ² | First relation T = ϖU yields K°⟨U⟩. Second has nonzero torsion class v = ϖU−T with ϖv = 0. | Isometric-multiplication hypothesis discriminates. |
| §2.5 change of variables | f′ = f+λa; λ′ = λu, |u| = 1 | λ′((λ/λ′)U+(f′−f)/λ′)−f′ = λU−f; inverse substitution returns U. | Sign and direction agree. |
| §2.6 uniform limit | Constant connected diagram; empty diagram; annuli | Constant family has norm |a|; empty family gives zero algebra; T⁻¹ has norms q^(−j), hence is outside the bounded limit. | Product, unit ball and boundedness agree. |
| §2.6 open disc limit | Coefficients q^(−floor√n), radius r < 1 | r^n q^(−floor√n) → 0, but coefficients are unbounded as r approaches 1; bounded coefficients instead give K°⟦T⟧[1/ϖ]. | Algebraic and uniform limits differ. |
| §2.7 uniform colimit | Shrinking discs; constant diagram | Norm of T at stage i is q^i → 0, so separated colimit sends T to 0 and is K; constant diagram preserves every norm. | Separation is necessary. |
| §2.7 direct versus inverse perfection | F_p(T) | Inverse projection lies in ∩ F_p(T)^(p^n) = F_p. Direct closure contains T^(1/p), whose p-th power is T. | Direction preserved. |
| §2.8 free roots and evaluation | Existing roots over ℂ₂; g = 1; g = 0 in characteristic p | New square root maps to U or −U, distinct since 2U ≠ 0. At g = 1: (S−1)(S+1)=0, four idempotents. In characteristic p, (S−U)^(p^i)=0 and uniformization kills S−U. | Identity assertion replaced by retraction. |
| §2.8 root system/universal maps | g = T in K⟨T⟩; identity map | New root S satisfies S^p = T and S ∉ K⟨T⟩; selecting its image fixes the map on every monomial, then on the completion. | Extra data determines maps; zero/trivial choice cannot replace it. |
| §2.9 tube colimit | f = T; f = 0; g = 1 | Tube bound |T| ≤ q^i forces T = 0 in the separated colimit; f = 0 leaves B; roots of 1 retain the split two-root algebra in characteristic zero. | Colimit keeps free branches. |
| §3.0 native perfectoid predicate | ℚ₂, ℚ₃, ℂ_p, square-zero thickening | Frobenius values are (0,1) and (0,1,2); required integral valuations 0 < v(ϖ) ≤ 1/p do not exist for ℚ_p. In ℂ_p, v(p^(1/p)) = 1/p. Nilpotents p^(−r)ε have unbounded norms but square 0. | Native definition used; wrong negative control corrected. |
| §3.1 coreflection/counit | Perfect A; K⟨T⟩ in characteristic p | In perfect A each compatible root is unique, counit image = A. In K⟨T⟩ a nonconstant exponent would need division by p arbitrarily often while remaining integral, so image = K and T is excluded. | Inverse construction and semilinear actions retained. |
| §3.2 perfectoid root algebras | Perfectoid K; roots of 1 | T_(i+1)^p = T_i supplies Frobenius roots. Over ℚ_p at finite levels i = 0,1,2 the factor counts are 1,2,3 and idempotent counts 2,4,8. Over ℂ₂ at level 1 the count is 4. | Root construction retains all factors. |
| §3.2 completion of idempotents | Distinct idempotents e,f in a commutative uniform algebra | d = e−f satisfies d³ = d, so a nonzero spectral norm satisfies |d|³ = |d| and equals 1; no two distinct idempotents approach within distance < 1. | Completion does not merge branches. |
| §3.3 almost perfectoid predicate | B = A+T₂A in the two-variable example | T₂ ∈ B but T₂^(1/p) ∉ B; multiplying the missing-root monomial by any T₁ root puts it in A. For a perfectoid B the counit is identity, cokernel 0. | Almost versus exact perfectoidness kept. |
| §3.4 annular models | j = 0,1; p = 2,q = 1/4 and p = 3,q = 1/8 | Spectral norms are (1,1). Quotient norms are (1,2) and (1,4). At j = 0, T^(−1/p) = T^(1−1/p)U; at j ≥ 1 the coefficient needed has norm > 1. | Strictness qualified; boundary computed. |
| §3.5 root localisation/limit | Every root of T acts as 1; r = 1 | Every added root of ϖ^j/T is already ϖ^(j/p^h); R[j] = R. The comparison is identity and its kernel/cokernel are 0. | Algebraic localisation and root convention agree. |
| `riemann_extension_completeIntegralClosure` | g = 1; disc g = T, b = 1 and 1/T | g = 1 gives R° on both sides. For b = 1 take M = R°·1. For b = 1/T, T_l b has negative exponent, and powers T^(−r) exceed every finite denominator bound. | Native perfectoid binder changes no mathematics. |
| §3.7 largest perfectoid subalgebra | Disc; g = 1 | For disc T⁻¹ is outside the root saturation and has annular norm q^(−j); resulting largest bounded algebra is A. For g = 1 saturation and coreflection both return A. | Maximality does not include unbounded fractions. |
| §3.8 limit criterion | Constant perfectoid diagram and zero diagram | Uniform/perfectoid limits are A/A and 0/0; the reductions and Frobenius comparisons are identities, with zero cokernel. | General comparison remains conditional. |
| §3.9 summable-annihilator estimate | p = 2,3; b_k = 12/p^k | b_k−b_(k+1) = 6/p^k at p = 2 and 8/p^k at p = 3, both ≥ 6/p^k. On a tail b_k ≤ 1/p^l gives nonnegative exponents. | Tail lifting works at p = 2. |
| §3.9 non-nested Check | Evaluation tower (K°/ϖ)[X] | f(1)=1, f(X)=0; coker contains [X] and ϖ^(1/p)[X] ≠ 0. Composite images are constants at every later stage, so lim¹ = 0. Scalar multiplication instead gives f(1)=ϖ^(1/p) ≠ 1. | Replaced invalid algebra maps. |
| §3.10 compatible annular systems | Standard annuli; zero system; dual numbers over nonzero annulus | Double localisation gives A[j]; zero localises to 0. In dual numbers ε² = 0 with ε ≠ 0, violating reducedness of perfectoid algebras. | Carriers and nonexample discriminate. |
| §3.11 nested-systems equivalence | Perfectoid disc; zero system | Uniform limit of standard annuli is A; localising it at j returns A[j]. Zero system has limit 0 and each localisation 0. Unit and counit are identities in both cases. | Adjunction direction agrees. |
| §4.1 Galois comparison convention | C₂ acting on A×A; e₁⊗e₂ | André's swap component is e₂; supplier's is e₁. On e₁⊗e₁ both identity components are e₁ and swap components 0. | Tensor swap, not equality of conventions. |
| §4.1 nonabelian and ramified controls | Regular S₃ torsor; ℤ → ℤ[i] | Each of 36 delta tensor pairs has one nonzero coordinate in the 6×6 product basis. For conjugation over ℤ the four basis images have determinant of absolute value 4 and cokernel (ℤ/2)²; over ℤ[1/2] it vanishes. | Torsor hypotheses substantive. |
| §4.2 Galois closure and rigidity | Constant ranks 0,1,2,3; Q(cuberoot 2) | Ranks 1,2 give R and R² in the split case; rank 3 closure has degree 6 and subgroup order 2. Rank 0 cannot yield a faithfully flat nonzero algebra. A split Galois intermediate ring with the same rank has all delta coordinates, hence is the whole ring. | No positive-rank shortcut across zero components. |
| §4.3 annular envelope | B′ = A[1/T]; B′ = 0 or a split square | T⁻¹ coordinates have norms q^(−j); they exist in the algebraic limit, not the bounded one. Zero envelope is 0; split square gives A×A after Riemann extension. | Corrected source proof uses algebraic limit. |
| §4.4 integral almost étaleness | g = 1; B = A×A; m = 1 | Product modulo p is (A°/p)², rank 2 with swap torsor; identity has rank 1. For tame Y^ℓ=T the derivative ℓY^(ℓ−1) becomes a unit after T is inverted. | Ramified setup required at T = 0. |
| §4.5 category equivalences | Zero algebra; trivial cover; split cover | Images and inverse images are 0, A and A×A respectively. Structure map to 0 sends 1 to 0; split projections compose to identity. | Completeness and finite-étale conditions retained. |
| §4.6 envelope integral comparison | g = 1; general ramified coreflection | At g = 1 the models coincide and cokernel = 0. In general the asserted value is m·coker = 0 with kernel 0; it does not assert coker = 0. | Exact equality replaced by almost isomorphism. |
| §4.7 trace and Abhyankar theorem | Product cover; zero cover; rank-one projective summand | Product trace (a,b) ↦ a+b sends (1,0) to 1 even at p = 2; zero cover trace is 0 and is not faithful. On (1,0)R over R = k×k, identity trace is (1,0), not 0. | Correct native trace and faithful-cover hypothesis. |
| §4.7 tame envelope | Y^ℓ = T, ℓ ≠ p | Integers a,b with ap^k+bℓ=1 give (T^(1/ℓ))^a T^(b/p^k) = T^(1/(ℓp^k)) in the generic cover; derivative vanishes at T=0 for ℓ > 1. | Ramification remains; envelope includes compatible tame roots. |
| §4.8 affinoid envelopes | B = A; A×A; zero; purely inseparable field map | Models P and P×P have ranks 1 and 2. Zero admits no injection from nonzero A. A nontrivial purely inseparable field map has zero derivative and cannot become étale by inverting g. | Input data excludes the wrong cases. |
| §5.1 `IsPureHom` | Diagonal ℤ → ℤ²; ℤ → ℚ; identity on zero ring | P → P² retracts by first projection, kernel 0. For P = ℤ/2, P⊗ℚ = 0 and the kernel is P ≠ 0. Zero identity has kernel 0. | Module purity, not pointwise spectral injectivity. |
| §5.1 generator/retraction criterion | Basis projection; finite family f_i(s_i) with sum 1 | r(1)=Σ f_i(s_i)=1; for the rank-p monic extension, coefficient-of-1 projection sends 1 to 1 and all X^i, i > 0, to 0. | Uses R-linear dual and a finite sum. |
| §5.2 annihilation predicate | m = 0; m = V; M = 0 | All ε act by 0 when ε ∈ 0. For m = V, 1·x = x forces x = 0. Zero module gives 0 for every scalar. | Native predicate exactly matches deleted copy. |
| `IsAlmostFlat` | m = 0 or V; M = V or 0 | At m = 0 every tensor kernel qualifies. At m = V it must equal 0. For M = V tensoring is identity and preserves kernels; M = 0 has zero target kernels. | No change of ideal or universe. |
| `IsAlmostFaithfullyFlat` | m = V; M = V or 0; m = 0 | V⊗N = N detects zero; 0⊗V = 0 although V ≠ 0, so M = 0 fails faithfulness in the classical nonzero setup. At m = 0 all modules are almost zero, so detection is vacuous. | Conjunction of flatness and detection retained. |
| §5.2 almost-pure inclusion | K°° ⊆ K°, tensor with K°/ϖ | Kernel is ϖK°/ϖK°° ≅ k, nonzero; every element of K°° kills k. | Almost pure does not mean pure. |
| §5.3 Krull detection | K = 0; R = K°, M = k, ideal K°°; DVR | K = 0 imposes no obstruction. In the non-Noetherian example K°° kills k but k ≠ 0; in a DVR ∩(p^n)=0. | Noetherian hypothesis cannot be dropped. |
| `KummerVar` | n = 0,1,2 | There are 0,1,2 coordinate labels at each level, plus the zeta/root labels in every case; constructor tags are distinct. | Correct indexing, no phantom coordinate. |
| `KummerBase`, ring instance | n = 0; p = 2,3; k = 𝔽_p | Base = W(𝔽_p) = ℤ_p; modulo p gives 𝔽_p. At n = 1, constant coefficient of T is 0 and coefficient at exponent 1 is 1. | Type alias and inherited ring agree. |
| `kummerCoord` | n = 1 and 2 | Coefficients: X_i(0)=0, X_i(e_i)=1 and X_i(e_h)=0 for h ≠ i; n = 0 has no i. | Actual coordinate, not zero/constant. |
| `kummerRelations` | All level-zero relations; p = 2,3 | ζ₀−1=0, coord_(i,0)−T_i=0, root₀−g=0; Φ₂(ζ₁)=1+ζ₁=0, Φ₃(ζ₁)=1+ζ₁+ζ₁²=0. | Primitive cyclotomic branch and free g-roots distinguished. |
| `KummerQuotient` | g = 1, p = 2; g = 0 | At first root level X²−1 = 0 has two branches; X² = 0 has a nonzero nilpotent before reduced uniform completion. | Algebraic quotient retains the intended relations. |
| `KummerAlgebra` | n = 0,g = p,j=l=0 | Localising makes p invertible and stage equals ℚ_p; unit and inverse multiply to 1. For p = 0 in a characteristic-p base localisation would be 0, which the Witt base avoids. | Inversion is at the integral quotient. |
| `kummerVar` | ζ₀, root₀, coord_(i,0) | Images are 1, g, T_i respectively by the quotient relations. | Images tied to the constructed quotient. |
| `kummerGenerators` | j=l=0; j=l=∞ | Level zero contributes 1, base coordinates, g and 1/p; infinite indices contain every finite-labelled generator. | No finite index bound at ∞. |
| `kummerStage` | (0,0); n=1,g=T,j=l=1 | First stage A[1/p]. At (1,1), X^p−T factors over the coordinate-root coefficient ring, so the stage has zero divisors. | Stage is an algebra, not an intermediate field. |
| `kummerIntegralStage` | (0,0); n=0,p=2,g=1,(0,1) | First is A. In ℚ₂[X]/(X²−1)=ℚ₂², integral model is ℤ₂², including (1,0); the naive monogenic order omits this idempotent. | Relative integral closure used. |
| `kummerIntegralStage_mono` | Equal indices; 0 ≤ 1; ∞ ≤ ∞ | Equal indices give identical generator sets; inclusion sends 1 to 1 and each earlier labelled variable to itself. No generator is deleted on increasing an index. | Supporting proof needs no perfectness assumptions. |
| §5.4 finite and infinite freeness | n=0,p=2,j′=1,2,3,∞ | Degrees 1,2,4; no finite bound at ∞. Finite coordinate rank at j=1 is p^n(p−1): p=2,n=1 gives 2; p=3,n=1 gives 6. | Finite upper index now explicit. |
| §5.4 dimension-zero free g-roots | p=2,g=2,j=3,l=1 | u²=i+2−i=2; X²−2=(X−u)(X+u); e=(1+X/u)/2 gives e²−e=(X²/u²−1)/4=0 and residues (1,0). Denominators 2,u are nonzero in K₃. | Product branch witness replaces field claims. |
| `isIntegral_kummerVar_zeta` | j=0,1; p=2,3 | ζ₀=1 solves X−1; ζ₁ solves monic X^p−1. Degrees are 1,2,3, all positive. | Explicit integrality proof remains valid. |
| `kummerZetaSubOne` | j=0; p=2,j=1,2 | Values 0, −2, ζ₄−1; valuations ∞,1,1/2. | Includes the zero generator harmlessly. |
| `kummerAlmostIdeal` | p=2,3; generator at j=2 | Valuations 1/2 and 1/6 are positive but below v_p(p)=1; at growing j, 1/(p^(j−1)(p−1)) tends to 0. | Generates maximal ideal, not (p); new witness valid at 2. |
| §5.5 spectral norm/isometries | Split product stage, e and 1−e | Norms of both are 1; norm(e(1−e))=0 versus product of norms 1. Norm(e^r)=1 for every r ≥ 1. | Spectral, not multiplicative, in ramified stages; branches survive completion. |
| §5.6 perfectoidness/tubes | g=1; n=1,g=T₁; omitted coordinates | Constant-root tower leaves exponents of T₁ in pℕ under Frobenius, missing exponent 1. For g=T₁, root_(l+1)^p=root_l supplies every missing root. | Failure qualified in both occurrences. |
| §5.7 tube faithful flatness | j=k′; j=k′+1; p=2,3 | Reduction polynomial in V=T^(1/p^j) has degrees 1,p; basis over the coefficient polynomial ring in U has sizes 1,p. Thus 1 ≠ 0 in every residue fibre; monicity requires the approximant in the base. | Noetherian-stage proof unchanged. |
| `kummer_almost_faithfullyFlat` | n=0,k=𝔽_p,g=p; p=2 split stage | Nonzero scalar of K°_∞ acts injectively on every field factor, hence on the product and separated completion. Evaluation to ℂ_p° is integral and bounded; tensoring there detects mN=0 by faithful flatness. | Named completion module is the inclusion-induced one. |
| `kummer_isPureHom` | g=p,j=0,l=1; p=2,g=1; l=0 or ∞ | Monic basis projection sends 1↦1 and other basis terms↦0. Diagonal ℤ₂↪ℤ₂² retracts by first projection. l=0 is identity; a finite tensor relation at ∞ lies at one finite stage. | Full tower, infinite indices and purity preserved. |
| §5.10 generic faithful flatness | n=0,g=p; p=2,g=2 | A nonzero vector space over K_∞ is faithful and flat; multiplication by 2 on the generic fibre has inverse 1/2 even in the product stage. | No field claim needed. |
| §5.11 lower-shriek-shriek model | p=2,k=𝔽₂,n=0,g=2 | e has two residues (1,0); a+mb in S has (ā,ā). Hence e ∉ S. Multiplication by m sends every c∈C into mC⊆S, so m(C/S)=0. | Strict inclusion and almost isomorphism coexist. |
| §5.11 faithful flatness/base change | S over A; m=0,1 | S⊗_A A/p^m = S/p^mS. At m=0 both quotients are 0; at m=1 faithful flatness gives a nonzero fibre. For nonzero a∈A, a·s=0 forces s=0. | Torsion-free and faithfully flat conclusions unaffected by strict inclusion. |
| §5.12 ramified almost purity | B=A; B=A×A; m=0,1 | Identity has kernel 0. Split product gives diagonal P→P² with first projection, zero kernel, ranks 1 and 2. At m=0 all quotients are zero. | Modulo-p^m general statement unchanged. |
| §5.12 injection modulo p^m | a=p^mb in finite B, A normal | b=a/p^m lies in A[1/p] and is integral over A, hence in A; therefore a belongs to p^mA and the kernel is 0. | Uses the specified normal base, not arbitrary finite extensions. |

## Maintainer consequences

Only `packages/PerfectoidSpacesPartII/README.md`, `packages/PerfectoidSpacesPartII/Suggested.lean` and this report changed. Metadata, source manifest and design gaps are unchanged. No commit, merge-order change or external write was made.

The deleted local names are `TauCetiRoadmap.PerfectoidSpacesPartII.IsPerfectoidTateRing` and `TauCetiRoadmap.PerfectoidSpacesPartII.IsAlmostZero`. Their replacements are the native predicate and native annihilation predicate documented in Exact supplier contracts. All existing headline names are retained; the only added headline name is `bhatt_kernel_without_regularity`. No other roadmap in the inspected copies cites either deleted fully qualified local name. Consumers of Layer 5 must keep full free-root algebras rather than identify them with a chosen field branch; the section numbers, general almost-flatness statements and formula for S are unchanged.

This report records repairs and checks; independent review remains the acceptance decision.
