# Review of OverconvergentAutomorphicForms (pull request #1422 at bc53e3c)

**Verdict:** needs changes

## R01 (P1) — Resolve the character-space contract against its actual owner

**Location:** `TauCetiRoadmap/OverconvergentAutomorphicForms/README.md:17`, also lines 66, 167, 357 and 394: “PhiGammaModulesAndIwasawaCohomology §4.0”.

**Claim:** This section supplies the compact character spaces and the named `localMultiplicativeCharacterSpace K` used by the adapter. Neither the section nor that declaration exists in the supplier's present README or Suggested.lean. Repetition of the old reference in LocallyAnalyticDistributions does not resolve it. This is supplier drift, not a request to reconstruct character spaces here.

**Witness:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:1256` instead starts §2.7; lines 1265–1288 construct compact characters, the Kˣ product with G_m, and their universal interfaces. Neither file contains the claimed identifier.

**Repair:** Replace every §4.0 reference with §2.7 and cite its described representing object, without claiming an unavailable declaration name. Identify the adapter with that object's coefficient extension by universal evaluation. The repaired contract retains the test δ(5)=3, δ(2)=2: the new uniformizer 10 has value 6, inversion gives 1/6, and the compact factor alone cannot represent the independent value 3.

## R02 (P1) — Repair the geometric supplier locators

**Location:** `TauCetiRoadmap/OverconvergentAutomorphicForms/README.md:65`, also lines 15, 979 and 1316: “ShimuraCompactifications C3.6a, C3.10, C6.20–C6.47”. The ordinary transition citations at lines 1210 and 1316 also point to the wrong HodgeTateAndCanonicalSubgroups section.

**Claim:** The boundary, contraction and formal-functions contracts are attributed to nonexistent sections. The present supplier has numerical Layers 4 and 8 and no C3/C6 alias dictionary. Thus §6.1 and §7.5 do not identify the prerequisites they consume. The ordinary transitions at lines 1210 and 1316 are also assigned to HodgeTateAndCanonicalSubgroups §4.6, which is a period-image bound; its actual Atkin–Lehner transition theorem is §4.3.

**Witness:** `TauCetiRoadmap/ShimuraCompactifications/README.md:1605` is §4.7, formal functions; line 3451 is §8.21, cusp charts; line 3889 is §8.45, all-prime models. No C3/C6 targets occur. `TauCetiRoadmap/HodgeTateAndCanonicalSubgroups/README.md:1265` supplies the Atkin–Lehner transitions in §4.3.

**Repair:** Cite the actual individual contracts: §§4.1, 4.3–4.4 for refinements/correspondences, §4.7 for formal functions, §§4.9–4.11 for boundary/refinement comparisons, §§8.21, 8.23, 8.25, 8.28 for Hilbert charts and semiabelian objects, §§8.32–8.38 for contraction/minimal cusps, and §§8.45–8.50, 8.56–8.57 for integral ordinary charts, stabilizers and gluing. Repoint the ordinary Atkin–Lehner/canonical-quotient transition citations to HodgeTateAndCanonicalSubgroups §4.3, retaining §4.6 only for period bounds. At p=5,n=1,ε=1/100, §4.3 has source radius 1/20 and target radius 1/100, so it supplies the required scaled map. Keep each contract's normality, level and base hypotheses. On the blowup chart x=u, y=uv, the repaired boundary citation compares derived pushforwards: the pullback of (xy) is (u²v), while the reduced boundary is (uv). It must not promise equality of these two ideals. `AutomorphicBundles B3.Hilbert.1–3` is valid through its explicit dictionary and should be retained.

## R03 (P2) — Construct expansions at ramified cusps as well

**Location:** `TauCetiRoadmap/OverconvergentAutomorphicForms/README.md:1068` restricts the construction to “each admitted unramified cusp”; line 1070 subsequently requires “all relevant boundary cusps” for the cuspidality equivalence.

**Claim:** The all-boundary constant-term criterion consumes expansion maps that this section has not constructed. Neither the general tame-level scope nor the criterion excludes ramified cusps. The cited classical theory already treats them, so restricting the analytic extension to unramified cusps leaves a scope hole.

**Witness:** `aip-cusp line 781` and `aip-cusp line 782`, §3.6, manuscript p.19, replace M by N₂⁻¹M at ramified cusps. For M=ℤ, N₂=5, q^(1/5) belongs to that chart and not the M-series chart.

**Repair:** Define the analytic coefficient-line expansion at every admitted cusp using its actual exponent lattice, level phases and stabilizer action, then carry these through the comparison and constant-term theorem. Import the classical chart from `ShimuraCompactifications` §§8.14, 8.21, 8.40 and `AutomorphicBundles` §7.5. Add the tame-ramified test p=3, N₂=5: on the covering chart t=q^(1/5), t⁵=q, t has constant term 0 and 1+t has constant term 1. Retain residual descent; this test does not assert t is a global invariant form. Component coverage at the actual Igusa level remains necessary.

## Verified sound

The review read all 1,562 README lines and the 47-line Lean file, the normative writing checklist and contribution rules, and main-branch examples `AlgebraicVectorBundles` and `PadicMeasuresIwasawaAlgebras`. The three findings above are repairable. They do not require a new roadmap or a reversal of supply.

**Gate and Lean.** The worker's gate at the requested head reports every scan and the targeted build passing, including no outside-folder changes, stray files, sorry'd data or option overrides. The exact head was confirmed and the outside-folder diff was empty. Independent direct elaboration of `TauCetiRoadmap/OverconvergentAutomorphicForms/Suggested.lean` exited 0 without warnings. It has one `import Mathlib`, the required namespace and module docstring, and zero declarations. Thus there are zero elaborated declaration signatures to compare, zero dropped section hypotheses and zero sorried declarations for a one-tactic padding probe. No Lean file was changed.

The prescribed dependency check returned:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

No UPWARD or CYCLE line occurred. Reading the individual Needs lines identified the locator defects above; a graph over roadmap names cannot detect those. §8.2's use of the later §8.5 is not a cycle: the latter's block identity and supplied tower action do not use §8.2's canonical-range theorem.

**Headline inventory.** The README's deep endpoints are: general Jacquet essential admissibility/coherent character duality (§0.6); definite unitary eigenvariety dimension, Cohen–Macaulayness and reducedness (§0.7); Hilbert coefficient existence and algebraic specialization (§§2.2–2.3); geometric/arithmetic presentation and AIP comparisons (Layers 4–5); family Koecher, torsion boundary vanishing, Fourier injectivity and Hecke compatibility (§§6.1–6.5); cuspidal Banach modules and complete continuity (§§6.6–6.7); ordinary Igusa, analytic-completion and toroidal/minimal comparisons (Layer 7); and Siegel, general toroidal and all-degree Bruhat coefficient/distribution comparisons (Layer 8). Each group is named in the Lean docstring with missing carriers. Object searches at the pins found no native analytic induction, locally analytic Jacquet module, Hilbert/Siegel coefficient tower, Igusa tower or corresponding geometric coefficient cohomology that would make these statements short native signatures. Elementary determinant, tensor and cocycle identities would not replace them. No omitted statable headline or padding finding was established.

**Pinned declarations opened.** Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following 16 declarations in 15 rows were read, including their surrounding hypotheses:

| Pinned file and line | Object and scope checked |
| --- | --- |
| `Mathlib/RingTheory/Norm/Defs.lean:61` | `Algebra.norm` is the determinant of multiplication; the finite-free instance is essential to the intended degree interpretation. |
| `Mathlib/RingTheory/Norm/Defs.lean:64` | `Algebra.norm_apply` identifies that determinant, rather than postulating an embedding decomposition. |
| `Mathlib/RingTheory/Norm/Transitivity.lean:261` | `Algebra.norm_eq_prod_embeddings` includes separability and an algebraically closed target. For a merely splitting field use the splitting version in `Mathlib/RingTheory/Norm/Basic.lean:176`, or descend the equality. |
| `Mathlib/LinearAlgebra/Charpoly/BaseChange.lean:40` | `LinearMap.det_baseChange` transports the determinant on finite free modules. |
| `Mathlib/NumberTheory/NumberField/Basic.lean:415` | `NumberField.RingOfIntegers.rank` gives the integral rank, without a condition that p be unramified. |
| `Mathlib/NumberTheory/NumberField/Units/Basic.lean:58` | `NumberField.isUnit_iff_norm` uses absolute rational norm 1, allowing norm −1. |
| `Mathlib/LinearAlgebra/Dimension/Constructions.lean:376` | `Module.finrank_baseChange` supplies the scalar-extension rank calculation. |
| `Mathlib/Topology/Algebra/Module/ModuleTopology.lean:340` | `IsModuleTopology.continuous_of_linearMap` uses the source module topology. |
| `Mathlib/Topology/Algebra/Module/ModuleTopology.lean:696` | `IsModuleTopology.isTopologicalRing` uses the finite-module algebra hypotheses. |
| `Mathlib/NumberTheory/Padics/ProperSpace.lean:57` | `PadicInt.compactSpace`; finite products give the needed integral compactness. |
| `Mathlib/Data/Matrix/ColumnRowPartitioned.lean:39` | `Matrix.fromCols` is the horizontal block carrier, including the empty index case. |
| `TauCeti/Topology/Algebra/Algebra/Norm.lean:29` | `TauCeti.continuous_algebraNorm` applies to finite free algebras with the stated module topology. |
| `TauCeti/RingTheory/Norm/Units.lean:40` | `TauCeti.Algebra.normUnits` is `Units.map` of the norm; it does not itself assert finiteness or a geometric decomposition. |
| `TauCeti/NumberTheory/NumberField/NarrowClassGroup/CoprimeRepresentative.lean:162` | Prime-to-modulus representatives require a nonzero modulus; p satisfies it. |
| `TauCeti/Algebra/Lie/HighestWeight/Module.lean:172` | Highest-weight generation is a Lie-module theorem, not construction of an algebraic group representation. |

**Ownership and supplier resolutions.** Object searches used the roadmap service over main/open heads, the provided sibling corpus and board packages, as well as the pinned libraries. The constructions owned here are the coefficient applications and comparisons, not a second tower, character-space, canonical-subgroup or Fredholm machine. In particular `packages/HigherHidaAndColemanTheory/design/README.md:14` and lines 141–143 import these analytic induction/Bruhat families; they do not independently own them. The generic induction in ordinary smooth or real/complex unitary representation theory is a different object. No duplicate fully qualified Lean declaration is possible in this empty namespace. Open-work ownership was checked through the available corpus; unavailable unpublished work is not inferred.

The following anchors cover all 15 named supplier roadmaps. Their contracts were read directly; the unresolved citations are the findings above, not accepted scanner output:

| Supplier and repository location | Resolution |
| --- | --- |
| `TauCetiRoadmap/AlgebraicVectorBundles/README.md:228` | L0B–L0C: finite locally free pullback, tensor and dual operations. General Banach effectivity does not follow from this. |
| `TauCetiRoadmap/AutomorphicBundles/README.md:217` | Numbering dictionary resolves B0–B5; B3.Hilbert.n = §7.(n+2). |
| `TauCetiRoadmap/AutomorphicBundles/README.md:2343`, `:2430`, `:2496` | §§7.3–7.5 supply ordinary gluing, splitting-filtration coefficient lines, and completed cusp-unit invariant series. The scanner's B3.Hilbert.1 warning is a false positive. |
| `TauCetiRoadmap/PerfectoidTowers/README.md:3200`, `:3332` | P9.11 and P9.13 distinguish all-open smooth-weight function descent from integral matrix-coboundary effectivity; both the matrix and inverse must be integral. |
| `TauCetiRoadmap/HodgeTateAndCanonicalSubgroups/README.md:1324` | §§4.6–4.8: period estimates retain strict odd-prime versus stated dyadic bounds and the unsplit ramified algebra. |
| `TauCetiRoadmap/HodgeTateAndCanonicalSubgroups/README.md:1370`, `:1573` | §5.1 ordinary finite étale Igusa models and §5.12 the bounded AIP/HT comparison; no minimal-space Igusa torsor is supplied. |
| `TauCetiRoadmap/PerfectoidShimuraVarieties/README.md:961`, `:1253` | §1.30 pairing-component/full-tower distinction; §3.4 row quotient frame and the similitude factor on its dual. |
| `TauCetiRoadmap/PerfectoidShimuraVarieties/README.md:2196`, `:2302`, `:2322` | §§6.12–6.15 actual analytic level groups, reduced torsors and common refinements; quotient and cyclotomic twists survive passage to coefficients. |
| `TauCetiRoadmap/LocallyAnalyticDistributions/README.md:2007`, `:2867` | §§3.3 and 4.15 compact-character adapters and analytic Banach stages. Its old reference to PhiGamma §4.0 does not fix R01. |
| `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:363` | §3a.1 imports the unit-character torsion/principal splitting and universal character with the dyadic component retained. |
| `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:1256` | §2.7 has the actual compact and local multiplicative character geometry; R01 repairs the consumer citation. |
| `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:205` | Shared analytic functions, distributions, coadmissibility and Banach/analytic dualities, with the analytic field and topology. Its contract table at line 2399 identifies the legacy function/distribution names with LA and D. |
| `TauCetiRoadmap/CompletedCohomologyPartII/README.md:184`, `:243` | F.1/F.4 distinguish Banach admissibility and analytic vectors. General-rank one-place unitary coefficients here are additional arithmetic specialization. |
| `TauCetiRoadmap/PadicFamilies/README.md:1611`, `:1687` | §§2a.14 and 2a.17 retain relatively factorial weight charts and the distinction between coherent fibres and generalized eigenspaces. |
| `TauCetiRoadmap/AdicSpacesPartII/README.md:2759` | R0.5 completed Banach tensors include their topology/lattice choices. |
| `TauCetiRoadmap/AdicSpacesPartIV/README.md:1790`, `:2165`, `:2524` | R5.5–R5.7 separate smooth products, coefficient sheaves and the rational affinoid product theorem from integral assertions. |
| `TauCetiRoadmap/AdicSpacesPartIII/README.md:9136`, `:9594` | R3 associated finite-module sheaves and rational Kiehl equivalence. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:1605`, `:3343`, `:3451`, `:3802`, `:3889`, `:4102` | Formal functions, cusp lattices/charts, geometric expansions, all-prime models and stabilizers exist under these numerical labels. R02 corrects the consumer's absent labels. |

The additional unitary proof inputs were also opened: `breuil-ding line 3282` (Lemma 6.1, pp.81–82), `bhs-modulaire line 1091` and `bhs-modulaire line 2017` (Proposition 3.11 and Proposition 5.3), `bhs-smooth line 1025` (Lemma 3.8, p.22), and `chenevier line 829` and `chenevier line 866` (Proposition 6.4 and Lemma 6.5, pp.20–21). They support the local regular model, projective chart, depth and semisimple-fibre arguments with the retained hypotheses. No patching dimension was transferred to the unpatched space. AIP-adic Proposition 2.8 at `aip-adic line 400` supplies the character-neighbourhood extension with odd/dyadic depth 1/3. The BHW quantitative-radius issue below was checked against the rendered printed page as well as the extraction.

**Seeded source audit: 15 of 15 targets.** All requested texts were available in the legal local cache. No extra locator marked unverified was found in the README. “Extension” below means an explicitly new target with added construction/hypotheses, not a claim that the cited source already proves the entire extension.

| Target | Opened locator and source-line witness | Hypotheses and support |
| --- | --- | --- |
| 0.1 integral algebra/norm | BHW §6.1, pp.1756–1757; `bhw line 1843`; pinned determinant/rank anchors above | BHW supplies the number-field weight setting. Compactness and integral norm base change are correctly attributed to finite bases/determinants, not to an integral splitting at ramified p. |
| 0.4 finite coefficients/induction | BP §6.2, pp.148–153; `bp line 6858`, `bp line 7060` | Genuine analytic neighbourhood, Weyl-conjugated inverse Borel character, normalized positive torus, finite-character extension, bounded-open-disc dual. Nonreduced affinoid extension is an additional target. |
| 1.2 equalizers | BHW Def.6.5, p.1758, `bhw line 1898`; Heuer Prop.3.8, p.15, `heuer line 651` | Scalar equalizers and formal-unit descent support the line case. Infinite Banach effectivity is explicitly conditional on its actual local model, not inferred from finite-rank descent. |
| 2.3 algebraic specialization | BHW Rem.6.7, p.1758, `bhw line 1919`; AIP-adic Prop.4.3, p.16, `aip-adic line 667`; Thm.6.7(2), p.29, `aip-adic line 1243` | Prop.4.3 constructs the formal line; the explicit locally algebraic comparison is Thm.6.7(2). Individual embedding weights require generic splitting and actual differential frames. |
| 3.2 weight pullback | AIP-cusp Prop.3.14/Rem.3.15, manuscript p.17, `aip-cusp line 681`, `aip-cusp line 700` | Rational invertible sheaf pullback; integral base change has a finite-group cohomology obstruction, retained in the target. |
| 5.5 Frobenius/restriction | AIP-adic Prop.4.8, p.19, `aip-adic line 784`; Prop.6.5, p.27, `aip-adic line 1159`; Thm.6.7(3), p.29, `aip-adic line 1246` | Quotient differentials multiply the normalized frame by p; the coefficient map is inverse-pullback, not identity transport of its coordinate. |
| 6.1 cuspidality/Koecher | AIP-adic Prop.8.4, pp.36–37, `aip-adic line 1505` | Degree greater than one, normal finite Igusa chart algebras and boundary codimension at least two. Cusp ideal is distinct from mere extension across the boundary. |
| 6.4 wild correspondences | BHW §10.3, pp.1789–1790, `bhw line 3083` | Level ne+1, conjugation by the local uniformizer, inverse norm trace factor and quotient differential frame are retained. |
| 6.6 cusp Banach modules | AIP-cusp Thm.3.16/Cor.3.24, pp.18,21–22, `aip-cusp line 715`, `aip-cusp line 862`, `aip-cusp line 890`; AIP-adic Cor.8.3, p.36, `aip-adic line 1484` | Projective Banach presentation and field specialization; the global-Hasse affinoid cofinal replacement is required. Partial-Hasse affinoidness is not assumed. |
| 7.1 torsion-first completion | BHW Prop.6.6 and its proof, p.1758, `bhw line 1913`; Heuer Prop.3.8, p.15, `heuer line 661`; AIP-adic p.37, `aip-adic line 1533` | Torsion colimit precedes completion/inversion. The second wild index and its isometric model comparison are explicit additional targets, not consequences of the good-reduction remark alone. |
| 7.5 toroidal/minimal extension | BHW Rem.6.9, p.1759, `bhw line 1933`; AIP-cusp §3.6, pp.19–20, `aip-cusp line 785`, `aip-cusp line 801`; AIP-adic p.37, `aip-adic line 1524` | Semiabelian toroidal torsor, cusp-unit invariant pushforward and formal functions; no torsor on the contracted minimal cusp. Supplier labels need R02. |
| 8.1 row chart | DRW §§2.3–2.4, pp.15–17, `drw line 677`, `drw line 736` | Symplectic row convention, J=A+ZC and contragredient/similitude correction; the actual quotient frame is supplied separately. |
| 8.2 Siegel coefficient action | DRW Props.3.6.10–3.6.12/Cor.3.6.13, pp.46–47, `drw line 2057`, `drw line 2101` | p>2g for this numerical canonical-subgroup range; c_g+n−1<w≤n. Roadmap correctly restores the lower bound and asks for a uniform margin instead of inferring one from a pointwise strict bound. |
| 8.3 scalar/algebraic coefficients | DRW equation (5), p.20, `drw line 938`; §3.1, pp.23–25, `drw line 1066` | Determinant inverse in the coefficient coordinate and the quotient frame, with its supplied full-similitude linearization. A dual frame is a different bundle. |
| 8.7 all-degree Bruhat families | BP §6.3.1, Prop.6.3.3/Cor.6.3.4 and Props.6.3.6–6.3.7, pp.154–155, `bp line 7117` | Weyl/root shifts, finite-character conductor, finite-flat local trivialization and finite quasi-Stein-union derived comparison retained. General-affinoid norm extension is owned in §0.4. |

**Computed adversarial pass: 134 rows.** The rows below record explicit computations, including negative controls. “Retain” means the existing statement passes that instance, not that an example proves the general theorem. Definitions, actions, maps and major API assertions are separated where they have different tests. Values are characteristic-zero unless a residue-ring test is specified. Formal spaces, fans and perfectoid towers are tested through their actual stated local models; no abstract arbitrary data is substituted as a headline.

| Statement | Instances tried | Computed sides / wrong model | Result and change |
| --- | --- | --- | --- |
| 0.1 integral algebra, rank/topology | F=ℚ; F=ℚ(√5), p=5 | Ranks 1 and 2. The quadratic integral algebra mod 5 has a repeated root, not two separated embedding factors. | Retain ramified finite-free form. |
| 0.1 norm and tensor inclusion | Scalar a in degrees 1,2; a=0,−1,2 | Norms a and a²: (0,0), (−1,1), (2,4); base-change determinants give the same pairs. | Retain; no forced positive norm on all global units. |
| 0.1 unit norm | F=ℚ(√5), ε=(1+√5)/2 | N(ε)=−1, N(ε⁻¹)=−1, product 1; both are units. | Retain both signs. |
| 0.1 H_r | p=2, u=−1 | u−1=−2: membership in H₁ true, H₂ false; H₀ is all units. | Retain dyadic depth distinction. |
| 0.2 geometric/arithmetic weight spaces | d=1,2; trivial character | Dimensions (1,2) and (2,3); trivial character evaluates 1 on every unit. | Retain finite components and extra arithmetic factor. |
| 0.2 inverse norm map | F=ℚ, p=5, w=t=id, x=2 | (x²,N(x)⁻¹)=(4,1/2); evaluation 2, whereas direct norm gives 8. | Retain inverse; source slip listed below. |
| 0.2 character pullback/composition | x=2,3 in ℤ₅ˣ | κ(6)=6=κ(2)κ(3); trivial pair gives 1, inversion gives 1/6. | Retain. |
| 0.2 norm-one congruence subgroup | Integral unit norm ±1, congruent 1 modulo N≥4 | Norm ≡1 mod N; −1 differs from 1 by 2, hence excluded. | Retain hypotheses; N=2 would not exclude −1. |
| 0.3 boundedness and finite characters | Teichmüller character at p=5 | At residue 2, norm of ω(2)−1 is 1; on 1+5ℤ₅ it is 0. The point is still bounded. | Retain principal-subgroup radius, not full-unit supremum. |
| 0.3 trivial/algebraic radii | κ=1 and κ=x⁵ on H₁ at p=5 | Supremum 0 for trivial; v₅(6⁵−1)=2, so 1/25 for x⁵. Both extend analytically. | Retain positive-radius existence even when supremum is 0. |
| 0.3 conductor and common stage | Sign character on ℤ₂ˣ | Value at −1 is −1, on 1+4ℤ₂ is 1; stages cannot discard the finite factor. | Retain bounded-family stage hypotheses. |
| 0.4 finite analytic coefficient | Zero, trivial line, diag(2,3) at p=5 | Ranks 0,1,2; eigenvalues ∅,1,(2,3), not (6,6). | Retain actual representation. |
| 0.4 tensor | Ranks 2 and 3; characters with values 2,3 | Rank 6; eigenvalue 6, whereas sum has rank 5 and eigenvalues 2,3. Zero tensor has rank 0. | Retain. |
| 0.4 contragredient/evaluation | Character value 2 | Dual value 1/2; evaluation multiplier 2·1/2=1; double dual value 2. | Retain inverse action. |
| 0.4 coefficient change | Idempotent diag(1,0), identity and residue coefficient maps | Idempotent remains diag(1,0); image rank 1 before/after; identity sends eigenvalue a to a. | Retain finite projective base change; no integral equalizer assertion follows. |
| 0.4 stable lattice | V=ℚ₅, lattices ℤ₅ and 5ℤ₅ | Rationalizations both ℚ₅; 1 belongs only to the first lattice. | Retain lattice as additional data. |
| 0.4 induction Borel condition and left action | Torus, κ(h)=2, f(1)=1 | f(h)=1/2, (h·f)(1)=f(h⁻¹)=2. Forward translation would give 1/2. | Retain distinct function/action conventions. |
| 0.4 algebraic restriction | SL₂, dominant weight k=1 | Algebraic chart span has basis 1,z and dimension 2; z² is nonzero analytic but outside it. | Retain injection, not equality. |
| 0.4 normalized positive torus | Torus, algebraic κ(t)=2 | Positive action on chart constants is 1; formula gives 2=2·1. | Retain Weyl-character prefactor. |
| 0.4 field compact type versus affinoid limit | Torus, A=E⟨T⟩ | Stages/limit A; distance between T^i,T^j is 1 for i≠j. Fieldwise compactoid identity fails. | Retain family/field distinction. |
| 0.4 radius restriction | One chart, z=ρu with norm ρ<1 | z^j maps to ρ^j u^j; tail norm after degree N is at most norm(ρ)^(N+1)→0. At ρ=1 it is 1. | Retain strictness for complete continuity. |
| 0.4 distributions and moments | p=3, n=1, point evaluations at 0,9 | Moments on (1,z) are (1,0),(1,9); zeroth moments alone agree. | Retain compatible full moments. |
| 0.4 distribution dual action | Torus, κ(h)=2 | Function action 2; dual action 1/2; pairing multiplier 1. | Retain opposite semigroup. |
| 0.4 arbitrary affinoid extension | A=E[ε]/ε² | norm(ε)=1, spectral seminorm 0; both coefficient and A-dual have E-dimension 2, versus reduced dimension 1. | Retain defining Banach norm. |
| 0.4 norm/presentation independence | Norms max(norm(a),norm(b)) and max(norm(a),5 norm(b)) | On ε values 1 and 5; identity is bounded both ways, not isometric. | Retain topological, not unit-ball, identification. |
| 0.4 finite-character twist | χ(m)=ζ, ζ³=1≠ζ | Multiplication sends value 1 to ζ⁻¹=ζ²; positive-torus scalar on finite factor remains 1. | Retain extension/conductor premise. |
| 0.4 induction multiplication | 1⊗z−z⊗1; evaluations at (0,a), a≠0 | Product is z−z=0; separate evaluation gives a≠0. z⊗z² maps to z³. | Retain multiplication, reject tensor isomorphism. |
| 0.5 Siegel induction carrier | g=1 and g=2 | Opposite-unipotent dimensions 0 and 1; torus line versus power-series coordinate. | Retain genuine analytic thickening. |
| 0.5 Gauss lattice | On an integer-depth chart with normalized coordinate T, (T^p−T)/p | Integral on T∈ℤₚ, but Gauss norm p>1; at residue in 𝔽_(p²) outside 𝔽_p the value has norm p. | Retain Gauss/all-valued-point lattice. |
| 0.5 coefficient cocycle order | A=[[1,1],[0,1]], B=[[1,0],[1,1]] | AB=[[2,1],[1,1]], BA=[[1,1],[1,2]], unequal. | Retain prescribed transpose/inverse order. |
| 0.5 inverse-Weyl dictionary | Torus, κ(h)=2 | BP inverse Borel value 1/2 corresponds to the direct-coordinate character after inversion; double inversion returns 2. | Retain explicit dictionary. |
| 0.6 distribution multiplication | Additive ℤ₅, a=2,b=3; trivial group | δ₂δ₃ evaluated on x is 5, versus product of moments 6; point group algebra E has unit 1. | Retain convolution. |
| 0.6 nonabelian convolution | Above A,B, function extracting entry (1,1) | Evaluation on AB is 2; on BA is 1. | Retain noncommutative carrier. |
| 0.6 coadmissibility | Constant stage algebra E; E² and infinite direct sum | Stage dimensions 2 and ∞; finite-generation holds only for E²; zero stages give zero limit. | Retain finiteness and stage compatibility. |
| 0.6 analytic vectors/duality | Trivial line and C(ℤₚ,E) | Trivial line remains dimension 1; regular dual has module rank 1, two copies rank 2. | Retain analytic orbit topology and bounded-measure distinction. |
| 0.6 full character space | Z={1}, ℤ; split T(K)=(Kˣ)^n | Dimensions 0,1; locally ℚₚ-analytic dimension n([K:ℚₚ]+1), giving 4 for n=2,K=ℚₚ. Uniformizer 0 is excluded. | Retain noncompact G_m factors. |
| 0.6 local multiplicative adapter | K=ℚ₅, δ(5)=3, δ(2)=2 | δ(10)=6 and inverse 1/6; a second δ(5)=4 gives δ(10)=8. | Mathematical convention passes; repair supplier via R01. |
| 0.6 Mellin | Dirac at 1 and at g | Transforms 1 and δ↦δ(g); δ_gδ_h transforms to δ(g)δ(h)=δ(gh). | Retain compact-surjectivity/noncompact-dense-image distinction. |
| 0.6 essential coherent duality | A=E[T,T⁻¹]/(T−a)² | Support one point; E-length 2, not length 1. Dual arrow of E²→E goes E→E². | Retain coherent multiplicity and contravariance. |
| 0.6 finite-slope part | Generator diag(0,2) on E² | Surviving nonzero-eigenvalue subspace has dimension 1; zero summand contributes 0. | Retain finite-slope universal construction. |
| 0.6 normalized positive Jacquet operator | Trivial line, index q=2,3 | Sums 2,3 divided by q give 1,1; unnormalized values 2,3. | Retain rational normalization, including p=2. |
| 0.6 Jacquet smooth/algebraic comparison | P=G; GL₂ standard algebraic W and upper N | P=G returns V; W^N=Ee₁, W_N represented by e₂, both dimension 1 but different torus weights. | Retain W^N, not W_N, in algebraic factor. |
| 0.7 completed unitary coefficients | One double coset, trivial rank-one other-place coefficient | Functions are O_E, completion O_E, rationalization E; zero coefficient gives 0. | Retain actual arithmetic function construction and s>0 premise. |
| 0.7 Jacquet eigenvariety dimension | n=2, [K:ℚₚ]=1,2 | Predicted dimensions 2 and 4; full torus character dimensions 4 and 6. | Retain compact-weight dimension, not full-character dimension. |
| 0.7 finite projective faithful chart | A regular, M=A², B=A acting by scalars | End_A(M)=M₂(A); B rank 1, annihilator 0; chart dimension dim A. | Retain arithmetic projectivity/regularity inputs. |
| 0.7 reducedness route | B=E[ε]/ε² acting faithfully on itself | Faithful action, but ε≠0 and ε²=0. | Retain density plus classical semisimplicity; faithfulness alone insufficient. |
| 0.7 algebraic accumulation | Weight coordinate residue α∈𝔽_(p²)∖𝔽_p | Every integer has residue in 𝔽_p, so disc over α contains zero integers. | Retain accumulation only near admitted algebraic points. |
| 0.7 Hecke scaling | Normalizing scalar c_z=2 | Eigenvalue 1 becomes 2, not 1. | Retain explicit weight-dependent normalization. |
| 1.1 right cocycle/inversion | Above A,B | (AB)⁻¹=[[1,−1],[−1,2]]=B⁻¹A⁻¹; A⁻¹B⁻¹=[[2,−1],[−1,1]]. | Retain reversed inverse order. |
| 1.1 gauge change | Line frame multiplied by 2 | Section coordinate a becomes a/2; a=1 gives 1/2, and reconstructed section (1/2)(2e)=e. | Retain inverse-coordinate transformation. |
| 1.1 cocycle identity | Identity element, trivial action | J(1)=1; J(1·1)=1·1=1. Zero matrix would give 0 and is not invertible. | Retain GL-valued factor. |
| 1.2 coefficient equalizer | Split torsor, trivial coefficients of ranks 0,1,2 | Invariants are 0,A,A², matching descended ranks 0,1,2. | Retain actual two-pullback equalizer. |
| 1.2 tensor/dual/pullback functoriality | Split torsor with character values 2,3 | Tensor value 6; dual 1/2; identity pullback leaves both. | Retain finite-rank hypotheses; no blanket Banach conclusion. |
| 1.2 stack versus coarse effectivity | Stabilizer C₂ acting by sign over ℚ₂ | Invariant fibre on coarse point is 0; stack line rank 1. | Retain action-free coarse or stack formulation. |
| 1.2 integral effectivity | Scalar coboundary 2 at p=5, and scalar 5 | 2 and 1/2 are integral units; 5 is integral but 1/5 is not. | Retain both integral matrix conditions. |
| 1.3 dense-open/formal effectivity | Trivial line on a smooth disc; formal unit cocycle 1 | Analytic line rank 1 on both opens; formal descent invariants O, rationalization O[1/p]. | Retain smooth-rigid/formal-model hypotheses. |
| 2.1 admitted Hilbert radii | p=3,m=1; p=2,m=1 | 1/12<1/9; odd endpoint 1/9 needs extra boundary theorem. Dyadic endpoint in the stated range is 1/8. | Retain separate endpoint target. |
| 2.1 scaled AL and denominator | p=5, ε=1/100; Weyl map at z=0 | Scaled radius 1/20; Weyl denominator z=0 is zero, so affine formula is unavailable there. | Retain domain restriction and scaled map. |
| 2.2 Hilbert factor | γ=diag(1,2), z arbitrary, κ=id at p=5 | j=2, inverse-character multiplier 1/2. | Retain. |
| 2.2 fractional action cocycle | γ=[[1,0],[25,1]], z=5 | Denominator 126 and image 5/126; κ=1 gives multiplier 1, not an imposed nontrivial weight. | Retain actual period coordinate. |
| 2.3 algebraic specialization | Frame change 2, k=1 and k=−1 | Coefficient/frame products (1/2)·2=1 and 2·(1/2)=1. | Retain duals for negative weights. |
| 2.3 individual embedding weights | k=(1,2), frame scalars (2,3) | Frame multiplier 2·3²=18, not determinant 6. | Retain embeddingwise generic specialization. |
| 3.1 geometric integral lattice | ℤ₅ and 5ℤ₅ inside ℚ₅ | Both invert to ℚ₅; their integral inclusions differ on 1. | Retain geometric O⁺ and specified frame. |
| 3.1 rationalization/local denominators | Disjoint opens with values p^(−i) | On open i denominator p^i suffices; there is no finite common exponent over all i. | Retain local/quasi-compact denominator argument. |
| 3.2 weight pullback | Identity map; trivial weight on a disc | Character values 1 pull back to 1; full sections are K⟨T⟩, containing T≠constant. | Retain coefficient sheaf, not constant sections. |
| 3.2 integral base change obstruction | C₂ acts by −1 on ℤ₂ | Invariants 0; after mod 2 the action is 1 and invariants 𝔽₂. | Retain separate integral hypotheses. |
| 3.3 positive-radius colimit | Constant module system A and zero system | Colimits A and 0; maps send 1 to 1. | Retain positive radii and actual transition maps. |
| 3.3 ordinary versus overconvergent domain | Sequence of positive radii ε_j→0 | Each ε_j>0 while ordinary radius is exactly 0; no ε_j equals 0. | Retain separate ordinary completion theorem. |
| 3.4 ramified differential lattice | O_p rank d=2 over ℤₚ; free line over O_p⊗O⁺ | O⁺-rank 2, O_p⊗O⁺-rank 1; ordinary Hodge ideal a unit gives quotient 0. | Retain unsplit module and ideal bound. |
| 4.1 independent presentations | Trivial character; pure polarization w(u)=3 | Trivial multiplier 1; polarization multiplier 3; geometric j=2 multiplier 1/2 for κ=id. | Retain separate equalizers. |
| 4.1 arithmetic character | F=ℚ, w=t=id, γ=diag(1,2) | w(det γ)/κ(j)=2/2=1. | Retain determinant twist in arithmetic presentation. |
| 4.2 finite polarization descent | Two-component swap on A² | Invariants {(a,a)}; at p=2 averaging requires 1/2, but equalizer still exists. | Retain torsor descent, not integral averaging. |
| 4.2 twisted pullback direction | Pullback acts by a=2, twist w=3 | Inverse pullback followed by twist gives 3/2; forward pullback gives 6. | Retain order. |
| 4.3 pairing comparison | Weil pairing frame multiplied by 2 | Inverse frame changes by 1/2; coordinate and frame product stays 1. | Retain pairing and two-sided integral bounds. |
| 4.4 polarization classes/transport | F=ℚ; two abstract class summands | One narrow class gives one summand; two give A⊕A with rank 2, not A. Identity transport multiplier 1. | Retain finite class index and actual transports. |
| 5.1 AIP eigenfunctions | Torus frame t=2, character id | Eigenfunction coordinate 1/2; trivial character gives 1. | Retain inverse-character convention. |
| 5.1 formal finite character | Primitive finite root ζ | norm(ζ)=norm(ζ⁻¹)=1; disc coordinate alone cannot distinguish ζ and 1. | Retain finite-character factor. |
| 5.2 structural invariants | Split torsor, p⁻¹ as constant | Rational invariants contain p⁻¹; integral bound is norm(p⁻¹)=p>1, so integral invariants exclude it. | Retain all-valued-point bound. |
| 5.3 finite-character generator | χ(m)=ζ of order 3 | Frame coordinate ζ⁻¹=ζ², not ζ; identity element value 1. | Retain chosen unit trivialization. |
| 5.3 integral generator obstruction | Coboundary p versus a unit | p has valuation 1, inverse valuation −1; unit and inverse have valuation 0. | Retain conditional integral freeness. |
| 5.3 formal/rational comparison | Trivial line over O_L, identity weight map | Formal generator 1 maps to analytic generator 1; lattice O_L, rational space L. | Retain completed specialization assumptions. |
| 5.4 perfectoid–AIP comparison range | p=5,m=1, ε=1/20 | Comparison bound 1/25 is smaller than 1/20; the broader period range does not imply comparison. | Retain stronger hypothesis. |
| 5.4 arithmetic AIP parameters | w=t=id on ℤ₅ˣ, x=2 | ν(2)=2, w_AIP(2)=1/2; resulting κ(2)=2. | Retain ν=w and w_AIP=t⁻¹. |
| 5.5 Frobenius frame map | p=3, algebraic weight 2 | Quotient differential frame scalar 3; square scalar 9; inverse coefficient scalar 1/9. Product 1. | Retain nonidentity frame comparison. |
| 5.5 restriction composition | Trivial weight and two identity restrictions | 1↦1↦1, equal to composite 1↦1; zero maps to 0. | Retain actual domains and commuting square. |
| 6.1 cuspidal ideal | Formal disc boundary q=0 | q has constant 0; 1+q constant 1; ideal (q) contains q, (q²) does not. | Retain reduced boundary twist. |
| 6.1 family Koecher | d=1 punctured disc; d>1 with codim≥2 | q⁻¹ has order −1 and does not extend at a curve cusp; constant 1 extends and is not cuspidal. | Retain degree/codimension/normality hypotheses. |
| 6.2 boundary vanishing mechanism | Identity contraction; monomial power map in char 2 | Higher direct images of identity are 0; projection onto even monomials sends 1→1, whereas degree-2 trace of 1 is 0. | Retain monomial splitting rather than division by degree. |
| 6.3 tame correspondence degree | F=ℚ, ideals (1),(2),(4), p=3 and tame prime to 2 | Degrees 1,3,6; normalized constants 1,3/2,6/4. Formula norm+1 would give 2,3,5. | Retain actual degree; source error below. |
| 6.3 coefficient trace normalization | Degree D, constant 1 | Trace D, normalized value D/N(a); identity a=(1) gives 1. | Retain identity separately, not prime formula at norm 1. |
| 6.4 wild conjugation | γ=[[1,0],[25,1]], z=5, ϖ=5 | Conjugate lower entry 5; new z=25; denominator 126 on both sides. Unconjugated lower entry gives 626. | Retain conjugation and scaled coordinate. |
| 6.4 ramified level | e=2,n=1 | Required exponent ne+1=3, versus n+1=2. | Retain ramification factor. |
| 6.4 normalized wild trace | Residue degree f=1, p=2,3 | Trace of 1 is 2,3; q⁻¹ trace is 1 in both cases. | Retain characteristic-zero division. |
| 6.4 diamond character | χ(u)=ζ, ζ³=1≠ζ | Inverse-character factor ζ², not ζ. | Retain stated action direction. |
| 6.5 coefficient-line expansions | Frame 2, κ=id | Coordinate multiplier 1/2; q coefficient changes by 1/2 while intrinsic section is unchanged. | Retain coefficient line. |
| 6.5 ramified cusp construction | p=3,M=ℤ,N₂=5, t=q^(1/5) | t⁵=q; exponent 1/5 lies in N₂⁻¹M, not M; constants of t,1+t are 0,1. | R03: extend construction to these charts. |
| 6.5 coverage/injectivity | Two disconnected trivialized components, section (0,1) | Restriction to first component 0, full section nonzero. All-component restriction is (0,1). | Retain actual Igusa-level coverage; not a claim of a global weighted section. |
| 6.6 projective Banach model | Orthonormalizable c₀(A); zero coefficient | Property-(Pr) summand is itself; infinite module is not finite-dimensional; zero yields 0. | Retain Banach projectivity, not finite rank. |
| 6.6 compact restriction | z↦ρz, norm(ρ)<1 | Truncation-error bound norm(ρ)^(N+1)→0; at norm(ρ)=1 error 1 for all N. | Retain strict radius improvement. |
| 6.6 field specialization | Free chart A^r, A→k | Tensor chart k^r; rank r, with r=0,1 giving 0,k. | Retain global base-change/cohomology premises. |
| 6.7 controlling normalization | Split degree 2; totally ramified degree 2 | Split U₁U₂ and ramified U_𝔭² both carry p⁻²; one ramified copy would give p⁻¹. | Retain e_𝔭 exponents. |
| 6.7 integrality/compactness | Trace q, normalizer q⁻¹; constant full form | qU integral; U(1)=1 rationally. Constant 1 has nonzero boundary and is not in cusp space. | Retain sufficient denominator and cusp compactness hypotheses. |
| 7.1 torsion-first completion | Continuous function x on ℤₚ | Mod p^m it factors through ℤ/p^m; x itself has no finite discrete quotient. | Retain inverse limit after finite-level torsion colimit. |
| 7.1 infinite wild level | q₁^p=q, q₂^p=q₁ | Pullback of q₁ equals q₂^p, not q₂. | Retain structural versus AL transitions. |
| 7.1 nonuniform finite-stage representation | Series Σ_(j≥0)p^j q_j in compatible root charts | Mod p^m only j<m survive, hence some finite level; full series uses unbounded j. | Retain completion after both level colimits. |
| 7.2 weighted ordinary equalizer | Split Igusa torsor, trivial weight and χ(g)=ζ | Trivial invariants base ring; weighted coordinate ζ⁻¹=ζ². | Retain finite character and base-change hypotheses. |
| 7.3 analytic completion model | Discrete-base O_L and fraction p⁻¹ | Power-bounded model O_L; p⁻¹ norm p>1 lies only in rationalization. | Retain isometric integral comparison. |
| 7.3 nondiscrete special fibre | x∈O_Cp with v_p(x)=1/2 | x mod p≠0, but x² mod p=0. | Retain separate nondiscrete model proof; no reduced-special-fibre shortcut. |
| 7.4 ordinary restriction | Trivial coefficient, constant 1, each level n | Restriction 1 at each level; structural transition preserves 1. | Retain same-level map and independent limit comparison. |
| 7.4 trace compatibility | Two-sheet split map over ℚ₂ | Trace(1,1)=2; normalized trace 1; integral trace before division still 2. | Retain integral/rational distinction. |
| 7.5 completed cusp ideal | q₂^p=q₁ in ordinary boundary tower | q₂ has constant 0 but is not a multiple of q₁ in the integral series ring. | Retain completed union of level cusp ideals. |
| 7.5 cusp-unit stabilizer | F=ℚ(√5), η=9+4√5 | N(η)=81−80=1; mod 3, η=s with s²=−1, s⁴=1. Invariants of a line with multiplier s satisfy (s−1)a=0, hence a=0 over 𝔽₉, versus trivial-line invariants 𝔽₉. | Retain cusp-unit action at minimal cusp. |
| 7.5 refinement and boundary | Blowup x=u,y=uv | Pullback xy=u²v; reduced boundary uv; u-orders 2 and 1. | Retain derived pushforward comparison; R02 resolves its supplier. |
| 7.5 boundary limits/completion | Same root series Σp^j q_j; empty boundary | Each torsion truncation has finite level; full series need not. Empty boundary ideal is O and cusp condition imposes no vanishing. | Retain proper formal-function and transition hypotheses. |
| 8.1 row identity | After basis reversal: symmetric Z=[[0,1],[1,0]], C=diag(3,0), A=I | I+ZC=[[1,0],[3,1]], I+CZ=[[1,3],[0,1]], unequal. `[I,Z]γ` factors using I+ZC. | Retain row order; no commutation. |
| 8.1 symplectic basis transport | Reversal W in rank 2; rank 0 | W²=I, so conjugating twice returns Z; empty determinant 1. Zero W in rank 2 has determinant 0. | Retain marked invertible basis change. |
| 8.2 action-neighbourhood product | p=3, norm(E)=norm(C)=1/3 | norm(EC)≤1/9; p=2,z=1,c=2 gives J=3, a unit. | Retain two-sided norm margin and denominator units. |
| 8.2 canonical range | g=1,p=3, c_g=3/4; n=1,2 | w=7/8 satisfies 3/4<w≤1; at n=2, w=15/8 satisfies 7/4<w≤2. w=7/8 fails n=2 lower bound. | Retain corrected n−1 and strictness. |
| 8.2 small primes/full action | g=1,p=2; AL at Z=0 | p>2g is false; AL sends [1,0] to [0,1], outside first graph. | Retain numerical theorem's hypothesis and second chart. |
| 8.3 scalar determinant coefficient | J=diag(2,3), weight m=1,−1 | det J=6; inverse coordinate 1/6 for m=1 and 6 for m=−1. | Retain dual powers. |
| 8.3 quotient versus dual/similitude | γ=diag(I,uI) | Quotient J=I acts as 1; dual via pairing includes u⁻¹. For u=2 values 1 and 1/2. | Retain actual quotient frame and twist. |
| 8.4 determinant eigenline | J=diag(2,3), f(I)=1 | Eigenvalue det J=6; evaluation at I is 1. Torus has dimension-one line; g=2 analytic chart has 1,z,z²,… . | Retain eigenline rather than whole induced space. |
| 8.4 finite algebraic injection | Dominant weight k=1 in rank-one unipotent chart | Polynomial subspace dimension 2; z² adds a nonzero analytic vector outside it. | Retain injection, not surjectivity. |
| 8.5 Atkin–Lehner block map | g=1,Z=3,q=2 | [1,3][[0,1],[−2,0]]=[−6,1]; second graph coordinate −6. At Z=0 gives [0,1]. | Retain second chart with no inverse of Z. |
| 8.5 domain/degenerate signs | q=0; characteristic 2 | q=0 gives singular block matrix; in char 2, −q=q. | Retain invertibility hypothesis; block identity still has correct characteristic-2 sign. |
| 8.6 finite coefficients/twists | Ranks 0,1,2; Tate twist j=1 | Descended ranks 0,1,2; cyclotomic multiplier ε instead of 1 when ε≠1. | Retain quotient torsor and μ-cyclotomic twist. |
| 8.6 central quotient | Representation trivial on quotient kernel versus kernel character value 2 | Trivial kernel acts 1 and factors; value 2 cannot factor through kernel sent to identity. | Retain kernel-triviality condition and supplied rank quotient. |
| 8.6 refinement functoriality | Identity and composite marked refinements | Identity pullback multiplier 1; successive character multipliers a,b give ab, equal to composite. | Retain common refinement and actual pullbacks. |
| 8.7 arbitrary-affinoid family | M=T,A=F[ε]/ε² | Coefficient and distribution stages A, F-dimension 2; ε remains nonzero. Reduced model has dimension 1. | Retain nonreduced extension. |
| 8.7 Weyl/root correction | GL₂,M=T,ν=0,w=1 and s | κ=−2ρ and 0 respectively; swapping w₀,M=1 for s reverses these values. | Retain Levi Weyl element. |
| 8.7 distribution shift | Same GL₂ noncentral cocharacter | With ρ_nc=ρ, shifted weights are 0 and 2ρ; omitting shift gives −2ρ and 0. | Retain κ+2ρ_nc and dual twist. |
| 8.7 level/radius condition | m′=1; (m,n)=(1,1),(0,1) | m−n=0 is allowed; −1 is not. Natural subtraction would incorrectly turn −1 into 0. | Retain ordered inequality, not truncated subtraction. |
| 8.7 finite-character twist | b=3,m′=4,n=2 | min(m′,n)=2, so 3≤2 is false; after n=3 it is true. | Retain both conductor bounds. |
| 8.7 projective Banach/derived comparison | Trivializing point over A; all cohomological degrees | H⁰=A on both sites, H^i=0 for i>0; zero coefficient gives 0 in every degree. | Retain finite-flat cover and finite quasi-Stein-union premises for general theorem. |

These tests cover each numbered target, all 15 seeded targets, the headline groups and every finding's affected construction. They do not turn a source citation or an example into a proof of a new general theorem. In particular, the nonreduced-affinoid induction extension, closed odd-prime period endpoint, infinite-wild-level ordinary model comparison and general coefficient descent remain genuine roadmap proof obligations. The text identifies them as such instead of using sorry'd data or a free predicate to assert them.

**Shape.** All nine layers have examples and dependencies. Definitions retain prose API lists and discriminating checks; the extra checks are in the README rather than Lean. The source, lattice, analytic-field, topology, finite-character, normalization and geometric-domain distinctions are explicit. No computational algorithm, source-text block, source-file attachment, route restricted to good primes, or re-planning of a main-branch roadmap was found. Source generalizations are additional targets, with the exception of the missing ramified-cusp construction in R03.

## Not verifiable

- No requested source text was inaccessible: all 15 sampled targets could be compared with the cached legal texts. No missing-reference request was created and no source manifest was edited.
- The new generalizations named above are not independently proved by the sampled papers at their full roadmap generality. This review checked their statements, stated inputs and explicit counterexample controls; the passing Lean file proves none of them, since their carriers are not yet present. This is the declared acceptance-test limitation, not a substitute theorem.

## Source issues

- **Misprint** in bhw at Definition 6.1, printed p.1756 (`bhw line 1849`): the source says the weight map is induced by squaring and the direct norm; it should be squaring and inverse norm to obtain the displayed character; affects a stated result.
- **Error** in bhw at §6.1 following Definition 6.2, printed p.1757 (`bhw line 1865`): the source says bounded weights have full-unit supremum of κ−1 strictly below one; it should be measured on an appropriate principal subgroup, retaining finite-character components; affects a stated result.
- **Gap** in bhw at Proposition 6.3, printed p.1757 (`bhw line 1878`): the source says the specified radius is proportional to the character-deviation supremum; it should be supplemented by positive-radius existence when that supremum is zero, including the trivial character; affects the proof.
- **Error** in aip-cusp at Lemma 3.25(2), manuscript p.22 (`aip-cusp line 905`): the source says the prime-to-p cyclic ideal correspondence always has degree norm plus one; it should be the projective-line cardinality over the ideal quotient, specializing to norm plus one for prime ideals; affects a stated result.
- **Error** in drw at Remark 3.1.7, p.22 (`drw line 1048`): the source says integral values at rational chart points equal the Gauss unit ball; it should be a Gauss bound, equivalently a bound on all valued points of the analytic chart; affects a stated result.
- **Misprint** in drw at Remark 3.1.12, p.23 (`drw line 1100`): the source says the multiplicative character takes value zero on the unipotent factor; it should be value one; affects a stated result.
- **Misprint** in drw at Corollary 3.6.13, p.47 (`drw line 2112`): the source says the lower bound on w omits the level contribution; it should be c_g+n−1<w, as required by Proposition 3.6.12; affects a stated result.
- **Gap** in drw at the proof of Corollary 3.6.13, p.47 (`drw line 2121`): the source says a pointwise strict Hodge bound supplies one rational bound for the entire domain; it should be supplemented by a uniform margin or a compactness argument giving that single bound; affects the proof.
