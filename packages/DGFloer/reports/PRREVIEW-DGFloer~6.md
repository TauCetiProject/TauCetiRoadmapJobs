# Review of DGFloer (pull request #963 at b4e6024)

**Verdict:** needs changes

🤖 Independent AI review. Incremental re-review of 16 changed lines since `42399cc`. Three blocking findings remain. The targeted build now passes, but the dependency gate fails. The review covers the four changed README passages, their suppliers and dependent claims, and the Lean module-header change; unchanged mathematics is carried from [review 5](PRREVIEW-DGFloer~5.md), with its verification limits retained.

## R01 (P1) — The supplier cycle remains

**Location:** `TauCetiRoadmap/DGFloer/README.md:53`, `:90–91`, `:286`, `:854–857`, `:1669`, `:1712`: “HomotopySpheres Stage 4A–4B supplies stable real Bott periodicity only”.

**Claim:** DGFloer can consume TangentialBordism and HomotopySpheres while supplying their prerequisites.

**Witness:** TangentialBordism consumes StringOrientation and DGFloer at `TauCetiRoadmap/TangentialBordism/README.md:142–143`; StringOrientation consumes DGFloer at `TauCetiRoadmap/StringOrientation/README.md:214–217`; HomotopySpheres consumes TangentialBordism at `TauCetiRoadmap/HomotopySpheres/README.md:1203`. The checker reports the four-roadmap cycle.

**Repair:** Separate the later applications into DGFloer Part II, after their suppliers. Keep the earlier topological interfaces used by StringOrientation and TangentialBordism in the base, with independently owned prerequisites. Remove the base's returning supplier edges, including its mapping-space, collapse, realization and stable-Bott uses; changing only the table does not suffice. On the witnessed graph, removing the base's edges to TangentialBordism and HomotopySpheres breaks both return paths. Require a clean dependency check while preserving the earlier consumers' cited targets.

This also accounts for the gate's upward edges to HomotopySpheres and TangentialBordism. It carries review 5 R01; no relevant repair was made.

## R02 (P2) — The ImplicitAtlases upward edge still fails the gate

**Location:** `TauCetiRoadmap/DGFloer/README.md:1399`, `:1930`: “Apply ImplicitAtlases V0–V6 on these actual inputs”.

**Claim:** This revision of the roadmap on main can consume the later virtual engine.

**Witness:** The checker prints `UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]`. `TauCetiRoadmap/ImplicitAtlases/README.md:853` does supply Layers 0–6, explicitly labelled V0–V6; it lists DGFloer as a consumer.

**Repair:** Put this dependent virtual application in the later Part II with its analytic inputs, after ImplicitAtlases, unless the board resolves the main-versus-merge-order placement separately. Do not edit the merge order in this PR. On the reported edge, moving the consumer after its actual supplier removes the upward relation. Rerun the gate to establish that this has happened.

This carries review 5 R03. Absence of DGFloer from the order is not itself a finding; the reported upward edge is. The engine citation exists, and I found no reverse dependency in its supplier/consumer passages.

## R03 (P1) — The product-curve repair still cites a nonexistent supplier contract and creates overlapping ownership

**Location:** `TauCetiRoadmap/DGFloer/README.md:82`: “are targets of 7.C here, with their hypotheses” and “consumes AnalyticStableMaps M2.0/M2.0a”.

**Claim:** Section 7.C now owns the general closed-surface slice classification and receives its moving-domain comparison from those named supplier sections.

**Witness:** At the supplied AnalyticStableMaps head `9af338e`, M2.0/M2.0a occur zero times. Its `README.md:524–535`, §2.23, already states the general slice classification and normal obstruction. DGFloer's only general-slice statement is line 82.

**Repair:** Resolve this as one owned theorem, rather than declaring another copy in a scope row. For a later DGFloer Part II, consume AnalyticStableMaps §2.23, with §2.4–2.5 for its moving-domain carrier/index comparison, and state only the DGF-specific application. This avoids importing a new later supplier into the base. If ownership must instead move earlier, move the complete target and its prerequisites there and change AnalyticStableMaps to consume it; a unilateral second ownership claim does not perform that move.

The complete contract must retain a closed connected Riemann surface, a connected symplectic second factor with smooth tame structure, product form and structure, integral slice class, and the compact-image treatment for a noncompact factor. Specify the degree-one projection, zero-energy second projection, quotient and normal-operator conclusions. For genus one and a real two-dimensional second factor, the test has actual dimension 2, expected dimension 0 and complex cokernel dimension 1; for genus zero the cokernel is 0. The supplier's actual §2.23 gives exactly these values. A purported blanket regularity result would fail the genus-one test.

The HeegaardFloer label itself is repaired: F2.6c exists on main and its sphere-class product application is at `TauCetiRoadmap/HeegaardFloer/README.md:2702–2704`. The GT attribution at line 859 is also repaired. The remaining nonexistent AnalyticStableMaps labels and the unsupported promise of a full target in 7.C make review 5 R04 only partly repaired. The newly asserted ownership additionally conflicts with the supplied open roadmap. There is no declared gap covering this contract.

## R04 (P3) — The classical-source table still has bibliography entries instead of locators

**Location:** `TauCetiRoadmap/DGFloer/README.md:1864–1868`, also `:1207`: “Salamon's lectures and Hofer–Salamon, *Floer homology and Novikov rings*: cap/degree/monotone coefficient comparisons”.

**Claim:** These rows locate the source support for the classical capped branch.

**Witness:** All five source rows name works and topics, but no theorem, section or page. The paragraph at line 1207 likewise names Salamon without a locator.

**Repair:** Attach the precise lecture/section/theorem and page to each claimed result, at the version actually read; record inaccessible published texts as uncertified. Test each row against that locator. No numerical locator is invented here. This carries review 5 R05, unchanged.

## R05 (P3) — The README and docstring still omit required structure

**Location:** `TauCetiRoadmap/DGFloer/README.md:1–3`, `:43–49`, `:859`; `TauCetiRoadmap/DGFloer/Suggested.lean:20–25`.

**Claim:** The mathematical targets and their checks are presented in the required roadmap form.

**Witness:** There are zero `*Needs:*` lines, zero `**Checks.**` blocks and zero `### Examples` or `### Dependencies` headings. The in-scope finite-rank application remains a bullet under “Out of scope”.

**Repair:** Preserve the mathematical content while giving targets their layer subsections, individual dependencies, API lists, and at least three discriminating Checks per definition, followed by layer Examples and Dependencies. Add the Summary and required ownership/convention/supplier/build sections; move the in-scope bullet. State which unstatable headlines lack which carriers in the Lean docstring, including the Cayley-plane based-loop result. Contrary to review 5's inventory wording, the actual docstring names four missing carrier families collectively; it does not individually name Theorems A–E, G–M and the other unstatable headlines. Test the required headings/counts and each headline-to-docstring entry. This carries review 5 R06.

## R06 (P3) — The source manifest is still absent

**Location:** `TauCetiRoadmap/DGFloer/`; references begin at `README.md:1894`.

**Claim:** The citations have the required source records.

**Witness:** The folder contains README.md, Suggested.lean, metadata.toml, STATUS.md and PROGRESS.md; no sources.toml exists.

**Repair:** Add the source manifest, one lifetime key per work, with exact locators and the legal-access status. Reuse `css-2020` and `bdho-floer` for the works checked here. Include the Palais restriction-map reference and the classical sources, distinguishing a real extracted paper from a verification page. Test that every reference resolves to one record. This carries review 5 R07; the review itself changes no manifest.

## Previous findings

- R01 — not repaired: README lines 53, 90–91, 286, 854–857, 1669 and 1712 still consume the returning suppliers; the same cycle remains (R01 here).
- R02 — repaired: Suggested.lean lines 1–4 and 32 use the module header, public imports and public section. Targeted build and an importer checking all eight names succeed.
- R03 — not repaired: README lines 1399 and 1930 retain ImplicitAtlases V0–V6; its upward gate diagnostic remains (R02 here).
- R04 — partly repaired: line 82 now resolves HeegaardFloer F2.6c and line 859 owns the restriction theorem. The general-slice promise lacks its stated target and still cites nonexistent AnalyticStableMaps sections (R03 here).
- R05 — not repaired: the five classical-source rows at lines 1864–1868 still have no section, theorem or page locators (R04 here).
- R06 — not repaired: the required Needs, Checks, Examples and Dependencies structure remains absent; line 49 still places an in-scope application under Out of scope (R05 here).
- R07 — not repaired: no sources.toml is present (R06 here).
- R08 — repaired: line 1712 now has ordinary prose followed by one valid arXiv link; the cited splitting is supported by css-2020 lines 214–223.
- R09 — repaired: line 1738 now requires q′ ≠ q, giving exactly one transverse intersection while the proposed Y fails closedness.

## Verified sound

**Scope and counts.** The diff is 10 insertions and 6 deletions: four README lines replaced and the module header changed. Both the incremental outside-folder list and `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/DGFloer'` are empty. The PR worktree was left unchanged. All nine previous findings are accounted for above. The six seeded targets are unchanged, as are every Lean declaration's body and type.

**Gate and elaboration.** The rerun of the plain gate has every scanner at zero and `depcheck=4`; it does not run the build itself. The worker's gate has `build=0`. Independently, the permitted targeted build `lake build TauCetiRoadmap.DGFloer.Suggested` succeeds. Direct `lake env lean` on Suggested.lean succeeds with only five sorry warnings, at lines 43, 52, 64, 76 and 140. The requested standalone dependency check outputs:

```text
UPWARD: DGFloer (on main) -> HomotopySpheres (#63) at README lines [53, 91]
UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]
UPWARD: DGFloer (on main) -> TangentialBordism (#8) at README lines [90]
CYCLE among: DGFloer, HomotopySpheres, StringOrientation, TangentialBordism
depcheck: 205 roadmaps, 1477 edges, 4 problem(s)
```

**Eight signatures and five padding probes.** A scratch copy with `#check @name` for all eight declarations and a separate importer of the built module both elaborate. Their types agree with the supplied signatures. The omitted scalar-tower binder on the grading involution is irrelevant to that R-linear map. The twisted differential retains the commuting scalar actions it needs to be R-linear; its square-zero theorem retains the scalar tower, graded action and DG-module hypotheses. No hypothesis needed by that theorem disappeared during the header conversion.

On a scratch copy, the five one-tactic replacements fail: `infer_instance` for Hurewicz, `simp` for mod-2 vanishing, `simp` for the double-loop equivalence, `simp` for Eilenberg–MacLane existence, and `simp [twistedDifferential]` for square-zero. These are negative padding probes, not proofs of the targets. No new declaration, sorry'd data, set_option, lemma or admitted example was introduced.

**Pinned declarations opened.** Mathlib is `f6090c7095e1e56b3464c1daba5f24631f1290d2`; Tau Ceti is `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`, as in lake-manifest.json.

| Declaration | File and line at the pin | What was checked |
|---|---|---|
| `AlgebraicTopology.singularHomologyFunctor` | `Mathlib/AlgebraicTopology/SingularHomology/Basic.lean:52` | Native homology functor on TopCat; no hidden manifold or separation assumption. |
| `LoopSpace` | `Mathlib/Topology/Homotopy/HomotopyGroup.lean:86` | Defined as `Path x x`, the fixed-interval model, not Moore loops. |
| `TauCeti.IsDGAlgebra` | `TauCeti/Algebra/Homology/DG/Algebra/Defs.lean:182` | Degree +1, square-zero and signed Leibniz rule. |
| `TauCeti.IsDGRightModule` | `TauCeti/Algebra/Homology/DG/Module/Right/Defs.lean:68` | Right opposite action, scalar tower, homogeneous differential, square-zero and module-first Koszul sign. |
| `TauCeti.InternalGrading.ofDecomposition` | `TauCeti/Algebra/Module/GradedModule/Internal.lean:110` | Actual submodule decomposition supplies the internal grading; the piece is the original submodule. |

The two real definitions in Suggested.lean still use these carriers with the same sign convention. On a homogeneous degree-q element the involution is (−1)^q, and the differential's y-component is ∂f(y)+Σₓ op(mₓᵧ)·εf(x).

**Resolved affected supplier citations and ownership.** Main was checked at `fa41b374`. The ownership search used `roadmaps grep` and `roadmaps show`, supplemented by the supplied checkouts and a search of board packages. The search index's own DGFloer result still displayed the old line 82; the checked-out requested head, not that stale hit, controls this review.

| Citation or object | Resolution read this round |
|---|---|
| HeegaardFloer F2.6c | Main `TauCetiRoadmap/HeegaardFloer/README.md:2461–2468` provides energy/area and product projections; `:2702–2704` provides its sphere-class product application. This supports the narrower attribution. |
| GeometricTopology Layer 3 | Main `TauCetiRoadmap/GeometricTopology/README.md:360–406` provides the compact C-infinity group, forward smooth-family map and orthogonal action, which are precisely what the repaired attribution consumes. |
| General slice classification and moving-domain comparison | Supplied AnalyticStableMaps head `9af338e`, `TauCetiRoadmap/AnalyticStableMaps/README.md:294–318` (§2.4–2.5) and `:524–535` (§2.23). This is an existing open-work owner, absent from main; old M2.0/M2.0a labels do not resolve. R03. |
| TangentialBordism / StringOrientation / HomotopySpheres | The supplied open-head passages at `TauCetiRoadmap/TangentialBordism/README.md:142–143`, `TauCetiRoadmap/StringOrientation/README.md:214–217`, and `TauCetiRoadmap/HomotopySpheres/README.md:1203` verify the returning edges. |
| ImplicitAtlases V0–V6 | Supplied `TauCetiRoadmap/ImplicitAtlases/README.md:25`, `:853`; generic engine supplied, applications owned by consumers. |
| Citation-tool leads | Main `TauCetiRoadmap/AlgebraicTopology/README.md:111`, `:910–913` names the three Serre-fibration interfaces; main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:1261`, `:1333–1334` names the compact octonion/Albert targets. They are roadmap contracts, not established pinned declarations. |

The citation-tool rerun found no unmatched roadmap names but explicitly skipped pinned-library names because it did not locate its Lake packages; it is not evidence that those library declarations exist. The manual pin and supplier checks above supply the relevant evidence. Broad unchanged ownership conclusions are inherited from review 5, not represented as a new full audit. In particular, unprovided open-PR files were not sought.

**Sources.** The six seeded targets at README lines 1215, 1314, 1318, 1326, 1352 and 1407 and their source table are unchanged. Their inherited numerical checks appear below, but review 5's inability to verify their classical-source locators remains. The changed arXiv link was checked against `css-2020` v1: proof of Lemma 2.2, printed p. 6, lines 214–223; the SO(8) value occurs on printed p. 7, line 249. Theorem G was checked against `bdho-floer` v3, Theorem 7.1 and its standing assumptions, printed pp. 123–124, lines 5354–5372, and Example 7.4 at lines 5382–5388. Its closedness and degree hypotheses agree. The erroneous SO(9) value in that source is at printed p. 117, line 5076.

**Headline inventory.** The unchanged Lean headlines are degree-one Hurewicz, mod-2 vanishing, the asphericity/double-loop homology equivalence, existence of K(A,n) for n≥1, and the twisted square-zero theorem. Their signatures remain present. The README also seeks the Serre/fibration comparisons, DG Morse/Floer and symplectic homology, DG Viterbo comparison, Theorems A–E and G–M, Theorem 3.49, the classical Arnold bound, the 7.T torsion invariant, and the projective/Cayley-plane loop-space applications. The preceding review's statability conclusions for these unchanged targets are carried, with the docstring omission corrected in R05.

**Adversarial table: changed passages.** Numerical values are independently computed here; “missing contract” does not mean the underlying mathematical result is false.

| Statement | Instances tried | Computed values on each side | Result | Change |
|---|---|---|---|---|
| Product projection/classification, README 82 | Split Σ×F, area(Σ)=1; u(z)=(z,p); double cover of a sphere | Slice: first degree 1, second area 0, total area 1. Double cover: first degree 2, total area 2≠1, excluded from the slice class. | Mathematical contract discriminates covers; the full contract is absent from 7.C and exists in ASM §2.23. | R03. |
| Same, normal obstruction | genus g=0,1,2 and n=2; n=1 | Complex ker/coker: (1,0),(1,1),(1,2); real indices 2,0,−2 versus actual dimension 2. For n=1: ker=coker=0 and index=actual=0. | Genus-one slice is not regular; ASM has the required comparison. | R03; do not treat a generic index theorem as this fixed-J statement. |
| Same, noncompact factor | Σ=S², F=ℂ, slices at p=j∈ℕ | Each image is compact, each energy 1, but supⱼ|p|=∞. | Individual compact image gives no common confinement; line 82 correctly disclaims that inference. | Preserve this restriction. |
| Evaluation-orbit bundle, README 859–860 | Closed connected M, and M=S² ⊔ T² with x₀∈S² | Connected: O=M. Disconnected: O=S², evaluation fibre over T² empty. Locally s(z)⁻¹g fixes x₀; s(gx₀)(s(gx₀)⁻¹g)=g and inverse composite returns (z,h). | Correct right-H local trivialization and orbit restriction. | GT attribution repaired; full Palais source text unverified. |
| Same, zero dimension | M={a,b}, x₀=a | Diff(M)=S₂, O={a,b}, H={id}; evaluation is a bijection, each fibre has 1 element. For a singleton all three have 1 element. | Correct finite-component and zero-dimensional cases. | No new defect. |
| SO(9) correction/link, README 1712 | (ℤ/2)² versus ℤ/4 | Both orders 4, but exponent 2 versus 4. Split stabilization has kernel order 2, quotient order 2, and total group (ℤ/2)². | css-2020 supports the former; the repaired link is well formed. | Review 5 R08 repaired. |
| Theorem G negative control, README 1738 | Q=S²×S², X=S²×{q}, Y={p}×(S²∖{q′}), q′≠q | X∩Y={(p,q)}; tangent planes sum to dimension 4. Y≅ℝ², π₁=π₂=0, ℓ=2k−2=2, H₂(Y;ℤ)=0. No ordinary top-dimensional fundamental class or degree. | The missing closedness is isolated. If q′=q the intersection would instead be empty. | Review 5 R09 repaired. |
| Module/public header, Suggested.lean 1–4,32 | Importer with all 8 fully qualified names | 8/8 names resolve; 8/8 signatures equal the recorded types; build has 0 non-sorry warnings. | Visibility and elaboration repaired. | Review 5 R02 repaired; no mathematical signatures changed. |

**Adversarial table: carried statements.** Every row cites [review 5](PRREVIEW-DGFloer~5.md). Where it abbreviated the values as “as in the previous report”, the explicit values below are recovered from its cited [review 4](PRREVIEW-DGFloer~4.md), rather than treating that phrase as a computation. These are inherited checks, not a new verification of the unchanged global proof plans.

| Statement | Instances tried | Computed values on each side | Result / change |
|---|---|---|---|
| Theorem G hypotheses and positive control | Q=Q′♯(Sᵏ×Y), closed Y, connectivity 2k−2 | X∩Y one point; normal bundle trivial; 2k−2≥k−1 for k≥2. With degree d≠0 the claimed closed-Y setup is met. | Carry [r5](PRREVIEW-DGFloer~5.md); changed negative control computed above. |
| Cayley-plane index | k=1,2 | 7k+15(k−1)=7,29; nullity 15=dim S¹⁵. | Carry [r5](PRREVIEW-DGFloer~5.md). |
| Cayley-plane based-loop homology | Morse–Bott cells | Degrees 22k−15 and 22k yield H₇=ℤ, H₁₄=0, H₂₂=ℤ; same values for S⁷×ΩS²³. | Carry [r5](PRREVIEW-DGFloer~5.md); perfectness source remains unverified. |
| Trace-one idempotent carrier | diag(1,0,0), diag(1,1,0), half of the latter | First: x²=x and trace 1. Second: x²=x but trace 2. Half: trace 1 but x²=diag(1/4,1/4,0)≠x. | Carry [r5](PRREVIEW-DGFloer~5.md). |
| Cayley-plane ownership direction | main DGFloer and its two consumers | Returning supplier paths have positive length 3 and 4; intended consumer direction does not eliminate the opposite edges. | Carry [r5](PRREVIEW-DGFloer~5.md), subject to R01; no new global ownership audit. |
| Hutchings locator | Contents and sections | §7.5 p.52, §7.6 p.55, Chapter 8 p.58; cited §§7.5–7.6 occupy pp.52–57. | Carry [r5](PRREVIEW-DGFloer~5.md); no new source fetch for unchanged locator. |
| Existence of K(A,n) | A=0; Lean n=0,A=ℤ/2; n=1,A=ℤ | Point: all positive π=0. ℝP∞: π₁=ℤ/2, higher π=0. ℂP∞: π₂=ℤ, π₁=0. | Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Lemma 3.41 | ℂP∞, S², S³, T², S¹ | ℂP∞ and S²: π₂=π₀Ω²=ℤ, both sides false. S³: π₃=H₁Ω²=ℤ, both false. T²,S¹: π≥2=0 and Ω² path-connected/acyclic, both true. | Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Theorems L and M | α=0; W=D*Tⁿ with constant coefficients | j!0=0, excluded. On the torus cotangent example evaluation splits the homology inclusion, ker i*=0; the criterion cannot fire. | Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Abundance and Theorem H | Tⁿ; S² | Torus: Ω² has reduced H₀=0, so constant-sphere fundamental class is excluded. Sphere: degree-3 witness has nonzero shriek image in H₁Ω²S², and 3>2. | Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Theorem 3.49 convergence hypotheses | First quadrant; support p=−q for all q | p,q≥0 gives only n+1 positions on total degree n≥0. Full p=−q gives infinitely many positions on degree 0, with q unbounded both ways; neither stated bound holds. | Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Convention and application checks (seeded) | ℂPⁿ, N_C=n+1 | Hⱼ=R in j=0,2,…,2n; n+1 distinct residues mod 2(n+1); cyclic HF has one R precisely when i+n lies in those residues. | Carry [r5](PRREVIEW-DGFloer~5.md); source not certified. |
| Tame synthesis and staged selection (seeded) | J(A)=eᴬJe⁻ᴬ | J(A)²=eᴬJ²e⁻ᴬ=−Id; at A=0, J(0)=J. | Carry [r5](PRREVIEW-DGFloer~5.md); not a new proof of synthesis estimates. |
| Tame raw sign realization (seeded) | Parameter degree j=1 | (−1)^(i+1+i)=−1; multiply by (−1)^n to get (−1)^(n+1); Morse zero-face exponent k+(k−n)+n=2k is even. | Carry [r5](PRREVIEW-DGFloer~5.md). |
| Separate finite counting budgets (seeded) | ω=κc₁; c₁=0 branch | Bounded c₁ gives E=κc₁ bounded; c₁=0 alone provides no energy bound without the monotone relation, so the cutoff remains. | Carry [r5](PRREVIEW-DGFloer~5.md). |
| Regular true endpoint (seeded) | Constant two-marked core | ker ∂̄ has real dimension 2n, coker 0; Morse intersection dimension ind(p)+(2n−ind(p))−2n=0. | Carry [r5](PRREVIEW-DGFloer~5.md). |
| Positive-monotone finite Laurent matrices (seeded) | Γ≅N_Cℤ, κ,N_C>0 | deg(t)=2N_C, ν(t)=−κN_C<0; injective c₁ fixes at most one exponent in each homogeneous matrix entry. | Carry [r5](PRREVIEW-DGFloer~5.md). |
| Degree-one Hurewicz | pt,S¹,BS₃,BQ₈ | Abelianizations 0,ℤ,ℤ/2,(ℤ/2)² agree with H₁. | Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Mod-2 vanishing | K(ℤ/3,2); K(ℤ/4,2) | First: reduced mod-2 homology 0, ×2 permutes 0,1,2. Second: H₂=𝔽₂≠0, excluded, and ×2 sends both 0 and 2 to 0. | Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Twisted square-zero | P empty, m=0, M=0; homogeneous coefficient | Degenerate outputs D²=0. General coefficient cancels as d(mₓ𝓏)−Σᵧ(−1)^(ind x−ind y)mₓᵧmᵧ𝓏=0 by the twisting law and graded Leibniz signs. | Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |

## Not verifiable

- **Palais, local triviality of restriction for embeddings.** Bibliographic lookup reached a publisher DOI; the DigiZeitschriften PDF returned HTTP 404; the sources service's ETH E-Periodica extraction contains only “Verification required” (`palais-1960` line 5), not the paper. Search metadata exposes the compact-submanifold introduction, but I do not certify the full theorem or a precise internal locator from that. The mathematical point-evaluation specialization was checked above. This is recorded in needs-references.toml.
- **The six unchanged seeded targets' classical sources:** review 5 could not read Salamon, Hofer–Salamon or Piunikhin–Salamon–Schwarz through the sources service, and recorded Floer–Hofer–Salamon as paywalled. Those source limits are carried, not presented as fresh retrieval results. R04's missing exact locators remains.
- **Ziller's completing-manifold perfectness for Ω𝕆P²:** unchanged, inherited verification limit from review 5; index/cell arithmetic alone does not establish perfectness.
- **HamiltonianSystems and other open work without supplied files:** not checked; no unavailable checkout was sought. Unchanged citations outside the repair's dependency scope retain the previous review's limits.

## Source issues

- **Error** in bdho-floer at proof of Lemma 6.35, printed p. 117, line 5076: the source says π₈(SO(9)) is cyclic of order four; it should be (ℤ/2)², by the split stabilization in css-2020 lines 221–223; affects the proof.
