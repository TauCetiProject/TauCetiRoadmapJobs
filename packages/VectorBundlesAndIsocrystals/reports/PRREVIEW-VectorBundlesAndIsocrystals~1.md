# Review of VectorBundlesAndIsocrystals (pull request #1205 at c380d7d)

**Verdict:** needs changes

## R01 (P1) — The contracting action need not have closed image

**Location:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:1276`, repeated at line 1278: “its action map … is a closed immersion”.

**Claim:** The stated locally spectral, taut, specialization-chain and orbit-convergence hypotheses force the action relation to be closed in the ordinary product topology.

**Witness:** Let T={s,η} be Sierpiński, with η specializing to s. On X=T×ℚ₂ take γ(t,x)=(t,2x). The pair ((η,1),(s,1)) belongs to the closure of the action relation but not the relation.

The hypotheses hold: compact-open boxes have compact closures, intersections of compact opens are compact, generalization chains have at most two elements, and the fixed locus is the spectral closed subspace T×{0}. Every neighborhood of this fixed locus contains T×2ᴺℤ₂. Forward norms tend to zero, while negative orbits escape every compact-open set. In the moved locus, the action preserves the T-coordinate; nevertheless every neighborhood of ((η,1),(s,1)) meets the diagonal. This is also a counterexample to the parenthetical assertion in FS Lemma II.2.17, p. 72 (FS line 2781).

**Repair:** Replace the ambient closed-immersion conclusion, including its repeated definition, with the conclusion actually established in FS lines 2821–2841: every point of the moved locus has an open neighborhood whose distinct translates are disjoint; the quotient map is a local homeomorphism and the quotient is spectral. Keep the general locally spectral scope. Any separatedness assertion about diamonds must use the appropriate diamond argument, not closedness of this ordinary topological relation. On the witness, T×2ᵏℤ₂× and {η}×2ᵏℤ₂× are such neighborhoods, and the quotient is T×ℤ₂×, which is spectral.

## R02 (P2) — Import the existing twisted local-system construction

**Location:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:2075`, API at lines 2081–2085: “a … local system … equipped with a Frobenius-semilinear automorphism”.

**Claim:** This block owns the rational twisted local-system carrier, its Frobenius, iteration equation, pullback and denominator reindexing.

**Witness:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:597` (§1.0b), with API at line 599, already specifies the same finite-rank arithmetic-Frobenius-semilinear carrier, equation pᶜτᵈ=1, and all four operations.

**Repair:** Delete this duplicate definition/API target and add an exact supplier contract to PhiGammaModulesAndIwasawaCohomology §1.0b. Use that carrier in the subsequent comparison theorems; retain only the comparisons genuinely extending the supplier's domain. The import preserves the tests: (0,1) gives an ordinary ℚ_p local system; (1,2) imposes pτ²=1; reindexing to (2,4) imposes p²τ⁴=1 without identifying coefficient fields. This is a local ownership repair, not a reason to reject the whole roadmap.

## R03 (P3) — The invariant-space Check uses the wrong Frobenius

**Location:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:931`: “with `φ=π·id` … `Γ_1` is the whole space”.

**Claim:** A scalar-linear rank-one map supplies a test object for the preceding semilinear Robba-module definition.

**Witness:** For the genuine module Φ(e)=πe and a coefficient a with φ_R(a)≠a, Φ(ae)=πφ_R(a)e≠πae. Thus Γ₁=R^{φ_R=1}e, which is not Re.

**Repair:** Use the actual semilinear module and test e∈Γ₁, while (Φ−π⁻¹)e=(π−π⁻¹)e≠0; also test ae∉Γ₁ when φ_R(a)≠a. Remove the whole-space assertion and the unsupported assertion that the entire inverse-eigenvalue kernel vanishes. These three computations preserve the intended sign test on a valid carrier.

## R04 (P3) — Remove the HTML anchor residue reported by the gate

**Location:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:89` and 135 further occurrences, beginning with `<a id="relative-coefficients"></a>`.

**Claim:** The file satisfies the required Markdown-only roadmap form.

**Witness:** The supplied gate reports `residue=136`, all from these explicit HTML anchors; the gate verdict is FAIL.

**Repair:** Delete all 136 anchor elements and update internal fragment links to the corresponding generated heading anchors. For the first instance, link to `#ramified-coefficient-rings-and-coefficient-changes`. Re-run the gate; this repair removes the first offending token and applies uniformly to the other 135.

## R05 (P3) — Repair the two layer identifiers reported by the gate

**Location:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:85` and line 1060, with labels `VB−1` and `VB2 classification`.

**Claim:** The layer headings satisfy the accepted layer-identifier form.

**Witness:** The supplied gate reports `layer-ids=2` at these two headings. Other layer headings are not reported by this rule.

**Repair:** Use ordinary numbered layer headings, placing descriptive words after the title separator, and update their internal references consistently. A sequence beginning `Layer 0: relative coefficient and curve foundations` avoids the negative Unicode identifier; give classification its own ordinary layer number. Re-run the layer-identifier check, rather than suppressing it.

## R06 (P3) — Write planned API facts and Checks as prose

**Location:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:232`–247; the same pattern occurs throughout the 31 API lists. Line 71 says they “do not enumerate declarations of Suggested.lean”.

**Claim:** Backticked local API and test names are legitimate declarations of this roadmap's acceptance file.

**Witness:** The first API names `FiniteIsocrystal` and `FiniteIsocrystal.Hom`; neither is among Suggested.lean's four declarations. Named Check counterparts such as `TwistedLocalSystemTest.zeroSlope` are likewise absent.

**Repair:** Express these API facts and discriminating Checks in prose, retaining backticked own declaration names only for the four genuinely declared names. Remove the conflicting exception at line 71. Do not enlarge Suggested.lean into an API catalogue. Applying this to the first block retains its finite-dimensionality, intertwining, tensor and test requirements without claiming nonexistent Lean declarations.

## R07 (P3) — Use the roadmap namespace and acceptance-test module form

**Location:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/Suggested.lean:4`, lines 6–8 and line 37; corresponding namespace reference in README line 71.

**Claim:** The file has the prescribed target-signature identity and namespace.

**Witness:** Its namespace is `TauCeti.FFBundles`; the required namespace is `TauCetiRoadmap.VectorBundlesAndIsocrystals`. The module title says “headline statements”, and the introduction describes suggested forms rather than the pinned acceptance statements.

**Repair:** Rename the namespace and matching README reference, use the “target signatures” module title, and state explicitly that the file gives the statable headline theorems against the pins while README.md is the roadmap. Keep the substantive missing-carrier explanations. A scratch copy with the renamed namespace and module title elaborated successfully, with only the existing sorry warning; no mathematical binder changed.

## Verified sound

This section records successful checks and the counterexamples found during the same pass; it does not certify the failed assertions. There are **7 findings: 1 P1, 1 P2 and 5 P3**. Both supplied gate failures have findings. No file in the pull-request worktree was changed.

The head is the requested c380d7d796c85b59e8b968ee688b3f76078c34f3. The outside-folder diff is empty. The repository's normative README and CONTRIBUTING were read, and the main-branch AdicSpaces and AlgebraicVectorBundles roadmaps were consulted for form and ownership. No route-specific prime restriction, algorithmic target, copied source passage, sorry'd data, `set_option`, or foreign roadmap import was identified. The substantial relative/general-coefficient and Banach–Colmez scope is new work; R02 identifies one duplicated object within it.

The worker's gate records successful targeted build, dependency, import, sorry-data, stray-file, metadata and outside-folder checks. Its failures are exactly `residue=136` and `layer-ids=2`; **the gate is not passing**. Independently, the required dependency command returned:

```text
depcheck: 205 roadmaps, 1453 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The internal construction order at README lines 75–81 was checked against the Needs lines: early Lubin–Tate/divisor geometry precedes twist cohomology; ordinary projectivized properness precedes family HN; general two-term BC geometry then consumes family HN. Later consumers are not used as prerequisites. There are no declared gap contracts to certify.

**Acceptance file and pins.** The original file was elaborated with the requested `lake env lean` invocation: exit 0, only its single `sorry` warning. A scratch copy printed all four `#check @...` types. No necessary section binder disappeared: the theorem retains p primality, positive f, algebraic closure, finite dimension and bijectivity of Φ. Its coefficient definition retains perfectness. The structure deliberately has general L,σ,π parameters; the theorem specializes π to the nonzero Laurent monomial and σ to coefficient Frobenius.

One-tactic probes of the sole admitted theorem failed: `simp` made no progress, `rfl` failed, and `infer_instance` found no class goal. The only pinned isocrystal classification inspected is rank-one over a Witt fraction field, so it cannot be used as an `exact` proof of this all-rank Laurent-series theorem. No padding declaration was found.

| Lean declaration | Computation and negative control | Outcome |
| --- | --- | --- |
| coefficientFrobenius | σ(a+π)=a^(p^f)+π; at f=0 it is identity, but the theorem excludes f=0. At p=2,f=2 it raises coefficients to fourth powers and leaves exponent 1 unchanged. | Correct coefficient action, not π↦π^q. |
| CyclicSlopeDecomposition | Rank-two D(−1,2): e₀↦e₁↦π⁻¹e₀. Rank-one wrap acts on its single vector. Empty basis gives rank 0. Pair (2,2) fails coprimality. | Real basis and laws exclude zero Frobenius and unsplit noncoprime blocks. |
| CyclicSlopeDecomposition.slopes | D(1,2) gives [1/2], two such blocks give [1/2,1/2], rank zero gives []. Denominators are positive. | Counts blocks once, as documented; not the rank-weighted Newton multiset. |
| dieudonneManinEqualChar | Ranks 0,1,2 give [],[−1],[1/2]. Over nonclosed F_p with σ=id, [[1,1],[0,1]] has a nonsplit slope-zero Jordan block; algebraic closure excludes this control. | No false signature or lost hypothesis found; exact equal-characteristic source coverage is qualified below. |

Headline inventory: equal-characteristic Dieudonné–Manin; general-coefficient isocrystal/Brauer comparison; positive generation, Picard, relative GAGA, geometric bundle/coherent/finite-étale classification; ordinary projectivized properness, two-term BC smoothness and dimension, Le Bras equivalence and dimension/height/curvature; relative HN and local-system comparisons, pure models, ampleness and integral torsors. The first is stated. The remaining headline families are named in the module docstring with missing ringed-curve, period-ring, site, bundle, coherent-heart or BC carriers. A topological orbit quotient, a generic sheaf category and numeric polygons do not supply those carriers. I found no additional statable geometric headline that should be forced through a stand-in.

**Pinned declarations opened.** Pins match the manifest: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

| Object / exact declaration | File and line at pin | What the declaration actually supplies |
| --- | --- | --- |
| WittVector.FractionRing.frobenius; Isocrystal; IsocrystalHom; IsocrystalEquiv | `Mathlib/RingTheory/WittVector/Isocrystal.lean:79`, 113, 132, 138 | Witt-fraction-field Frobenius, semilinear equivalence and intertwining maps. Isocrystal itself has no finite-dimensionality condition. |
| WittVector.StandardOneDimIsocrystal; frobenius_apply; isocrystal_classification | Same file:157,172,180 | Frobenius p^mσ and classification with finrank=1, not all-rank equal-characteristic classification. |
| SpectralSpace | `Mathlib/Topology/Spectral/Basic.lean:38` | T₀, compact, quasi-sober, quasi-separated and prespectral; no Hausdorff axiom. R01 therefore cannot silently use a closed diagonal. |
| TauCeti.FarguesFontaine.spaX; quotientMap; quotientMap_eq_iff; isOpenQuotientMap_quotientMap | `TauCeti/AlgebraicGeometry/AdicSpace/FarguesFontaine/Quotient.lean:56`,67,72,107 | Orbit quotient, integer-translate equality and open quotient topology; no ringed relative curve. |
| SheafOfModules.isFiniteLocallyFree_iff_exists_isLocallyFreeData_isFiniteType | `TauCeti/Algebra/Category/ModuleCat/Sheaf/FiniteLocallyFree.lean:198` | One generator family satisfying both finite and free conditions. |
| TauCeti.BrauerGroup.mk_end; baseChange_mk | `TauCeti/Algebra/BrauerGroup/Group.lean:233`; `TauCeti/Algebra/BrauerGroup/BaseChange.lean:148` | Split End class requires nontrivial finite-dimensional V; base change carries the bundled CSA class. |
| TauCeti.BrauerGroup.crossedProductClass; brauerCohomologyEquiv; brauerCohomologyEquiv_crossedProductClass | `TauCeti/Algebra/CrossedProduct/BrauerClass.lean:55`; `TauCeti/Algebra/CrossedProduct/Comparison.lean:267`,295 | Algebraic cocycle construction and Brauer/cohomology comparison; local invariant normalization remains ClassFieldTheory's input. |

**Ownership and supplier resolution.** Searches used objects (ramified Witt coefficients, isocrystals, Frobenius modules, twisted local systems, bundle carriers and BC spaces), the roadmap tool's main/open index, the supplied sibling checkouts and board packages. The duplicated p-typical local-system carrier is R02. No collision of the four fully qualified Lean names was found. The following resolved contracts are particularly material to the review; these are roadmap targets, not claims that their implementations are already at the library pins.

| Supplier reference | Resolved location | Contract / limit checked |
| --- | --- | --- |
| CrystallineCohomology CR.4.7 | `TauCetiRoadmap/CrystallineCohomology/README.md:6620` | All-rank ordinary Witt blocks, classification and descent; not equal-characteristic Laurent series. |
| PadicDifferentialEquationsAndRigidCohomology RD.1.27, RD.1.32 | `TauCetiRoadmap/PadicDifferentialEquationsAndRigidCohomology/README.md:2921`,3030 | Ramified mixed-characteristic q-Frobenius blocks/classification with uniformizer normalization. |
| PadicHodgeTheory 7.5–7.6 | `TauCetiRoadmap/PadicHodgeTheory/README.md:1318`,1340 | P-typical relative carriers and derived Frobenius comparison; inherited local-system ownership leads to PhiGammaModulesAndIwasawaCohomology. |
| PhiGammaModulesAndIwasawaCohomology 1.0b | `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:552`,597,599 | Same twisted local-system object and operations; R02. |
| PrismaticCohomologyPartIII 7.0 | `TauCetiRoadmap/PrismaticCohomologyPartIII/README.md:852` | Absolute curve/Robba/GAGA/completion interfaces; the restricted absolute specialization is preserved by the target's contract. |
| ReductiveGroupsPartII RG2.0.4, RG2.3.1, RG2.3.7 | `TauCetiRoadmap/ReductiveGroupsPartII/README.md:852`,3800,5201 | Completed unramified field and fixed field; smooth models; Lang for smooth connected groups. |
| AdicSpacesPartII R0.0, R0.1a, R0.3–R0.5, R0.8 | `TauCetiRoadmap/AdicSpacesPartII/README.md:518`,624,1769,2270,2759,3868 | Locally spectral spaces, separated completion/tensor products and analytic closed subspaces. |
| AdicSpacesPartIII R3.1–R3.5, R3.8 | `TauCetiRoadmap/AdicSpacesPartIII/README.md:9136`,9594,9870,10053,10179,11858 | Acyclicity, gluing, quasi-Stein sections, finite locally free analytic sheaves and traces. |
| FarguesFontaineDiamonds F4 | `TauCetiRoadmap/FarguesFontaineDiamonds/README.md:663` | Fixed-field analytic Cartier construction; requires closed images on every affinoid. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.2.28 | `TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheory/README.md:4325` | f-semiperfect/isogeny and regular-ideal/integral full faithfulness; target retains these base hypotheses. |
| DiamondsAndVStacks D2, D3.10, D5, D6.9 | `TauCetiRoadmap/DiamondsAndVStacks/README.md:4245`,4324,5441,7640,7701,9495 | Descent, locally profinite torsors, spatial/relative representability and seminormal rigid full faithfulness, not an unrestricted diamondification theorem. |
| DiamondEtaleCohomology C4; DiamondSixOperations S4–S5 | `TauCetiRoadmap/DiamondEtaleCohomology/README.md:1195`; `TauCetiRoadmap/DiamondSixOperations/README.md:702`,934 | Properness/tautness and ℓ≠p cohomological smoothness, including the perfectoid ball. |
| SchemeAndStackFoundations 0.3–0.4,1.1,1.24,2.18,3.3–3.4 | `TauCetiRoadmap/SchemeAndStackFoundations/README.md:551`,602,2071,3068,3959,4713,4789 | Generic Proj, extension/descent, coherent derived category and degree/Picard vocabulary; curve-specific Picard computation remains here. |

**Source sample.** The seeded request repeats “API” fifteen times without unique locators. I did not pretend those labels select fifteen distinct blocks: I inspected all **31 API blocks**, their surrounding claims/Checks and source locators. No locator is explicitly flagged unverified in the README. All eleven referenced works were fetched legally; the two CN versions give twelve texts. No source text was copied into the repository or report. The source-scope qualifications below are part of the result.

| API blocks (README lines) | Text inspected, locator and source lines | Outcome |
| --- | --- | --- |
| Isocrystals, rational blocks, cyclic algebra (232,278,346) | FF §8.2.3, Defs.8.2.5/8.2.7, Props.8.2.6/8.2.8, pp.236–238; FF lines 12848–12916 | Coefficients, cyclic wrap, tensor functor and h² endomorphism dimension match. |
| Bundles, Frobenius complex, functor (425,531,574) | FS II.2 preamble/II.2.1, pp.57–58; FS lines 2159–2207 | Finite bundles, v-descent, degrees 0–1 and slope-reversing covariant functor match. |
| Robba rings and modules (463,488) | CS Def.3.2.10, Thms.3.2.13/3.3.4, pp.681–683; CS lines 1258–1263,1357–1366; KL §7.3 | Topological limits, finite-projective Frobenius data and integral distinctions match in the cited p-typical domain. General E is an extension target. |
| Geometric charts, global Proj (640,852) | FS II.2.7/II.2.9, pp.66–68; FS lines 2534–2583 and following geometric argument | Positive generation is required for the global comparison; no unsupported arbitrary relative coherent GAGA is inferred. |
| Rank, saturation, semistability, HN, polygon (698,724,750,775,801) | FF §5.5.1–5.5.2, pp.162–164; FF lines 9604–9710; FS II.2.10–II.2.12 | Rank/degree order and zero-object handling correct; source coordinate swap is recorded below. |
| Twisted invariants and actions (917,943) | KL 6.3.17–6.3.18, pp.142–143; KL lines 5611–5644 | Source eigenspace sign corrected in target definition; target Check still wrong (R03). Fixed-n topology does not assert a uniform constant for all n. |
| Tensor ampleness (983) | KL 8.8.2–8.8.6, pp.180–182; KL lines 7033–7126 | Eventual tensor generation and power criterion distinguished from the field-only immediate-generation result. |
| BC complexes, scalar quotient (1190,1250) | FS II.2.1, II.2.16, II.3.5; FS lines 2192–2196,2760–2782 and II.3.5 | Hypercohomology and puncturing are essential; topological proof input needs R01. |
| Sympathetic functors, presentations, curvature, heart, BC HN, filtration (1435,1460,1547,1586,1621,1663) | CN author §§3.1–3.2, pp.12–19; CN lines 540–623,688–772,843–911 | Countability, finite presentation invariants, shifts, zero-slope boundary and off-∞ torsion retained. |
| Abstract BC (1517) | SW Def.15.2.1/Thm.15.2.12, pp.133,139; SW lines 5177–5180,5397–5403 | Thick abelian closure of Q_p and G_a; diamonds, not all perfectoid spaces. |
| Pure models and twisted local systems (1917,2079) | KL 7.3.1–7.3.5,8.5.7; KL lines 5779–5860,6718–6755 | Commensurability, local/global distinction and arithmetic twist equation match; ownership still duplicated. |
| Pointwise and relative ampleness (2165,2241) | KL 8.8.10,8.8.17–8.8.19; KL lines 7142–7164,7248–7291 | Strict positivity, zero/empty cases, and slope 1/a normalization tested. |

Additional source checks: SW13 Theorem A, p.3, lines 72–79 and Proposition 3.1.3, p.22, lines 825–834 retain the actual full-faithfulness/universal-cover hypotheses; CDN §2.1.2, pp.21–22, lines 809–812 and Proposition 2.5 lines 859–864 retain the supercuspidal and L-action input; GLX §5.1, pp.31–32, lines 1262–1283 supports the stated filtered-isocrystal consumer; SW 19.5.1–19.5.2, pp.178–180, lines 6901–6975 distinguishes schematic reconstruction from smooth sousperfectoid analytic torsors. None of these citations licenses dropping its base or smoothness hypotheses.

**Computed adversarial pass.** The table has one row for each of the **136 target blocks**, including every API block, every headline and every finding's mathematical target. Values are calculations in explicit instances, not claims that example-testing proves the general theorems. Row labels give the README heading line. The coefficient field is nonzero with q≥2; inseparable extensions are outside the separable adjunction; reduced perfectoid bases exclude nilpotent bases, while nilpotent divisor thickenings are explicitly tested. Arbitrary noncompact/nonabelian groups are used only where the relevant hypotheses permit them. R01 and R03 record failed tests rather than hiding them under “sound”.

| Statement (README line) | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| Ramified coefficient rings and coefficient changes (91) | p=2,3; first two ghost coordinates; equal characteristic | w₀=x₀, w₁=x₀^q+πx₁; at (0,1), (w₀,w₁)=(0,π). Equal-characteristic (0,1) represents π. | Compatible; ordinary Witt coefficients alone would lose ramification. |
| Relative annuli and their section rings (107) | Two-term x=[a]+π[b]; Frobenius | Norm is max(‖a‖^ρ,‖π‖‖b‖^ρ); after φ it is max(‖a‖^(qρ),‖π‖‖b‖^(qρ)), the radius-qρ norm. | Compatible with arithmetic Frobenius. |
| Integral period domain (123) | Crystalline end versus generic part | At π=0 the crystalline point remains in the integral domain; inverting π removes it. At π≠0 both charts give the same generic point. | The two domains are distinguished. |
| Relative period domain and analytic quotient (139) | One Frobenius orbit; n=0,1,−1 | Quotient images of y,φy,φ⁻¹y are equal; the equality criterion produces integers 0,1,−1 respectively. | Agrees with pinned quotientMap_eq_iff; structure sheaf remains a target. |
| Marked untilt Cartier divisors and Cartier descent (153) | A DVR parameter t; square-zero thickening | Cartier quotient by t has length 1; quotient by t² has length 2 and nonzero nilpotent t. Zero section has zero annihilator condition false. | Cartier condition excludes zero; multiplicity retained. |
| Completed local period rings (170) | Completed period DVR B; m=1,2 | B/(t)=C; B/(t²) has length 2, t≠0 and t²=0; replacing t by ut for a unit preserves both ideals. | Compatible; each point needs its own residue field. |
| Rank-one Frobenius twists (186) | Twists n=0,1,−1 | Frobenius multipliers 1,π⁻¹,π; tensor of the latter two has multiplier 1 and degree 0. | Sign fixed by O(1), not its dual. |
| Homogeneous section ring and partial schematic charts (200) | Homogeneous degrees 0,1,2 | P₀=E over a geometric point; s∈P₁ gives φ(s²)=π²s², hence s²∈P₂. On two base points P₀=E². | Compatible; global constants are componentwise. |
| Finite isocrystals over the completed maximal unramified coefficient field (228) | D(0,1); zero object; nonfixed scalar a | End(D(0,1))=L^σ=E; σ(a)≠a makes a·id fail intertwining. Zero object has L-rank 0. | E-linear, not L-linear Hom spaces. |
| Mixed-characteristic supplier comparison (255) | Ordinary Witt specialization; ramified vπ(p)=e | Rank 1 remains rank 1; Φ=pσ has vπ multiplier e, rather than 1 when e>1. | Supplier transport must retain vπ normalization. |
| Rational standard Frobenius blocks (274) | D(−1,2), D(2,2), D(0,1) | Φ²e₀=π⁻¹e₀; slopes −1/2,1,0; gcd(2,2)=2 splits D(2,2) into two rank-one slope-1 blocks. | Coprimality discriminates simple blocks. |
| Dieudonné–Manin classification of finite isocrystals (300) | Rank 0,1,2; nonclosed residue field | Decompositions have slope multisets [],[−1],[1/2]; a nontrivial slope-zero Jordan block over F_p with σ=id is not diagonalizable. | Algebraic closure is essential; source-scope limitation recorded below. |
| Tensor and dual calculus for isocrystals (318) | D(1,2)⊗D(1,2); dual | Tensor rank 4 and slope 1, hence four D(1,1); dual rank 2 and slope −1/2. | Multiplicities and sign agree. |
| Division endomorphisms of a simple isocrystal (330) | Simple slopes 0,1/2,1/3 | End dimensions over E are 1,4,9; isocrystal endomorphism invariants are 0,1/2,−1/3 mod Z. | Dimension h² and negative isocrystal sign agree. |
| Slope-labelled cyclic algebra (342) | Cyclic algebra of denominator 3; denominator 1 | Dimension 9 and invariant d/3; for d=1 cyclic generator cubed is π. Denominator 1 gives E of dimension 1. | Arithmetic cyclic convention fixed. |
| Arithmetic Brauer invariant and slope normalization (367) | D(1,3), dual and degree-three unramified splitting | Invariants −1/3,1/3; restriction multiplies −1/3 by 3, giving −1=0 mod Z. | Distinguishes opposite algebra; denominator 2 alone would not. |
| Coefficient extension and induction adjunction (381) | Identity coefficient extension; degree-two extension | Identity gives ranks 1→1; induction of a rank-one object along degree 2 has rank 2, matching restriction/induction adjunction. | No identification of unequal coefficient ranks. |
| Finite Galois descent of isocrystals (397) | Finite Galois descent of the trivial line; identity | Invariants of L′ with its specified Galois action are L; extending back gives L′. Identity cover has invariants L. | Descent datum is used, not discarded. |
| Finite locally free bundles on the curve (421) | Free ranks 0,1,2; infinite free sum | Local finite-basis sizes are 0,1,2; countable free sum has infinite basis and is not finite locally free. | Matches paired finite/free witness at the pin. |
| Annular Frobenius descent for bundles (447) | Trivial annular rank-one module; zero | Restriction then gluing gives O and rank 1; zero glues to zero with rank 0. φ on scalars is retained. | Compatible tensor unit and zero. |
| Relative tilted Robba ring from curve annuli (457) | Constant coefficient and annular restriction | The element 1 restricts to 1 at every radius and has norm 1; π has norm ‖π‖ at each radius. | Constants survive the inverse/direct limits with their topology. |
| Finite projective Frobenius modules and integral models (484) | Rank-one multiplier π; zero multiplier | Linearized Frobenius matrix (π) is invertible over the full Robba ring; matrix (0) has rank 0 and is not invertible. | Invertibility excludes the zero operation. |
| Exact tensor equivalence of Robba modules and curve bundles (511) | Tensor unit and dual twist | Trivial Robba module maps to O; multipliers π⁻¹ and π give O(1),O(−1); tensor maps to O. | Exact tensor comparison is compatible on these objects. |
| Two-term Frobenius complex for curve cohomology (527) | Φ−1 on unit; zero module | On fixed constants E, Φ−1=0; degree-0 kernel contains E. For zero, kernel and cokernel are both 0. | E-linearity and degrees 0,1 retained; does not infer L-linearity. |
| V-descent of bundles and their derived cohomology (558) | Identity cover and disjoint two-point base | Identity Čech descent is the original bundle; unit sections on two points are E×E, not E. | Checks descent and nonconstant base sections. |
| The exact tensor isocrystal-to-bundle functor (568) | D(1,1), D(−1,2), distinct slopes | Images O(−1),O(1/2) have degrees −1,1 and ranks 1,2. Isocrystal Hom of distinct slopes is 0 but Hom(O,O(1))=H⁰(O(1))≠0. | No full-faithfulness over all slopes. |
| Slope-sensitive cohomology of standard bundles (600) | O(−1),O,O(1); two points | (H⁰,H¹)=(0,U₋₁),(E,0),(U₁,0); unit sections over two points E². | Zero slope belongs to H¹-vanishing branch. |
| Classical points and annular Dedekind rings (620) | Geometric annulus with two connected components | Section ring B₁×B₂ has nontrivial idempotent (1,0), hence is not a domain; each connected component is Dedekind. | Connectedness condition retained. |
| Elementary algebraization at a geometric point (636) | Two independent degree-one sections | Each zero divisor has degree 1; distinct supports give a two-chart cover with empty common zero locus. Choosing the same section twice leaves its degree-one zero uncovered. | Distinguishes a genuine chart cover. |
| Regular noetherian geometric curve and PID complements (660) | Geometric curve minus a closed point | Dimension is 1; local uniformizer ideal has colength 1; Picard restriction kills the generator represented by the removed point. | Consistent with PID complement, not a general curve assertion. |
| Untilts and completed local rings (670) | Two closed points x and y; length-two thickening | Completed residue quotients are C_x♯ and C_y♯ separately; at x, length(B_x/t_x²)=2. | No replacement of both by a fixed untilt. |
| Picard group of the geometric curve (680) | O,O(1),O(−1) | Picard degrees 0,1,−1; tensor of degree 1 and −1 gives 0. | Integer normalization detects the generator sign. |
| Rank, determinant degree and rational slope (694) | O(1/2)⊕O(−1); zero | Rank 3, degree 0, slope 0; each summand has (rank,degree)=(2,1),(1,−1). Zero has (0,0) and no slope. | No use of totalized 0/0 as a slope. |
| Saturation and torsion degree on the geometric curve (720) | tO⊂O locally; t²O⊂O | Saturations are O; quotient lengths 1,2 equal the degree defects 1,2. Multiplication by a unit has defect 0. | Saturation is different from an arbitrary subsheaf. |
| Stable and semistable geometric bundles (746) | O(1/2), O⊕O, O(1)⊕O(−1) | Slopes 1/2,0,0 respectively; first stable, second semistable but not stable, third unstable because slope-1 subbundle exceeds average 0. | Distinguishes stable, semistable and average slope. |
| Harder–Narasimhan filtration of geometric bundles (771) | O(2)⊕O(−1); zero | HN subobject O(2); graded ranks (1,1), slopes (2,−1); zero has zero steps. | Decreasing slope order fixed. |
| Rank-normalized Harder–Narasimhan polygon (797) | O(1/2)⊕O(−1); a=2 | Upper vertices (0,0),(2,1),(3,0). Lower KL vertices (0,0),(1,−1/2),(3,0). At x=1, (0−P_FS(2))/2=−1/2. | Rank lengths and reversal/rescaling agree. |
| Global generation and vanishing after positive twists (838) | V=O(−2); positive twist n=3 | V(3)=O(1) has H¹=0 and is generated; at n=0, H⁰(V)=0 so nonzero V is not generated. | Positive threshold is substantive. |
| Global Proj map and compatible schematic twists (848) | Twists O(0),O(1) under global Proj map | Pullback of O_Proj(0) is O; pullback of O_Proj(1) is the degree-1 line. Their product has degree 1 on both sides. | Twists are compared through the specified map. |
| GAGA for the relative schematic curve (874) | O⊕O(−1) and its dual | Algebraic/analytic ranks 2 and degrees −1 agree; dual has degree +1 on both sides. | Bundle GAGA checked; not claiming arbitrary relative coherent GAGA. |
| Independence of the ample line bundle (884) | Replace O(1) by O(2) | Graded degree n for the second ring is old degree 2n; Proj has the same underlying curve, while the distinguished twist pulls back to O(2), not O(1). | Correct distinction between curve and polarization. |
| Prüfer charts and coherent Frobenius correspondence (896) | Nonzero principal ideal and torsion on a chart | In a PID chart, (t) is projective rank 1; B/(t) is finitely presented torsion of rank 0 and length 1. | Coherent correspondence needs more than projective modules. |
| Norm topology on twisted Frobenius invariants (913) | Rank-one semilinear Φ(e)=πe; coefficient a with σ(a)≠a | Φ(ae)=πσ(a)e≠πae. Γ₁=R^{φ=1}e, not Re. e lies in Γ₁ but (Φ−π⁻¹)e=(π−π⁻¹)e≠0. | Fails the written Check; R03 gives a valid replacement. |
| Continuous profinite actions on Frobenius modules (939) | Trivial finite cyclic action; S₃ permutation action on R³ | Unit and zero act continuously; transpositions (12),(23) do not commute, but their permutation matrices commute with coefficient Frobenius. | Semilinearity does not require an abelian acting group. |
| Two affine charts and cohomological dimension one (969) | Two affine charts; zero coherent sheaf | Čech complex has terms in degrees 0,1, hence cohomology in degree 2 is 0; zero sheaf gives 0 in both terms. | Cohomological dimension 1 checked on the stated cover route. |
| Tensor global ampleness and rational-local ampleness (979) | F=O(1),G=O(−2); F=0 | F^n⊗G=O(n−2), generated for n≥3. For zero F and n≥1 the tensor is 0 and is generated. | Tensor-ampleness quantifiers include eventual n and the zero case. |
| Power criterion for tensor global ampleness (1004) | F=O(1),k=2; F=O | F²=O(2) and F are ample; O²=O remains nonample (test G=O(−1)). | Both implications survive a nontrivial power and a negative control. |
| Positive line ampleness and finite-type presentations (1014) | O(1) and a finite sum of negative twists | O(1)^n⊗O(−2)=O(n−2), generated for n≥3; a finite direct sum uses the maximum of its thresholds. | Finite presentation supplies one finite maximum. |
| Cohomological criterion for tensor global ampleness (1024) | F=O(1),G=O(−2) | H¹(O(n−2))=0 for n≥2; generation also holds eventually (n≥3 suffices). | Vanishing/generation thresholds need not be equal. |
| Positive twists of globally étale bundles (1034) | Étale O²; positive twist d=1 | O(1)² has slopes (1,1), H¹=0 and degree 2; d=0 has slopes (0,0) and is not ample. | Strictly positive twist is needed. |
| Affine nonvanishing loci of ample line sections (1044) | Nonzero s∈H⁰(O(1)); zero section | Nonvanishing locus of s is the complement of a degree-one point; zero section has empty nonvanishing locus. | Empty affine case retained. |
| Stability of rational standard bundles (1066) | Reduced 1/2 and unreduced 2/4 | O(1/2) has rank 2 and is stable; slope-1/2 block with pair (2,4) is O(1/2)² and is not stable. | Coprimality matters. |
| Fixed-slope abelian finite-length category (1076) | Fixed slope 0: E²→E projection | Kernel rank 1, image rank 1, cokernel rank 0; all nonzero constituents have slope 0. A slope-1 bundle is outside this category. | Fixed-slope abelian structure is discriminating. |
| Base change of the geometric HN filtration (1086) | O(1/2)⊕O(−1) after geometric field extension | Ranks (2,1), degrees (1,−1), slopes (1/2,−1) unchanged. | Geometric base change preserves HN labels. |
| Nonzero sections of the key rank-one extension (1100) | Split extension O(−1)⊕O(1/n); n=1,2 | H⁰ equals H⁰(O(1/n))≠0; total ranks 2,3 and total degree 0. The zero-section outcome would contradict this example. | Compatible test; nonsplit existence remains substantive. |
| Geometric classification of vector bundles (1116) | O(1/2)⊕O(−1) and zero | Classification labels [1/2,−1], total (rank,degree)=(3,0); zero labels []. Hom(O,O(1))≠0 still prevents category equivalence with isocrystals. | Correct isomorphism-class statement. |
| Hom and extension calculus for geometric bundles (1126) | O,O(1),O(−1) | Hom(O(1),O)=H⁰(O(−1))=0; Hom(O,O(1))=U₁≠0. Ext¹(O,O(−1))=U₋₁≠0. | Both Hom directions and extension sign tested. |
| Stable-bundle division endomorphism comparison (1136) | O(1/3),O(1/2),O | End dimensions 9,4,1; invariants 1/3,1/2,0; opposites give −1/3,−1/2,0. | Matches isocrystal slopes −1/3,−1/2,0. |
| Coherent sheaves on the geometric curve (1150) | F=O⊕B_x/(t_x²) | Rank 1, torsion length 2, torsion-free quotient O; torsion is supported at x and is not another vector-bundle summand. | Coherent classification retains torsion and noncanonical splitting. |
| Geometric simple connectivity via finite étale algebras (1160) | Finite étale algebra E×E; nilpotent alternative | O⊗E(E×E)=O×O, rank 2; trace pairing diag(1,1) is nonsingular. E[ε]/ε² has discriminant 0 and is not étale, also at p=2. | Separability excludes square-zero alternative. |
| Banach–Colmez section and hypercohomology sheaves (1184) | Complex [O(−1)→O], zero and divisor differentials | Zero differential gives E⊕H¹(O(−1)), Dimension (1,0); divisor differential gives C, also (1,0), but the functors differ. | Hypercohomology detects differential; ordinary-section cokernel would give E. |
| Lubin–Tate universal cover and sections of O(1) (1214) | Lubin–Tate unit cover | Covariant normalized Φ=π⁻¹σ yields curve degree +1; universal-cover multiplication by π is invertible, unlike finite π-torsion. | Normalization matches O(1); not arbitrary Dieudonné bases. |
| The fundamental untilt sequence and degree-one divisors (1226) | Degree-one divisor sequence at x | O→O(1) has quotient C_x♯; dimensions (1,1)−(0,1)=(1,0); local multiplication by t has cokernel length 1. | Nonzero section, its line and its quotient are distinguished. |
| Scalar projectivization (1244) | W=E², E,0 under scalar quotient | Nonzero E² gives P¹(E); nonzero E gives one orbit; zero gives empty quotient. π^Z leaves the O_E^× factor before full quotient. | Quotient cannot include the zero section. |
| Quotients by contracting automorphisms (1274) | X=T×Q₂, γ(t,x)=(t,2x); T Sierpiński | Fixed locus T×{0}; ‖2ⁿ‖₂=2⁻ⁿ. ((η,1),(s,1)) is in closure of action image but not image. Windows T×2ᵏZ₂^× have disjoint translates; quotient T×Z₂^×. | Closed-immersion assertion fails; repaired conclusion passes (R01). |
| Ordinary Banach–Colmez properness (1292) | BC(O),BC(0),BC(O(1)) over a point | Projectivizations of E and 0 are point and empty; positive line has dimension 1 before projectivization. | Degeneracies compatible; general proof must use repaired R01. |
| Small-slope resolutions of positive bundles (1308) | E=O(1),r=2; rank zero | Middle O(1/2) has rank dr=2; kernel rank dr−rank(E)=1. Degree equation 1=0+1. Zero uses empty sequence. | Middle rank dr differs from kernel rank dr−rank(E). |
| Étale positive-slope presentations (1320) | E=O(1), r=2; zero boundary | Part (a) has m=d=1, middle rank 2 and degree 1, kernel rank 1 and degree 0. The inequality 1>1/2 is strict. For E=0 all ranks are 0. | Semistable slope-zero kernel, not just degree zero; E′ retained in (b),(c). |
| Two-term Banach–Colmez geometry (1332) | [O(−1)→O(1)], arbitrary differential | H⁰(E₁)=0 and H¹(E₀)=0; BC extension has Dimension (1,1)+(1,−1)=(2,0). | Same dimension for zero/nonzero differential, not same object. |
| Dimension in the positive range (1344) | E₀=O(1/2),E₁=O(−2) | Dimension 1−(−2)=3; height 2−1=1. Swapping height and dimension would give (1,3). | Correct relative dimension/height distinction. |
| Absolute Banach–Colmez spaces of isocrystals of one sign (1360) | D(−1,2), D(1,1), mixed direct sum | First gives positive O(1/2), second shifted negative O(−1); dimensions 1,1. Mixed slopes {−1/2,1} fail same-sign premise. | Absolute theorem is not applied to mixed signs. |
| Effective divisors and projective sections (1372) | Divisors 0,x,x+x,x+y | Degrees 0,1,2,2; stabilizer in S₂ is S₂ at x+x and trivial at x+y. | Symmetric quotient retains coincident multiplicity. |
| Punctured absolute spaces and scalar quotients (1391) | Positive O(1) punctured; zero object | Zero object has empty punctured space; positive O(1) has dimension 1. Relative spatiality does not compute an absolute qcqs property. | Distinction retained; spatiality relies on source, not dimension count. |
| Quaternion presentation of negative Banach–Colmez space (1403) | Nonzero extension 0→O(−1)→F→O→0 | F=O(−1/2) has rank 2, degree −1; scalar u changes determinant by u². Reduced norm 1 fixes it. | SL₁(D), not unrestricted D×. |
| SL₂ presentation of negative Banach–Colmez space (1415) | Two independent sections; p=2 and p=3 | Matrix diag(u,1) changes determinant by u; elementary shear [[1,1],[0,1]] has determinant 1 in both characteristics. Pair (s,s) has determinant 0 and is excluded. | SL₂ determinant convention is discriminating. |
| Sympathetic Vector Spaces (1431) | Constant Q_p, additive V₁,V₀ at C | Values Q_p,C,0 respectively; V₁⊕V₂ evaluates C³. A merely p-divisible algebra does not certify spectral-point injectivity. | Extra sympathetic hypotheses retained. |
| Finite-Dimensional Banach–Colmez presentations (1456) | V₁/Q_p and stabilization | Dimension (1,0)−(0,1)=(1,−1); adding 1 to both finite endpoints leaves (h₁+1)−(h₂+1)=h₁−h₂. | Real presentation invariant, not topology alone. |
| Exact faithful Banach realization (1481) | V₁ and V₁⊕Q_p | BC Dimensions (1,0),(1,1); evaluation gives C,C⊕Q_p, isomorphic as topological Q_p spaces under the stated separability hypotheses. | Faithful realization is not recovery from bare topology. |
| Dimension and the abelian BC category (1491) | 0→Q_p→V₁→V₁/Q_p→0 | Dimensions (0,1)+(1,−1)=(1,0); kernel and cokernel of identity on V₁ have (0,0). | Additivity includes negative heights. |
| Dimensions of standard Banach–Colmez spaces (1501) | B₂,U_{2,1},U_{1,0},U_{1,−1} | Dimensions (2,0),(1,2),(0,1),(1,−1). | Zero slope is in the nonnegative branch. |
| Abstract Banach–Colmez category (1511) | Generators Q_p,G_a; quotient G_a/Q_p | Dimensions (0,1),(1,0),(1,−1); finite closure contains the quotient; infinite direct sum of Q_p is not a finite-dimensional BC object. | Finite versus arbitrary closure distinguished. |
| Curvature (1543) | Q_p,C,H¹(O(−1)),torsion at x≠∞ | Curvatures <0,0,>0,>0; heights 1,0,−1,0. | Strict positive curvature need not imply strictly negative height. |
| Curvature orthogonality (1572) | Maps positive to nonpositive curvature | Hom(H¹(O(−1)),Q_p)=0; Hom(C,Q_p)=0; identity C→C≠0 since both have curvature 0. | Strict versus weak inequalities distinguished. |
| The tilted coherent heart (1582) | O[0],O(−1)[1],C_x[0] | Cohomology degrees (0),(−1),(0); negative piece has H⁰=0. Unshifted O(−1) fails nonnegative H⁰ requirement. | Shift and torsion pair determine the heart. |
| Le Bras equivalence (1607) | O,O(−1)[1],C_∞ | Images Q_p,H¹(O(−1)),C with Dimensions (0,1),(1,−1),(1,0). | Equivalence tests include negative and torsion objects. |
| Banach–Colmez HN invariants (1617) | U_{2,1},U₀,C,U_{1,−1},0 | (rk⁻,deg⁻,µ⁻)=(1,−2,−2),(0,−1,−∞),(1,0,0),(1,1,1); zero has no slope. | Reciprocal formula excludes λ=0. |
| HN decomposition and connected components (1643) | Zero/divisor differential on [O(−1)→O] | Positive HN part equals H¹(O(−1)) for zero differential, but 0 for divisor inclusion whose BC object is C. | Canonical truncation uses cohomology sheaves, not the displayed terms. |
| Canonical curvature filtration (1659) | Q_p,C,H¹(O(−1)),C_x (x≠∞) | (W>0,W≥0)=(0,0),(0,W),(W,W),(W,W). Last object has HN slope 0. | Curvature filtration is not just HN cut at 0. |
| Euler–Poincaré height formula (1687) | F=O(1/2),O(−1),C_x | Euler heights 2−0=2,0−(−1)=1,0−0=0; ranks 2,1,0 respectively. | Formula agrees on positive, negative and torsion generators. |
| Artinian property of BC (1697) | Finite subobjects of Q_p² and BC dimension stabilization | Chain Q_p²⊃Q_p⊃0 has heights 2,1,0 and stops; any strict quotient of dimension 0 has positive integer height. | No infinite descent in the finite-height remainder. |
| Height bound for non-affine additive subobjects (1707) | Q_p⊂C; zero control; U_{2,1} | (dim,ht)=(0,1) gives 0<1; zero gives 0<0 false; (1,2) gives 1<2 and BC slope −2<−1. | Nonzero premise repairs the boundary. |
| Banach–Colmez morphism calculus (1717) | U_{1/2}; triangular morphisms | End dimension 4 over Q_p, Hom(U_{1/2},C) dimension 2 over C. Ext¹(O,O(−1)) is nonzero while opposite Hom(O(−1)[1],O)=0. | Denominator multiplicity and triangular direction retained. |
| Torsion at an untilt point (1731) | B_x/(t_x),B_x/(t_x²); x≠∞ | End rings C_x and B_x/(t_x²); lengths 1,2. Hom to C_∞ is 0 when supports differ. | The selected untilt matters. |
| Curvature-zero finite-length modules (1741) | Finite-length period modules B₁,B₂ | Lengths and BC dimensions 1,2; both heights 0. Q_p has height 1 and is not a finite-length B_dR⁺ module. | Curvature-zero subcategory distinguished. |
| VS Hom vanishing from torsion period modules (1751) | W=B₁ and r=1 | tW=0; a period-linear image in torsion-free B_dR⁺ must satisfy tv=0, hence v=0. Arbitrary VS maps require the separately stated bounded-image argument. | Computes linear case only; nonlinear natural-map proof input explicitly retained. |
| Curvature and HN support (1761) | Q_p,C_∞,C_x (x≠∞) | Q_p has <0; Q_p⊕C_∞ has ≤0 but not <0; C_x has >0. | Support at ∞ is essential in both directions. |
| Height signs from curvature (1771) | Q_p,C_∞,C_x,H¹(O(−1)),0 | Heights 1,0,0,−1,0; strict negativity of curvature implies positive height only for nonzero objects. | Correct weak sign for positive curvature. |
| Curvature subobjects and quotients (1781) | Identity quotient C_x→C_x, x≠∞ | Quotient height 0, HN slope 0, curvature >0, not 0. For x=∞, height 0 and curvature 0. | Written corrected support condition survives. |
| Height of torsion period subobjects (1791) | Q_p⊂C and C⊂C | Subobject heights 1 and 0; only the second is a finite-length B_dR⁺ module. | Equality direction discriminates period linearity. |
| Cokernel of a generating period-module image (1801) | Q_p→C nonzero and C→C identity | First image spans C over B_dR⁺, cokernel C/Q_p has (dim,ht)=(1,−1); second cokernel is 0 and excluded by nonzero clause. | Negative-height conclusion retains its boundary. |
| Nonpositive curvature extension criterion (1811) | Q_p,C,U_{2,1} | Sequences use (V,M)=(Q_p,0),(0,C),(Q_p²,B₁); dimensions add to (0,1),(1,0),(1,2). | Both directions agree on the three generators. |
| Dimension of the semistable period space (1825) | L=Q_p and [L:Q_p]=2 | L-Dimension is (1,2) and (2,2), respectively; rank-two alone does not determine the representation multiplicity. | Supercuspidal/admissibility input retained. |
| Upper semicontinuity of geometric HN polygons (1851) | Special fibre O(1)⊕O(−1), generic O² | Upper midpoint values 1 and 0, endpoints (2,0) in both; upper polygon can rise under specialization. | Upper semicontinuity sign correct. |
| Relative HN filtration and pro-étale splitting (1863) | Constant polygon O(1)⊕O | HN ranks (1,1), slopes (1,0); split extension gives zero extension class. A varying polygon from the previous row violates constant-polygon hypothesis. | Global splitting not inferred from fibre splitting alone. |
| Slope-zero bundles and E-local systems (1875) | Rank-one unit and two-point base | Unit local system gives O; sections E at one point and E² at two points. O(1) has slope 1 and is excluded. | Topological local-system carrier is used. |
| Slope-dependent cohomology vanishing (1887) | O(−1),O,O(1) | H⁰ negative=0; H¹ nonnegative=0; negative H¹ and positive H⁰ are nonzero. | Strict/non-strict thresholds tested in both directions. |
| Annular basis approximation (1903) | Rank-one annular matrix F=D=1 | FD−I=0, take U=1; both norm errors 0<p^(−h) and F′D−I=0∈pR_int. | Identity and zero-rank matrix boundaries compatible. |
| Pure models and purity loci (1913) | Φ^d=p^(−c); zero; two components | p^cΦ^d=1; zero pure at every slope; multipliers (1,p⁻¹) give slopes (0,1), preventing one common c/d. | Model bounds exclude p-invariant nonzero bounded lattices. |
| Pro-étale trivialization of pure models (1941) | Trivial free model | Take S=R, basis e with p^cΦ^d(e)=e; matrix 1. Rank-zero basis is empty and condition vacuous. | Trivialization retains the existing model. |
| Openness and pointwise detection of purity (1951) | Constant pure slope 0 and 1 on disconnected base | Pure locus is whole two-point base; étale locus is only the slope-0 component, an open subset. | Purity and étaleness not conflated. |
| Diagonal Frobenius gauge normal form (1961) | A=I,D=diag(1,p),a=2 | U=I solves U⁻¹ADφ²(U)=D; slopes {0,−1/2}; U−I=0 mod p. | Negative exponent/iteration normalization agrees. |
| Robba slope-polygon semicontinuity (1975) | Geometric slopes (1,−1),a=2 versus (0,0) | Lower midpoint values −1/2 versus 0; final value 0 for both. | Lower Robba semicontinuity is opposite to upper geometric one. |
| Bounded polygons and dense constant loci (1985) | Rank 2,total degree 0, lower slope bound −1 | Possible integer line-slope pairs include (−1,1),(0,0); rank bounds denominators by 2, so a bounded interval gives finitely many polygons. | Discreteness plus rank bound, not boundedness alone. |
| Submodule at a constant polygon vertex (1995) | Constant polygon with slopes (1,0) | Chosen highest-slope submodule has rank 1 and slope 1; quotient rank 1 slope 0; midpoint is (1,1) in decreasing-slope convention. | Unique strict vertex separates the factors. |
| Robba filtration on a constant-polygon locus (2005) | Constant rank-two slopes (1,0) and pure slope (1,1) | First filtration has two rank-one quotients; second has one rank-two quotient. | Repeated slope is one HN piece. |
| Pointwise detection of negative Frobenius cohomology (2015) | O(−1) and the zero class | H¹(O(−1)) nonzero; zero class restricts to 0 at every point. On a one-point base detection map is identity. | Affinoid geometric-point test retained; no numerical substitute for cohomology. |
| Ring and sheaf Frobenius-module comparison (2029) | Unit over integral, bounded and full rings | Associated sheaf has rank 1 at every chart; restriction and sections return the unit module on the affinoid comparison domain. | Same carrier imported in p-typical domain. |
| Adic pure and étale loci (2039) | Two-point base slopes 0 and 1 | Pure locus both points; étale locus one point; pullback along either point yields respectively true or false for étaleness. | Adic locus agrees with analytic-point test. |
| Local purity without global pure models (2049) | p-monodromy local system on a loop | Iterating inverse monodromy on v gives ‖p^(−n)v‖=p^n‖v‖→∞; no bounded lattice stable in both directions. | Local étaleness does not force global lattice. |
| Pure modules in short exact sequences (2059) | 0→unit→unit²→unit→0; slopes mismatch control | All three pure slope 0 in split sequence. Replacing middle by slopes (0,1) makes it not pure of slope 0. | One fixed slope is indispensable. |
| Twisted rational local systems (2073) | Twists (0,1),(1,1),(1,2) | Equations τ=1,pτ=1,pτ²=1. τ=1 fails at (1,1) on nonzero rank. | Correct object, already owned by PhiGammaModulesAndIwasawaCohomology §1.0b (R02). |
| Integral Frobenius and local-system comparison (2099) | Integral unit and its rationalization | Fixed lattices Z_p, rational fixed space Q_p; ranks 1→1. Multiplication by p is invertible only after rationalization. | Integral/rational distinction retained. |
| Pure modules and twisted local systems (2111) | Pure unit; pure (1,2) block | Unit corresponds to (0,1) local system; normalized pτ² acts as 1 for (1,2), not as p. | Comparison uses supplied twisted carrier; retain new relative comparison only. |
| Independence of purity denominator (2121) | Pairs (1,2),(2,4) | Both slopes 1/2; coefficient degrees 2,4 are unequal. Squaring pτ²=1 gives p²τ⁴=1. | Equivalence, not equality of underlying data. |
| Pointwise purity over all three coefficient rings (2131) | Rank-one multipliers 1,p⁻¹ at two points | Pointwise slopes 0,1; neither a global fixed slope 0 nor 1 holds on both. Zero is pure at every slope. | Fixed-slope and varying-slope statements distinguished. |
| Surjective descent and detection of purity (2147) | Surjection of two points onto one; non-surjective control | Constant slope-1 bundle pulls back to (1,1); a slope-(0,1) bundle restricted only to first component looks étale while original is not. | Surjectivity necessary for detection. |
| Pointwise ampleness (2161) | O(1),O,O(2)⊕O(−1),0,empty base | Minimum slopes 1,0,−1; predicates true,false,false. Zero/empty have no slopes and satisfy universal positivity vacuously. | Positive total degree 1 does not suffice. |
| Positive tensor powers dominate a bundle (2187) | F=O(1),G=O(−2) | Minimum slope n−2>0 exactly for n≥3. F=0 gives zero tensor for n≥1. | Explicit uniform threshold 3. |
| Positive bundles on the geometric Proj curve (2197) | O(1) over geometric field | H¹=0; evaluation surjective; O(−1) has H⁰=0 and evaluation image 0≠O(−1). | Positive and negative controls. |
| Nonnegative extension by a negative twist (2207) | F=O(1), nontrivial extension by O(−1) | Middle O² has rank 2,degree 0,slopes (0,0); split middle has slopes (1,−1) and fails. | Existence requires a suitable extension class. |
| Resolution by an étale-at-a-point bundle (2217) | O²→O(1) on geometric curve | Kernel O(−1): ranks 1+1=2 and degrees −1+1=0. Middle is étale, quotient is positive. | A quotient of an étale bundle need not be étale. |
| Ampleness and positive fibre slopes (2227) | O(1),O,O(2)⊕O(−1) | Ample/pointwise-positive pairs (true,true),(false,false),(false,false); zero gives (true,true) in tensor convention. | Both directions and zero tested. |
| Ampleness on the relative curve (2237) | Affinoid identity; surjective two-point cover | O(1) stays positive on both fibres; O stays slope 0. Empty pullback cannot detect a nonempty slope-0 base. | Surjectivity and nonempty negative control retained. |
| The positive line of an untilt (2261) | a=2; untilt kernel z; false z=p control | Actual line has Picard degree 1, KL slope 1/2. For z=p, M has slope −1/2 and M(1) slope 0; it does not define untilt divisor. | Product formula requires genuine theta-kernel generator. |
| Integral boundary realization (2281) | Integral unit; generic inversion | Φ-fixed integral module O_E becomes E after π inversion; π is nonunit on the lattice but a unit generically. | Boundary retains integral data lost on generic curve. |
| Integral group torsors and Frobenius (2293) | G=G_m, GL₂,constant Z/2 | Unit torsor has fibre O_E^×; GL₂ determinant tests 1 versus u. Lang on constant Z/2 has image {1}, not both elements, so connected fibres matter. | Smooth connected-fibre hypothesis excludes the negative control. |

## Not verifiable

- **Exact source coverage of the Lean equal-characteristic theorem.** The legal texts were readable, but Lurie Theorem 6 (Lurie lines 25–30,51–56) uses Witt fraction fields; Ked 2.1.3 and 4.5.7–4.5.8 (Ked lines 205–208,2177–2207) uses ramified mixed-characteristic coefficients. FF §8.2.3 gives the two-characteristic conventions and invokes classification. These are not a directly checked proof of the exact all-rank Laurent-series theorem for arbitrary algebraically closed k and q=p^f. The examples and signature audit support its consistency, not a claim that those mixed-characteristic proofs already cover it.
- **Extensions of source domains.** General-E/equal-characteristic analytic constructions and sympathetic-algebra period-functor extensions are explicitly owned targets beyond p-typical supplier statements. The report certifies the cited source cases and identifies the extensions; it does not certify an unwritten extension proof. In particular the arbitrary-VS-map bounded-denominator step at README line 1753 is a substantive proof obligation, not proved by the period-linear test in row 95.
- **Source availability:** none missing. Eleven works, including both requested CN versions, were readable from author pages, arXiv or publisher open copies. The missing-reference list contains no unresolved request. The fetched FS file has 383 PDF pages, whereas the references call it a 356-page file; the early printed-page locators checked here still match. Pin the version metadata when maintaining the source record.

## Source issues

- **Error** in FS at Lemma II.2.17, printed p. 72 (FS line 2781): the source says the moved-locus action relation is closed in the ordinary product; it should be the free action has disjoint translated neighborhoods, without asserting a closed ambient relation; affects a stated result.
- **Misprint** in FF at Theorem 5.5.3, printed p. 163 (FF lines 9668–9673): the source says polygon points have coordinates degree then rank; it should be rank then degree, consistent with horizontal rank lengths; affects a stated result.
- **Misprint** in FS at the proof of Proposition II.3.2, printed p. 77 (FS line 2967): the source says the multiplicity of O(1/r) is dr; it should be d, since each summand has degree one and the kernel has degree zero; affects the proof.
- **Misprint** in KL at Lemma 6.3.17, printed p. 142 (KL line 5622): the source says the p^(−n) eigenspace identifies with invariants of M(n); it should be the p^n eigenspace, or invariants of M(−n) for the displayed eigenspace; affects a stated result.
- **Error** in KL at Definition 8.8.18 and Lemma 8.8.19, printed p. 186 (KL lines 7269–7272): the source says the untilt line's normalized φ^a-module slope is one; it should be 1/a under the paper's slope convention, equal to one when a=1; affects a stated result.
- **Misprint** in CN author copy at §3.2.5, printed p. 16 (CN line 745): the source says the reciprocal-slope formula applies without excluding λ=0; it should be restricted to λ≠0, with U₀ of rank zero, degree −1 and slope −∞; affects a stated result.
- **Error** in CN author copy at Lemma 3.16, printed p. 16 (CN lines 773–774): the source says every such subobject satisfies a strict dimension-height inequality; it should be every nonzero such subobject, since the zero object gives 0<0; affects a stated result.
- **Misprint** in CN author copy at the proof of Lemma 3.16, printed p. 17 (CN line 791): the source says the concluding inequality is h<d; it should be h>d, as required by the statement and the preceding reduction; affects the proof.
- **Error** in CN author copy at §3.2.6(2), printed p. 17 (CN line 798): the source says bundle Hom equals sections of one slope-difference block; it should be sections with the tensor-product multiplicity, giving dimension four for End(O(1/2)); affects a stated result.
- **Error** in CN author copy at Corollary 3.20(b), printed p. 18 (CN line 868): the source says strictly negative curvature always gives positive height; it should be restricted to nonzero objects, since the zero object has height zero; affects a stated result.
- **Error** in CN author copy at Corollary 3.21(iv), printed p. 18 (CN line 875): the source says every height-zero quotient of nonnegative curvature has curvature zero; it should be torsion with curvature zero exactly when supported at the marked point ∞; affects a stated result.

- **Misprint** in KL at Convention 4.1.13, printed p. 105 (KL lines 4175–4178): the source says degree is determinant valuation divided by the Frobenius iteration; it should be its negative divided by the iteration, consistent with Definition 4.1.6 and the stated sign convention; affects a stated result.
