# Review of EulerSystemsAndKolyvaginSystems (pull request #1272 at ccd7e7a)

**Verdict:** accepted

No findings remain. This is an incremental re-review of 57 changed lines since 3bb0e86, covering the three repairs, their mathematical dependencies, the gate and elaboration. Acceptance means ready for a human's final approval.

## Previous findings

- R01 — repaired: `Suggested.lean:120` states the canonical integral comparison, finite cokernel and maximal divisible image on native carriers. `README.md:2804` matches its full-lattice, coefficient-field and topological finite-generation hypotheses.
- R02 — repaired: `README.md:87` cites the pinned cocycle-determinacy and finite-cohomology declarations; `:2806` applies the supplied finite-H¹ theorem to W[ϖ], retaining only the new comparison as a target.
- R03 — repaired: `README.md:2268` adds the E5 membership test, explicitly as a local model. Section 3.8 now has three Checks; the undeclared derivative label is gone.

Locations abbreviated above are in `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/`.

## Verified sound

The review independently checked all changed passages and their use in §§3.8, 4.2a–4.2b, the §4.3 finite-base application and the headline inventory. The two affected theorem/definition rows for §3.8 and integral §4.2a are replaced below by fresh computations; all other 156 rows are carried from [r2], with attribution on each row. The retained rows cover all 15 targets in this round's seeded sample: §§0.9, 1.16, 2.9, 3.17, 4.1, 4.6, 4.12, 4.18, 5.4, 5.6, 5.7, 8.2, 8.7, 8.13 and 8.20. None of those passages or their locators changed; their source certification was not repeated. No locator in the changed material is marked unverified.

The repository README's writing checklist and CONTRIBUTING were read, with DerivedModuleAlgebra and ProfiniteCohomology on main as shape references. The worktree remains clean at ccd7e7a19ce68f955293f708b8425d2ceb1f07d2; the diff outside this roadmap folder is empty. The changes introduce no shortcut, algorithm, sorry'd data, substitute arithmetic carrier, option override or additional roadmap ownership.

The fresh gate passes all its scanners and dependency rules. A separate permitted targeted build, `lake build TauCetiRoadmap.EulerSystemsAndKolyvaginSystems.Suggested`, completed successfully (8987 jobs). Direct `lake env lean` on the requested file exited 0 with exactly the two intended `sorry` warnings. The dependency command returned:

```text
depcheck: 205 roadmaps, 1483 edges, 0 problem(s)
```

There were no UPWARD, CYCLE or moved lines. The changed `Needs` line retains the coefficient exact sequence, rationalisation, Matlis duality and finite-module structure inputs. It now names the supplied finite-H¹ theorem and actual quotient map.

There are **two declarations**, both theorems; the signature scanner's third apparent declaration, “and”, is text in the module docstring. A scratch copy with `#check @name` for both actual declarations elaborated their types. No binder was lost: the new theorem retains the prime, finite normed coefficient extension, the exact unit-ball ring, compact Hausdorff totally disconnected topological group, topological finite generation, finite-dimensional continuous linear action, finite free full lattice and equivariance of its canonical quotient. Equivariance implies stability: q(t)=0 gives q(g·t)=g·0=0. Surjectivity of q fixes the action on every quotient class. The image is thus the range of the constructed cohomology map, not an arbitrary subgroup.

The rational statement still retains faithfulness and irreducibility. Scratch probes tried `simp`, `rfl` and `infer_instance` separately on each theorem; all six failed to close their target. For rational vanishing, `simp` leaves Z¹≤B¹. For the comparison it leaves substantive finiteness/divisibility goals. The nearby pinned discrete-coefficient vanishing theorem does not apply to the non-discrete rational coefficients, and finite_H1 applies to finite coefficients rather than V/T. No one-lemma duplicate or padding declaration was found.

The headline inventory remains: core-rank formulas (§0.10); finite–singular comparison and auxiliary-prime selection (§§1.8, 1.15–1.16, 1.21–1.23); Euler unramifiedness, congruence and derivatives (§§2.3, 3.14, 3.16–3.19); rational vanishing, integral comparison and infinite-base classification (§§4.2a–4.2b); Selmer bounds (§§4.7, 4.13, 4.17–4.21); rank-one freeness, structure and primitivity (§§5.3, 5.6, 5.10, 5.13); Stark freeness, regulator and Fitting formulas (§§6.6–6.8); higher derivatives, determinants and class-group bounds (§§7.2, 7.4–7.6); weak Leopoldt, Iwasawa bounds, equality and integral divisibilities (§§8.25–8.39). The two statable §4.2a headlines are present. The docstring distinguishes §4.2b's missing joint arithmetic extension from the existing quotient carrier and still identifies the Selmer/system interfaces missing for the other headlines.

The repaired proof route is sufficient. Finite H¹(G,W[ϖ]) gives finite ϖ-torsion in H¹(G,W). The cofinite-module decomposition then has a divisible summand and a finite summand. The rational image is divisible; its quotient embeds in H²(G,T), whose no-divisible-subgroup property kills the remaining divisible summand. Thus the cokernel is finite. Any divisible subgroup maps trivially to this finite quotient, proving maximality. Restriction of scalars makes the finite free O-lattice finite free over ℤ_p, so the cited ℤ_p rationalisation theorem applies to arbitrary finite coefficient extensions.

Fresh source checks used the legal source service, without editing a manifest or copying source text:

| Changed claim | Locator read | Result |
|---|---|---|
| §3.8 E5 and its negative control | CH line 1542–1546; Definition 7.2, printed p.30, author's version | E5 requires the propagated local membership independently of E1–E3. The added hyperbolic computation tests that predicate; it does not claim an arithmetic realization. |
| §3.8 unchanged sign used by the edited Check | CH line 1540–1541; (K3), printed p.30 | Two auxiliary primes contribute (−1)²=1, preserving the bottom sign. |
| §4.2a finite-cokernel comparison | Rubin line 7008–7018; Appendix C, Corollary 2.2 and proof, printed p.162 of the 1999 draft | The proof supplies the finite-cokernel step under topological finite generation. The roadmap explicitly assumes this instead of inferring it for unrestricted B. |
| §4.2a lattice input and generality | Rubin line 6593–6600; Appendix B, Propositions 2.3–2.4, printed p.152 | Finite ℤ_p lattices provide rationalisation; the source's overstrong wording about divisible elements is avoided. The roadmap uses the corrected no-divisible-subgroup contract. |
| §4.2b consumption | Rubin line 6990–7018; Appendix C, proof of Theorem 2.1 and Corollary 2.2, pp.161–162 | The rational character alternatives and finite-index integral image use exactly the comparison now stated. |

[Rubin's 1999 draft](https://swc-math.github.io/notes/files/99RubinES.pdf) and [the CH author version](https://www.math.ntu.edu.tw/~mlhsieh/research/HCES.pdf) were readable. The declared topological finite-generation hypothesis addresses the previously recorded gap in Rubin C.2.2.

Both library checkouts match the README pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following **10 pinned declarations** were opened; paths are relative to their libraries.

| Declaration | File and line | What was verified |
|---|---|---|
| TauCeti.ContCohomology.eq_of_mem_Z1_of_eqOn_of_topologicalClosure_closure_eq_top | `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean:610` | Dense generated subgroup and T₁ coefficient hypothesis; no new generic determinacy theorem is needed. |
| TauCeti.IsTopologicallyFinitelyGenerated.finite_Z1 | `TauCeti/RepresentationTheory/Homological/ContCohomology/TopologicallyFinitelyGenerated.lean:39` | Finite discrete coefficients and a topological group. |
| TauCeti.IsTopologicallyFinitelyGenerated.finite_H1 | Same file, line 48 | Adds the continuous action; applicable to W[ϖ]. |
| TauCeti.IsTopologicallyFinitelyGenerated | `TauCeti/Topology/Algebra/Group/Generation.lean:73` | A finite set whose generated subgroup is dense, not abstract finite generation. |
| TauCeti.ContCohomology.explicitCoeff1 | `TauCeti/RepresentationTheory/Homological/ContCohomology/ExplicitFunctoriality.lean:745` | Induced by a continuous equivariant additive map on the native H¹ quotients. |
| Submodule.mkQ | `Mathlib/LinearAlgebra/Quotient/Defs.lean:227` | The actual canonical quotient map, not a freely supplied morphism. |
| Submodule.continuous_mkQ | `Mathlib/Topology/Algebra/Module/Basic.lean:329` | Continuity for the quotient topology; it does not itself assert discreteness. Here a finite full lattice is open, giving discreteness. |
| Module.equiv_directSum_of_isTorsion | `Mathlib/Algebra/Module/PID.lean:230` | Finite generation and PID hypotheses, used after Matlis duality. |
| Representation.IsIrreducible | `Mathlib/RepresentationTheory/Irreducible.lean:29` | Simple-order condition excludes V=0 and does not supply faithfulness. |
| TauCeti.ContCohomology.subsingleton_H1_of_isAddTorsionFree | `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean:969` | Requires a trivial action and discrete coefficients; not the rational headline. |

Fresh `roadmaps resolve` found no unresolved cross-roadmap citations. Its library-name phase was unavailable in that invocation, so the new library names were checked directly at the pins as above. The worker's four older leads resolve to IntegralIwasawaTheory §12.6's shared exterior-bidual and Rubin-lattice API, not missing declarations promised by this Lean file. The following affected contracts and ownership leads were resolved manually against main or the open supplier head; line numbers omit the tool's wrapper.

| Roadmap | Resolved locator | Contract or ownership boundary |
|---|---|---|
| ArithmeticGaloisDuality | `TauCetiRoadmap/ArithmeticGaloisDuality/README.md:674`, §R02.1.2; `:721`, §R02.1.3 | Coefficient long exact sequence, lattice rationalisation and absence of divisible subgroups. W is discrete because the lattice is open. |
| DerivedModuleAlgebra, main | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:2242`, §1.M.1 | Exact Matlis duality and finite/cofinite biduality over a complete Noetherian local ring with finite residue field. |
| ArithmeticGaloisRepresentations | `TauCetiRoadmap/ArithmeticGaloisRepresentations/README.md:3355`, §5.8 | Compact subgroup charts and a normal open uniform subgroup, consumed by §4.2b's sufficient finite-generation condition. |
| IntegralIwasawaTheory | `TauCetiRoadmap/IntegralIwasawaTheory/README.md:1688`, §12.6 | The four previously unresolved shared names are supplied here. |
| SelmerIwasawaCohomology | `TauCetiRoadmap/SelmerIwasawaCohomology/README.md:2407` and `:2419`, algebraic specialization parity | The related divisible-image result assumes a perfect paired complex and additional cohomological hypotheses. It is not the new theorem for arbitrary topologically finitely generated profinite G. |
| ArithmeticGaloisDuality | `TauCetiRoadmap/ArithmeticGaloisDuality/README.md:797` | Its maximal-divisible-image Check concerns V^G→W^G, degree zero, not the new degree-one comparison. |

Object searches used `roadmaps grep`, the supplied open/main index, the board packages and the pinned cohomology files. No second owner or duplicate fully qualified theorem name was found. A finite-cokernel search also found Tau Ceti's `TateCohomology/HerbrandQuotient.lean:467`; that theorem assumes a finite cokernel and compares Herbrand quotients, rather than constructing the H¹ comparison. The generic finite cocycle/cohomology results remain imported. This roadmap owns the additional degree-one lattice comparison used by its analytic classification. No ownership transfer is required.

Fresh computations for the changed mathematical statements and their immediate interfaces follow. Finite residue-ring counts were also enumerated; infinite-group calculations use continuous homomorphisms for trivial actions.

| Statement | Instances tried | Computed values on each side | Result/change |
|---|---|---|---|
| §3.8 revised conjugation Check | Trivial χ, r=1, two primes | ε_n=w_f·1·(−1)²=w_f=ε_1 | Sign retained; undeclared label deleted. |
| §3.8 new local model and propagation | H=Φ², lattice O², F=Φe₁; O=ℤ₃, M=1,2,3 | Pairing (a,b) with e₁ gives b; F⊥=F. Modulo 3^M the annihilator and F_M both have 3,9,27 elements. e₁ has second coordinate 0; e₂ has 1≠0. | E5 admits e₁ and rejects e₂ at every tested depth; norm-only conditions do not enforce this. |
| §4.2a canonical map and hq | Scalar action 4 on V=ℚ₃, L=ℤ₃; v=1/9 and t=1 | q(4v)=4/9=4q(v); q(4t)=0=4q(t). A trivial action on W would instead give q(v)=1/9, differing by 1/3. | Equivariance excludes the wrong quotient action and enforces lattice stability. |
| §4.2a finite cokernel and maximality | G=C₃, trivial V=ℚ₃, L=ℤ₃ | H¹(G,V)=0, H¹(G,W)=W[3]≅ℤ/3; I=0; quotient cardinality 3. Multiplication by 3 on the nonzero target has image cardinality 1<3, so its divisible subgroup is 0=I. | New headline permits finite nonsurjective comparison. |
| §4.2a divisible infinite image | G=ℤ₃, trivial action; Φ=ℚ₃ or ℚ₃(√3), L=O | H¹(G,V)=Φ, H¹(G,W)=Φ/O; q is onto; I=W, quotient 0. For each n>0 and y, y/n lifts to a preimage under multiplication by n. | Infinite image is allowed; maximality holds since I is the whole target. |
| §4.2a new ramified Check | G=C₃, Φ=ℚ₃(√3), π=√3, L=O | H¹(G,V)=0; W[3]=3⁻¹O/O≅O/π². Residue representatives a+bπ with a,b∈𝔽₃ give 9 elements; π-kernel has 3; multiplication by 3 has one-element image. Cokernel order 9; maximal divisible subgroup 0. | Neither residue cardinality 3 nor coefficient rank 1 over ℚ₃ may replace order 9. |
| §4.2a zero and trivial cases | L=V=0; separately G=1 with a nonzero full lattice | Both H¹ groups are 0; image 0; quotient cardinality 1; every n>0 acts surjectively on the singleton subgroup. | Comparison includes rank zero; rational irreducibility headline still excludes V=0. |
| §4.2a small-prime and nonabelian controls | G=C₂, p=2, trivial ℤ₂ lattice; G=S₃, trivial ℤ_p lattice | C₂: source 0, target ℤ/2, cokernel order 2. Since S₃^ab=C₂, at p=2 the same values hold; at p=3 both H¹ groups are 0 and cokernel order 1. | No odd-prime or abelian-group hypothesis is hidden in the comparison. |
| §4.2a finite-generation negative control | G=∏ C₃, trivial ℤ₃ lattice | Continuous Hom(G,ℚ₃)=0; Hom(G,ℚ₃/ℤ₃)=⊕ℤ/3 is infinite. Cokernel infinite, contradicting the conclusion without hG. | hG excludes this case. |
| §4.2a imported determinacy and finite_H1; new Check | G=C₃², W[3]=𝔽₃; G=1 | Generator values give 3²=9 cocycles; B¹={0}; H¹ has 9 elements. Empty generator set for G=1 gives 3⁰=1 cocycle and H¹=0. | Imported result proves finiteness, not universal vanishing. |
| §4.2a ring and fullness premises | Φ=ℚ₃; candidate O=Φ; candidate L=0 in V=Φ | 1/3 lies in Φ but has norm 3>1, so O=Φ fails hO. span_Φ(0)=0≠Φ, so the nonfull zero lattice fails hfull. | The new signature excludes these wrong carriers while allowing the actual ring and full lattice. |
| §4.2a proof and §4.2b finite-index character interface | H=D⊕ℤ/3, D=ℚ₃/ℤ₃, I=D, γ acts by 4 on D and −1 on the finite factor | H/I=ℤ/3; every divisible subgroup maps to 0 there. γ−4 is 0 on D and −5=1 mod 3 on the quotient; 3(γ−4)=0 on H. | Maximal image and the finite-quotient annihilator used downstream agree. |

The following 156 rows retain the previous computations, not a claim of a new full review.

| Target | Instance and computed values on the two sides | Result/change |
|---|---|---|
| Supplier propagation/duality | Strict L=0 has annihilator the whole dual. Relaxed L=H¹ has quotient-propagated annihilator ker(H¹(T*[I])→H¹(T*)), which need not be 0. | Exact inverse-image rule retained.  Carried from [r2]. |
| Supplier Greenberg–Wiles | ℚ, μₚ, odd p, relaxed at p: left dimension difference 1−0=1; right 0−1−((0−2)+(0−0))=1. | Ordinary archimedean H⁰ convention agrees.  Carried from [r2]. |
| 0.1 Selmer triples/conductors | P=∅ gives N(P)={1}; P={q,r} gives {1,q,r,qr}, cardinalities 1 and 4. An infinite residue field fails the coefficient contract. | Empty product is 1.  Carried from [r2]. |
| 0.2 Self-injective coefficients/trace | R=𝔽₂[ε]/ε² has socle dimension1; the ε-coefficient functional has pairing matrix [[0,1],[1,0]], determinant1. For k[x,y]/(x,y)² the socle has dimension2. | The second ring is excluded; self-injectivity is substantive.  Carried from [r2]. |
| 0.3 Quotient category | ℤ/9→ℤ/9 by ×3 has image 3R, order3. Its source has order9, so it is not one of the specified quotient injections. | Arbitrary module maps are not accepted as injections.  Carried from [r2]. |
| 0.4 Cartesian conditions | L=3R⊂R=ℤ/9; propagated L on R/3R is 0. Under R/3R→R by ×3, the inverse image of L is all ℤ/3, not 0. | Detects a noncartesian condition.  Carried from [r2]. |
| 0.5 Linear length growth | For trivial unramified T over ℤ/27, H⁰ and H¹_ur both have lengths1,2,3 at depths1,2,3, giving differences0,0,0. Strict local condition gives differences1,2,3=i·1. | No unsigned negative length is introduced.  Carried from [r2]. |
| 0.6 Quotient/torsion Selmer maps | Multiplication by3 identifies (ℤ/9)/3 with (ℤ/9)[3]={0,3,6}. Inclusion of this torsion submodule is not an isomorphism onto all ℤ/9. | Required H⁰/control conditions remain necessary.  Carried from [r2]. |
| 0.7 Canonical/unramified | For ℚₚ(1), local units give rank1 in the lattice Kummer group, while the full local group has rank2. For trivial R=𝔽ₚ[[X]] at q≡1 mod p, unramified H¹ is R inside R². | Distinguishes full, finite and unramified conditions.  Carried from [r2]. |
| 0.8 Core rank | Lengths (5,3) give signed difference2; at coefficient length2 the normalized rank is1. Reversing them gives −2, whose nonnegative truncation is0. | Signed Euler difference is not confused with truncation.  Carried from [r2]. |
| 0.9 Modulus independence | Core rank1 at length2 gives length difference2; reduction to length1 gives difference1; division by the respective lengths gives1 in both cases. | Cartesian hypothesis is retained.  Carried from [r2]. |
| 0.10 Canonical/unramified formulas | Over ℚ an even nonexceptional unit twist has core rank1; the odd twist has rank0. The elliptic canonical/classical pair gives1/0. | Positive rank is a separate hypothesis downstream.  Carried from [r2]. |
| 1.1 Auxiliary fields | ℚ, p=3: ray mod7 has 3-primary quotient order3, ray mod5 order1; mod7·13 gives order9. | The trivial ray extension is included.  Carried from [r2]. |
| 1.2 Finite/singular groups | Trivial 𝔽ₚ and p∣q−1 give one-dimensional finite and singular groups. Discrete ℚ gives continuous Hom(Ẑ,ℚ)=0 but Frobenius coinvariants ℚ. | Discrete ℚ is excluded by the coefficient contract.  Carried from [r2]. |
| 1.3 Exponents/depth | In (O/π³)², π²e₁ has exponent1 and divisibility2; 0 has exponent0 and unbounded module divisibility∞; the bounded system index at depth3 is separately defined to be3. | Exponent and divisibility are distinct.  Carried from [r2]. |
| 1.4 Conductor ideals/tensors | p=2, ℓ=7: v₂(ℓ−1)=1 but the 2-primary ray degree over ℚ is1. At conductor1 the tame tensor is ℤ and I₁=0. | Cyclotomic degree is not replaced by ray degree.  Carried from [r2]. |
| 1.5 Transverse condition | At ℚ₁₉ with ℤ/9 coefficients, a degree3 tame extension gives singular image order3, whereas H¹_s has order9. | Insufficient extension degree cannot give an isomorphism.  Carried from [r2]. |
| 1.6 Evaluation saturation | A stable primitive rank-one submodule Oe₁⊂O² omits e₂ despite meeting O²∖πO². Its O-span has rank1, not2. | Irreducibility/saturation input rules out this model.  Carried from [r2]. |
| 1.7 Prime filtrations | If p has O-valuation2 and M=π³, then p does not kill O/M (valuation2<3), but p² does (4≥3). | Cyclotomic congruence uses the necessary integer depth.  Carried from [r2]. |
| 1.8 Finite–singular comparison | P(X)=1−X gives Q(1)=−1 under P=(X−1)Q. For Fr=diag(1,2) over 𝔽₅, Q(1)=1; for Fr=I₂ it is0. | One fixed direction is essential; the two-fixed-direction model is excluded.  Carried from [r2]. |
| 1.9 Local modifications | Strict condition0 has relaxed dual H¹; relaxed H¹ has strict dual0. Interchanging a and b twice returns the original conditions. | The extra dyadic transverse hypothesis is kept.  Carried from [r2]. |
| 1.10 Transverse self-duality | ℚ₃, p=2: the transverse Kummer line generated by −3 has self-pairing (−3,−3)₃=−1, not1. At q=5, (q−1)/2=2 kills ℤ/2. | First example excluded; second satisfies the displayed dyadic criterion.  Carried from [r2]. |
| 1.11 Abundance constants | The stated combinatorial function has f(0)=1, f(1)=1, f(2)=4, f(3)=10. In a quadratic sign model 1+εb is2 or0. | Opposite signs do not produce abundance.  Carried from [r2]. |
| 1.12 MR04 hypotheses | T=ℤₚ(1) has residual dual ℤ/p with invariant dimension1. | Its exceptional trivial-dual case fails the vanishing record.  Carried from [r2]. |
| 1.13 MR16 hypotheses | For the 𝔽₅-character of ℚ(√2), q=11 has Fr=−1, so coinvariants are0 despite the cyclotomic condition. Four lines in 𝔽₄² cover at most13 of16 vectors. | Enlarged splitting field and prime-field detection are necessary.  Carried from [r2]. |
| 1.14 Twist errors | α(γ)=ζₚ gives vₚ(ζₚ−1)=1/(p−1), and coefficient degree p−1 gives integral loss1. α=1 uses Cα=0; α=1+p^m has Cα=m. | Values agree. Extending a rational Tate module to degree-two O leaves scalar Lie dimension1 versus2 for O×; the roadmap only assumes a nontrivial scalar.  Carried from [r2]. |
| 1.15 Abundant tuples | In the stated ℤ₅² example at depth3, norm valuation2 gives H¹(C₂₅,ℤ/125)=5A/5A=0; f(0,1)=25≠0, but f vanishes on25ℤ₅². | Original restriction injectivity does not imply the induced one; the extra hypothesis detects it.  Carried from [r2]. |
| 1.16 Residual two-class detection | Two distinct bad hyperplanes in 𝔽₅² contain at most9 of25 vectors; 16 remain. A chosen local eigenspace has dimension1, so two nonzero local images can be dependent. | Simultaneous nonvanishing is not independence.  Carried from [r2]. |
| 1.17 Hypothesis implications | Rank-one trivial T has T/(1−1)T=T, rank1, but residual H⁰ has dimension1. | Rank-one coinvariants alone do not give the full record.  Carried from [r2]. |
| 1.18 Finite-order unit twists | Over ℚ, nonexceptional even χ gives the unit/core-rank count1; odd χ gives0. | Parity is retained.  Carried from [r2]. |
| 1.19 Elliptic Tate module | Rank2 odd Tate representation over ℚ has canonical core rank1; the self-dual classical Selmer structure has Euler difference0. | The two Selmer structures are not identified.  Carried from [r2]. |
| 1.20 Exceptional characters | Hom_cts(1+pℤₚ,𝔽ₚ)≅𝔽ₚ for odd p, cardinality p rather than1. | The trivial/Teichmüller exceptions are real.  Carried from [r2]. |
| 1.21 Simultaneous localization | Four bad hyperplanes have union proportion at most4/5 over 𝔽₅. Two distinct lines in 𝔽₂² have union size3, leaving1 vector. | The count is made over the actual scalar field.  Carried from [r2]. |
| 1.22 Prime selection with errors | A value of order exponent k loses at most d under multiplication by π^d: k=5,d=2 gives exponent3; k=1,d=2 gives0. | Truncation at0 is required.  Carried from [r2]. |
| 1.23 Prescribed kernels | Over k=𝔽₉ the prime-field scalar line has3 elements, while the k-line has9. | An 𝔽₃-span cannot be called the full k-span without the stated algebra input.  Carried from [r2]. |
| 2.1 Euler polynomials | Rank0 gives det(1−XA)=1. For zero A of rank2, det(XI−A)=X² but det(1−XA)=1. A scalar q gives1−qX. | Reverse-polynomial and dual conventions distinguished.  Carried from [r2]. |
| 2.2 Euler systems | Zero family satisfies 0=P·0. For an identity extension, corestriction and the empty Euler-factor product are both identity, so the relation is c=c. | Norm/field data determine the system.  Carried from [r2]. |
| 2.3 Unramifiedness | A torsion-free inertia value divisible by p^a for every a is0; a class of fixed order p^b cannot justify the same assertion without the source's coefficient/rigidity argument. | The stipulated hypotheses are retained.  Carried from [r2]. |
| 2.4 Conductor presentations | A trivial ray extension has relative degree1 and its corestriction is identity. The empty conductor gives the bottom component c₁. | Redundant field labels do not create a second norm.  Carried from [r2]. |
| 2.5 Finite twists | χ=1 gives identity on coefficients and classes. For χ of order3, twisting by χ then χ⁻¹ multiplies scalars by1. | Inverse character transport agrees.  Carried from [r2]. |
| 2.6 Euler-factor replacement | f=1−X has reciprocal X−1, not1−X. At X=0 these are −1 and1. | The polynomial direction/sign is tested.  Carried from [r2]. |
| 2.7 Universal system | For Γ=C₃ the regular module has O-rank3 and O[Γ]-rank1, not O-rank1. | Freeness uses the correct coefficient ring.  Carried from [r2]. |
| 2.8 Rigidity variants | At q=17 and eχ=9, the proposed naive fraction16/51 has v₃=−1. For a trivial ray edge the comparison is identity, while scalar formulas can give1/2 versus1/4. | Integral divided operators and the trivial-edge branch are necessary.  Carried from [r2]. |
| 2.9 Ring-class systems | K=ℚ(i), c=1, inert ℓ=3: conductor degree (3+1)/2=2, not4. J=diag(1,−1) has J²=I, so using squared Frobenius loses the sign. | Exceptional units and rational Frobenius retained.  Carried from [r2]. |
| 3.1 Weighted derivative | C₂: D=σ, N=1+σ; (σ−1)D=1−σ=2−N. For order1, D=0 and 1−N=0. | Norm is imported; derivative is new.  Carried from [r2]. |
| 3.2 Coinduced lifts | Connecting cocycle at a lift t is γt−t; for an invariant lift it is0. Identity field change gives the same lift and same cocycle. | Sign and choice-independence agree.  Carried from [r2]. |
| 3.3 Systems and limits | For a double trivial coefficient at q, P=(1−X)² gives Q(1)=0, whereas a single trivial coefficient has Q(1)=−1. | Arbitrary direct sums do not preserve the comparison without the intertwining law.  Carried from [r2]. |
| 3.4 Universal derivative | In a C₃ edge modulo3, (σ−1)D=3−N reduces to−N; applying an edge with norm0 gives0, hence invariance. Modulo9 the term3 need not vanish. | Modulus/admissibility are essential.  Carried from [r2]. |
| 3.5 Bounded-kernel descent | For f:ℤ→ℤ, f(x)=5x, c=5, a=5, choose y=5 with f(y)=ac=25; selected a y=25 maps to125=a²c. | The extra annihilator factor is not omitted.  Carried from [r2]. |
| 3.6 Tower restriction | A map with kernel/cokernel killed by3 can have three preimages of0; reduction ℤ/9→ℤ/3 has precisely these. | Bounded control does not imply unique descent.  Carried from [r2]. |
| 3.7 Frobenius local operators | On J=diag(1,−1), J−1 has eigenvalues0,−2 and J+1 has2,0. Squaring J givesI and destroys this distinction. | Divided operator relation is not replaced by a scalar equality.  Carried from [r2]. |
| 3.9 Derivative coefficients | For M=3,M′=9, W₃→W₉ takes1/3 to1/3; W₉→W₃ takes1/9 to1/3. In quotient coordinates the first is ×3. | Previous R01 repaired.  Carried from [r2]. |
| 3.9a Full cyclotomic derivative | For C₄, D₄−(1+σ²)D₂=2σ²+2σ³ with D₂=σ; it is0 modulo2 but not modulo4. | Full tame degree/modulus condition cannot be dropped.  Carried from [r2]. |
| 3.10 Unramified derivative classes | At a good unramified place the inertia restriction is0, so its prescribed annihilator is1. At a bad place a nonzero torsion image may require π^b. | Good and bad local cases are both present.  Carried from [r2]. |
| 3.11 Lifted telescoping | For m=1, D=0 and the lifted right side mσ^m−N=σ−σ=0. For m=2, (σ−1)σ=σ²−σ=2σ²−(σ+σ²). | σ^m is not silently set equal to1 in inertia.  Carried from [r2]. |
| 3.12 Local lifts | For finite free compact X and Ẑ, finite-level H¹ is finite, hence lim¹=0; H²(Ẑ,X)=0 and the obstruction to reduction is0. | The compact conclusion uses the finite-level limit input.  Carried from [r2]. |
| 3.13 Local derivative behavior | Multiplication by Q(1)=−1 on ℤ/3 preserves order3; replacing Q by0 would give order1. | Comparison cannot discard the polynomial unit.  Carried from [r2]. |
| 3.14 Kolyvagin congruence | With ψ(Fr)=2, the inverse-Frobenius factor is1/2, while using Fr² gives1/4. They differ by1/4 in characteristic0. | Character/Frobenius transport distinguishes them.  Carried from [r2]. |
| 3.15 Weak systems/tame tensors | For 𝔽₉[C₃], augmentation quotient I/I² has dimension1; for 𝔽₉[C₃²] it has dimension2. | The cyclic tame factor is essential.  Carried from [r2]. |
| 3.16 Semidirect derivatives | In an S₃ model, conjugation takes σ toσ⁻¹; the χ-twisted scalar Fr=−1 makes1−Fr=2, while1−Fr²=0. | The ordinary Euler presentation cannot be reused without its new semidirect relations.  Carried from [r2]. |
| 3.17 Corrected system map | At two primes, correction subtracts ab from the finite component ab, leaving0. Omitting it leaves ab, nonzero for a=b=1. | Edge relation tests the correction.  Carried from [r2]. |
| 3.18 Multiplicative example | p=2,q=3: bottom unit2 and the quotient normalization1/2 are distinct in ℚ₂×. | The example retains the actual integral class and normalization.  Carried from [r2]. |
| 3.19 Finite-depth variant | At fixed modulus3², coefficients congruent modulo9 give identical derivatives; congruence only modulo3 leaves the difference3 visible modulo9. | Fixed depth is not all depths.  Carried from [r2]. |
| 3.20 Two-prime correction | For a=b=1, ordered products ab=ba=1, and the alternating correction contributes−1, cancelling1. | Permuting primes must transport the sign.  Carried from [r2]. |
| 4.1 Selmer graph/sheaf | P=∅ gives one vertex; P={q,r} gives four vertices and a square. An edge with identity transition rejects endpoint values(1,0). | Arbitrary vertex values are not a section.  Carried from [r2]. |
| 4.2 Edge lengths | A dimension-one local change increases the Selmer dimension by δ∈{0,1} and decreases its dual by1−δ; the Euler difference increases by1 in both cases: δ+(1−δ)=1. | Both exact-sequence directions agree.  Carried from [r2]. |
| 4.2a Rational vanishing | G=1 gives H¹=0. Faithful scalars1+3ℤ₃ give ℚ₃/3ℚ₃=0; abstract ℤ₃ acting trivially gives H¹=ℚ₃. At p=2, scalars1+4ℤ₂ give ℚ₂/4ℚ₂=0. | Faithfulness matters; p=2 is included.  Carried from [r2]. |
| 4.2b Infinite-base classification | Scalar4 on D=ℚ₃/ℤ₃: (γ−4)(1/9)=0 but (γ−1)(1/9)=1/3. Dual scalar is1/4. For Γ=1, γ−1=0, so this is not a nonzero annihilator. | Character branch and d≥1 restriction are necessary.  Carried from [r2]. |
| 4.3 Rubin index/errors | In O⊕O/π², c=(π³,1) has torsion-free index3; c=(0,1) has index∞. A unipotent off-diagonal π^a gives coinvariants O⊕O/π^a. | Torsion is removed before computing the bottom index.  Carried from [r2]. |
| 4.4 Bounded localization | A=[[π,1],[0,π]], C=[[π,−1],[0,π]] satisfy AC=π²I. One π does not suffice for the off-diagonal integral inverse. | Both torsion losses are retained.  Carried from [r2]. |
| 4.5 Cassels structure | R=O/π³ and length(M)=1: length(R^ε⊕M⊕M)=3ε+2, giving2 or5 for ε=0 or1. | Duplicated torsion and parity agree.  Carried from [r2]. |
| 4.6 Module induction | M=M′=X=0, a=a′=b=b′=0,k=1 gives exact identity maps R/π→R/π. There is no integer1≤i₀≤0. | Roadmap's separate zero case fixes the source boundary; no roadmap change.  Carried from [r2]. |
| 4.7 Rational descent | A nonzero bottom class c spans a line of dimension1; c=0 spans dimension0 and cannot give the same rank conclusion. Multiplication by nonzero a³ preserves nonzeroness over Φ. | Nonzero leading class and rational scalar inversion are substantive.  Carried from [r2]. |
| 4.8 Local maximal orders | In a ramified quaternion division algebra, j²=p gives normalized valuation v(j)=1/2. A 2×3 rectangular lattice has opposite multiplicity3, not a division-ring centralizer. | Uses division uniformizers and both multiplicities.  Carried from [r2]. |
| 4.9 Separated pairing | Over ℤ/9 the kernel3R has order3; identity does not kill it, but multiplication by3 does. | A bounded annihilator, not arbitrary extension alone, descends the functional.  Carried from [r2]. |
| 4.10 Large localization | Two bad affine hyperplanes have union at most2/3 of a vector space over 𝔽₃; at p=2 the analogous bound is1 and proves nothing. | The small-prime branch is not discarded.  Carried from [r2]. |
| 4.11 Locally cyclic sheaves | A cycle with monodromy−1 over 𝔽₃ has global sections x=−x, hence x=0. Constant identity monodromy permits all3 values and primitive sections. | Local cyclicity alone does not imply a primitive global section.  Carried from [r2]. |
| 4.12 Core/leading vertices | With residual Selmer dimensions(1,0), total dimension1 gives a core vertex. Dimensions(1,1) give total2 despite a one-dimensional first term. | Both dual and primal conditions are needed.  Carried from [r2]. |
| 4.13 CM exponent bound | M_m=(O/π)^m has exponent1 and lengths1,2,3 at m=1,2,3. With g generators and exponent C, (O/π^C)^g has length gC. | No square-index/uniform-field inference remains.  Carried from [r2]. |
| 4.14 Explicit exponent | With s=2,e=1 the displayed bound s+3e equals5; zero error gives2. | Exponent loss is additive, not a doubled module length.  Carried from [r2]. |
| 4.15 Leading vertices/submodule | A k-line with a prescribed nonzero vector has one-dimensional span; the zero vector spans0 and cannot detect that line. Over 𝔽₉ the underlying prime-field dimensions are2 and0. | Scalar-field and nonzero hypotheses retained.  Carried from [r2]. |
| 4.16 Stub modules | R=O/π², stub π^λR: for λ=0,1,2 its lengths are2,1,0. | Vanishing stub at the boundary is allowed.  Carried from [r2]. |
| 4.17 Rubin error bound | For a two-dimensional local target and a rank-one image, the quotient has dimension1; the annihilator condition costs that missing direction rather than identifying the image with the whole target. | The local loss is retained.  Carried from [r2]. |
| 4.18 Self-dual errors | A paired finite module M⊕M with length(M)=3 has length6. Bounding one half by3 gives total bound6, not3. | Factor2 is retained.  Carried from [r2]. |
| 4.19 Near-trivial characters | α=1+p^m gives Cα=m, which grows with m; the CGS loss r(C₁+C₂) is constant when those inputs and r are fixed. | The two error theorems are not conflated.  Carried from [r2]. |
| 4.20 Kolyvagin bound | A primitive rank-one generator with initial index s becomes index s+1 after multiplying byπ; the Selmer module is unchanged. The zero system has index∞. | Equality needs primitivity; nonzero bottom class needs its own hypothesis.  Carried from [r2]. |
| 4.21 Finite-depth bound | If b=m−a−s≥0, then the expression2m−2b−s simplifies to2a+s. At a=s=0, b=m and the bound is0. | Truncation and range hypotheses prevent negative lengths.  Carried from [r2]. |
| 5.1 Divisibility profiles | Over O/π³, zero and an empty conductor-size level have bounded index3; over O the empty-level infimum is∞. A unit vector has index0. | Finite and limiting conventions agree.  Carried from [r2]. |
| 5.2 Howard self-duality | For inert-prime residual T=k², K-local Fr=I has two fixed directions; the MR04 polynomial comparison Q(1)=0 is not Howard's invertible comparison. | Separate local interface retained.  Carried from [r2]. |
| 5.3 Rank-one freeness | With R=ℤ/25 and ℓ=61, ℓ−1=60 has valuation1 rather than2; an ideal(5) is not0 in R. | Full-depth auxiliary-prime hypothesis cannot be replaced by residual depth.  Carried from [r2]. |
| 5.4 Constructed dual Selmer | A weak system can have κ₁=0 but a nonzero higher component. Multiplying a primitive component1 byπ gives π≠0 over O, even if the bottom component vanishes. | Zero bottom value does not mean zero system.  Carried from [r2]. |
| 5.5 Generalized Cassels | R length3, ε=1, length(M)=1 gives length5 and odd parity; ε=0 gives2 and even parity. | Same parity as ε.  Carried from [r2]. |
| 5.6 Dual structure | Scaling byπ changes every finite nonzero divisibility index by1 before truncation; it does not change elementary divisors of the fixed dual Selmer module. | Primitive normalization is essential.  Carried from [r2]. |
| 5.7 Self-dual stubs | k=3,λ=1,a=b=δ=1 gives λ′=1+3−1−1−1=1 in the diamond formula; the squared quotient has length2δ=2. | Stable index is not equality at every finite level.  Carried from [r2]. |
| 5.8 Simultaneous eigenclasses | Over 𝔽₅, four bad hyperplanes occupy at most4/5; dimensions(1,1) total2 do not make a core vertex. | Simultaneous nonzero images and core-vertex conditions remain separate.  Carried from [r2]. |
| 5.9 Scaling/zero bottom | πκ≠0 over a torsion-free system module when κ≠0, but its reduction moduloπ is0. | Nonzero is not primitive.  Carried from [r2]. |
| 5.10 Self-dual bound | length(M)=2, initial index3 gives2≤3 and total finite length4≤6. A primitive equality case has index2 and total length4. | Correct half-length convention.  Carried from [r2]. |
| 5.11 Core rigidity | In O/π², multiplication byπ is nonzero but kills the socle. Lines generated by(1,π) and(1,−π) differ by2π when p is odd. | Residual agreement alone does not identify the integral lines.  Carried from [r2]. |
| 5.12 Divisibility profile | A generator scaled byπ² has truncated indices1,2,2 at depths1,2,3. | Stable defect2 is not recovered at depth1.  Carried from [r2]. |
| 5.13 Exact length | Initial index5 and system defect2 give half-length3 and total length6. Scaling byπ changes the two indices to6 and3, leaving6 unchanged. | The defect subtraction passes the scaling test.  Carried from [r2]. |
| 6.1 Exterior bidual | For R³, degree2 exterior power has rank3; degree0 is R. Over ℤ, a torsion module has dual0 and positive-degree bidual0. | General bidual is not automatically the original module.  Carried from [r2]. |
| 6.2 Higher-rank hypotheses | Trivial residual k has invariant dimension1 and fails H⁰ vanishing. A scalar τ=2 over 𝔽₅ has coinvariants0, not rank1. | Both exclusions are tested.  Carried from [r2]. |
| 6.3 Contractions | e₁* contracts e₁∧e₂ to e₂; reversing the ordered contraction gives−e₂. A zero functional has full kernel and is not a chosen rank-one quotient map. | Functional-first sign and surjectivity retained.  Carried from [r2]. |
| 6.4 Modified units/Rubin lattice | In ℚ(i), a root-killing modulus above3 excludes i since i≠1 modulo3. For x=i(2+i)/(2−i), valuations at the two primes above5 are1 and−1, and x≡1 modulo3. | Both root killing and prescribed finite support matter.  Carried from [r2]. |
| 6.5 Stark systems | For core rank1 and one relaxed prime, a free rank2 Selmer module has degree2 determinant rank1. A rank3 module has degree2 rank3. | The correct rank condition determines the determinant line.  Carried from [r2]. |
| 6.6 Stark Fitting formula | For O/π³⊕O/π, Fitt₀=(π⁴), Fitt₁=(π), Fitt₂=O. Multiplying a system byπ multiplies its value ideals byπ. | Equality is attached to a basis.  Carried from [r2]. |
| 6.7 Signed regulator | For ε=e₁∧e₂, v=e₁*, φ=e₂*, the signed one-prime regulator is e₁ and its edge evaluation1; the unsigned functional-first contraction gives−e₁ and edge−1. | Conductor sign is necessary; r=0 excluded here.  Carried from [r2]. |
| 6.8 Regulator isomorphism | For a basis system with value ideal(π³), scaling byπ gives(π⁴)⊂(π³). Under an isomorphism both sides scale identically. | General elements yield inclusion; bases yield the Fitting equality.  Carried from [r2]. |
| 6.9 Exterior/bidual comparison | With h=e₁*, ε=e₁∧e₂, both routes around the contraction/evaluation square give ξ(e₂), evaluating to1 on e₂*. Two ordered contractions reverse sign on swapping order. | Unsigned Cₙ is consistent with the determinant convention.  Carried from [r2]. |
| 7.1 Higher Euler systems | A degree3 norm relation with a=b=1 and factor3 reads3·1=3·1; replacing a by0 gives0≠3. At rank0 the exterior carrier is R, but rank-positive descent is not inferred. | Norm relation determines more than a family of elements.  Carried from [r2]. |
| 7.2 Higher derivative | The empty permutation term is1; the one-prime correction determinant is0; for two primes with off-diagonal entries a,b it is−ab. For a=b=1 this is−1. | Ordered correction and integral norm transfer retained.  Carried from [r2]. |
| 7.3 Rubin–Brumer–Stark element | Θ=0 has inverse-image element0 under the rational order isomorphism. For G=C₂, the minus projector(1−c)/2 is not integral at2. | Rational existence is separate from dyadic integrality.  Carried from [r2]. |
| 7.4 Higher-rank Fitting control | For a cyclic dual module O/π³ and Euler valueπ⁴, (π⁴)⊂(π³); valuations give3≤4. | Ideal containment direction agrees with the length bound.  Carried from [r2]. |
| 7.5 Rank-one specialization | On a finite free rank-one module, degree1 bidual evaluation is identity. The containment(π⁴)⊂(π³) becomes the rank-one inequality3≤4, not4≤3. | Reflexivity and coefficient/prime comparisons retained.  Carried from [r2]. |
| 7.5a Determinantal systems | For the ℚ Tate example, ordinary compact support retains the archimedean ℤₚ contribution; dropping it can change degree-one cohomology fromℤₚ to0. A rank-one determinant map with imageπO is not surjective. | Neither quasi-isomorphism nor generation follows from rank alone.  Carried from [r2]. |
| 7.6 Rubin–Stark class bounds | For O/π³⊕O/π, successive Fitting valuations are4,1,0; using only the exponent3 would miss length4. | Conditional regulator input and full Fitting sequence retained.  Carried from [r2]. |
| 7.7 Archimedean/minus dictionaries | At odd p, an even character has χ(c)=1, while the minus eigenspace has c=−1; 1≠−1. | Finite-place minus units do not replace archimedean Rubin–Stark units.  Carried from [r2]. |
| 8.1 Towers/decomposition | For K=ℚ(√−7), p=3, both3 and5 are inert. In its anticyclotomic ℤ₃ tower D₅=1, while D₃ is infinite: otherwise the tower would be everywhere unramified. | The no-complete-splitting hypothesis is not automatic for every ℤₚ tower.  Carried from [r2]. |
| 8.2 Rubin tower hypotheses | [[1,1],[0,1]]−I has rank1 and free rank-one coinvariants; the identity on rank2 has coinvariant rank2. | A nontrivial unipotent is not interchangeable with identity.  Carried from [r2]. |
| 8.3 Restricted X∞ | In the cyclotomic ℚ Tate example the restricted unramified class module is0 and its characteristic ideal is the unit ideal. Scalar4 on a discrete character module gives scalar1/4 on its contragredient dual. | Restricted and true Selmer groups/action conventions remain distinct.  Carried from [r2]. |
| 8.4 Norm-compatible class | A degree3 field transition has res∘cor equal to a three-term group norm. Under trivial action this is×3; an identity transition is×1. | The inverse system uses corestriction.  Carried from [r2]. |
| 8.5 Λ-adic coefficients | For the Tate example, augmentation control can have cokernelℤₚ; reduction modulo(p,T) then gives𝔽ₚ. H²[m] can be0 while H²/m is𝔽ₚ. | Torsion subgroup and quotient correction are distinguished.  Carried from [r2]. |
| 8.6 Field hypothesis | ℚ(∛2)/ℚ has degree3 and is not Galois; it is not a finite layer of an abelian ℤₚ^d extension. The identity field layer has degree1 and is allowed. | General field extensions are not silently tower levels.  Carried from [r2]. |
| 8.7 Λ-index | For x=(p,T)∈Λ², evaluation values generate(p,T), a proper nonprincipal ideal. Its height-one gcd is1. | The full evaluation ideal is not the principal index.  Carried from [r2]. |
| 8.8 True Selmer/local term | Full local finite condition gives singular quotient0. A zero condition gives the full local module. A line O·[1] in a nontrivial regular group representation is moved by a nonidentity group element. | Equivariance cannot be omitted from the chosen condition.  Carried from [r2]. |
| 8.9 Infinite twists | If γ acts by u=1+p, the annihilator is(γ−u); specializing γ=1 gives multiplication by1−u=−p, not0. | A nontrivial twist does not preserve the untwisted augmentation quotient.  Carried from [r2]. |
| 8.10 Evaluation constant | Unipotent off-diagonalπ^m gives a torsion coinvariant O/π^m of cardinality #k^m; m=0 gives none and constant1. | The evaluation loss is not automatically a unit.  Carried from [r2]. |
| 8.11 Split-prime condition | A quadratic ramified character with inertia−1 has invariants0 over odd residue characteristic, whereas the trivial character has invariant dimension1. | Split places still require the stated local condition.  Carried from [r2]. |
| 8.12 Λ-systems | At p=3, ℓ=109 has ℓ−1=108 divisible by27. An edge with identity comparison rejects local values0 and1 because0≠1. | Prime depth and actual edge equations both matter.  Carried from [r2]. |
| 8.13 Exceptional primes | For H²=ℤₚ as an augmentation module, T kills it. For H²=Λ, H²[P]=0 but H²/P is infinite for height-one P. | Exceptional torsion primes are not defined by finiteness of every quotient.  Carried from [r2]. |
| 8.14 Twist transport | Twρ(γ−ρ(γ)u)=ρ(γ)(γ−u). For ρ(γ)=u⁻¹, the twisted module has root1 while the original has rootu. | The inverse automorphism direction agrees with characteristic-ideal transport.  Carried from [r2]. |
| 8.15 Tower restriction | A dual character to u has valueu⁻¹, notu. A lattice with u=1+p has no fixed vector, but its discrete quotient has p-torsion fixed vectors. | Lattice H⁰ vanishing does not eliminate discrete invariants.  Carried from [r2]. |
| 8.16 Iwasawa Poitou–Tate | If the singular local module is0, its image is0 and the two Selmer duals in the comparison coincide. | The exact sequence has the correct limiting boundary.  Carried from [r2]. |
| 8.17 Finite coefficient derivatives | p=2,ℓ=5: full cyclotomic degree4 differs from ray degree2. For unramified quadratic O/ℤ₃, Λ/(3,Fr₇−1)=𝔽₉ has characteristic3 and9 elements, not a cyclic integer quotient. | Both full tame fields and O-cyclic coefficients are needed.  Carried from [r2]. |
| 8.18 Specialization lengths | Λ/(T^a,T+π^m) has O-length ma; Λ/(π^a,T^m+π) also has O-length ma. The pseudo-null moduleΛ/(π,T) contributes bounded length1, slope0. | Horizontal/vertical slopes distinguish bounded error from leading order.  Carried from [r2]. |
| 8.19 Principal index | Evaluation ideal(p,T) has height-one gcd1 although it is proper. The defined principal index of0 is0, whereas char(0 module)=Λ. | Zero convention and principalization are explicit.  Carried from [r2]. |
| 8.20 Finite generation | X=0 has residual dimension0 and needs0 generators; Λ has residual dimension1 and needs1. | Topological Nakayama agrees at both boundaries.  Carried from [r2]. |
| 8.21 Exceptional rank one | For the ℚ cyclotomic Tate example the restricted class module is0; the augmentation-character moduleℤₚ is infinite but killed byγ−1. | A character annihilator need not prove finiteness.  Carried from [r2]. |
| 8.22 Specialized control | A fixed finite error of length C contributes C/N→0 to a length divided by N. An augmentation errorℤₚ is infinite and does not meet that bound. | Exceptional primes must remain excluded or separately handled.  Carried from [r2]. |
| 8.23 Generic core rank | For O unramified quadratic overℤₚ, a rank-one O-module has ℤₚ-rank2. | Restriction of scalars includes coefficient degree.  Carried from [r2]. |
| 8.24 Blind spots | κ=0 is blind at every prime. Multiplying a primitive system byπ makes its residual class0 although it can be nonzero overΛ. | Nonzero does not imply Λ-primitivity.  Carried from [r2]. |
| 8.25 Euler weak Leopoldt | c=0 has index ideal0 and gives no torsion conclusion. A unit bottom class has indexΛ. | The nonzero hypothesis cannot be dropped.  Carried from [r2]. |
| 8.26 Residual primitivity | A unit remains nonzero modulo every height-one prime; π reduces to0 modulo(π). A nonzero class modulo the maximal ideal cannot already be0 modulo a contained height-one prime. | Fixed-filtration implication has the right direction.  Carried from [r2]. |
| 8.27 Kolyvagin weak Leopoldt | A free summandΛ in X would give X/PX a copy ofΛ/P, an infinite module, contradicting the finite specialized Selmer bound. | Positive Λ-rank is excluded by the stated nonzero-class/control input.  Carried from [r2]. |
| 8.28 Self-dual Λ bound | M=Λ/(g²) gives X∼Λ⊕M⊕M and char(Xtors)=(g⁴). If the leading quotient has char(g³), the half-bound is2≤3 and the doubled bound4≤6. | Factor2 and rank-one free part retained.  Carried from [r2]. |
| 8.29 Induction | At r=0, the product of elementary factors is1 and its valuation0; there is no induction step to choose. At r=1, one factorπ^a contributes a. | Zero-rank base case is explicit.  Carried from [r2]. |
| 8.30 MR Λ bound | In O with π²=−5, U^(2m)+5=(U^m−π)(U^m+π), so the p-based perturbation is reducible. U^N+π is Eisenstein; length_O(O[[U]]/(π^a,U^N+π))=Na. | The roadmap's uniformizer replacement fixes the ramified case.  Carried from [r2]. |
| 8.31 Error-tolerant Λ bound | A twist-independent finite error E contributes E/N→0; the old loss Cα=m for α=1+p^m need not stay bounded when m grows with N. | Uniformity is proved before the asymptotic argument.  Carried from [r2]. |
| 8.32 Equality | At specialization, initial index s+d and defect d give length s. A bounded d disappears after division by N; a defect d=N has limit1 and would change equality. | Λ-primitivity/bounded-defect hypotheses are not optional.  Carried from [r2]. |
| 8.33 Rubin error factor | r=0 gives aτ^(5r)=1; r=1,aτ=5 gives3125. At aτ=1 every rank has error factor1. | Exponent5r and unit-error case agree.  Carried from [r2]. |
| 8.34 Residual μ transfer | A finite residual module𝔽ₚ has finite dimension1; Λ/(π)≅k[[T]] has infinite k-dimension. | The residual finiteness hypothesis excludes positive μ.  Carried from [r2]. |
| 8.35 Ordinary coefficient prime | In Λ_(π), T is a unit, so an O-finite augmentation module vanishes. Ordinary balanced ranks give1−1=0; full/full gives2 and strict/strict gives−2. | Ordinary conditions are needed for the torsion rank balance.  Carried from [r2]. |
| 8.36 Augmentation divisibility | If μ(M)=0, its coefficient-prime valuation is0; the desired inequality is0≤the nonnegative initial-index valuation. Horizontal inequalities alone give no such coefficient-prime value without this input. | The coefficient prime is covered separately.  Carried from [r2]. |
| 8.37 Integral Rubin divisibility | With aτ=1, the error factor is1 and char(X)∣ind(c). Scaling c byπ multiplies its index byπ and weakens the bound. | Correct divisibility direction.  Carried from [r2]. |
| 8.38 Divisibility up to p-power | With aτ=p²,r=1, aτ^(5r)=p¹⁰; inverting p turns that factor into a unit. | Integral and rational conclusions differ by the stated p-power.  Carried from [r2]. |
| 8.39 True Selmer divisibility | In rank-one local algebra, a restricted dual factorπ and a local quotient factorπ² multiply toπ³. A rank-zero singular module cannot supply this rank-one factorization. | Local rank and nonzero quotient hypotheses retained.  Carried from [r2]. |

## Not verifiable

No source needed for the changed passages remained unreadable. Rubin's published pagination was not re-certified: this review uses the explicitly cited readable 1999 draft. The previous report's limitation concerning the published extraction remains. Source checks outside the changed passages and their dependencies were not repeated; the carried table records their provenance.

The source-service retry resolved the initial licence-class lookup for Rubin; there is no outstanding missing-reference request. Elaboration and boundary computations do not prove the admitted theorems.

## Source issues

The first two entries were checked in the source passages used this round. The remaining entries are retained from [r2], without a fresh source audit outside the incremental scope.

- **Gap** in Rubin at proof of Corollary C.2.2, printed p.162 of the 1999 draft: the source says topological finite generation follows for unrestricted B; it should justify that conclusion or assume finite generation, as the unit applications permit; affects the proof.
- **Error** in Rubin at Proposition B.2.4, printed p.152 of the 1999 draft: the source says lattice cohomology has no divisible elements in every degree; it should assert no nonzero divisible subgroup generally, and require the finite inverse-system condition to exclude infinitely divisible elements; affects a stated result.
- **Error** in CGLS at Proposition 3.3.11(i), printed p.23: the source says an index between 1 and 2s always exists; it should separate M=0, where s=0 and the asserted index does not exist; affects a stated result.
- **Misprint** in CGLS at proof of Proposition 3.3.11(ii), printed p.23: the source says the element used in the β argument belongs to M; it should belong to M′, the second summand in β's domain; affects the proof.
- **Misprint** in Sakamoto at proof of Lemma 4.13, printed p.2314: the source says the last functional vanishes on the kernel vectors; it should say the first functional, defined to be h; affects the proof.
- **Misprint** in Howard at proof of Theorem 2.2.10(b), printed p.28 of the arXiv version: the source says the vertical-prime perturbation is T+p^m; it should be T^m+p, as used on the preceding page; affects the proof.
- **Error** in CH at Definition 7.1(E2), printed p.29 of the author's version: the source says the local operator uses Frobenius over Kλ; it should use rational Frobenius, whose square is Kλ Frobenius, consistently with Lemma 4.7; affects a stated result.
- **Error** in KY at the definition after Lemma 3.0.3, printed p.36: the source says the scalar intersection is open in O×; it should require a nontrivial scalar, since cyclotomic determinants need not allow full coefficient-field dimension; affects the proof.

For the new B.2.4 source issue, an explicit witness is G=∏_{j≥1} C_{3^j}, T=ℤ₃, degree 2. The tower H¹(G,ℤ/3ⁿ)=⊕_j Hom(C_{3^j},ℤ/3ⁿ) is countable and not Mittag–Leffler: at n=1, the transition image from depth k+1 vanishes on factors j≤k, while the preceding image contains the j=k character. Hence lim¹≠0 and ∩_n 3ⁿH²(G,T)≠0. This does not refute the roadmap: it assumes topological finite generation and uses only the corrected no-divisible-subgroup statement. The same distinction is explicit in ArithmeticGaloisDuality §R02.1.3.

[r2]: PRREVIEW-EulerSystemsAndKolyvaginSystems~2.md
