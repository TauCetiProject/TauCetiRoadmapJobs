# Review of K2SymbolsBrauer (pull request #1302 at c844a11)

**Verdict:** needs changes

Independent AI review of the two roadmap files at the specified head. There are three blocking findings, all reparable without replacing the roadmap's mathematical scope. The build passes, but the supplied gate fails its `residue` rule.

## R01 (P2) — Import the classical foundations instead of planning them again

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:9`, and §§0.1–0.4 at lines 78, 90, 102, 126: “Layer 0 constructs stable matrices, classical and relative `K₁`, finite and stable Steinberg groups”.

**Claim:** These sections assign construction/proof ownership here for stable GL/E, Whitehead, relative K₁, stable Steinberg universality, Matsumoto and finite-field classical K₂. Calling the carriers shared does not remove the duplicate construction targets or the second proof programme.

**Witness:** `TauCetiRoadmap/AlgebraicKTheory/README.md:218`, 234, 274, 331, 493 and 508 already own these objects and results at its open head. Its line 689 explicitly names K2SymbolsBrauer as a consumer.

**Repair:** Delete the repeated construction/proof targets and consume AlgebraicKTheory A1–A3/A5 by section in Scope and Exact supplier contracts. Retain the finite-word presentation adapter needed by §3.2, additional finite-rank refinements, and bar/product normalization, specifying their difference from the supplier. Update the Summary and build paragraph accordingly. This preserves the zero-ring test, the noncommutative coefficient `−ba`, and the ordered Matsumoto symbol without constructing a second foundation. The refinement is substantial enough that the whole roadmap need not be rejected.

## R02 (P2) — The generic Brauer universe extension already has an owner

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:2441`: “Extend the crossed-product API from `F : Type` to `F : Type u`, retaining those evaluation equations.”

**Claim:** This subsection takes ownership of the arbitrary-universe algebraic/cohomological Brauer comparison and its field-map compatibility. These are generic prerequisites, distinct from the local function-field cyclic-algebra normalization that belongs here.

**Witness:** On main, `TauCetiRoadmap/QuadraticFormInvariants/README.md:783`–823 prescribes the same finite-descent and Brauer-comparison universe programme; Layer 7B, lines 2554–2571, fixes the comparison by crossed-product evaluation. Lines 85–95 retain the full transport square.

**Repair:** Import that programme by its exact section and Layer 7B, and retain here only the transport to the CFT Brauer carrier and the function-field symbol/invariant comparison. Remove the duplicate generic construction and its acceptance theorem. Do not confuse availability at a newer library revision with availability at this pin: the pinned comparison still binds `K : Type` at `TauCeti/Algebra/CrossedProduct/Comparison.lean:75`. Importing the existing roadmap contract is the repair. Its evaluation law fixes the same value on a split class (zero) and on the cubic class below (invariant `2/3`), so no arithmetic scope is lost.

## R03 (P2) — The Brauer acceptance theorem loses the required normalization

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/Suggested.lean:248`–250: `Nonempty (Additive (BrauerGroup.{u, u} F) ≃+ TauCeti.ClassFieldTheory.Br F)`; compare README lines 2441–2447.

**Claim:** The signature proves existence of an additive equivalence, not extension of the specified comparison with its evaluation and naturality laws. The earlier theorem about fields in `Type` does not constrain the witness chosen by this independent `Nonempty` statement, even when `u=0`.

**Witness:** At `F=𝔽₇((t)), ℓ=3, ζ=2`, the required image of `(2,t)_ζ` has invariant `2/3`. Composing an equivalence with negation gives invariant `1/3` and still satisfies line 250.

**Repair:** Following R02, remove this substitute signature and document that the imported normalized universe comparison is unavailable at the pins. If a distinct local headline remains statable, state it on the actual supplied comparison with its evaluation equation; do not replace it with an arbitrary equivalence. The cubic test then distinguishes `2/3` from `1/3`, whereas the present signature cannot. This is a missing acceptance condition, not a claim that abstract Brauer equivalence is false.

## R04 (P3) — Remove the eleven anchor tags rejected by the gate

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:2250`, 3011, 3028, 3054, 3070, 3084, 3098, 3241, 3280, 3306 and 3320; for example `<a id="ds-groups"></a>`.

**Claim:** The gate's `residue` rule rejects all eleven tags, so the gate fails despite the successful build.

**Witness:** The supplied head-specific gate records `residue=11`, every other count zero, and `FAIL`. The listed lines are the eleven raw HTML anchors.

**Repair:** Replace anchor-only tags with ordinary Markdown subsection headings and update their fragment links. Preserve the explicit field/local/split-relative dependency distinctions in Layer 13. Re-run the same gate; acceptance requires `residue=0` and a passing gate.

## R05 (P3) — Stop claiming undeclared Lean API names

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:148`–150, 336–337 and 1146, among the API bullets: `K2HopfCalibration.transgression_lift`, `K2.classicalHomologyEquiv`, `Steinberg.orderedUpperProduct`.

**Claim:** Backticked names of this roadmap's own API claim declarations in Suggested.lean, but these names are absent. The sentence at line 13 calling them construction targets does not satisfy the acceptance-file convention.

**Witness:** The complete file declares 31 names, mechanically checked with `#check @name`; none of the three names above occurs. The citation scanner's unresolved-name list supplies further instances, not permission to add API padding.

**Repair:** Rewrite undeclared API bullets as mathematical prose. Keep backticked own names only for actual retained definitions/headlines, and cite external declarations under their supplier. Do not fill Suggested.lean with these API lemmas. The bar-boundary value 2 over 𝔽₃, the calibrated comparison and the upper-triangular cross term 1 remain unchanged.

## R06 (P3) — Delete the one-lemma Brauer wrapper from the acceptance file

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/Suggested.lean:239`–244, `algebraicBrauerToBr_galoisCocycle`; supporting definitions at lines 218 and 233.

**Claim:** This is an API transport of a pinned theorem, not a new headline theorem. Its existing proof already demonstrates the one-lemma reduction.

**Witness:** Its proof is `congrArg` applied to `TauCeti.brauerCohomologyEquiv_galoisCocycle_brauerClass`, whose identical cocycle evaluation is at `TauCeti/Algebra/CrossedProduct/Comparison.lean:287`.

**Repair:** Delete it from `Suggested.lean`; keep the mathematical transport in the README and cite the pinned theorem. Delete the two supporting definitions too unless a substantive retained headline actually uses them. The split class still maps to zero and each cocycle class to its transported inflation, by the cited theorem. The 11 admitted headline probes do not produce another one-tactic padding finding.

## R07 (P3) — Correct the stale consumer and source locators

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:2558`, 2894 and 951. The consumer references are “ArithmeticKTheory (its N.2)” and “its N.8”; §6.6 groups Exercise III.5.9 under p.225.

**Claim:** These locators do not identify the cited locations in the supplied versions.

**Witness:** `TauCetiRoadmap/ArithmeticKTheory/README.md:619` and 3954 are §§2.1 and 8.2; neither N.2 nor N.8 exists there. `weibel` line 13208 places Exercise III.5.9 on printed p.229.

**Repair:** Cite ArithmeticKTheory §2.1 for arithmetic localization and §8.2 for the integer/rational examples; give p.229 for Exercise III.5.9 separately from III.5.10.1 on p.225. These remain consumer references, not supplier edges. The residues of `{2,3}` at 3 and `{2,t}` at t stay `−1` and 2 respectively.

## R08 (P3) — Restore the required layer structure

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:124`–136; `TauCetiRoadmap/K2SymbolsBrauer/Suggested.lean:7`–35 and the multi-layer body.

**Claim:** Layer 0 has no concluding Examples or Dependencies subsection. Suggested.lean has no `Layer k` section comments and its module title does not use the required “target signatures” form.

**Witness:** Layers 1–13 each end with Examples and Dependencies; Layer 0 goes directly from §0.4's Needs line to Layer 1. The Lean file has one module docstring and no layer comments.

**Repair:** After R01 removes the duplicated layer, either place its retained adapter in the relevant existing layer or give that layer the required ending. Add Lean layer comments in README order and use the required module-docstring title, explicitly describing the pinned headline-test role. This is organizational; it changes none of the computed values below.

## Verified sound

**Extent and limits.** Read both entire files, all 146 numbered targets and their API/Check blocks, the normative repository documents, and the main-branch shapes of ClassicalArithmeticCompletion, AlgebraicCurves and QuadraticFormInvariants. The table below records a computed witness for each numbered target, including all 15 seeded targets and every headline. It tests definitions, signs, hypotheses and wrong models; it is not a claim that a finite collection of examples proves the general theorems. Inaccessible original sources are explicitly separated below. No false mathematical headline was established by this pass; the blocking findings concern ownership and the weakened Brauer acceptance condition.

**Build and form.** The missing imported object was built with the permitted targeted `lake build TauCeti.Algebra.CrossedProduct.Comparison`; it succeeded. `lake build TauCetiRoadmap.K2SymbolsBrauer.Suggested` and direct `lake env lean` elaboration of Suggested.lean both succeeded, with exactly 11 `sorry` warnings and no other warnings/errors. On a scratch copy, `#check @name` for all 31 declarations confirmed the ring/field, finite-field, algebraically-closed, number-field, transcendence-degree, function-field, surjectivity and centrality hypotheses. Root and rootWord correctly discard the unused Ring binder; the relational presentation retains it. No required standing hypothesis disappeared. The difference identified in R03 is visible in the elaborated type, not a dropped binder.

Each of the 11 sorried declarations was separately tried with `simp`, `rfl` and `infer_instance` using backtracking proof alternatives on a scratch copy; all 11 remained unsolved. The already-proved wrapper is R06. The file has real definition bodies, one `import Mathlib`, four existing individual Tau Ceti imports, no sorry'd data, no admitted examples, no `set_option`, and 286 lines. The outside-folder diff is empty, and the worktree remains unchanged.

The worker's gate result at this head was:

```text
gate K2SymbolsBrauer: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=11 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 FAIL
```

The requested dependency check was independently run and returned:

```text
depcheck: 205 roadmaps, 1479 edges, 0 problem(s)
```

No UPWARD or CYCLE line occurred. All Needs lines were read, including the internal Layer 13 dependency links. In particular, the split-radical input is distinguished from the all-local statement, the prime-degree complete norm/residue square precedes Kato transitivity, and the later arbitrary-degree square does not supply its own prerequisite. The finite Sylow descent retains Artinian lengths and uses annihilation by integers prime to each chosen prime, rather than cancellation in an integral torsion group. No declared gap was available to audit. No computational-algorithm programme, good-prime shortcut, suspicious instruction or copied source passage was identified.

**Headline inventory.** The README's main results are the calibrated classical K₂/H₂/π₂ and projective-K comparisons (§§1–4); finite-rank central-extension splitting (§3.2); the Milnor ring calculations (§§5.12, 5.14–5.15); Matsumoto with the product sign (§§7–8); higher residues, Bass–Tate, generator-independent norms and integral curve reciprocity (§§9–10); number-field signatures and transcendence-degree-one vanishing (§§10.32–10.33); local/global function-field symbol comparisons (§§10.32a–c); localization/norm/specialization comparison (§11); integer/rational K₂ (§12); and local, relative, dual-number and dyadic Dennis–Stein results (§13).

The statable finite-rank theorem, six Milnor calculation signatures (counting the two real assertions separately), two Weil reciprocity signatures and the field Dennis–Stein signature are present on actual carriers. The proposed Brauer signature is R03. The module docstring identifies the missing stable matrix/Steinberg and classical/Quillen K-group carriers, higher residue/norm maps, cyclic-symbol maps and relative constructions that prevent the remaining headlines from being stated at these pins. No additional missing statable headline was established.

**Pinned library audit.** Mathlib is `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti is `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Object searches covered the native presentations, tensor algebra/grading, field-unit quotients, Milnor symbols, Steinberg groups, Dennis–Stein groups, places/divisors, norms, Brauer and continuous-H² carriers. These principal declaration sites were opened, not inferred from names:

| Pinned file and line | Declaration / content checked |
|---|---|
| `Mathlib/GroupTheory/PresentedGroup.lean:39` | `PresentedGroup` is the free group modulo the normal closure of relators; it adds no opposite-root relation. |
| `Mathlib/LinearAlgebra/TensorAlgebra/Grading.lean:43` | `TensorAlgebra.gradedAlgebra` uses powers of the image of ι, exactly the submodules used by MilnorK.degree. |
| `Mathlib/RingTheory/Valuation/ValuationSubring.lean:718` | `unitGroupToResidueFieldUnits`; kernel and surjectivity at lines 727 and 735. Principal units, not all field units, form the kernel. |
| `TauCeti/RingTheory/Valuation/Discrete/Order.lean:32` | `Valuation.ord = −log ∘ v`; ord(0)=0 is a junk value. The Lean tame signatures use Fˣ and avoid it. |
| `TauCeti/FieldTheory/FunctionField/Basic.lean:49` | `IsFunctionField` means finite over k(x) for some transcendental x; it does not impose perfect constants or separable residues. |
| `TauCeti/FieldTheory/FunctionField/Place/Residue.lean:140` | `normResidue` is the determinant norm of the actual residue unit. |
| `TauCeti/FieldTheory/FunctionField/Place/Residue.lean:153` | `normResidueOrOne` defaults to 1 outside order zero. The tame-unit order is mn−nm=0, so reciprocity does not exploit that default. |
| `TauCeti/FieldTheory/FunctionField/Divisor/Eval.lean:118` | `Divisor.eval` uses total local factors; admissibility and finite residues are essential. The disjoint-support and function-field hypotheses supply them. |
| `TauCeti/FieldTheory/FunctionField/Divisor/Eval.lean:192`, 310 | `eval_eq_prod_normResidue` and `isUnitAtSupport_iff_disjoint` connect that total definition to classical evaluation. |
| `TauCeti/RingTheory/Norm/Quotient.lean:38` | `Algebra.norm_quotient_mk` requires finite free algebras, provided by §10.16 before its use. |
| `TauCeti/Algebra/CrossedProduct/Comparison.lean:75`, 267 | The field is universe zero; `brauerCohomologyEquiv` is the actual algebraic/canonical-H² equivalence. |
| `TauCeti/Algebra/CrossedProduct/Comparison.lean:287`, 295, 305, 314 | Bundled and unbundled cocycle evaluation, inverse evaluation and uniqueness. These fix the map, not just its isomorphism class. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/CohomologyComparison.lean:232` | Explicit/canonical H² equivalence; local compactness is needed for the exponential-law step and is constructed for the absolute Galois group in the file. |
| `TauCeti/NumberTheory/ClassFieldTheory/Brauer/Basic.lean:149`, 156 | `Br` is continuous H² of unitsRep; `unitsRepH2Equiv` includes the group/coefficient dictionary. |

The object search did not find native Milnor K-groups, classical stable Steinberg/K₂ groups, Dennis–Stein groups or general Weil reciprocity at these pins. The presence of a generic group presentation or tensor algebra does not amount to those theories. Conversely, the native Brauer comparison really is present in universe zero and must be reused.

**Ownership and supplier resolution.** Used the roadmap-service object search and read the relevant main/open-head texts; also searched board packages. Fully qualified namespace searches found no second declaration of this folder's names in another roadmap. Package copies can lag open heads: findings use the specified open head or main, not an older package copy.

| Supplier/consumer text resolved | Result |
|---|---|
| AlgebraicKTheory A1–A3/A5, `README.md:200`, 272, 329, 491 | Supplies shared matrices, K₁ and Steinberg/K₂ theory. R01 identifies duplicate targets. |
| GeneralAlgebraicKTheory §§3.2, 3.12–3.14, 4.6, 4.8, 4.14, 7.2–7.4, 7.7–7.8, 8.1, 8.11–8.13, 10.12 | All resolve. Right-projective positive unit loops and the right-linear boundary are explicit; the primary Q model is left-projective and its right-projective transport is specified. Nonpositive excision is not used as a degree-two equivalence. |
| StableHomotopyKTheory §§1.30, 1.32, 2.4–2.5, 2.7–2.10, 3.12, 3.26–3.33, 4.14 | All resolve: bar/nerve comparison, based fibres, plus uniqueness, UCE/Hopf, universal cover and H-space data. The ordinary existence theorems stay with that supplier; this roadmap's added calibration has the explicit 𝔽₃ witness. |
| KTheoryLowDegrees §§6.1–6.2, 8.1, 9.1, Layers 10–11, §§13.1–13.5 | Supplies the finite-block, centralizer, determinant, quotient-root and signed-prism inputs. Its §13.2 uses AlgebraicKTheory's literal stable carriers, confirming R01's ownership repair. |
| SchemeKTheoryOperations §3.6 (`README.md:1017`) | Unit loops, DVR boundary and specialization resolve; uniformizer-first boundary is inverse to the parameter-last tame symbol in degree two. |
| GeneralizedCohomology G2.10; AlgebraicTopology Stages 5 and 8 | Based mapping-path fibres and CW/Hurewicz/classifying-space interfaces resolve. The group-nerve comparison is based and oriented; no arbitrary free-homotopy map is substituted. |
| ClassicalArithmeticCompletion §§1.1, 1.14 (`README.md:713`) | Dyadic units and arithmetic-Frobenius local symbol resolve. Its symbol takes the Artin argument first; the roadmap explicitly transposes it. Both give [2,t]=4 over 𝔽₇((t)). |
| ClassFieldTheory Layers 5–6, 10–14 (`README.md:920`, 1220, 1552 onward) | Local invariants/Kummer/cyclic APIs and number-field global reciprocity resolve. Main explicitly excludes global function-field CFT; §10.32b does not miscite its number-field theorem as a function-field theorem. |
| AlgebraicCurves Layers 2 and 12 (`README.md:478`, 1468); EllipticCurves Layer 0 (`README.md:344`) | General places/DVR models and elliptic specialization resolve. Closed-point degree 2 is retained; the regular model is not automatically declared smooth over an imperfect field. |
| LocalFieldsRamification Layers 0–1; ReductiveGroups Layer 7 (`README.md:628`); RepresentationTheory/RootSystems Layer 3 (`README.md:274`) | Local units and ordinary Bruhat/Coxeter interfaces resolve. The arbitrary-residue complete-DVR statements and lifted Steinberg words remain distinct targets here. |
| QuadraticFormInvariants, universe programme and Layer 7B | Earlier main-branch owner of the generic Brauer comparison and its arbitrary-universe extension: R02. |
| K2SymbolsBrauerPartII Scope and supplier contract (`README.md:7`, 60) | Explicitly extends the prime-degree function-field cyclic presentation to arbitrary fields/invertible degrees; the shared prime-degree presentation and signs agree. It is a consumer, with no reverse dependency here. |
| K3BlochGroups Scope and §§8.1–8.4 supplier citation (`README.md:9`, 75); ArithmeticKTheory §§2.1, 8.2 | Consumers preserve the ordered Milnor map and localization sign. ArithmeticKTheory's old N labels are R07. |
| MotivicEtaleKTheory supplier contract; related open arithmetic/K-theory roadmaps in the object search | Their motivic/étale comparisons consume the common Milnor theory; no second native Milnor/Dennis–Stein carrier was found in the searched declarations. |

**Seeded source verification.** All 15 selections were followed to readable source text or a stated accessible parallel proof. The entries below give printed locators and extracted line witnesses. The source service was used for retrieval; source text was not copied into this report or repository. No README locator explicitly marked unverified was found.

| Target | Locator and text personally inspected | Assessment |
|---|---|---|
| 2.3 | Weibel III.5.2.1, pp.217–218, `weibel` lines 12469–12496; III.5.5.2, p.221, lines 12674–12680 | Stable centrality supports the stated finite-kernel injectivity deduction. The finite-rank hypothesis is retained rather than claimed automatically. |
| 4.1 | Weibel IV.1.7.1, p.265, lines 15316–15327; Ex.IV.1.8, p.274, lines 15933–15947 | K₂/π₂ and the Hurewicz route match; use the simply connected elementary-plus cover. |
| 4.5 | Weibel IV.4.11–4.11.1, pp.308–309, lines 18020–18064; IV.7.1–7.2, p.328, lines 19264–19283 | Projective group completion/Q comparison supports the based positive-degree statement. No functorial K₀-product splitting is required. |
| 5.11 | Weibel III.6.1.1 proof, p.231, lines 13295–13303 | Cyclic pairing calculation and complementary nonsquares kill the potential order-two generator; 𝔽₂ and 𝔽₃ pass separately. |
| 6.17 | Steinberg §6, Theorem 8(b), Lemmas 36–38, pp.66–69, `steinberg-1967` lines 1790–1914; Matsumoto Lemma 5.3, pp.24–25, `matsumoto-1969` lines 959–999 | Type A rank≥2 gives n≥3 and includes 𝔽₂/𝔽₃. The lifted Bruhat and toral relations are the relevant inputs, not an assumed faithful matrix representation. |
| 10.5 | Weibel III.7.4–7.4.2, pp.247–248, lines 14243–14299 | Exact sequence omits infinity; degree filtration proves surjectivity. Polynomial representative equality is in F[t], correcting the source's slip. |
| 10.6 | Weibel Definition III.7.5, p.248, lines 14300–14336 | Negative infinity residue gives positive degree and the stated norm. |
| 10.12 | Weibel Ex.III.7.7, p.257, lines 14901–14911 | Source assumes F′/F finite; README discloses its extension to arbitrary F′. The route via §9.18 and finite-residue lifts proves the extension without finite-dimensionality of F′. Repeated factors must retain multiplicity. |
| 10.19 | Weibel proof III.7.6.3, p.249, lines 14375–14395; Gille–Szamuely Lemma 7.3.10, pp.200–201, `gille-szamuely-2006` lines 8029–8066 | Four-case calculation supports the route. Recomputed ramified/unramified cases with the roadmap's last-slot sign, and inseparable residue norm via determinant. |
| 11.5 | Weibel III.7.3, p.246, lines 14197–14228; V.6.6.4 and following specialization, p.410, lines 24625–24631 | The source specialization uses a left [π] factor. README's correction by r(x){−1} and parameter dependence agree; λ and q are not equated. |
| 11.8 | Weibel V.6.6–6.6.1, p.409, lines 24557–24571; p.410, lines 24609–24624 | Right-linear boundary gives inverse tame symbol in degree two. Values 2 versus 3 over 𝔽₅ detect the inversion. |
| 12.8 | Moreno Ramírez Lemma 4.4.1.6, pp.118–119, `moreno-ramirez-2017` lines 5617–5669 | Accessible proof verifies kernel-in-monomial route. README supplies the auxiliary rank-two base explicitly. Original Milnor Lemma 10.7 remains unverified as a locator. |
| 13.2 | Weibel III.5.11, p.226, lines 13031–13062 | Modern 1−rs convention and D1–D3, including relative D3 input guard, match. Original Dennis–Stein text was unavailable. |
| 13.3 | van der Kallen §5.2, p.488, `van-der-kallen-1977` lines 628–642; §5.4(3), p.489, lines 663–667 | Three simultaneous unimodular-pair perturbations and semilocal residue bound match; 𝔽₂/𝔽₃ are excluded only from this predicate, not the local presentation. |
| 13.14 | Weibel Ex.III.5.13, p.229, lines 13232–13239 | Source gives the ℤ/4 calculation. The roadmap's particular detector was checked independently on all 108 admissible relation instances. |

Additional checked locators include Milne IV.3.14/3.16, pp.137–138 (`milne-cft` lines 6138–6189), for the crossed-product Brauer comparison, and the erroneous source formulas listed in Source issues. Reading the cited locator does not certify unrelated arguments elsewhere in that work.

**Computed adversarial table.** Additive zero in a unit-group tag means multiplicative 1. Residues are parameter-last unless a row explicitly says otherwise. A “values agree” entry records the displayed test; ownership/form repairs are still required where named. The table has one row for each of the 146 numbered targets. Its explicit instances also test zero rings, n=0/1/2, small residue fields, noncommutative coefficients, nonreduced tensors, inseparable residues, negative valuations, arbitrary field extensions and wrong sign/zero-map models.

| Statement | Instances tried | Values on the first side | Values on the other side | Result / change |
|---|---|---|---|---|
| 0.1 | Zero ring; coefficients E12,E21 in M₂(ℤ) | GL=E=1; forward coefficient E11, reverse −E22 | Identity matrices; ab=E11, −ba=−E22 | Values agree; ownership R01 |
| 0.2 | I=0,R; semilocal ℤ/4 | Relative K₁=0,K₁(R); determinant of [3]=3 | Congruence quotient=0,GL/E; unit 3 | Values agree; ownership R01 |
| 0.3 | Zero ring; n=0,1 in the Lean adapter; identity coefficient map | All root letters collapse; empty generator sets; x(a)↦x(a) | Trivial presented groups; identity map | Values agree; keep only genuine adapters (R01) |
| 0.4 | 𝔽₂,𝔽₃,ℝ | K₂=0,0; sign of {−1,−1}=1 in ℤ/2 | Matsumoto=0,0; sign pairing=1 | Values agree; supplied theorem (R01) |
| 1.1 | Heisenberg group over 𝔽₃, a=(1,0,0),b=(0,1,0) | [a,b]=(0,0,1); ba(ab)⁻¹=(0,0,2) | Positive lifted bar boundary=[ba]−[ab] gives central coordinate 2 | Agrees; inverse convention would give 1 |
| 2.1 | Outer rank 3 over M₂(ℤ), c=E12,v=E21 | Column increment E11; row increment −E22 | cv=E11; −vc=−E22 | Agrees; detects noncommutative order |
| 2.2 | Zero ring; x12(1) over ℤ | Centre and kernel trivial at zero; [x12(1),x23(1)]=x13(1)≠1 | Kernel image of x12(1) is e12(1)≠1 | Agrees; noncentral root excluded |
| 2.3 | Kernel-injective stabilization; commutator of k∈ker φn with g | Stable image of [k,g]=1; [k,g]∈ker φn | Injectivity forces [k,g]=1 | Agrees; no inference if injectivity is removed |
| 3.1 | Identity extension; central lift changes; a=0 | Normalized lift xij(a); zero lift commutator=1 | [xik(a),xkj(1)]=xij(a); central factors cancel | Agrees; nontrivial section value at 1 cancels |
| 3.2 | n=5, zero ring; split extension C×St₅(R) | Only section into C over the trivial group; normalized lift (1,xij(a)) | Projection gives xij(a); difference of sections St₅→C is zero by perfectness | Agrees; n≥5 retained in Lean |
| 3.3 | Zero ring; positive torus cycle | Both groups 0; torus class represented by inverse commutator | Calibration sends central coordinate 2 to the ordered torus class | Agrees; same sign as §1.1 |
| 4.1 | R=0 and 𝔽₃; torus test of §1.1 | K₂=0 in both; calibrated inverse commutator | π₂=0; Hurewicz image is the ordered torus class | Agrees; no GL simple-connectivity assumption |
| 4.2 | Calibration template C=H=π₂=ℤ with κ=ρ=id | χ(1)=ρ⁻¹κ(1)=1 | Required normalization κ(1)=1; negated χ gives −1 | Agrees; excludes arbitrary equivalence |
| 4.3 | Identity and quotient ℤ→ℤ/2 | Identity sends z to z; target comparison sends every class to 0 | H₂(E(id))=id; K₂(𝔽₂)=0 | Agrees; noninjective ring map allowed |
| 4.4 | Same plus model with u=id | u_*χ(z)=χ(z) | χ′(z)=χ(z) under the specified model comparison | Agrees; abstract unmarked isomorphism not used |
| 4.5 | R=0; scalar extension ℤ→ℤ/2 | π₂K_Q(0)=0; image of integer order-two class=0 | Classical groups 0 at zero and at 𝔽₂; projective extension remains split-exact | Agrees; flatness is unnecessary here |
| 5.1 | Zero pairing; constant 1 into ℤ; real sign | 0=0+0; constant 1 gives 1≠2; c(−1,−1)=1 | Bilinearity and complementary relation give 0; negative-negative detector=1 | Zero is allowed; constant 1 rejected |
| 5.2 | 𝔽₂; ℚ pair (1/2,1/2); ℝ pair (−1,−1) | Tensor quotient values 0,0,nonzero | Complementary sum=1; real sign evaluates last class to 1 | Agrees; exterior-square wrong model rejected |
| 5.3 | Unit 1; real −1; characteristic 2 | {1,a}=0; {−1,−1} detected by 1; {a,a}={a,1}=0 in char 2 | {a,−a}=0; {a,a}={a,−1}; twice real detector=0 | Agrees; no division by 1−a at a=1 |
| 5.4 | F=𝔽₂, degrees 0,1,2 | ℤ,0,0; empty symbol=1 and {1}=0 | Tensor grading and unit-group presentation give ℤ,0,0 | Agrees; n=0 is not discarded |
| 5.5 | Relation a⊗b with a+b=1; multiply by degree-one r,s | Relation degree 2 becomes degree 4; degree 0,1 ideal components=0 | Two-sided homogeneous ideal has same degrees; x⊗y−y⊗x≠0 before quotient | Agrees; commutative quotient wrong model rejected |
| 5.6 | 𝔽₂ constant 7; ℝ {−1}²; complementary adjacent entries | 7 survives; sign-square detector 1; {r,a,b,s}=0 | Degree-zero ℤ; X²≠0 mod 2; two-sided relation kills middle pair | Agrees |
| 5.7 | ℚ {1/2,1/2}; ℝ {−1,−1} | Degree-two images 0 and sign 1 | Tensor-square quotient values 0 and sign 1 | Agrees; both composites fix generators |
| 5.8 | ℚ→ℝ; id on 𝔽₂ | {−1,−1} has sign 1; constant 7↦7 | Image-pair sign 1; degree-zero identity 7 | Agrees; entry order retained |
| 5.9 | Real pairs (−1,−1),(2,−1),(−1,2) | Sign detector 1,0,0 | Both-negative test 1,0,0; last pair sums to 1 | Agrees |
| 5.10 | ℂ(t), {t,t}; ℝ repeated −1 triple | Residue at t of {t,t}=−1; real mod-two detector X³ | Residue of {t,−1}=−1; transposition sign fixes 2-torsion | Agrees; i∈F does not force integral alternation |
| 5.11 | 𝔽₂,𝔽₃,𝔽₅ with generator 2 in 𝔽₅ | Generators killed by 1, (−1,−1), and (3,3) | 3+3=1 mod 5 and 3=2³; 9z=z=0 as 4z=0 | Agrees; no odd-cardinality exclusion |
| 5.12 | 𝔽₃, n=0,1,2,3 | ℤ,C₂,0,0 | Degree≥2 products factor through zero degree two | Agrees; n≥2 retained in Lean |
| 5.13 | p=2, ambient ℚ, subgroup ℤ | 1/2+ℤ≠0 but twice it is 0 | ℤ fails 2-divisibility; ℚ/ℤ has 2-torsion | Negative control works; p=1 gives identity |
| 5.14 | Algebraic closure of 𝔽₂; ℂ degree 1; m=1 | Higher groups 0, so m-map unique; (−1)²=1 in ℂˣ | Bijective on zero group; degree-one squaring not injective | Agrees; n≥2 and m>0 retained |
| 5.15 | ℝ degree 1 and mod-two degrees 0,1,2 | −1↦(1,0), positive 4 has square root 2; {−1}↦X | Sign/positive decomposition; 1,X,X² all nonzero mod 2 | Agrees; n=0 decomposition correctly excluded |
| 6.1 | Same matrix A; e12(1),e23(1); integer diagonal pair | [Ã,Ã]=1; noncommuting pair projects to e13(1); diagonal star has sign 1 | Alternation of star; second pair not admissible; {−1,−1} nonzero | Agrees |
| 6.2 | w12(1),w12(−1),w12(2) over ℚ | Blocks (0,1;−1,0), (0,−1;1,0), (0,2;−1/2,0) | Three transvection products give exactly those blocks | Agrees |
| 6.3 | h12(1),h12(2),h23(2) | Diagonals (1,1,1),(2,1/2,1),(1,2,1/2) | w(u)w(−1) has the same diagonal | Agrees |
| 6.4 | Unit 1; integer (−1,−1) | {1,u}=1; sign of {−1,−1}=−1 | Commutator of distinct overlapping diagonals; nonzero class in C₂ | Agrees; repeated-index commutator would fail |
| 6.5 | ℚ, w12(2) conjugating x12(1) | Opposite-root coefficient −1/4 | −u⁻²s=−1/4; n=2 excluded from third-root argument | Agrees |
| 6.6 | ℚ(t), r=2,s=t; r=s=−1 over ℝ | Tame of toral defect 2; real sign −1 | Ordered diagonal commutator has tame 2; real sign −1 | Agrees with stated order; inverse would give 1/2 |
| 6.7 | ℚ at 5, r=1/5 and 1−r=4/5 | Signed tame=−4=1 mod 5 | Steinberg class=1; unsigned expression=4 | Agrees; r=0,1 excluded from unit pairs |
| 6.8 | ℤ, r=−1 and r=1 | {−1,1}=1 and {1,−1}=1 | {r,−r}=1; 1−r=2 or 0 need not be a unit | Agrees |
| 6.9 | ℝ r=−1; 𝔽₄ any unit | Diagonal has sign −1; characteristic-two diagonal=1 | {r,−1} gives same; skew-symmetry gives square 1 | Agrees |
| 6.10 | W₃ over 𝔽₂,𝔽₃,𝔽₅ | Matrix-image orders 6,24; diag(2,3,1) occurs over 𝔽₅ | 3!(q−1)²=6,24; h12(2) supplies missing nonsign diagonal | Agrees; zero ring permutation quotient excluded |
| 6.11 | 𝔽₅, w12(2) on x21(1),x23(1) | Coefficients 1,2 | −2²=1 mod 5, and 2·1=2 | Agrees; parameter inversion would give 3 in second case |
| 6.12 | ℤ, distinct versus repeated index pairs | {−1,−1} has real sign −1; [h12(−1),h12(−1)]=1 | w12(1)⁴ gives the nontrivial stable kernel class | Agrees; repeated-index wrong model excluded |
| 6.13 | 𝔽₂,𝔽₃; ℤ; zero ring | Monomial kernels 1,1; integer bound {1,g}; zero group 1 | Finite symbol groups vanish; integer symbol group generated by g with g²=1 | Agrees; finite-rank centrality here is proved by root action |
| 6.14 | Upper rank-three word x12(1)x13(0)x23(1) | Matrix entries (12,23,13)=(1,1,1) | Ordered multiplication cross term ab=1; raw (1,1,0) is wrong | Agrees; [x12(1),x23(1)]=x13(1)≠1 |
| 6.15 | 𝔽₂ rank 3; zero coefficient Bruhat branch | Upper subgroup order 8, monomial image order 6; zero root word=1 | SL₃(𝔽₂) order 168; Bruhat cells have 8·Σw2^length(w)=168 | Agrees; no invertibility required in zero branch |
| 6.16 | 𝔽₂ and 𝔽₃ rank 3; ℝ | Kernel 1 for finite fields; real sign on kernel element −1 | SL₃ orders 168 and 5616; real symbol survives | Agrees; does not claim these small groups are universally centrally covered by themselves |
| 6.17 | Type A₂ over 𝔽₂,𝔽₃; real toral defect at −1 | Presentation quotient orders 168,5616; real defect sign −1 before quotient, 1 after | SL₃ has those orders; imposed toral relation kills the defect | Agrees with Steinberg Theorem 8(b); small fields included |
| 6.18 | Fields 𝔽₂ and ℝ; local ℤ/4 | Generated groups 0, real nonzero class, C₂ generated by {3,3} | Unit symbols produce 0, sign 1, parity 1 | Agrees; no claim for arbitrary non-semilocal rings |
| 7.1 | ℚ complementary units; ℝ (−1,−1) | Milnor map sends class to 0; sign of second image 1 | Classical root-word relation gives 0; supplied real sign gives 1 | Agrees |
| 7.2 | ℚ(t), {2,t}; 𝔽₂ | Composite fixes tame value 2; zero-group identity | Original tame value 2; reversed entries give 1/2 | Agrees; inverse fixed on generators |
| 7.3 | ℚ→ℝ→ℂ; identity | {−1,−1} maps through sign 1 to 0 in ℂ | Direct restriction to ℂ is 0; identities fix symbols | Agrees; naturality is not injectivity |
| 7.4 | Leading coefficient on ℚ(t), constant 2, t/(t−1) | 2↦2; lead(t/(t−1))=1 | Splitting fixes constants; lead(1−t/(t−1))=−1 gives symbol {1,−1}=0 | Agrees including equal-degree cancellation |
| 7.5 | ℝ→ℂ on {−1,−1} | Nonzero order-two class maps to 0 | Twice the source class=0; extension degree 2 kills kernel | Agrees; injectivity would be false |
| 8.1 | ℚ(t), product of unit classes 2,t | Raw inverse comparison has tame 1/2; normalized one has tame 2 | ε=−1 from bar boundary; θ₂♮ cancels that sign | Agrees; finite fields cannot calibrate this sign |
| 8.2 | ℚ degrees 0,1,3 | 1↦rank-one class; 2↦determinant 2; order-two class↦24 mod 48 | Ranks and units agree; 2·24=0 but image has order 2 not 48 | Agrees; degree-three map not claimed onto |
| 8.3 | ℚ(t), {2,t} | Tame of (θ₂♮)⁻¹Φ₂{2,t}=2 | Tame of Matsumoto {2,t}=2; reversed product gives 1/2 | Agrees |
| 8.4 | 𝔽₃ degree 3; ℚ order-two class | 0↦0; nonzero class↦24 in ℤ/48 | Ordered triple product; image order 2 | Agrees; injectivity ownership remains downstream |
| 9.1 | ℚ at 5: 2,10,2/5; parameters 5,10 | Unit parts with parameter 5 all 2; unitPart10(5)=1/2 | f·π^(−ord f); exponent −2 gives unit part 1 | Agrees; absolute-value exponent fails |
| 9.2 | ℚ at 5, pairs (2,5),(5,2),(5,5),(10,5) | Tame values 2,3,4,3 | Signed residue formula gives 2,2⁻¹,−1,−2 mod 5 | Agrees; all f,g are units of field |
| 9.3 | (10,5), parameters 5 and 10 | −2=3; −(1)/(1/2)=3 mod 5 | Both compute the parameter-free tame symbol 3 | Agrees |
| 9.4 | (1/5,4/5); (2,−1) at 5 | Signed tame −4=1; unit-unit tame 1 | Both Steinberg classes vanish | Agrees; unsigned first result 4 rejected |
| 9.5 | Classes {2,5},{5,2},{2,3} at 5 | 2,3,1 multiplicatively (last is additive zero) | Induced quotient homomorphism has same values; 2 generates 𝔽₅ˣ | Agrees and surjectivity tested |
| 9.6 | Normalized, inverse, zero and unsigned pairings at 5 | On (2,5): 2,3,1,2; unsigned (1/5,4/5)=4 | Required mixed value 2 and Steinberg value 1 | Only signed normalized pairing passes both tests |
| 9.7 | ℚ⊂ℚ(√5), e=2; pairs (2,5),(5,5) | Target tame 4,1 | 2²=4 and (−1)²=1 in 𝔽₅ | Agrees; no inertia-degree coefficient |
| 9.8 | Negative orders (1/5,4/5) and (10,5) | Unit-part tame values 1,3 | Parameter-free formula values 1,3 | Agrees |
| 9.9 | L(𝔽₅), L(𝔽₂) | Π²={4}Π; Π{2}={3}Π; Π²=0 over 𝔽₂ | Relation {−1}Π; odd graded interchange; −1=1 in char 2 | Agrees; exterior Π²=0 fails over 𝔽₅ |
| 9.10 | 5,5⁻¹,−5 at 5 | Serre values Π,−Π,{4}+Π; d(5)d(−5)=0 | Π{4}+Π²=2{4}Π=0 | Agrees; omitting Π² term leaves nonzero {4}Π |
| 9.11 | {50}; {5,2}; {t,5,2} over ℚ(t) | Residue 2 in ℤ, specialization 2 in 𝔽₅ˣ; tame 3; residue {5,2} | Orders/unit part; last-slot sign gives −{2}; degree-three sign positive | Agrees; field-unit and integer targets distinguished |
| 9.12 | Degree 1 at 5: units 6,2 and parameter 5 | (λ,∂)(6)=(1,0), (2)=(2,0), (5)=(1,1) | Only 6 lies in principal units; kernel characterized by residue 1 and order 0 | Agrees |
| 9.13 | ℚ, {2,5} and {2,−1} | Nontrivial support {5} and empty set | Entry-order support {2,5} and {2}; containment is strict | Agrees; does not assert equality |
| 9.14 | At 5, x={5},y={2}, then swap | Residues 3 and 2 | λ(x)∂y−∂xρ(y)=−{2}; swapped formula={2} | Agrees in last-slot convention; printed first-slot formula corrected |
| 9.15 | Parameters 5 and 10 on {5} | Specializations 1 and 3; residues 1 and 1 in ℤ | λ10=λ5−{2}; ∂ unchanged | Agrees; specialization independence rejected |
| 9.16 | Degree 2 pair {2,5}; degree 3 {5,2,t} | Last residue 2 versus first residue 3; degree-three both {5,2} | Factor (−1)^(n−1) is −1,+1 respectively | Agrees |
| 9.17 | ℚ₅ modulo 3, degree 1; excluded modulus 5 | Quotient C₃; for modulus 5 actual group C₅² | 𝔽₅ˣ/3⊕ℤ/3=C₃; incorrect modulus-5 prediction C₅ | Agrees; residue-invertibility is essential |
| 9.18 | t=s² over ℚ; ℚ(t)→ℚ(u)(t) and new place t−u | ord_s(t)=2; residue of {2,t}=2 at t and 1 at t−u | e·ord_t(t)=2; e=1 at t; restriction trivial at t−u | Agrees; handles infinite extensions and trivial restriction separately |
| 10.1 | ℚ(t), parameters t⁻¹ and 2t⁻¹ | Specialization of {t}: 1 and 2 | Leading coefficient is 1; changed unit part is 2 | Agrees; leading-coefficient retraction uses fixed parameter |
| 10.2 | ℚ(t), e₁=t,e₂=t−2, h=2 | Residue at t−2 of {t,t−2}=2 | {2,t−2}−{2,t}+{t,−1} has residue 2; printed smaller family gives 1 | Agrees with corrected reduction |
| 10.3 | π=t−b, input {2}; degree-one input 1 | Section class {2,t−b}; degree-one {t−b} | Residues 2 and 1 respectively | Agrees; exact normalization |
| 10.4 | Degree 1, F=𝔽₂, d=1, polynomials t,t+1 | Residue vectors (1,0),(0,1) | Basis of L₁/L₀≅ℤ² | Agrees; residue kills constants |
| 10.5 | Degree 1 on t; degree 2 on {2,t} over ℚ | Finite residues: 1 and 2; infinity −1 and 1/2 | Affine direct-sum quotient ℤ-coordinate 1; normed total 0 or 1 | Agrees; adding infinity destroys surjectivity onto unrestricted sum |
| 10.6 | ℚ(i)/ℚ, degree 0 input 1 and unit 1+i; identity extension | Transfer 2 and 2; identity transfer x | −∂∞(t²+1)=2; determinant norm (1+i)(1−i)=2; −∂∞ lift=x | Agrees; opposite sign would give −2 in degree 0 |
| 10.7 | ℚ(∛2)/ℚ on ∛2; ℚ(i)/ℚ on 1+i | Norms 2 and 2 | (−1)³·(−2)=2; (1+i)(1−i)=2 | Agrees with determinant, not unsigned resultant |
| 10.8 | ℚ(i)/ℚ, base scalar 3, y=1 in degree 0 | N(res{3})={9} | 2{3}={9}; projection formula on y=1 | Agrees |
| 10.9 | Degree-two field extension, degree 0 input 1, degree 1 scalar 3 | Nres(1)=2; Nres(3)=9 | Degree action 2·1=2; 3²=9 | Agrees |
| 10.10 | ℚ(t), symbol {2,t} | Finite factor 2 and infinity factor 1/2 | Product 1; degree-one divisor t has sum 1−1=0 | Agrees; infinity cannot be omitted |
| 10.11 | p=3, ℝ→ℂ; 2-primary class {−1,−1} | Restriction kills class; annihilator 2 | 2 is prime to 3; if also 3δ=0 then δ=−2δ+3δ=0 | Agrees; no valuation assumed on infinite closure |
| 10.12 | ℚ(√2) base changed to itself; purely inseparable degree p; ℚ(u) | Degree 0: 2; p; 2 | Two degree-one factors 1+1; one factor length p; irreducible quadratic degree 2 | Agrees; arbitrary-base extension follows residue calculation, beyond source’s finite case |
| 10.13 | p=2, ℝ⊂ℂ, degree 1 element i | One outside entry i suffices | Every degree-one symbol is one outside entry; quadratic irreducibles remain the excluded ℚ example | Agrees; prime-power-extension hypothesis retained |
| 10.14 | ℚ(i)=ℚ(−i), degree 0 and unit 1+i | Both transfers give 2; norm(1+i)=2 | Degree 2 and determinant norm independent of generator | Agrees |
| 10.15 | ℚ((s))/ℚ((t)), t=s²; char-2 ferocious quadratic | ord_s(s)=1,ord_s(t)=2; ferocious e=1,f=2 | Normalized extension e=2; second residue is k(√a), not separable | Agrees; arbitrary residue fields retained |
| 10.16 | Ramified and unramified quadratic complete extensions | Bases (1,s),(1,i), ranks 2,2; lengths e=2,1 | ef=2·1=1·2=2 | Agrees; complete DVR need not have finite residue field |
| 10.17 | Ramified s²=t; unramified i²=−1 | N(s)=−t, N(2)=4; N(t)=t²,N(1+i)=2 | ord norm=f·ord:1,2; residue norm raised to e:2²=4 | Agrees; e and f not interchanged |
| 10.18 | Ramified self-base-change; ferocious self-base-change | Two generic factors; residue lengths 1 and 2 respectively | Σe′[l_i:L]=2=r·1 or 2=1·2 | Agrees; reduced residue factors alone give wrong answer 1 in second case |
| 10.19 | Four cases: ramified/unramified quadratics, symbols {s,2},{s,t},{t,2},{1+i,t} | Residues of transferred symbols: 1/2,1,1/4,2 | Residue norms: 1/2,1,1/4,2 | Agrees; mixed ramified {2s,t} gives 4 on both sides |
| 10.20 | Same quadratics, degree-one parameters s,t | ord N(s)=1; ord N(t)=2 | f·ord=1 and 2; pδ=dδ=0 with gcd(p,d)=1 gives δ=0 | Agrees; cancellation in torsion groups avoided |
| 10.21 | ℚ(i)(t)/ℚ(t), symbol {1+i,t}, t-place | Transferred tame=2 | Nℚ(i)/ℚ(1+i)=2; infinity gives reciprocal 1/2 | Agrees; sums all places above base place |
| 10.22 | Tower ℚ⊂ℚ(√2)⊂ℚ(√2,√3), degree 0 input 1 | Composite norm degree 2·2=4 | Degree 4 of total extension; both square paths 4 | Agrees; prime-degree commuting square is prior to general transitivity |
| 10.23 | Same degree-four tower and a different quadratic intermediate field | Both transfer towers send 1 to 4 and scalar 2 to 16 | Total degree action and field norm give 4 and 2⁴=16 | Agrees |
| 10.24 | Identity extension and degree-four tower | Nid(x)=x; Nres(2)=16 | Empty tower identity; degree action 2⁴=16 | Agrees; includes inseparable degree-p norm x↦xᵖ |
| 10.25 | Purely inseparable E/F of degree p, base change to E | res N on degree 0 is p; on scalar x it is xᵖ | E⊗F E has one residue E of length p; weighted transfer agrees | Agrees; multiplicity omission would give 1 and x |
| 10.26 | Ramified, unramified and purely inseparable complete extensions | Degree-one residues 1,2,1 | f·ord equals 1,2,1; nonreduced-residue length identity is 2=2 | Agrees; integral prime-to-ℓ annihilation retained |
| 10.27 | Split prime 5 in ℚ(i), input 1+i in degree 1 | ord₅ N(1+i)=ord₅2=0 | Sum of two local orders 0+0=0; at 2 norm valuation 1=f·1 | Agrees; sum cannot be replaced by one chosen place |
| 10.28 | ℙ¹, points 0,∞ and degree-two closed point t²+1 over ℚ | Local orders of t:1,−1,0; residue degrees 1,1,2 | Place dictionary has same orders and degrees | Agrees; closed point need not be rational |
| 10.29 | Proper ℙ¹ over ℚ, {2,t}; degree-one t | Normed tame product 2·1/2=1; divisor degree 1−1=0 | Integral reciprocity 1 and 0 | Agrees; removing infinity gives 2 or 1 and fails |
| 10.30 | Same curve, f=g=t; f=2,g=t | Factors (−1,−1) and (2,1/2) | Products 1 and 1; ord(tameUnit)=mn−nm=0 at every place | Agrees; total residue default is never used here |
| 10.31 | ℚ(t), f=t/(t−1),g=(t−2)/(t−3) | f(div g)=f(2)/f(3)=4/3 | g(div f)=g(0)/g(1)=4/3 | Agrees; supports {0,1} and {2,3} disjoint |
| 10.32 | ℚ and ℚ(i), n=3; real −1 symbol | Real-sign groups C₂ and 0; {−1,−1,−1}↦1 for ℚ | One real embedding versus none; all-negative product 1 | Agrees; n=2 would have additional residues |
| 10.32a | 𝔽₇((t)), ℓ=3,ζ=2; both Brauer comparison signs | [2,t]=4, invariant 2/3; [t,2]=2, invariant 1/3 | Correct comparison agrees; its negative interchanges 2/3 and 1/3 yet still is an additive equivalence | Mathematical symbol values agree; R02/R03 ownership and signature repair |
| 10.32b | 𝔽₇(t), {2,t}; single local invariant 1/3 | Local symbols 4 at 0,2 at ∞; total 1; single invariant sum 1/3 | Invariants 2/3+1/3=0; singleton family has no global preimage | Agrees; global injectivity is a separate target |
| 10.32c | 𝔽q(t), S={∞} or {0,∞}; perfect closure | S-unit ranks 0,1; [F:Fᵖ]=p for F=𝔽q(t) | Ranks #S−1; perfect closure has degree 1, so finite-generation hypothesis matters | Agrees; p-divisibility not conflated with absence of p-torsion |
| 10.33 | 𝔽₂(t) and its perfect closure, n=3; n=1 negative control | Higher Milnor groups 0 by finite-tuple descent; t nontrivial in degree 1 | Finite generated subfields have n≥3 vanishing; degree-one order of t=1 | Agrees; no finite-generation hypothesis silently added in Lean |
| 11.1 | ℤ_(5), symbol {2,5} | Quillen boundary determinant=3 | Inverse of roadmap tame 2 is 3 mod 5 | Agrees with right-linear boundary |
| 11.2 | Dedekind ℤ, residues of {2,5}; field viewed as Dedekind domain | Only 5-coordinate 2 (tame) or 3 (boundary); field has no height-one primes | Coordinatewise inversion; empty residue sum 0 | Agrees; localization sequence is supplied |
| 11.3 | DVR ℤ_(5), {5,2}; degree 3 symbol {2,s,t} | Boundary determinant 2; degree-three boundary Φ₂{2,s} | (−1)^(2−1) times tame 3 gives 2; degree-three sign +1 | Agrees |
| 11.4 | ℚ rational-prime family, {25/2}; repeated 5-adic family | Coordinates −1 at 2,2 at 5; repeated family has value 2 at every index for {2,5} | Principal divisor agrees; infinite nonzero support cannot lie in direct sum | Agrees; finite-character guard excludes repeated family |
| 11.5 | ℤ_(5), x={5}, parameters 5,10; x={s,t} over ℚ(s)((t)) | λ-values 1,3; q-values 4,2; higher λ=0,q=Φ₂{s,−1} | q=Φ(λ+r{−1}); s-residue of higher correction is −1 | Agrees; correction visible in degrees 1 and 2 |
| 11.6 | Unramified quadratic complete extension, {t,2} | Base boundary of norm has value 4 | Residue field norm of boundary value 2 is 4 | Agrees; using tame instead gives 1/4 on both sides |
| 11.7 | ℚ(i)/ℚ, {1+i,t} after adjoining t | Milnor transfer symbol {2,t}; normalized Quillen image has boundary 1/2 | Quillen transfer of product has same norm 2 and boundary 1/2 | Agrees; normalization tied to Φ₂ |
| 11.8 | At 5, symbols {2,5},{5,2},{5,5} | Tame values 2,3,4 | Boundary determinants 3,2,4; their inverses 2,3,4 | Agrees; sign measurable on first two, invisible on third |
| 12.1 | ℚ with all finite primes; {−1,−1} and {2,5} | First residues all 1; second residue 2 at 5 | First belongs to unramified kernel; second does not | Agrees; chosen valuation family matters |
| 12.2 | F=ℚ,S={5} | K₂(ℤ[1/5]) order 8; outside-S tame values vanish | Kernel C₂ and quotient 𝔽₅ˣ of order 4 give 2·4=8 | Agrees; requires global SK₁ input for surjectivity |
| 12.3 | F=ℚ,S=∅ | Integer kernel generated by {−1,−1}; sign −1; residues all 1 | K₂(ℤ)=C₂ maps injectively; quotient includes all finite residues | Agrees; individual surjectivity alone would not prove exactness |
| 12.4 | S={2} and S={5} over ℚ | Relative residue groups 𝔽₂ˣ=1 and 𝔽₅ˣ=C₄ | Orders of localized K₂ are 2 and 8 respectively | Agrees; prime 2 not dropped |
| 12.5 | ℝ pairs (−1,−1),(2,−1),(−1,2) | Multiplicative signs −1,1,1 | Negative-negative test and complementary relation match | Agrees; supplies lower bound at integers |
| 12.6 | Integer w12(1), rank 1 and auxiliary rank 2 | Matrix w²=−I,w⁴=I; rank-one groups trivial | Signed monomial tail preserves lattice norm; auxiliary rank-two kernel not declared C₂ | Agrees |
| 12.7 | Case-6 tuple (4,3,−2), ε=1 | abs(a+εc)=2<4; abs(c+εa)=2=abs(c) | Weak Weyl-tail branch applies; claimed strict second inequality would be false | Agrees with roadmap’s repaired boundary branch |
| 12.8 | Auxiliary ranks 1,2; last-column word with coefficients (2,3) | Rank-one kernel=1; last-column image I+2E13+3E23≠I | Faithful last-column map forces both coefficients 0 for a kernel word | Agrees; induction has genuine rank-two base |
| 12.9 | n≥3, ℤ, g=w12(1)⁴ | Kernel generated by g; g²=1 | At most two elements, independently of real detector | Agrees; no upper bound imposed on auxiliary rank 2 |
| 12.10 | ℤ; detector and upper bound | g has sign −1 and g²=1 | C₂ generator has value 1 mod 2 and twice it 0 | Agrees; exact order two follows |
| 12.11 | ℚ, {2,3} and {−1,5} | Residues −1 at 3; −1 at 5 respectively; real signs +1,+1 | Neither lies in integer kernel; residue components nonzero | Agrees; infinitely many odd-prime components |
| 13.1 | ℚ: (r,s,u)=(−1,−2,−1),(1,−1,2); r or s=0 | Four factors give diag(−1,−1), then h(u)⁻¹ gives I; at u=2 a wrong final h gives diag(4,1/4) | Modern symbol {−1,−1} has sign −1; a word lacking final inverse is not generally in kernel | Agrees; old/new words kept distinct |
| 13.2 | All admissible ℤ/4 pairs/triples; D2 r=2,s=1,t=2 | 12 D1,40 D2,56 D3 cases each defect 0 mod 2; 0+1=1 | Detector respects all three relations; (1−rs)(1−rt)=1−r(s+t−rst) | Agrees; guards include all displayed pairs |
| 13.3 | 𝔽₂,𝔽₃,𝔽₅ and product 𝔽₅×𝔽₅ | All t excluded in first two; at most 3 excluded among 5; coordinate choices exist in product | 0,0,at least 2 choices; semilocal residue bound q≥4 | Agrees; local does not imply threefold stable |
| 13.4 | Field 𝔽₃ and pair r=−1,s=−2 in ℚ | D(2,1)↦{2,2}=0 over 𝔽₃; rational pair↦{−1,−1} | Field symbol presentation values 0 and real sign 1 | Agrees; inverse D(a,a⁻¹(1−b)) recovers {a,b} |
| 13.5 | ℤ/25 and 𝔽₅×𝔽₅ | Residue-cardinality tests 5 and (5,5); threefold stability true | Required bound ≥4 holds; rank range starts at 3 | Agrees; rank-two statement not inferred |
| 13.6 | ℤ/4→𝔽₂ and ℤ/9→𝔽₃ | A unital section would imply 2=0 mod 4 or 3=0 mod 9, both false | Local presentations still include these nonsplit examples | Agrees; split-radical route alone would not suffice |
| 13.7 | I=0,R and (ℤ/4,(2)) | Relative groups 0,K₂(R); relative D(2,2) maps to detector 1 | Double gives diagonal, product, and surjection to C₂ respectively | Agrees; relative group not defined as absolute kernel |
| 13.8 | I=0,R and (ℚ[ε],(ε)) | Fibre π₂=0,K₂(R),0 | Relative Steinberg comparison gives the same; absolute constant {−1,−1} persists separately | Agrees; nonsplit fibre boundary not discarded |
| 13.9 | A=𝔽₃[x,y]/(x²,y²),I=(xy); r=x,s=y,t=x+y | Unguarded D3 differential defect (1,1)≠(0,0) | Correct guard excludes triple since no input lies in I | Agrees; output-only guard would be false |
| 13.10 | ℚ[t][ε]/ε²; D(ε,t),D(t,ε); ℚ(t)[ε]/ε³ | Differentials dt,−dt; I²⊗Ω≅k·dt but inclusion-induced map 0 | Ordered formulas ±ε⊗dt; I annihilates Ω | Agrees; abstract tensor product not asserted zero |
| 13.11 | A=ℚ[x,y]/(x,y)²,I=(x,y) | Differential target 0; alternating detector ΛD(x,y)=1 | Kernel contains nonzero S; quotient by S is 0 | Agrees; δ injectivity would be false |
| 13.12 | Square-zero (ℤ/4,(2)); ℚ[ε] and ℚ(t)[ε] | D(2,2) detected by 1; relative groups 0 and k·dt | Ω𝔽₂/ℤ=0 but kernel generator survives; differential cases agree | Agrees; nilpotent double-entry symbol need not vanish |
| 13.13 | R=ℚ[t],ℤ,𝔽₂ | D(ε,t)↦dt; Mℤ=C₂; M𝔽₂=0 | Ωℚ[t]/ℤ contains dt; Ωℤ/ℤ=0 differs from C₂; perfect-char-2 case vanishes | Agrees; invertibility of 2 essential for Ω formula |
| 13.14 | All ℤ/4 admissible generators; (1,1) negative control | λ(2,2)=λ(2,3)=λ(3,2)=1, λ(1,2)=0; all 108 relation defects=0 | C₂ generator D(3,2) has value 1; 1−1·1=0 is not a unit | Agrees; exhaustive table computation recorded |
| 13.15 | n=1,2,3 in ℤ/2ⁿ | K₂ values 0,C₂,C₂; reduction of {−1,−1} has parity 1 for n≥2 | Uniform order-two bound and ℤ/4 detector; n=1 excluded | Agrees; no good-prime restriction |

## Not verifiable

- `milnor`: the original *Introduction to Algebraic K-Theory* was not obtained through the Princeton/JSTOR listing and legal-copy discovery. In particular Lemma 10.7, pp.90–92, was not directly certified; the parallel Moreno Ramírez proof and Weibel statements were read. The missing request also covers its other citations in Layers 0–4, 6 and 12.
- `dennis-stein`: the 1973 radical-ideals paper was not obtained through legal-copy discovery or the Springer LNM 342 listing. Weibel supplies the readable modern D1–D3 statement, but that does not certify every original page or old-convention formula.
- `suslin-1980`: the DOI resolved to MathNet without usable PDF discovery; the English full-text endpoint timed out. The original integral curve-reciprocity proof was not read. The roadmap's properness and finite-extension hypotheses and its degree-one/two examples were checked independently.
- The source service classified `bass-tate-1973`, `tate-1976`, `dennis-stein-survey`, `dennis-stein-1975`, `keune-1978`, `loday-relative-1978`, `maazen-stienstra-1977` and `weil-bnt` as paywalled/uncertified. Their publisher/DOI listings were attempted; no paywall was bypassed. Their exact original statements/proof steps remain uncertified. Readable secondary accounts or adjacent papers were used only where explicitly identified, not as a claim to have read these originals.
- The three unresolved legal-text requests are consolidated in the job's missing-reference file. Paywalled/uncertified works are not re-requested. No source manifest or pull-request file was edited. This review is complete as a review, with these certification limits; it is not parked awaiting texts.

## Source issues

- **Error** in weibel at Exercise III.7.1, printed p.257 (`weibel` lines 14863–14866): the source says unit-part specialization is independent of the parameter; it should be parameter-dependent, with λ₅(5)=1 and λ₁₀(5)=3 over 𝔽₅; affects a stated result.
- **Error** in weibel at Exercise III.7.10, printed p.258 (`weibel` lines 14947–14950): the source says the last-slot product formula applies to its first-slot residue; it should be transported by the degree sign, giving ∂first{5,2}=2 rather than 3; affects a stated result.
- **Error** in weibel at Exercise III.6.2, printed p.244 (`weibel` lines 14027–14029): the source says reduction keeps only the first polynomial as the possible high-degree entry; it should allow the other high-degree polynomial too, as the t−2 residue of {t,t−2} demonstrates; affects a stated result.
- **Misprint** in weibel at the proof of Lemma III.7.4.1, printed p.247 (`weibel` lines 14280–14282): the source says the chosen polynomial representatives sum to one in F; it should say they sum to one in F[t]; affects nothing.
- **Error** in weibel at Exercise III.5.9, printed p.229 (`weibel` lines 13208–13209): the source says the two inverse torus factors occur in the order s then r; it should use r then s for its commutator-symbol convention; affects a stated result.
- **Misprint** in weibel at III.5.11, printed p.226 (`weibel` lines 13052–13053): the source says the multiplicatively written symbol with second entry one equals zero for every r; it should equal one when 1−r is a unit; affects a stated result.
- **Error** in morrow-2014 at Remark 3.10, arXiv v1 printed p.8 (`morrow-2014` lines 296–305): the source says to finish the four root factors with h₁₂(1+ab); it should use its inverse, since a=b=1 otherwise gives diagonal (4,1/4); affects a stated result.
- **Misprint** in moreno-ramirez-2017 at proof of Lemma 4.4.1.5, printed p.118 (`moreno-ramirez-2017` lines 5610–5615): the source says a and εc have the same sign after abs(a+εc)<abs(a); it should say opposite signs, for example a=2, εc=−1; affects the proof.
