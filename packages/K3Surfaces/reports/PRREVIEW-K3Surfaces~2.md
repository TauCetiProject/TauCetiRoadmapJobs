# Review of K3Surfaces (pull request #1285 at 893e500)
**Verdict:** needs changes

## R01 (P1) — Replace the unavailable K4.P supplier contract

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:83`: “CKG K1–K4, K4.P, K5a/K5b, K6.0–K6.1, K7”; also the Picard/exponential comparison at lines 186–202.

**Claim:** The supplier table consumes a section of an unmerged revision of an existing roadmap. `ComplexKahlerGeometry K4.P` is absent from main at fa41b37. The permitted supplier is that main version, not the revision. No matching gap is declared by this package. This matters to identifying holomorphic line-bundle classes with integral (1,1)-classes and to extending line bundles in §3.1.

**Witness:** `TauCetiRoadmap/ComplexKahlerGeometry/README.md:444–568` on main proceeds from K4 bundles/connections to K5, without K4.P. K4.P exists at line 574 of the supplied older revision, but not on main.

**Repair:** Remove K4.P from the consumed-main contract. Cite the already available `ComplexComparisonPartII C5.4` exponential/Chern comparison, and specify the remaining line-bundle-class/H¹(Oˣ) identification through an actual existing supplier or a minimal declared supplier gap, with the same slug in the plan and README. Do not request the already supplied Chern comparison again. Coordinate with the shared contract described in `K3SurfacesAndSymplecticBoundedness`, without making that later consumer a supplier. The resulting contract must give the exact segment H¹(O)→Pic→H²(ℤ)→H²(O), not Pic≃H² unconditionally. On a K3 with Picard rank 1 it yields an injective rank-1 image inside rank-22 H²; on ℙ¹ it sends O(1) to +1. These distinguish the required comparison from an unrestricted Picard/H² identification and from a sign reversal.

`ComplexComparisonPartII/README.md:3291–3334` already constructs the normalized exponential connecting class and its comparison with the underlying topological line. `K3SurfacesAndSymplecticBoundedness/README.md:202–210` explicitly identifies the generic Picard/exponential interface as a supplier contract; it does not make K4.P part of main.

## R02 (P1) — Supply the Lefschetz input for positive-dimensional fixed loci

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:640`: “use the holomorphic/topological Lefschetz and adjunction identities”; its supplier line is at 665–667.

**Claim:** The fixed-curve classification uses a fixed-locus Lefschetz formula without a suitable producer. IndexTheory I8 supplies the holomorphic formula for isolated nondegenerate fixed points, including the empty fixed set. It does not supply the topological identity L(j)=χ(Fix(j)), or a holomorphic fixed-component formula for curves. Declaring the final fixed-locus classification as a target does not identify this proof input. The lattice classification supplies neither identity.

**Witness:** `TauCetiRoadmap/IndexTheory/README.md:892–894` requires isolated fixed points and det(1−df)≠0. Along the double-sextic deck involution's fixed curve, df has eigenvalues (1,−1), so det(1−df)=0.

**Repair:** Import the topological trace/local-index construction from `MorseNovikov N6` on main, and explicitly own the clean fixed-submanifold specialization for a finite-order action on a compact smooth manifold, or declare that precise missing specialization with an earlier supplier. State L(j)=χ(Fix(j)) and its hypotheses, source, and local normal-bundle argument before the classification. If the chosen proof also needs holomorphic contributions from fixed curves, give that extension a separate producer; retain I8 only on its actual domain. Test the repaired contract on a smooth double sextic: its fixed sextic has genus (6−1)(6−2)/2=10 and Euler characteristic −18, while the cohomological topological number is 2+(1−21)=−18. The holomorphic number on O is instead 1−1=0. No division by the zero tangent determinant is permitted.

The existing topological owner is `TauCetiRoadmap/MorseNovikov/README.md:494–518`; it constructs the trace/local-index theorem by simplicial approximation and Hopf modification. Its clean fixed-curve application still needs to be stated here. This is not a request to rebuild its generic trace theorem.

## R03 (P2) — Restrict the inverse-rescaling Check to characteristic different from two

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:130–132`: “for 2σ these values become 2dy and −2dx, with inverse factor 1/2.”

**Claim:** §0.1 and `IsAlgebraicK3` allow characteristic two. Only §0.2 imposes p>2. Thus the asserted inverse in this Check has an unstated hypothesis, although the API correctly restricts rescaling to units.

**Witness:** Over an algebraically closed field of characteristic two, 2σ=0. Its contraction is zero; multiplying by the total-field value 1/2=0 still gives zero, not the identity on a rank-two tangent space.

**Repair:** Add char(k)≠2 to this particular Check, or state it for c∈k×. Keep the all-characteristic surface definition. Add the characteristic-two negative control: σ still gives an invertible contraction, but 2σ does not trivialize ω. The scalar inverse products are 0 in characteristic two and 1 in characteristic three. Both computations were verified on scratch Lean copies using `ZMod 2` and `ZMod 3`; extension to their algebraic closures preserves them.

## R04 (P3) — Correct the nodal-arrangement and Chern-number locators

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:695–696`: “§3, pp.7–8, equation (7)”; also the c₂ calculation at lines 133–135.

**Claim:** Equation (7) in Gritsenko–Hulek concerns finite covering maps of modular varieties, not the nodal arrangement. The c₂=24 computation is on printed p.13 of the cited Huybrechts draft, not pp.11–12.

**Witness:** `gritsenko-hulek` line 249 is the covering diagram; lines 277–286 give the even −4 arrangement and equation (8). `huybrechts-k3` lines 365–375 put Noether's c₂ computation on p.13.

**Repair:** Cite Gritsenko–Hulek §3, p.8, the paragraph invoking Namikawa Proposition 6.2 and equation (8). Cite Huybrechts §1.2.4, p.13 for c₂. Reopening these corrected locations gives exactly the root-complement/nodal condition and 12·2=24 used here; no mathematical statement needs changing.

## R05 (P3) — Record the references in the source manifest

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:741–771`, the nine-work reference list.

**Claim:** The previous source-manifest finding remains unresolved. Exact textual locators have largely been added, but the folder still has no `sources.toml` recording versions, legal retrieval and the two uncertified primary locators.

**Witness:** The head's tracked folder contains only README.md, Suggested.lean and metadata.toml. Seven references were retrievable through the source service; Nikulin and Rudakov–Shafarevich resolved as uncertified.

**Repair:** Add the required `tauceti-roadmap-sources/v1` manifest with one key per work, the versions and locators actually cited, and the service metadata. Record the two inaccessible primary texts as uncertified, not verified or newly missing. The seven readable works and two settled primary citations below give the reconciliation test: nine works, nine entries, no duplicate preprint/published keys. This review has not edited a manifest.

## Verified sound

This was a full review of both files, not an incremental review. The repository root README and CONTRIBUTING were read; the parent-relative paths in the supplied instructions do not exist in this worktree. Main's ComplexKahlerGeometry, DifferentialGeometry and IntegralLattices roadmaps were read for shape and contracts. No pull-request file was changed. HEAD is 893e500514142208d492f802a07de762d6b8e418, the worktree is clean, and the diff outside the selected folder is empty.

**Previous findings, checked first.** No repair report marking a finding “not actionable in this package” was supplied or found among this package's reports.

| Previous finding | Current passage and location | Disposition |
| --- | --- | --- |
| R01: K3–Enriques cycle | README:19–20, “this roadmap consumes no Enriques result”; README:736–738 sends pullback/descent to Enriques E6.U0–U4 | Repaired. Enriques §6.2, lines 634–636, actually owns the canonical-cover adapter and descent. The supply is now K3→Enriques. |
| R02: coordinate substitutes | Suggested:11–27 names the unavailable geometric headlines; lines 49 and 72 state algebraic differential vanishing and native lattice extension | Repaired. The zero-form coordinate substitutes are gone; the lattice theorem carries nondegeneracy, actual form and carrier equations. |
| R03: unspecified period loci | README:674–675 explicitly defines Ω_free and Ω_nodal; 681–686 fixes the marking group and orbit classification | Repaired. The −2/divisibility-1 and −4/divisibility-2 examples distinguish the arrangements. |
| R04: sources | README:745, “All chapter/section and printed-page locators here refer to this draft” | Partly repaired. All 13 sampled sections now have identifiable locators. R04–R05 above retain two locator corrections and the missing manifest. |
| R05: ten padding theorems | Suggested:49–87 contains two headline theorems; the former ten coordinate assertions are absent | Repaired. Neither retained theorem closed in the elementary one-tactic probes. |
| R06: commit-pinned links | README:77–87 names suppliers and their sections without commit URLs | Repaired. Worker reports blob=0. |
| R07: imports | Suggested:1, “import Mathlib”, followed by five individual Tau Ceti modules | Repaired. Direct elaboration succeeds. |
| R08: shape, Checks and dependencies | README has Summary, ownership, conventions, contracts and Layers 0–7, each ending in Examples/Dependencies; four Lean names occur in the README | Substantially repaired, with residual defects R01–R03. Per-section API/Check groups replace the former generic instructions. |

**Gate and Lean evidence.** The worker's gate at this exact head reports every counter zero and OK, including dependency, imports, stray files, outside-folder edits and targeted build. Its complete counter output is:

```text
gate K3Surfaces: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

Independently ran the prescribed direct `lake env lean` elaboration: exit 0, exactly two `sorry` warnings. All five Tau Ceti imports were available; no missing-import build was needed. A separate scratch file appended `#check @...` for all four declarations and elaborated successfully. The algebraic declaration retains k, Field, IsAlgClosed, p, CharP, 2<p, X, its structure morphism and the K3 hypothesis. The gluing declaration retains both nondegeneracy instances, evenness, γ's quadratic compatibility, the exact ambient form and integral carrier, and both isometries. No section hypothesis disappeared; no signature change is needed.

The one-tactic probe tried the alternatives `simp`, `rfl` and `infer_instance` for each admitted theorem, falling back to `sorry`. It still produced both `sorry` warnings. Object searches and reading the nearest pinned results found no single library lemma giving either complete conclusion. In particular, naturality of overlattices is not already the iff for a specified pair of summand actions, with its unique ambient extension. There is no padding finding against the two retained theorems.

The independently executed dependency command with the supplied order, main content and movable placement returned exit 0:

```text
depcheck: 204 roadmaps, 1475 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. All Needs lines were read manually as well. The citation resolver found no unresolved roadmap/name entries, but its library phase reported that it had no pinned Lake packages; the local pinned-library inspection below is the evidence for those names. Its broad name resolution also does not establish that K4.P is permitted on main. No gap is declared by this package.

**Source sample: all 13 requested sections.** The seven open works were fetched through the sources service from the author page or the specified arXiv versions. All numbers below refer to those versions, not a remembered published pagination. The sample establishes statements at the stated generality; it does not turn a textbook's citation of a deep analytic theorem into a detailed proof of each proposed estimate.

| Sampled section | Text opened, locator and result |
| --- | --- |
| 0.1 Surface and differential objects | `huybrechts-k3` lines 133–153, draft §1.1, Definition 1.1/Remark 1.2, p.7: smooth complete surface, canonical trivialization, H¹=0, projectivity and contraction. Lines 160–175 and 226–235, pp.8–9: quartic and double sextic. Lines 305–318 and 365–375: χ=2 and Noether's c₂ calculation. The scalar Check needs R03. |
| 0.2 K0.A | `martin` lines 126–144, Theorem D pp.3–4 and Corollary 1.1 p.4; lines 1699–1718, proofs p.40. Theorem D requires an elliptic fibration without multiple fibres; the corollary explicitly imports the vector-field-to-pencil implication from Rudakov–Shafarevich p.1502. This README makes that implication work in §0.2, not an automatic consequence of D. `gounelas-liedtke` lines 253–268, Proposition 2.2(2), p.6, confirms the all-positive-characteristic statement; characteristic two belongs to the named Part II. |
| 1.1 Analytic K3 and algebraization | `huybrechts-k3` lines 420–446, Proposition 1.3.2/Example 1.3.3, pp.14–15; lines 452–517, §1.3.2–3, pp.15–16, including (3.2) and footnote 9: projective analytic image, nonprojective Kummer examples, integral (1,1), positive-square criterion. Lines 4890–4900, §7.3.2, p.131: Kählerness and the Buchdahl/Lamari current route. It does not provide the detailed current estimates specified only by name here. R01 concerns the formal supplier, not falsity of the K3 (1,1) theorem. |
| 2.1 Ricci-flat forms/cup lattice | `huybrechts-k3` lines 4903–4928, Theorem 7.3.6, pp.131–132, and 6900–6906, Theorem 9.4.11, p.183: Ricci-flat representative and quaternionic/twistor construction; lines 525–552, Proposition 1.3.5/Remark 1.3.6, p.17: integral lattice and the metric route to simple connectivity. Smooth parameter dependence and the individual nonlinear estimates are not stated at these locators. |
| 3.1 Families/polarizations | `huybrechts-k3` lines 3942–3999, Theorem 6.2.5, Corollary 6.2.7, p.107, and §6.2.4, p.108: pointed universal deformation, dimension 20, nonzero integral class cutting a hypersurface and local line-bundle extension. The central-fibre identification and nonzero polarization are retained. |
| 4.1 Period domains/maps | `huybrechts-k3` lines 3641–3725, §6.1, pp.99–101: isotropic positive lines, oriented positive planes and connectedness/two components; lines 3960–3972, Proposition 6.2.8, p.107: local Torelli by contraction. Lines 4954–4958, §7.3.8, p.133 give the integral Hodge hyperplane condition. |
| 5.1 Cone prefix | `huybrechts-k3` lines 4933–4953, Proposition 7.3.7, p.132: Pic=0 implies Kähler cone equals the selected positive component. The proof uses a positivity theorem independent of global Torelli, as the roadmap requires. |
| 5.2 Twistor continuation | `huybrechts-torelli` lines 362–430, Convention 3.8, Proposition 3.10 and Lemma 3.11, pp.1040–09 to 1040–11: chains inside a chart ball, connected components of conic intersections and existence of a boundary-entering generic conic. The four-line local proof was read, including its ε/δ estimate. `huybrechts-k3` lines 4876–4889, Proposition 7.3.4/Lemma 7.3.5, p.131, states the same result. |
| 6.1 Global comparison | `huybrechts-k3` lines 4770–4810, Proposition 7.2.2, pp.128–129, and `huybrechts-torelli` lines 527–548, Proposition 4.7 proof, p.1040–14: inseparability, graph limits and bimeromorphism. Book lines 5003–5069, Theorem 7.4.1, Proposition 7.4.3, Corollary 7.5.1 and Theorem 7.5.3, pp.134–136: covering, Hausdorff reduction and correctly directed strong Torelli. Book §§7.5.3–5 were read for the monodromy/correction route. |
| 6.2 Root walls/polarization | `huybrechts-k3` lines 5453–5658, Chapter 8 §2, pp.146–151, and lines 6136–6178, Theorem 8.5.2, pp.163–164: cone in all real H¹,¹, rational-curve walls and their distinction from NSℝ. Lines 4232–4246, Chapter 6 Remark 3.7, p.114, and §4.1, p.116, give the polarized root-complement image. The nef wall case is distinct from ampleness. |
| 7.1 Integral model | `huybrechts-k3` lines 10894–10904, §14.0.3(vii), p.284: swap/negative involution and invariant lattice; `gritsenko-hulek` lines 83–114, §2, p.3: both eigensublattices and discriminant groups; lines 122–154, p.4: marking extension and stable-group comparison. The general graph criterion is additionally checked directly against the pinned inverse-image construction. |
| 7.2 Involutions | `artebani-sarti-taki` lines 497–508, Theorem 3.1, p.10: the two exceptional triples and the ordinary genus/component formula; `huybrechts-k3` lines 12702–12706, §15.4.3(ii), p.330: free quotient. These support the mathematical endpoints; R02 concerns the missing proof input. Nikulin's primary text remains uncertified. |
| 7.3 Free/nodal loci | `gritsenko-hulek` lines 137–188, §2, pp.4–5, Theorem 2.1/Remark 2.2: chosen component, −2 complement, orbit classification and no fine-moduli assertion. Lines 259–287, §3, pp.7–8: lifted curves, primitive even −4 vectors, divisibility and nodal converse. `dolgachev-enriques` lines 608–626, §5, pp.15–16, confirms curve splitting and nodal divisor; lines 636–666, pp.16–17, were also inspected. R04 corrects the equation locator. |

**Adversarial values: 100 rows.** These are computations and separating instances, not claims that finite tests prove the geometric theorems. They cover the sampled targets, every headline, the defining predicates/conventions, their API laws and all finding targets. “Retain” means the computed test agrees with the statement. For analytic existence/compactness statements the row is explicitly a normalization or boundary test, not independent reconstruction of the existence proof.

| Statement | Instances tried | Computed values on the two sides | Result; change |
| --- | --- | --- | --- |
| Algebraic K3 predicate | Smooth quartic over algebraically closed k; Fermat quartic in char 3 | ω=O(4−4)=O; h¹=0; partials xᵢ³ have no common projective zero | Retain; actual smooth surface passes. |
| Canonical double-sextic model | Smooth sextic branch, char≠2 | π_*O=O⊕O(−3); h¹=0+0=0; K=π*O(−3+3)=O | Retain. |
| Singular branch negative control | Six general lines | Number of crossing points C(6,2)=15; singular points 15 versus required 0 | Retain the resolution distinction. |
| K3 predicate excludes wrong surfaces | Abelian surface, empty scheme, square-zero thickening | h¹=2≠0; nonempty integral carrier absent; nonzero nilradical with ε²=0 versus reduced smooth local rings | Retain all three exclusions. |
| Surface category/isomorphism transport | Identity and composition | id*ω=ω; (g∘f)*ω=f*g*ω; identity base extension k⊗ₖk=k | Retain; forms must be transported with the isomorphism. |
| Chosen form excludes zero | σ=dx∧dy; zero form | Matrix of contraction is [[0,−1],[1,0]], det=1; zero matrix has det=0 | Retain distinction. |
| Contraction inverse | ∂x, ∂y | Images dy,−dx; inverse takes dy↦∂x, dx↦−∂y; both round trips id | Retain. |
| Rescaling a unit | c=2 in char 3 | c=−1, c⁻¹=−1; c⁻¹c=1 | Retain unit API. |
| Unqualified 2σ Check | c=2 in char 2 | c=0; contraction=0; c⁻¹c=0≠1 | Fails; R03. |
| Coherent invariants | K3 versus torus | χ=1−0+1=2 versus 1−2+1=0; c₂=12·2=24 versus 0 | Retain; R04 fixes page. |
| Differential vanishing headline | Smooth Fermat quartic in char 3 | h⁰(Ω¹)=h⁰(T)=0; both subsingleton conclusions have one element | Retain; hp is true, 2<3. |
| Characteristic binders | p=0,2,3 and a zero ring | 2<0 false; 2<2 false; 2<3 true; zero ring fails Field's 0≠1 | Retain Lean scope. |
| Vector-field-to-pencil input | Arbitrary nonelliptic K3 with NS=ℤh, h²=4 | (nh)²=4n²; no nonzero isotropic divisor; h⁰(T)=0 | Its nonzero-vector-field hypothesis is essential to the route; no claim every K3 is elliptic. |
| Elliptic alternatives | Rational and c₂=0 branches | 12≠24 and 0≠24 | Retain exclusion. |
| Wild char-3 alternatives | k=1,2 in the two formulas | 3²+3=12; 3⁴+3=84; 3¹+9=12; 3³+9=36; none 24 | Retain; 21 and 15 are not powers of 3. |
| One-singular-fibre branch | Martin D(v) | Number of singular fibres 1<2 | Correctly excluded by the separate pencil target. |
| Serre-dual vanishing | K3 with σ; Enriques twisted form after étale pullback | dim H²(T)=dim H⁰(Ω¹⊗ω)=0; a section injecting into 0 is 0 | Retain; this is a consequence, not an input to K0.A. |
| Algebraic/analytic comparison | Quartic versus nonprojective Kummer | Quartic integral h has h²=4>0; nonprojective example has 16 exceptional roots but no positive-square integral (1,1) class | Retain projective-image restriction. |
| Hodge diamond | K3 versus abelian surface | K3: b₂=1+20+1=22, e=1+22+1=24; torus: h¹⁰=2,h¹¹=4 | Retain. |
| Picard/(1,1) comparison | Picard-rank-1 K3 versus ℙ¹ | Image rank 1<22 for K3; O(1) maps to +1 for ℙ¹ | Mathematical statement correct; supplier repair R01. |
| Tensor/Chern normalization | h²=2d, L² | c₁(L²)=2h; (2h)²=8d, not 2d | Retain. |
| Positive component | Form diag(1,−1), κ=(1,0),−κ,(1,1) | Squares 1,1,0; pairings with κ 1,−1,1 | Only κ passes both tests. |
| Algebraization criterion versus ampleness | Positive h perpendicular to effective root δ | h²>0, (h,δ)=0; positive-square test passes, ample test fails | Retain distinct statements. |
| Monge–Ampère volume constant | V=ω²; replace V by 2V | c=1, cV=ω²; c′=1/2, c′(2V)=V | Retain; denominator ∫V>0. |
| Potential normalization | φ=0 versus φ+t, t≠0 | ∫φω²=0 versus t∫ω²≠0 | Retain uniqueness normalization. |
| Smooth parameter/naturality test | Constant parameter family and transported identical inputs | φ_t=0, ∂tφ_t=0; identity pullback φ=φ | Consistent test only; detailed estimate not certified here. |
| Quaternionic sign | I,J acting by left quaternion multiplication | IJ(1)=k; JI(1)=−k; IJ+JI=0 | Retain. |
| Sphere of complex structures | (a,b,c)=(1/√2,1/√2,0), and zero | Square=−(1/2+1/2)=−1; zero triple has square 0 | Retain unit-sphere condition. |
| Holomorphic two-form normalization | ωJ²=ωK²=2, orthogonal | σ²=2−2=0; (σ,σ̄)=2+2=4 | Retain. |
| Phase and positive orientation | σ↦iσ | (ωJ,ωK)↦(−ωK,ωJ); real determinant +1 | Retain. |
| Ricci-flat cover exclusion | Flat torus quotient; degree-d symplectic cover | Torus e=0 versus 24; 2=d·2 forces d=1 | Retain numerical exclusion; splitting is a substantive target. |
| Cup lattice | U³⊕E₈(−1)² | Rank 3·2+2·8=22; determinant (−1)³=−1; signature (3,19) | Retain; signed determinant differs from discriminant order 1. |
| Signature/index normalization | c₁²=0,c₂=24 | (c₁²−2c₂)/3=−16=3−19 | Retain. |
| Integral marking/pullback | Identity and inverse | id preserves every pairing; φ⁻¹φ=id on rank-22 ℤ lattice | Retain integral, not just rational, marking. |
| Pointed Kuranishi family | K3 tangent/obstruction groups | h⁰(T)=0, h¹(T)=20, h²(T)=0; expected base dimension 20 | Retain pointed universal claim. |
| Family carrier versus periods alone | Constant X×Δ→Δ | Fibre X; local monodromy id; period derivative 0; base dimension 1≠20 | Retain negative control. |
| Family pullback/cocycle | Two identity pullbacks | (id∘id)*X=X, marking id∘id=id | Retain. |
| Infinitesimal test base | ℂ[ε]/ε² versus its reduction | ε²=0, tangent H¹(T)⊗(ε) has dimension 20; reduction has 0 directions | Retain nonreduced deformation inputs. |
| Polarized slice | h²=2 and 4; h=0 | Nonzero class imposes 1 equation, 20−1=19; zero imposes 0 | Retain h≠0/ample assumptions. |
| Primitivity | h primitive of square 2; 2h | Squares 2 and 8; divisibility changes 1→2 | Retain integral moduli distinction. |
| Relative ampleness | Resolved double sextic exceptional curve | h²=2, (h,δ)=0 | Nef passes, ample fails. |
| Period predicate, degenerate ranks | Rank 0; rank 1 with form 1 | No nonzero vector; z²=0 implies z=0 | Empty in both cases. |
| Period positivity | ±I₂, z=(1,i) | B(z,z)=0 in both; B(z,z̄)=2 or −2 | Only +I₂ passes. |
| Projective rescaling | c=3+4i and c=0 | |c|²=25, new positive value 50=25·2; zero scale gives 0 and no point | Retain c≠0. |
| Bilinear versus Hermitian roles | z=(1,i) | Bilinear z·z=0; Hermitian z·z̄=2 | Retain separate pairings; no accidental Hermitian isotropy. |
| Period plane and orientation | x=(1,0), y=(0,1); conjugation | x²=y²=1, (x,y)=0; conjugation determinant −1 | Retain oriented plane. |
| Domain dimensions/components | Signatures (3,19) and (2,19) | Quadric dimensions 22−2=20 and 21−2=19; components 1 and 2 | Retain; marked-moduli components are separate. |
| Local Torelli derivative | Generator σ fixed; constant family control | Contraction tangent map rank 20=20; constant family derivative rank 0 | Retain actual universal-family condition. |
| Hodge loci | Rational δ with (δ,z)=0 or 1; fixed h on Ωh | Equation values 0,1,0 respectively | First/fixed h are Hodge; only the nonforced equation is proper. |
| Baire avoidance | Countable nonforced hyperplanes in a period ball | Each has empty interior; complement dense; forced h removes the entire ball | Retain “very general”, not Zariski open. |
| Pic=0 cone | κ²=2; 2κ;−κ;0 | Squares 2,8,2,0; pairings 2,4,−2,0 | First two lie in selected cone; last two do not. |
| Absence of curves in Pic=0 | Effective curve class C | Positive area ∫Cκ>0 forces [C]≠0; Pic=0 permits only class 0 | Retain positivity contradiction. |
| Cone selector/transport/scaling | κ′=2κ and λ=2 | (α,κ′)=2(α,κ); (2α)²=4α²; signs unchanged | Retain. |
| Twistor conic | Positive orthonormal W of rank 3 | z=a+ib: z²=0, (z,z̄)=2; conic dimension 1 versus Ω dimension 20 | Retain geometric conic. |
| Twistor restriction/marking | Fixed smooth X×S² and identity restriction | Fibre X; topological H² rank 22; restriction id | Retain; complex structures vary despite smooth product. |
| Generic W condition | W⊥∩Λ=0 versus integral δ∈W⊥ | Nonzero equation intersects a conic in at most 2 points; forced equation vanishes at every point | Retain countable exceptional set. |
| Local chain estimate | ε=1/2, δ=1/4, 0≤t≤1 | (1−t)ε+tδ=1/2−t/4≤1/2, with strict endpoint bounds | Matches source's connected-arc containment. |
| Boundary entry | Tangent normal functional ℓ and chosen conic direction v | ℓ(v)≠0 permits an inward sign with ℓ(±v)<0; tangent choice has ℓ(v)=0 | Retain existence of a suitable conic, not a claim about every conic. |
| Constant versus twistor family | Constant family and generic twistor sphere | Period image cardinality 1 versus whole ℙ¹ conic | Retain. |
| Marked moduli and sign | φ and −φ | [z]=[−z]; positive-3-space determinant (−1)³=−1 | Same period, different orientation components. |
| Inseparability/Hausdorff reduction | Doubled disk origin | Two distinct origins → one Hausdorff point; neighbourhood intersections nonempty | Retain; Hausdorffness is not imposed prematurely. |
| Graph limits | Constant identity graphs; reflected-root degeneration | Identity projection degrees (1,1), residual cycle 0; reflection changes δ to −δ | Identity test agrees; graph compactness itself remains a deep construction. |
| Period covering topology | Oriented positive 2-planes in ℝ³, deformation retract model | Compact model SO(3)/SO(2)=S²; π₁(S²)=0 | Retain simple-connectivity route and componentwise conclusion. |
| Strong Torelli | id versus −id; κ²=2 | id(κ) pairs 2 with κ; −κ pairs −2 | id lifts uniquely; −id fails the cone hypothesis. |
| Pullback direction | f:X→Y, g:Y→Z | (g∘f)*:H²(Z)→H²(X)=f*∘g* | Correct direction; source's contrary arrow is an erratum below. |
| Monodromy orientation | Root reflection; −id | Root reflection fixes a positive three-plane, orientation +1; −id has orientation −1 | Retain O⁺ convention. |
| Root reflection | δ²=−2, (x,δ)=1, x²=2 | sδ(δ)=−δ; sδ²δ=δ; (x+δ)²=2+2−2=2 | Retain plus sign; minus sign yields −2. |
| Root effectivity | Integral (1,1) δ²=−2 | χ(O(δ))=2−1=1; ±δ pair oppositely with a Kähler class | Retain; use a Kähler class in the nonprojective case rather than presupposing an ample line. |
| Nef/ample boundary | h²=2,(h,δ)=0 | Wall value 0 versus ample inequality >0 | Retain distinct outputs. |
| Rootless cone | NS has no roots | Number of root inequalities 0; cone remains the chosen positive component in real dimension 20 | Retain; not just NSℝ. |
| Polarized period image | Primitive h=e+df in U, d=1,2 | h²=2d=2,4; a perpendicular root forces pairing 0 and excludes ampleness | Retain all positive degrees. |
| Local finiteness/chamber step | Compact positive-cone region versus approaching isotropic boundary | Positive lower norm bound >0 on compact region; boundary bound 0 | No claim of local finiteness across the isotropic boundary. |
| Integral involution | (u₀,u₁,u₂,a,b) | Two applications give original vector; each swapped pair preserves B; negative block contributes (−u,−v)=(u,v) | Retain. |
| Primitive eigensublattices | Diagonal and anti-diagonal swapped U blocks | Cross pairing 1−1=0; diagonal pairing 1+1=2 | Retain U(2) and orthogonality. |
| Rational projections versus integral splitting | (e,0) in a swapped pair | (1+ι)/2 gives (e/2,e/2), nonintegral; sum of ± projections (e,0), product 0 | Retain finite-index rather than direct integral decomposition. |
| E₈ normalization | Diagonal root versus zero matrix | Square −2−2=−4; zero matrix gives 0 and radical rank 8 | Correctly excludes old stand-in. |
| Eigenspace ranks/discriminants | S=M(2), T=U⊕M(2) | Ranks 10,12; signatures (1,9),(2,10); orders 2¹⁰=1024 each; exponents 2 | Retain. |
| Gluing index/unimodularity | S⊕T inside Λ | Index 1024; absolute discriminant 1024²/1024²=1 | Retain. |
| Discriminant graph definition | γ=id on ℤ/4 | (1,1) belongs; (1,3) does not; both coordinate projections have four distinct images | Retain actual graph, not arbitrary subgroup. |
| Anti-isometry half-norm | ⟨2⟩⊕⟨−2⟩ versus ⟨2⟩⊕⟨2⟩ | 1/4−1/4=0 versus 1/4+1/4=1/2 mod ℤ | Retain; latter cannot give even gluing. |
| Overlattice carrier | (e+f)/2 in first pair | Square 0; index 2; determinant −4/2²=−1 | Retain; hcarrier fixes the integral object. |
| Extension iff, incompatible | S=⟨4⟩,T=⟨−4⟩,γ=id,g=−id,h=id | γḡ(1)=3≠1=h̄γ(1); (1,1)/4→(−1,1)/4 outside graph | Both sides false; no extension. |
| Extension iff, compatible | Same lattices, g=h=−id | Both sides send 1→3; extension −id on V×W | Both sides true; retained headline discriminates. |
| Extension uniqueness/composition | id and −id | Ambient formula fixes every (v,w); (−id)²=id; inverse of −id is −id | Retain. |
| Rank-zero/degenerate lattice cases | V=W=0; positive-rank zero form | Trivial graph, one extension; zero form has nonzero radical and fails IsNondegenerate | Retain empty/boundary behavior as README Checks only. |
| Geometric involution realization | Hodge, chamber-preserving ι with ι²=id | Surface j² acts as id; cohomological faithfulness gives j²=id; σ eigenvalue −1 | Retain dependence on strong Torelli and actual cone. |
| Holomorphic Lefschetz numbers | Non-symplectic versus symplectic involution | L(O)=1−1=0 versus 1+1=2 | Retain; not the topological Euler formula. |
| Fixed-curve input | Double-sextic deck involution | df eigenvalues 1,−1; det(1−df)=0; χ(Fix)=−18, L(O)=0 | R02; isolated-point I8 does not apply. |
| Exceptional fixed-locus classification | (10,10,0), (10,8,0) | Empty set has χ=0; two elliptic curves have 0+0=0; discriminant lengths 10≠8 | Retain exceptions; Euler number alone insufficient. |
| Ordinary fixed-curve formula | (r,a,δ)=(1,1,1) | g=(22−1−1)/2=10; k=0; 2−2g=−18=2+2r−22 | Retain formula on its domain. |
| Wrong application to empty case | (10,10,0) | Ordinary formula would give g=1,k=0, one elliptic curve, not empty | Correctly excluded from ordinary formula. |
| Free quotient invariants | Complex free involution | Degree 2; χ(OX)=2=2χ(OY), so χ(OY)=1; canonical character −1 has order 2 | Retain; in char 2 the character becomes +1, outside this argument. |
| Hyperplane invariance | δ↦−δ, z↦cz with c≠0 | Pairing a becomes −a or ca; zero set unchanged | Retain. |
| Free-period exclusion | δ=e−f in U | δ²=−2, pairings −1,1, divisibility 1 | Hδ excluded from Ω_free. |
| Nodal-period inclusion | δ=e′−f′ in U(2) | δ²=−4, pairings −2,2, divisibility 2 | Hδ∩Ω_free is nodal; R04 fixes locator. |
| Wrong square-only model | δ=e−2f in U | δ²=−4, pairings −2,1, divisibility 1 | Not a nodal-arrangement vector. |
| Curve lifting/eigenspaces | C,jC disjoint, each square −2 | (C−jC)²=−4, ι sends it to its negative; (C+jC)²=−4, eigenvalue +1 | Retain anti-invariant requirement. |
| Marking group | Centralizer action versus fixing S pointwise | Discriminant condition γḡ=h̄γ; with g=id reduces h̄=id | Retain O⁺(T) versus stable subgroup distinction. |
| Orbit classification/nodal converse | Isomorphic free pairs and their quotient | Two covers of one quotient agree up to cover isomorphism; marking changes give one orbit; nodal Euler values −4 upstairs versus −2 downstairs | Consistent with the source's isomorphism-class bijection, not a fine universal family. |
| Source norm normalization | Degree-two canonical cover, L=O | det π_*O=K_Y≠O, whereas a norm must send O to O; tensoring det π_*O⁻¹ gives O | Source error only, recorded below; roadmap does not use the erroneous definition. |

**Headlines and acceptance coverage.** The README's deep outputs are: algebraic differential/vector-field vanishing; Kählerness, Hodge diamond and algebraization/(1,1); Ricci-flat existence/uniqueness, simple connectivity and the integral cup lattice; 20-dimensional and polarized 19-dimensional pointed families; local Torelli; Pic=0 cone and twistor continuation; global period surjectivity, strong Torelli, orientation/monodromy and full cone/polarized image; integral gluing extension; geometric free-involution realization, free-period classification and nodal locus. The two native algebraic/lattice statements appear in Suggested.lean. The module docstring names all remaining geometric groups and the missing analytic sheaf/family/period/marking/cone/quotient carriers. The two simple definitions have real bodies and exist solely to state those headlines. No free Prop-valued stand-in, sorry-defined data, set_option, admitted example, other-roadmap import or conflicting fully qualified declaration was found.

**Pinned library inspection.** Mathlib is 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Tau Ceti is a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The following 16 principal sites were opened, including their defining fields or equations. Searches were by object as well as declaration name.

| Object/declaration | Pin-relative file and line | What it supplies, and what it does not |
| --- | --- | --- |
| `Scheme.Over` | `Mathlib/AlgebraicGeometry/Over.lean:36` | Chosen structure morphism/over-class; no smoothness or K3 property. |
| `SmoothOfRelativeDimension` | `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:127` | Local standard-smooth dimension condition. No nonemptiness is built in; geometric integrality excludes the empty surface here. |
| `IsProper` | `Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41` | Separated, universally closed, locally finite type; not a chosen polarization. |
| `GeometricallyIntegral` | `Mathlib/AlgebraicGeometry/Geometrically/Integral.lean:40` | Integral after every field-valued base change; not just reducedness of X. |
| `Projectivization`, `mk` | `Mathlib/LinearAlgebra/Projectivization/Basic.lean:48,60` | Nonzero vectors modulo scaling; no geometric period map. |
| `Matrix.toBilin'`, apply | `Mathlib/LinearAlgebra/Matrix/BilinearForm.lean:93,100` | Native double-sum pairing. A matrix need not be symmetric/nondegenerate. No duplicate coordinate pairing remains. |
| `Scheme.relativeDifferentials` | `TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85` | Sheafification of actual relative Kähler differentials. |
| `SheafOfModules.exteriorPower` | `TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower.lean:49` | Sheafified exterior-power functor, giving the canonical rank-two exterior power on smooth surfaces. |
| `Scheme.Modules.Cohomology`, `cohomologyZeroEquiv` | `TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:62,80` | Actual additive sheaf cohomology and H⁰/global-section comparison; no K3 vanishing theorem. |
| `IntegralLattice` | `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63` | Full finite ℤ carrier, symmetric rational form, integral pairings. Nondegeneracy is separate at line 143. |
| `IntegralLattice.Isometry` | `TauCeti/LinearAlgebra/IntegralLattice/Isometry/Basic.lean:74` | Ambient rational form isometry with equality of mapped integral carriers. |
| `discriminantGroupEquiv` | `TauCeti/LinearAlgebra/IntegralLattice/Discriminant/Group.lean:165` | Induced action on dual/carrier quotient, not an arbitrary automorphism. |
| `discriminantGroupOrthogonalSumEquiv` | `TauCeti/LinearAlgebra/IntegralLattice/Discriminant/Operations.lean:139` | Discriminant of sum to product, in the direction used by graph comap. |
| `discriminantQuadraticMap` | `TauCeti/LinearAlgebra/IntegralLattice/Discriminant/Quadratic.lean:122` | B(x,x)/2 mod ℤ; evenness explicit. Finiteness additionally uses nondegeneracy. |
| `intermediateCarrierOfDiscriminantSubgroup`, `ofIsotropicSubgroup` | `TauCeti/LinearAlgebra/IntegralLattice/Overlattice/Basic.lean:127`; `Overlattice/Isotropic.lean:379` | Actual inverse-image carrier and even overlattice construction; no need to build another one. |
| `Isometry.discriminantSubgroup_intermediateCarrierEquiv` | `TauCeti/LinearAlgebra/IntegralLattice/Overlattice/Naturality.lean:190` | Transport commutes with the subgroup correspondence. Lines 237 and 408 give inverse-image transport and induced lattice isometry. These support, but do not literally state, the retained pair-extension iff. |

**Supplier and ownership audit.** Read all supplier rows and Needs lines; used `roadmaps grep`, `roadmaps show` and `roadmaps resolve`, then opened main or the supplied new-roadmap heads. Main is fa41b3747f56d4e77bd69e7099c1be4f2e4959ba. Existing-roadmap revision heads were inspected as comparison data, not substituted for main. The board package index was searched; it lists no competing K3/complex-geometric package among the indexed packages. Supplied sibling files were searched for the four Lean names; the only exact matches were this same roadmap. Open-work ownership was checked where files or the supplied roadmap tools provided the heads; no unavailable open work was invented.

| Supplier or competing object | Resolution and ownership decision |
| --- | --- |
| SchemeAndStackFoundations | Main §§0.3 (line 551), 1.17 (2624), 1.23 (3021), 2.6 (3437), 2.20 (4275), 4.9 (5448), 4.11 (5528), 5.9 (7129), 5.10 (7175) resolve. §5.10 explicitly supplies algebraic Noether's formula with deg c₂. §4.13 is only the normalization comparison mentioned in the warning; the new surface-resolution adapter is owned in §0.2. |
| AlgebraicModuliForArithmeticGeometry | New-roadmap head §§1.1–1.3 (lines 305,504,601), 7.3 (9311), 7.8 (9782), 8.1–8.3 (9882,9911,9958) resolve. §7.8 requires its formal-effectivity/algebraicity hypotheses; the repaired K3 text now retains them and uses analytic Kuranishi construction separately. |
| AlgebraicCurves | Main Layers 9 (1099), 10 (1193), 12 (1468): differentials/residues, genus-one equations and function-field/curve dictionary. The imperfect-field regular-versus-smooth distinction is explicit; the K3 pencil's smooth generic fibre is work here. |
| JacobianChallenge | Main A–D (111,135,143,218): line bundles, cohomology/duality, base change, relative Picard/Jacobian. These do not assert every K3 is elliptic. |
| StableReduction | Main Layers 4–6 (529,552,576): normalized-blowup resolution of normal curve models over DVRs with smooth generic fibre, minimal models and numerical fibre data. The roadmap explicitly owns the global pencil/gluing adapter, not a characteristic-zero resolution shortcut. |
| ComplexComparisonPartII | New-roadmap head C−1.1–C0.7 (723–1181), C1.9 (1672), C2.1–C2.2 (1719,1744), C4.1–C4.4 (2154–2217), C5.4 (3014) resolve: actual analytification/GAGA, proper images and currents. C5.4's exponential/Chern output is a useful existing owner for R01. |
| ComplexKahlerGeometry | Main K1–K4, K5 and K6.0–K6.1/K7 resolve; manifold hypotheses are finite-dimensional Hausdorff second-countable. K4.P does not resolve on main: R01. K5/6 supply linear elliptic/Hodge theory, not nonlinear Calabi–Yau or K3 global Torelli. |
| IndexTheory | Supplied new head I6 (actual line 669), I7 (723) and I8 (888) resolve. I7.3's HRR has no Kähler assumption, so the K3 numerical specialization does not circularly assume Kählerness. I8's fixed-point restrictions are the issue in R02. |
| CharacteristicClasses | Main C1–C7 (211,550,720,1037,1060,1447,1532): underlying line class, Chern–Weil comparison and Todd/signature coefficients. Td degree four is (c₁²+c₂)/12, agreeing with 24/12=2. |
| SmoothBundlesConnections | Main B1.5 (498–536) supplies proper-surjective-submersion trivialization componentwise. K3 uses it only on Hausdorff local charts and retains actual projection-preserving charts. |
| DifferentialGeometry and AlgebraicTopology | Main DG Layers 0–2,5,8–9 and AT Stages 1,5,6 resolve for forms, integration/comparison, fundamental group and integral cup/duality. They do not supply a K3, its period map, or the fixed-curve identity silently missing in R02. |
| IntegralLattices | Main 0G,1B–1F,5E–5J,6A resolve. 1E/F (lines 627–644) own overlattice correspondences; 5J (1598–1628) owns indefinite 2-elementary classification and O(S)→O(qS) surjectivity; 6A (1643) owns indefinite unimodular classification. K3 retains the specified pair-action extension comparison, not another overlattice carrier. Half-norm conventions agree. |
| FourManifolds | Supplied head F7/§§7.1–7.2 gives quartic index and elliptic/quartic comparisons. Its basic marked quartic input is now attributed there to TangentialBordism B1.7. K3 can consume the resulting example, but FourManifolds should not be read as proving the theorem for every K3. |
| EnriquesSurfaces | Supplied head §6.2, lines 634–636, owns primitive pullback and automorphism lift/descent. Its U1–U4 consume K3 and preserve ample-cone and discriminant conditions. No reverse supplier edge remains. |
| K3SurfacesAndSymplecticBoundedness | Supplied head introduction and §1.3 explicitly extend these foundations to arbitrary fields/characteristic two and arithmetic boundedness. It does not re-own the base periods/Torelli programme. Its shared exponential contract exposes the issue R01 but is not used as a later supplier. |
| Other object searches | Generic ASD/Kuranishi reductions in FourManifolds and stable-map/Floer roadmaps concern different deformation objects. Negative Kähler–Einstein geometry in ShimuraVarieties has Ric=−ω and ample canonical bundle, unlike this c₁=0 problem. No second owner of the retained K3 deformation or native pair-gluing theorem was established. |

No copied source passage, computational algorithm programme, route-specific good-prime shortcut, re-plan of a main K3 roadmap, or additional whole-roadmap cycle was found. The characteristic-p>2 lane is the base of an explicitly named Part II covering characteristic two, not an unexplained loss of scope. Definitions have local API and discriminating examples; the specific failed example is R03. The missing contracts are not treated as supplied merely because a citation resolver found their names somewhere.

## Not verifiable

- **Nikulin primary fixed-locus theorem:** *Factor groups of groups of automorphisms of hyperbolic forms with respect to subgroups generated by 2-reflections. Algebrogeometric applications*, Theorem 4.2.2, DOI 10.1007/BF01094757. The sources service resolved only a paywalled publisher; status uncertified. The fixed-locus statement itself was read in Artebani–Sarti–Taki v2, Theorem 3.1. No new missing-text request is made.
- **Rudakov–Shafarevich primary pencil implication:** *Surfaces of type K3 over fields of finite characteristic*, p.1502. The service likewise returned uncertified. Martin's proof explicitly quotes the implication, which was read; the primary construction was not read. No new missing-text request is made.
- **Analytic proof details:** The cited Huybrechts passages state Ricci-flat existence, the Kählerness route and graph-limit/Torelli results. They do not state all C⁰/C²/higher estimates, smooth parameter bounds, current regularization constants or bounded graph-volume compactness hypotheses requested in the prose. The normalization and boundary computations above do not certify those complete analytic constructions. These remain work specified by the roadmap, rather than verified lemmas in the pin.
- **Full wild quotient-to-pencil reconstruction:** Martin's corrected alternatives and corollary were verified, including the c₂ values. A proof of the entire proposed height-one quotient/resolution/pencil construction was not independently reconstructed from the inaccessible primary text. It is explicitly a target, not an imported theorem without an owner.

All nine bibliography entries were attempted in one source pass. Seven were legally readable and the two primary locators are settled as uncertified; no unresolved source-fetch request remains. No finding depends on guessing an inaccessible text.

## Source issues

- **Misprint** in huybrechts-torelli at §1, printed p.1040–02, lines 43–46: the source says a Hodge map H²(S)→H²(S′) is a signed pullback for an isomorphism S→S′; it should be an isomorphism S′→S or the inverse pullback; affects a stated result.
- **Misprint** in gritsenko-hulek at §2, printed p.4, lines 127–129: the source says the marking sends all H²(X,ℤ) onto the invariant lattice M and the involution acts trivially there; it should be the pullback of the quotient's torsion-free H²; affects a stated result.
- **Misprint** in dolgachev-enriques at §5, printed p.16, lines 638–639: the source says the canonical-cover involution has fixed points; it should be fixed-point-free; affects nothing.
- **Misprint** in dolgachev-enriques at §5, printed p.16, lines 640–642: the source says the eigensublattice orthogonal complement lies in Pic(S); it should be in Pic(X); affects nothing.
- **Misprint** in dolgachev-enriques at §5, printed p.16, lines 649–654: the source says Br(X) has order two when the quotient's canonical class is nonzero; it should be Br(S); affects the proof.
- **Error** in dolgachev-enriques at §5, footnote 3, printed p.16, lines 658–659: the source says the norm of L is det(π_*L); it should be det(π_*L) tensor det(π_*O_X) inverse, so the unit has norm the unit; affects the proof.
