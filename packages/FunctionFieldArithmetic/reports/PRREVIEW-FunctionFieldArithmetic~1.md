# Review of FunctionFieldArithmetic (pull request #1474 at f7a17ee)

**Verdict:** needs changes

## R01 (P1) — Replace nonexistent supplier declaration contracts

**Location:** `TauCetiRoadmap/FunctionFieldArithmetic/README.md:312`, also lines 111, 318–320, 487, 497, 1818, 2020 and 2045. The first contract says “Section 3.7 supplies `finiteCover_degreeChebotarev`”.

**Claim:** Four named declarations are consumed as supplier interfaces, but none occurs in the claimed supplier's README or Suggested.lean: `finiteCover_degreeChebotarev`, `curve_zeta_numerator_without_rh`, `extension_count_recurrence`, and `ideleDegree_surjective`. This is supplier drift under the review's P1 rule, not a claim that the underlying mathematics lacks an owner.

**Witness:** DeligneWeightsAndPurity:1272 imports ArithmeticGaloisRepresentations §5.13. WeilConjectures:604,1077 and ArithmeticGaloisDuality:2089 state prose targets. Neither README nor Suggested.lean in those suppliers contains the four claimed names; paths and resolved sections appear in the supplier table below.

**Exact repair:** Cite ArithmeticGaloisRepresentations §5.13, *Chebotarev for function fields*, directly for degree-refined Chebotarev; retain DeligneWeightsAndPurity §3.7 only for its Haar-null consequence. Replace the two WeilConjectures declaration names by §1.16, *A curve numerator before root bounds*, and §5.20, *Recurrences and Newton recovery*. Replace `ideleDegree_surjective` by ArithmeticGaloisDuality §R02.3.2, *Function-field places, ideles and S-units*, degree-surjectivity API bullet. Use prose labels for these contracts, not invented Lean names. Apply the replacements in scope, contracts, proof routes and Needs lines.

**Repair check:** These exact sections have the required hypotheses. A quadratic constant cover has compatible-degree coefficient 1 and incompatible-degree count 0; a rational uniformizer idele maps to a divisor of degree 1; the genus-one numerator is `1+3T+5T²`, with Newton sums `−3,−1`. These values survive the corrected supplier references. No ownership moves upward.

## R02 (P2) — State the infinite-length character-classification headline

**Location:** `TauCetiRoadmap/FunctionFieldArithmetic/README.md:849` and `TauCetiRoadmap/FunctionFieldArithmetic/Suggested.lean:118`. The README promises “at infinite length, `Q_∞(F) ≅ Hom_cont(G_F, ℤ_p)`”; the Lean theorem quantifies only over `n : ℕ` and targets `ZMod (p ^ n)`.

**Claim:** The infinite-length group-classification part of the Artin–Schreier–Witt headline is absent, although its carriers are available at these pins. The module docstring neither states it nor identifies an unavailable carrier for it. A finite-length theorem alone does not assert compatible infinite lifts.

**Witness:** The native infinite-length signature below elaborated at the pins with only `sorry` warnings. For `F=𝔽_p`, both groups are ℤ_p; the retained finite-length theorem instead gives ℤ/pⁿ.

**Exact repair:** Add the infinite-length group equivalence alongside the finite-length theorem, with its README name and declaration docstring. The following signature was elaborated at the unchanged pins inside the existing namespace:

```lean
theorem artinSchreierWitt_infiniteCharacters
    (p : ℕ) [Fact p.Prime] (F : Type*) [Field F] [CharP F p] :
    Nonempty ((WittVector p F ⧸ (artinSchreierWitt p F).range) ≃+
      Additive (ContinuousMonoidHom (Field.absoluteGaloisGroup F)
        (Multiplicative (PadicInt p)))) := by
  sorry
```

This states the actual infinite-length group component, at the same level of realization as the retained finite-length signature. Keep the inverse-limit topology, evaluation pairing and reduction compatibility as the full README contract; do not substitute arbitrary groups or a free predicate. Update the module docstring's headline list accordingly. At `F=𝔽₂`, the identity continuous character of `ℤ̂` into `ℤ₂` has reductions of orders 2, 4, 8, …; its infinite image and the Witt class of 1 give the required positive control, while the zero class gives the zero character.

## Verified sound

Reviewed both files in full, the 42 numbered subsections, the eight layer dependency blocks, the worked examples, all 18 elaborated declarations and all 11 admitted theorems. The findings concern supplier precision and headline coverage; the calculations below found no counterexample to the stated mathematical formulas. These are discriminating finite and symbolic tests, not a claim that examples prove the general theorems.

The supplied push gate passes every check, including the targeted build. Independent `lake env lean` elaboration of Suggested.lean succeeded with precisely 11 `sorry` warnings. A separate copy containing `#check @name` for all 18 declarations also succeeded; comparison with the README found no lost section binder. The finite-field and exact-constant assumptions remain in the degree/zeta theorems; the reduced-basis theorem retains the finite-dimensional scalar tower and deliberately allows inseparable parameters and nonexact constants. The counting definitions are total `Nat.card` definitions; their finiteness assumptions are correctly imposed on the arithmetic theorems.

The one-tactic probe replaced all 11 admissions with attempts using `simp`, `rfl` and `infer_instance`; none closed. The pin searches below found no single library theorem giving one of these complete signatures. No padding deletion is proposed. The additional infinite-character signature was elaborated separately and succeeded. No target file was edited. The head matches the requested commit, the outside-folder diff is empty, and the worktree remains clean.

The dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The citation resolver reported no missing global matches; direct supplier-local checking nevertheless found R01. No declared supplier gaps were assumed. The Lubin–Tate specification was read at its explicitly linked board commit, including LT.0's characteristic-independent formal homomorphisms, actions and adic points. Its mixed-characteristic LT.1–LT.2 statements are not used as equal-characteristic theorems. The earlier report's explanation of this board-owned supplier is supported by the named targets and merge order; its absence from the open-PR index is not re-raised.

**Headline coverage.**

| README headline | Acceptance-test coverage |
| --- | --- |
| §0.2 degree-one divisors | `exists_divisor_degree_eq_one`, line 47 |
| §1.2 simultaneous reduced bases | `riemannRoch_reducedBasis`, line 58 |
| §3.1 Witt additive Hilbert 90 | `witt_additiveHilbert90`, line 100 |
| §3.1 finite and infinite character classification | Finite group equivalence, line 118; infinite group component missing, R02 |
| §4.2 equal-characteristic abelian existence | `localAbelianExistence_laurentSeries`, line 130 |
| §§5.1–5.3 Euler product, logarithmic derivative, large-degree counts, rationality/functional equation/class number | Lines 170, 180, 189, 199 |
| §5.6 recovery from g point counts | Predicate and two theorems, lines 222, 230, 236 |
| §2 Fourier duality and volumes | Docstring names missing completed divisor lattices and differential-normalized measures |
| §§3.2, 4.1–4.4 reduced representatives, Lubin–Tate tower, local reciprocity, Schmid–Witt conductors | Docstring names the missing constructions; bare native formal laws do not provide evaluated formal modules |
| §§4.7, 4.10 universal generalized Picard property and finite ray-cover classification | Docstring names generalized Picard schemes, Abel maps and Lang covers |
| §§5.7–5.8 finite-coefficient cohomological L-functions and quantitative Chebotarev | Docstring names the required cohomological and finite-cover Frobenius carriers |
| §§6.4–6.7 Harder finiteness and Yu nonvanishing | Docstring names reductive automorphic, cuspidal and Whittaker interfaces |
| §§7.1–7.6 inducing-character obstruction, Eisenstein continuation, density interpolation, Whittaker and global coefficient formulas | Docstring names Picard pullback, induced sections, L² realizations and Hermitian densities |

**Pinned declarations opened.** Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths below are relative to the respective library repositories.

| File and line | Declaration and boundary checked |
| --- | --- |
| `TauCeti/FieldTheory/FunctionField/Basic.lean:49` | `IsFunctionField` is an existential proposition about a transcendental parameter and finite extension, not a class and not exact constants |
| `TauCeti/FieldTheory/FunctionField/ConstantField.lean:109` | Finite-dimensional algebraic constant field |
| Same file, lines 119, 140, 151, 158 | Exact-constant characterization, integrally closed constant field, normalization and intermediate-field existence |
| `TauCeti/FieldTheory/FunctionField/Place/Basic.lean:487` | Place degree is residue-field finrank |
| `TauCeti/FieldTheory/FunctionField/Divisor/Basic.lean:51` | Weighted divisor degree; line 160 requires effectivity for degree-zero iff zero |
| `TauCeti/FieldTheory/FunctionField/Divisor/ProductFormula.lean:258` | `degree_principal`, explicit function-field hypothesis |
| `TauCeti/FieldTheory/FunctionField/RiemannRoch/Basic.lean:87` | `riemannRochSpace` uses multiplicative valuations, so 0 belongs even for negative divisors; line 99 defines dimension |
| `TauCeti/FieldTheory/FunctionField/RiemannRoch/ClassNumber.lean:82` | Finiteness of bounded effective divisors, with `[Finite k]` and `hF` |
| Same file, lines 143, 202, 210 | Finite degree-zero classes, `Nat.card` class number, positivity |
| `TauCeti/FieldTheory/FunctionField/Differential/CanonicalDivisor.lean:394` | Degree 2g−2 for a nonzero Weil differential, with exact constants |
| `TauCeti/FieldTheory/FunctionField/Place/Completion/Basic.lean:74` | Completion place, embedding order and filtration comparison at lines 89 and 100 |
| `Mathlib/RingTheory/FormalGroup/Basic.lean:56` | Formal law includes associativity and tangent coefficients; commutativity is separate at line 74 |
| `Mathlib/RingTheory/Trace/Basic.lean:518` | Surjective trace needs finite dimension and separability |
| `Mathlib/RingTheory/WittVector/Truncated.lean:62` | Carrier `Fin n → R`, constructor at 74; Witt ring structure at 270, not coordinatewise ring arithmetic |
| Same file, lines 288, 297 | Ring-hom truncation and its surjectivity |
| `Mathlib/RingTheory/WittVector/Frobenius.lean:218` | Native Witt Frobenius ring homomorphism |
| `Mathlib/FieldTheory/AbsoluteGaloisGroup.lean:42` | Automorphisms of the algebraic closure with Krull topology |
| `Mathlib/Topology/Instances/ZMod.lean:24` | Discrete finite-character target topology |
| `Mathlib/RingTheory/LaurentSeries.lean:1034` | `ratfuncAdicComplRingEquiv`, completed rational-function comparison |
| `Mathlib/RingTheory/PowerSeries/Inverse.lean:82` | `invOfUnit`; application needs the correct unit constant coefficient |
| `Mathlib/Topology/Algebra/RestrictedProduct/Units.lean:84` | Restricted-product units equivalence controls both a unit and its inverse |

Object searches included the full pinned function-field, Witt, class-field and power-series developments. In particular the algebraically-closed-constant degree-one-place theorem does not prove the finite-field divisor theorem; the elliptic predicate itself assumes a degree-one divisor. Pinned class-number finiteness is zeta-free. ClassFieldTheory's existing finite-extension norm quotients do not supply arbitrary open-subgroup existence in residue characteristic p. These facts distinguish the retained signatures from already-proved APIs.

**Resolved ownership and supplier contracts.** Main was read at `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`; new supplier roadmaps were read through the roadmap index at their heads. Existing-roadmap revisions were not substituted for main. All locations below mean `TauCetiRoadmap/<name>/README.md`, except the explicitly identified board design and completed LocalFieldsRamification.

| Supplier and location | Consumed object and boundary |
| --- | --- |
| AlgebraicCurves, lines 403, 478, 520, 578, 624, 712, 783, 870, 1099, 1193, 1468 | Intrinsic/chosen-generator comparison, inseparable finite normalization, divisors/RR, completions, different, constants and curve dictionary; FFA adds reduced lattice bases and arithmetic |
| ClassFieldTheory, lines 739, 807, 838, 870, 1220, 1312, 1433 | Class formations, finite Artin maps and arithmetic normalization; existence at 1453–1458 is mixed characteristic or prime-to-p index, so wild equal characteristic is an extension here |
| ArithmeticGaloisDuality, §R02.3.2, lines 2074–2113 | Function-field ideles, valuation degree, compact degree-zero classes and degree surjectivity; replace the stale name as in R01 |
| AutomorphicLFunctionsAndLocalFactors, AL.3.10.1, lines 2312–2316 | Completed adeles, rational unipotent quotients, residue character and self-dual measures; distinct from K-valued repartitions |
| Same, AL.3.10.4, lines 2334–2342 | Finite-field generalized Picard/Abel/Lang objects and rank-one least-conductor dictionary; FFA's coordinate comparisons and arbitrary finite abelian B extension add the stated content |
| Same, AL.R.3 line 263 and AL.3.4.1 line 2030 | Complex GL_n restricted tensors and Fourier reconstruction; FFA extends function modules and finiteness to arbitrary reductive groups and integral coefficients |
| ArithmeticGaloisRepresentations, §2.5 and §3.7 | Inertia-invariant geometric-Frobenius Euler factors and Artin–Schreier conductor comparison |
| Same, §5.13, lines 3550–3567 | Actual earliest degree-Chebotarev owner, including constant-field progressions; R01 |
| DeligneWeightsAndPurity, §§1.6, 1.9 and §3.7 lines 1272–1295 | Jacobian numerator/root bound/base extension; §3.7 imports the finite-cover counting result rather than owning the cited declaration |
| WeilConjectures, §1.16 lines 604–614 and §5.20 lines 1077–1095 | Scheme numerator and known-degree Newton recovery; FFA compares divisor zeta and uses symmetry to halve the required point counts; R01 |
| RelativeJacobiansAndIntegralCurveModels, §§1.3–1.5, lines 299–372 | Finite-flat rigidificator, O_m→L convention, unit sequence, smooth algebraic space and universal family; FFA adds scheme/linear structure over perfect fields |
| SchemeAndStackFoundations, §§1.1, 3.3, 3.6–3.7, 5.11, lines 2071, 4713, 4905, 4937, 7273 | Descent, bundle degree/duality, Picard torsors and Brauer obstruction, ordinary Abel maps, independent Weil bound |
| JacobianChallenge A–D, lines 111–238 | Line bundles and coherent cohomology/base change; ordinary Picard representability; the unrigidified sheaf is not the actual line-bundle group over an arbitrary field |
| ModularCurves §0E, lines 386–405 | Effective affine descent, sufficient for the rigidification presentation |
| ReductiveGroupsPartII RG2.0/RG2.0a/RG2.3.7/RG2.4, lines 463, 590, 963, 5201, 6213 | Point topology, finite locally free restriction of scalars, smooth-connected Lang theorem and local Iwasawa input |
| SmoothRepresentationsOfLocalGroups SR.2.1–SR.2.3 and SR.4.1/SR.4.4, lines 1835, 1964, 2124, 3108, 3376 | Smooth induction, modulus/Whittaker conventions, raw and normalized Satake, unitary local groups |
| GeometryOfNumbersAndQuadraticArithmetic §§3.1–3.2, lines 847–964 | Finite Hermitian counts, including q=2; inert densities in characteristic other than 2, including dyadic residue fields. Split and inert equal-characteristic-2 extension remains here |
| MetaplecticAutomorphicForms §§2.5, 3.2a, 3.3, 3.3b, lines 520, 606, 618, 646 | Local oscillator operators, split model, unitary splittings and Hermitian normalizations, used only in the stated odd-characteristic global branch |
| AutomorphicSpectralTheory §§1.11–1.13, 2.15–2.16, 4.11–4.17 | GL_n unramified parameters and residual interfaces; FFA keeps every fixed-centre component and constructs general unitary continuation |
| EtaleCohomologyFoundations F.2.5/F.3/F.10.2/F.10.3, lines 613, 692, 940, 1295 | Compact supports, finite flat coefficient perfectness, Frobenius comparison and projective trace; no inference of determinants from traces in characteristic ℓ |
| PadicMeasuresIwasawaAlgebras §5.1, lines 3172 and 3235–3254 | Actual determinant line, quasi-isomorphism, base-change, shift and acyclic comparisons |
| LubinTateFormalModulesAndQuasiCanonicalLifts, `packages/LubinTateFormalModulesAndQuasiCanonicalLifts/design/README.md:74`, 108, 144, 278, 296, 410, 447 | Characteristic-independent LT.0 foundation, mixed-characteristic LT.1–LT.2 and inverse-unit arithmetic Artin convention |
| `Completed/LocalFieldsRamification/README.md:878`, Layer 3; AdelicAlgebraicGroups AA.0, lines 562, 680 | Upper/lower groups and quotient compatibility; restricted Haar products for countable second-countable families |

Ownership searches used `roadmaps grep` by object, plus main, board packages and the supplied sibling checkouts. CurvesOverFiniteFields lines 7–17 explicitly consumes this divisor-zeta arithmetic; GlobalShtukasAndFunctionFieldLanglands line 22 consumes the degree, measures, zeta and general reductive automorphic results. QWittVectors line 11 defers p-typical Witt operations to the pins and develops different big/q-Witt objects. The Lubin–Tate board design is the generic formal-module owner. Existing rank-one Picard/Lang constructions and inert characteristic-not-two densities are imported, with the kept variants explicitly distinguished. No other roadmap's fully qualified declaration name is introduced in Suggested.lean. No route-specific restriction, computational algorithm, sorry'd data, `set_option`, external-folder edit or copied source passage was found.

**Seeded source sample: all 15 requested targets.** Read the legal cached texts at the stated locators, comparing their hypotheses and conventions rather than treating their wording as instructions. None of the README's locators is separately marked unverified. Settled inaccessible sources are listed below, not requested again.

| Target | Text and locator checked | Result |
| --- | --- | --- |
| 0.1 | yu lines 366–373, §2.1 p.8; lines 388–412, §2.2 p.9; ArithmeticGaloisDuality §R02.3.2 | Yu degree is the negative valuation degree. Arithmetic Artin uses the positive degree |
| 1.1 | Hess Proposition 9 and Remark 10, manuscript p.7 | Text remains uncertified. Independently checked inverse-ideal signs and chart membership against pinned RR and explicit rational examples |
| 2.3 | parshin lines 362–421, §2.2 pp.9–10, equations (9)–(10); lines 298–319, §2.1 p.7 | Formula and self-dual volume match; translations and a nontrivial additive character correct the source errors below |
| 4.4 | kw lines 1122–1228, Theorem 4.12 pp.21–22, Lemma 4.13/Proposition 4.14 pp.22–23 | Finite conductor formula matches; the nonnegative clamp and primitive normalization are necessary and correctly present |
| 4.5 | kw §4.2–4.5; milne lines 5022–5095, Appendix A pp.132–134; named coordinate/reciprocity suppliers | Local unit depths, full quotient versus selected character and arithmetic Frobenius conventions agree; coordinate maps are comparison targets, not an assertion of canonical coordinates |
| 4.6 | guignard_published lines 737–786, §4.7, Proposition 4.8, Lemma 4.9, pp.1317–1319; conrad_geom lines 62–90, §2 p.2 | Positive finite-flat rigidificator and universal global functions are retained. The m=0 branch uses ordinary Picard, not the positive-modulus dimension formula |
| 4.8 | conrad_geom §2 pp.1–3, lines 120–124 and 175–179; guignard_published lines 737–740 | Rational rigidified bundles over finite fields agree with the ray classes. The inverse-unit coordinate is checked by a frame calculation |
| 4.9 | conrad_geom lines 125–135 and 157–174, Theorem 3.2 pp.3–4; supplied Lang theorem | The Abel pullback, not an arbitrary map to a group, supplies geometric connectedness; Frob−id yields the stated arithmetic deck translation |
| 4.10 | conrad_geom Theorem 3.2 p.4; milne lines 5026–5053 and 5072–5174, A.8–A.12 pp.132–136 | Constant covers, possibly non-geometrically-connected extensions, norm quotients and least modulus are retained. General B-torsors include disconnected pushouts |
| 5.4 | WeilConjectures §1.16; DeligneWeightsAndPurity §§1.6, 1.9; AlgebraicCurves Layer 12 | Comparison uses the reversed Frobenius polynomial and exact constants; only the declaration spelling is stale (R01) |
| 6.2 | bhkt lines 1559–1605, §8.1 pp.34–35 | Source's split semisimple function modules are correctly distinguished from the roadmap's stated general reductive/central-quotient extension |
| 6.3 | bhkt lines 1583–1590, §8.1 p.34 | Probability quotient Haar measure and p invertible in R are explicit; stabilizer-weighted finite sums agree |
| 7.2 | morris1 lines 1045–1107, pp.118–119; lines 2498–2536 and Chapter 4, pp.160–168; morris2 lines 1300–1306 and 2008–2027, pp.1145,1164; fyz §2.1 p.8 | Cuspidal continuation, residual construction and discrete-data continuation are separate inputs. The Siegel determinant datum need not be cuspidal |
| 7.3 | fyz lines 402–442, §2.2 equations (2.1)–(2.3), pp.9–10 | Pairing sign, rational global index, local Levi factor and quotient/product measure ratio verified. General adelic covariance in source (2.1) requires correction |
| 7.6 | fyz lines 641–710, Theorem 2.8 equations (2.11)–(2.15), pp.13–15 | The scalar, degree convention, nonsingularity, integral Hermitian map, unramified character and density product agree. Ramified sections are a separately specified extension |

Additional headline source checks: kw Proposition 3.1 p.6 and Theorems 3.2–3.4 pp.6–9 (lines 276–393); kosters Theorem 1.1/Corollary 1.2 p.2 and Lemmas 1.3–1.4 pp.3–4 (lines 47–168); stacks Tag 03UZ/Theorem 64.20.1 (lines 1138–1154). The latter explicitly requires constructible flat finite coefficients prime to the characteristic and uses the determinant of the cohomology complex. Its proof is referred to the settled inaccessible SGA 4½ text, not certified from the Stacks statement alone.

**Adversarial calculations.** Each row identifies the statement or API law tested, actual inputs and computed values. “Pass” means the stated law agrees on those inputs, including its negative control. Imported objects are tested where their conventions enter a target. The last column records the required change, if any.

| Statement | Instances tried | Computed values on the two sides / wrong-model control | Result | Change |
| --- | --- | --- | --- | --- |
| 0.1 weighted degree and principal degree | 𝔽₂(t), div(t)=[0]−[∞] | 1−1=0; idele supported at a degree-2 place has degree 2 | Pass | None |
| 0.1 absolute value and Yu sign | q=2, uniformizer at degree 2 | local norm=2⁻²=1/4; Yu degree=−2; 2^(−2)=1/4 | Pass | None |
| 0.1 central determinant degree | scalar degree 1, GL₂ | determinant degree=2=2·1; GL₀ has degree 0 | Pass | None |
| 0.1 arithmetic/geometric Frobenius | constant C₃ extension, place degree 1 | arithmetic class=1; geometric class=−1=2 mod 3 | Pass | None |
| 0.1 constant extension splitting | degree d=2 place, extensions r=2 and r=3 | gcd=2,1; new place degrees=1,2; residue degrees over original field=2,6 | Pass | None |
| 0.2 degree-one divisor headline | 𝔽₂(t); hypothetical available degrees 2,3 | deg[∞]=1; deg(P₃−P₂)=3−2=1; this need not be effective | Pass | None |
| 0.2 finite-constant hypothesis | pointless real conic | divisor degrees=2ℤ; 1 absent, while Picard-scheme degree-1 component has one real point | Pass | None |
| 0.2 supplier contract R01 | AGD degree-surjectivity bullet | named declaration occurrences=0; explicit degree-surjectivity prose bullet=1 | Supplier mismatch | R01 |
| 0.3 divisor/line-bundle/Picard comparison | ℙ¹/𝔽₂ and ℙ¹/𝔽₃ | Cl=Pic=ℤ by degree; Cl⁰=J(k)=0, each of cardinality 1 | Pass | None |
| 0.3 Brauer obstruction boundary | real conic | Pic(X)=2ℤ; Pic_X/ℝ(ℝ)=ℤ; cokernel=ℤ/2, so finite-field conclusion cannot be generalized unchanged | Pass | None |
| 1.1 two-chart inverse ideals | k(t), D=2∞ | k[t]∩t²k[1/t]_(1/t)=span(1,t,t²), dimension 3; unreversed infinite ideal gives dimension 0 | Pass | None |
| 1.1 zero and negative divisor | D=−∞ | intersection={0}, dimension 0; multiplicative valuation at 0 is 0≤exp(−1), so 0 is retained | Pass | None |
| 1.1 divisor-addition/ideal multiplication | D=∞, E=2∞ | infinite ideals t⁻¹·t⁻²=t⁻³, matching D+E=3∞ | Pass | None |
| 1.1 pole/zero shifts and principal ideals | D=0, x=t, r=−1,0,2 | pole ideals t,1,t⁻²; zero ideals t⁻¹,1,t²; div(t) is generated by t on each chart | Pass | None |
| 1.2 reduced-basis headline | k(t), D=2∞, rank 1 | d=(2), v=1; shifts r=−3,−2,0 give dimensions 0,1,3=max(0,3+r) | Pass | None |
| 1.2 uniqueness of sorted invariants | elliptic x-map, D=0, rank 2 | d=(0,−2); shifted dimensions at r=0,1,2 are 1,2,4; rival (−1,−1) gives 0 at r=0 | Pass | None |
| 1.2 invariant sum | genus 1, D=0, rank 2 | sum d=−2=0+1·(1−1)−2 | Pass | None |
| 1.2 inseparable parameter | F=𝔽₂(t), x=t², D=0 | rank=2, basis 1,t, d=(0,−1); shifted dimensions 1,3,5=2r+1 for r=0,1,2 | Pass | None |
| 1.2 nonexact constants | F=𝔽₄(t) over 𝔽₂, x=t, D=0 | rank=2, d=(0,0); dim L(0)=2; sum=0=2(1−0)−2 | Pass | None |
| 2.1 divisor lattices and diagonal | ℙ¹/𝔽₂, D=0,∞,−∞ | diagonal intersections have cardinalities 2,4,1; dimensions 1,2,0 | Pass | None |
| 2.1 inclusions and finite indices | D=0, E one degree-2 place, q=2 | index A(E)/A(D)=4=2^(deg(E−D)); reversed inclusion fails | Pass | None |
| 2.1 sum/intersection | local exponents −1,2 | πO∩π⁻²O=πO; sum=π⁻²O, matching min=−1/max=2 | Pass | None |
| 2.1 quotient/RR index | ℙ¹, D=−2∞ | dim L(D)=0; adelic cokernel dimension=1; Euler difference=−1=deg D+1−g | Pass | None |
| 2.2 local self-dual volume | q_v=4, differential orders −2,0,2 | vol O=4,1,1/4=4^(−n_v/2); dual-lattice volume products=1 | Pass | None |
| 2.2 global volume and covolume | ℙ¹/𝔽₂, ω=dt | ord∞ω=−2; vol A(0)=2; integral-measure quotient volume=1/2, self-dual quotient volume=1 | Pass | None |
| 2.2 divisor scaling | same curve, D=2∞ | vol A(D)=8=2^(2+1); ratio to A(0)=4=2² | Pass | None |
| 2.2 change differential | dt→t dt on ℙ¹ | orders gain +1 at 0 and −1 at ∞; local multipliers 2⁻¹/² and 2¹/² multiply to 1 | Pass | None |
| 2.3 Fourier indicator | ℙ¹/𝔽₂, D=0, ω=dt | transform value at 0 is 2; support A(−2∞); second scalar 1/2, product 1 | Pass | None |
| 2.3 translated indicator | finite F₃ quotient, translate by 1, frequency 1 | positive transform phase=e^(2πi/3), while inverse convention gives e^(−2πi/3) | Pass | None |
| 2.3 Schwartz spanning | F₃ local residue quotient | all centered-lattice functions take equal values at residues 1,2; translated point indicator takes 1,0 | Pass | None |
| 3.1 Witt operator real body | p=2, a=[t] at length 2 | Frob(a)−a=(t²+t,t²+t³); coordinatewise subtraction would give second coordinate 0 | Pass | None |
| 3.1 truncation and Q₀ | p=2, lengths 0,1,2 | Q₀=0; truncate ℘[t]=t²+t=℘₁(t); length-zero quotient has one element | Pass | None |
| 3.1 finite Q_n over constants | F=𝔽₂, n=1,2 | Frob=id; quotient groups have orders 2,4, matching Hom_cont(ℤ̂,ℤ/2ⁿ) | Pass | None |
| 3.1 Hilbert 90 identity extension | L=F, n=0,1,2 | 1−σ=0, trace=id; kernel=all, image=0, trace range=all on both sides | Pass | None |
| 3.1 Hilbert 90 wild trace | y³−y=t, degree 3 | Tr(1)=3=0; Tr(−y²)=−(3y²+2)=1 in characteristic 3 | Pass | None |
| 3.1 Witt trace versus coordinates | p=2, y²+y=t, length 2 | [y]+[y+1]=(1,y(y+1))=(1,t); coordinate sum would be (1,0) | Pass | None |
| 3.1 field degree/order | F=𝔽₂(t), class [t] in Q₂ | 2[t]=(0,t²) has nonzero AS class t; 4[t]=0; field degree=4, not 2 | Pass | None |
| 3.1 cyclic-subgroup classification | order-4 class a, classes a and 3a | characters differ by factor 3, cyclic subgroup has the same 4 elements; generated field degree=4 in both cases | Pass | None |
| 3.1 localization kernel | p=3, class t⁻², completion at ∞ | with s=1/t, solution −Σ_{j≥0}s^(2·3^j) gives y³−y=s²; local class=0 while global pole class≠0 | Pass | None |
| 3.1 infinite headline R02 | F=𝔽₂, class 1 | Q∞=W(𝔽₂)=ℤ₂; continuous characters ℤ̂→ℤ₂ form ℤ₂; reductions of 1 have orders 2,4,8 | Math passes; signature absent | R02 |
| 3.1 infinite dual topology | F=𝔽₂; Q∞=ℤ₂ | continuous ℤ₂-linear dual=ℤ₂; finite-level quotients have sizes 2ⁿ; not the torsion group ℚ₂/ℤ₂ | Pass | None |
| 3.2 reduced representatives | p=3, coefficient c₂=1, others 0 | class [T⁻²] has one allowed prime-to-3 pole; T⁻⁶ reduces to T⁻² at length 1 | Pass | None |
| 3.2 Witt constants and nonlinearity | p=2, [1+T]−[1] at length 2 | coordinates (T,T), not (T,0); its pole-free positive part has zero local ASW class | Pass | None |
| 3.2 exact constant coefficient choice | k=𝔽₄, β=[u], Tr(u)=1 | β projects to a generator of Q₁; [1] has trace 0 and is not a generator | Pass | None |
| 3.2 finite truncation/ramification | β+p[T⁻m], n=1,2 | n₀=0,n_c=1; degrees p,p²; residue degrees p,p and ramification indices 1,p | Pass | None |
| 3.3 one-pole comparison | p=3,m=2 | different exponent=(3−1)(2+1)=6; 2g−2=−6+6=0; g=1 | Pass | None |
| 3.3 localization at other places | same curve, ∞ | pole class nonzero at 0; positive-power local series gives class 0 at ∞; three rational points above ∞ | Pass | None |
| 3.3 point-count check | y³−y=t⁻² over 𝔽₃ and 𝔽₉ | counts 4 and 16; L=1+3T² gives 3+1=4 and 9+1−(−6)=16 | Pass | None |
| 4.1 formal module/action | O=𝔽₂[[π]], f=πX+X² | formal addition X+Y: f(X+Y)=f(X)+f(Y); [0]=0,[1]=X,[π]=f | Pass | None |
| 4.1 tangent and strict coordinate laws | same f, identity coordinate | linear coefficients 0,1,π; identity derivative 1; scalar 2 in characteristic 3 is not strict | Pass | None |
| 4.1 torsion module/cardinality | Q=3, m=1,2 | torsion sizes 3,9; primitive sizes 2,6=(Q−1)Q^(m−1) | Pass | None |
| 4.1 torsion field/Galois degree | Q=2, m=1,2 | field degrees 1,2; unit groups modulo π,π² have orders 1,2 | Pass | None |
| 4.1 norm of uniformizer | Q=2,m=1, f=πX+X² | nonzero torsion root=π; field is K; its norm is π, valuation 1 | Pass | None |
| 4.1 relative construction | unramified degree d=2,Q=2,m=2 | residue degree 2, ramification degree 2, total degree 4; norm valuation image=2ℤ | Pass | None |
| 4.1 lower/upper ramification | Q=2,m=2, nontrivial principal unit | torsion displacement valuation=2; lower break=1, upper break=1, conductor=2 | Pass | None |
| 4.2 local existence headline | H=K×; H=ord⁻¹(2ℤ) | unique fields K and unramified quadratic; indices/degrees 1 and 2 | Pass | None |
| 4.2 wild existence | K=𝔽₂((T)), y²−y=T⁻¹ | extension degree/index=2; U² killed, U¹ not killed; conductor=2 | Pass | None |
| 4.2 Kronecker–Weber and Artin image | unramified quadratic and ramified quadratic | first requires constant tower, second requires torsion tower; degree projection of K× is ℤ, completion is ℤ̂ | Pass | None |
| 4.2 inverse unit convention | Q=5, unit residue 2, first torsion level | arithmetic Artin acts by [2⁻¹]=[3]; geometric convention acts by [2] | Pass | None |
| 4.2 ramification/unit comparison | tame nontrivial character at q=3 | U⁰ image has order 2, U¹ image order 1; conductor 1 and Swan 0 | Pass | None |
| 4.3 Schmid–Witt constant symbol | k=𝔽₃, a=1, b=T² | trace-residue value=2; valuation formula ord(b)Tr(a)=2·1=2 mod 3 | Pass | None |
| 4.3 bilinearity and trivial factors | a=0 or b=1; constants a=1,b=T,T² | values 0,0 and 1,2; [1,T·T)=1+1=2 | Pass | None |
| 4.3 finite/nonfinite dual carrier | n=1 versus infinite length | T^p has exponent class 0 modulo (K×)^p; at length 2 its valuation class is p≠0 mod p² | Pass | None |
| 4.4 finite conductor formula | p=3,m=2; n=1,2; v(c)=0,1 | conductors 3,7 for unit coefficient; n=2,v(c)=1 gives 3; constant-only gives 0 | Pass | None |
| 4.4 primitive normalization | x=2[T⁻¹], x₀=[T⁻¹] | n₀=1; normalized G¹ bound 1−1=0; evaluation on x has image 2ℤ₂, not ℤ₂ | Pass | None |
| 4.4 missing-clamp negative control | p=2, x=β+2[T⁻³], r=1 | correct bound=1+max(0,ceil(log₂(1/3)))=1; unclamped bound=0; inertia 2ℤ₂≠ℤ₂ | Pass | None |
| 4.4 compositum conductors | conductors exponents 2 and 3 | ideal lcm=π³; exponent max(2,3)=3, not 5 | Pass | None |
| 4.5 ray quotient and degree splitting | ℙ¹/𝔽₃, m=0,[0]+[∞],2∞ | degree-zero groups of sizes 1,2,3; quotient adds a discrete ℤ degree direction | Pass | None |
| 4.5 quotient versus selected conductor | wild quotient B=ℤ/2, select trivial character | quotient conductor exponent 2; selected conductor 0 | Pass | None |
| 4.5 completion/truncation coordinates | T-adic O, N=0,1,2 | quotients 0,k,k[T]/T²; sizes 1,q,q²; the N=0 unit group has one element | Pass | None |
| 4.5 coordinate-change compatibility | T′=T+T² modulo T³ | T=T′−T′² mod T′³; composing gives T mod T³, so the truncation comparison is not identity on coefficients | Pass | None |
| 4.6 rigidified Picard dimension | g=0, modulus lengths N=0,1,2 | dimensions 0,0,1; using g+N−1 at N=0 would give −1 | Pass | None |
| 4.6 reduced/nonreduced unit sequence | ℙ¹, m=0+∞ versus 2∞ | kernels G_m versus G_a; over 𝔽₃ point counts 2 versus 3 | Pass | None |
| 4.6 non-split modulus | single degree-2 point over 𝔽₃ | Res 𝔽₉×/𝔽₃× has order 8/2=4; one-dimensional torus, not additive group of order 3 | Pass | None |
| 4.6 rigidification and base-change automorphisms | m rational point; dual-number base | scalar 1+ε preserves the identity frame only if ε=0; normalized units on 2∞ are 1+bT and multiply by adding b | Pass | None |
| 4.6 torsor/Brauer distinction | real conic, degree-2 m | Pic_m¹(ℝ)=empty; Pic_X¹(ℝ) has one point; hence scheme torsor does not imply rational section | Pass | None |
| 4.7 Abel map and high-degree fibre | ℙ¹, m=2∞, n=1,2 | vector-torsor fibre ranks 0,1=n−2−0+1; n=1 Abel map A¹→G_a is t↦t | Pass | None |
| 4.7 ordinary modulus boundary | m=0, ℙ¹, n=0,1 | ordinary Abel fibres are P⁰,P¹, dimensions 0,1; positive-modulus affine formula is not used | Pass | None |
| 4.7 Rosenlicht modulus | t: G_m→G_m; t:A¹→G_a | least moduli 0+∞ and 2∞ respectively; modulus ∞ alone gives J=0 and cannot factor the nonconstant additive map | Pass | None |
| 4.7 nontrivial genus threshold | g=1,N=1,n=2 | rank=n−N−g+1=1; n=1 lies below sufficient bound 2g+N−1=2 | Pass | None |
| 4.8 ray/rigidification coordinate | k=𝔽₅, local unit u=2 | idele gives (O,u⁻¹)=(O,3); unit-sequence boundary gives (O,2); 2·3=1 | Pass | None |
| 4.8 principal relation and tensor | principal f=2, tensor unit frames u=2,v=3 | constant principal idele is zero in ray quotient; tensor frame u⁻¹v⁻¹=1=(uv)⁻¹ | Pass | None |
| 4.8 degree and empty modulus | ℙ¹,m=0, divisor d∞, d=−1,0,2 | line bundles O(−1),O,O(2), degrees −1,0,2 on both sides | Pass | None |
| 4.9 multiplicative Lang cover | G_m/𝔽₃, Frob−id | Lang map z↦z²; equation z²=t has two geometric sheets and connected function field; inverse sign would invert deck class | Pass | None |
| 4.9 additive Lang cover | G_a/𝔽₃ | Lang map y↦y³−y; y³−y=t has degree 3 and derivative −1=2, hence étale on A¹ | Pass | None |
| 4.9 degree-d Frobenius | G_a/𝔽₃, v degree 2 | two iterations give y⁹−y=t+t³=Tr_𝔽₉/𝔽₃(t); subtracting 2a gives [v]−2a | Pass | None |
| 4.10 B-torsor classification | B=0; B=ℤ/4, θ=0 | degrees 1 and 4; connected components 1 and 4; zero character need not mean identity cover for fixed nontrivial B | Pass | None |
| 4.10 connectedness | B=ℤ/4, θ=2deg | image size 2; components=4/2=2; each component is a constant quadratic cover | Pass | None |
| 4.10 geometric connectedness/constants | B=ℤ/3, θ=deg mod3 on ℙ¹ | connected components 1; geometric components 3; constant degree 3=[B:0] | Pass | None |
| 4.10 norm subgroup | constant quadratic cover | norm degrees=2ℤ; cover degree=2=index; kernel of degree itself would have infinite index | Pass | None |
| 4.10 pushout and splitting independence | replace a by a+b, θ(b)=1 mod3, d=2 | geometric contribution changes −2=1; constant contribution +2; total change 0 mod3 | Pass | None |
| 4.10 least conductor tame boundary | z^(q−1)=t, q=2,3 | q=2 degree1/conductor0; q=3 degree2/conductor 0+∞, exponent1 at each point | Pass | None |
| 4.10 wild least modulus | y²−y=t on A¹ | same open for ∞ and 2∞; Swan1, conductor2; character factors through 2∞ only | Pass | None |
| 4.10 conductor as character maximum | B=(ℤ/2)², local character depths 1,3 | joint kernel first contains U³; maximum=3; trivial character depth0 does not determine quotient conductor | Pass | None |
| 5.1 effective divisors/zeta definition | ℙ¹/𝔽₂, n=0,1,2,3 | A_n=1,3,7,15; generating series coefficients equal these integers | Pass | None |
| 5.1 placeCount and pointCount | ℙ¹/𝔽₂, r=0,1,2 | place counts B₁=3,B₂=1; N₀=0 by empty divisors, N₁=3,N₂=3+2=5 | Pass | None |
| 5.1 Euler product headline | same curve, coefficient T² | three degree-1 places contribute binomial(4,2)=6; one degree-2 place adds1; total7=A₂ | Pass | None |
| 5.1 logarithmic derivative headline | same curve, r=1,2,3,4 | rA_r=3,14,45,124; convolutions give 3,9+5,21+15+9,45+35+27+17 | Pass | None |
| 5.1 Möbius inversion/base extension | q=2, r=2 | B₂=(N₂−N₁)/2=(5−3)/2=1; base-extension rational points N₂=5 | Pass | None |
| 5.2 large-degree count headline | ℙ¹/𝔽₂,n=0,2; E/𝔽₅,g1,h9,n1 | (q−1)A_n=1,7,36; RHS=2¹−1,2³−1,9(5−1), respectively | Pass | None |
| 5.2 sharp bound | genus1,n=0 | hypothesis 2≤1 fails; A₀=1, whereas unguarded RHS=h(5⁰−1)=0 | Pass | None |
| 5.3 rationality and degree headline | ℙ¹/𝔽₂ | Z=(1−T)⁻¹(1−2T)⁻¹; numerator1, degree0=2g, leading coefficient1=2⁰ | Pass | None |
| 5.3 genus-one numerator/reciprocity | E:y²=x³+x+1 over 𝔽₅ | N₁=9; L=1+3T+5T²; a₂=5a₀=5, a₁=9−6=3, L(1)=9=h | Pass | None |
| 5.3 functional equation | same L | 5T²L(1/(5T))=5T²+3T+1=L(T) | Pass | None |
| 5.4 scheme/Jacobian reversal | same E | charpoly X²+3X+5 reverses to 1+3T+5T²; constants 5 versus1 distinguish the two | Pass | None |
| 5.4 root bound and counts | same E | discriminant −11, both root norms √5; S₂=9−10=−1, N₂=26−(−1)=27 | Pass | None |
| 5.4 supplier name R01 | WeilConjectures §1.16 | old-name occurrences0; one explicit numerator target; its g1 numerator agrees as 1+3T+5T² | Supplier mismatch | R01 |
| 5.5 constant extension | same E, r=2 | L₂=1+T+25T²; L(T)L(−T)=1+T²+25T⁴=L₂(T²) | Pass | None |
| 5.5 rational curve extension | q=2,r=2 | Z₂(T²)=1/((1−T²)(1−4T²)); Z(T)Z(−T) has the same denominator | Pass | None |
| 5.6 data predicate and uniqueness headline | g=0, q=0,1,2 | P.coeff0=1, natDegree≤0 force P=1 in all three cases | Pass | None |
| 5.6 data for junk q values | g=1,N₁=9,q=0,1,5 | unique P=1+8T, 1+7T+T², 1+3T+5T²; leading degree may drop at q=0 | Pass | None |
| 5.6 Newton recovery with g2 | q=2, N₁=3,N₂=13 | a₁=0; 2a₂=13−4−1=8 so a₂=4; symmetry a₃=0,a₄=4; P=1+4T²+4T⁴ | Pass | None |
| 5.6 actual L-polynomial data headline | E/𝔽₅, g1,N₁9 | r=1 identity 1·3=(9−5−1)·1=3; symmetry fixes a₂=5 | Pass | None |
| 5.6 recurrence supplier R01 | WeilConjectures §5.20, same E | S₂+3S₁+5S₀=−1−9+10=0; obsolete declaration occurrences0 | Supplier mismatch | R01 |
| 5.7 characteristic-series definition | rank-one module, u=2 in ℤ/5 | series1−2T; one shift gives inverse, coefficient T is2 rather than−2 | Pass | None |
| 5.7 representative and base-change API | [A→¹A], u=id; A→A/2 | series(1−T)/(1−T)=1 before/after reduction; acyclic replacement contributes1 | Pass | None |
| 5.7 perfect versus projective cohomology | [ℤ/4→²ℤ/4], u=id | termwise determinant ratio1; H⁰=H¹=ℤ/2, nonprojective over ℤ/4 | Pass | None |
| 5.7 finite-ring local Euler factor | Λ=𝔽₃×𝔽₃, inertia(−1,1) | invariants0×𝔽₃; determinant(1,1−T); inverse(1,(1−T)⁻¹), not1 | Pass | None |
| 5.7 lift independence/unit constant | unramified line Frobenius a=2 in 𝔽₃; zero stalk | P=1−2T and P=1; constant term1 in each; multiplying Frobenius lift by inertia acts identically on invariants | Pass | None |
| 5.7 cohomological identity headline | constant 𝔽₃ sheaf on ℙ¹/𝔽₂ | H⁰,H² factors1−T,1−2T; inverse product agrees with Euler zeta, H¹ dimension0 | Pass | None |
| 5.7 traces do not determine determinant | id on 𝔽₂² versus zero-dimensional module | all power traces0 in both; determinants1−T² and1 differ | Pass | None |
| 5.8 finite counts/conjugacy/additivity | constant C₂ cover of ℙ¹/𝔽₂ | degree1 counts identity0, nonidentity3; disjoint union count3=0+3; empty count0 | Pass | None |
| 5.8 progression and explicit bound | trivial cover ℙ¹/𝔽₂, r1,2 | rπ=3,2; main terms3,5; errors0,3; bounds√2+1 and6, respectively | Pass | None |
| 5.8 geometric/nonabelian coefficient | G=S₃, N=G, class of 3-cycles | class size2, coefficient2/6=1/3; each inverse remains in class. Constant C₃ with N=1 instead has coefficient1 | Pass | None |
| 5.8 supplier drift R01 | constant C₂ cover, compatible parity | DWP delegates to AGR; compatible leading factor1, wrong factor1/2; named DWP declaration count0 | Supplier mismatch | R01 |
| 6.1 affine adelic points | G=G_a,G_m,α₂ over 𝔽₂(t) | G_a(A)=A; G_m(A)=A× with integral units; α₂(K)=α₂(A)={0}, so smoothness is not silently assumed | Pass | None |
| 6.1 discrete diagonal/finite stabilizers | G_a, standard integral compact | K∩∏O_v=𝔽_q has q elements; G_m gives 𝔽_q× with q−1 elements | Pass | None |
| 6.1 model independence | enlarge S by one place | one local integral restriction replaced by the full completion; restricted-product union unchanged | Pass | None |
| 6.2 function modules/central quotient | G=GL₁, ℙ¹, Ξ degree subgroup3ℤ | double quotient=ℤ/3; all/cpt/cusp modules R³ since no proper parabolic | Pass | None |
| 6.2 omission of central quotient control | same with Ξ=0 | double quotient=ℤ; finite-support functions R^(ℤ) differ from all functions R^ℤ | Pass | None |
| 6.2 scalar extension and Hecke | 3-point quotient R=ℤ[1/2]→ℚ | finite-support scalar extension gives ℚ³; translation permutes the three coordinate functions | Pass | None |
| 6.3 probability constant term | constant function1, any allowed unipotent quotient | integral1=1; zero function gives0, so constant nonzero function is not cuspidal for a proper parabolic | Pass | None |
| 6.3 stabilizer weights | Heisenberg group, p=2 | orbit weights1/4,1/4,1/2 sum1; unweighted equal averaging1/3 gives different values on an orbit indicator | Pass | None |
| 6.3 coefficient hypothesis | p=2,R=𝔽₂ versus R=ℤ[1/2] | 1/2 undefined in the first; 2·(1/2)=1 in the second, as required | Pass | None |
| 6.3 transitivity/equivariance | finite product additive quotient of order4 | iterated average of point indicator=(1/2)(1/2)=1/4=single average; right translation permutes terms | Pass | None |
| 6.4 reduction root sign | GL₂, g=diag(π^a,1), a=−1,0,1 | log_q\|α(g)\|=1,0,−1=−a; sign reversal changes the escaping chamber | Pass | None |
| 6.4 anisotropic and torus cases | G=1; anisotropic torus modulo compact centre quotient | no proper-parabolic conditions; finite quotient gives finite-support functions automatically; G=1 module R | Pass | None |
| 6.4 uniform support and finite generation | GL₁ ℙ¹ modulo degree3, Noetherian R | common support has3 points; module R³ finitely generated; removing Ξ makes quotient ℤ and loses this conclusion | Pass | None |
| 6.4 flat base change | finite kernel matrix [2]:R→R | R=ℤ[1/3], kernel0; flat ℚ gives0; nonflat 𝔽₂ gives full 𝔽₂, showing flatness matters | Pass | None |
| 6.5 algebraic eigenvalues/number field model | cyclic 3-point Hecke translation | matrix characteristic polynomial X³−1; eigenvalues1,ζ₃,ζ₃² lie in ℚ(ζ₃), not necessarily ℚ | Pass | None |
| 6.6 raw versus normalized Satake | GL₂,q_v=4, first Hecke operator | raw4X₁+X₂; normalized2(X₁+X₂); normalized constant term has characters2,1/2 and eigenvalue2(2+1/2)=5=q+1 | Pass | None |
| 6.6 nested constant terms | GL₃ upper Borel through Levi(2,1) | unipotent dimensions1+2=3; modulus exponents add, so successive square-root factors multiply to the Borel factor | Pass | None |
| 6.7 Yu nonvanishing headline | n=1 character; zero-vector control | character at identity1≠0; zero vector takes value0 in every degree and is explicitly excluded | Pass | None |
| 6.7 differential/degree cancellation | g=0,n=2, ω=dt | diagonal Yu degree n(n−1)(g−1)=−2; scalar degree1 contributes2; total0 | Pass | None |
| 7.1 unramified inducing-character obstruction | E/𝔽₃:y²=x³+2x²+2x, degree2 self-isogeny | E(𝔽₃)={O,(0,0)}; fibre polynomial x²+2x+2 has no root; kernel class maps to η=−1, so odd n is obstructed | Pass | None |
| 7.1 even n and constant cover | same η,n=2; constant quadratic extension | η²=1 on pullback kernel; constant-cover kernel0; character (−1)^degree upstairs restricts correctly | Pass | None |
| 7.1 arbitrary finite ramification | local quadratic character conductor2 | a sufficiently small unit subgroup U² is killed, U¹ need not be; open-level extension allows this character | Pass | None |
| 7.2 induced section normalization | split H₁=GL₂,q_v=4,s=0 | δ_P^(1/2)=\|π\|^(1/2)=1/2; unnormalized exponent s+1/2 and normalized exponent s both give1/2 | Pass | None |
| 7.2 spherical and arbitrary flat sections | identity/unipotent and scalar multiple2Φ | normalized values1,1; scaled values2,2, so spherical normalization excludes rescaling | Pass | None |
| 7.2 full fixed-centre parameter | split GL₂, whole-group parabolic | central degrees2ℤ; solutions z²=1 are ±1; identity component alone loses one component | Pass | None |
| 7.2 cuspidal continuation headline | P=H_n; proper split rank1 Borel | whole-group series one term f, denominator1; Borel constant term two Weyl terms | Pass | None |
| 7.2 Levi discrete decomposition headline | unitary determinant character on GL₂ | unipotent restriction1, constant term1; square-integrable modulo centre but not cuspidal, hence residual branch necessary | Pass | None |
| 7.2 discrete-data continuation headline | whole-group residual datum | E=f, intertwiner=id, denominator1; no pole or residue is invented by induction from P=G | Pass | None |
| 7.2 Siegel convergence/rationality | n=1,q=3,s=1; n=0 | 1>1/2 lies in the asserted region; n0 gives one-term constant series1; period changes q⁻s by exp(−2πi)=1 | Pass | None |
| 7.2 nonunitary split twist | χ₀=absolute value, g fixed | twist multiplies all summands by the same \|det g\|; relative convergence ratio unchanged1 | Pass | None |
| 7.3 Hermitian trace pairing | 𝔽₄/𝔽₂, basis1,u with u²+u+1=0 | Tr(x·bar(y)) Gram=[[0,1],[1,0]], determinant1; diagonal rank1 pairing matrix[1] | Pass | None |
| 7.3 split trace pairing | matrix units E₁₂,E₂₁ | Tr(E₁₂E₂₁)=1; Tr(E₁₂E₁₂)=0; no factor2 | Pass | None |
| 7.3 Fourier sign/dual | finite 𝔽₃ additive quotient, frequency1 | sum_b ψ(b)ψ(−b)/3=1; opposite extracted frequency gives(1+ζ₃+ζ₃²)/3=0 | Pass | None |
| 7.3 rational versus adelic Levi | n1,T=1; α_v=π at one place only | local new index π² at that place,1 elsewhere is not rational; rational α=t has global norm1 and rational new index t² | Pass | None |
| 7.3 local Levi covariance | split rank1,q_v=3, α=(π,1), χ=1,s=0 | factor \|detα\|^(1/2)=3⁻¹/²; omitting Jacobian would give3¹/² | Pass | None |
| 7.3 factorization volume | g=0,1; n=1,2 | prefactors q,q⁴ and1,1; product-integral quotient volumes q⁻¹,q⁻⁴ and1,1 | Pass | None |
| 7.3 singular-index control | T=0, split rank1 | constant coefficient has s and−s terms; nonsingular product theorem is not applied | Pass | None |
| 7.3 ramified local rational factors | Φ_v=0,Φ_v,2Φ_v | factors0,W,2W; unramified split unit line at q3,s0 has W=2/3 | Pass | None |
| 7.4 representation density | split q3, rank1,N2, Gram1 andπ | counts6,12 modulo9; divide by9 to get2/3,4/3; inert unit line count12/9=4/3 | Pass | None |
| 7.4 rank and empty embedding | n=0; m=0<n=1 | representation counts1 and0; densities1 and0 | Pass | None |
| 7.4 cross-dual and half-length | split L=(O,πO), L′=(O,O) | L∨=(π⁻¹O,O); L′/L total length1, half-length1/2, exponent2ℓ′=1 | Pass | None |
| 7.4 weight polynomial | a=0,1,2; inert q2 | m=1,1−T,(1−T)(1+2T); split a2 uses(1−T)(1−2T) | Pass | None |
| 7.4 self-dual density and interpolation | n=1,j=0,q3 | split denominator1−1/3=2/3; inert1+1/3=4/3; normalized self-dual value1 | Pass | None |
| 7.4 nonzero denominator | q2,i=1,j=0, η=±1 | factors1/2 and3/2; neither0. q1 would give a zero factor and is excluded | Pass | None |
| 7.4 rank-one polynomial | Gramπ, split/inert | overlattice sums1+T and1−T; at T=1 yield2 and0, matching representation obstruction in inert case | Pass | None |
| 7.4 polynomial functional equation | inert length2 | P=1−T+T²; T²P(1/T)=T²−T+1; constant/leading coefficients1,1 | Pass | None |
| 7.4 equal-characteristic-two reciprocity | Q=π⁻¹O_𝔽₄²/O_𝔽₄² | three isotropic lines; (1−T)(1+2T)+3T²=1+T+T²=T²P(1/T) | Pass | None |
| 7.4 negative-integrality control | rank1 Gramπ⁻¹ | L not contained in L∨; quotient L∨/L unavailable; polynomial theorem correctly excludes it | Pass | None |
| 7.5 local Whittaker/density headline | unit line, split/inert q3,s0 | Den=1, W=L₁⁻¹=1∓1/3, hence2/3 and4/3 | Pass | None |
| 7.5 oscillator dimension/interpolation | n1,j1, q3 | source rank n+2j=3; argument T=q⁻²=1/9, not −1/3 from an erroneous one-rank increment | Pass | None |
| 7.5 Whittaker vanishing | inert rank1 Gramπ,s0 | Den(1)=1−1=0, so W=0; self-dual line instead has W=4/3 | Pass | None |
| 7.6 FYZ coefficient headline | g0,n1, Serre-self-dual E of total degree−2 | exponent −(−2)(s−1/2)−(−2)/2=2s; coefficient χ(detE)q^(2s)L₁⁻¹, Den=1 | Pass | None |
| 7.6 genus-one and rank-zero cases | g1,degree E0; n0 | exponent0, normalized polynomial1; coefficient χ(detE)L_n⁻¹. n0 gives1 | Pass | None |
| 7.6 local-to-global density degree | one degree-d place, local length r | local q_v^(−2s) powers give degree2dr in q⁻s, matching the global torsion degree | Pass | None |
| 7.6 nonintegral Fourier index | one local nonintegral entry, spherical section | local integral vanishes0 by translation character; global coefficient product0 | Pass | None |
| 7.6 ramified section dependence | replace one local section by2Φ | one factor doubles and global integral doubles; a section-independent density replacement would not | Pass | None |
| Worked elliptic example | E/𝔽₅, rational x-parameter | pole orders x=−2,y=−3; L(4∞)=span(1,x,x²,y), dimension4=4+1−1 | Pass | None |
| Worked wild reduced basis | y³−y=t⁻², x=t⁻¹ | pole orders x=−3,y=−2; d=(0,−1,−2), shifted r1 dimension3, r2 dimension6, agreeing 3r for r≥1 | Pass | None |

The table contains 183 computed rows. Rational-curve convolutions, the two finite-field point enumerations, residue trace matrices and small local-density counts were also recomputed in a scratch arithmetic script. The remaining rows are direct exact symbolic calculations, including boundary and wrong-model controls.

## Not verifiable

- **hess:** Proposition 9 and Remark 10, manuscript p.7 (sample §1.1), and Theorem 7/Corollary 11 (§1.2). The manifest's author-manuscript search is settled uncertified; no legal full text is available in the supplied cache. The algebraic tests above do not certify the source's full hypotheses or pagination.
- **rosen:** Chapter 5, pp.45–46 and Theorems 5.9–5.10, used in §§0 and 5. The supplied Springer preview/publisher access is settled uncertified. No full-text certification is claimed.
- **goss:** §1.1, Example 1.1.1 and Proposition 1.1.2, p.1. Publisher-preview access is settled uncertified. The Witt and additive-polynomial calculations were checked independently.
- **stichtenoth:** §5.1, Lemma 5.1.1, Definition 5.1.2 and Proposition 5.1.3, pp.185–186. Publisher-preview access is settled uncertified. The consumed finiteness/class-number declarations were read at the Tau Ceti pin.
- **sga4half:** *Fonctions L modulo ℓⁿ et modulo p*, Théorème 2.2. The full proof remains settled uncertified. Stacks Tag 03UZ was read and confirms the theorem and its hypotheses, while explicitly omitting this proof.
- **roquette:** §4.3.3, pp.25–28 and §8.1 are settled waived. The author URL and settled cache status were inspected; the text was not requested again. Degree-one divisors were tested and their independent supplier routes resolved.

No new missing-source request was created, no manifest was edited, and none of these settled access limits is treated as a new blocking finding. The sample is fully accounted for, with the inaccessible Hess locator explicitly uncertified. Source verification here uses the cited preprint versions and the published Guignard/Morris texts; it does not assert agreement with an unread later edition.

## Source issues

- **Error** in parshin at §2.1, p.7, parshin line 298: the source says centered divisor-lattice indicators span all Schwartz functions; it should be their translates span; affects a stated result.
- **Misprint** in parshin at §2.2, p.9, parshin line 367: the source says the global character is a sum of local character values; it should be their product, equivalently one character applied to the residue sum; affects a stated result.
- **Error** in parshin at §2.2, p.9, parshin line 375: the source says the finite-field additive character is injective and selected by a q-th root; it should be nontrivial, composed with trace to the prime field; affects a stated result.
- **Misprint** in kw at Theorem 3.2(i) proof, p.7, kw line 299: the source says the substituted translate of α has a plus-one sign inconsistent with 1=α−σα; it should be σα=α−1 with matching Frobenius and subtraction signs; affects the proof.
- **Misprint** in kw at Theorem 3.4 proof, p.9, kw lines 378–386: the source says the character-surjectivity argument proves φ₁ surjective; it should be φ₂, followed by its dual φ₁; affects the proof.
- **Error** in kw at Theorem 4.12, pp.21–22, kw lines 1135–1149: the source says the unit-image exponent is the unrestricted ceiling of log_p(r/i); it should be its maximum with zero, since generator indices are nonnegative; affects a stated result.
- **Error** in kw at Proposition 4.14, pp.22–23, kw lines 1184–1194: the source says the upper-group bound uses unclamped logarithmic ceilings; it should be clamped at zero before adding coefficient valuations; affects a stated result.
- **Error** in kw at Proposition 4.14, p.22, kw lines 1184–1186: the source says evaluation on a possibly nonprimitive x identifies the Galois group with its full ℤ_p-valued dual; it should be normalized using x/p^n₀, or restricted to the extendible dual image; affects a stated result.
- **Misprint** in kosters at Corollary 1.2, p.2, kosters lines 81–85: the source says the weighted sum ranges over all places; it should be rational places, as in Theorem 1.1 and the proof; affects a stated result.
- **Error** in conrad_geom at Theorem 3.1, p.4, conrad_geom lines 155–156: the source says every geometrically connected abelian cover of the target pulls back geometrically connected along arbitrary f; it should require surjective induced monodromy, as for the universal Abel map; affects a stated result.
- **Error** in yu at Lemma 5.3.3, p.36, yu lines 1934–1935: the source says a vector in the spherical cuspidal representation has a nonzero degree-zero value without excluding zero; it should require a nonzero vector; affects a stated result.
- **Error** in fyz at Remark 2.1, p.8, fyz lines 383–393: the source says odd-rank unramified inducing characters always exist; it should require ηⁿ to vanish on the Picard-pullback kernel; affects a stated result.
- **Error** in fyz at equation (2.1), p.9, fyz lines 420–422: the source says arbitrary adelic Levi translation gives a global coefficient indexed by the transformed adelic form; it should restrict global covariance to rational Levi elements and use local Whittaker covariance otherwise; affects a stated result.
- **Misprint** in fyz at the split type formula preceding Theorem 2.3, p.11, fyz line 505: the source says the quotients cross the component subscripts of its already cross-defined dual lattices; it should use L₁∨/L₁ and L₂∨/L₂; affects nothing.

For the additional Conrad control, take a constant map from a connected curve over an algebraically closed field to an elliptic curve and a nontrivial étale isogeny: its pullback is a disjoint union, with as many components as the isogeny degree. The roadmap uses the Abel-map connectedness statement instead. None of the source errors above was found copied into a retained roadmap formula.
