# Review of GeometricQuantization (pull request #1186 at ae3f04d)

**Verdict:** needs changes

## R01 (P1) — The compact rank-one supplier contract uses an ineligible revision

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:527` and 582: “using LieGroups Layer 6's rank-one subgroups”. See also the supplier claim at lines 175–179 and the period-quotient prefix at 1123–1125.

**Claim:** The actual compact root/rank-one maps needed to construct the root spheres are supplied by LieGroups on main. They are not. This roadmap declares no gap for them.

**Witness:** Main's `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:383`–405 lists tori, conjugacy, Weyl groups and Weyl integration. The compact real root and normalized SU(2) maps occur in the supplied revision at lines 762–763 instead.

The main revision checked is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`; its LieGroups file has blob `64108616078884cd5ac2b1353063a0897cb466c8`. It contains neither the cited compact-real construction nor its derivative calibration. The revision also has the detailed period-quotient prefix that §6.6 attributes to Layer 7. A revision of an existing roadmap is not an eligible dependency under this review's contract. Naming its broad layer does not supply the missing maps.

**Repair:** Consume the actual main contracts and explicitly own the missing normalized compact-rank-one adapter here, or assign it to an eligible earlier Part II supplier with a precise declared gap. Cite main's existing complexification theorem for the torus, or separately own the desired period-quotient adapter; do not attribute the revision's prefix to main. Test the adapter on SU(2)→SO(3): `diag(i,−i)` must map to twice the period-2π rotation generator, giving ordinary degree 1 at radius 1/2 and central phase −1. An uncalibrated abstract root-system identification cannot certify those values.

## R02 (P2) — The new flag construction duplicates an existing owner

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:528`–545: “Compare their quotient tangent maps with HamiltonianReduction R2a's oriented two-handles” and “Identify it with the complex homogeneous flag”.

**Claim:** Layer 3 newly owns the compact partial-flag/KKS complex comparison and the comparison of root-oriented Morse handles with integral flag classes.

**Witness:** Main's `TauCetiRoadmap/SchubertGeometry/README.md:123`–127, S9.7, already constructs those partial-flag, Kähler, root-coordinate and characteristic-map comparisons on the same K/H, including nonintegral coadjoint parameters.

This is not just the ordinary holomorphic Picard isomorphism, which is a new application here. The preceding geometric and handle comparisons have an existing owner. There is also direct overlap with the supplied SchubertGeometry revision's S3P.1–2 (`README.md:233`, 252): it constructs the same degree basis, harmonic vanishing argument and Picard comparison. That revision is evidence of competing ownership, not a permissible replacement supplier.

**Repair:** Import main's S9.7 geometric/characteristic-map comparisons by name and retain only the genuinely additional prequantum period and ordinary Picard application. Resolve ownership of the S3P.1–2 extension explicitly: one owner constructs it and any later Part II consumer imports it. Do not create a return edge by consuming a revision which itself consumes Q2A.1. On ℂP¹ the shared characteristic-map degree remains +1; on SU(3)/T the root/fundamental-line degree matrix remains the 2×2 identity. Neither calculation needs a second flag/handle construction.

## R03 (P2) — State the integral level hypothesis for the torus line

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:864`–875: “ω=2πℏk dq∧dp, k>0” followed by the automorphy construction and “a k-element basis”.

**Claim:** Positivity of k suffices for the displayed automorphy factors to define the degree-k line and its quantization.

**Witness:** Set k=1/2, τ=i and α=β=0. The two orders of lattice translation differ by exp(−2πik)=−1, whereas a lattice cocycle requires 1. The roadmap itself computes this at lines 895–896.

**Repair:** Quantify over a positive integer `k ∈ ℤ`, or `k : ℕ` with `0 < k`, before defining the factors. Keep the nonintegral case as a negative control. This excludes k=1/2 while retaining k=1 and k=2, whose cocycle factors are both 1 and whose dimensions are respectively 1 and 2. Integrality should be a hypothesis, not inferred from a later Check or the phrase “k-element”.

## R04 (P2) — Give the equivariant Riemann–Roch bridge an actual statement

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:974`–979: “Q5 must supply the compact-torus equivariant character/Riemann–Roch formula and coefficient extraction”; §6.4 then cites “§6.8's equivariant index formula” at line 1068.

**Claim:** The specified route to the global distribution theorem has a stated equivariant character formula, including positive-dimensional fixed components. Section 6.8 instead states a numerical index/inertia formula for the reduced orbifold. Neither its statement nor the ordinary I6/I7.3 index is the promised character formula on M.

**Witness:** For the doubled-circle action on ℂP¹ and O(1), the character is `1+exp(−2it)`: at t=0 it is 2 and at t=π/2 it is 0. An ordinary index supplies only 2.

IndexTheory I8.3 (`TauCetiRoadmap/IndexTheory/README.md:892`–894 at its supplied new-roadmap head) has isolated nondegenerate fixed points; it cannot supply the whole-manifold fixed component at the identity. Vergne's route explicitly uses the near-identity equivariant formula (vergne lines 159–179), not just reduced Euler numbers.

**Repair:** Add a separately identified target, before its use, stating the character formula with its group parameter, fixed components, numerator, moving-normal denominator and angular Chern normalization, plus the near-identity equivariant-form expansion used in §6.4. State the Haar/Fourier coefficient extraction and its inputs, and point §6.4 to that target. Meinrenken v2 equations (3)–(5), p. 2 (meinrenken lines 46–67), and Vergne v1 §3, p. 4 supply readable formulas to calibrate. Recover the two character values 2 and 0 above and the positive-dimensional identity contribution; do not restrict the theorem to isolated fixed points.

## R05 (P3) — Delete the unchanged character-wrapper companion

**Location:** `TauCetiRoadmap/GeometricQuantization/HomogeneousCharacterTargets.lean:1`–91, especially lines 20, 27, 34, 47, 62 and 72.

**Claim:** The companion still supplies six generic wrappers and eight elementary theorems, with four Mathlib submodule imports. They are neither headline acceptance theorems nor definitions needed by one. Several theorem docstrings and all fourteen README name correspondences are absent.

**Witness:** Seven theorem bodies are `rfl` or `Iff.rfl`. The remaining theorem is kernel-membership extensionality. Native `ContinuousMonoidHom.comp`, `MonoidHom.ker`, `QuotientGroup.lift` and `continuous_quot_lift` already implement these operations.

**Repair:** Delete the companion file; do not move its declarations into `Suggested.lean` or prove extra API in place. Keep the mathematical tests in the README and its native supplier citations. If any genuine headline file survives, it must use the single `import Mathlib` and the required target-signature docstring. For S₃'s sign character the native kernel is still A₃ of order 3 and quotient descent sends the nonidentity C₂ coset to −1. The main acceptance file has already removed its corresponding padding.

## R06 (P3) — Several sampled targets still lack exact source locators

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:199`, 253, 297, 668, 835, 862 and 917; the broad bibliography descriptions are at 1602–1609.

**Claim:** The new locators repair the homogeneous, Picard and several index targets, but not the exact-line, lift/operator, polarization, projective/torus or geometric-character targets. A book title with a topic is not a theorem/section-and-page locator for the new claims.

**Witness:** Section 2.2 states complete-flow essential self-adjointness and half-line deficiency indices, but gives no source theorem/page. Its Needs line names the operator floor, not the geometric core theorem that this section owns.

**Repair:** Attach precise locators to the individual new claims, separating a source theorem from a deduction from exact supplier targets. Include the complete-field integration theorem in §2.3 and the orbifold Hodge/vanishing inputs in §6.8. Unread books may have explicitly uncertified locators; do not invent pages. Retain the computed half-line control: `exp(q/ℏ)` has infinite L² norm, `exp(−q/ℏ)` has squared norm ℏ/2, yielding indices (0,1), and (0,∞) on the prequantum product space.

## R07 (P3) — The source manifest is still absent

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:1593`–1627, References; there is no `TauCetiRoadmap/GeometricQuantization/sources.toml`.

**Claim:** None of the twelve cited works has the required persistent edition, locator, retrieval and legal-status record.

**Witness:** The folder contains exactly README.md, Suggested.lean, HomogeneousCharacterTargets.lean and metadata.toml. The source-service audit retrieved seven works, returned two uncertified, and failed to retrieve three.

**Repair:** Add one `tauceti-roadmap-sources/v1` entry per work using the source keys below, retaining one key across versions. Record exact versions, locators, service provenance and uncertified status. Do not copy source text into the folder. This does not change the exponent check: for (0,1,−2), degree two has six distinct exponent weights, and degree three has multiplicity two at zero. The unread Knutson pages do not certify a different count.

## Verified sound

:robot: Independent AI review. I read all 1,627 README lines, all 53 Suggested.lean lines and all 91 companion lines at the requested head. I first compared the ten previous findings, then reviewed all passages, including unchanged ones. I read the normative root README and CONTRIBUTING and main's SymplecticGeometry, SmoothBundlesConnections and SchubertGeometry for shape and ownership. The worktree was unchanged; the outside-folder diff was empty. The roadmap's overall geometric-quantization scope is repairable. No copied source passage, computational-algorithm target, sorry-bodied data, `set_option`, or foreign file was found. Numerical tests below are witnesses, not proofs of the proposed general theorems.

**Previous findings, assessed individually before the full pass.** There was no supplied repair report marking a finding “not actionable in this package”; no such settlement was overridden.

| Previous finding | Passage at this head | Assessment |
|---|---|---|
| R01, missing ordinary Picard supplier | README:14–18, “Layer 3 owns the integral root-curve and ordinary holomorphic Picard comparisons”; 152–155 names C5.4 | Partly repaired: the ineligible K4.P/S3P supplier claims are gone and C5.4 resolves. The replacement has the concrete supplier and ownership defects R01–R02 above. |
| R02, substitute acceptance theorems | Suggested.lean:8–9, “not statable at these pins with only simple definitions on existing carriers” | Repaired in Suggested.lean: no substitute is asserted. The companion remains illustrative generic API, covered by R05. |
| R03, padding/wrappers | Companion:20–21, `restrictCharacter ... := χ.comp i` | Partly repaired: the main file's coordinate padding is gone; all six companion wrappers and eight elementary results remain. |
| R04, missing locators | README:472–474 cites Graham–Vogan Definition 6.4 p.37; 983–986 cites Demailly | Partly repaired: these and the Vergne/Meinrenken/Sjamaar locators resolve. R06 lists the remaining sampled omissions. |
| R05, missing manifest | README:1593 “References”, followed by twelve entries | Not repaired: no sources.toml. R07. |
| R06, shape/API/Checks | README:76 “Exact supplier contracts”; 197 “Layer 1”; 229 “Checks” | Substantially repaired: the README has the required headings, layer Examples/Dependencies, prose APIs and explicit controls. Companion docstrings/name correspondence remain defective under R05. |
| R07, import form | Suggested.lean:1 `import Mathlib`; companion:1 `import Mathlib.Topology.Algebra.PontryaginDual` | Partly repaired: only Suggested.lean was corrected. R05 covers deletion of the unchanged companion. |
| R08, pinned roadmap URLs | README:127 uses `../SymplecticGeometry/ConvexityToric/README.md` | Repaired: all three cited historical blob links are replaced; supplier eligibility was checked separately. |
| R09, TeX outside code spans | README:1402 and 1421 put the joint lattice and estimate in code spans | Repaired: the gate reports latex=0 and tex=0; the mathematical values are checked below. |
| R10, residue/proposal narrative | README:1626–1627 gives the Knutson bibliographic locator without the old discrepancy narrative | Repaired: the prohibited anchor/proposal references are gone; prnum=0 and residue=0. Source uncertainty belongs in this report. |

**Gate and dependency result.** The supplied gate at exactly `ae3f04d` reports every rule zero and `OK`, including build, depcheck, outside-folder and stray-files. I independently ran the prescribed dependency command against the candidate order and main content. Its complete output was:

```text
depcheck: 204 roadmaps, 1444 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. All 25 target Needs paragraphs and the supplier paragraphs were read. The mechanically clean package graph does not detect the ineligible finer LieGroups contract, competing ownership, or the missing exact equivariant formula. The passing gate checks Suggested.lean's import form; it did not catch the companion's four submodule imports.

**Lean and headline audit.** Direct `lake env lean` elaboration of Suggested.lean passed with no warnings. A scratch copy of the companion, followed by `#check @name` for all fourteen declarations, also elaborated without warnings. All fourteen signatures were compared with bodies and README scope: unused H variables disappear as expected; quotient results keep normality and kernel inclusion. These continuous-map signatures assert no Lie group, stabilizer or flag. No signature changed. There are zero sorried theorems in either file, so the required admitted-theorem one-tactic probe has zero candidates. Reading the actual proofs establishes seven reflexivity results and one elementary extensionality result, rather than pretending a `sorry` build tested them.

The README headlines are: intrinsic lift/commutator; complete-flow unitary realization and essential self-adjointness; lifted actions and their central extensions; homogeneous character/descent and fixed-moment criterion; root-period/Picard/global-form comparison; polarized observable action; half-density cotangent realization; projective and theta/Bohr–Sommerfeld quantizations; positive-line/index bridge; complexified action/semistability; global restriction/descent and Kostant bound; equivariant distribution limit; orbifold reduction/index; chamber quasi-polynomials/uniform estimate; ineffective-action transport. Layer 1's integral existence and flat torsor are imported SBC theorems. Suggested.lean's docstring names the substantive missing principal/associated, Hermitian L², homogeneous, flag/Picard, polarized/half-density, holomorphic-section and reduced-index carriers. Native two-forms, connections, projectivizations and theta functions alone are not those constructions. I found no demonstrated simple native signature for a full geometric headline omitted from the empty acceptance file; this is not a claim that its main results have been formally stated. The separate complete-field/central-extension subprogramme is covered mathematically in the table below, while its source locator is still missing.

**Seeded source sample: all fifteen targets.** Seven texts were retrieved through the sources service; Graham–Vogan required OCR. I read the numbered passages rather than relying on the previous review. Page numbers below are printed manuscript/preprint pages unless expressly physical. None of the README's bibliographic references is labelled unverified at this head, but the previously unresolved Knutson locator was checked again. No source manifest was edited.

| Sampled target | Locator, text inspected and conclusion |
|---|---|
| 1.1 Symplectic specialization/exact line | SBC B6.3/B6.5 resolve; the curvature/holonomy deductions compute correctly below. No exact external locator for the new exact-line dictionary is supplied. Kostant is uncertified; R06. |
| 2.1 Intrinsic lifts/sign | Cartan computation gives the two vertical brackets +1 and −3 below. No exact source theorem/page is supplied; the broad Kostant reference is unread. R06. |
| 2.2 Complete-flow operators | The Stone/core floor resolves, and the constants/deficiency calculations are correct. No readable cited locator for the geometric core theorem: R06, not a certification of a source proof. |
| 3.2 Coadjoint characters/periods | graham-vogan lines 1623–1635, Definition 6.4 p.37, has the full stabilizer representation differential condition. Taking its one-dimensional case and additive character exp(it/ℏ) gives the stated character condition. The connection equivalence is explicitly a new Maurer–Cartan deduction. It is not the different metaplectic admissibility condition of Definition 6.2. |
| 3.4 Global forms/boundaries | graham-vogan lines 1083–1087, Example 5.8 p.25, gives the associated quotient (for unitary representations); demailly lines 15564–15572, VI (9.1) p.314, gives the Picard exact segment. The finite-kernel/lattice result is correctly labelled a deduction, not a theorem printed at either locator. Its supplier/ownership problem is R01–R02. |
| 4.1 Polarizations/leafwise equations | The local real and ∂̄ examples compute correctly. Woodhouse was not retrieved, and no target-specific page/section is supplied. R06. Demailly V.11.3/V.12.1 supports the holomorphic Chern dictionary (demailly lines 13179–13223), but is not cited here as the real-polarization source. |
| 5.2 Kähler projective examples | K7.2 on main supplies the polynomial dictionary and binomial dimension; its stated integral O(k) range is preserved in the application. No external exact locator accompanies this subsection; the geometric L²/action comparison is a new target. |
| 5.3 Torus polarizations | Automorphy, metric, curvature and loop equations were recomputed. The construction requires integral k (R03). Śniatycki is uncertified; Woodhouse is unread; no exact theta/Bohr–Sommerfeld source locator is given. |
| 6.1 Character/moment map | Sjamaar v1 §2.2 p.24, sjamaar lines 1240–1260, supports the negative covariant derivative plus fibre weight and invariant-section comparison. Converting 2πΦ to μ gives the roadmap sign. The subsection itself lacks that locator (R06). |
| 6.2 Positive-line/index bridge | demailly lines 17559–17642: VII Theorem 13.1 pp.358–359, Corollary 13.3 and Theorem 14.1 p.359. Positive compact complex line, jets and very-ampleness agree. The source proof uses blow-up/vanishing; the README proposes its own peak-section route. Equivariance and the finite-residue argument are expressly deductions. Its general equivariant index bridge remains underspecified (R04). |
| 6.6 Global action/semistability | sjamaar lines 943–1012, Proposition 2.2 p.19; 1151–1160, Theorem 2.8 p.22; 1255–1286, Proposition 2.11 pp.24–25. The source assumes the complexified action and admissibility; compactness supplies admissibility here, and the README separately constructs the action. Finite isotropy, regularity and invariant sections are retained. |
| 6.7 Kostant bound/extension | sjamaar lines 1439–1478, Theorem 2.15 pp.27–28. Proper moment map, increasing squared norm and bounded holomorphic extension agree. The angular conversion yields 4n, verified below. The empty-level case is handled independently, correctly. |
| 6.8 Orbifold index/inertia | meinrenken lines 157–199, Theorem 2.1 p.5, and lines 205–208 p.6, support full sector phases and the reduced orbifold Euler number. Lines 174–175 have inverse normal action. These do not state the generic chartwise orbifold Hodge/vanishing development; those remain owned targets requiring their own exact source locators. |
| 6.9 Joint quasi-polynomials/uniformity | meinrenken lines 209–242, equations (17)–(21) pp.6–7, gives polynomial chamber coefficients, finite phases and ray quasi-polynomials. The README correctly labels joint-parameter uniformity a deduction; it is not verbatim Theorem 2.1. Finite residue classes and compact parameter bounds are retained. |
| 6.11 Exponent counts | Knutson's physical pp.106/119 could not be located legally. Independent exhaustive small-degree counts and both densities agree with the README. No claim about those unread pages is certified. |

Additional source checks: graham-vogan lines 1028–1082 (Definition 5.5 and (5.7), pp.23–25) supports half-densities and their intrinsic Hilbert completion; demailly lines 13142–13167 (V §11 p.267) supports ordinary holomorphic line classes; vergne lines 159–213 (§3, Theorem 3.2 p.5) supports the global index-distribution expansion and its normalized leading measure. Cannas and Meinrenken–Sjamaar were retrieved for background; no unread book theorem was certified by substituting either background text.

**Computed adversarial pass: 97 roadmap rows plus 14 companion rows.** Rows give both computed values or a positive/negative control. “Retain” records no defect in that test, not certification of an unread source. All scalars are real/complex as declared, so characteristic-p, zero-ring and inseparable-field substitutions are outside these signatures. Empty manifolds, rank-zero tori, finite ineffective isotropy, noncompact examples and nonabelian groups are tested explicitly. Unless a row says otherwise, ℏ=1 in coordinate calculations. A symbol such as k is not silently assumed integral: that distinction produces R03.

| Statement/convention | Instances tried and computed values on both sides | Result; change |
|---|---|---|
| Conventions: curvature and Chern sign | θ=p dq gives dθ(∂q,∂p)=−1; da(∂q,∂p)=+1; associated F(∂q,∂p)=−i; iF/(2π)=ω/(2π). | Agree; retain. |
| Conventions: Hamiltonian sign | X_q=−∂p, X_p=∂q; dq(X_p)=1=ω(X_q,X_p). For f=q²/2,g=p, [X_f,X_g]=∂p=−X_q. | Agree, including nonconstant bracket; retain. |
| Conventions: quantum commutator | On the polarized function q, Q_qQ_p(q)=iq, Q_pQ_q(q)=2iq; difference −iq=−iQ_1(q). | Agree; opposite sign fails. |
| Conventions: antiunitary dictionary | Complex conjugation sends i∂q to −i∂q and multiplication by q to itself; the dual commutator on q is +iq. | Agree; retain. |
| Conventions: zero dimensional object | On a point, ω=0, X_c=0, Q_c=c; for c=0 both lift and operator are 0. Divisions require ℏ>0, excluding ℏ=0. | Agree; retain. |
| 1.1 Integral existence | Sphere area 2πℏ gives period 1 and degree 1; area πℏ gives period 1/2 and no prequantum line. A point has period 0 and trivial line. | Both directions discriminated; retain. |
| 1.1 Exact line | Plane θ=p dq gives ∇=d+iθ/ℏ, hence F=−iω/ℏ. Reversing the connection sign gives +iω/ℏ and fails. | Agree; locator R06. |
| 1.1 Holonomy dictionary | Boundary of positively oriented rectangle of area A: ∮θ=−A, line holonomy exp(+iA/ℏ), principal holonomy exp(−iA/ℏ); for A=πℏ both are −1. | Agree, inverse directions explicit; retain. |
| 1.1 Tensor/dual/power API | Degrees 1 and 2 tensor to 3; dual of degree 1 has degree −1; its second power has degree 2, matching curvature sums. | Agree; retain. |
| 1.1 Flat twists and exact-potential change | A closed added form with loop period ℏ/2 changes line holonomy by exp(−i/2), not 1; period 2πℏ changes it by 1. Same curvature, different first holonomy. | Flat torsor is needed; retain. |
| 2.1 Connection-preserving lift | With a=dt−p dq, Y_q=∂p+q∂t and Y_p=−∂q; [Y_q,Y_p]=∂t=Y_1 and L_Ya=0. | Agree; retain. |
| 2.1 Rejected alternate lift | Using +X^hor+(f/ℏ)V instead gives F_q=−∂p+q∂t, F_p=∂q+2p∂t; bracket −3∂t, versus F_1=∂t. Also L_Fq a=2dq. | The roadmap's negative control is correct. |
| 2.1 Uniqueness/constant ambiguity | On one connected component, two lifts with same projected field differ by cV. On two points, differences (1,2)V cannot equal one constant times V. | Connectedness matters; retained where used. |
| 2.1 Hamiltonian versus symplectic | On the unit torus, ι_∂q(dq∧dp)=dp has loop period 1; a global df has period 0. | Symplectic alone does not give the lift of a function; retain. |
| 2.2 Operator and Leibniz rule | Q_p(qs)=i(s+q s′), while qQ_p(s)+i(∂q q)s=i q s′+is. Q_c(s)=cs. | Agree; retain. |
| 2.2 Unitary complete flow | For p, U_tφ(q)=φ(q−t), norm squared ∫|φ(q−t)|²dq=∫|φ|²dq and derivative −φ′=(iQ_p)φ. For c, U_t=e^{itc}. | Generator sign and constants agree; retain. |
| 2.2 Common compact support domain | Translation sends support K to K+t, still compact; differentiating a compactly supported smooth φ remains in that domain. Constant 1 on ℝ has infinite L² norm. | No everywhere-defined L² assertion; retain. |
| 2.2 Incomplete-flow control | iℏ∂q on (0,∞): deficiency solutions exp(q/ℏ), exp(−q/ℏ) have squared integrals ∞, ℏ/2. Indices are (0,1); tensoring the free p-variable gives (0,∞). | Completeness cannot be dropped; locator R06. |
| 2.3 Moment cocycle/central extension | Plane translation moment functions q,p have bracket 1 although the translation Lie algebra bracket is 0; lifted fundamental fields have central bracket −V/ℏ. | Nontrivial Heisenberg extension required; retain. |
| 2.3 Descent of integrated lift | SU(2)'s central −1 acts on degree k by (−1)^k: k=1 gives −1 and fails SO(3) descent, k=2 gives 1 and descends. | Kernel test excludes wrong global form; retain. |
| 2.3 Constant gauges | Over a connected point base the connection-preserving vertical group is U(1); over two points it is U(1)². | The connected-base central-extension contract is necessary. |
| 3.1 Associated quotient convention | For stabilizer character λ(h)=−1, [h,1]=[e,−1]; using λ inverse is indistinguishable here, so use λ(h)=i: [h,1]=[e,i], not [e,−i]. | Source quotient orientation matches; retain. |
| 3.1 Tensor and unit characters | λ=i, ν=−1 at h give λν=−i; associated tensor scalar i·(−1)=−i. Unit gives 1; dual gives −i. | Agree; retain. |
| 3.1 Full stabilizer versus differential | H=μ₂: trivial and sign characters both have differential 0, but values at −1 are 1 and −1. | Full character required; retain. |
| 3.1 Nonabelian quotient descent | S₃ sign has kernel A₃ of order 3; the quotient has order 2 and its nonidentity maps to −1. Trivial character has kernel of order 6. | Both directions and nonabelian case pass. |
| 3.1 Compact holomorphic gauge | On compact connected ℂP¹, an invertible holomorphic gauge is constant; on ℂ, exp(z) has values 1 and e at 0 and 1. | Compactness distinguishes the asserted classification; retain. |
| 3.2 Maurer–Cartan connection | d⟨μ,θ_L⟩(X,Y)=−μ([X,Y]); a=dt−⟨μ,θ_L⟩/ℏ therefore has da(X,Y)=+μ([X,Y])/ℏ. | KKS and principal signs agree. |
| 3.2 Fixed-moment criterion on a point | For the period-2π circle, μ/ℏ=0,1 give characters 1,e^{it}; μ/ℏ=1/2 gives value −1 at t=2π, failing descent. Ordinary curvature is 0 in all three cases. | Ordinary existence is weaker; retain. |
| 3.2 Rank-one period calibration | SU(2) coroot period gives degree 1; under SU(2)→SO(3), derivative doubles the period-2π generator. SO(3) weight 1/2 is not integral. | Mathematics agrees; missing eligible adapter R01. |
| 3.2 Central character twist | On a point, tensoring a weight-0 line by weight 1 changes μ from 0 to ℏ while curvature stays 0. | Moment data are not determined by curvature; retain. |
| 3.2 Ordinary versus equivariant integrality | For U(2), eigenvalues (1/2,−1/2) give root difference 1, but the two torus coordinates are nonintegral. | Integral sphere line need not have this fixed U(2) lift; retain. |
| 3.3 Integral degree basis | ℂP¹ fundamental line has degree +1; SU(3)/T fundamental lines against simple root spheres give matrix ((1,0),(0,1)); partial flag ℂP² has matrix (1). | Values agree; use existing geometric comparison R02. |
| 3.3 Flag cohomology/vanishing | A point has H²=0 and H^q(O)=0 for q>0. ℂP¹ has H²(ℤ)=ℤ and H¹(O)=H²(O)=0. An elliptic curve has dim H¹(O)=1. | Flag hypotheses distinguish the vanishing claim. |
| 3.3 Picard comparison | ℂP¹ sends O(k) to k∈ℤ, bijectively. On an elliptic curve, distinct degree-zero holomorphic lines all map to 0. | Exponential-sequence vanishing is essential; retain application. |
| 3.3 Pullback to a finer flag | The line on the SU(3) projective partial flag pulls back to degrees (1,0), while the second fundamental line has (0,1) and does not descend to that partial flag. | Selected simple-root vanishing works; retain. |
| 3.4 Exact character lattice | SU(2) weight lattice maps by k↦k; SO(3)'s character lattice maps by k↦2k. Cokernels respectively 0 and ℤ/2. | Global-form distinction retained. |
| 3.4 Central kernel | U(2) characters (a,b) map to degree a−b; kernel consists of (m,m), the determinant powers. For a torus orbit (a point), every character has degree 0. | Exactness/kernel claim passes. |
| 3.4 Projective central obstruction | On SU(3)'s ℂP², a primitive central cube root acts on O(1) by its inverse; on O(3) its cube is 1. | PU(3) descent distinguishes 1 from 3; retain. |
| 3.4 Boundary dimensions and sign | N=1 gives a point with H²=0; N=0 has no nonempty projective space. Degree −1 reverses curvature; k=0 has zero curvature, not the positive form. | Boundary qualifications agree. |
| 4.1 Real polarization | In ℝ², P=span(∂p) has rank 1 and ω|P=0; TM has rank 2 and ω(∂q,∂p)=1. A point has P=0. | Lagrangian rank and isotropy discriminate. |
| 4.1 Polarized section equation | For θ=p dq and vertical P, ∇_∂p q=0 whereas ∇_∂p p=1. | Correct kernel; retain. |
| 4.1 Kähler polarization | In a holomorphic frame, ∂̄z=0 whereas ∂̄z̄=d z̄≠0. | Holomorphic, not antiholomorphic, sections selected. |
| 4.1 Local flatness versus global solution | A flat line on a circle has local parallel frame in both holonomy +1 and −1 cases; global parallel dimensions are 1 and 0. | Leafwise curvature zero does not erase holonomy. |
| 4.2 Observable normalizer | X_p=∂q commutes with ∂p; X_(p²)=2p∂q has [X_(p²),∂p]=−2∂q outside P. | p preserves polarization; p² does not. |
| 4.2 Failure of associative closure | p is an observable, but p·p=p² fails; indeed Q_(p²)(1)=−p² is not vertical-polarized. | Lie algebra, not associative algebra, is correct. |
| 4.2 Basic-function algebra | ∂p q=∂p(q²)=0, whereas ∂p p=1; {q,q²}=0. | Basic functions have stated product/Poisson closure. |
| 4.2 Lie and basic-module laws | {p,qp}=−p is again affine in p; multiplying p by basic q gives qp, whose second p-derivative is 0. | The two closure claims agree. |
| 4.3 Bohr–Sommerfeld criterion | Circle holonomy +1 gives a one-dimensional parallel fibre; holonomy −1 gives zero. Trivial loop gives +1. | Both directions pass. |
| 4.3 Shifted real torus leaves | k=2, α=0: p=0,1/2. α=1/2: p=1/4,3/4. Both sets have 2 elements, but are unequal. | Flat twist cannot be suppressed. |
| 4.3 Descent and pullback | A section of a line on a point pulls back to constant parallel sections on a trivial-holonomy circle, both spaces ℂ; sign holonomy gives no such descent and parallel space 0. | The holonomy hypothesis is effective. |
| 5.1 Affine observable condition | f=pq+u(q) has ∂p²f=0; f=p² has ∂p²f=2. | Exactly the fibre-affine scope; retain. |
| 5.1 Half-density correction | For v(q)=q, divergence is 1, so corrected operator is i(q∂q+1/2)+u. On constant 1 with u=0 it gives i/2; omitting half-density gives 0. | Correction discriminated. |
| 5.1 Density transformation | Under q↦2q, density scales by 2, half-density by √2, and its squared norm by 2; a scalar function alone scales by 1. | Intrinsic measure-free Hilbert construction passes. |
| 5.1 Schrödinger action | Translation has divergence 0 and generator i∂q; multiplication observable u=q gives Q_q=q. Their commutator is −i on test functions. | Compatible with Layer 2; retain. |
| 5.2 Projective dimensions | ℂP¹: dim O(0)=1, O(1)=2, O(2)=3. ℂP²: dim O(2)=6. ℂP⁰: dimension 1 for every k≥0. | Binomial formula passes all boundaries. |
| 5.2 Dual/action normalization | For SU(2), O(1) sections transform by the dual standard representation; central −I gives −1. On O(2), central phase is +1. | Action is dual, not silently the original representation. |
| 5.2 L² realization | A nonzero constant section of O(0) on compact ℂP¹ has positive finite norm; the zero section has norm 0. The same constant on ℂ with Lebesgue measure has infinite norm. | Compactness and metric are used. |
| 5.3 Torus automorphy | Translating by 1 then τ versus τ then 1 differs by exp(−2πik): k=1,2 give 1; k=1/2 gives −1. | Fails as quantified; add positive integer hypothesis R03. |
| 5.3 Hermitian metric | At τ=i, k=1, z=0→i, metric ratio is exp(−2π); squared automorphy factor is exp(2π); their product is 1. | Descending norm, not constant metric, passes. |
| 5.3 Chern curvature | With b=Im τ and y=Im z, A=2πiky dz/b gives dA=−2πik dq∧dp. Thus iF/(2π) integrates to k. | Degree/curvature normalization agrees. |
| 5.3 Holonomy and theta/real dimensions | k=2, α=0, p=1/4 gives q-loop phase −1; p=0 gives +1. Theta and Bohr–Sommerfeld direct-sum dimensions are 2; smooth globally real-polarized sections are 0. | The three section notions are correctly distinguished. |
| 6.1 Geometric character | Doubled action on ℂP¹: O(n) weights 0,−2,…,−2n; n=1 trace is 1+exp(−2it), giving 2 and 0 at t=0,π/2. | Sign passes; formula ownership R04. |
| 6.1 Character twist/moment shift | Twist the same O(1) lift by weight +1: weights become 1,−1, moment interval shifts [−2,0]→[−1,1]. | Same shift on both sides. |
| 6.1 Point representation | Point with fibre weight κ: L^n has weight nκ and rescaled atom δ_κ, not δ_0. | Normalization excludes losing the fibre character. |
| 6.2 Positive-line embedding | O(2) on ℂP¹ has 3 sections and the degree-2 Veronese map. Trivial O(0) has 1 section and a constant projective map. | Positive line distinguishes embedding from mere section existence. |
| 6.2 Finite residue vanishing argument | If a very ample third power has residue thresholds 2,4,1, the maximum 4 covers exponents 12,13,14 and all subsequent ones. | One bound serves every residue; retain. |
| 6.2 Equivariant versus ordinary index | O(1) doubled action: ordinary Euler number 2; character at π/2 equals 0. At identity the fixed locus is all ℂP¹, not isolated points. | Missing precise general bridge R04. |
| 6.3 Torus character periods | For P=2π, weight 1 gives exp(it); for P=1 it gives exp(2πit). Weight 1/2 at period 2π gives −1 instead of 1. | Period lattice, not bare differential, is required. |
| 6.3 Higher and zero ranks | On T², weight (1,−1) gives exp(i(t−u)), value 1 on the diagonal; rank-zero lattice has one element 0 and only character 1. | Integral lattice definitions pass. |
| 6.4 Global distribution normalization | ℂP¹: n⁻¹dim H⁰(O(n))=(n+1)/n→1. Doubled moment interval length 2 has density 1/2 and mass 1. ℂP²: n⁻² binom(n+2,2)→1/2. | Matches (2π)⁻ᵈωᵈ/d!, not unnormalized volume. |
| 6.4 Singular support/empty object | A point contributes δ_κ of total mass 1, with no Lebesgue density in a positive-rank ambient torus; empty M contributes 0. | Distribution statement handles both without a fake density. |
| 6.5 Admissible weights | Generic μ₂ kernel, fibre weight κ=1: λ−nκ must be even. For n=1, λ=1 is admissible, λ=0 is not. Index of admissible lattice is 2. | Coset and n-dependence pass. |
| 6.5 Full isotropy versus generic isotropy | On orbifold ℙ(1,2), O(1) has trivial generic stabilizer but sign at its μ₂ point; the coarse-line descent fails there despite generic index 1. | Full isotropy condition is necessary and retained. |
| 6.5 Weighted quotient integration | [point/μ₂] has orbifold volume 1/2; its trivial invariant fibre has dimension 1 and sign fibre dimension 0. | Volume alone is not the index; sector phases needed. |
| 6.6 Convex potential | ℂP¹, weights 0,1, n=2, λ=−1 at equal coordinates: normalized potential is 2log cosh(a), derivative 0 at a=0 and Hessian 2. At a fixed point the potential is linear, Hessian 0. | Strict convexity requires finite infinitesimal stabilizer. |
| 6.6 Shifted semistability | Shifted weights {−1,1}: 0 is in the interior, so the orbit is semistable. Singleton {1}: 0 is outside and unstable. Singleton {0}: semistable but nonregular. | Convex and regularity distinctions pass. |
| 6.6 Complexified line action | Weight-one fibre: compact phase exp(it) has squared norm 1; imaginary parameter ia acts by exp(−a), squared norm exp(−2a). | Holomorphic extension is not claimed unitary. |
| 6.6 Rank-zero/ineffective case | T=1 gives potential 0, Mss=M, quotient identity. A positive-dimensional kernel gives zero Hessian along that kernel. | Reduction to the effective quotient is essential. |
| 6.6 Local descent | μ₂ on one fibre: invariant dimension 1 for trivial action, 0 for sign. A free ℂ× orbit has quotient one point; adding ineffective μ₂ preserves that point but its orbifold group has order 2. | Full-isotropy local model passes. |
| 6.7 Kostant norm derivative | n=2, λ=−1, r=1/4: norm²=4/25, η=3/10. Both direct differentiation and 4nη²norm² give 72/625. | Correct positive sign and factor 4. |
| 6.7 Bound on the level | At r=1 the norm² is 1/4; at r=1/4 it is 4/25. Difference 9/100>0. | Increasing-flow bound points in correct direction. |
| 6.7 Bounded extension | On a punctured disc, constant 1 has bound 1 and extends; z⁻¹ has norm→∞ and no holomorphic extension. For the ℂP¹ xy section, both missing fixed points have value 0. | Codimension-one control passes. |
| 6.7 Empty level and rank zero | ξ outside the ℂP¹ moment interval gives multiplicity 0 and empty reduced space index 0. For T=1, restriction and extension are both identity on H⁰. | No extension across all of M is invoked. |
| 6.8 Inertia formula | [point/μ₂]: trivial fibre sectors contribute 1/2+1/2=1; sign contributes 1/2−1/2=0. Keeping identity sector alone gives wrong 1/2. | Full phases and weighting pass. |
| 6.8 Nonabelian finite chart | [point/S₃]: trivial character gives (1+3+2)/6=1; sign gives (1−3+2)/6=0, agreeing with invariant dimensions. | Full finite groups, not only cyclic charts, pass. |
| 6.8 Normal denominator | For a moving normal eigenvalue −1, 1−g⁻¹=2 and reciprocal 1/2. Eigenvalue 1 is tangent to the fixed sector and must be omitted, not divided into 0. | Correct moving-normal qualification. |
| 6.8 Ordinary Riemann–Roch boundary | ℂP¹: χ(O(n))=n+1; rewriting as K⊗O(n+2) retains degree n. For empty quotient every sector sum and Euler number is 0. | Vanishing/index bridge signs pass. |
| 6.9 Joint quasi-polynomial | Weights (0,1,2), 0<j<n: multiplicity floor(j/2)+1. At n=6, j=2,3 it is 2,2; leading terms j/2 are 1,3/2; errors 1,1/2. | The residue is in j as well as n; joint lattice retained. |
| 6.9 Lattice factor in leading density | Doubled ℂP¹: generic index q=2, normalized density ρ=1/2, so qρ=1. Even admissible weights have multiplicity 1; odd weights 0. | Omitting q would give 1/2; retained. |
| 6.9 Uniform remainder at dimension zero | d=r=1 in the previous example: admissible multiplicity minus leading term is 0, satisfying 0≤C/n uniformly. | Negative remainder exponent is meaningful, not a floor convention. |
| 6.10 Positive-dimensional kernel | T² acts on ℂP¹ through first factor and fibre weight b on second: weights (−j,nb); quotient-and-twist recovers exactly (−j,nb). Support satisfies second coordinate b. | Transport handles lower-dimensional support. |
| 6.10 Choice of extension character | Choose β=(1,b): quotient weights become −j−n; adding nβ returns (−j,nb). Choose β=(0,b): quotient weights −j, same result. | Independence of extension is tested. |
| 6.10 Entire group ineffective | A point has T′=1 and normalized measure δ_κ after the shift; finite residual μ₂ still contributes index factor 2. | Connected and finite kernels are treated separately. |
| 6.11 First exponent count | Weights (0,1,2), n=2: multiplicities for j=0,…,4 are 1,1,2,1,1; sum 6. n=3: 1,1,2,2,2,1,1; sum 10. | Matches both integer bounds and monomial enumeration. |
| 6.11 Second exponent count | Weights (0,1,−2), n=2: six weights −4,−2,−1,0,1,2 each occur once. At n=3, weight 0 occurs twice; total dimension is 10. | Matches bounds; unread Knutson pages not certified. |
| 6.11 Empty intervals and n=0 | n=0 has only (a,b,c)=(0,0,0), multiplicity 1 at j=0 and 0 elsewhere. Exterior j gives lower bound above upper bound, hence count 0. No rescaling by 1/n at n=0. | Total-function boundary handled. |
| 6.11 Density mass | First action's triangular pieces have masses 1/4+1/4=1/2. Second action's pieces have masses 1/3+1/6=1/2. Both equal ∫ω_FS²/2. | Normalized and reflected weight conventions agree. |

Exhaustive counts at n=0,1,2,3,6 also included exterior weights −2n−2 through 2n+2. For (0,1,2), n=6 gives 1,1,2,2,3,3,4,3,3,2,2,1,1 (sum 28), testing endpoints, parity and empty intervals independently of the source.

**All fourteen companion declarations.** Here the source/target are native continuous characters, quotient homomorphisms and additive homomorphisms; no geometric stabilizer is hidden in the inputs. Every row is mathematically sound as generic algebra, but none is a geometric headline. The uniform repair is R05: delete the companion, leaving native APIs and README tests.

| Declaration (companion line) | Instances and both computed values | Result; change |
|---|---|---|
| restrictCharacter (20) | Circle character z↦z³ restricted along z↦z² gives z⁶; at z=i both composition and restriction equal −1. | True wrapper; delete. |
| restrictCharacter_apply (23) | Same z=i: (i²)³=−1=i⁶. Trivial character gives 1=1. | rfl; delete. |
| characterKernel (27) | S₃ sign: A₃ has 3 elements; trivial character's kernel has 6. | Native kernel; delete. |
| mem_characterKernel (29) | A transposition: membership false and sign=1 false; a 3-cycle: membership true and sign=1 true. | Iff.rfl; delete. |
| descendCharacter (34) | Sign modulo A₃: identity coset↦1, nonidentity coset↦−1; sign cannot descend modulo S₃. | Native quotient lift; delete. |
| descendCharacter_mk (38) | Transposition coset maps to −1=sign(transposition); identity maps to 1=1. | rfl; delete. |
| descendCharacter_comp (43) | Composite S₃→C₂→Circle has values 1 on A₃ and −1 on its other coset, exactly sign. | rfl; delete. |
| descendContinuousCharacter (47) | Finite discrete S₃ quotient has two open singleton fibres; descended ±1 map is continuous. N=1 leaves original character. | Native quotient continuity; delete. |
| descendContinuousCharacter_mk (52) | Same transposition gives −1 on both sides; constant character gives 1 on both. | rfl; delete. |
| periodRestriction (62) | j:ℤ→ℤ is multiplication by 2; χ is multiplication by 3. Restriction at 1 is 6=3·2. For j=0 it is 0. | Native composition; delete. |
| periodRestriction_apply (67) | With those inputs, at q=−1 both sides equal −6. | rfl; delete. |
| centralCharacterLattice (72) | For j=2, its kernel in Hom(ℤ,ℤ) is {0}; for j=0 it is all ℤ. | Native kernel; delete. |
| mem_centralCharacterLattice (75) | j=2, χ=3: membership false and χ(j(1))=6≠0. χ=0: both conditions true. | Elementary extensionality; delete. |
| ordinaryDegree_has_specifiedCharacter (87) | j=2: degree 1 is outside 2ℤ and has no preimage; degree 2 is inside and χ=1 is a preimage. | Iff.rfl; delete. |

**Pinned-library audit by object.** Mathlib was read at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths in this table are relative to the corresponding pinned library. I inspected the declarations and surrounding binders, rather than using their names as evidence of a geometric construction.

| Native object/declaration | File and line at the pin; what it supplies and does not supply |
|---|---|
| CovariantDerivative | `Mathlib/Geometry/Manifold/VectorBundle/CovariantDerivative/Basic.lean:365`: section-first covariant derivative, with its covariant-derivative law. It is not a principal circle bundle, Hermitian metric, or real-base complex Chern dictionary. |
| LinearPMap | `Mathlib/LinearAlgebra/LinearPMap.lean:41`: a linear map on a specified submodule. Closedness, dense domain and self-adjointness do not follow merely from this carrier. |
| LieSubalgebra | `Mathlib/Algebra/Lie/Subalgebra.lean:45`: a submodule closed under the Lie bracket. It does not assert associative multiplicative closure; the p² test above matters. |
| ContinuousMonoidHom.comp | `Mathlib/Topology/Algebra/ContinuousMonoidHom.lean:152`: actual continuous composition. No Lie smoothness or stabilizer construction. |
| MonoidHom.ker | `Mathlib/Algebra/Group/Subgroup/Ker.lean:238`: subgroup of elements mapping to 1. This is exactly the companion's characterKernel. |
| QuotientGroup.lift, lift_mk, lift_comp_mk' | `Mathlib/GroupTheory/QuotientGroup/Defs.lean:249`, 253, 262: quotient lift under N≤ker, value on a representative, and recovery of the original map. Normality is retained. |
| continuous_quot_lift | `Mathlib/Topology/Constructions.lean:729`: continuity for the quotient topology, from continuity upstairs and well-definedness. No Hausdorff quotient hypothesis is asserted or needed for this statement. |
| jacobiTheta₂ and its actual series | `Mathlib/NumberTheory/ModularForms/JacobiTheta/TwoVariable.lean:45`, 123, 251, 384, 390: exponential summands, summability iff Im τ>0, sum and both z translations. The quasi-period is exp(−πi(τ+2z)), not its inverse. This is not the degree-k bundle or its full theta-section basis. |
| SmoothTwoForm.IsSymplectic | `TauCeti/Geometry/Symplectic/Manifold/TwoForm.lean:92`: fields `isClosed` and `isNondegenerate`. It does not bundle Hausdorffness, second countability, nonemptiness or compactness. The README explicitly supplies the first two and uses compactness separately. |
| curvatureOperator | `TauCeti/Geometry/Manifold/VectorBundle/CovariantDerivative/Curvature/Basic.lean:85`: ∇X∇Y−∇Y∇X−∇[X,Y], initially an unbundled section. Smoothness requires additional regularity. The prequantum curvature identity is not a field of this operation. |
| exists_contDiffAt_picard_solution | `TauCeti/Analysis/ODE/SmoothParameter.lean:207`: finite-dimensional real parameter/state, C^(n+1) germ, and vector field zero near the base state at the distinguished parameter. It is a local parameter theorem, not arbitrary global completeness. The linear-parameter base-zero use fits; the complete-field theorem remains a roadmap target. |
| TauCeti.fourierChar, fourierRep | `TauCeti/RepresentationTheory/Compact/Circle.lean:126`, 142: actual additive-circle character and one-dimensional continuous representation. The period parameter is explicit. The product-torus integral-period conversion is additional work here. |
| TauCeti.formalCharacter | `TauCeti/Algebra/Lie/Weights/FormalCharacter.lean:156`, 164: finite support of generalized weight-space dimensions and coefficient equation. It is a Lie-module formal character, not automatically a compact-group weight lattice. |
| Honest weight coefficients/integrality | Same file:485, 493: Killing-semisimple finite-dimensional Lie algebra, Cartan subalgebra and finite-dimensional module; the integrality theorem additionally has triangularizability and characteristic zero. These cannot supply an arbitrary torus period condition. |

The audit covers 23 native declarations in fourteen object groups. These do not supply the principal/associated, polarized-section, holomorphic quotient or orbifold-index constructions. Suggested.lean correctly avoids replacing them by free Prop fields.

**Cross-roadmap and ownership audit.** I used `roadmaps grep` for the objects (homogeneous characters, flag/Picard comparisons, root spheres, half-densities, equivariant/orbifold Riemann–Roch, Kostant/semistable descent), inspected its matches, and used `roadmaps show` for the relevant open new-roadmap texts. I also searched the board packages; the readable package inventory had no competing geometric-quantization construction. Ownership against the supplied sibling heads was checked, including SchubertGeometry, ComplexKahlerGeometry, LieGroups, IndexTheory, PseudodifferentialOperators and LieGroupoidsPoisson. Existing-roadmap revisions were used to detect overlap/drift, not silently substituted for main. The name search found no colliding fully qualified companion declarations on main or in the indexed Suggested.lean files; the companion is still redundant by object.

Supplier locations are on main unless marked as new-roadmap heads; these are resolved contracts, not claims of completed proofs.

| Supplier and resolved locations | Contract checked; outcome |
|---|---|
| DifferentialGeometry, `TauCetiRoadmap/DifferentialGeometry/README.md:294`, 325, 371, 400, 463, 524, 816 | §0.4 forms; §1.4 Cartan calculus; Layer 3/§3.5 flows; §4.3 Frobenius; §5.4 homotopy and integration/de Rham. Signs agree with dq∧dp. |
| SmoothBundlesConnections, `TauCetiRoadmap/SmoothBundlesConnections/README.md:421`, 559, 605, 776 | B1.4 quotients/local sections; B2.1 associated sections; B2.2/B2.4 Hermitian L², compact-support density and integration resolve. |
| Same supplier:871, 936, 1010, 1209, 1668, 1716, 1739, 1780 | B3 connections; B4.2 gauge constants; B5.2 holonomy; B6.2–5 Chern/existence/flat torsor resolve. Dual-circle sign: F=−iω/ℏ. |
| HamiltonianSystems, `TauCetiRoadmap/HamiltonianSystems/README.md`, Layers 1–3 | Contraction, Poisson fields, dynamics and moment cocycle resolve; q,p and translation-cocycle signs agree. |
| LieGroupoidsPoisson, new-roadmap head, `TauCetiRoadmap/LieGroupoidsPoisson/README.md:1205` | G4.2a has ω(X,·)=df, X_q=−∂p, X_p=∂q; G4.3 uses the Poisson homomorphism −X_f. Signs agree. |
| CotangentLagrangian, `TauCetiRoadmap/SymplecticGeometry/CotangentLagrangian/README.md:25` | C1 supplies λ=Σpᵢdqᵢ, ω=−dλ; fibre translation changes ω by −π*dα, agreeing with the exact-line computation. |
| HamiltonianReduction, `TauCetiRoadmap/SymplecticGeometry/HamiltonianReduction/README.md`, R1–R3, including R2a at 157 | R1–R3 group moment data, KKS orbit, even-cell model and regular locally free reduction resolve. R2a does not supply R01’s normalized compact root maps. |
| ConvexityToric, `TauCetiRoadmap/SymplecticGeometry/ConvexityToric/README.md:32`, 106, 156 | T1 periods, T3 translated moment-square flow and T4 raw DH/full-isotropy volume resolve. Normalization (2π)⁻ᵈ and lattice index are owned here. |
| SelfAdjointSpectralTheory, `TauCetiRoadmap/OperatorTheory/SelfAdjointSpectralTheory/README.md:149`, 217, 888 | Part A/Stone and SA-C39–42 graph-core inputs resolve. The geometric complete-flow core remains §2.2’s target. |
| ComplexKahlerGeometry, `TauCetiRoadmap/ComplexKahlerGeometry/README.md:96`, 193, 296, 437, 444, 1208, 1245, 1274, 1407, 1444 | K1–K4 type/Dolbeault, bounded extension and bundles; K5a/K5b.1 elliptic theory; K6.0–1 curvature/Hodge; K7.1–2 projective/tori resolve. Positive torus-line quantization belongs here. |
| ComplexComparisonPartII, new-roadmap head, `TauCetiRoadmap/ComplexComparisonPartII/README.md`, C0.3, C1.7–1.9, C5.1, C5.4 | C0.3, C1.7–1.9 and C5.1/4 dictionaries, twists, Serre vanishing, GAGA and integral exponential/Chern comparison resolve. Picard application still needs H¹(O)=H²(O)=0. |
| IndexTheory, new-roadmap head, `TauCetiRoadmap/IndexTheory/README.md:669`, 742, 888–895 | I6, I7.3 and I8.4 resolve. I8.3 treats isolated fixed points, not R04’s general fixed components. |
| PseudodifferentialOperators, new-roadmap head, `TauCetiRoadmap/PseudodifferentialOperators/README.md:151`, 530 | P1 sections/differential floor and P2 symbols resolve. Finite-chart orbifold Hodge extension is owned here. |
| Orbifolds, `TauCetiRoadmap/Orbifolds/README.md:296`, 334, 394, 419, 672 | O4, O4-S/W/T and O5 full-isotropy bundles, integration and cohomology resolve; finite-chart factor 1/|G| agrees. |
| CompactGroups, `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:103`, 369 | Circle Fourier and orthogonality resolve: probability Haar extracts coefficient 1 or 0 for equal or unequal characters. |
| LieGroups, `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md`, Layers 4–8; Layer 6 at 383 | Main supplies integration, covering, tori/Weyl, complexification and full flags, but not R01’s normalized compact rank-one maps. |
| AlgebraicTopology, `TauCetiRoadmap/AlgebraicTopology/README.md:499`, 849, 946 | Stages 4–6 cellular/singular comparison, orientations and universal coefficients resolve; even-cell free H₂ specialization belongs here. |
| SchubertGeometry, `TauCetiRoadmap/SchubertGeometry/README.md:123` | Main S9.7 owns partial-flag/KKS and root-handle comparisons. Revision S3P.1–2 overlaps the Picard extension: R02. |

These eighteen groups resolve the cross-roadmap citations. No order edge changed; no gap is declared.

## Not verifiable

The following source limitations are independent of the four blocking findings. This review is finished rather than parked. No page content is guessed, and the target worktree and source manifest were not edited.

- **kostant**, *Quantization and Unitary Representations* (1970): the sources service classified the Springer DOI route as **uncertified**, with no readable text. The broad reference supplies no target-specific locator for §§1.1–2.3. Its source statements/proofs were not certified. This settled access status is not a missing-text request.
- **sniatycki**, *Geometric Quantization and Quantum Mechanics* (1980): DOI `10.1007/978-1-4612-6066-0` was classified **uncertified**. No exact real-polarization/Bohr–Sommerfeld pages are supplied. Not added to the missing-text request.
- **woodhouse**, *Geometric Quantization*, second edition (1992): the service tried DOI `10.1093/oso/9780198536734.001.0001`; Oxford's landing page returned HTTP 403. §§4–5's intended book locators remain unread and unspecified.
- **kodaira**, *On Kähler varieties of restricted type* (1954): DOI `10.2307/1969701` led to JSTOR's landing page, without a legally classified open text returned by the service. The positive-line theorem was instead checked at the explicitly cited Demailly locators; no equivalence of numbering with Kodaira was assumed.
- **knutson**, *Lie Groups notes, Semester 2*: the service's title/author search found no legal copy of the cited April 23 notes, physical pp.106/119 of 131. Cornell course records found in the search do not identify those pages or their edition. The README gives no year. The numerical examples were checked independently, but their attribution remains unverified.

The last three entries are recorded together in the job's missing-reference record, without duplicating the two uncertified works. Source IDs for the seven retrieved works are **graham-vogan**, **demailly**, **cannas**, **vergne**, **meinrenken**, **meinrenken-sjamaar** and **sjamaar**. The sampled claims were checked against the indicated manuscript/arXiv versions; no agreement with a different published numbering is presumed. Elaboration and the computed witnesses do not prove the future general theorems.

## Source issues

- **Misprint** in graham-vogan at §7, paragraph after Proposition 7.2, printed p.39 (graham-vogan line 1727): the source says Proposition 6.4 follows from Proposition 7.2; it should be Proposition 6.5, as its deferred proof on p.37 specifies; affects nothing.
- **Misprint** in demailly at VI §9.1, printed p.314 (demailly line 15573): the source says the Dolbeault identification follows from V-11.6; it should be V-11.5, whereas V-11.6 introduces notation for holomorphic differential forms; affects nothing.
- **Error** in sjamaar at Proposition 2.11 proof, printed p.24 (sjamaar lines 1276–1279): the source says averaging over H⁰ gives invariance under the full complexified H; it should be invariance under (H⁰)ℂ, followed by the separate finite-component invariance condition; affects the proof.
- **Error** in sjamaar at §2.2 before Lemma 2.13, printed p.26 (sjamaar lines 1335–1338): the source says the reduced potential for u=(|z₁|²+|z₂|²)/2 and w=z₁z₂ is |w|/2; it should be |w| on the zero level; affects a stated result.
- **Misprint** in sjamaar at Theorem 2.14 proof, printed p.27 (sjamaar lines 1418–1425): the source says the fibre norm r₀ equals h₀|ζ|², with the analogous dual formula; it should be r₀²=h₀|ζ|² and (r₀*)²=h₀⁻¹|ζ|²; affects the proof.
- **Gap** in sjamaar at Theorem 2.15 proof, printed p.28 (sjamaar line 1487): the source says orbit-closure invariance equates section values and implies the limit value is nonzero; it should be the preceding monotone norm inequality and continuity imply nonvanishing at the limit; affects the proof.

These errors do not refute the cited theorems. Concrete controls: averaging the identity component of μ₂ leaves a sign vector 1 unchanged, but −1 acts by −1; at (z₁,z₂)=(1,1) the reduced potential must be 1 rather than 1/2; a unit-metric fibre vector ζ=2 has norm 2 and squared norm 4; for the invariant z₀ section on ℂP¹, squared norms can increase from 1/2 at [1:1] to 1 at [1:0], so invariance is not equality of fibre values along a complex orbit closure. The relevant Sjamaar pages and the Graham–Vogan misreference were also inspected visually to distinguish print from extraction errors. No published correction was established in this review.
