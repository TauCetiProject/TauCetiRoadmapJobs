# Review of EulerSystemsAndKolyvaginSystems (pull request #1272 at 3bb0e86)

**Verdict:** needs changes

## R01 (P2) — State the integral comparison on the available native carriers

Location: `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/Suggested.lean:11`, “The integral finite-cokernel and infinite-base classification (§§4.2a–4.2b) additionally need the lattice quotient comparison maps”; compare `README.md:2801`.

Claim: the integral finite-cokernel theorem is omitted as not statable. Its carriers and coefficient map already exist at the pin. It does not need an arithmetic Selmer structure or the joint Galois extension used by §4.2b.

Witness: `TauCeti/RepresentationTheory/Homological/ContCohomology/ExplicitFunctoriality.lean:745` supplies `explicitCoeff1`; Mathlib `Submodule.mkQ` supplies the lattice quotient map. The complete finite-cokernel/maximal-divisible-image signature reproduced below elaborated with only its intended `sorry` warning.

Repair: state §4.2a's integral comparison as a second headline, using the actual quotient of a finite free full lattice, the canonical equivariant quotient map, topological finite generation and arbitrary finite coefficient extension. Include the maximal divisible image assertion. Update the docstring to distinguish this statable result from §4.2b's missing arithmetic extension carrier. The repaired signature permits `G=C₃, T=ℤ₃`, where the comparison is `0 → ℤ/3`, cokernel order 3 and maximal divisible image 0; it also permits `G=ℤ₃`, where the image is all `ℚ₃/ℤ₃` and the cokernel is 0. Thus it does not substitute surjectivity or finite cohomology for finite cokernel.

## R02 (P2) — Import the existing cocycle determinacy and finiteness results

Location: `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/README.md:2801`, “first prove that cocycles into a finite discrete module are determined by their values on finitely many topological generators”.

Claim: this part of the integral comparison proof schedules generic work already present at the pinned Tau Ceti revision. It is neither an arithmetic refinement nor a new coefficient case.

Witness: `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean:610` proves exactly that determinacy, even for a T₁ target. `TopologicallyFinitelyGenerated.lean:39` and `:48` supply `IsTopologicallyFinitelyGenerated.finite_Z1` and `.finite_H1` for finite discrete coefficients.

Repair: replace the instruction to prove determinacy and finite H¹ by these imports, list their full names and files in the exact supplier contracts, and retain the subsequent integral comparison as this roadmap's target. Specialize `.finite_H1` to `W[ϖ]`. For trivial `G=C₃²` and coefficients `𝔽₃`, evaluation on two generators identifies the nine cocycles with `𝔽₃²`; H¹ also has nine elements. The supplied result already handles this instance and the general continuous action.

## R03 (P3) — Complete the local-condition Checks in mathematical prose

Location: `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/README.md:2264`, the two Check bullets following the definition of `ES(T,χ,F)`.

Claim: §3.8 introduces a submodule by E4 and E5, but gives only two Checks, both about derivative normalization/conjugation. Neither distinguishes E5 from norm compatibility. Definitions require at least three discriminating Checks. The second bullet also retains the undeclared Lean-style label `derivative_eigen`, contrary to the prose-only Check rule.

Witness: the two bullets test bottom normalization and a two-prime sign, not E5. The second starts `derivative_eigen (characterisation):`. A model omitting E5 passes both.

Repair: delete the `derivative_eigen (characterisation):` prefix and add a third Check of the local membership condition. In the local linear model `H=Φe₁⊕Φe₂`, with hyperbolic pairing and `F=Φe₁=F⊥`, the localization e₁ is allowed and e₂ is rejected by E5. State explicitly that this tests the membership predicate, not the existence of a particular arithmetic Euler system. This gives values inside/outside F and rejects the plausible wrong definition using norm relations alone.

## Verified sound

This was a full review of both files, all nine layers and **155 numbered target sections**, including unchanged passages. The previous review's five findings were checked first. The worktree is unchanged and the outside-folder diff empty. No sorry'd data, option override, algorithm or good-prime shortcut was found. Arithmetic systems, scalar-image assumptions and Rubin–Stark integrality are explicit hypotheses. 

Previous findings, with the repaired passages:

| Previous finding | Passage at this head | Status and test |
|---|---|---|
| R01, torsion coefficient arrows | `README.md:2284`: “the downward coefficient arrow is multiplication by `M′/M` and the upward arrow is inclusion.” | Repaired. In ℚ₃/ℤ₃, inclusion takes 1/3 to 1/3; downward multiplication takes 1/9 to 1/3. Multiplication upwards would give 0. |
| R02, infinite-base analytic input | `README.md:2818`: “If `G` is topologically finitely generated, prove the integral classification”; §4.2a supplies the rational and integral inputs. | Repaired. For D=ℚ₃/ℤ₃ and scalar 4, `(γ−4)(1/9)=0`, while `(γ−1)(1/9)=1/3`. The character branch allows infinite D. R01–R02 above address newly added implementation boundaries, not the former missing ownership. |
| R03, duplicate group-ring norm | `README.md:9`: “The group-ring norm is the specialization of `TauCeti.subgroupCharSum` at the trivial character and the whole finite group.” | Repaired. For C₂, the supplied norm is 1+σ; the new weighted derivative is σ, and `(σ−1)σ=2−(1+σ)`. |
| R04, square-index/uniform-field overclaim | `README.md:19`: “The classical all-prime square-index application is HeegnerPointEulerSystems §7.13.” | Repaired. §4.13 fixes its data and claims an exponent bound. `(O/ϖ)^m` has exponent 1 and length m, so the missing length conclusion is no longer inferred. The consumer's §7.13 names its separate uniform-square-index gap. |
| R05, undeclared API names | `README.md:243`: “The API bullets and Checks specify mathematical operations and examples in prose”; the worker's undeclared-name scan passes. | Partly repaired: backticked undeclared claims are gone, but `derivative_eigen` still prefixes the Check at line2266. Delete that prefix as specified in R03; retain the sign computation. |

The worker's gate passes every rule, including its targeted build. A fresh permitted targeted build completed successfully with 8982 jobs; direct `lake env lean` on `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/Suggested.lean` exited 0 with only the `sorry` warning. An initially missing cached Mathlib object was restored by that targeted build; it was not a source defect. The fresh dependency check returned:

```text
depcheck: 205 roadmaps, 1477 edges, 0 problem(s)
```

There were no UPWARD, CYCLE or moved lines. All `Needs` lines and supplier contracts were read. The four citation-scanner leads resolve to IntegralIwasawaTheory §12.6’s shared exterior-bidual/Rubin-lattice core.

There is **one actual theorem** in Suggested.lean. The signature scanner's other apparent declaration is the word “and” inside the docstring. An explicit `#check @compactIrreducible_h1_vanish` retained the prime, finite coefficient extension, finite dimension, compactness, Hausdorffness, continuous action, faithfulness and irreducibility hypotheses. Irreducibility excludes V=0; no binder repair is needed. On scratch copies, `simp` stopped at `Z1 G V ≤ B1 G V`; `rfl` and `infer_instance` failed. The nearby library vanishing theorem requires discrete coefficients and trivial action, so it is not a one-lemma proof of this rational theorem. No padding declaration was found.

The headline inventory is: core-rank formulas (§0.10); finite–singular comparison (§1.8); auxiliary-prime selection (§§1.15–1.16,1.21–1.23); Euler unramifiedness, congruence and derivative maps (§§2.3,3.14,3.16–3.19); rational vanishing, integral comparison and infinite-base classification (§§4.2a–4.2b); rational/integral Selmer bounds (§§4.7,4.13,4.17–4.21); rank-one freeness, structure and exact primitivity (§§5.3,5.6,5.10,5.13); Stark freeness, signed regulator and Fitting formulas (§§6.6–6.8); higher derivative, determinant and class-group bounds (§§7.2,7.4–7.6); weak Leopoldt, Iwasawa structure, primitivity equality and integral divisibilities (§§8.25–8.39). The module docstring names the missing arithmetic carriers for these results. R01 is the exception: its nonstatability explanation does not apply to the integral comparison.

The following complete scratch signature, with no new data definition and no option override, elaborated at the pins. It is a statability witness, not a proof of the theorem. The quotient action is explicitly tied to the canonical quotient map; no unrelated free cohomology map is postulated.

```lean
import Mathlib
import TauCeti.RepresentationTheory.Homological.ContCohomology.ExplicitFunctoriality
import TauCeti.Topology.Algebra.Group.Generation
open TauCeti.ContCohomology

theorem integralComparisonProbe
    (p : ℕ) [Fact p.Prime]
    (Φ : Type*) [NormedField Φ] [NormedAlgebra ℚ_[p] Φ] [FiniteDimensional ℚ_[p] Φ]
    (O : Subring Φ) (hO : ∀ x : Φ, x ∈ O ↔ ‖x‖ ≤ 1)
    (G : Type*) [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    [CompactSpace G] [T2Space G] [TotallyDisconnectedSpace G]
    (hG : TauCeti.IsTopologicallyFinitelyGenerated G)
    (V : Type*) [NormedAddCommGroup V] [NormedSpace Φ V] [FiniteDimensional Φ V]
    [DistribMulAction G V] [SMulCommClass G Φ V] [ContinuousSMul G V]
    (L : Submodule O V) [Module.Finite O L] [Module.Free O L]
    (hfull : Submodule.span Φ (L : Set V) = ⊤)
    [DistribMulAction G (V ⧸ L)] [ContinuousSMul G (V ⧸ L)]
    (hq : ∀ (g : G) (v : V), L.mkQ (g • v) = g • L.mkQ v) :
    let q : V →+[G] (V ⧸ L) :=
      { L.mkQ.toAddMonoidHom with map_smul' := hq }
    let I := (explicitCoeff1 G V q L.continuous_mkQ).range
    Finite ((H1 G (V ⧸ L)) ⧸ I) ∧
      (∀ (n : ℕ), n ≠ 0 → Function.Surjective (fun x : I => n • x)) ∧
      (∀ D : AddSubgroup (H1 G (V ⧸ L)),
        (∀ (n : ℕ), n ≠ 0 → Function.Surjective (fun x : D => n • x)) → D ≤ I) := by
  sorry
```

The 15 seeded source targets were checked against legal texts, including theorem numbering, printed pages, hypotheses and the comparison conventions. No additional locator is marked unverified in the README. Versions: Rubin denotes the linked 1999 draft; MR04 the monograph; MR16, CGLS, CGS, KY, Howard, BS16 and BSS18 their cited author/arXiv versions; CH the HCES author version; Sakamoto the published article. Line numbers refer to source-service extractions.

| Seeded target | Text read at locator | Verification |
|---|---|---|
| 0.4 Cartesian local conditions | MR04 lines 341–358, Definition 1.1.4, p.8; §1.3 and §3.7 propagation criteria | Cartesian means the inverse-image condition for the specified quotient injections. It is not automatic for an arbitrary local submodule. The explicit finite/compact propagation hypotheses are retained. |
| 1.14 Anticyclotomic twists/errors | CGLS lines 914–1018, §3.2 and §3.3.1, pp.17–19; CGS lines 1133–1192, §§6.1–6.3, pp.21–22; KY lines 1535–1556, Lemma 3.0.3 and following definition, p.36 | Good ordinary odd p, residual invariants, coefficient degree and the distinct Cα/C₁/C₂ losses agree. Scalar-image finiteness is an explicit premise here; the near-trivial-character loss omits Cα as CGS requires. |
| 2.9 Ring-class Euler systems | CH lines 1435–1473, Definition 7.1, p.29; lines 967–978, Lemma 4.7, p.18; lines 1559ff, Proposition 7.4 | E1–E3 and twists agree after using rational Frobenius in the local operator and its square for K-local evaluation. The exceptional-unit conductor degree is separately supplied. |
| 3.4 Universal derivative invariance | Rubin lines 2910–2930, Lemma IV.4.2, pp.62–63 | The modulus and admissible auxiliary primes are present; invariance is a congruence at that modulus, not an integral invariant claim. |
| 4.2b Possibly infinite base | Rubin lines 6951–7018, Theorem C.2.1 and Corollary C.2.2, pp.161–162 | F/K may be infinite. Both character alternatives and the Γ-action survive. The roadmap adds topological finite generation to the integral claim, addressing the source proof's unsupported assertion. |
| 4.5 Cassels structure | CGLS lines 968–980, Proposition 3.3.2, p.18 | The same ε∈{0,1} and paired finite module occur without replacing the hypothesis by residual irreducibility. Length is kε+2 length(M), not merely the exponent. |
| 4.6 DVR module induction | CGLS lines 1160–1238, Lemmas 3.3.9–3.3.10 and Proposition 3.3.11, pp.22–23 | Both exact sequences, the strict k inequality and shifted elementary-divisor inequalities are retained. The roadmap handles M=0 separately, avoiding the source's impossible index in that case. |
| 4.10 Large localization primes | Rubin lines 3754–3787, Lemma V.2.3, pp.81–82; lines 3984–4024, Lemma V.3.1, pp.87–88 | The scalar/image and two-class losses accompany Chebotarev. The finite avoidance argument is not transplanted to p=2 without its separate branch. |
| 6.7 Rank-r systems/regulator | MR16 lines 934–943, Definition 10.4, p.21, and 1073–1098, Proposition 12.3, pp.24–25; BS16 lines 1585–1639, pp.32–33; BSS18 lines 1284–1323, p.25 | Positive r, corrected prime hypotheses, conductor signs and ordered contractions are explicit. The one- and two-prime calculations below test the sign transport. |
| 6.9 Exterior/bidual comparison | Sakamoto lines 768–822, Lemma 4.13 and Proposition 4.14, pp.2313–2314 | Principal Artinian R, cartesian F, r≥0, an infinite admissible set with a core vertex, and the determinant-local-dual identification are retained. Cₙ is the unsigned evaluation map with these determinant conventions. |
| 7.5 Rank-one specialization | BSS18 lines 1854–1860, Remark 6.5, p.37; lines 2113–2147, Hypothesis 6.11 and Theorem 6.12, pp.41–42 | Rank-one bidual reflexivity and finite-level auxiliary-prime compatibility are needed to recover ordinary systems. A rank-one symbol alone does not eliminate those hypotheses. |
| 8.3 Restricted dual X∞ | Rubin lines 1389–1400, Definition II.3.1, p.28 | The strict condition at p and contragredient action are retained; the true Selmer dual is separate. |
| 8.28 Howard Iwasawa bound | Howard lines 1161–1237, Theorem 2.2.10 and proof, pp.26–28 | Nonzero initial class, self-dual ordinary setting, rank-one free part and two torsion copies are retained. The roadmap uses the correct vertical perturbation T^m+p. |
| 8.30 MR Iwasawa bound/equality | MR04 lines 2625–2632, Theorem 5.3.10, p.62; lines 2800–2847 and following proof, pp.66–68 | Torsionness under nonzero bottom class, divisibility and Λ-primitivity equality are distinguished. The extension to O uses ϖ rather than p in Eisenstein perturbations and converts DVR lengths by residue degrees. |
| 8.33 Rubin error-tolerant bound | Rubin lines 4507–4550, Lemma VII.1.8 and Theorem VII.1.9, p.101 | The exponent is 5r, with r from the localized elementary presentation. The zero-bottom/torsion conventions and the evaluation constant are not suppressed. |

Pinned-library and ownership checks used Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, confirmed by their checkouts. In the following list paths beginning Mathlib/ or TauCeti/ are relative to those libraries.

| Object opened at the pin | Declaration and exact locator | Boundary checked |
|---|---|---|
| Continuous H¹ and cocycles | `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean:485` (`mem_Z1_iff`), `:610` (generator determinacy), `:712` (`H1`), `:969` (discrete trivial-action vanishing) | H¹ is the actual continuous cocycle quotient; continuity is included, discreteness is not built into H¹. The nearby vanishing result does require discreteness. |
| Irreducibility | `Mathlib/RepresentationTheory/Irreducible.lean:29`, `Representation.IsIrreducible` | Simple order of subrepresentations includes nontriviality; zero V is excluded. It does not supply faithfulness. |
| Integral comparison inputs | `TauCeti/RepresentationTheory/Homological/ContCohomology/ExplicitFunctoriality.lean:745`, `explicitCoeff1`; `TopologicallyFinitelyGenerated.lean:39,48`; `TauCeti/Topology/Algebra/Group/Generation.lean:73`; `Mathlib/Topology/Algebra/Module/Basic.lean:329`, `Submodule.continuous_mkQ` | Native quotient, topological finite generation and coefficient H¹ map suffice for R01; R02's generic finiteness is already proved. |
| Norm and action | `TauCeti/Algebra/MonoidAlgebra/SubgroupCharSum.lean:49,117`; `TauCeti/RepresentationTheory/SubgroupCharSum.lean:45` | Trivial character gives the norm without cyclicity or division by the order. |
| Coinduction and discrete maps | `TauCeti/RepresentationTheory/Coinduced.lean:157`; continuous-cohomology `Coinduced.lean:104`, `Shapiro/Basic.lean:415`, `Corestriction/Basic.lean:467`, `DeltaNaturality.lean:354` | The supplied discrete Shapiro/corestriction comparison is not silently a compact-coefficient result. |
| Frobenius/self-injective algebra | `TauCeti/Algebra/Algebra/Frobenius/Basic.lean:188,195,367`; `TauCeti/Algebra/Module/ZMod/Injective.lean:50` | Finite-dimensional field-algebra hypotheses and nonzero modulus are retained; mixed-characteristic additive trace comparison is additional arithmetic work. |
| Modular p-group representations | `TauCeti/RepresentationTheory/Unipotent/PowerOrder.lean:166,171` | The triviality and rank-one statements are imported under their characteristic and finite-dimensional hypotheses. |
| Semisimple algebra/Morita | `TauCeti/RingTheory/Semisimple/Wedderburn/Presentation.lean:323`; `MatrixDivisionRing.lean:200`; `TauCeti/RingTheory/Morita/Corner.lean:388,440` | Finite presentation and opposite centralizer are algebraic; the corner equivalence assumes fullness. Local integral lattice normal forms remain new. |
| Fitting ideals | `TauCeti/RingTheory/FittingIdeal/Basic.lean:360,418`; `BaseChange.lean:134` | Monotonicity, cyclic quotient and coefficient change are imported, not new system-level arithmetic bounds. |
| Euler polynomials | `Mathlib/LinearAlgebra/Charpoly/Basic.lean:72,89`; `Mathlib/LinearAlgebra/Matrix/Charpoly/Coeff.lean:290,292`; `Mathlib/Algebra/Polynomial/Div.lean:616,623` | Reverse characteristic polynomial is det(1−XA); linear factor division is monic. Distinct roots over a quotient ring need unit differences to multiply factors. |

Cross-roadmap citations were resolved against main for existing roadmaps and supplied open heads for new ones. The principal resolved interfaces are below; the line numbers exclude the `roadmaps show` wrapper. 

| Roadmap/file | Resolved sections and lines | What is consumed |
|---|---|---|
| `TauCetiRoadmap/IntegralIwasawaTheory/README.md` | §12.6, line1688 | Shared exterior bidual/evaluation, full integral CM unit lattice before minus projection, rational order-map inverse and its place-change API. |
| `TauCetiRoadmap/ArithmeticGaloisRepresentations/README.md` | §5.8, line3346, “Compact subgroup charts” at line3355 | Closed-subgroup analytic structure and normal open uniform subgroup. The target exists inside a section headed “Haar measure on open matrix groups”. |
| `TauCetiRoadmap/ArithmeticGaloisDuality/README.md` | R02.1.2 line599, R02.1.3 line700, R02.2.3 line1401, R02.4.3 line3436, D7.3 line5073 (compact Shapiro within it), D7.5 line5576, D7.7.1 line6232, D7.7.2 line6354, R02.5.1 line6600 | Continuous limits, rational/lattice/discrete sequence, compact restriction, Poitou–Tate, compact support, dual local conditions and Greenberg–Wiles. The number-field classification of §4.2b remains owned here. |
| `TauCetiRoadmap/SelmerIwasawaCohomology/README.md` | §§2.1–2.19, lines343–821; §2.25 line954; §3.0 line1329; §3.11 line1582; §3.13 line1619; §4.18 line2165; §4.25 line2310 | Propagation, saturation, duality, Iwasawa coordinates/control and local finiteness. §4.25 retains both integral torsion losses and its two rational H⁰ vanishings. |
| `TauCetiRoadmap/DerivedModuleAlgebra/README.md` | §1.T.1 line1403, §1.M.1 line2242 | Module towers/Milnor sequence and Matlis duality with an essential injective hull. |
| `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md` | §§1.7,4.1–4.6; §4.6 line2710; §5.2 line3367; Layer6 | Completed algebra, one-variable structure, characteristic divisors/semilinear transport, topological Nakayama and character rings; no arbitrary character-quotient Gorenstein theorem. |
| `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md` | §§7.4,7.21,7.56, lines14393,14867,15757 | Order carrier, maximality and existence with nondegenerate regular trace; not the new rectangular local-lattice argument. |
| `TauCetiRoadmap/ClassFieldTheory/README.md` | Layers5,7,12,13; Layers12/13 at lines1724/1799 | Local pairing/reciprocity and global/ray/ring-class correspondence. |
| `TauCetiRoadmap/Chebotarev/README.md` | Layer10, line410 | Positive Dirichlet density for a prescribed conjugacy class, allowing finite exclusions. |
| `TauCetiRoadmap/ProfiniteCohomology/README.md` | Layers1–3 and Layer11 line1739 | Continuous/discrete comparison and cdₚ(Ẑ)=1 for discrete torsion coefficients; compact passage uses its separate limit inputs. |
| `TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md` | H1.4, line43 | Residue-unit exact sequence and exceptional-unit conductor indices. |
| `Completed/GlobalNumberFields/README.md` | Layer2, line279 | Ray-class carriers and unit/residue sequence, retained at the main version rather than its open revision. |
| `TauCetiRoadmap/EllipticCurves/README.md` | Layers2/7, lines647/1262 | Tate module, Weil pairing and classical Kummer/Selmer dictionary. |
| `TauCetiRoadmap/HeegnerPointEulerSystems/README.md` | §7.13, line1297 | Downstream ownership of the uniform classical square-index application, with its explicit gap; not a supplier edge here. |

Object searches used `roadmaps grep` and main/open/package files. IntegralIwasawaTheory owns the exterior bidual. SelmerIwasawaCohomologyPartII consumes the exponents/Frobenius detection; HeegnerPointEulerSystems consumes derivatives and builds arithmetic points. EulerSystemsCyclotomicMainConjecture §§F.3–F.8 explicitly imports this roadmap's generic constructions and supplies cyclotomic inputs. Those are not earlier alternative owners. No duplicate fully qualified name for the one retained theorem was found. The new duplication discovered at the library pin is R02. Ownership of unrelated open work whose files were not supplied was not independently audited.

The adversarial table covers all 155 numbered targets, with extra rows for §4.2a and the supplier formulas. Computations test conventions and boundaries, not general proofs. Rows without a finding require no change on the tested instance.

| Target | Instance and computed values on the two sides | Result/change |
|---|---|---|
| Supplier propagation/duality | Strict L=0 has annihilator the whole dual. Relaxed L=H¹ has quotient-propagated annihilator ker(H¹(T*[I])→H¹(T*)), which need not be 0. | Exact inverse-image rule retained. |
| Supplier Greenberg–Wiles | ℚ, μₚ, odd p, relaxed at p: left dimension difference 1−0=1; right 0−1−((0−2)+(0−0))=1. | Ordinary archimedean H⁰ convention agrees. |
| 0.1 Selmer triples/conductors | P=∅ gives N(P)={1}; P={q,r} gives {1,q,r,qr}, cardinalities 1 and 4. An infinite residue field fails the coefficient contract. | Empty product is 1. |
| 0.2 Self-injective coefficients/trace | R=𝔽₂[ε]/ε² has socle dimension1; the ε-coefficient functional has pairing matrix [[0,1],[1,0]], determinant1. For k[x,y]/(x,y)² the socle has dimension2. | The second ring is excluded; self-injectivity is substantive. |
| 0.3 Quotient category | ℤ/9→ℤ/9 by ×3 has image 3R, order3. Its source has order9, so it is not one of the specified quotient injections. | Arbitrary module maps are not accepted as injections. |
| 0.4 Cartesian conditions | L=3R⊂R=ℤ/9; propagated L on R/3R is 0. Under R/3R→R by ×3, the inverse image of L is all ℤ/3, not 0. | Detects a noncartesian condition. |
| 0.5 Linear length growth | For trivial unramified T over ℤ/27, H⁰ and H¹_ur both have lengths1,2,3 at depths1,2,3, giving differences0,0,0. Strict local condition gives differences1,2,3=i·1. | No unsigned negative length is introduced. |
| 0.6 Quotient/torsion Selmer maps | Multiplication by3 identifies (ℤ/9)/3 with (ℤ/9)[3]={0,3,6}. Inclusion of this torsion submodule is not an isomorphism onto all ℤ/9. | Required H⁰/control conditions remain necessary. |
| 0.7 Canonical/unramified | For ℚₚ(1), local units give rank1 in the lattice Kummer group, while the full local group has rank2. For trivial R=𝔽ₚ[[X]] at q≡1 mod p, unramified H¹ is R inside R². | Distinguishes full, finite and unramified conditions. |
| 0.8 Core rank | Lengths (5,3) give signed difference2; at coefficient length2 the normalized rank is1. Reversing them gives −2, whose nonnegative truncation is0. | Signed Euler difference is not confused with truncation. |
| 0.9 Modulus independence | Core rank1 at length2 gives length difference2; reduction to length1 gives difference1; division by the respective lengths gives1 in both cases. | Cartesian hypothesis is retained. |
| 0.10 Canonical/unramified formulas | Over ℚ an even nonexceptional unit twist has core rank1; the odd twist has rank0. The elliptic canonical/classical pair gives1/0. | Positive rank is a separate hypothesis downstream. |
| 1.1 Auxiliary fields | ℚ, p=3: ray mod7 has 3-primary quotient order3, ray mod5 order1; mod7·13 gives order9. | The trivial ray extension is included. |
| 1.2 Finite/singular groups | Trivial 𝔽ₚ and p∣q−1 give one-dimensional finite and singular groups. Discrete ℚ gives continuous Hom(Ẑ,ℚ)=0 but Frobenius coinvariants ℚ. | Discrete ℚ is excluded by the coefficient contract. |
| 1.3 Exponents/depth | In (O/π³)², π²e₁ has exponent1 and divisibility2; 0 has exponent0 and unbounded module divisibility∞; the bounded system index at depth3 is separately defined to be3. | Exponent and divisibility are distinct. |
| 1.4 Conductor ideals/tensors | p=2, ℓ=7: v₂(ℓ−1)=1 but the 2-primary ray degree over ℚ is1. At conductor1 the tame tensor is ℤ and I₁=0. | Cyclotomic degree is not replaced by ray degree. |
| 1.5 Transverse condition | At ℚ₁₉ with ℤ/9 coefficients, a degree3 tame extension gives singular image order3, whereas H¹_s has order9. | Insufficient extension degree cannot give an isomorphism. |
| 1.6 Evaluation saturation | A stable primitive rank-one submodule Oe₁⊂O² omits e₂ despite meeting O²∖πO². Its O-span has rank1, not2. | Irreducibility/saturation input rules out this model. |
| 1.7 Prime filtrations | If p has O-valuation2 and M=π³, then p does not kill O/M (valuation2<3), but p² does (4≥3). | Cyclotomic congruence uses the necessary integer depth. |
| 1.8 Finite–singular comparison | P(X)=1−X gives Q(1)=−1 under P=(X−1)Q. For Fr=diag(1,2) over 𝔽₅, Q(1)=1; for Fr=I₂ it is0. | One fixed direction is essential; the two-fixed-direction model is excluded. |
| 1.9 Local modifications | Strict condition0 has relaxed dual H¹; relaxed H¹ has strict dual0. Interchanging a and b twice returns the original conditions. | The extra dyadic transverse hypothesis is kept. |
| 1.10 Transverse self-duality | ℚ₃, p=2: the transverse Kummer line generated by −3 has self-pairing (−3,−3)₃=−1, not1. At q=5, (q−1)/2=2 kills ℤ/2. | First example excluded; second satisfies the displayed dyadic criterion. |
| 1.11 Abundance constants | The stated combinatorial function has f(0)=1, f(1)=1, f(2)=4, f(3)=10. In a quadratic sign model 1+εb is2 or0. | Opposite signs do not produce abundance. |
| 1.12 MR04 hypotheses | T=ℤₚ(1) has residual dual ℤ/p with invariant dimension1. | Its exceptional trivial-dual case fails the vanishing record. |
| 1.13 MR16 hypotheses | For the 𝔽₅-character of ℚ(√2), q=11 has Fr=−1, so coinvariants are0 despite the cyclotomic condition. Four lines in 𝔽₄² cover at most13 of16 vectors. | Enlarged splitting field and prime-field detection are necessary. |
| 1.14 Twist errors | α(γ)=ζₚ gives vₚ(ζₚ−1)=1/(p−1), and coefficient degree p−1 gives integral loss1. α=1 uses Cα=0; α=1+p^m has Cα=m. | Values agree. Extending a rational Tate module to degree-two O leaves scalar Lie dimension1 versus2 for O×; the roadmap only assumes a nontrivial scalar. |
| 1.15 Abundant tuples | In the stated ℤ₅² example at depth3, norm valuation2 gives H¹(C₂₅,ℤ/125)=5A/5A=0; f(0,1)=25≠0, but f vanishes on25ℤ₅². | Original restriction injectivity does not imply the induced one; the extra hypothesis detects it. |
| 1.16 Residual two-class detection | Two distinct bad hyperplanes in 𝔽₅² contain at most9 of25 vectors; 16 remain. A chosen local eigenspace has dimension1, so two nonzero local images can be dependent. | Simultaneous nonvanishing is not independence. |
| 1.17 Hypothesis implications | Rank-one trivial T has T/(1−1)T=T, rank1, but residual H⁰ has dimension1. | Rank-one coinvariants alone do not give the full record. |
| 1.18 Finite-order unit twists | Over ℚ, nonexceptional even χ gives the unit/core-rank count1; odd χ gives0. | Parity is retained. |
| 1.19 Elliptic Tate module | Rank2 odd Tate representation over ℚ has canonical core rank1; the self-dual classical Selmer structure has Euler difference0. | The two Selmer structures are not identified. |
| 1.20 Exceptional characters | Hom_cts(1+pℤₚ,𝔽ₚ)≅𝔽ₚ for odd p, cardinality p rather than1. | The trivial/Teichmüller exceptions are real. |
| 1.21 Simultaneous localization | Four bad hyperplanes have union proportion at most4/5 over 𝔽₅. Two distinct lines in 𝔽₂² have union size3, leaving1 vector. | The count is made over the actual scalar field. |
| 1.22 Prime selection with errors | A value of order exponent k loses at most d under multiplication by π^d: k=5,d=2 gives exponent3; k=1,d=2 gives0. | Truncation at0 is required. |
| 1.23 Prescribed kernels | Over k=𝔽₉ the prime-field scalar line has3 elements, while the k-line has9. | An 𝔽₃-span cannot be called the full k-span without the stated algebra input. |
| 2.1 Euler polynomials | Rank0 gives det(1−XA)=1. For zero A of rank2, det(XI−A)=X² but det(1−XA)=1. A scalar q gives1−qX. | Reverse-polynomial and dual conventions distinguished. |
| 2.2 Euler systems | Zero family satisfies 0=P·0. For an identity extension, corestriction and the empty Euler-factor product are both identity, so the relation is c=c. | Norm/field data determine the system. |
| 2.3 Unramifiedness | A torsion-free inertia value divisible by p^a for every a is0; a class of fixed order p^b cannot justify the same assertion without the source's coefficient/rigidity argument. | The stipulated hypotheses are retained. |
| 2.4 Conductor presentations | A trivial ray extension has relative degree1 and its corestriction is identity. The empty conductor gives the bottom component c₁. | Redundant field labels do not create a second norm. |
| 2.5 Finite twists | χ=1 gives identity on coefficients and classes. For χ of order3, twisting by χ then χ⁻¹ multiplies scalars by1. | Inverse character transport agrees. |
| 2.6 Euler-factor replacement | f=1−X has reciprocal X−1, not1−X. At X=0 these are −1 and1. | The polynomial direction/sign is tested. |
| 2.7 Universal system | For Γ=C₃ the regular module has O-rank3 and O[Γ]-rank1, not O-rank1. | Freeness uses the correct coefficient ring. |
| 2.8 Rigidity variants | At q=17 and eχ=9, the proposed naive fraction16/51 has v₃=−1. For a trivial ray edge the comparison is identity, while scalar formulas can give1/2 versus1/4. | Integral divided operators and the trivial-edge branch are necessary. |
| 2.9 Ring-class systems | K=ℚ(i), c=1, inert ℓ=3: conductor degree (3+1)/2=2, not4. J=diag(1,−1) has J²=I, so using squared Frobenius loses the sign. | Exceptional units and rational Frobenius retained. |
| 3.1 Weighted derivative | C₂: D=σ, N=1+σ; (σ−1)D=1−σ=2−N. For order1, D=0 and 1−N=0. | Norm is imported; derivative is new. |
| 3.2 Coinduced lifts | Connecting cocycle at a lift t is γt−t; for an invariant lift it is0. Identity field change gives the same lift and same cocycle. | Sign and choice-independence agree. |
| 3.3 Systems and limits | For a double trivial coefficient at q, P=(1−X)² gives Q(1)=0, whereas a single trivial coefficient has Q(1)=−1. | Arbitrary direct sums do not preserve the comparison without the intertwining law. |
| 3.4 Universal derivative | In a C₃ edge modulo3, (σ−1)D=3−N reduces to−N; applying an edge with norm0 gives0, hence invariance. Modulo9 the term3 need not vanish. | Modulus/admissibility are essential. |
| 3.5 Bounded-kernel descent | For f:ℤ→ℤ, f(x)=5x, c=5, a=5, choose y=5 with f(y)=ac=25; selected a y=25 maps to125=a²c. | The extra annihilator factor is not omitted. |
| 3.6 Tower restriction | A map with kernel/cokernel killed by3 can have three preimages of0; reduction ℤ/9→ℤ/3 has precisely these. | Bounded control does not imply unique descent. |
| 3.7 Frobenius local operators | On J=diag(1,−1), J−1 has eigenvalues0,−2 and J+1 has2,0. Squaring J givesI and destroys this distinction. | Divided operator relation is not replaced by a scalar equality. |
| 3.8 Local Euler-system conditions | Bottom derivative is a³c; two auxiliary primes give sign (−1)²=1. In H=Φ², F=Φe₁, e₁∈F and e₂∉F. | R03: add the latter negative membership Check. |
| 3.9 Derivative coefficients | For M=3,M′=9, W₃→W₉ takes1/3 to1/3; W₉→W₃ takes1/9 to1/3. In quotient coordinates the first is ×3. | Previous R01 repaired. |
| 3.9a Full cyclotomic derivative | For C₄, D₄−(1+σ²)D₂=2σ²+2σ³ with D₂=σ; it is0 modulo2 but not modulo4. | Full tame degree/modulus condition cannot be dropped. |
| 3.10 Unramified derivative classes | At a good unramified place the inertia restriction is0, so its prescribed annihilator is1. At a bad place a nonzero torsion image may require π^b. | Good and bad local cases are both present. |
| 3.11 Lifted telescoping | For m=1, D=0 and the lifted right side mσ^m−N=σ−σ=0. For m=2, (σ−1)σ=σ²−σ=2σ²−(σ+σ²). | σ^m is not silently set equal to1 in inertia. |
| 3.12 Local lifts | For finite free compact X and Ẑ, finite-level H¹ is finite, hence lim¹=0; H²(Ẑ,X)=0 and the obstruction to reduction is0. | The compact conclusion uses the finite-level limit input. |
| 3.13 Local derivative behavior | Multiplication by Q(1)=−1 on ℤ/3 preserves order3; replacing Q by0 would give order1. | Comparison cannot discard the polynomial unit. |
| 3.14 Kolyvagin congruence | With ψ(Fr)=2, the inverse-Frobenius factor is1/2, while using Fr² gives1/4. They differ by1/4 in characteristic0. | Character/Frobenius transport distinguishes them. |
| 3.15 Weak systems/tame tensors | For 𝔽₉[C₃], augmentation quotient I/I² has dimension1; for 𝔽₉[C₃²] it has dimension2. | The cyclic tame factor is essential. |
| 3.16 Semidirect derivatives | In an S₃ model, conjugation takes σ toσ⁻¹; the χ-twisted scalar Fr=−1 makes1−Fr=2, while1−Fr²=0. | The ordinary Euler presentation cannot be reused without its new semidirect relations. |
| 3.17 Corrected system map | At two primes, correction subtracts ab from the finite component ab, leaving0. Omitting it leaves ab, nonzero for a=b=1. | Edge relation tests the correction. |
| 3.18 Multiplicative example | p=2,q=3: bottom unit2 and the quotient normalization1/2 are distinct in ℚ₂×. | The example retains the actual integral class and normalization. |
| 3.19 Finite-depth variant | At fixed modulus3², coefficients congruent modulo9 give identical derivatives; congruence only modulo3 leaves the difference3 visible modulo9. | Fixed depth is not all depths. |
| 3.20 Two-prime correction | For a=b=1, ordered products ab=ba=1, and the alternating correction contributes−1, cancelling1. | Permuting primes must transport the sign. |
| 4.1 Selmer graph/sheaf | P=∅ gives one vertex; P={q,r} gives four vertices and a square. An edge with identity transition rejects endpoint values(1,0). | Arbitrary vertex values are not a section. |
| 4.2 Edge lengths | A dimension-one local change increases the Selmer dimension by δ∈{0,1} and decreases its dual by1−δ; the Euler difference increases by1 in both cases: δ+(1−δ)=1. | Both exact-sequence directions agree. |
| 4.2a Rational vanishing | G=1 gives H¹=0. Faithful scalars1+3ℤ₃ give ℚ₃/3ℚ₃=0; abstract ℤ₃ acting trivially gives H¹=ℚ₃. At p=2, scalars1+4ℤ₂ give ℚ₂/4ℚ₂=0. | Faithfulness matters; p=2 is included. |
| 4.2a Integral comparison | G=C₃,T=ℤ₃: source0,targetℤ/3,cokernel order3,image0. G=ℤ₃: sourceℚ₃,targetℚ₃/ℤ₃,cokernel0,image all. For ∏C₃ the cokernel contains ⊕ℤ/3. | R01: native signature missing. R02: finite-coefficient input is imported. |
| 4.2b Infinite-base classification | Scalar4 on D=ℚ₃/ℤ₃: (γ−4)(1/9)=0 but (γ−1)(1/9)=1/3. Dual scalar is1/4. For Γ=1, γ−1=0, so this is not a nonzero annihilator. | Character branch and d≥1 restriction are necessary. |
| 4.3 Rubin index/errors | In O⊕O/π², c=(π³,1) has torsion-free index3; c=(0,1) has index∞. A unipotent off-diagonal π^a gives coinvariants O⊕O/π^a. | Torsion is removed before computing the bottom index. |
| 4.4 Bounded localization | A=[[π,1],[0,π]], C=[[π,−1],[0,π]] satisfy AC=π²I. One π does not suffice for the off-diagonal integral inverse. | Both torsion losses are retained. |
| 4.5 Cassels structure | R=O/π³ and length(M)=1: length(R^ε⊕M⊕M)=3ε+2, giving2 or5 for ε=0 or1. | Duplicated torsion and parity agree. |
| 4.6 Module induction | M=M′=X=0, a=a′=b=b′=0,k=1 gives exact identity maps R/π→R/π. There is no integer1≤i₀≤0. | Roadmap's separate zero case fixes the source boundary; no roadmap change. |
| 4.7 Rational descent | A nonzero bottom class c spans a line of dimension1; c=0 spans dimension0 and cannot give the same rank conclusion. Multiplication by nonzero a³ preserves nonzeroness over Φ. | Nonzero leading class and rational scalar inversion are substantive. |
| 4.8 Local maximal orders | In a ramified quaternion division algebra, j²=p gives normalized valuation v(j)=1/2. A 2×3 rectangular lattice has opposite multiplicity3, not a division-ring centralizer. | Uses division uniformizers and both multiplicities. |
| 4.9 Separated pairing | Over ℤ/9 the kernel3R has order3; identity does not kill it, but multiplication by3 does. | A bounded annihilator, not arbitrary extension alone, descends the functional. |
| 4.10 Large localization | Two bad affine hyperplanes have union at most2/3 of a vector space over 𝔽₃; at p=2 the analogous bound is1 and proves nothing. | The small-prime branch is not discarded. |
| 4.11 Locally cyclic sheaves | A cycle with monodromy−1 over 𝔽₃ has global sections x=−x, hence x=0. Constant identity monodromy permits all3 values and primitive sections. | Local cyclicity alone does not imply a primitive global section. |
| 4.12 Core/leading vertices | With residual Selmer dimensions(1,0), total dimension1 gives a core vertex. Dimensions(1,1) give total2 despite a one-dimensional first term. | Both dual and primal conditions are needed. |
| 4.13 CM exponent bound | M_m=(O/π)^m has exponent1 and lengths1,2,3 at m=1,2,3. With g generators and exponent C, (O/π^C)^g has length gC. | No square-index/uniform-field inference remains. |
| 4.14 Explicit exponent | With s=2,e=1 the displayed bound s+3e equals5; zero error gives2. | Exponent loss is additive, not a doubled module length. |
| 4.15 Leading vertices/submodule | A k-line with a prescribed nonzero vector has one-dimensional span; the zero vector spans0 and cannot detect that line. Over 𝔽₉ the underlying prime-field dimensions are2 and0. | Scalar-field and nonzero hypotheses retained. |
| 4.16 Stub modules | R=O/π², stub π^λR: for λ=0,1,2 its lengths are2,1,0. | Vanishing stub at the boundary is allowed. |
| 4.17 Rubin error bound | For a two-dimensional local target and a rank-one image, the quotient has dimension1; the annihilator condition costs that missing direction rather than identifying the image with the whole target. | The local loss is retained. |
| 4.18 Self-dual errors | A paired finite module M⊕M with length(M)=3 has length6. Bounding one half by3 gives total bound6, not3. | Factor2 is retained. |
| 4.19 Near-trivial characters | α=1+p^m gives Cα=m, which grows with m; the CGS loss r(C₁+C₂) is constant when those inputs and r are fixed. | The two error theorems are not conflated. |
| 4.20 Kolyvagin bound | A primitive rank-one generator with initial index s becomes index s+1 after multiplying byπ; the Selmer module is unchanged. The zero system has index∞. | Equality needs primitivity; nonzero bottom class needs its own hypothesis. |
| 4.21 Finite-depth bound | If b=m−a−s≥0, then the expression2m−2b−s simplifies to2a+s. At a=s=0, b=m and the bound is0. | Truncation and range hypotheses prevent negative lengths. |
| 5.1 Divisibility profiles | Over O/π³, zero and an empty conductor-size level have bounded index3; over O the empty-level infimum is∞. A unit vector has index0. | Finite and limiting conventions agree. |
| 5.2 Howard self-duality | For inert-prime residual T=k², K-local Fr=I has two fixed directions; the MR04 polynomial comparison Q(1)=0 is not Howard's invertible comparison. | Separate local interface retained. |
| 5.3 Rank-one freeness | With R=ℤ/25 and ℓ=61, ℓ−1=60 has valuation1 rather than2; an ideal(5) is not0 in R. | Full-depth auxiliary-prime hypothesis cannot be replaced by residual depth. |
| 5.4 Constructed dual Selmer | A weak system can have κ₁=0 but a nonzero higher component. Multiplying a primitive component1 byπ gives π≠0 over O, even if the bottom component vanishes. | Zero bottom value does not mean zero system. |
| 5.5 Generalized Cassels | R length3, ε=1, length(M)=1 gives length5 and odd parity; ε=0 gives2 and even parity. | Same parity as ε. |
| 5.6 Dual structure | Scaling byπ changes every finite nonzero divisibility index by1 before truncation; it does not change elementary divisors of the fixed dual Selmer module. | Primitive normalization is essential. |
| 5.7 Self-dual stubs | k=3,λ=1,a=b=δ=1 gives λ′=1+3−1−1−1=1 in the diamond formula; the squared quotient has length2δ=2. | Stable index is not equality at every finite level. |
| 5.8 Simultaneous eigenclasses | Over 𝔽₅, four bad hyperplanes occupy at most4/5; dimensions(1,1) total2 do not make a core vertex. | Simultaneous nonzero images and core-vertex conditions remain separate. |
| 5.9 Scaling/zero bottom | πκ≠0 over a torsion-free system module when κ≠0, but its reduction moduloπ is0. | Nonzero is not primitive. |
| 5.10 Self-dual bound | length(M)=2, initial index3 gives2≤3 and total finite length4≤6. A primitive equality case has index2 and total length4. | Correct half-length convention. |
| 5.11 Core rigidity | In O/π², multiplication byπ is nonzero but kills the socle. Lines generated by(1,π) and(1,−π) differ by2π when p is odd. | Residual agreement alone does not identify the integral lines. |
| 5.12 Divisibility profile | A generator scaled byπ² has truncated indices1,2,2 at depths1,2,3. | Stable defect2 is not recovered at depth1. |
| 5.13 Exact length | Initial index5 and system defect2 give half-length3 and total length6. Scaling byπ changes the two indices to6 and3, leaving6 unchanged. | The defect subtraction passes the scaling test. |
| 6.1 Exterior bidual | For R³, degree2 exterior power has rank3; degree0 is R. Over ℤ, a torsion module has dual0 and positive-degree bidual0. | General bidual is not automatically the original module. |
| 6.2 Higher-rank hypotheses | Trivial residual k has invariant dimension1 and fails H⁰ vanishing. A scalar τ=2 over 𝔽₅ has coinvariants0, not rank1. | Both exclusions are tested. |
| 6.3 Contractions | e₁* contracts e₁∧e₂ to e₂; reversing the ordered contraction gives−e₂. A zero functional has full kernel and is not a chosen rank-one quotient map. | Functional-first sign and surjectivity retained. |
| 6.4 Modified units/Rubin lattice | In ℚ(i), a root-killing modulus above3 excludes i since i≠1 modulo3. For x=i(2+i)/(2−i), valuations at the two primes above5 are1 and−1, and x≡1 modulo3. | Both root killing and prescribed finite support matter. |
| 6.5 Stark systems | For core rank1 and one relaxed prime, a free rank2 Selmer module has degree2 determinant rank1. A rank3 module has degree2 rank3. | The correct rank condition determines the determinant line. |
| 6.6 Stark Fitting formula | For O/π³⊕O/π, Fitt₀=(π⁴), Fitt₁=(π), Fitt₂=O. Multiplying a system byπ multiplies its value ideals byπ. | Equality is attached to a basis. |
| 6.7 Signed regulator | For ε=e₁∧e₂, v=e₁*, φ=e₂*, the signed one-prime regulator is e₁ and its edge evaluation1; the unsigned functional-first contraction gives−e₁ and edge−1. | Conductor sign is necessary; r=0 excluded here. |
| 6.8 Regulator isomorphism | For a basis system with value ideal(π³), scaling byπ gives(π⁴)⊂(π³). Under an isomorphism both sides scale identically. | General elements yield inclusion; bases yield the Fitting equality. |
| 6.9 Exterior/bidual comparison | With h=e₁*, ε=e₁∧e₂, both routes around the contraction/evaluation square give ξ(e₂), evaluating to1 on e₂*. Two ordered contractions reverse sign on swapping order. | Unsigned Cₙ is consistent with the determinant convention. |
| 7.1 Higher Euler systems | A degree3 norm relation with a=b=1 and factor3 reads3·1=3·1; replacing a by0 gives0≠3. At rank0 the exterior carrier is R, but rank-positive descent is not inferred. | Norm relation determines more than a family of elements. |
| 7.2 Higher derivative | The empty permutation term is1; the one-prime correction determinant is0; for two primes with off-diagonal entries a,b it is−ab. For a=b=1 this is−1. | Ordered correction and integral norm transfer retained. |
| 7.3 Rubin–Brumer–Stark element | Θ=0 has inverse-image element0 under the rational order isomorphism. For G=C₂, the minus projector(1−c)/2 is not integral at2. | Rational existence is separate from dyadic integrality. |
| 7.4 Higher-rank Fitting control | For a cyclic dual module O/π³ and Euler valueπ⁴, (π⁴)⊂(π³); valuations give3≤4. | Ideal containment direction agrees with the length bound. |
| 7.5 Rank-one specialization | On a finite free rank-one module, degree1 bidual evaluation is identity. The containment(π⁴)⊂(π³) becomes the rank-one inequality3≤4, not4≤3. | Reflexivity and coefficient/prime comparisons retained. |
| 7.5a Determinantal systems | For the ℚ Tate example, ordinary compact support retains the archimedean ℤₚ contribution; dropping it can change degree-one cohomology fromℤₚ to0. A rank-one determinant map with imageπO is not surjective. | Neither quasi-isomorphism nor generation follows from rank alone. |
| 7.6 Rubin–Stark class bounds | For O/π³⊕O/π, successive Fitting valuations are4,1,0; using only the exponent3 would miss length4. | Conditional regulator input and full Fitting sequence retained. |
| 7.7 Archimedean/minus dictionaries | At odd p, an even character has χ(c)=1, while the minus eigenspace has c=−1; 1≠−1. | Finite-place minus units do not replace archimedean Rubin–Stark units. |
| 8.1 Towers/decomposition | For K=ℚ(√−7), p=3, both3 and5 are inert. In its anticyclotomic ℤ₃ tower D₅=1, while D₃ is infinite: otherwise the tower would be everywhere unramified. | The no-complete-splitting hypothesis is not automatic for every ℤₚ tower. |
| 8.2 Rubin tower hypotheses | [[1,1],[0,1]]−I has rank1 and free rank-one coinvariants; the identity on rank2 has coinvariant rank2. | A nontrivial unipotent is not interchangeable with identity. |
| 8.3 Restricted X∞ | In the cyclotomic ℚ Tate example the restricted unramified class module is0 and its characteristic ideal is the unit ideal. Scalar4 on a discrete character module gives scalar1/4 on its contragredient dual. | Restricted and true Selmer groups/action conventions remain distinct. |
| 8.4 Norm-compatible class | A degree3 field transition has res∘cor equal to a three-term group norm. Under trivial action this is×3; an identity transition is×1. | The inverse system uses corestriction. |
| 8.5 Λ-adic coefficients | For the Tate example, augmentation control can have cokernelℤₚ; reduction modulo(p,T) then gives𝔽ₚ. H²[m] can be0 while H²/m is𝔽ₚ. | Torsion subgroup and quotient correction are distinguished. |
| 8.6 Field hypothesis | ℚ(∛2)/ℚ has degree3 and is not Galois; it is not a finite layer of an abelian ℤₚ^d extension. The identity field layer has degree1 and is allowed. | General field extensions are not silently tower levels. |
| 8.7 Λ-index | For x=(p,T)∈Λ², evaluation values generate(p,T), a proper nonprincipal ideal. Its height-one gcd is1. | The full evaluation ideal is not the principal index. |
| 8.8 True Selmer/local term | Full local finite condition gives singular quotient0. A zero condition gives the full local module. A line O·[1] in a nontrivial regular group representation is moved by a nonidentity group element. | Equivariance cannot be omitted from the chosen condition. |
| 8.9 Infinite twists | If γ acts by u=1+p, the annihilator is(γ−u); specializing γ=1 gives multiplication by1−u=−p, not0. | A nontrivial twist does not preserve the untwisted augmentation quotient. |
| 8.10 Evaluation constant | Unipotent off-diagonalπ^m gives a torsion coinvariant O/π^m of cardinality #k^m; m=0 gives none and constant1. | The evaluation loss is not automatically a unit. |
| 8.11 Split-prime condition | A quadratic ramified character with inertia−1 has invariants0 over odd residue characteristic, whereas the trivial character has invariant dimension1. | Split places still require the stated local condition. |
| 8.12 Λ-systems | At p=3, ℓ=109 has ℓ−1=108 divisible by27. An edge with identity comparison rejects local values0 and1 because0≠1. | Prime depth and actual edge equations both matter. |
| 8.13 Exceptional primes | For H²=ℤₚ as an augmentation module, T kills it. For H²=Λ, H²[P]=0 but H²/P is infinite for height-one P. | Exceptional torsion primes are not defined by finiteness of every quotient. |
| 8.14 Twist transport | Twρ(γ−ρ(γ)u)=ρ(γ)(γ−u). For ρ(γ)=u⁻¹, the twisted module has root1 while the original has rootu. | The inverse automorphism direction agrees with characteristic-ideal transport. |
| 8.15 Tower restriction | A dual character to u has valueu⁻¹, notu. A lattice with u=1+p has no fixed vector, but its discrete quotient has p-torsion fixed vectors. | Lattice H⁰ vanishing does not eliminate discrete invariants. |
| 8.16 Iwasawa Poitou–Tate | If the singular local module is0, its image is0 and the two Selmer duals in the comparison coincide. | The exact sequence has the correct limiting boundary. |
| 8.17 Finite coefficient derivatives | p=2,ℓ=5: full cyclotomic degree4 differs from ray degree2. For unramified quadratic O/ℤ₃, Λ/(3,Fr₇−1)=𝔽₉ has characteristic3 and9 elements, not a cyclic integer quotient. | Both full tame fields and O-cyclic coefficients are needed. |
| 8.18 Specialization lengths | Λ/(T^a,T+π^m) has O-length ma; Λ/(π^a,T^m+π) also has O-length ma. The pseudo-null moduleΛ/(π,T) contributes bounded length1, slope0. | Horizontal/vertical slopes distinguish bounded error from leading order. |
| 8.19 Principal index | Evaluation ideal(p,T) has height-one gcd1 although it is proper. The defined principal index of0 is0, whereas char(0 module)=Λ. | Zero convention and principalization are explicit. |
| 8.20 Finite generation | X=0 has residual dimension0 and needs0 generators; Λ has residual dimension1 and needs1. | Topological Nakayama agrees at both boundaries. |
| 8.21 Exceptional rank one | For the ℚ cyclotomic Tate example the restricted class module is0; the augmentation-character moduleℤₚ is infinite but killed byγ−1. | A character annihilator need not prove finiteness. |
| 8.22 Specialized control | A fixed finite error of length C contributes C/N→0 to a length divided by N. An augmentation errorℤₚ is infinite and does not meet that bound. | Exceptional primes must remain excluded or separately handled. |
| 8.23 Generic core rank | For O unramified quadratic overℤₚ, a rank-one O-module has ℤₚ-rank2. | Restriction of scalars includes coefficient degree. |
| 8.24 Blind spots | κ=0 is blind at every prime. Multiplying a primitive system byπ makes its residual class0 although it can be nonzero overΛ. | Nonzero does not imply Λ-primitivity. |
| 8.25 Euler weak Leopoldt | c=0 has index ideal0 and gives no torsion conclusion. A unit bottom class has indexΛ. | The nonzero hypothesis cannot be dropped. |
| 8.26 Residual primitivity | A unit remains nonzero modulo every height-one prime; π reduces to0 modulo(π). A nonzero class modulo the maximal ideal cannot already be0 modulo a contained height-one prime. | Fixed-filtration implication has the right direction. |
| 8.27 Kolyvagin weak Leopoldt | A free summandΛ in X would give X/PX a copy ofΛ/P, an infinite module, contradicting the finite specialized Selmer bound. | Positive Λ-rank is excluded by the stated nonzero-class/control input. |
| 8.28 Self-dual Λ bound | M=Λ/(g²) gives X∼Λ⊕M⊕M and char(Xtors)=(g⁴). If the leading quotient has char(g³), the half-bound is2≤3 and the doubled bound4≤6. | Factor2 and rank-one free part retained. |
| 8.29 Induction | At r=0, the product of elementary factors is1 and its valuation0; there is no induction step to choose. At r=1, one factorπ^a contributes a. | Zero-rank base case is explicit. |
| 8.30 MR Λ bound | In O with π²=−5, U^(2m)+5=(U^m−π)(U^m+π), so the p-based perturbation is reducible. U^N+π is Eisenstein; length_O(O[[U]]/(π^a,U^N+π))=Na. | The roadmap's uniformizer replacement fixes the ramified case. |
| 8.31 Error-tolerant Λ bound | A twist-independent finite error E contributes E/N→0; the old loss Cα=m for α=1+p^m need not stay bounded when m grows with N. | Uniformity is proved before the asymptotic argument. |
| 8.32 Equality | At specialization, initial index s+d and defect d give length s. A bounded d disappears after division by N; a defect d=N has limit1 and would change equality. | Λ-primitivity/bounded-defect hypotheses are not optional. |
| 8.33 Rubin error factor | r=0 gives aτ^(5r)=1; r=1,aτ=5 gives3125. At aτ=1 every rank has error factor1. | Exponent5r and unit-error case agree. |
| 8.34 Residual μ transfer | A finite residual module𝔽ₚ has finite dimension1; Λ/(π)≅k[[T]] has infinite k-dimension. | The residual finiteness hypothesis excludes positive μ. |
| 8.35 Ordinary coefficient prime | In Λ_(π), T is a unit, so an O-finite augmentation module vanishes. Ordinary balanced ranks give1−1=0; full/full gives2 and strict/strict gives−2. | Ordinary conditions are needed for the torsion rank balance. |
| 8.36 Augmentation divisibility | If μ(M)=0, its coefficient-prime valuation is0; the desired inequality is0≤the nonnegative initial-index valuation. Horizontal inequalities alone give no such coefficient-prime value without this input. | The coefficient prime is covered separately. |
| 8.37 Integral Rubin divisibility | With aτ=1, the error factor is1 and char(X)∣ind(c). Scaling c byπ multiplies its index byπ and weakens the bound. | Correct divisibility direction. |
| 8.38 Divisibility up to p-power | With aτ=p²,r=1, aτ^(5r)=p¹⁰; inverting p turns that factor into a unit. | Integral and rational conclusions differ by the stated p-power. |
| 8.39 True Selmer divisibility | In rank-one local algebra, a restricted dual factorπ and a local quotient factorπ² multiply toπ³. A rank-zero singular module cannot supply this rank-one factorization. | Local rank and nonzero quotient hypotheses retained. |

## Not verifiable

The published Rubin extraction returned unreadable glyph names; an OCR refresh did not produce readable text. Its published pagination was therefore not independently certified. The linked 1999 author draft was readable and all sampled Rubin theorem numbers and printed pages above were verified in that version. No required sampled theorem remained without readable legal text. All 28 distinct works cited in the README were located through the source service, including works cited only inline; fetching the remaining works is not a claim to have certified every nonsampled locator.

Arithmetic proofs were assessed as proof routes and boundary tests. Elaboration of the target and native comparison signature does not prove them. No missing source or compiler failure postpones this verdict.

## Source issues

- **Error** in CGLS at Proposition 3.3.11(i), printed p.23: the source says an index between 1 and 2s always exists; it should separate M=0, where s=0 and the asserted index does not exist; affects a stated result.
- **Misprint** in CGLS at proof of Proposition 3.3.11(ii), printed p.23: the source says the element used in the β argument belongs to M; it should belong to M′, the second summand in β's domain; affects the proof.
- **Misprint** in Sakamoto at proof of Lemma 4.13, printed p.2314: the source says the last functional vanishes on the kernel vectors; it should say the first functional, which was defined to be h; affects the proof.
- **Misprint** in Howard at proof of Theorem 2.2.10(b), printed p.28 of the arXiv version: the source says the vertical-prime perturbation is T+p^m; it should be T^m+p, as used on the preceding page; affects the proof.
- **Gap** in Rubin at proof of Corollary C.2.2, printed p.162 of the 1999 draft: the source says Gal(Ω/F) is topologically finitely generated for unrestricted B; it should justify finite generation or assume it, as the finitely generated unit applications permit; affects the proof.
- **Error** in CH at Definition 7.1(E2), printed p.29 of the author's version: the source says the local operator uses Frobenius over Kλ; it should use rational Frobenius, whose square is the Kλ Frobenius, consistently with Lemma 4.7; affects a stated result.

- **Error** in KY at the definition after Lemma 3.0.3, printed p.36: the source says the scalar intersection is open in O×; it should only require a nontrivial scalar, since cyclotomic determinants need not allow full coefficient-field dimension; affects the proof.
