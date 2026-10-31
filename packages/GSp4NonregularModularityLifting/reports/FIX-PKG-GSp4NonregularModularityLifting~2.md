# Repair report: GSp4NonregularModularityLifting

## F01 (P2) — applied

Prefixed layer/target labels → numeric headings and matching internal references throughout README and Suggested.lean. Source-manifest layer labels agree. The permitted gap sentences were normalized and then made independent of this roadmap. There are 12 layers and 63 readable targets: the original 64 less the duplicate descent target deleted for F02. Letter suffixes pass the worker's actual scanner.

## F02 (P2) — applied

Local ownership of coefficient descent → IntegralHeckeAndGaloisDeterminants §1.5 plus gap:symplectic-descent-every-residue-characteristic. Deleted §10.5, its ownership/signature discussion and its fictitious Carayol/Schur locators; repointed §10.6 and retained three descent controls under the supplier contract. Evidence: the supplier's prescribed-multiplier statement; BCGP25 line 7772 and lines 7776–7786. Extending the supplier itself is outside this package.

## F03 (P2) — applied

Supporting descent theorem and its two definitions → no local Lean declarations. The module docstring lists the actual headline theorems and missing arithmetic carriers. Removed all three names and the signature-only Mathlib contract from README. BCGP25 line 7773 identifies descent as an input to Proposition 7.4.10; CG20 line 2999 and BCGP25 line 8155 identify the substantially deeper endpoints.

## F04 (P1) — not actionable in this package: the selected-rank theorem belongs to AutomorphicBundlesPartII IC.8

Unowned inequality → gap:selected-coherent-rank-inequality in the plan and exact supplier contracts, consumed by §7.4. Specified H₁/H₀ of L=ω(1,3−a), the homological groups actually needed, with the Serre-dual transported projector. A cohomological inequality on L alone is not this contract. IC.8 supplies whole-module dimensions; CG20 line 2056 likewise concerns the whole module. This package cannot amend that supplier.

## F05 (P1) — applied

Unsigned identification with Mathlib's standard form → both comparisons deleted with the unused local definitions. At the pin, Matrix.J has blocks (0,−I;I,0), in Mathlib/LinearAlgebra/SymplecticGroup.lean:58. Swapping the final coordinates of the deleted matrix gives its negative: entry (1,3) is +1 versus −1 over ℚ. No false comparison remains.

## F06 (P2) — applied

Compound local gap → five gaps; holomorphy comes from ModularityAndLanglandsExtensions §3.5(vii) (BCGP25 lines 684–691). Global gap → separate CG, two-torus and P12 contracts. The p-action contract is independent of §1.1; dyadic data cite BCGP25. The P12 flag gap distinguishes the opposite exponent prescriptions detected in the new parallel example. All 20 gap sentences match the plan exactly.

## F07 (P3) — applied

Blanket gap dependencies → named branch-specific inputs throughout Needs lines and layer dependency summaries. Odd-p CG targets lose flag/dyadic gaps; §2.2 uses only the Steinberg gap, §6.2 only Klingen comparison, and §10.2 loses P12 control. §11.3 names its newvector/refinement inputs. Removed repeated ShimuraData and descent references. The dependency check reports zero problems.

## F08 (P3) — applied

Stale ET.7/ML.0, amendment/ledger language and temporal supplier wording → actual §13.2, §§11.0a–11.0b and timeless mathematical dependencies. Renamed Layer 7 and removed “proof gates.” Deleted the unlayered supplementary p-polynomial promise and its introduction, without expanding §3.4. Downstream consumers now name AbelianSurfacesModularity. The same temporal flag-comparison pattern in §§9.1–9.2 was repaired.

## F09 (P3) — applied

Unqualified unitary tower ownership → explicit import of PotentialModularityAndCompatibleSystems §8.3 for rank two and odd p, in Scope, supplier contracts and §11.0a Needs/prose. The retained extension specifies arbitrary n≥2 and p=2 with upper-Iwahori level. The supplier explicitly supplies the ordinary projector, big Hecke algebra and Λ-freeness subject to the stabilizer condition.

## F10 (P3) — applied differently

Repaired all three controls: placed nonzero semistable monodromy at a=2, explicitly dualizing the ε-extension for this roadmap's weight sign and retaining semistability for the a≥4 implication; replaced the diagonal example by (1,2,3,4) over 𝔽₇; changed “determinant multipliers” to determinant Legendre symbols. The computations, including all three eigenvalue pairings, appear below.

## F11 (P3) — applied

Secondary-Hasse locator pp.31–36 → pp.31–37 with Remark 6.4.1 and P20 line 1652; added CG20 line 1936 alongside the existing extension locator. Updated the P20 source-manifest locator. P20 lines 1652–1655 distinguish order two from the order-one square root at odd p and deny that square root at p=2.

## F12 (P3) — applied

Ten repeated Examples → worked combinations of targets in Layers 0,1,3,4,6,7,8,9,10,11, with computed values. Existing distinct Examples in Layers 2 and 5 remain. Folded the degree-zero limitation into §1.1 prose; moved the §11.0a continuation before its Checks and named the dyadic global h³ term. Every new example retains the hypotheses of its contributing targets.

## Gate failure repairs

The supplied gate failure was target-ids=64. All prefixed target and layer headings were normalized, including the suffixed targets 3.1a, 11.0a and 11.0b. Internal citations and the Lean docstring follow them. Deleting the duplicated §10.5 leaves 63 targets; no replacement target or numbering table was added. The plan's structural node identifiers were deliberately untouched: only its top-level gaps list is editable.

The worker's own scan_target_ids and scan_layer_ids both return empty lists. The complete worker package_gate, including manifest and gap-reference validation, returns no problems:

```text
gate GSp4NonregularModularityLifting: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 OK
package problems: []
```

## Required checks and boundaries

- Suggested.lean elaboration: ran the prescribed `lake env lean` command from the content checkout against the package file; exit 0, no output. There is only `import Mathlib`, so no Tau Ceti object needed building.
- Elaborated signatures: compared the supplied elaborations of the original three declarations to their README statements; no lost binder was found. All three declarations were deleted for ownership/headline reasons. Regenerated the declaration inventory: zero declarations, hence zero `#check @name` entries. Elaborated that empty-inventory scratch file once; exit 0, no output. There is no surviving declaration with a hidden section hypothesis.
- Dependency direction: ran the prescribed command with the board order and `--movable`; exit 0, with this exact output and no UPWARD, CYCLE or moved line:

```text
depcheck: 49 roadmaps, 575 edges, 0 problem(s)
```

- Gap audit: 20 records, every slug/supplier/needs sentence identical between README's exact contracts and the plan, every record has a section, and every named gap is registered. Parsed the before/after plan, deleted only the top-level gaps keys from the comparison, and obtained identical JSON objects.
- Citation resolver: no unresolved cross-roadmap citations or Lean names. Its automatic library lookup was unavailable; the pinned declarations were inspected directly instead. Sources remain the seven already certified manifest entries; no additional source or missing-text request was required.
- Pinned revisions verified against the manifest and actual checkouts: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039.
- Whitespace validation: `git diff --check` exits 0 with no output.
- Scope audit: only README.md, Suggested.lean, sources.toml, the top-level plan gaps and this report changed. No new layer or local theorem was added. No commit, repository publication or merge-order edit was made.

## Source and ownership verification

Read the main-branch PadicMeasuresIwasawaAlgebras and LocalGaloisGroups roadmaps for shape. Used the roadmap service's object searches across main and the indexed open heads, and searched board packages as well. Main was identified as 4aeb1cc by the resolver. AutomorphicBundlesPartII IC.1–IC.8 and PadicFamiliesPartII E6/S7/F8 were inspected in their available board design READMEs; the service does not expose separate open-head copies of those two designs. Other supplier contracts were checked against the available open-head copies returned by the service. No supplier target was invented.

| Supplier or pin | Resolved input and mathematical boundary |
| --- | --- |
| IntegralHeckeAndGaloisDeterminants | §§0.7,1.1–1.7,2.1–2.3 and IHG.3a–IHG.4 resolve. §1.5's symplectic statement includes p>2; its GL descent does not. The requested extension retains the form, full character, continuity and near-identity conjugator. |
| AutomorphicBundlesPartII | IC.3–IC.4 own coherent correspondences/actions; IC.6–IC.8 own multiplicity-counted exhaustion and whole-module dimension equality. IC.8's finite-part grouping motivates, but does not assert, the selected projector comparison. |
| PadicFamiliesPartII | E6/four-pieces, S7/sen-cousin, S7/de-rham-classicality, F8/four-modules through F8/central-character and K2 resolve. F8 uses cusp support for lengths 0,1, canonical support for 2,3 and the inversion of torus evaluation. It does not supply the P12 flag comparison. |
| ArithmeticGaloisRepresentations | §§7.3–7.5,7.9–7.12 resolve; “Semisimplicity criteria” is within §7.6, and §5.11 is Frobenius identities. §6.4 is the Weil-restriction route; the stronger image statement remains a registered gap. |
| GlobalGaloisDeformations | R04.3–R04.6 and G7 resolve as layers. Its generic presentations do not automatically supply CG's qTW−1 variables, P12's weight conditions or BCGP's two torus directions. Those three exact specializations are now separate gaps. |
| LocalGaloisDeformationRings | §§2.7,2.12,2.17,6.3,6.24,6.26–6.29 resolve. §6.27 is an odd-p B/P-ordinary comparison; §6.29 is the scheme-theoretic ordinary image. Neither citation silently erases the dyadic or flag-orientation contracts. |
| SmoothRepresentationsOfLocalGroups | SR.2.1–SR.2.3 and SR.4.1–SR.4.5 resolve. Five specialized local results and the projective finite-group Satake comparison are requested separately; generic Satake is not substituted for any of them. |
| ModularityAndLanglandsExtensions | §§3.2,3.9,3.26 resolve; §3.5(vii) explicitly characterizes generic packets by adjoint holomorphy. Its Layer 0 is not a registry consuming these endpoints. |
| PotentialModularityAndCompatibleSystems | §8.3 supplies rank-two definite-unitary ordinary forms for odd l, normalized operators, Λ-finiteness/freeness and arithmetic comparison with its tame-character twist and stabilizer hypotheses. |
| EndoscopicTransferAndUnitaryTraceComparison | §11.1 and §13.2 resolve. Solvable descent retains the given Galois realization, restricted irreducibility, central character and Tate twist; it is not ET.7. |
| AutomorphicBundles; ShimuraCompactifications; ShimuraData | B3–B5 and B3.HT.1–3; C3.9–C3.10 and C5.13–C5.18; §§5.9–5.10 and 5.18 resolve. Geometric H⁰ actions and integral models do not themselves supply a degree-one projector. |
| AutomorphicGaloisRepresentationsPartII; AutomorphicLFunctionsAndLocalFactors | AG2.P, AG2.5, and the named crystalline/ordinary subsections of AG2.6 resolve; AL.4 supplies parameter/local-factor comparisons. Spherical p and distinct-root assumptions remain visible. |
| OverconvergentAutomorphicForms; PadicHodgeTheory | §§8.6–8.7 and §§3.2–3.6,4.4,5.3–5.4 resolve. Rational analytic projectivity does not give integral averaging, and the Hodge–Tate sign must be transported to ε of weight −1 here. |
| AutomorphicFormsOnReductiveGroups; FiniteFlatGroupsAndIntegralPadicHodgeTheory; HodgeTateAndCanonicalSubgroups | §§7.4–7.6; R07.1–R07.2; §§0.2–0.5,0.14–0.15 resolve. The generic coefficient function spaces, BT₁ filtration/crystal and primary Hasse input are imported; the genus-two secondary section remains local ownership. |
| DeformationAndDerivedPatchingAlgebra | §§3.1–3.3,5.1–5.9,6.1–6.7,7.6–7.10 resolve. §5.8 includes the corrected marked/open-cutoff patching inputs; §5.9 is the projective norm comparison. |
| Mathlib | ZMod: Data/ZMod/Defs.lean:138; IsIdempotentElem: Algebra/Group/Idempotent.lean:37; generalized eigenspaces: LinearAlgebra/Eigenspace/Basic.lean:71,89. The latter are unions/kernels of powers, without a semisimple decomposition. Matrix.J: LinearAlgebra/SymplecticGroup.lean:58 fixes the sign. |
| Tau Ceti | RepresentationTheory/Homological/ContCohomology/LowDegree.lean:712 supplies H1 as the cocycle quotient; the preceding documentation explicitly distinguishes its pointwise quotient topology from discrete arithmetic H¹. It supplies no symplectic Selmer presentation. |

The new carrier inventory was also checked by object against the pinned libraries: ordinary Siegel coherent/Hida modules, integral genus-two coefficients and universal symplectic deformation problems are not supplied by the existing scalar modular forms on the upper half-plane, native matrix groups or continuous H¹. No headline was replaced by algebra on unrelated variables.

The legal-source checks used the cached numbered extractions. Relevant anchors include CG20 line 38, line 519, line 719, line 1304, line 1434, line 1652, line 1789, line 1859, line 1910, line 1936, line 2056, line 2402, line 2525, line 2925, line 2999 and line 3040; P20 line 1086, line 1098, line 1345, line 1374 and line 1652; P12 line 639, line 665, line 987, line 1792 and line 1887; PS16 line 896; M14 line 1677; BCGP25 line 679, line 7772, line 7776, line 8129 and line 8155; BCGP21 line 10462 and line 10665. The report contains no extracted source passage.

## Adversarial mathematics pass

The following are concrete boundary computations, not claims that finite examples prove the deep targets. Every retained target was revisited with its hypotheses, API and Checks; independent conventions, new supplier contracts and changed Examples have additional rows. “Retain” means the computed control agrees and the stated source/supplier premises remain necessary inputs.

| Statement | Instances tried | Computed values on the compared objects | Result | Change |
| --- | --- | --- | --- | --- |
| Coefficient conventions | O, O/ϖ², E/O; m=0 | O/ϖ² has length 2; O/(1)=0; multiplication by ϖ on E/O is onto, on k is 0 | Distinct carriers; m≥1 retained | Labels only |
| Geometric Frobenius and WD | q=3, r(F)=diag(1,3), N=E₁₂ | r(F)Nr(F)⁻¹=N/3, not 3N | Direction pinned | Retain |
| Cyclotomic convention | a=2, ℓ=3 | ε(F)=1/3, ν(F)=3, det=9; HT(ε)=−1 | Twist and determinant agree | Retain |
| Weight dictionary | (k,r)=(0,2),(2,2) | Ω=ω(2,2),ω(4,2); λ=(−1,0;4),(−3,0;6) | First sign discriminates | Retain |
| Fourier discriminant | p=7, Q=diag(1,1),diag(1,2) | det=1,2; d=3,6; Legendre(det)=1,1 and Legendre(d)=−1,−1 | Symbols differ from coefficients | F10 corrected |
| Spin versus reciprocal | roots 2,3 | X²−5X+6 versus 1−5X+6X²; constants 6 versus 1 | Reversal necessary | Retain |
| §0.1 root predicate | (2,3),(2,6),(1,3),(0,2) in 𝔽₁₁ | products 7,0,0,5 | Predicate alone does not impose units | Arithmetic unit premise retained |
| §0.1 swap and field change | (2,3) and (3,2); prime-field inclusion | products 7 and 4=−7, both nonzero; an injection sends 0 only to 0 | Invariance of condition, not of product | Retain |
| §0.1 small residue fields | all pairs in 𝔽₂ and 𝔽₃ | 0 accepted pairs in either field | No implicit small-field existence | Retain |
| §0.2 multiplier square | ν=1 and −1 in odd characteristic | ν²=1 in both cases; ν values differ | Full multiplier indispensable | Retain |
| §0.3 lifting datum | p=7, a=4,5,6 | 4<6; 5<6 but ν(c)=+1; 6<6 false | Numerical range does not imply oddness | Irreducibility, image and occurrence retained |
| §0.4 levels | Q empty; a U₂ place | diamond order 1 and identical levels; U₂ monodromy rank 2 versus U₁ rank 1 | Tame recipe discriminates | Retain |
| §0.5 labelled refinement | roots (2,4,11,9) in 𝔽₁₃ | αδ=βγ=5, αβ=γδ=8; all four roots distinct | Extra separation genuinely fails | Retain |
| §1.1 integral operator | d=0,r=2; torsion coefficients | valuation sums 4,3,3; p³ may act by 0 after reduction | Normalize before reduction | Stray line moved to prose |
| §1.1 image and diamonds | empty Q; identical actions | diamond element=1; difference of identical operators maps to 0 | Image does not assert abstract faithfulness | Retain |
| §1.2 joint selector | T=diag(c,c+1), Q=diag(d+1,d) | selected projector=0; union formula=I | Intersection essential | Retain |
| §1.2 nilpotents and idempotents | 2×2 Jordan block; diag(1,0) | (T−c)²=0 but (T−c)e₂=e₁; e²=e | Generalized rather than simple roots | Retain |
| §1.3 Katz occurrence | zero space; e₁ with Q-eigenvalue d+1 | no nonzero vector in 0; (Q−d)e₁=e₁≠0 | Wrong p-eigenvalue and zero witness rejected | Retain |
| §2.1 coefficient field | matrix [[0,2],[1,0]]; zero space | characteristic polynomial X²−2; degree [ℚ(√2):ℚ]=2; zero space has 0 eigencharacters | Actual finite image required | Retain |
| §2.2 Steinberg obstruction | x=3; weights (2,2),(4,2),(3,3) | eigenvalues 1/3,1,1; valuations −1,0,0 | Contradiction only in scalar weight two | Exact Steinberg gap |
| §2.3 interpolation polynomial | eigenvalues 1,2,3,6 | 1−12X+47X²−72X³+36X⁴; at X=0 gives 1 | Reciprocal normalization agrees | Retain |
| §2.3 lattice boundary | O and ϖO inside E | E-spans both E; images in O/ϖ are k and 0 | Characteristic-zero comparison identifies no lattice | Retain |
| §2.4 crystalline specialization | (m₁,m₂,w)=(1,0,0),(1,0,1) | parity 1=1 mod 2 versus 0≠1; roots (1,1,2,3) have one zero difference | Spherical/distinct-root and parity premises retained | Retain |
| §2.5 ordinary interpolation | diagonal α,β,β⁻¹ε⁻¹,α⁻¹ε⁻¹ | paired products both ε⁻¹; determinant ε⁻²; at ℓ=3 values 3,9 | Full multiplier and basic ss comparison agree | Retain |
| §2.6 monodromy | diag(1,3), N=0 or E₁₂ | same semisimple r; N ranks 0,1; both satisfy scaling N/3 | Semisimplification cannot choose N | Holomorphy imported; uniqueness gap split |
| §2.7 dual-spin characters | w=0,2; χ₂(u)=ζ₃ | exponents (−1,−1,−2,−2),(−2,−2,−3,−3); third value ζ₃⁻¹u^(−2−w/2) | Double inverse fails | Retain |
| §2.8 isotypy | dim W=1,2; A=E[t]/t² | total dimensions 4,8; quotient and socle dimensions both 1 | Nonzero multiplicity retained; no eigenspace exactness | Retain |
| §3.1 shifts | p=5,m=3; (4,2) shifted by t | required divisibility 25; s=5 fails; difference (4+t)−(2+t)=2 | Threshold depends on levels | Retain |
| §3.1 ramified congruence | p=2; ϖ²=2 | 3²−1=8 divisible by 4; (1+ϖ)²−1=ϖ²(1+ϖ) | No unramified-coefficient assumption | Retain |
| §3.1a secondary section | μₚ⊕I_(1,1)⊕ℤ/p; p=5 | primary section 0, secondary a unit; exponent (5−1)(5+1)=24 | Different sections and weights | Locator extended |
| §3.1a nilpotents and divisor | k[ε]/ε²; k[x,y]/xy | ε acts nontrivially but all geometric values are 0; x·y=0 | Reducedness and all-component condition distinct | Retain |
| §3.1a order of vanishing | local parameter t on reduced rank-zero divisor | secondary order 2: t²; reduced divisor order 1: t | Zero schemes differ | Added Remark 6.4.1 locator |
| §3.2 selected annihilator | k×k on k²; selector first factor; zero module | Ann_selected=0×k; Ann_full=0; Ann_0=whole ring | Quotients k, k×k,0 differ | Retain |
| §3.3 central/residual system | diag(1,2,3,4) over 𝔽₇ | trace=3, det=3; pair-products (4,6),(3,1),(2,5) | No common symplectic multiplier even after conjugacy | Replaced false control |
| §3.4 regular local shape | (a,b)=(4,3) and b=2 | exponents 0,−1,−3,−4 have paired sums −4; b=2 repeats 0 | Regular construction gives no second singular line automatically | Removed unlayered p-polynomial promise |
| §4.1 formal operators | discriminants 1,2,0 in 𝔽₅; Q=(1,0,p) | X₂ scalars 1,−1,0; cubes unchanged; d(Q)=−4p=0 mod p while primitive coefficient=1 | UX₂=0 via d(pQ)=p²d(Q) | Retain |
| §4.2 theta | p=7,j=4; rank-one index | contraction −2=5, determinant 0; scaling coefficient by 2 gives 3 | No determinant prefactor | Retain |
| §4.2 scalar exception | Hasse weight p−1; p=7,k=8 | theta of series 1 is 0; 8·15=120=1 mod 7 | Hasse exception excluded, k=p+1 allowed | Retain |
| §4.3 projections/envelope | α=2,β=3; β-vector | πβv=v but (U−α)²v=v only for this difference; difference 2 instead gives 4v | Normalization is an idempotent, not a power | Retain |
| §4.4 ordinary envelope | nilpotent and invertible 2-blocks; c=6 in 𝔽₁₁ | stable-image dimensions 0,2; c³−c=1 | Scalar Z₂ injectivity needs c²≠1 | Retain |
| §4.5 all-index contraction | det M=p; Q=(1,0,p); p=7 | covariance factor reduces to 0; d=−4p and det=p both reduce to 0; det Legendre values 1,1 | Singular discriminants cannot be divided out | Corrected symbol wording; theorem remains an explicit input |
| §4.6 constrained systems | α=2,β=3; F=Fα+F₀ | UF=2Fα, ZF=3Fα+5F₀, TF=5F; α-Jordan e₂ has extra e₁ | Extra zero-root component retained | Retain |
| §4.7 kernel vanishing | β=3 over 𝔽₁₁; scalar p=7 | 3⁻¹=4; 3θF=0 gives θF=0; scalar comparison weight (8,8)=(2,2)+(6,6) | Uses geometric injectivity; constant series has no positive-definite index | Temporal wording replaced |
| §4.8 both injections | roots 2,3; coefficient O/ϖ² | two labels remain distinct; kernel vector ϖv can reduce to 0 but has nonzero first torsion layer | Residual filtration and both labels needed | Retain |
| §5.1 ordinary plane | vectors reducing to e₁,e₂ or e₁,e₁ | 2×2 minors 1 versus 0; residual ranks 2 versus ≤1 | Nakayama and multiplier separation required | Retain |
| §5.2 minimal deformation | Q empty; scalar χ at Q | source Rmin; paired inertia products χχ⁻¹=1 twice | Fixed multiplier and actual plane preserved | CG-only dependencies |
| §6.1 block projector | empty Q; two distinct Q-primes | empty projector 1; commuting idempotents satisfy (exey)²=exey | Separations in §0.5 are retained | Retain |
| §6.2 inverse normalization | GL₂ q=11,p=5; Klingen x=1 mod 7 | normalized composite 1/2−5δ/516 reduces to 3 mod 5; v=6−5δ/43 reduces to 1; Klingen 4·2=1 mod 7 | v⁻¹tr, not degree inverse | Exact Klingen gap |
| §6.3 nonordinary descent | k×k; k[x,y]/xy; one Hasse exact step | (1,0)(0,1)=0; xy=0; lower H¹=coker(H⁰→divisor H⁰) when high H¹=0 | All-component nonvanishing and reverse induction required | Retain |
| §6.4 finite coefficients | m=1,2,0; Q empty | lengths 1,2,0; at empty Q all three maps are identity | H¹ comparison needed for connecting maps | Retain |
| §7.1 dual module | a=4; Δ=1; E/O | L=ω(1,−1); group ring O; Hom(E/O,O)=0 versus fraction-quotient dual O | Correct dual and action transport | Retain |
| §7.2 torsion-free homology | divisible E/O versus k | ϖ(E/O)=E/O; ϖk=0; duals O versus k | H² premise cannot disappear | Retain |
| §7.3 total balance | S=O[Cp], k, S⊕k | defects 1−0=1, 1−2=−1, 1+(−1)=0 | Balance does not pass to arbitrary summands | Retain |
| §7.4 selected balance | projectors onto k, S,0 in S⊕k | selected defects −1,1,0; zero selected rank 0 | Whole equality does not give selected inequality | Named exact supplier gap |
| §8.1 patching datum | χ and trivial character; untwisted inertia | paired products 1 versus diamond u; χ⁻²=u and χ=1 gives u=1 | Diamond exponent and qTW≥1 retained | CG presentation gap |
| §8.2 minimal R=T | free ranks 1 and 0; O[ε]/ε²→O | annihilators 0 versus whole ring; quotient kernel (ε)≠0 | Positive freeness, not target faithfulness alone | Retain |
| §8.3 regular a corollary | (p,a)=(7,4),(5,4), a=2 | 4<6 true; 4<4 false; 4≤2 false | Lifting range stronger than vanishing | Retain |
| §8.4 exceptional group | even subsets on 6 letters | hyperplane size 32; quotient 16; transposition fixed vectors 8, 3-cycle 4; group order 2⁴(2⁴−1)(2²−1)=720 | Nonabelian S₆ action and class dictionary agree | Registry sentence deleted |
| §8.4 arithmetic boundary | Iwahori at 5; paramodular at 3,19; quadratic twists | type ranks differ if 3 and 5 exchanged; Eχ and E become geometrically isomorphic despite base-field distinction | Geometric nonisogeny and conjectural mod-2 status retained | Retain |
| §8.5 crystalline control | a=2 versus a=4, ordinary semistable | slopes {0,1} admit a downward step 1; slopes {0,3} have no difference 1, hence N=0 | Noncrystalline example outside a≥4 branch | Explicit dual/sign and semistability qualification |
| §9.1 ordered flags | ratio ε̄ at p=7 with ε̄(g)=3 | inverse=5, different from 3 and 1 | Reversing order changes exclusions | P12-only flag dependency |
| §9.2 weight-family R=T | Λ=O[[w₁,w₂]], M=Λᵈ; Λ/(ϖ) | specialization (0,0) gives Oᵈ; ϖ annihilates Λ/(ϖ) | Flatness/control not automatic | Separate P12 presentation gap |
| §9.3 p-adic modularity | weights (4,2),(2,2),(1,1) | weight-label lists (0,0,−3,−3),(0,0,−1,−1),(0,1,0,1); deformation exponents are their negatives | Integral weights do not assert holomorphic classicality | Temporal wording replaced |
| §9.4 parallel lifting | k′=2,3 | labels (0,0,−1,−1),(0,−1,−2,−3); deformation exponents (0,0,1,1),(0,1,2,3), middle difference 1 | Deformation ratio ε; automorphic displayed order gives ε⁻¹, requiring the sign/flag dictionary | Exact P12 controls |
| §10.1 characteristic-zero datum | p=2; r=7,13 | r mod 4=3,1; both odd, so r mod 2=1 in both | Dyadic congruence is modulo 4 | Branch-specific gaps |
| §10.2 four modules | one depth-N auxiliary prime | four chamber indices; diamond order p^(2N), versus CG p^N | Two torus directions independent of chamber count | P12 dependency deleted |
| §10.3 freeness | p=2,N=1, rank d=1 or 0 | Λ-ranks 4 or 0; 8 has positive 2-adic valuation | No Weyl averaging; zero support allowed | Retain |
| §10.4 faithful image | M=0; two identical operators | image ring 0; operator difference maps to 0 | Faithfulness concerns image, not abstract algebra | Retain |
| §10.6 deformation action | zero module; torus generator u of order 3 | unique map to zero ring; u≠u⁻¹ since u²≠1 | Representation construction only on nonzero local coefficient factors | Supplier descent gap |
| §10.7 projective Satake | regular and trivial k[C₂], char 2 | norm [1]↦1+g≠0 on regular module; norm 1↦0 on trivial module | Projectivity replaces averaging | Precise Satake gap |
| §10.8 local freeness | p=2; relation (1+t)^(2^N)−1; quotient E[[x]]/(x²) | linear coefficient 2^N≠0; relative Ω=0 but kernel (x²)≠0 | Cofinal cutoffs and stronger ring comparisons necessary | Timeless §5.8 dependency |
| §11.0a unitary support | n=4 or 2,F⁺=ℚ; degree 8 versus 7 | n[F⁺:ℚ]=4 versus 2; bound n(n−1)/2+1=7; local dimension 1+16+80=97 | Parity/strict-degree restrictions retained | Rank-two tower imported |
| §11.0a unitary coefficients | n=2,u=diag(1,3); regular/trivial k[C₂] | weight factor 3^(1−2)=1/3, not 3; norms 1+g versus 0 | Weight twist and no even-order averaging | h³ antecedent repaired |
| §11.0a dyadic h³ | even n,p=2; scalar Iₙ | transpose fixes Iₙ, invariant dimension 1; deleting it changes Euler count by 1 | h³ not set to 0 | Paragraph restored |
| §11.0b component support | p=3,q_v=7,19; E[x,y]/xy | residues mod 9 are 7,1; origin has 2 components | Extra congruence and unique seed component required | Retain |
| §11.1 R-regularity | R=3, weights (−4,−1),(0,3),(−1,−4) | gaps (3,3),(3,−5),(−3,9) | Both inequalities, in this order | Retain |
| §11.2 seed alternatives | equal residual traces t and t+ϖ; multi-component seed | reductions equal, characteristic-zero traces differ; a seed on two components has count 2≠1 | Seed does not assume target automorphy; B5 uniqueness retained | Precise local gaps |
| §11.3 regular multiplicity | local selected lines of dimensions 1,1,1; zero fiber | tensor dimension 1; doubling one line gives 2; zero fiber dimension 0 | Nonzero and uniqueness hypotheses discriminate | Newvector and refinement gaps named |
| §11.4 support | A=E×E,M=E×0; nilpotent thickening | component fiber dimensions 1,0; Ann(E over E[ε]/ε²)=(ε) | Support is component-specific and set-theoretic | Correct support/descent locators |
| §11.5 singular rank one | four locally free modules with a regular fiber of dimension 1 | each rank=1; sum ranks=4, not 1 | Free neighborhood and supported regular point required | Retain |
| §11.6 classical lifting | four graded dimensions 1; repeated Sen block | sum=4=4n gives n=1; [[a,1],[0,a]] has nilpotent rank 1 versus de Rham rank 0 | Multiplicity and de Rham inputs independent | Retain |

| Supplier contract statement | Instances tried | Computed values on the compared objects | Result | Change |
| --- | --- | --- | --- | --- |
| Integral enormousness/oddness | p=2, scalar invariant line | I₄ᵀ=I₄ and its span has dimension 1 | Odd-p splitting arguments cannot discard this line | Distinct image predicates retained |
| Weil-restriction image | quadratic twist Eχ becoming E geometrically; p=5 | diagonal SL₂(𝔽₅) has order 120, product has order 14400 | Base-field nonisogeny alone gives wrong image model | Geometric nonisogeny retained |
| Normalized integral p-actions | degree-zero selected line and arbitrary degree-one line | T₀=5,Q₀=6 selects dimension 1; taking T₁=0 would select dimension 0 | Degree-zero actions do not determine degree-one normalization | Self-contained degrees/coefficients contract |
| Selected coherent rank inequality | abstract whole dimensions 1=1; selected dimensions 0,1 | total equality holds but selected inequality 1≤0 fails; equal finite-part selected dimensions d,d give d≤d | Whole dimension formula is insufficient without action comparison | New gap on IC.8, homological H₁/H₀ |
| P12 horizontal control | two-weight versus parallel formal weight algebra | O[[w₁,w₂]] has 2 variables; quotient (w₁−w₂) has 1 | Borel and parabolic modules cannot be interchanged without control | Retain explicit gap |
| P12 ordered-flag/sign dictionary | p=7, cyclotomic value 3; k′=3 | inverse value 5; automorphic labels 0,−1,−2,−3 versus deformation exponents 0,1,2,3 give middle ratios ε⁻¹ and ε | Source conventions cannot be identified literally | Existing gap expanded; P12 line 987 and line 1876 |
| CG Selmer presentation | qTW=1 and 0 | number of variables qTW−1 is 0 and −1; one-prime diamond has pᴺ elements | qTW≥1 must precede indexing | Split from global compound gap |
| Two-torus Taylor–Wiles datum | p=2,N=1, one prime | torus group order 2²=4 versus CG order 2 | Rank-two torus and marked bounds are separate arithmetic inputs | Split from global compound gap |
| P12 variable-weight presentation | Borel and parallel weights | variable counts 2 and 1; at (0,0) both specialize to coefficient ring O | Prescribed universal character depends on weights | Split from global compound gap |
| Dyadic ordinary local regularity | local point at crossing versus unique component | E[x,y]/xy at origin has 2 components; smooth line has 1 | Shared component does not imply unique seed component | Precise gap retained |
| Steinberg U-eigenvalue | x=3, weights (2,2),(4,2) | x^((j+k−6)/2)=1/3 and 1 | Required integral obstruction has valuation −1 only in first case | Separate gap |
| Klingen no-newforms/constant | x≡1 mod 7 | degree=4, selected coefficient=2, product=1 | Selected composite, not covering degree, is the unit | Separate gap |
| Paramodular newvector | generic unramified principal series at conductor 0 | hyperspecial newvector space has dimension 1; a two-line replacement has dimension 2 | Genericity and exact conductor must be retained | Separate gap |
| Ordinary/neat refinement lines | regular principal-series Iwahori space | Weyl-indexed space has 8 lines; one fixed refinement has 1 | Selected eigenspace is smaller than all Iwahori invariants | Separate gap |
| Pure monodromy uniqueness | rank-two WD model diag(1,q); N=0,E₁₂ | ad(1) Frobenius-fixed line E₂₁ has dimension 1; its intersection with ker ad N has dimensions 1 and 0 respectively | Holomorphy condition distinguishes the two monodromies | Uniqueness gap separated from existing holomorphy theorem |
| Projective finite-group Satake | regular/trivial k[C₂] in characteristic 2 | norm ranks 1 and 0; invariant dimensions both 1 | Regular-block comparison requires projectivity | Separate unchanged Satake gap |
| GSp₄ pseudocharacter reconstruction | scalar 2I₄, characteristic zero | multiplier 4, determinant 16; determinant square also admits −4 numerically | Full multiplier is extra data; −4 fails the actual equation | Existing reconstruction gap retained |
| Dyadic polarized global datum | even n,p=2 | scalar-transpose invariant dimension 1, rather than 0 | Presentation must retain global h³ | Supplier request no longer depends on §11.0a |
| General dyadic ordinary image | n=4, local degrees 8,7 | dimension at degree 8 is 97; strict threshold is >7 and degree 7 fails | Component theorem has a genuine degree hypothesis | Existing gap retained |
| Symplectic descent extension | full Sp₄(𝔽₂), trivial group; square-zero thickening | group order 720, matrix-span dimensions 16 and 1; C=I+εE₁₄ gives CᵀJC=J and C mod ε=I | Residual absolute irreducibility and near-identity form survive p=2 | New supplier extension, local duplicate deleted |
| Deleted standard-form comparison | final-coordinate swap over ℚ | swapped entry (1,3)=1, native entry=−1; matrices differ by −1 | Review's sign objection is correct | Both false sentences and definitions deleted |

| Changed layer Example | Combined targets and instances | Computed values on the compared objects | Result | Change |
| --- | --- | --- | --- | --- |
| Layer 0 | §§0.1,0.3; p=11,a=4,α=2,β=3 | root product 7≠0, weight inequality 4<10, odd multiplier −1 | Compatible numerical data, not an asserted global occurrence | Replaced repeated Check |
| Layer 1 | §§1.1–1.3; diag(5,0),diag(6,0),diag(7,9) over 𝔽₁₁ | selector diag(1,0), selected away-p value 7, joint eigenvector e₁≠0 | Linear model explicitly separated from actual Katz occurrence | Replaced repeated Check |
| Layer 3 | §§3.1–3.2; p=7,m=2,s=7t₀ | shift=42rt₀; weight difference 2; selected quotient (k×k)/(0×k)=k | Chosen r retained; no assumption that h itself lifts | Replaced repeated Check |
| Layer 4 | §§4.2,4.5–4.7; p=11,j=4,α=2,β=3 | root product 7; 3θ₁F=0 and 3·4=1 imply θ₁F=0; injectivity gives F=0 | All-index identity remains an explicit input | Replaced repeated Check |
| Layer 6 | §§6.2,6.4; p=7,m=2 | degree/block product 4·2=1; coefficient lengths 1+1=2 | Correct unit inverse plus H¹ comparison | Replaced repeated Check |
| Layer 7 | §§7.1,7.3–7.4; a=4,Δ=C₅ | L=ω(1,−1); defects 0,1,−1; Tor₁ˢ(k,k) dimension 2 versus Tor₁ˢ(k,O) dimension 1 | Selected proof needs more than dual bundle and total balance | Replaced repeated Check |
| Layer 8 | §§8.3,8.5; p=7,a=4,ℓ=3 | HT=(0,0,3,3), multiplier 27, determinant 729, 4<6 | Explicitly conditional on Fourier/balance/occurrence premises | Replaced repeated Check |
| Layer 9 | §§9.2,9.4; parallel k′=3 | two variables become one; labels 0,−1,−2,−3; deformation exponents 0,1,2,3 give ratio ε | Sign/flag transport kept explicit | Replaced repeated Check; recomputed source convention |
| Layer 10 | §§10.3,10.7–10.8; p=2,N=1 | diamond order 4; ranks 4d then d, including d=0 | Freeness and augmentation do not imply support | Replaced repeated Check |
| Layer 11 | §§11.1,11.3–11.6; gaps 3,3 | individual ranks 1,1,1,1; graded sum 4=4n gives n=1 | Supported free neighborhood and de Rhamness retained | Replaced repeated Check |

Additional extreme cases were kept distinct rather than forced into the arithmetic hypotheses: the zero ring supplies no residue field or maximal ideal; the zero localized module is allowed in §§10.4–10.8 and excluded by the support theorem; p=2,3 do not enter the CG or P12 branch; infinite residue fields and equal-characteristic complete local rings belong only to the general descent supplier contract; nonreduced bases are excluded from the pointwise secondary-Hasse argument, while square-zero coefficient rings remain valid descent tests. Integer weights are not implemented with truncated natural subtraction. Every displayed denominator has a domain justification: theta factorials are units in its prime/weight range, trace denominators in the GL₂ control are 5-adic units, and ordinary normalization is performed in the characteristic-zero coefficient field before proving integral preservation.

## Maintainer consequences

No statement of an earlier supplier has been edited or claimed as newly available. The characteristic-two descent extension and the selected-rank comparison remain declared supplier gaps; F04 requires the supplier owner or a maintainer decision, rather than repeated repair of this package. No supplier dependency points back to a target here.

The old compound slugs gsp4-global-patching-data and gsp4-local-blocks-and-monodromy have been replaced by the specific slugs in the exact contracts. The existing p12-flag-orientation slug additionally requests the sign comparison needed by the parabolic ratio; no source convention is silently inverted. Suppliers consuming the requirements should use these named contracts.

All prefixed target labels become their numeric counterparts. The local names standardAlternatingMatrix, HasPrescribedMultiplier and symplecticCoefficientDescent are deleted, and §10.5 is absent; the supplier's symplectic_coefficient_descent name is unchanged. AbelianSurfacesModularity must retain the full conditional hypotheses of §§11.4–11.6. The restricted §3.4 contract still promises away-p polynomials and ordinary local characters, with no supplementary torsion p-polynomial theorem.
