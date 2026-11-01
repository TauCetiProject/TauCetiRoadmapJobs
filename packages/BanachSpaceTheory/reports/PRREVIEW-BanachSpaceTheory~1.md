# Review of BanachSpaceTheory (pull request #1121 at c0ca76e)

**Verdict:** needs changes

Scope of this review: the whole folder `TauCetiRoadmap/BanachSpaceTheory/` at c0ca76e (README.md, Suggested.lean, HilbertBasisSuggested.lean, LocalHaarSuggested.lean). The pull request adds about 800 README lines over main (B1 operator topologies, B2 Milman–Pettis and Clarkson, B4.C/B4.0/B4.1 complexification, Enflo and Argyros–Haydon, the B5 Hilbert-basis layer, M(X) on locally compact spaces, Lᵖ dualities, B5.LocalHaarDual, B6.Cotype2) and two companion Lean files. The worker's gate passes; the dependency check prints `depcheck: 204 roadmaps, 1421 edges, 0 problem(s)`; all three Lean files elaborate at the pins with only `sorry` warnings. The blocking findings are the admitted data in `LocalHaarSuggested.lean`, two ownership defects (Hilbert dimension is planned in three open pull requests; BanachAlgebras and this roadmap now cite each other), and headline theorems that are statable but absent from `Suggested.lean`.

## R01 (P1) — `LocalHaarSuggested.lean` builds data from admitted proofs

Location: `TauCetiRoadmap/BanachSpaceTheory/LocalHaarSuggested.lean`, lines 48–52 (`boundedSubmodule`), 68–72 (`nullSubmodule`), 107–108 (`localNorm`), 120–125 (the two normed instances), 173–174 (`globalToLocal`), 214–216 (`integralFunctional`), 296–297 (`toDualIsometry`), 302–304 (`integralDualEquiv`), 313–316 (`globalLocalEquiv`), 431–433 (`l1CosetEquiv`), 484–486 (`localCosetEquiv`).

Claim: the file's docstring says admitted declarations are "never carrier or map values".

Witness: `integralDualEquiv := LinearIsometryEquiv.ofSurjective (toDualIsometry μ) (toDual_surjective μ)` with `toDual_surjective` admitted at line 299; `ofSurjective` computes the inverse map by `Function.surjInv`, that is by `Classical.choose` applied to the admitted proof, so the inverse of the headline equivalence is data extracted from `sorry`. The same holds for `globalLocalEquiv`, `l1CosetEquiv` and `localCosetEquiv`. `localNorm`, `integralPair`, `localMul`, `localConj`, `translate` and `localComponent` are `Quotient.lift`s whose compatibility proofs (`boundInf_congr` line 102, `rawIntegral_congr` 188, `localMul_congr` 239, `localConj_congr` 257, `translate_congr` 326, `localComponent_congr` 442) are admitted; `boundedSubmodule` and `nullSubmodule` have admitted closure fields; both normed instances come from the admitted `normCore` (line 117). The brief's principle "no sorry'd data, and nothing that mentions one" is violated throughout: 23 `def`/`instance` declarations depend on admitted proofs.

Repair: either delete the file (the README keeps B5.LocalHaarDual as its target; the gate allows companion files but does not require them), or keep one headline, the linear isometric equivalence `LocalHaarLInfinity 𝕜 μ ≃ₗᵢ[𝕜] StrongDual 𝕜 (Lp 𝕜 1 μ)` stated as `∃ e, ∀ g f, e (classOf g) f = ∫ x, f x * g x ∂μ`, with every proof inside a definition actually proved (the closure and congruence lemmas are elementary: `null_zero` already closes by `simp [LocalNull]`), and nothing bundled through `ofSurjective` or `mkContinuous` on an admitted bound. If the carrier cannot be made honest this way, the module docstring says B5.LocalHaarDual is not statable at the pins and what it lacks (the local-null quotient).

## R02 (P2) — Hilbert dimension and the unitary classification have three owners

Location: `README.md` lines 800–823 ("Prove the arbitrary-cardinality classification as well … separable spaces are classified by dimension 0, a positive finite integer, or ℵ₀") and `HilbertBasisSuggested.lean` lines 20–35.

Claim: B5 proves `Cardinal.lift (#ι) = Cardinal.lift (#κ)` for two Hilbert bases, `Nonempty (H ≃ₗᵢ[𝕜] K) ↔ Nonempty (ι ≃ κ)`, and defines the Hilbert dimension.

Witness: OperatorTheory/UnboundedOperators §4.1 (UO-D01) at the head of its pull request (README lines 419–426) states the same theorem, `nonempty_linearIsometryEquiv_iff_lift_mk_eq`, with the same proof route (countable coefficient supports in both directions, cardinal arithmetic, finite case by orthonormal bases) and the same Checks (ℂ versus ℂ², two copies of ℓ²(ℕ)); QuantumFoundations QF6b (README line 2113 at its head) already consumes UO-D01 for exactly this classification; IndexTheory I1 item 6 (README lines 201–207 at its head) defines Hilbert dimension "as the cardinality of a complete orthonormal basis, proving existence and independence of the basis" and invariance under unitary equivalence. Mathlib at 6b7abb3c has no cardinality invariance for `HilbertBasis` (no `Cardinal` in `Mathlib/Analysis/InnerProductSpace/l2Space.lean`), so the object is new and now planned three times.

Repair: one owner. This roadmap is the natural one (foundational, stated over `RCLike 𝕜`; UO-D01 is complex-only), in which case the Scope section must say so in one sentence ("B5 owns Hilbert dimension, basis independence and the unitary classification; OperatorTheory/UnboundedOperators §4.1, IndexTheory I1 and QuantumFoundations QF6b consume it"), the two Lean statements move into `Suggested.lean`, and the UnboundedOperators and IndexTheory pull requests repoint. Otherwise cite OperatorTheory/UnboundedOperators §4.1 for the classification and keep in B5 only the lp(S) and separability specialisations, deleting `HilbertBasisSuggested.lean`.

## R03 (P2) — BanachAlgebras and BanachSpaceTheory now cite each other

Location: `README.md` lines 34–36 ("BanachAlgebras A1/A8 supplies the scalar/compact operator-algebra comparisons used in B4's examples"), 291–292 ("Consume BanachAlgebras A8's finite nonzero-eigenvalue threshold theorem"), 549–570 (A8's compact-commutation and real invariant-subspace theorems applied to X_K), 756–757.

Claim: BanachAlgebras A1/A8 is a supplier of B4 and B4.1.

Witness: main's `TauCetiRoadmap/BanachAlgebras/README.md` line 44 declares BanachSpaceTheory B1–B2 and B4–B5 as its suppliers (dual quotients, weak compactness, completed projective tensors, scalar measure representation); A3 consumes B1's ℓ∞ functional (line 690) and A7 consumes B5 (line 956). The README on main before this pull request cited BanachAlgebras nowhere (0 occurrences; 4 now). Two roadmaps citing each other is defect class 14; the merge-order model cannot place either first. The layer graph happens to be acyclic (A8 uses A2 and AlgebraicTopology and says at line 1120 that it does not use B4), which is why the dependency check reports nothing, but the roadmap-level direction is now two-way.

Repair, tested on the three uses: (a) B4's Schmidt series needs only that a compact self-adjoint operator on a Hilbert space has finitely many eigenvalues above each threshold; derive it in B4 from Tau Ceti `IsCompactOperator.finiteDimensional_eigenspace` (`TauCeti/Analysis/Normed/Operator/Compact/Eigenspace.lean:58`) and `ContinuousLinearMap.exists_hilbertBasis_forall_hasEigenvector` (`TauCeti/Analysis/InnerProductSpace/Spectrum.lean:43`): an infinite orthonormal family of eigenvectors with eigenvalues of modulus ≥ ε has no convergent subsequence of images, contradicting compactness. (b) The X_K invariant-subspace and countable-spectrum corollaries (lines 549–570) move to BanachAlgebras A8, which already names "the real Argyros–Haydon consequence" as its own deliverable (BanachAlgebras README line 1192) and consumes B4.1 for X_K. (c) The Calkin identification L(X_K)/K(X_K) ≅ 𝕜 with the bounded scalar projection stays in B4.1 on Mathlib's normed quotient without A1. Then delete the sentence at lines 34–36 and the A8 citations.

## R04 (P2) — Statable headline theorems are absent from `Suggested.lean` and the docstring is silent

Location: `TauCetiRoadmap/BanachSpaceTheory/Suggested.lean`, module docstring lines 8–13; `dvoretzky` lines 84–89.

Claim: the file states "suggested forms"; the docstring names no headline as not statable.

Witness: each of the following is statable at the pins with the file's own definitions and native carriers, and none is present.
- Grothendieck's inequality (a depth milestone of the summary, README line 1107): `∃ K : ℝ, ∀ (m n : ℕ) (a : Matrix (Fin m) (Fin n) ℝ) (H) [NormedAddCommGroup H] [InnerProductSpace ℝ H] (u : Fin m → H) (v : Fin n → H), (∀ i, ‖u i‖ ≤ 1) → (∀ j, ‖v j‖ ≤ 1) → (∀ s t : Fin _ → ℝ, (∀ i, |s i| ≤ 1) → (∀ j, |t j| ≤ 1) → |∑ i, ∑ j, a i j * s i * t j| ≤ 1) → |∑ i, ∑ j, a i j * ⟪u i, v j⟫| ≤ K`.
- Enflo (README lines 398–460): `∃ (E : Type) (_ : NormedAddCommGroup E) (_ : NormedSpace ℝ E), CompleteSpace E ∧ TopologicalSpace.SeparableSpace E ∧ Function.Surjective (NormedSpace.inclusionInDoubleDual ℝ E) ∧ ¬ HasApproximationProperty ℝ E`.
- Argyros–Haydon (README lines 549–552): `∃ (E : Type) …, ¬ FiniteDimensional ℝ E ∧ ∀ T : E →L[ℝ] E, ∃ (c : ℝ) (K : E →L[ℝ] E), IsCompactOperator K ∧ T = c • 1 + K`.
- Milman–Pettis (README line 139): `[UniformConvexSpace E] [CompleteSpace E] → Function.Surjective (NormedSpace.inclusionInDoubleDual 𝕜 E)`.
- Bishop–Phelps (line 151): `Dense {f : StrongDual 𝕜 E | ∃ x, ‖x‖ ≤ 1 ∧ ‖f x‖ = ‖f‖}` for complete `E`.
- Krein–Šmulian on `WeakDual 𝕜 E`; the σ-finite `Lp 𝕜 ∞ μ ≃ₗᵢ[𝕜] StrongDual 𝕜 (Lp 𝕜 1 μ)` and the `Lp 𝕜 q μ ≃ₗᵢ[𝕜] StrongDual 𝕜 (Lp 𝕜 p μ)` dualities (README lines 975–986); Pietsch domination (one short definition of the weak p-norm suffices).
- The quantitative Dvoretzky theorem (README lines 1174–1177, the primary statement): `∀ (k : ℕ) (ε : ℝ), 0 < ε → ∃ N : ℕ, ∀ (E : Type) …, FiniteDimensional ℝ E → N ≤ Module.finrank ℝ E → ∃ T : EuclideanSpace ℝ (Fin k) →L[ℝ] E, ∀ x, (1 - ε) * ‖x‖ ≤ ‖T x‖ ∧ ‖T x‖ ≤ (1 + ε) * ‖x‖`; the file states only the infinite-dimensional corollary (lines 84–89), a weaker stand-in.
- The Hilbert classification lives in a companion file, not in `Suggested.lean`.

Repair: state them in `Suggested.lean` (each with `sorry`); for any headline left out, the docstring names it and what it lacks. The `dvoretzky` corollary may stay beside the quantitative form.

## R05 (P3) — B5.LocalHaarDual has no locator and names a consumer that does not consume it

Location: `README.md` lines 987–1010 (the target has no source), line 1008 ("These facts supply the source local weak-star and continuous-representative interfaces used by A7"), line 993 ("AmenableGroups7.1"); `LocalHaarSuggested.lean` line 10 ("A7.LocalTranslations").

Witness: AmenableGroups Layer 7 on main (README lines 514–522) says "a separate local-L∞ carrier is not a target" and cites nothing from this roadmap; it has no section "LocalTranslations". The glued citation `AmenableGroups7.1` is not a form the dependency check parses (Layer 7 has numbered items, not a §7.1), so the edge is invisible to it.

Repair: cite the theorem (Hewitt–Ross, Abstract Harmonic Analysis I, Theorem 12.18, for `L¹(G)* = L∞(G)` with the locally-null convention; BDHV Appendix C.5 for the vocabulary), write the supplier citation as "AmenableGroups Layer 7, item 1", replace the sentence about A7 by the list of actual consumers (none today) or delete it, and delete "A7.LocalTranslations" from the Lean docstring.

## R06 (P3) — Companion Lean files break the form rules and are API catalogues

Location: `HilbertBasisSuggested.lean` line 5 (`import Mathlib.Analysis.InnerProductSpace.l2Space`); `LocalHaarSuggested.lean` lines 1–7 (seven `Mathlib.<submodule>` imports), lines 127–134 (`normed_additive_parent`, `normed_scalar_parent`, `local_norm_class`, all `rfl`), line 306 (`integralDualEquiv_apply := rfl`), line 57 (`null_zero`), the 57 admitted declarations; all three files use `namespace BanachSpaceTheory` rather than `TauCetiRoadmap.BanachSpaceTheory`.

Witness: the one-tactic probe on a scratch copy closes `null_zero` with `simp [LocalNull]` and fails on the other 56 (and on all 7 of `Suggested.lean` and all 3 of `HilbertBasisSuggested.lean`). The brief's import rule is `import Mathlib` plus `TauCeti.*` modules only; the gate's `mathlib-subimports` counter inspects `Suggested.lean` alone, which is why it reads 0.

Repair: delete the API catalogue from `LocalHaarSuggested.lean` (the README keeps every API statement as a target), fix the imports and namespaces, and keep at most the headline statements (see R01, R04).

## R07 (P3) — B6.Cotype2 defines only cotype 2; the general notion is unowned

Location: `README.md` lines 1070–1076 ("Define a cotype-2 bound C≥1 by `√(Σ‖y_i‖²)≤C R₂(y)`").

Witness: NoncommutativeIntegration §7.5 at its head (README lines 1242–1258), a consumer of B1–B2, proves "Lp(M) has type min(p,2) and cotype max(p,2)" from its own reading of Pisier GT Definition 9.6, and its supplier list (line 133) records that Mathlib has no type or cotype. The general library objects are type p (1 ≤ p ≤ 2) and cotype q (2 ≤ q < ∞) with their Rademacher and Gaussian variants; cotype 2 is the case the Pisier bridge uses.

Repair: define type p and cotype q here with the transport API (subspaces, isomorphisms, finite direct sums, realification) and say in Scope that B6 owns them; keep the cotype-2 bridge as stated. Add negative controls: c₀ has no cotype (y_i = e_i gives Σ‖y_i‖² = n against E‖Σ ε_i e_i‖² = 1) and ℓ¹ has cotype 2 with constant 1 on unit vectors (n ≤ n²).

## R08 (P3) — New carriers come without Checks or `*Needs:*` lines

Location: `README.md` lines 987–1010 (`LocalHaarLInfinity`), 1070–1076 (cotype-2 bound), 765–770 (`D_S`), 809–813 (Hilbert dimension), and the whole file (milestone headings `## B1.`–`## B7.`, no `## Scope and ownership`, `## Conventions`, `## Exact supplier contracts`, `### Examples`, `### Dependencies`).

Witness: no definition in the 800 added lines has a `**Checks.**` list and no target has a `*Needs:*` line; the shape is the one main already had, so this is partly pre-existing, but every new carrier was added in that shape.

Repair: for each new carrier give three discriminating Checks, for example for the local-Haar quotient: (i) on an uncountable discrete group with counting measure the local and global L∞ coincide; (ii) on `ℝ_d × ℝ` (discrete reals times the line) the indicator of `ℝ_d × {0}` is locally null, has global norm 1, and the set has infinite Haar measure (every open superset has measure Σ_x 2ε_x = ∞); (iii) for σ-finite μ the global-to-local map is isometric. Add `*Needs:*` lines to the new targets; the full-shape conversion of the older milestones can be a separate revision.

## R09 (P3) — `eberlein_smulian` is real-scalar while B2 is stated over 𝕜

Location: `Suggested.lean` lines 22–25 (`toWeakSpace ℝ E`); `README.md` lines 127–129.

Witness: the elaborated type is `∀ {E} [NormedAddCommGroup E] [NormedSpace ℝ E] (K : Set E), IsCompact (⇑(toWeakSpace ℝ E) '' K) ↔ IsSeqCompact …`; `james` in the same file is over `RCLike 𝕜`.

Repair: state it over `[RCLike 𝕜] [NormedSpace 𝕜 E]` with `toWeakSpace 𝕜 E` (the weak topologies agree with the real one, so the theorem holds verbatim), or say in B2 that Eberlein–Šmulian is proved for real scalars and transported by realification.

## R10 (P3) — The named route to the Krawtchouk bound does not give it

Location: `README.md` lines 432–435 ("Prove the Krawtchouk bound |F_(n−1)(a)|=|F_(n+1)(a)|≤binomial(2n,n−1)/n for 0<|a|<2n, using the coefficient integral of (1−z)^|a|(1+z)^(2n−|a|)").

Witness: the bound is true: computed for n = 2,…,30, `max_{0<j<2n} |K_{n−1}(j; 2n)| = C(2n,n−1)/n` exactly, attained at j = 1 and j = 2n−1 (values 2, 5, 14, 42, 132 for n = 2,3,4,5,6). But bounding the coefficient integral by the integral of the absolute value gives `(1/2π)∫(2 sin(θ/2))^j (2 cos(θ/2))^{2n−j} dθ`, maximal at j = 1 where it equals `4ⁿ/(πn)`, which exceeds `C(2n,n−1)/n ≈ 4ⁿ/(n√(πn))` for every n ≥ 4 (ratio √(n/π)).

Repair: name a route that reaches the bound: the explicit value `K_{n−1}(1;2n) = C(2n−1,n−1)·2/(n+1) = C(2n,n−1)/n` together with the monotonicity of `|K_{n−1}(j;2n)|` in j on 1 ≤ j ≤ n (Enflo's own lemma), or cite that lemma of Enflo 1973 by number.

## Verified sound

**Gate and build.** Worker gate at c0ca76e: every check 0, build OK. Dependency check run by me: `depcheck: 204 roadmaps, 1421 edges, 0 problem(s)`; no UPWARD or CYCLE line (this roadmap is on main and not in the merge order; R03 is a roadmap-level mutual citation the check cannot see). `lake env lean` on the three files: `Suggested.lean` 7 sorry warnings and nothing else (3.4 s), `HilbertBasisSuggested.lean` 3, `LocalHaarSuggested.lean` 57. Outside-folder diff: empty (the PR branched before `PROGRESS.md`/`STATUS.md` were generated on main; that is not an edit). No `set_option`, no LaTeX, no pull-request numbers, no process words in the README (one hit on "current block" is mathematical).

**Signatures versus README** (the worker's elaborated types, compared one by one): `eberlein_smulian` (R09), `james` (RCLike, complete, attainment on the closed ball: agrees with B2 lines 130–134), `HasApproximationProperty` (compact sets, finite algebraic rank: agrees with B4 line 233), `IsShrinking`/`IsBoundedlyComplete`/`reflexive_iff` (initial partial sums, norm closure in the strong dual: agrees with B3 lines 184–189), `approximationProperty` (complete `E` with a Schauder basis: agrees with B4 "BAP from a Schauder basis"), `local_reflexivity` (two-sided (1−ε,1+ε) bounds, pairings with `G`, `T(J x)=x`: agrees with B7 lines 1142–1148), `dvoretzky` (R04), `exists_complexificationStrongDualEquiv` (formula checked below). No section binder was lost (0 flagged by the worker; confirmed by reading the types).

**Adversarial pass** (one row per statement; values on each side):

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| B5.LocalHaarDual: `(L¹(μ))* ≅` local-null L∞ for any regular left Haar μ | trivial group; uncountable discrete G with counting measure; `ℝ_d × ℝ` with counting × Lebesgue; σ-finite μ | discrete: finite-measure sets are finite sets, one uniform bound ⇒ local L∞ = ℓ∞ = (ℓ¹)*; `ℝ_d×ℝ`: A = ℝ_d×{0} meets every compact in a null set, every open superset has measure Σ_x 2ε_x = ∞, so 1_A has local norm 0 and global norm 1 (global-to-local not injective, as the README states); σ-finite: local null = null | sound | none (R05 locator) |
| Norm of the pairing functional equals the local norm | g with local norm M, ε > 0 | if |g| ≤ M−ε a.e. on every finite-measure set then M−ε is a local bound, contradicting the infimum; the test f = conj(sgn g)·1_s/μ(s) on a positive finite-measure piece gives ≥ M−ε | sound | none |
| Borel gluing of coset components | `ℝ_d × ℝ`, slices B_x Borel of unbounded Borel rank | the union ∪_x {x}×B_x is not Borel although every slice is (Borel rank of a product set bounds the ranks of its slices), so an uncountable pasting of Borel representatives is not a proof; the continuous-approximant/limsup construction avoids it | README's caution is correct | none |
| Translation pairing `⟨L_x g,f⟩=⟨g,L_{x⁻¹}f⟩`, `L_x f(y)=f(x⁻¹y)` | substitution z = x⁻¹y under left invariance | ∫ f(y) g(x⁻¹y) dμ = ∫ f(xz) g(z) dμ; Lean `translation_pairing` uses `f (x * y)` | consistent | none |
| B6.Cotype2 Gaussian weak-2 domination | S e_i = x_i, T e_j = y_j; ‖S*f‖ ≤ ‖T*f‖ ∀f | S = T∘B* with ‖B*‖ ≤ 1 (define B on range T*, extend by 0); E‖T B* g‖² ≤ E‖T g‖² by an orthogonal dilation and Jensen on the conditional expectation | sound | none |
| Rademacher cotype C ⇒ Gaussian cotype C | fixed ω, family (g_i(ω) y_i) | Σ g_i² ‖y_i‖² ≤ C² E_ε‖Σ ε_i g_i y_i‖²; integrate: E g_i² = 1 and (ε_i g_i) ∼ (g_i) | sound | none |
| `π₂(U) ≤ C G₂(Ue_i)` for `U : ℓ₂ⁿ → Y` | weak-2-unit family (x_k) in ℓ₂ⁿ | Σ|f(Ux_k)|² = Σ|⟨x_k,U*f⟩|² ≤ ‖U*f‖² = Σ|f(Ue_i)|², so (Ux_k) is dominated by (Ue_i); Gaussian cotype gives (Σ‖Ux_k‖²)^{1/2} ≤ C G₂(Ux) ≤ C G₂(Ue) | sound | none |
| Truncation absorption `G₂(y) ≤ 2t R₂(y)` | g = g1_{|g|≤t} + g1_{|g|>t}; σ² = E[g²1_{|g|>t}] with Cσ ≤ 1/2 | bounded part ≤ t R₂(y) by the contraction principle (convex in the coefficients, vertices of [−t,t]ⁿ); tail part: Pietsch gives E‖Ub‖² ≤ π₂(U)² ∫ Σ ξ_i² σ² dν ≤ π₂(U)² σ² ≤ (C G₂ σ)² ≤ G₂²/4; so G₂ ≤ tR₂ + G₂/2 | sound | none |
| Complex constant `4C t(C)` | realification with basis (e_i, i e_i) | real weak-2 norm ≤ complex weak-2 norm so π₂^ℂ(U) ≤ π₂^ℝ(U_ℝ); R₂(y, iy) ≤ R₂(y)+R₂(iy) = 2R₂(y) | sound | none |
| Degenerate cases of the cotype API | empty family; zero space; Hilbert space | 0 ≤ 0; every C works on the zero space (so "C ≥ 1" is a convention); Hilbert: E‖Σε_i y_i‖² = Σ‖y_i‖², C = 1 | sound | R07 (general q, controls) |
| Grothendieck constant κ_ℝ = 8 | clipping at M, M = 2 | (|g|−M)²1_{|g|>M} ≤ g⁴/(16M²) (max of 16(s−1)²/s⁴ is 1 at s = 2) so ‖u−u^M‖₂² ≤ 3/(16M²); Γ ≤ M² + Γ·2·(√3/(4M)); M = 2: Γ ≤ 4/(1−√3/4) = 7.05 ≤ 8; complex: Re(cΣa⟨u,v⟩) splits into two real sums, κ_ℂ = 2κ_ℝ | sound | none |
| Argyros–Haydon Assumption 2.3 as pinned | pinned pair (4,16); j = 1, 2; subsequence s | source page 4 (rendered): (3) reads `n_{j+1} ≥ m_{j+1}²(4n_j)^{2^{j+1}}`, exponent 2^{j+1} as the README says; j = 1: n₂ = 2^{32} = m₂²(4n₁)⁴ = 2^8·2^{24} (equality); j = 2: 2^{1024} ≥ 2^{288}; inheritance: n_{s(j+1)} ≥ m_{s(j+1)}²(4n_{s(j+1)−1})^{2^{s(j+1)}} ≥ m_{s(j+1)}²(4n_{s(j)})^{2^{j+1}} since s(j+1)−1 ≥ s(j) and s(j+1) ≥ j+1 | sound | none |
| B4.1 quantitative contradiction | ‖z‖ ≤ 48C/m², ‖Tz‖ ≥ δ/(4m), m > 256C‖T‖/δ | δ/(4m) = (δm/(192C))·(48C/m²) ≥ (δm/(192C))‖z‖ and δm/(192C) > ‖T‖ since 192 < 256 | sound | none |
| Enflo adjacent trace bound 5‖T‖/n_{m+1} | the two split terms | ‖T‖/n + 4‖T‖/n = 5‖T‖/n | consistent | none (Enflo text unread, see below) |
| Krawtchouk bound | n = 2,…,30 numerically | max_j |K_{n−1}(j;2n)| = C(2n,n−1)/n, equality at j = 1, 2n−1; |K_{n+1}| = |K_{n−1}| for all j; absolute-integral route gives 4ⁿ/(πn) > bound for n ≥ 4 | bound true, route insufficient | R10 |
| Hilbert dimension and classification | ℝ vs ℝ²; empty index; lp(S) | dims 1 ≠ 2, no unitary; empty basis ⇔ zero space; `#S` for lp(S); level sets {|x_s| ≥ 1/n} have at most n²‖x‖² elements so supports are countable; unit vectors at distance √2 give nonseparability for uncountable S | sound | R02 (ownership) |
| `HilbertBasis.repr` convention | x = i, b = 1 in ℂ | `b.repr x i = ⟪b i, x⟫` (conjugate-linear in the basis vector), the README's "native ⟪y,x⟫ for Σ x_s conj(y_s)" matches | sound | none |
| Lᵖ–Lᑫ duality witness `g = ‖φ‖|f|^{p−2}conj(f)` | bilinear pairing ∫fg, unit maximizer f | ∫ f·|f|^{p−2}conj f = ∫|f|^p = 1 and ‖g‖_q^q = ‖φ‖^q∫|f|^{(p−1)q} = ‖φ‖^q | consistent, no σ-finiteness used | none |
| B4.C dual formula `φ(x+iy)=g(x)−h(y)+i(h(x)+g(y))` | complex-linearity on i(x+iy) = −y+ix | φ(−y+ix) = −g(y)−h(x)+i(g(x)−h(y)) = i·φ(x+iy) | sound; Lean statement identical | none |
| AP/MAP transport along the Taylor complexification | finite-rank T real; S complex | ‖T.complexify‖ = ‖T‖ (`norm_complexify`); Re∘S∘ι has norm ≤ ‖S‖ since ι is isometric and ‖x‖ ≤ ‖x+iy‖ (θ = 0) | sound | none |
| B4.0 metric criterion and Daws | reflexive X | Daws Theorem 2.3.14(3) (bounded below by M⁻¹ ⇔ M-BAP) and Theorem 2.3.23 (reflexive + AP ⇒ MAP) at daws-thesis lines 1717–1727, 1804–1818, printed pp. 43–47; the norm chain `ν(T) ≤ ν(T′′) ≤ ν(T′) ≤ ν(T)` is Daws line 1817 | locator and statement correct | none |
| AOST Theorem 5.4, Lemmas 5.2–5.3 | source text | Theorem 5.4 (aost line 1413) as restated; Lemma 5.3's `G_n`, `δ_n`, constant 1/9 and Schreier constant 3 (lines 1320–1331, 1606–1640) as restated; the README's remark on `w_j^n` is a genuine misprint (Source issues) | correct | none |
| B1 c₀ shift powers | T_n forward, S_n backward | S_nT_n = I, T_nS_n = tail projection (SOT-null on c₀), T_n WOT-null by ℓ¹ tails, not SOT-null (isometry) | sound | none |
| B1 weak-closure example in ℓ² | e_m + m e_n | ‖e_m + m e_n‖ = √(1+m²), so a weakly null sequence has bounded m, one m repeats, pairing with e_m is 1 | sound | none |
| B1 closed range without completeness | c₀₀ ⊂ ℓ² | inclusion has dense proper range; its adjoint is the bijection (ℓ²)* → (c₀₀)*, so the adjoint range is closed | sound | none |
| B1 metric example | f(x,y) = x²y/(x⁴+y²) | along y = kx: kx/(x²+k²) → 0; f(t,t²) = 1/2 | sound | none |
| B5 operator norms | sin(nt)/n; tⁿ | derivative C¹→C: ‖f‖_{C¹} = 1 + 1/n, ‖f′‖∞ = 1, ratio → 1; tⁿ: ‖tⁿ‖₁ = 1/(n+1), ‖ntⁿ⁻¹‖₁ = 1 (unbounded); FTC bound from f(x) = f(y) + ∫_y^x f′ averaged in y | sound | none |
| B5 signed-measure regularity example | δ₀ − δ₁, A = {0,1} | μ(A) = 0; K = {0} gives μ(K) = 1 | sound | none |
| B7 Dvoretzky constants | η = min(ε/4,1/4), n ≥ 4 | needed log n ≥ 4.8·10¹¹ k η⁻² log(3/η) from k ≤ 10⁻⁶ m θ² η²/log(3/η) and θ² ≥ log m/(160000 m); N = exp(10¹² k η⁻² log(3/η)) suffices; log⌊n/2⌋ ≥ (log n)/3 at n = 4 (0.693 ≥ 0.462), n = 5 (0.693 ≥ 0.536), and ⌊n/2⌋ ≥ n/3 for n ≥ 3 | consistent | none |

**Library declarations opened at the pins** (Mathlib 6b7abb3c, Tau Ceti a91d3aaf): `lp.hasSum_single` (`Mathlib/Analysis/Normed/Lp/lpSpace.lean:1171`), `lp.single` (:1007), `lp.dualPairing` (`Mathlib/Analysis/Normed/Lp/lpHolder.lean`), `ContinuousLinearMap.lpPairing` (`Mathlib/MeasureTheory/Function/Holder.lean`), `exists_hilbertBasis`, `HilbertBasis.toOrthonormalBasis` (`Mathlib/Analysis/InnerProductSpace/l2Space.lean`), `ComplexMeasure.rnDeriv` (`Mathlib/MeasureTheory/VectorMeasure/Decomposition/Lebesgue.lean:429`), `ComplexMeasure.integrable_rnDeriv` (:434), `SignedMeasure.absolutelyContinuous_iff_withDensityᵥ_rnDeriv_eq` (`…/Decomposition/RadonNikodym.lean:48`), `totalVariation_eq_variation` (`…/Variation/SignedMeasure.lean`), `variation_withDensityᵥ` (`…/VectorMeasure/WithDensityVec.lean`), `VectorMeasure.variation_smul` (`…/Variation/Basic.lean`), `withDensityᵥ_eq_iff` (`…/VectorMeasure/WithDensity.lean`), `AddContent` (`Mathlib/MeasureTheory/Measure/AddContent.lean`), `RealRMK.rieszMeasure` (`…/RieszMarkovKakutani/Real.lean`), `fourierBasis` (`Mathlib/Analysis/Fourier/AddCircle.lean`), `gelfandStarTransform`, `PointwiseConvergenceCLM`, `ContinuousLinearMapWOT`, `WeakDual.metrizable_of_isCompact`, `WeakDual.isSeqCompact_closedBall`, `UnconditionalSchauderBasis`, `SchauderBasis.nnnormProjBound`, `SummationFilter.unconditional`, `Measure.toSphere`, `ConvexBody`, `UnifIntegrable`, `Measure.modularCharacter`, `ContinuousLinearMap.orthogonalComplement_iSup_eigenspaces_eq_bot`, `injectiveSeminorm`, `IsCompactOperator.hasEigenvalue_or_mem_resolventSet` (`…/Compact/FredholmAlternative.lean:164`); Tau Ceti `Complexification` (`TauCeti/Analysis/Normed/Module/Complexification.lean:80`), `reCLM` (:274), `imCLM` (:281), `ofRealLI` (:288), `equivProd` (:303), `instCompleteSpace` (:328), `complexify` (:356), `norm_complexify` (:391), `exists_hilbertBasis_forall_hasEigenvector` (`TauCeti/Analysis/InnerProductSpace/Spectrum.lean:43`), `IsCompactOperator.finiteDimensional_eigenspace` (`TauCeti/Analysis/Normed/Operator/Compact/Eigenspace.lean:58`), `haarProb` (`TauCeti/RepresentationTheory/Compact/Haar.lean:93`). Not at the pins: any Hilbert-basis cardinality invariance; any eigenvalue-threshold finiteness for compact operators (only the Fredholm alternative and finite-dimensional eigenspaces).

**Cross-roadmap citations resolved** (every one, on main or at the open head): BanachAlgebras A1 (line 75), A3 (407), A8 (1116) on main; SelfAdjointSpectralTheory SA-B58 (467), SA-B81 (605), SA-B82 (645), SA-B83, SA-B84 (666), SA-C86 (1001) in `OperatorTheory/SelfAdjointSpectralTheory/README.md` on main (the mutual citation with SA-B63/B65 is pre-existing and both sides state layer independence); OperatorIdeals OI-A01 (125), OI-A25–A28 (172–179), OI-B29–B30 (349–350) on main; AmenableGroups Layer 7 item 1 (415–470) on main; PDE Lane A item 1 (223–227) on main; PseudodifferentialOperators P5 §5.4 little Hölder spaces (head of its pull request, lines 914, 1323–1388); VonNeumannAlgebras V1 (head of its pull request, lines 103–105, 253: native `ContinuousLinearMapWOT`, so B1's "compatibility with V1" needs nothing from V1; VonNeumannAlgebras is a consumer of B1/B2/B4). The worker's `roadmaps resolve` found nothing unresolved; I confirm.

**Ownership against open pull requests** was checked by object with `roadmaps grep` for cotype, locally null, Hilbert dimension, Dvoretzky, Grothendieck's inequality, Pietsch, local reflexivity, Eberlein–Šmulian, Argyros/Enflo, Yosida–Hewitt, Banach–Stone, Dunford–Pettis, Clarkson: the only overlaps are R02 (UnboundedOperators, IndexTheory, QuantumFoundations) and R07 (NoncommutativeIntegration, a consumer). LocallyConvexDuality (#1782) mentions Dvoretzky and Eberlein–Šmulian as citations, not targets.

**Padding probe:** 0 of 7 (`Suggested.lean`), 0 of 3 (`HilbertBasisSuggested.lean`), 1 of 57 (`LocalHaarSuggested.lean`, `null_zero`) close by one tactic; R06 covers the catalogue.

## Not verifiable

- Pisier, *Factorization of Linear Operators and Geometry of Banach Spaces* (CBMS 60), §3, Lemma 3.5, Proposition 3.7, Lemma 3.8, Theorem 3.9, pp. 33–37 (B6.Cotype2, a sampled target): the only copy is the AMS ebook at pubs.ams.org/ebooks/cbms/060 (paywalled, no licence class); no arXiv or author copy exists; recorded in `needs-references.toml` as `pisier86`. The mathematics of every step is checked independently in the table above; the locators remain uncertified.
- B5.LocalHaarDual (a sampled target): the README cites no source (R05); checked mathematically in the table. The classical statement is Hewitt–Ross I, Theorem 12.18 (Springer, paywalled).
- Enflo, Acta Math. 130 (1973): the Springer DOI is paywalled and the Project Euclid page returned an empty document through the sources service; the parameter contract `1<a<γ`, `a<(γ+2)/(γ+1)`, `n_m=⌊a^m⌋`, `k_m=⌊4^(γa^m)⌋` and the six incidence conditions were not compared with the text. Recorded as `enflo73` (uncertified).
- Argyros–Haydon Lemma 8.4's "inconsistent coefficient in its proof" (README line 582): the statement's coefficient `4m_{2j}` (arXiv text line 1447) is as the README says; I did not trace the proof's intermediate constants.
- Megginson, Albiac–Kalton, Ryan, Runde, Ball, Garrido–Jaramillo locators (all pre-existing on main) and Emmanuele 1993, Dilworth–Odell–Schlumprecht–Zsák: not fetched in this round.

## Source issues

- **Misprint** in aost (Androulakis–Odell–Schlumprecht–Tomczak-Jaegermann, arXiv math/0305082) at proof of Lemma 5.3, printed p. 28: the lower display bounds `‖y+Σa_jy_j‖` through `w_j^n` with `|G| ≤ M_n`, while `y_j` is built from `w_j^{M_n}`; it should read `w_j^{M_n}` with the Schreier condition at level `M_n` (the constant 1/9 is unchanged); affects the proof.
