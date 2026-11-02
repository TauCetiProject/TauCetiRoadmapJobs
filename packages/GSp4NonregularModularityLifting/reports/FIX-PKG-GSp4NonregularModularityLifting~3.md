# GSp4NonregularModularityLifting repair report

## F01 (P2) — applied

Unrestricted vector theta construction → construction for p>3, j≥k+2≥4 and j−k<p−2. The k=2 injectivity theorem keeps its separate bound p−1>j≥4. Added the rejected (2,2), accepted (4,2), and construction-only (6,2) controls at p=7. Preserved the scalar operator, Hasse exception, contraction normalization and absence of a determinant prefactor.

Evidence: CG20 line 2403, Proposition 8.9, published p.861, gives the construction range; CG20 line 2449, Theorem 8.11, p.862, gives the specialization. CG20 line 2951 and line 2954, p.877, fix the contraction. The rank-one example has determinant 0 but contraction −2≡5 modulo 7. Thus multiplying that contraction by the determinant would change 5 to 0.

Pattern check: §4.2's construction, coefficient-bundle API and field-extension API now carry their respective ranges. The uses in §§4.5, 4.7, 4.8, §5.1 and the Layer 4 example already impose the narrower doubling range and remain compatible. No boundary-case declaration was added to `packages/GSp4NonregularModularityLifting/Suggested.lean`.

## F02 (P1) — applied

Broad local-deformation lists → separate residual types (§2.7), Artinian minimality (§2.25), CG split-plane ordinarity (§6.14), full flags (§6.3), odd-p B/P comparison (§6.27), and all-p ordinary images (§6.29). Removed unrelated §§2.12 and 6.28. Added square-zero monodromy and flagged-plane controls; repaired every affected Needs line and layer dependency summary.

Evidence: LocalGaloisDeformationRings at its indexed open head, `TauCetiRoadmap/LocalGaloisDeformationRings/README.md`, §2.25 explicitly supplies `GSp4.MinimalAt` and its Artinian orbit conditions; §6.14 supplies `GSp4.SiegelOrdinary`, including its split unramified plane and zero entries. Section 2.12 concerns a different inert-CM lifting problem; §6.28 concerns GL₃ charts. CG20 line 616, Definition 4.6, pp.815–816, is the arithmetic source; line 631 fixes the plane shape.

For J₁₄=J₂₃=1, J₄₁=J₃₂=−1, both N₀=E₂₃ and B=E₁₂−E₃₄ satisfy XᵀJ+JX=0. Over 𝔽₇[η]/(η²), N=N₀+ηB has N²=η(E₁₃−E₂₄)≠0, whereas N₀²=0. Conjugacy to the U₁ orbit preserves the zero square. The candidate I+ηB preserves a full flag but acts on its first plane by I₂+ηE₁₂, so the required unramified plane condition fails.

Pattern check: exact supplier contracts, §0.3, §3.4, §§5.1–5.2, §§9.1, 9.3–9.4, §§10.1, 10.6, 10.8, §§11.2–11.4, and dependency summaries for Layers 0, 3, 5, 9, 10 and 11. Section 2.17 remains only for distinct-root Taylor–Wiles inertia; §6.26 is identified specifically as the CG tangent/finite-flat comparison, not a general ordinary functor. No supplier theorem was reconstructed here.

## F03 (P1) — not actionable in this package: supplier admission and merge-order placement

Duplicate §§11.0a–11.0b → named OrdinaryAutomorphicFormsAndModularityLiftingPartII OL.1–OL.5 imports. Updated scope, §11.4, dependencies, conditional endpoint and Lean docstring. Added matching gap:dyadic-ordinary-support and gap:symplectic-ordinary-component-support contracts; replaced the two exclusively transitive dyadic local/global gaps. Retained the singular-point application and its boundary controls.

The ownership claim is correct. Read the exact supplied board head 7e88c38aa64fb7206c8c281dfbe2f7007c09ca43, `packages/OrdinaryAutomorphicFormsAndModularityLiftingPartII/design/README.md`: OL.1 owns the dyadic tower and normalization, OL.2 the ordinary problem and dimension bound, OL.3/dyadic-ordinary-finiteness and OL.3/dyadic-ordinary-r-equals-t the unitary results, and OL.4–OL.5 the selected symplectic results. In particular, its lines 611, 632, 947 and 970 contain the four theorem targets identified by the review. The ordinary roadmap lookup does not expose this design as a packaged or merged roadmap; this is not evidence that the design does not exist.

BCGP25 line 6088, Theorem 5.7.14, pp.134–135, confirms the six dyadic hypotheses, finiteness and the extra depth condition for reduced R=T. BCGP25 line 5977 fixes the weight twist. Line 6628, Hypothesis 6.3.1, and line 6694, Theorem 6.3.4, pp.146–148, confirm the seed-selected symplectic statement, including line 6640's p=3 congruence. The actual singular-point use is BCGP25 line 8169 through line 8231, pp.178–179.

The package-side duplication is repaired. The supplier's admission and placement before this consumer cannot be effected in the authorized files. The two explicit supplier gaps name its existing sections rather than inventing new targets. Their exact needs sentences occur both under the README's Exact supplier contracts and in the plan's top-level gaps list. The worker or maintainer must settle admission and ordering; no merge-order file or supplier file was edited. The mechanical check below does not resolve that unadmitted design into its graph and therefore cannot certify its eventual placement. This external decision is for a human, not another repair round.

## Verification outcomes

- `packages/GSp4NonregularModularityLifting/Suggested.lean` elaborated from the supplied content checkout with `lake env lean`: exit 0, no output, no warnings. It imports only Mathlib; no Tau Ceti module build was needed.
- Signature audit: there are zero definitions, instances, abbreviations, opaque declarations or theorems in the acceptance file. The scratch signature file was elaborated once: exit 0, no output. The set of declarations requiring `#check @name` is empty, so there are no silently dropped binders and no signature changes. The docstring now identifies the ordinary support theorems as supplier inputs rather than local headlines.
- Dependency check, with the requested name, order and movable flags: exit 0; complete output:

```text
depcheck: 51 roadmaps, 600 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line was emitted. The unadmitted ordinary Part II design is the unresolved external placement described under F03.

- Citation resolver: exit 0; no cross-roadmap citation or Lean name listed as missing. Its indexed baseline is main 35c9f96 and 362 open heads. Its notice that it did not check pinned libraries was supplemented by direct checks at the supplied pins. The content checkout is origin/main c57bdc02; the relevant unmerged suppliers were read at the indexed open heads, not inferred from an absent file on main.
- Pinned libraries match the supplied manifest: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Object searches found no integral genus-two coefficient/coherent-Hecke carrier, ordinary deformation ring, higher-Hida module or geometric theta construction that would make an omitted local headline statable by a few simple definitions.
- Native declarations checked directly: `ZMod`, `Mathlib/Data/ZMod/Defs.lean:138`; `Module.End.genEigenspace`, `Mathlib/LinearAlgebra/Eigenspace/Basic.lean:71`; `Module.End.mem_genEigenspace_nat`, same file line 89; `IsIdempotentElem`, `Mathlib/Algebra/Group/Idempotent.lean:37`; `TauCeti.ContCohomology.H1`, `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean:712`. Generalized eigenspaces use kernels of powers; they do not assert semisimplicity. H¹ is the continuous cocycle quotient, with no arithmetic finite-generation conclusion and no automatically discrete arithmetic topology.
- All seven manifest source texts are legally readable in the supplied cache. No new source, waiver, missing-reference request or manifest edit was needed. The source locators for changed mathematics are recorded under the findings. Source text was not copied into the package or this report.
- Structural checks: 12 layers, 61 numeric target subsections, at least three prose Checks at every target, and all 20 gap needs sentences exactly matching the plan. A structural JSON comparison confirms that only the top-level gaps value changed in `packages/GSp4NonregularModularityLifting/design/plan.json`. Metadata and the source manifest are unchanged.
- `git diff --check`: exit 0, no output. No machine path or LaTeX delimiter was introduced in the product files or this report. No other package, tooling, merge-order file, issue or pull-request text was edited. No commit was made. No additional gate failure was supplied in the brief.

## Citation and ownership audit

Compared the upstream forms of `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md` and `TauCetiRoadmap/LocalGaloisGroups/README.md`. Used roadmap list, object-based grep and show for the searchable main/open-head corpus, and read the board design files for the suppliers that are still designs. Ownership against open pull requests without supplied readable files was not checked. No new generic construction is claimed here: the only changed construction is the existing genus-two theta target, with its source-supported range.

| Supplier | Verified interface consumed |
| --- | --- |
| ArithmeticGaloisRepresentations | §§5.11, 7.3–7.6, 7.9–7.12; §7.6's semisimplicity criteria include the nonzero Frobenius-annihilation inputs. |
| AutomorphicBundles | B3–B5 and B3.HT.1–3; coefficient bundles and expansion carriers remain external. |
| AutomorphicBundlesPartII | IC.1–IC.8 in its board design; the selected p-action and selected-rank extensions remain explicit gaps. |
| AutomorphicGaloisRepresentationsPartII | AG2.P, AG2.5 and AG2.6; GSp₄ construction, crystalline comparison and ordinary triangular shape. |
| AutomorphicLFunctionsAndLocalFactors | AL.4; the local parameter/factor normalization. |
| DeformationAndDerivedPatchingAlgebra | §§3.1–3.3, 5.1–5.9, 6.1–6.7, 7.6–7.10; the three patching branches retain distinct hypotheses. |
| EndoscopicTransferAndUnitaryTraceComparison | §§11.1, 13.2; solvable descent retains restriction irreducibility and the CM Tate twist. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory | R07.1–R07.2; filtration, differentials and BT₁ Hasse maps. |
| GlobalGaloisDeformations | R04.3–R04.6 and G7; the CG, P12 and two-torus specializations remain separately declared gaps. |
| HodgeTateAndCanonicalSubgroups | §§0.2–0.5, 0.14–0.15; period-tower conclusions are not inferred from pointwise maps. |
| IntegralHeckeAndGaloisDeterminants | §§0.7, 1.1–1.7, 2.1–2.3, IHG.3a–IHG.4; the p>2 restriction on symplectic descent is retained as the all-characteristic gap. |
| LocalGaloisDeformationRings | §§2.7, 2.17, 2.25, 6.3, 6.14, 6.26–6.27, 6.29; distinct residual, Artinian, flag and component interfaces. |
| ModularityAndLanglandsExtensions | §§3.2, 3.5(vii), 3.9, 3.26; the classification and stabilization premises are retained. |
| OrdinaryAutomorphicFormsAndModularityLiftingPartII | Exact head 7e88c38, OL.1–OL.5; named theorem targets and coefficient normalization read directly. Admission/order is external. |
| PadicFamiliesPartII | E6, S7, F8 and K2 in its board design; all four chambers and the singular comparison remain one imported theory. |
| OverconvergentAutomorphicForms | §§8.6–8.7; analytic coefficients with their finite-cover/quasi-Stein hypotheses. |
| PadicHodgeTheory | §§3.2–3.6, 4.4, 5.3–5.4; twists, Sen and period conventions. |
| ShimuraCompactifications | C3.9–C3.10, C5.13–C5.18; level maps, unnormalized trace and positivity. |
| ShimuraData | §§5.9–5.10, 5.18; CG, Kostant and Pilloni coordinate comparisons. |
| SmoothRepresentationsOfLocalGroups | SR.2 and SR.4; specialized Klingen, Steinberg, refinement, newvector and monodromy inputs remain separate gaps. |

## Adversarial mathematics pass

The following are explicit model computations, not proofs of the deep conditional targets or of unprovided supplier contracts. Each target row includes its associated API and negative controls; additional rows separate independent conventions, changed constructions and supplier conditions. Arithmetic was recomputed, including dual-number matrix multiplication, residue arithmetic, reciprocal polynomial coefficients and the characteristic-two matrix span. Inputs outside the standing arithmetic universe are rejection controls: coefficients are integers of a finite extension of ℚₚ, p is prime, m≥1, the CG branch has p≥5, and the dyadic unitary theorem has n≥2. Thus the zero ring, equal-characteristic DVR and q=1 do not silently become arithmetic coefficient instances. Zero modules and empty auxiliary sets remain genuine admitted controls.

| Statement | Instances tried | Computed values or competing models | Result | Change |
| --- | --- | --- | --- | --- |
| Coefficient convention | m=0,1,2; E/O | O/(1)=0 has length 0; k has length 1; O/ϖ² has length 2; ϖ:E/O→E/O is onto | Distinct coefficient objects | None |
| Geometric WD convention | q=3, r(F)=diag(1,3), N=E₁₂ | r(F)Nr(F)⁻¹=N/3; opposite convention gives 3N | Direction fixed | None |
| Monic/reciprocal convention | Roots 2,3; X=0 | X²−5X+6 gives 6; 1−5X+6X² gives 1 | Reversal required | None |
| Infinity-weight convention | Ω(0,2), Ω(2,2) | (−1,0;4), (−3,0;6); symmetric degrees 0,2 | Sign and rank agree | None |
| Full multiplier convention | ν=1,−1; a=2, ℓ=3 | ν²=1 in both models; ε⁻¹=3 and determinant 9 | Determinant does not determine ν | None |
| 0.1 root definition and factor API | (2,3),(2,6),(1,3),(0,2) over 𝔽₁₁ | Products 7,0,0,5; last pair has a zero root | Four exclusions do not imply units | None |
| 0.1 exchange and extension APIs | Swap (2,3); inject 𝔽₁₁ into 𝔽₁₂₁ | Products 7 and 4=−7; image of 7 remains nonzero | Both directions of nonvanishing preserved | None |
| 0.1 small fields | All unit pairs over 𝔽₂,𝔽₃ | Number of admissible pairs is 0,0 | No existence assertion | None |
| 0.2 weight and dual-spin dictionary | Geometric weights 0,0,1,1 | Dual then ε⁻³ gives 3,3,2,2; multiplier ε·ε⁻⁶=ε⁻⁵ | Both twist and multiplier transported | None |
| 0.3 weight/oddness data | p=7; a=4,5,6 | 4<6 true; a=5 gives ν(c)=1; 6<6 false | Numerical range alone insufficient | Exact suppliers |
| 0.3 minimal Artinian orbit | N₀ and N₀+ηB over 𝔽₇[η]/η² | Lie errors 0,0; squares 0, η(E₁₃−E₂₄) | Second lift rejected | Added Check |
| 0.3 CG plane API | I+η(E₁₂−E₃₄) | Full flag preserved; plane inertia entry η≠0 versus required 0 | Flag does not supply split plane | Added Check |
| 0.4 levels and deck API | Q empty; full levels 2,3 | Deck order 1; −I≡I modulo 2, −I≢I modulo 3 | Neatness needs q≥3 | None |
| 0.5 paired refinement API | (2,4,11,9) over 𝔽₁₃ | αδ=βγ=5, but αβ=γδ=8; swapping middle roots gives products 9,10 | Extra separation independent | None |
| 1.1 integral p-action | d=0,r=2; coefficients O/p³ | Valuation totals 4,3,3; p³·1=0 after reduction | Divide before reduction | None |
| 1.1 action images | Two operators both act by 7; Q empty | Difference maps to 0; diamond acts by 1 | Actual image, not free generator algebra | None |
| 1.2 joint selector | T=diag(c,c+1), Q=diag(d+1,d) | Intersection projector 0; union model I | Correct product of complements | None |
| 1.2 generalized-root API | Nilpotent Jordan block of length 2 | dim ker N=1, dim ker N²=2 | Simple eigenspace too small | None |
| 1.3 Katz occurrence | Zero space; α=2,β=3; eigenpair (5,7) | Zero witnesses 0; required eigenpair is (5,6), so (5,7) fails | Both roots and nonzero cusp witness retained | None |
| 2.1 coefficient fields | Matrix [[0,2],[1,0]]; zero space | Eigenvalues ±√2 of degree 2; zero gives 0 characters | Actual finite action image required | None |
| 2.2 Steinberg obstruction | x=3, weights (2,2),(4,2),(3,3) | Eigenvalues 1/3,1,1; valuations −1,0,0 | Contradiction confined to claimed weight | None |
| 2.3 all-degree interpolation normalization | Roots 1,2,3,6; lattices O,ϖO | Reciprocal coefficients 1,−12,47,−72,36; embedded reductions k,0 | Polynomial correct; rational span does not determine reduction | None |
| 2.4 qualified crystalline comparison | (m₁,m₂,w)=(1,0,0),(1,0,1) | Parities 1=1 and 0≠1 modulo 2; repeated root difference 0 | Parity and distinct-root hypotheses needed | None |
| 2.5 ordinary weight-two system | Diagonal α,β,β⁻¹ε⁻¹,α⁻¹ε⁻¹; ℓ=3 | Pair products ε⁻¹,ε⁻¹; ν=3, determinant 9 | Full multiplier agrees | None |
| 2.6 monodromy upgrade | Same r(F)=diag(1,3); N=0,E₁₂ | Both satisfy scaling by 1/3; ranks 0,1 | Semisimplification cannot determine N | None |
| 2.7 overconvergent characters | w=0,2; χ₂(u)=ζ₃ | Exponents (−1,−1,−2,−2),(−2,−2,−3,−3); third smooth factor ζ₃⁻¹ | Inverse and w/2 fixed | None |
| 2.8 completed isotypy | Multiplicity dimensions 1,2; E[t]/t² | Total dimensions 4,8; quotient and socle dimensions both 1 | Nonzero multiplicity, not eigenspace exactness | None |
| 3.1 Hasse shift | p=5,m=3; s=5,25; (4,2) | Required divisor 25: 5 fails,25 passes; difference after shift remains 2 | Depth and parallel shift agree | None |
| 3.1 ramified congruence | p=2; ϖ²=2 | 3²−1=8; (1+ϖ)²−1=ϖ²(1+ϖ) | Congruence holds also with ramified coefficients | None |
| 3.1a secondary Hasse definition/API | μₚ⊕I₁,₁⊕ℤ/p; p=5 | Primary section 0, secondary section a unit; exponent 5²−1=24 | Detects rank-one stratum | None |
| 3.1a reducedness boundary | k[η]/η²; k[x,y]/xy | Multiplication by η is nonzero but has zero geometric fiber; xy=0 with y≠0 | Reducedness and componentwise nonvanishing are distinct | None |
| 3.2 selected annihilator | k×k on first coordinate; zero selection | Annihilator 0×k, quotient k; zero selection gives unit ideal and zero quotient | Selection enters definition | None |
| 3.3 residual central data | diag(1,2,3,4) over 𝔽₇ | Trace 3, determinant 3; pairing products (4,6),(3,1),(2,5) | No common similitude from trace/determinant | None |
| 3.4 regular Galois system | (a,b)=(4,3); b=2 | Exponents 0,−1,−3,−4 pair to −4; b=2 repeats first exponent 0 | Regular flag distinct from singular plane | Suppliers corrected |
| 4.1 formal Fourier operators | Discriminants 1,2,0 over 𝔽₅ | Legendre multipliers 1,−1,0; their cubes equal themselves | X₂³=X₂ | None |
| 4.1 primitive-index distinction | Q=(1,0,p) | det Q=p, d(Q)=−4p reduce to 0; first coefficient remains 1 | p-primitive does not imply unit discriminant | None |
| 4.2 scalar theta | Determinants 1,0; p=7,k=8,6 | Coefficients 1,0; 8·15≡1, 6·11≡3; Hasse series at k=6 has Θ=0 | Hasse exception independent of arithmetic test | Preserved |
| 4.2 vector construction | p=7; (j,k)=(2,2),(4,2),(6,2),(7,2) | Target degrees −2,0,2,3; construction accepts only middle two; injectivity accepts only (4,2) | General range and specialization separated | Repaired |
| 4.2 vector coefficient and scalar extension | con(e₂²⊗f₁²); scale by 2; zero | 5,3,0 in 𝔽₇; determinant-prefactor model gives 0 instead of 5 | Correct normalization excludes wrong model | Preserved |
| 4.3 ambient decomposition | α-Jordan block; β-eigenline | Generalized α dimension 2; πβ on β-line is 1 versus (β−α)ᵐ | Actual normalized projection required | None |
| 4.4 ordinary envelope | Nilpotent/invertible blocks; c=6 in 𝔽₁₁ | Stable-image dimensions 0,2; c³−c=1 | Ordinary envelope and Q₂ condition discriminate | None |
| 4.5 all-index contraction obligation | det M=p; Q=(1,0,p); p=7 | Required covariance factor p≡0; d=−4p≡0; at diag(1,1),diag(1,2), discriminant symbols −1,−1 versus determinant symbols 1,1 | No discriminant division permitted | Range already compatible |
| 4.6 kernel equations | Scalar α/zero split; α-Jordan block | T-coordinate on F₀ is α+β; Ue₂−αe₂=e₁≠0 | Eigenvector reduction and F₀ retained | None |
| 4.7 cusp kernel vanishing | β=3 over 𝔽₁₁; scalar p=7 | 3⁻¹=4; scalar comparison weight (8,8)=(2,2)+(6,6) | Uses correct specialized theta range | None |
| 4.8 two injections | One-dimensional source; zero projection; O/ϖ² | Zero composite has kernel dimension 1; ϖe reduces directly to 0 but its torsion-layer class is nonzero | Actual composite and coefficient filtration required | None |
| 5.1 independent ordinary lines | e₁,e₂ versus e₁,e₁ | Two-by-two minors 1,0; ranks 2,1 | Independent lifts give direct summand | Plane supplier explicit |
| 5.2 singular deformation | Q empty/one prime; inertia χ,χ,χ⁻¹,χ⁻¹ | Q cardinalities 0,1; pair products 1,1; one line has rank 1 rather than 2 | Minimal-outside-Q and CG plane retained | Exact suppliers |
| 6.1 Klingen projector | Q empty/two primes; colliding pair products | Empty product 1; two-factor product prₓprᵧ; collision gives factor 0 in excluded block | Labelling and diamond augmentation retained | None |
| 6.2 trace inverse | GL₂ q=11,p=5; Klingen x≡1 | Degree-normalized composite 1/2−5δ/516 reduces to 3; v=6−5δ/43 reduces to 1; Klingen 4·(1/4)=1 | Selected trace unit is inverse normalization | None |
| 6.3 Hasse descent | k×k; k[x,y]/xy | (1,0)(0,1)=0; xy=0 | Componentwise nonzero criterion required | None |
| 6.4 coefficient induction | m=0,1,2; Q empty | Lengths 0,1,2 with 1+1=2; empty-cover maps equal 1 | H¹ connecting term retained | None |
| 7.1 dual coefficient | a=4; L=ω(1,−1) | Sym degree 2; dual twist ω³ gives determinant exponent 2, hence ω(4,2); Hom(E/O,O)=0 versus fraction-quotient dual O | Bundle and dual correct | None |
| 7.2 homology torsion | E/O versus k | ϖ(E/O)=E/O; ϖk=0 | Divisible dual torsion-free only with vanishing input | None |
| 7.3 whole defect | S=O[Cₚ], k, S⊕k | Generator/Tor dimensions (1,0),(1,2),(2,2); defects 1,−1,0 | Balance does not pass to arbitrary summand | None |
| 7.4 selected defect | Project S⊕k onto S, k, 0 | Defects 1,−1,0; zero projector rank 0 | Geometric projector and selected rank input required | None |
| 8.1 balanced patching datum | qTW=1; trivial diamonds | Presentation-variable count 0; inertia pair products 1,1; untwisted wrong model has multiplier ⟨u⟩ | Fixed multiplier and augmentation agree | None |
| 8.2 minimal R=T/freeness | T¹,T⁰; O[η]/η²→O | Annihilators 0,T; quotient kernel (η)≠0 | Positive occurrence and source faithfulness needed | None |
| 8.3 a≥4 endpoint | (p,a)=(7,4),(5,4),(7,2) | 4<6 true,4<4 false,2≥4 false | Vanishing and lifting ranges distinct | None |
| 8.4 arithmetic examples | Even subsets of six points; twist pair | Quotient size 2⁵/2=16, dimension 4; twist becomes isomorphic over algebraic closure | Exceptional model and geometric nonisogeny retained | None |
| 8.5 classical CG endpoint | a=4,2; ℓ=3 | Weights 0,0,3,3 and 0,0,1,1; at a=4 slopes have no gap 1, at a=2 they do | Crystallinity not replaced by weights alone | None |
| 9.1 P12 admissibility | Ratio 2 over 𝔽₇ and inverse 4; p=5,7 | 2≠4; neatness alternatives differ at 5 and 7 | Orientation comparison retained | Suppliers separated |
| 9.2 variable-weight R=T | Λ=O[[w₁,w₂]]; Λ/ϖ | Special fiber at (0,0) is O; ϖ kills 1 in Λ/ϖ | Finite flatness cannot be inferred from torsion control | Suppliers separated |
| 9.3 p-adic lifting | κ=(4,2),(2,2),(1,1) | iκ=(0,0,−3,−3),(0,0,−1,−1),(0,1,0,1) | Integral family does not imply classicality | Suppliers separated |
| 9.4 parallel parabolic lifting | k′=2,3; one/two weights | Lists (0,0,−1,−1),(0,−1,−2,−3); middle ratios ε versus ε⁻¹; variable counts 1,2 | Rank 4 unchanged; orientation gap required | Suppliers separated |
| 10.1 BCGP datum | p=2,r=7,13; p=3 | 7 mod 4=3,13 mod 4=1; all odd r satisfy r mod 2=1 | Dyadic neat congruence distinguished | Ordinary-image supplier |
| 10.2 four multiplicity modules | One two-direction torus, p=2,N=1 | Four chambers; diamond order 2²=4 | Neither chambers nor torus directions collapsed | None |
| 10.3 weight/diamond freeness | Rank d over Λ[C₂²]; d=0 | Λ-rank 4d, augmentation rank d; 8 has valuation 3 in ℤ₂ | Zero rank allowed; averaging invalid | None |
| 10.4 actual Hecke image | M=0; two equal operator actions | Image ring 0; difference of equal actions 0 | Definition permits zero before support | None |
| 10.6 deformation action | Zero module; diamond unit ζ₃ | Unique map to zero ring; ζ₃ versus ζ₃⁻¹ are distinct | Full multiplier and diamond action retained | Ordinary-image supplier |
| 10.7 projective norm | Regular/trivial k[C₂], char 2 | [1]↦1+g≠0 versus 1↦0; invariant dimensions both 1 | Projectivity essential | None |
| 10.7 nonabelian and trivial controls | Regular k[S₃], char 3; trivial group | Norm [1]↦Σg has six nonzero coefficients; trivial-module norm is 6=0; trivial-group norm 1 | Comparison is not an abelian-group accident | None |
| 10.8 corrected patching | p=2,N=1; E[[x]]→E[[x]]/(x²) | (1+t)²−1=2t+t² is not in (t²); relative cotangent 0 but kernel (x²)≠0 | Open cutoffs and actual ring action needed | Ordinary-image supplier |
| 11.1 R-regular definition/API | R=3, (−4,−1),(0,3),(−1,−4); R=0 | Gap pairs (3,3),(3,−5),(−3,9); at (0,0) R=0 gives (0,1) but R≥1 fails | Both inequalities and positive R needed | None |
| 11.2 seed alternatives | E[x,y]/xy; residual traces t,t+ϖ | Two components through origin; trace difference reduces to 0 but is nonzero in E | Unique seed component and residual-only match retained | Ordinary-image supplier |
| 11.3 regular multiplicity one | Local selected dimensions 1,1 or 2,1 | Tensor dimensions 1 or 2; zero fiber dimension 0 | Nonzero and selected-line hypotheses essential | Ordinary-image supplier |
| 11.4 singular support | E×E on E×0; dual-number thickening | Fiber dimensions 1,0; Ann(E over E[η]/η²)=(η)≠0 with full point support | Support confined to component through q | Imported regular theory |
| 11.5 rank one | Four individual ranks 1; rank 0 | Total dimension 4; zero rank gives fiber dimension 0 everywhere | Four separate positive ranks required | None |
| 11.6 classical weight two | Four pieces of dimension 1; repeated Sen block | 4n=1+1+1+1=4 implies n=1; Jordan nilpotent ranks 1 versus de Rham-required 0 | Multiplicity and Sen conditions independent | None |

The changed supplier contracts and retained gaps were also tested independently:

| Statement | Instances tried | Computed values or competing models | Result | Change |
| --- | --- | --- | --- | --- |
| Dyadic OL.1–OL.3 import | n=0,1,2,4; [F⁺:ℚ]=1 | n=0,1 excluded by n≥2; residues for n=2,4 are 2,0 modulo 4 | Exact rank/range retained | Named gap |
| Dyadic coefficient convention | Weight factor at diag(1,3); scalar action 3,1 | Factor 1/3; contragredient outputs f/3,f | Normalization retained | Imported Check |
| Dyadic Euler convention | n=2, degree 2, #T=3, #Q=5 | χ=−5; −h¹+1−1=−5 gives h¹=5; omitting h³ gives 6 | h³ cannot be suppressed | Imported Check |
| Dyadic tame preparation | ψ(σ)=−1 in characteristic zero | Eigenvalue −1≠1, reduction 1 in characteristic 2 | Restrictions of original lifts only | Imported Check |
| Symplectic OL.4–OL.5 import | p=3,q=7,19; nodal origin | Residue pairs (1,7),(1,1) modulo (3,9); origin on 2 components | Extra congruence and selected component retained | Named gap |
| Symplectic descent, every residue characteristic | Standard Sp₄(𝔽₂); trivial group; C=I+ηE₁₄ | Matrix span dimensions 16,1; CᵀJC−J=0 | Absolute irreducibility and form are real conditions | Existing gap |
| GSp₄ pseudocharacter reconstruction | Four-dimensional trivial representation | Trace 4, determinant 1 for multiplier 1; determinant alone also permits multiplier −1 | Full reductive datum indispensable | Existing gap |
| Derived Siegel p-action | Coherent complex with H⁰=H¹=k | Identity on H⁰ has two candidate extensions to H¹, namely 0 and 1 | H⁰ construction does not define complex action | Existing gap |
| Selected coherent rank inequality | S⊕k with k-projector | Whole defect 0, selected defect −1; zero projector gives dimensions 0≤0 | Same summand required | Existing gap |
| P12 horizontal control | Λ and Λ/ϖ | Multiplication by ϖ injective on Λ, zero on Λ/ϖ | Integral control cannot be replaced by rational comparison | Existing gap |
| P12 flag orientation | k′=3 | Printed deformation ratio ε^(2−1)=ε; automorphic ratio ε^(−2+1)=ε⁻¹ | Supplier dictionary remains a premise | Existing gap |
| Integral enormousness and oddness | Trivial group on E⁴; odd involution diag(1,1,−1,−1) | Invariant subspace dimension 4 in trivial model; odd multiplier −1 squares to 1 | Image and full oddness not automatic | Existing gap |
| CG Selmer presentation | qTW=1,0 | Variable counts 0, invalid −1; natural subtraction would misleadingly give 0 | qTW≥1 retained | Existing gap |
| Two-torus Taylor–Wiles data | One depth-N prime | Group orders p^(2N) versus rank-one p^N | Branches distinct | Existing gap |
| P12 variable-weight data | Borel and diagonal specialization | O[[w₁,w₂]]→O[[w]] identifies two variables; rank remains 4 | Universal weight algebra retained | Existing gap |
| Dyadic ordinary local regularity | p=2 weight torus | Torsion subgroup C₂² has 4 characteristic-zero characters | Odd-p one-component argument unavailable | Existing gap |
| Steinberg U eigenvalue | x=3, (j,k)=(2,2),(4,2) | 1/3,1 | Exact normalization retained | Existing gap |
| Klingen no-newforms/trace | x≡1 modulo 7 | Degree 4, selected factor 1/4=2, product 1 | Selected trace constant differs from degree | Existing gap |
| Paramodular newvector | Local selected line L | dim L=1; two copies give dimension 2 | Conductor line is specific input | Existing gap |
| Ordinary/neat refinement lines | Two local lines | Tensor dimension 1·1=1; replacing one by dimension 2 gives 2 | Refinements cannot be omitted | Existing gap |
| Pure-monodromy uniqueness | q=3, N=0,E₁₂ | Same semisimple r, distinct N ranks 0,1 | Purity/adjoint conditions needed | Existing gap |
| Projective finite-group Satake | k[C₂] versus k, char 2 | Norm ranks 1 versus 0 | No division by 8 substitutes for projectivity | Existing gap |
| Weil-restriction big image | Geometrically isomorphic twist pair | Product SL₂² has dimension 6; diagonal SL₂ has dimension 3 | Geometric nonisogeny indispensable | Existing gap |

Recomputed the worked examples against the statements they use:

| Example | Instances tried | Computed values | Result | Change |
| --- | --- | --- | --- | --- |
| Layer 0 | p=11,a=4,α=2,β=3 | Root product 7, weight 4<10, odd multiplier −1 | Compatible numerical data only | None |
| Layer 1 | T=diag(5,0), Q=diag(6,0), A=diag(7,9) | Joint projector diag(1,0), restricted A=7 | Actual selected image | None |
| Layer 2 | Dual-spin of weights 0,0,1,1 | Multiset 2,2,3,3, multiplier ε⁻⁵ | Dual and twist agree | None |
| Layer 3 | p=7,m=2,s=7t₀ | Shift 42rt₀, difference 2; selected quotient k | Hasse and image data distinct | None |
| Layer 4 | p=11,j=4,β=3 | j−k=2<9, 4<10, 3·4=1 | Repaired general range and injectivity apply | Recomputed |
| Layer 5 | Residual generators e₁,e₂ | Unit minor 1, lifted summand rank 2 | Split-plane supplier needed in addition | Recomputed |
| Layer 6 | x≡1 modulo 7; m=1→2 | 4·2=1 modulo 7; lengths 1+1=2 | Same unit inverse through reduction | None |
| Layer 7 | S=O[C₅], M=S⊕k | Defects 0,1,−1; selected k coinvariant rank 0, Tor dimensions 2 and 1 | Full balance insufficient | None |
| Layer 8 | p=7,a=4,ℓ=3 | Multiplier 27, determinant 729, HT 0,0,3,3 | Correct crystalline endpoint range | None |
| Layer 9 | Parallel k′=3 | One weight variable; ratios ε and ε⁻¹ | Orientation premise retained | None |
| Layer 10 | p=2,N=1,Δ=C₂² | Order 4; ranks 4d and d, including d=0 | Freeness alone gives no support | None |
| Layer 11 | R=3,(h₁,h₂)=(−4,−1) | Gaps 3,3; four ranks 1 imply 4n=4 and n=1 | Support and classicality still separate | Imported support retained |

## Maintainer consequences

There are no added or deleted Lean declaration names. Local headings §§11.0a–11.0b are deleted with no stubs; their four generic regular ordinary results belong to OrdinaryAutomorphicFormsAndModularityLiftingPartII OL.3 and OL.5. The singular support target §11.4 and the three original lifting endpoints retain their numbering and generality. A search of readable board/main README and acceptance files found no other roadmap citing those deleted local headings.

The plan's two old dyadic local/global gap entries were only prerequisites of the deleted reconstruction. Their replacement by the two ordinary Part II contracts changes the ownership edge rather than eliminating the mathematical prerequisites. Other plan fields, including historical design nodes and review records, were left untouched as required. No reverse dependency on this singular-weight application was introduced into the ordinary supplier.

The review's historical table records earlier findings as repaired or settled; it does not reopen them as twelve new findings. Its two partially repaired patterns are precisely F02 and F03 above. The pre-existing selected coherent rank gap remains declared, not silently assumed solved. Fresh independent review is still required.
