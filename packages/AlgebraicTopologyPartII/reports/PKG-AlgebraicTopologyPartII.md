# PKG-AlgebraicTopologyPartII

Package: `packages/AlgebraicTopologyPartII/README.md`, `Suggested.lean`, `metadata.toml`, `sources.toml`, and the top-level supplier-gap additions in `design/plan.json`.

## Inputs and preservation

The accepted design contains 75 targets in 16 layers. The separate `design/review.json` and a separate review report were absent; `design/plan.json` contains the acceptance review, its 75 verdicts, 12 source-issue records and 15 proof-obligation records. Those embedded review claims were checked as data. The source manifest was absent and was created. No surrounding instruction was taken from fetched text. No suspicious instruction requiring an action outside the brief was found.

The README skeleton was generated from every node's layer, statement, hypotheses, proof steps, prerequisites, API, acceptance checks, tests and source locators. All 75 nodes are accounted for below: 58 remain targets and 17 are consumed as supplier contracts after the duplication sweep. Every accepted API fact and Check survives, in prose; supplier-owned ones appear under their supplier. The accepted layer numbering is retained, including gaps left by imported topics; no removed-target stubs are present. Layers 1 and 6 are input layers with examples and dependencies. Added native-model Checks cover the six simple acceptance definitions.

Only the top-level `gaps` value of `design/plan.json` was edited. Its 15 original entries are unchanged; nine one-sentence supplier records were appended. All other JSON values and surrounding text were compared with the original and retained. The upstream roadmap forms read were AlgebraicTopology, ClassifyingSpaces and ComplexTori; metadata matches AlgebraicTopology's `topic = "math.AT"`.

## Headline inventory and signatures

The initial inventory was saved before writing the Lean file. Ownership resolution removes supplier foundations from this package's own headline list. The following is the final acceptance inventory.

| Headline | Status |
|---|---|
| Arrangement purity and twisted configuration trace | Not statable at the pins: no native étale/compact-support configuration representation with the finite-cover coefficient comparison. |
| Configuration multiplicities and stable diagonal | Not statable: compact-support configuration cohomology with its symmetric-group representation is missing. |
| Tame regular-fibre bouquet with total Milnor number | Not statable: the local Milnor-number carrier and its global total are missing; no unspecified integer replaces them. |
| Hilton basic-product decomposition | Not statable: the basic Whitehead-product indexing and characteristic maps are missing; an arbitrary indexing type was not substituted. |
| Rational sphere homotopy | Stated: `rationalSphereRanks`, with finite dimensionality and all degrees at least two. |
| Rational bouquet homotopy | Stated: `rationalBouquetRanks`, on an arbitrary space homotopy equivalent to the native bouquet, at every base point, with finite dimensionality. |
| General finite-type double-loop cohomology algebra | Not statable: the graded cup-product/minimal-model algebra comparison is missing. |
| Full double-loop Betti product | Stated: `doubleLoopBetti`, on the actual native double loops and singular cohomology of any space of the stated bouquet type, with n≥4 and finite dimensionality. The finite coefficient product is exactly the infinite product's degree-j coefficient. |
| Finite-join bouquet and skeleton/join homeomorphism | Not statable: the topological finite-join carrier is missing; the supplied combinatorial simplicial join is not used as an unproved replacement. |
| Fermat strong deformation retraction | Stated: `fermatDeformationRetraction`, fixing every point of the actual nonnegative-power skeleton. |
| Fermat bouquet | Stated: `fermatBouquet`, with exactly (k−1)ⁿ spheres of dimension n−1. |
| Fermat double-loop simple connectivity | Stated: `fermatDoubleLoopSimplyConnected`, n≥5,k≥2, every fibre base point. |
| Canonical mod-two/integral support splittings and low-coordinate surjectivity | Not statable: the supplied semialgebraic equivariant support carrier and purity maps are absent from the pins. |
| Complement duality, corrected localization and self-duality | Not statable: semialgebraic pair/support cohomology and its constructed traces/maps are missing. |
| Affine, real Lefschetz, near-top cup-omega and quartic rank | Not statable: real-variety semialgebraic equivariant cohomology and the actual Gysin/cup/restriction maps are missing. The quartic theorem retains its ordinary numerical and action hypotheses. |
| All-degree Wu pushforward and gamma/tangent comparison | Not statable: supported semialgebraic squares, real Gysin and topological characteristic-class carriers are missing. The generic constructions have named suppliers. |
| Transverse surface-loop representatives | Not statable in the exact requested form: the class map from a smooth embedded circle to the native singular homology group is missing. |
| Ramified trace triangle and corrected integral lift | Not statable: equivariant sheaf cokernels, cover trace, derived direct images and coefficient comparisons are missing. |
| Circle extension obstruction | Not statable: its sheaf extension and equivariant-component maps are missing. |
| Equivariant Ehresmann and stratified pair transport | Not statable in their smooth/controlled form: regular-level smooth-fibre and smooth trivialization data, and invariant control-data carriers, respectively, are missing. Native `IsSubmersion` exists; it alone does not give those heavy constructions. |
| Finite-index equivariant image and common-lift chase | Not statable: the equivariant topological cohomology carrier, comparison maps and chosen ramified triangle are missing. |

`Suggested.lean` has six headline theorems and six real-bodied definitions/abbreviations. It has one `import Mathlib`, precisely two used Tau Ceti module imports, no admitted data, no admitted examples, and no `set_option`.

## Corrections and limits

- Use parity ε_n=(n+1) mod 2 and s_n=(−1)^(n+1), including n=0, rather than Lean natural subtraction in n−1. At n=0,N=2 the first exponent is −2.
- Preserve n≥4 for the full double-loop Betti series. Ω²S² has component set ℤ, so its full H⁰ is not finite dimensional. The native acceptance factor explicitly takes n≥4 and r≥1, excluding degree-zero formal substitution caused by natural subtraction.
- Preserve the weighted diagonal identity, rather than the source's unrestricted bivariate equality. A constant term is 1 before extraction and contributes 0 to a positive diagonal degree; those cannot be equated as full series.
- Distinguish ordinary trace weights from compact-support degrees; at m=1 the correct sum is q, while assigning ordinary weight q^(1−2) to compact H² gives q⁻¹. Keep every Euler exponent in the product and use wedges of spheres.
- Include dual rational homotopy generators and the connected nilpotent finite-type loop hypotheses. Added finite-dimensionality conclusions prevent `Module.finrank` from silently returning zero on an infinite-dimensional group.
- The support, pair and free-complement cohomologies are distinct. On a real point, supported H⁰ is ℤ while pair H⁰ is zero. Keep the integral parity restriction, strict low-coordinate cutoff and the separate corrected-localization windows. Explicitly include the projection back to the left window after multiplying by gamma in u_i.
- Extend the exceptional-image/orientation supplier contract to every commutative noetherian coefficient ring supported by BW, rather than narrowing it to ℤ and finite rings. Two-sided algebraic perfect duality uses finite stalks; finite exponent alone fails at an infinite direct sum of 𝔽₂.
- Correct the real Gysin source to Y(R), with shift c; the complex shift is 2c. Conjugation orientation is −1 on ℂ and +1 on ℂ².
- Preserve the negative trace-zero lift. At n=4 the negative vector reduces to 3 and the positive vector to 1; both have trace zero. Equality after restriction uses a monic target restriction, not source monicity.
- Preserve the H² reduction scalar n/2 mod 2, with values 1,0,1 at n=2,4,6; H¹ reduction remains identity. A lift of the quotient unit in a sheaf extension is weaker than a group-homomorphic splitting; constant ℤ/4 distinguishes them.
- Retain boundaryless surfaces, finite singular/forbidden sets, disjoint unions of circles and the empty representative of zero. Ordinary Ehresmann does not preserve arbitrary divisors. Stratified transport assumes invariant compatible control data and actual stratumwise submersivity. No failure of Benoist Proposition 6.6 is alleged.
- Use the actual ordinary quartic input supplied by EtaleDualityAndPerverseSheaves §4.7: (3⁵−3)/4=60. The design's proof-obligation attribution to “Dimca Example 5.24” is not supported by BW v3: BW line 2477 instead cites EH16. The README cites BW's calculation and the mathematical supplier, without repeating that attribution.
- The theorem locators for BW were checked in arXiv v3, and page locators were changed to that version's internal pagination. The journal author sites timed out. The source manifest has one BW key with both DOI and arXiv, not two works.

The README does not claim to close the original 15 proof obligations. Their substantive work appears as targets or exact supplier contracts: local Milnor/thimble attachments, Hilton comparison, minimal models, semialgebraic geometry/adjoints, affine ordinary and first-relative-degree bounds, supported square comparisons, relative surface perturbation, fixed-point trace, invariant controlled lifts and the common-class cochain chase. The algebraic Picard-to-ordinary adapter is not assumed by the topological near-top theorem. The full period-index application is not asserted from ambient Ehresmann alone.

The construction moved below a later theory is the semialgebraic affine-complex dimension/relative-affine argument in Layer 11: its route is stated topologically, without consuming a downstream real/étale comparison. Stable Steenrod machinery from StableHomotopyKTheoryPartII is not imported; the ordinary semialgebraic operations are supplied by the earlier MotivesAndAlgebraicCycles §7.6b. No later roadmap is a supplier, and no merge-order file was edited.

## Duplication and ownership sweep

The audit used the supplied indexed main/open-head search service, the board packages and the actual pinned source trees, by object: configuration tuples and discriminant opens, finite-cover descent, compact trace, tensor characters, cycle partitions, Möbius/Euler transforms, rational wedges/loops, finite joins, semialgebraic sites/duality/squares, sign systems, ramified traces, orientation/characteristic classes, and proper-submersion/Whitney transport. The final window witness was corrected during this pass: on RP² at d=i=2, x=1 and y=a lie in the complementary windows and give degree(aγ)=1 versus degree(a)=0; two degree-zero units would lie outside those complementary windows. Read suppliers were checked in their actual main copy, or in the head supplied by the index when they add a new roadmap. Revisions of AlgebraicTopology and DifferentialGeometry were not used in place of their main contracts. The new CharacteristicClasses and SmoothBundlesConnections folders supply their own independent directions. Searches for all twelve acceptance names found no collision in any readable roadmap.

The roadmap checkout is main `1c3cc07b418d1f33dfac76afadb7ac3955e05948`; the actual manifest pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. These differ from the design's old audit pins, so its absence claims were not reused.

| Target removed from local ownership | Supplier |
|---|---|

| Ordered and unordered configurations | InverseGaloisAndArithmeticFundamentalGroups §IG.5.1 |
| Configuration permutation torsor | InverseGaloisAndArithmeticFundamentalGroups §IG.5.1 |
| Plane and disc configuration comparison | InverseGaloisAndArithmeticFundamentalGroups §IG.5.1 |
| Root Frobenius and full cycle type | Tau Ceti `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors`, `TauCeti/FieldTheory/GaloisGroups/FrobeniusOrbits.lean:106` |
| Semialgebraic real and complex loci | MotivesAndAlgebraicCycles §7.6a |
| Equivariant semialgebraic cohomology | MotivesAndAlgebraicCycles §7.6a |
| Cohomology of the real-locus pair | MotivesAndAlgebraicCycles §7.6a |
| Free-action descent and dimension bounds | MotivesAndAlgebraicCycles §7.6a |
| Comparison over the actual real numbers | MotivesAndAlgebraicCycles §7.6a |
| Parity twists and regular coefficients | MotivesAndAlgebraicCycles §7.6a |
| Canonical mod-two fixed-locus coordinates | MotivesAndAlgebraicCycles §7.6b |
| Semialgebraic orientation sheaves | MotivesAndAlgebraicCycles §7.6b |
| Semialgebraic exceptional inverse image | MotivesAndAlgebraicCycles §7.6b |
| Orientation formula and finite duality | MotivesAndAlgebraicCycles §7.6b |
| Semialgebraic Gysin and trace | MotivesAndAlgebraicCycles §7.6b |
| Equivariant purity and proper Gysin | MotivesAndAlgebraicCycles §7.6b |
| Semialgebraic Steenrod squares | MotivesAndAlgebraicCycles §7.6b |

Additional duplication removals and kept variants:

- Generic tensor-character multiplicativity and invariant averaging are supplied by `Representation.char_tensor` and `Representation.card_inv_mul_sum_char_eq_finrank`, `Mathlib/RepresentationTheory/Character.lean:68,113`. The local theorem computes the permutation-tensor trace N^c with the sign factor.
- No full-cycle counter is defined here: use `Equiv.Perm.fullCycleType`, `TauCeti/GroupTheory/Perm/Partition.lean:96`, including its full-orbit comparison. No second loop-space, wedge, relative-singular-cohomology or cyclic resolution carrier is introduced.
- Ordinary spectral-sequence foundations are consumed through AlgebraicTopology Stage 5 item 5. The design's missing-Hilton work remains; its claim that another ordinary Serre spectral sequence must be constructed here is not repeated.
- Topological Stiefel–Whitney construction belongs to CharacteristicClasses §§C2–C3. The retained theorem identifies gamma with the supplied tangent class and evaluates its surface square; it does not define another engine.
- Ordinary Ehresmann is supplied by SmoothBundlesConnections §B1 item 5, rather than the design's unresolved proposed MappingClassGroups owner. The retained theorem adds involution-equivariant radial transport.
- Constant fixed-locus coordinates are supplied by MotivesAndAlgebraicCycles §7.6b. Section 7.5 retains the arbitrary rank-one free local system and its coefficient-reduction refinement; §7.6 retains its explicit twisted Bockstein.
- The supplier's proper-pushforward theorem on admissible cycle degrees is consumed; §12.2 retains the stronger formula on every equivariant mod-two cohomology degree.
- QWittVectors §1.4a concerns products (1−a_rTʳ)⁻¹. Signed integer exponents in factors (1−Tʳ)^(−e_r) are a different object, so their construction remains here.

Pin definition audit:

| Native definition | Exact pin location | Actual condition and what it does not imply |
|---|---|---|
| `GenLoop` | `Mathlib/Topology/Homotopy/HomotopyGroup.lean:97` | Continuous cubical maps with every boundary value equal to the base point; no Hausdorff, nonempty or CW axiom. |
| `TauCeti.WedgeSum` | `TauCeti/Topology/WedgeSum.lean:72` | Quotient of the summands with an extra wedge point; empty index gives a point, not the empty space. |
| `TauCeti.IsSemialgebraic` | `TauCeti/Geometry/RealAlgebraic/Semialgebraic/Basic.lean:68` | Boolean algebra generated by polynomial zero/positivity sets on a commutative linearly ordered ring; no real-closedness, topology, dimension or completeness. |
| `Equiv.Perm.fullCycleType` | `TauCeti/GroupTheory/Perm/Partition.lean:96` | Cycle partition including fixed points; Mathlib `cycleType` in `Mathlib/GroupTheory/Perm/Cycle/Type.lean` omits fixed points. |
| `CategoryTheory.Sheaf.H` | `Mathlib/CategoryTheory/Sites/SheafCohomology/Basic.lean:56` | Native site sheaf cohomology; no semialgebraic support/Gysin construction follows from its carrier alone. |
| `Rep.FiniteCyclicGroup.homResolutionIso` | `Mathlib/RepresentationTheory/Homological/GroupCohomology/FiniteCyclic.lean:60` | A finite commutative group and specified generator; differential ρ(g)−id followed by norm. Positive even-degree isomorphism at line 85 carries `NeZero`. |
| `TopCat.singularCohomology` | `TauCeti/AlgebraicTopology/Cohomology/Basic.lean:99` | Cohomology of Hom from the singular chains to the coefficient object; a native module carrier, not sheaf-supported equivariant cohomology. |

No computational algorithm or implementation project was added. All numerical calculations below are small witnesses for definitions, signs or hypotheses.

## Sources

Ten works were legally fetched and read through the source service: BS, BW, B19, CEF, SERRE, SULLIVAN, PHAM, BROUGHTON, EP and MATHER. BROUGHTON and MATHER use OCR of institutional/author scans. The Annals and Princeton author hosts were explicitly classified after checking their publisher/author provenance. HILTON is `uncertified`, with the journal DOI and exact Theorem A/Corollary 4.10 locators: the DOI publisher endpoint returned HTTP 403 and no legally readable text was obtained. BS's use of the theorem was read, but does not certify the primary Hilton proof. There is no unresolved source request after settled/obtained works were reconciled by their existing keys. No source passage or cached text is included in the package or this report.

Locator checks included CEF line 860/964, BS lines 2199–2400, BW v3 lines 310–1014, 1130–1230, 1659–1685, 1838–1886 and 2471–2478, B19 lines 362–480, 559–599, 773–816 and 1354–1534, EP lines 2127–2300, PHAM lines 175–222, BROUGHTON lines 115–117 and 354–410, and MATHER line 969 with its §§7,10 control-data inputs. All are locators into the service's numbered extraction, not quoted source passages. Supplemental API/source deductions are identified as deductions in the README.

## Adversarial mathematics pass

Each row records the numerical/group/module values tested, including the imported targets because their conventions remain consumers' obligations. A finite list of instances is a falsification pass, not a proof of a general theorem. “Retained” below means no counterexample arose in those values; it does not claim the deep proof is supplied.

| Statement | Instances tried | Values computed on both models/sides | Result and change |
|---|---|---|---|

| 1.1 Ordered and unordered configurations | m=0,1; singleton X,m=2; ring ℤ and zero ring | card PConf₀=card Conf₀=1; PConf₁=X; singleton PConf₂=∅; 2−0=2∉ℤˣ; zero ring has 0=1 and IsUnit 0 | Imported; add zero-ring and singleton negative controls. |
| 1.2 Configuration permutation torsor | m=0,1; T²+T over 𝔽₂ | degrees 0!=1!=1; T²+T=T(T+1), two orderings, free transposition despite 2!=0 in 𝔽₂ | Imported; native/supplier conventions preserved. |
| 1.3 Plane and disc configuration comparison | z=0, z=1; w=1/2 and boundary w=1 | z/(1+abs z)=0,1/2; inverse gives 0,1; denominator at boundary is 0 and boundary is excluded | Imported; native/supplier conventions preserved. |
| 2.1 Split arrangement purity | empty arrangement; m=1,2 configurations; 𝔾_m over 𝔽₂ | ordinary b=(1) for affine space; PConf₁ compact b₂=1; PConf₂ compact b₃=b₄=1; geometric H¹ eigenvalue 2, arithmetic 1/2 | Retained with the stated hypotheses and route inputs. |
| 2.2 Root Frobenius and full cycle type | identity on 3 letters; (12)(3); T²+T and T²+T+1 over 𝔽₂ | full partitions [1,1,1],[2,1],[1,1],[2]; factor counts 3,2,2,1; ordinary cycleType omits the ones | Imported from new pin, including fixed points. |
| 2.3 Signed tensor permutation character | S₃, N=2; identity, transposition, 3-cycle; m=N=0 | unsigned traces 8,4,2; sign-twisted traces 8,−4,2 for even n; empty tensor trace 0⁰=1 | Retained with the stated hypotheses and route inputs. |
| 2.4 Twisted configuration trace formula | q=2, trivial character, m=0,1,2 | counts 1,2,2; ordinary alternating sums 1,2,2²−2=2; compact m=2 sum 2²−2=2 | Ordinary/compact notation and Frobenius retained. |
| 3.1 Signed Witt–Euler exponents | N=0; N=1 both parities; n=0,N=2 | all e=0; even N=1 gives (−1,0,0); odd N=1 gives (1,−1,0); n=0 gives first exponent −2, not +2 | Explicit parity at n=0 and integral recursion. |
| 3.2 Möbius formula for Euler exponents | N=2,r=1,2,3, even/odd n; r=0 | numerators −2,−2,−6 and 2,−6,6; divide by 1,2,3 to get −2,−1,−2 and 2,−3,2; total e₀=0 but theorem excludes division index 0 | Positive denominator retained; zero index only total definition. |
| 3.3 Weighted squarefree Euler product | q=2; weights c=1,−1,0 | first coefficients at c=1 are 1,2,2,4; at c=−1 they are 1,−2,0,0; at c=0 they are 1,0,0,0 | Retained with the stated hypotheses and route inputs. |
| 3.4 Twisted configuration multiplicities | m=1,N=2,n even and odd; m=0 | qU coefficients −2,+2; external signs −1,+1 give dimension 2 both times; m=0 degree 0 dimension 1, others 0 | Retained with the stated hypotheses and route inputs. |
| 3.5 Stable configuration diagonal | n=4,N=1,j=d=1; n=5,N=1,j=2,d=1; j=d=0 | configuration sums 1,1,1; product coefficients [t](1+t)=1, [t²](1+t⁵)/(1−t²)=1, constant=1 | Only weighted diagonal claimed. |
| 4.1 Tame complex polynomial | f=∑zᵢ²−1; f=z₁; f=x²y−x at (t,1/(2t)) | gradients 2z, constant (1,0,…), and (0,t²); at t=1/2,1/4 norms 1/4,1/16 while y=1,2; nonconstant linear fibres are affine spaces | Retained with the stated hypotheses and route inputs. |
| 4.2 Tame fibre bouquet theorem | nonconstant linear f; n=2,k=2 Fermat; n=2,k=3 Fermat | Milnor totals 0,1,4; regular fibres have bouquet counts 0,1,4 circles in dimension 1; their H¹ ranks agree | Retained with the stated hypotheses and route inputs. |
| 4.3 Hilton decomposition of a sphere wedge | N=0,1,2, weights 1,2,3; n=3 | word counts (0,0,0),(1,0,0),(2,1,2); characteristic dimensions for n=3 are 2,3,4, not smash dimension 4 in weight 2 | Retained with the stated hypotheses and route inputs. |
| 4.4 Rational homotopy of spheres | S² and S³; native sphere ambient dimensions 1,2 | S² rational ranks at i=2,3,4:1,1,0; S³:0,1,0; S⁰={−1,1}, S¹ contains (1,0), excludes (0,0) | Retained with the stated hypotheses and route inputs. |
| 4.5 Rational wedge ranks in Euler notation | n=3,N=2,i=2,3,4; n=4,N=1; N=0 | signed Euler ranks 2,3,2; S³ has rank 1 only at i=3; zero bouquet ranks all 0; reindexed k=0 gives e₁=2 | Retained with the stated hypotheses and route inputs. |
| 4.6 Finite-type rational double-loop model | X=S³,S⁴,S² | Ω²S³ cohomology Λ(x₁); Ω²S⁴ cohomology ℚ[x₂]⊗Λ(x₅); π₀Ω²S²=ℤ, so degree-zero rank is infinite and connectedness fails | Retained with the stated hypotheses and route inputs. |
| 5.1 Double-loop Betti series | n=4,5,N=1 and N=0; r=2,n=4 | series 1+t; (1+t⁵)/(1−t²)=1+t²+t⁴+t⁵+…; N=0 series 1; r=2 starts at degree 3, contributes 0 to degree 2 | n≥4; finite dimensionality; explicit factor bounds. |
| 5.2 Finite joins and sphere bouquets | two and three 2-point sets; sizes 2,3; singleton factor | bouquet counts (2−1)²=1 and (2−1)³=1; 2-by-3 join graph has E−V+1=6−5+1=2; singleton factor gives product 0 and a cone | Retained with the stated hypotheses and route inputs. |
| 5.3 Fermat fibre and finite join | n=k=2, points (1,0),(√2,i); n=2,k=3 | power sums 1+0=1 and 2−1=1; second point fails nonnegative power; skeleton is S¹ for k=2, bouquet count 4 for k=3; zero-weight phases all map to 0 | Retained with the stated hypotheses and route inputs. |
| 5.4 Fermat double-loop simple connectivity | n=5,k=2; n=4,k=2 | fibres have types S⁴,S³; π₂=π₃=0 for S⁴; π₁Ω²S³=π₃S³=ℤ, separating n≥5 from n=4 | Retained with the stated hypotheses and route inputs. |
| 6.1 Semialgebraic real and complex loci | A¹; x²+1=0; non-Archimedean R | conjugation on (x,y) is (x,−y), fixed equation 2y=0 gives y=0; x²+1 has 0 real roots and 2 complex roots; admissible finite covers remain finite | Imported; native/supplier conventions preserved. |
| 6.2 Equivariant semialgebraic cohomology | fixed sign point; free C₂ orbit; empty supports | H_G¹(sign ℤ)=ℤ/2 while invariants of ordinary H¹ are 0; free orbit positive groups 0 and H⁰=ℤ; empty-support groups all 0 | Imported; native/supplier conventions preserved. |
| 6.3 Cohomology of the real-locus pair | X=Spec R and Spec C over R | at fixed point pair=0 and supported H_G⁰=ℤ; at free orbit real locus ∅, pair H_G⁰=ambient H_G⁰=ℤ and supported group=0 | Imported; native/supplier conventions preserved. |
| 6.4 Free-action descent and dimension bounds | free orbit; fixed point; real-empty dimension-zero scheme | free quotient point gives H⁰=ℤ,Hⁱ>⁰=0; fixed point has H²=ℤ/2; in boundary degree 0 restriction ℤ→0 is onto but not injective | Imported; native/supplier conventions preserved. |
| 6.5 Comparison over the actual real numbers | R=ℝ, interval and circle, empty pair | interval H⁰=ℤ,positive=0 on both theories; circle H⁰=H¹=ℤ; pair (Y,Y) all groups 0; non-Archimedean comparison with ordinary paths is outside hypothesis | Imported; native/supplier conventions preserved. |
| 7.1 Parity twists and regular coefficients | ℤ(1),ℤ(2),𝔽₂, regular and trivial rank-two point modules | σ values −1,+1,1; double twist returns +1; H²(ℤ[C₂])=0 versus H²(ℤ² trivial)=(ℤ/2)² | Imported; native/supplier conventions preserved. |
| 7.2 Fundamental conjugation class | point, twists 0,1; mod-two powers degrees 0,1,2 | H¹(sign ℤ)=ℤ/2 with generator ω, 2ω=0; mod-two coefficients of 1,ω,ω² are all 1 in 𝔽₂ | Retained with the stated hypotheses and route inputs. |
| 7.3 Periodic C₂ cochain convention | q=0,1,2,3; trivial and sign ℤ | u=(1,−1,−1,1); on sign coefficients even differential −2 changes to +2 by conjugation, odd differential 0; H⁰,H¹,H² are (ℤ,0,𝔽₂) and (0,𝔽₂,0) | Retained with the stated hypotheses and route inputs. |
| 7.4 Canonical mod-two fixed-locus coordinates | Y=pt and S¹, i=0,1,2 | point dimensions 1,1,1; circle dimensions 1,2,2; (aω)ω=aω² and restriction to point kills a; convolution coefficient of ω·a is a | Imported; native/supplier conventions preserved. |
| 7.5 Twisted integral fixed-locus coordinates | Y=pt,i=j=0; Y=S¹,j=1 and trivial L | untwisted H⁰=ℤ, whose reduction is onto 𝔽₂ but not injective; odd twist point degree 1=𝔽₂; circle degree 2 odd twist has one H¹ coordinate of dimension 1 | Retained with the stated hypotheses and route inputs. |
| 7.6 Twisted Bockstein and component formula | circle trivial and Möbius L; point k=0,1,2 | β_triv(1)=0, β_Möbius(1)=a≠0; equivariant reduced β(1),β(ω),β(ω²)=0,ω²,0; formula (k−i)a_i reproduces 0,1,0 on the p=0 component | Retained with the stated hypotheses and route inputs. |
| 8.1 Semialgebraic orientation sheaves | ℂ,ℂ²,RP² and identity | orientation determinants −1,+1; RP² monodromy −1 and mod-two monodromy 1; relative orientation for id is Hom(or,or)=ℤ | Imported; native/supplier conventions preserved. |
| 8.2 Semialgebraic exceptional inverse image | id; open interval inclusion; point closed in line | id!=id and counit=1; open !=restriction; i!ℤ_ℝ=ℤ[−1], whose ordinary degree-zero stalk is 0 rather than i*ℤ=ℤ | Imported; native/supplier conventions preserved. |
| 8.3 Orientation formula and finite duality | pt,A=ℤ/4; ℝ→pt; infinite ⊕𝔽₂ | pairing (1,1)↦1/4 mod ℤ, each adjoint has kernel 0; dualizing shift ℤ[1]; ⊕𝔽₂ dual is ∏𝔽₂, so algebraic double-dual map is not onto | Finite stalks and noetherian coefficient contract. |
| 8.4 Semialgebraic Gysin and trace | pt→S¹, S¹→pt, id | source degree 0 maps to degree 1 generator; oriented degree 1 generator integrates to 1 in degree 0; id shift 0 and value 1↦1 | Imported; native/supplier conventions preserved. |
| 8.5 Semialgebraic finite Borel approximation | V=pt,s=1,2; sign lattice | RP¹ has H⁰=ℤ,H¹=ℤ versus C₂ H¹=0; agreement only i<1; sign on RP² is the nonconstant lattice, with monodromy −1 | Retained with the stated hypotheses and route inputs. |
| 8.6 Equivariant purity and proper Gysin | pt→ℙ¹ and real loci; identity | complex degree 0 with twist−1 goes to degree 2; real degree 0 goes to degree 1; id shifts 0,0; normal complex orientation determinant −1 | Imported; native/supplier conventions preserved. |
| 9.1 Real-locus norm and pushforward coordinates | fixed point mod 2; real point in RP¹ | forgetful degree 0 is 1↦1, norm is 1↦2=0; cupω gives 1↦ω; real Gysin shifts ordinary coordinate p=0 to p=1 with integral mod 2 value 1 | Retained with the stated hypotheses and route inputs. |
| 9.2 Real-locus self-intersection class | pt, empty real locus, RP² | γ=1; empty total ring has 0=1 and unique γ=0; RP² γ=1+a+a², inverse1+a, product1 modulo a³ | Retained with the stated hypotheses and route inputs. |
| 9.3 Canonical mod-two support splitting | X=A¹_R, i=0,1 | i=0: support0→ambient𝔽₂→complement𝔽₂ with last map1↦1; i=1: support𝔽₂→ambient𝔽₂→0 with first map1↦1; retraction composites equal1 | Retained with the stated hypotheses and route inputs. |
| 9.4 Parity-restricted integral support splitting | d=1,j=0,i=0,1; wrong parity j=i=1 | allowed: 0→ℤ→ℤ is identity in degree 0 and all groups0 in degree 1; wrong parity supportℤ→ambientℤ/2 cannot inject (2 maps to0) | Retained with the stated hypotheses and route inputs. |
| 9.5 Low real-coordinate surjectivity | i≤d; i=d+1; d=2,i=4,j=1 | targets 0; only p=0 with matching even parity; last target is H¹, while p=2 is excluded; leading diagonal of γ multiplication equals1 | Retained with the stated hypotheses and route inputs. |
| 10.1 Relative and complement duality | X=Spec C over R,d=0,M=ℤ/4; X=Spec R | free-orbit quotient point gives pairing1×1↦1/4 and dual groups ℤ/4; real point has empty U, so both relative/complement groups0 | Retained with the stated hypotheses and route inputs. |
| 10.2 Profinite integral complement duality | X=Spec C over R,d=0,M=ℤ | relative H⁰=ℤ, completion=lim ℤ/n=widehat ℤ; coefficient dual group H⁰(U,ℚ/ℤ)=ℚ/ℤ and its Pontryagin dual is the same widehat ℤ | Retained with the stated hypotheses and route inputs. |
| 10.3 Real-locus corrected localization sequence | X=ℙ¹,d=1,i=0; RP²,d=2,i=2 | ℙ¹ left window0, pair H⁰=0, complement H⁰=𝔽₂, right windowH⁰=𝔽₂ with w₀ identity; RP² windows [H⁰,H¹] and [H¹,H²], (a)(1+a)=a+a² | Keep distinct windows; add left-window projection. |
| 10.4 Real boundary trace formula | ℙ¹,z=1,a; ℙ²,z=a | γ_ℙ¹=1, traces0,1 on degrees0,1; γ_ℙ²⁻¹=1+a, degree(a(1+a))=1 versus degree(a)=0 | Retained with the stated hypotheses and route inputs. |
| 10.5 Self-duality of corrected localization | RP² d=i=2, left x=1 and right y=a | degree(1·a·γ)=1, uncorrected degree(a)=0; γγ⁻¹=(1+a+a²)(1+a)=1; windows at i=2 pair [0,1] with [1,2] | Retained with the stated hypotheses and route inputs. |
| 11.1 Affine high-degree real restriction | Spec C/R,d=0; 𝔾_m,d=1 | degree 0 restriction ℤ→0 not iso; every i>0 is 0→0; ordinary H¹(ℂ*,ℤ)=ℤ shows the bound cannot include i=d | Retained with the stated hypotheses and route inputs. |
| 11.2 Real-empty equivariant weak Lefschetz | real-empty conic, smooth degree 2 divisor, d=1 | quotient RP² has untwisted H²=ℤ/2; the untwisted divisor H⁰=ℤ maps onto it by parity; all groups beyond dimension2 vanish; boundary degree 2 map is onto, not bijective | Retained with the stated hypotheses and route inputs. |
| 11.3 Real-locus criterion for Lefschetz image | ℙ¹ with real point divisor; real-empty degree 2 divisor | real Gysin H⁰(pt,𝔽₂)→H¹(S¹,𝔽₂) sends1↦1 in first case; second case0→𝔽₂ fails positive-degree surjectivity | Retained with the stated hypotheses and route inputs. |
| 11.4 Injective equivariant Lefschetz criterion | all relevant real groups0; boundary i=d+1 | real maps0→0 have kernel/cokernel 0 and high complex kernel 0; at boundary ordinary omitted affine-degree-d group can be ℤ for 𝔾_m, so no boundary injectivity assertion | Retained with the stated hypotheses and route inputs. |
| 11.5 Affine relative torsion vanishing | A¹_R, finite coefficients; G_m and first relative degree 2 | A¹ pair equivariantly retracts onto real line, hence relative groups0; for G_m, classes ω and square-cover have restriction columns(1,1),(0,1), matrixdeterminant1, cokernel 0 and relativeH²=0; high-degree isomorphisms alone do not establish that value | Retained with the stated hypotheses and route inputs. |
| 12.1 Semialgebraic Steenrod squares | RP² degree 1 a; S¹ generator; unit | Sq¹a=a²≠0 on RP², Sq²a=0; on S¹ Sq¹a=a²=0; Sq⁰1=1 and Sqⁱ1=0 for i>0 | Imported; native/supplier conventions preserved. |
| 12.2 Steenrod-conjugated real pushforward | id; pt→ℙ¹ | Sq·id·Sq⁻¹=id; real Gysin1=a and Sq(a)=a on S¹ since a²=0; complex degree 2 restriction has ordinary degree 1 coordinatea | Retained with the stated hypotheses and route inputs. |
| 12.3 Real self-intersection and Stiefel–Whitney | RP², torus, Klein bottle; rank0 and Möbius line | RP² w=1+a+a², degreew₁²=1=χ mod 2; torus w₁=0,χ=0; Klein w₁≠0,degreew₁²=0=χ mod 2; rank0 w=1, Möbius linew=1+a | Retained with the stated hypotheses and route inputs. |
| 12.4 Transverse mod-two surface loops | zero class; disjoint union of 2 spheres/2 tori; two forbidden points | zero represented by empty union with0 circles; class nonzero on two tori needs at least2 components; on a small disc a circle moved off a forbidden centre meets its smooth branch transversely in0 or2 points | Boundaryless/finite-set/disjoint-union hypotheses retained. |
| 13.1 Admissible classes on the free complement | d=2 and3; parity low windows | d=2 has no p<1 with p odd, so support H_G⁰(or(1))=0; d=3 has p=0 as only low even coordinate, hence conditionα₀=0 | Retained with the stated hypotheses and route inputs. |
| 13.2 Cup-ω near the top degree | X=ℙ², d=2 | ordinary H³=0 has order1; relevant groups H_G³(ℤ(2))[2], H_G⁴(ℤ(3)), H_G⁵(ℤ(4)) all𝔽₂; cupω gives1↦1↦1; initial ℤ→𝔽₂ has kernel2ℤ=norm image | Retained with the stated hypotheses and route inputs. |
| 13.3 Real-empty quartic middle rank | b₃=60; even traces1,−1,1,−1 | even alternating sum 0; Lefschetz number0 implies middle trace 0; invariant dimension(60+0)/2=30; anti-invariant dimension30 | Rank only; ordinary input supplied, attribution corrected. |
| 14.1 Sign local system of a double cover | split sheets; connected cover of S¹; conjugate point | cokernel ℤ²/diagℤ generated by[(1,0)]; swap[(1,0)]=[(0,1)]=−[(1,0)]; trace(1,−1)=0; sign twist multiplies −1 by−1 to+1 | Retained with the stated hypotheses and route inputs. |
| 14.2 Double-cover extension and twisted Bockstein | trivial/Möbius system on circle; fixed sign point | β_triv1=0 and e=0; β_Möbius1=a=e≠0; 2e=0; on sign point extension class is generator ofℤ/2 | Retained with the stated hypotheses and route inputs. |
| 14.3 Ramified double-cover trace triangle | z²=t transverse disc; no branch | branch stalk traceℤ→ℤ is×2 with kernel 0,cokernelℤ/2; RΓ(puncture,L) has H⁰=0,H¹=ℤ/2; no-branch trace(a,b)=a+b | Retained with the stated hypotheses and route inputs. |
| 14.4 Cyclic Ext-stalk comparison for the circle construction | trivial, sign and regular point stalks | positive groups(H¹,H²)=(0,𝔽₂),(𝔽₂,0),(0,0); regular rankk has both 0; global circle H¹(ℤ)=ℤ is not a stalk Ext value | Retained with the stated hypotheses and route inputs. |
| 15.1 Permutation quotient and integral trace | n=1,2; n=4 diagonal change | Q₁=0, Tr=id; Q₂≅ℤ and swap−1; changing vector by(2,2,2,2) changes sum by8=0 mod 4 and quotient class by0 | Retained with the stated hypotheses and route inputs. |
| 15.2 Trace-zero permutation operator | n=4,a=(1,0,0,0); add diagonal2 | ψ=(−3,1,1,1), sum 0, reduction(1,1,1,1); shifted a=(3,2,2,2), sum9, ψ=(−3,1,1,1) again | Retained with the stated hypotheses and route inputs. |
| 15.3 Trace-quotient lifting criterion | split étale stalk n=4,η=0,ζ=[e₁] | a=0−φζ=−1=3 mod 4; pullback coefficient boundary0 for the lifted constant vector; mixed map(η,ζ)↦3, with obstruction0 | Retained with the stated hypotheses and route inputs. |
| 15.4 Corrected trace-quotient integral lift | n=4,η=0,ζ=[e₁] | a=3; negative lift(3,−1,−1,−1) reduces(3,3,3,3) and has trace 0=4η; plus lift reduces(1,1,1,1), differs by2 each coordinate | Negative sign retained; plus sign refuted. |
| 15.5 Cyclic reduction in adjacent sign degrees | n=2,4,6 with sign coefficients | H¹ generator 1 reduces1 in each case; H² generator n/2 reduces1,0,1 respectively; H² identity at n=4 would send1 rather than0 | Degree-two scalar retained. |
| 15.6 Circle extension and obstruction class | one regular pair n=2; two pairs n=4; constant extension | E₂=(𝔽₂⊕ℤ)/((1,2))=ℤ/4; E₄=𝔽₂²; constantℤ/4 quotient unit lifts as1 so δ1=0, but a homomorphic section would require an order2 lift of1, which does not exist | Unit-lift versus splitting distinguished. |
| 16.1 Equivariant Ehresmann transport | product M=B×F, σ=(b,z)↦(−b,τz); nonproper omitted-fibre example | product chart sends (b,z) to(b,z), both equivariance composites give(−b,τz); projection of ℝ² minus origin toℝ is a nonproper submersion with fibre at0 two components and others one | Retained with the stated hypotheses and route inputs. |
| 16.2 Equivariant stratified pair transport | constant pair; xy=t node | constant pair chart is identity on each stratum; node stratum at t=0 has base derivative rank0, whereas the parameter line requires rank 1; hypothesis fails | Invariant control data required; node excluded. |
| 16.3 Finite-index equivariant lattice image | point; trivial action on S²; 2ℤ⊂ℤ | target invariants0 at point, index 1; trivial action S² edge imageℤ, index 1; 2ℤ has rational spanℚ and index 2, separating finite index from onto | Retained with the stated hypotheses and route inputs. |
| 16.4 Double-cover chase comparison | split unramified trace; common zero class; cochain square | split trace gives g=0 and κ split injective, norm into sign term0 forcesζ=0; η₀=0 yields0+0=0; commuting unit square has total differential d_hz−d_vy=1−1=0; both chased terms have degree 4 and coefficientL | Common lifts and indeterminacy retained; no literal arbitrary-lift equality. |

The additional native definition and convention rows are separate from the 75 design statements.

| Statement | Instances | Values computed | Result/change |
|---|---|---|---|
| `unitSphere` | s=0,1,2; origin | dimensions 0,1,2; points ±1 for s=0; norm(1,0)=1 and norm(0,0)=0 | Native subtype and dimension s+1 fixed. |
| `sphereBouquet` | N=0,1,2; s=2 | empty wedge card1; one sphere H² rank 1; two spheres H² rank 2 | Added-point native quotient retained. |
| `fermatFiber` | (1,0),(√2,i),(0,0); n=0; k=0,n=2 | sums 1,1,0,0,2; memberships yes,yes,no,no,no | Real-bodied polynomial subtype; zero/out-of-range values computed. |
| `fermatSkeleton` | same nonzero fibre points | power tuples (1,0) and (2,−1); skeleton membership yes,no | Nonnegative-real condition excludes the second. |
| `eulerExponent` | n=0,1,N=2,r=0,1 | e₀=0; e₁=−2,+2 | No natural-subtraction sign error or quotient theorem at r=0. |
| `doubleLoopFactor` | n=4,N=1,r=1,2; n=5,N=1,r=1,2 | factors 1+t,1 and (1−t²)⁻¹,1+t⁵; exponents 1,3 and2,5 | Explicit n≥4,r≥1 binders exclude invalid constant substitution. |
| Left permutation action | σ=(123),τ=(12),x=(a,b,c) | σ·(τ·x)=(c,b,a)=(στ)·x | Inverse reindexing fixed on nonabelian S₃. |
| Frobenius | 𝔾_m,q=2 | ordinary eigenvalues1,2; compact trace 2−1=1; arithmetic inverse1/2 | Geometric convention fixed. |
| Twist/orientation | j=0,1,2; complex dimensions1,2 | σ=1,−1,1; orientation−1,+1 | Parity and Gysin shifts fixed. |
| Empty real locus/support | fixed point, free orbit | pair0 versus supportℤ; free orbit pairℤ versus support0 | Both localization objects retained. |
| Integral coordinates | point,i=j=0 | ℤ→𝔽₂ reduction has kernel2ℤ | No unrestricted mod-two coordinate isomorphism. |
| All noetherian rings | zero ring; ℤ; ℤ/4 | zero-ring module0; point duality1×1↦1/4 overℤ/4 | Zero coefficient object and finite-stalk hypothesis consistent. |
| Universe/finite data | empty index; one-point atlas; infinite disjoint union | wedge(empty)=point; atlas dimension0; infinite union has infinitely many H⁰ generators | Finite-atlas/finite-triangulation hypotheses kept; no unbounded-cardinality biduality. |

API facts were also checked individually. An API row is a concrete instance of that exact law, not an extra admitted Lean declaration.

| API statement (in prose in README) | Computed witness | Result/change |
|---|---|---|

| Ordered and unordered configurations: An injective tuple determines a topological ordered configuration; a tuple with unit differences determines an A¹ scheme point. | tuple(0,1) has difference1∈ℤˣ; tuple(0,2) has difference2∉ℤˣ | Supplier contract. |
| Ordered and unordered configurations: A continuous embedding X→Y induces equivariant maps of both configuration spaces. | embedding ℝ→ℂ sends(0,1) to(0,1), still injective | Supplier contract. |
| Ordered and unordered configurations: The map PConf_m(X)→Conf_m(X) identifies exactly the permutation orbits. | (0,1) and(1,0) have one orbit; (0,1) and(0,2) do not | Supplier contract. |
| Ordered and unordered configurations: Ordered configurations agree iff their coordinate evaluations agree; unordered classes agree iff their tuples differ by a permutation. | coordinate lists(0,1)=(0,1);(0,1)≠(1,0), but their unordered classes agree | Supplier contract. |
| Ordered and unordered configurations: (σ·x)(i)=x(σ⁻¹i); identity and multiplication satisfy the left-action laws. | S₃: σ=(123),τ=(12),x=(a,b,c), both σ·(τ·x) and(στ)·x equal(c,b,a) | Supplier contract. |
| Ordered and unordered configurations: Embedding maps commute with composition and with the orbit projection. | two identity embeddings yield the same tuple(0,1) and the same orbit[(0,1)] | Supplier contract. |
| Signed Witt–Euler exponents: The Euler product is the stated linear series, in ℤ[[T]]. | N=1 even: (1−T)¹=1−T; odd: (1−T)⁻¹(1−T²)=1+T | Retained on the stated constructed object. |
| Signed Witt–Euler exponents: Any integer sequence with the same product agrees at every positive index. | first exponent−1 and alternative0 differ at coefficientT:−1 versus0 | Retained on the stated constructed object. |
| Signed Witt–Euler exponents: e_1,…,e_s depend only on coefficients through degree s; parity n+2 gives the same sequence. | N=2 even n and n+2 both start−2,−1,−2; truncation degree 2 omits every r≥3 | Retained on the stated constructed object. |
| Signed Witt–Euler exponents: Solve the degree-r coefficient after fixing e_1,…,e_{r−1}; the new exponent is an integer and removes that coefficient uniquely. | cancel degree 1 for1−2T with e₁=−2; next residual coefficient forces e₂=−1 | Retained on the stated constructed object. |
| Signed Witt–Euler exponents: e_1=(−1)^(n−1)N; only positive indices enter the product. | r=1 gives e₁=−((-1)^n N)=s_nN; n=0,N=2 gives−2 | Retained on the stated constructed object. |
| Tame complex polynomial: Tameness is the stated eventual positive gradient lower bound with a compact critical neighbourhood. | f=z gradientnorm 1 outside any compact K; f=1 gradientnorm0 fails | Retained on the stated constructed object. |
| Tame complex polynomial: Replacing f by f−a preserves tameness. | ∇(f−3)=∇f, so f=z and z−3 both have exterior bound1 | Retained on the stated constructed object. |
| Tame complex polynomial: The projective leading-part condition supplies an explicit positive bound outside a ball. | f=Σzᵢ² has gradientnorm 2normz, so c=2,k−1=1 | Retained on the stated constructed object. |
| Tame complex polynomial: Pointwise equal polynomial functions have equivalent tameness predicates; the compact witness is not part of the polynomial object. | equal polynomials z and z+0 have identical gradients1 and identical tameness | Retained on the stated constructed object. |
| Tame complex polynomial: A compact critical neighbourhood and an exterior positive gradient bound prove tameness. | K=closed unitball,ε=1/2 works for f=z with normgradient1≥1/2 | Retained on the stated constructed object. |
| Semialgebraic real and complex loci: An R-morphism induces a continuous semialgebraic conjugation-equivariant map on complex loci and its fixed real map. | map A¹→A¹,z↦z² sends(0,1) to(−1,0); conjugation commutes | Supplier contract. |
| Semialgebraic real and complex loci: The fixed-point locus of conjugation is naturally X(R). | fixed equation y=−y in a real closed field gives y=0 | Supplier contract. |
| Semialgebraic real and complex loci: Open covers and their intersections produce the same locus after gluing and site restriction. | A¹ opens x≠0 and arbitrary overlap give the same polynomial pointx=1 in either chart | Supplier contract. |
| Semialgebraic real and complex loci: For Spec R[x]/I, complex points are the real-coordinate equations for real/imaginary parts in R^{2n}; chart changes glue. | complex equation z²+1=0 becomes x²−y²+1=0,2xy=0, with solutions(0,±1) | Supplier contract. |
| Semialgebraic real and complex loci: Locus maps preserve identities and composition and commute with real-to-complex inclusions. | identity atz=i givesi; composition of squaring with itself givesi⁴=1 in either order | Supplier contract. |
| Equivariant semialgebraic cohomology: H_G^i(pt,M) identifies with the pinned group-cohomology carrier for the G-module M. | point sign module has H¹=ℤ/2, matching native cyclic quotientℤ/2 | Supplier contract. |
| Equivariant semialgebraic cohomology: Restriction to invariant opens and change of supports induce the derived maps and commute with cup products. | empty-support inclusion sends0→0; identity support and identity restriction send1→1 | Supplier contract. |
| Equivariant semialgebraic cohomology: The two displayed spectral sequences are natural in the equivariant sheaf and supports, with named edge maps. | free orbit spectral sequence has only p=0 termℤ; fixed sign point has E₂¹⁰=ℤ/2 | Supplier contract. |
| Equivariant semialgebraic cohomology: Degree zero is the group of invariant sections supported in Z; identify it through the imported derived-functor comparison. | point sign invariant sections0 versus trivial point invariant sectionsℤ | Supplier contract. |
| Equivariant semialgebraic cohomology: The induced maps preserve identities and composition; coefficient zero maps induce zero in cohomology. | id map onℤ cohomology sends1→1; coefficient zero map sends1→0 | Supplier contract. |
| Cohomology of the real-locus pair: The relative object is RΓ_G(X(C),j!M_U). | fixed point j!0=0 so relativeH⁰=0; freeorbit j!=id soH⁰=ℤ | Supplier contract. |
| Cohomology of the real-locus pair: The extension-by-zero triangle gives the pair/ambient/real long exact sequence. | fixed point exact fragment0→ℤ→ℤ has identity second map | Supplier contract. |
| Cohomology of the real-locus pair: The support triangle has free complement as its third term and is related naturally to the pair sequence. | freeorbit support0 while pairH⁰=ℤ; fixedpoint supportℤ while pair0 | Supplier contract. |
| Cohomology of the real-locus pair: The extension-by-zero object fits the canonical j!j*→id→i*i* distinguished triangle, natural under maps of coefficient objects. | fixedpoint sequence0→0→ℤ→ℤ→0 is exact and composite0 | Supplier contract. |
| Cohomology of the real-locus pair: Successive maps in both long exact sequences compose to zero; name their connecting maps and degree shifts. | identityℤ→ℤ followed by pairboundaryℤ→0 gives 0; all successive composites at fixedpoint0 | Supplier contract. |
| Parity twists and regular coefficients: F(j+2)≅F(j), with compatible tensor identifications F(j)(k)≅F(j+k). | ℤ(1+2) andℤ(1) both haveσ=−1; two twists give(−1)²=1 | Supplier contract. |
| Parity twists and regular coefficients: The two exact sequences are natural in F and have forgetful/norm maps after cohomology. | point trivialℤ sequence has norm 2 and connectingℤ/2, not norm 1 | Supplier contract. |
| Parity twists and regular coefficients: The regular-coefficient equivariant cohomology identifies with the underlying nonequivariant cohomology. | H²(point,regularℤ[C₂])=0=ordinaryH²(point,ℤ) | Supplier contract. |
| Parity twists and regular coefficients: Build F(j) by tensoring with the explicit sign lattice; the involution on a local tensor is σ_F⊗(−1)^j. | sign tensor action on1⊗1 equals−1; trivialtwist gives+1 | Supplier contract. |
| Parity twists and regular coefficients: F(0)≅F and the double sign twist is naturally F; all identifications commute with coefficient maps. | ℤ(0) hasσ=+1; ℤ(1)(1) alsoσ=+1 | Supplier contract. |
| Twisted Bockstein and component formula: β_L is the connecting map of the rank-one mod-four coefficient extension. | Möbius circle transition−1 makes liftedunit coboundary−2, giving β_L1=a mod 2 | Retained on the stated constructed object. |
| Twisted Bockstein and component formula: Pullback of L and cohomology classes commutes with β_L. | pullback to a double cover makes monodromy(−1)²=1, so pullbacka=0 and β_pullbackL1=0 | Retained on the stated constructed object. |
| Twisted Bockstein and component formula: The displayed component formula and 1+β_L formula fix the boundary and reduction conventions. | point k=1 gives reducedβω=ω²; circle paritycoordinate1 maps by1+β_L to1+a | Retained on the stated constructed object. |
| Twisted Bockstein and component formula: For a mod-two cocycle, lift locally to L/4, take the coboundary and divide by the kernel inclusion; changing lifts changes the result by a coboundary. | changing mod 4 lift1 to3 changes boundary representative by a coboundary; point values both 0 | Retained on the stated constructed object. |
| Twisted Bockstein and component formula: β_L is additive and sends zero to zero; with trivial L it is the ordinary mod-four Bockstein. | β_L0=0; β_L(1+1)=β_L0=0=a+a for MöbiusL | Retained on the stated constructed object. |
| Semialgebraic orientation sheaves: An orientation on a chart identifies its top compactly supported cohomology with ℤ and or_V with the constant sheaf. | orientedline chart has H_c¹=ℤ and chosen dual generator 1 | Supplier contract. |
| Semialgebraic orientation sheaves: or_{V/U}≅or_{V/W}⊗f*or_{W/U} for composable maps. | id composition gives or_V/V=Hom(or,or)=ℤ; transition sign(−1)·(−1)=+1 | Supplier contract. |
| Semialgebraic orientation sheaves: or_{X(C)}≅ℤ(d) equivariantly for smooth pure-dimensional X/R. | complex dimensions1,2 have conjugation orientation−1,+1 | Supplier contract. |
| Semialgebraic orientation sheaves: Glue local top-compact-cohomology dual generators with the transition orientation signs; compare over ℝ to DifferentialGeometry’s orientation cover. | RP² orientation loop transports generator 1 to−1, so the zero or trivial transport is excluded | Supplier contract. |
| Semialgebraic orientation sheaves: or_{V/V} is constant ℤ, and tensoring either orientation sheaf with F₂ is canonically constant F₂. | identity relative lattice isℤ; mod 2 of−1 equals1 | Supplier contract. |
| Semialgebraic exceptional inverse image: Hom(Rf!A,B)≅Hom(A,f!B), natural in both objects. | id adjunction identifies Hom(ℤ,ℤ)=ℤ on both sides, map1↦1 | Supplier contract. |
| Semialgebraic exceptional inverse image: (g∘f)!≅f!g!, compatibly with the adjunction counits. | two identity maps give id!=id and compositecounit1·1=1 | Supplier contract. |
| Semialgebraic exceptional inverse image: The counit Rf!f!B→B supplies the trace and its composition rule. | orientedline→pt trace sends top generator 1→1; identitytrace 1→1 | Supplier contract. |
| Semialgebraic exceptional inverse image: Any other right adjoint is uniquely naturally isomorphic through the adjunction, compatibly with its unit and counit. | two rightadjoints ofid identify uniquely through their unit/counit; generator 1 mustmap1 | Supplier contract. |
| Semialgebraic exceptional inverse image: The adjunction unit and counit satisfy the two triangle identities; the identity-map adjunction is the identity. | id unit=counit=id, composites on1 equal1 | Supplier contract. |
| Real-locus self-intersection class: The supported class s is the purity image of the unit on X(R). | realpoint purity sends1 tofundamental1; emptyreal locus sends0to0 | Retained on the stated constructed object. |
| Real-locus self-intersection class: Restriction of s to real coordinates is γ_X and has zeroth coordinate the unit. | RP² restriction components(1,a,a²), zeroth1 | Retained on the stated constructed object. |
| Real-locus self-intersection class: γ_X·γ_X⁻¹=1 in total H*(X(R),F₂), with finite sums in each coordinate. | (1+a+a²)(1+a)=1 moduloa³; replacinginverseby1 gives1+a+a²≠1 | Retained on the stated constructed object. |
| Real-locus self-intersection class: Two total classes agree iff all ordinary-degree coordinates agree; this makes the defining self-intersection characterization unique. | classes1+a and1+a+a² differ exactly in p=2 coordinatea² | Retained on the stated constructed object. |
| Real-locus self-intersection class: γ_0=(γ⁻¹)_0=1; higher inverse coordinates are recursively the sums forced by γγ⁻¹=1. | RP² inversecoordinates1,a,0 solve degree 1:a+a=0 anddegree 2:a²+a²=0 | Retained on the stated constructed object. |
| Real-locus corrected localization sequence: u_i,v_i,w_i are the displayed composites, with their γ and γ⁻¹ factors. | RP² highprojection ofaγ⁻¹=a+a² yieldsa² versus rawprojection0 | Retained on the stated constructed object. |
| Real-locus corrected localization sequence: Image u_i=ker v_i, image v_i=ker w_i, and image w_i=ker u_{i+1}. | ℙ¹ degree 0 segment0→0→𝔽₂→𝔽₂ has maps0,0,id; images/kernels agree | Retained on the stated constructed object. |
| Real-locus corrected localization sequence: The degree-i left window pairs with the degree-(2d−i) right window by deg(xyγ). | RP² left unit and right a pair to degree(aγ)=1 rather than degree(a)=0; windowsi=2 are[0,1] and[1,2] | Retained on the stated constructed object. |
| Real-locus corrected localization sequence: u_i is the pair boundary after γ, v_i is pair→ambient→free complement, and w_i uses the canonical complement section; equivalent purity identifications give the same maps. | γ⁻¹γ on1 equals1; ℙ¹ w₀ sends1→1 andu₁ then lands0 | Retained on the stated constructed object. |
| Real-locus corrected localization sequence: v_i∘u_i=0, w_i∘v_i=0 and u_{i+1}∘w_i=0 with the displayed distinct windows. | ℙ¹ w₀=id,u₁=0 givesu₁w₀=0; all three successivecomposites0 | Retained on the stated constructed object. |
| Semialgebraic Steenrod squares: Semialgebraic pullback and change of supports commute with each Sq^a. | mapS¹→pt pullsunit to1 and Sq¹unit0 to0 | Supplier contract. |
| Semialgebraic Steenrod squares: Sq^a(xy)=∑_{b+c=a}Sq^b(x)Sq^c(y), with the relevant support intersection. | RP² Sq¹(a·1)=a²=Sq¹a·1+a·Sq¹1 | Supplier contract. |
| Semialgebraic Steenrod squares: Sq^a x=0 for a>deg x, Sq^{deg x}x=x², and Sq¹ is the mod-two integral Bockstein. | RP² degree 1a:Sq²a=0 andSq¹a=a²; pointSq¹1=0 | Supplier contract. |
| Semialgebraic Steenrod squares: Each Sq^a is an additive operation on cohomology with its named support target. | over𝔽₂ Sq¹(a+a)=Sq¹0=0=a²+a² | Supplier contract. |
| Semialgebraic Steenrod squares: Sq^0=id and Sq^a(0)=0; the degree-zero unit has no positive squares. | Sq⁰1=1,Sq¹1=0,Sq⁰0=0 | Supplier contract. |
| Sign local system of a double cover: With an ordering of the sheets, (a,b)↦a−b identifies the diagonal cokernel L with ℤ; the class of (1,0) is a generator. | [(1,0)]−[(0,1)] sign convention: quotient(a,b)=a−b, so generator 1 | Retained on the stated constructed object. |
| Sign local system of a double cover: The trace kernel identifies with L, with a consistent sign choice under sheet interchange. | tracekernel generator(1,−1) maps by trace to0; sheet swapnegatesit | Retained on the stated constructed object. |
| Sign local system of a double cover: Its mod-two sign cocycle classifies the equivariant double cover up to isomorphism. | splitcircle signcocycle0; connectedcover signcocycle1∈H¹(S¹,𝔽₂) | Retained on the stated constructed object. |
| Sign local system of a double cover: An equivariant map p*ℤ→F annihilating the diagonal factors uniquely through L. | difference map(a,b)↦a−b killsdiag(c,c), giving1−1=0 | Retained on the stated constructed object. |
| Sign local system of a double cover: Swapping the ordered sheets sends the local generator [(1,0)] to its negative; twice the sign twist restores it. | swap[(1,0)]=[(0,1)]=−[(1,0)]; double swapreturns1 | Retained on the stated constructed object. |
| Ramified double-cover trace triangle: The middle arrow uniquely extends the unramified sum-of-sheets trace. | branchstalk trace 1=2 extends twounramifiedsheet values1+1=2 | Retained on the stated constructed object. |
| Ramified double-cover trace triangle: The three named objects and arrows form a distinguished triangle, restricting to the trace sequence over S*. | branch complex has ker×2=0,coker×2=ℤ/2, matchingpuncturedsignH⁰=0,H¹=ℤ/2 | Retained on the stated constructed object. |
| Ramified double-cover trace triangle: There exists a compatible morphism to the reduction-mod-two triangle whose restriction over S* is the natural coefficient map. | reductionbranchtrace×2 becomes0 mod 2; both squarescommuteon1 | Retained on the stated constructed object. |
| Ramified double-cover trace triangle: An isomorphism of branched-cover diagrams identifies the trace and distinguished triangle; transport the chosen κ together with its compatibility proof. | identitycoverdiagram transports trace 2→2 and chosenκ toits chosenimage | Retained on the stated constructed object. |
| Ramified double-cover trace triangle: The triangle induces a long exact hypercohomology sequence with named boundary, whose restriction agrees with the unramified sign sequence. | local longexact fragment0→ℤ --2→ℤ→ℤ/2→0 has kernel 0,image2ℤ | Retained on the stated constructed object. |
| Permutation quotient and integral trace: Q is the equivariant diagonal cokernel and π:P→Q is its epimorphism. | n=2 diagonal(1,1) maps0; quotient[(1,0)] generatesℤ | Retained on the stated constructed object. |
| Permutation quotient and integral trace: Tr:P→ℤ extends sum of sheet coordinates and φ([a])=∑a_i mod n. | n=4 vector(1,0,0,0) trace 1,φ=1mod 4 | Retained on the stated constructed object. |
| Permutation quotient and integral trace: The displayed mixed trace/quotient sequence is exact and natural under restriction. | n=2 mixedimage(Tr,π)(1,0)=(1,1), whose(1,−φ)value 0; pair(0,1)maps1mod 2 andisnotinimage | Retained on the stated constructed object. |
| Permutation quotient and integral trace: Any equivariant P→F killing the diagonal factors uniquely through Q. | difference maponℤ² factorsquotient and sendsdiag(2,2)to0 | Retained on the stated constructed object. |
| Permutation quotient and integral trace: π of a diagonal vector is zero, Tr of that vector is n times its entry, and φπ=Tr mod n. | n=4 diagonal(2,2,2,2) hastrace8,quotient0,φπ=0=8mod 4 | Retained on the stated constructed object. |
| Circle extension and obstruction class: E is the stated cokernel in abelian sheaves on C, with named inclusion and projection. | n=2 cokernel(F₂⊕ℤ)/((1,2)) hasfour elements, isℤ/4 | Retained on the stated constructed object. |
| Circle extension and obstruction class: The inclusion/projection form the stated short exact sequence. | ℤ/4 injection1↦2 andprojectiona↦a mod 2 haveimage{0,2}=kernel | Retained on the stated constructed object. |
| Circle extension and obstruction class: For a ζ with normalized degree-two component, δ_E(1) equals its degree-one φ component. | constantℤ/4 extension hasquotientunitlift1, soδ1=0; degree-onecomponent0 | Retained on the stated constructed object. |
| Circle extension and obstruction class: Maps out of E correspond to maps out of F₂⊕Q(1)^G killing the image of (φ₂,1+σ). | mapout killing(1,2) satisfies f(1,2)=0; quotientrelation2e=−1∈F₂ yields4e=0 | Retained on the stated constructed object. |
| Circle extension and obstruction class: The composite F₂→E→F₂ is zero; local normalized stalk generators give the prescribed kernel and quotient, without choosing a global splitting. | injection then projection sends1↦2↦0; quotientstalkgenerator 1 haspreimages1,3 | Retained on the stated constructed object. |

All 51 original definition tests and every acceptance Check are preserved, including the three initially distinct controls for each of the 17 constructions. Their evaluated instances appear in the target/API rows above. Worked examples are recomputed in their layer Examples: signed exponent lists; q²−q trace; 1+t and (1+t⁵)/(1−t²); tame versus escaping critical-gradient curve; finite joins; fixed/free points; parity cohomology; complex versus real Gysin; RP² gamma; degree windows; affine strict cutoff; surface w₁²; quartic30; branch trace 2; degree-four lift; and product/node transport. These agree with the same object's other occurrences.

## Elaboration and binder inspection

The targeted builds run from the content checkout were `lake build TauCeti.Topology.WedgeSum` and `lake build TauCeti.AlgebraicTopology.Cohomology.Basic`; both completed successfully. No bare build, update, cache-get, pin or toolchain modification was made.

The required `lake env lean` elaboration of the absolute expansion of `packages/AlgebraicTopologyPartII/Suggested.lean` was run from the content checkout. Final outcome: **six `sorry` warnings, zero errors, zero other messages**. The six warnings are exactly ``warning: declaration uses `sorry` `` on the six theorem declarations. The initial attempt exposed missing topology inference through opaque carrier definitions; changing the native subtype specializations to abbreviations corrected this without new topology instances or options.

A separate scratch file copied the final signatures and appended `#check @name` for every one of the twelve declarations, then elaborated once. All twelve types were read and compared with the README: n≥4 and r≥1 remain explicit on the formal factor; n≥2,k≥2 remain on retraction/bouquet; n≥5,k≥2 remain on simple connectivity; arbitrary source topology, actual homotopy equivalence and every base point remain on both bouquet-rank and double-loop statements; finite dimensionality is a conclusion of all three rank/Betti theorems. No standing hypothesis was silently dropped. The three rational statements were strengthened to assert finite dimensionality, and the bouquet-rank acceptance was expanded from the model itself to any space of its homotopy type.

## Dependency and identifier checks


The final dependency checker output was:

```text
depcheck: 29 roadmaps, 257 edges, 0 problem(s)
```

It contains no UPWARD or CYCLE line. No movable reordering was needed. Citation resolution found no missing cross-roadmap citations and no missing roadmap Lean identifiers. That service did not check external library names because it did not discover the pinned Lake tree in its search context; the pin files and all twelve elaborated own declarations were checked directly instead.

The package identifier audit found 12 declarations, 12 distinct own README identifiers and **zero missing identifiers**. Every original API name was converted to prose rather than added to the Lean file. All 16 layers have Examples and Dependencies; the README has 58 retained target subsections and 17 imported target contracts. Source checking returned:

```text
packages/AlgebraicTopologyPartII/sources.toml: 0 problem(s)
```

Final elaboration messages, with only the machine prefix normalized to the required repository-relative path:

```text
packages/AlgebraicTopologyPartII/Suggested.lean:65:8: warning: declaration uses `sorry`
packages/AlgebraicTopologyPartII/Suggested.lean:74:8: warning: declaration uses `sorry`
packages/AlgebraicTopologyPartII/Suggested.lean:97:8: warning: declaration uses `sorry`
packages/AlgebraicTopologyPartII/Suggested.lean:117:8: warning: declaration uses `sorry`
packages/AlgebraicTopologyPartII/Suggested.lean:127:8: warning: declaration uses `sorry`
packages/AlgebraicTopologyPartII/Suggested.lean:135:8: warning: declaration uses `sorry`
```

No other final elaboration message occurred. The scratch type-inspection run likewise had six sorry warnings and no errors, followed by the twelve requested type displays.

For the native-definition audit, the relevant pinned bodies are quoted here as Lean API excerpts (not literature passages), with their hypotheses and omissions explained in the inventory above:

```lean
def GenLoop : Set C(I^N, X) :=
  {p | ∀ y ∈ Cube.boundary N, p y = x}
```

`Mathlib/Topology/Homotopy/HomotopyGroup.lean:97`.

```lean
def WedgeSum (x : ∀ i, X i) : Type max u v :=
  Quotient (Setoid.ker (wedgeNormalize x))
```

`TauCeti/Topology/WedgeSum.lean:72`; the preceding normalizer acts on the extra point and summands, which is why the empty wedge is a point.

```lean
def IsSemialgebraic (s : Set (σ → R)) : Prop :=
  s ∈ generateSetAlgebra
    (range (fun p : MvPolynomial σ R => {x | eval x p = 0}) ∪
      range (fun p : MvPolynomial σ R => {x | 0 < eval x p}))
```

`TauCeti/Geometry/RealAlgebraic/Semialgebraic/Basic.lean:68`.

The final arithmetic recomputation checked the signed Möbius divisibility and rational-rank sign for n=3,…,7, N=0,…,3 and r=1,…,8; the displayed exponent lists are (−2,−1,−2) and (2,−3,2). It also recomputed the quartic primitive rank 60 and invariant rank 30, the trace-zero vector, its negative reduction modulo four, and the three degree-two reduction scalars. These computations confirm the reported examples without claiming to replace the deep proofs.

Final artifact audit: no machine paths, source copies, LaTeX delimiters, unsupported own identifiers, forbidden Lean options, admitted data or admitted examples. Only the requested package artifacts and top-level plan gaps were edited; no issue, pull request or remote write was made.
