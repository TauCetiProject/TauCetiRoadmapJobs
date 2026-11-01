# GATE-AffineLieAlgebras~2: answers to the review of `ddffe47`

One review comment (CBirkbeck, 2026-11-01T11:36:40Z) makes eight points, F01–F08, numbered H01–H08 below. The repairs are in commit `9dfb9288` on the PR branch (not pushed). They touch only `TauCetiRoadmap/AffineLieAlgebras/README.md` and `TauCetiRoadmap/AffineLieAlgebras/Suggested.lean`.

## H01 (CBirkbeck) — applied

The witness is correct. Take `L = ⊕_(n≥0) 𝕜e_n`. Then `s_r = Σ_(n<r) t^n⊗e_n` is Cauchy, because `s_r − s_r' ∈ a_r'`. Any limit would need `t^n`-coefficient `e_n` for every `n`, but every element of `F⊗L` has its coefficients in one finite-dimensional subspace.

- **Old:** README A1 (old lines 97–103) said "Prove Hausdorffness, completeness…" for arbitrary `L`.
- **New:** README A1.1 constructs the completion `lim_N (F⊗L)/a_N` and identifies it with finite-lower-order `L`-coefficient series. It proves `F⊗L` is dense in it, and that `F⊗L` equals the completion (so is complete) exactly when `L` is finite-dimensional.
- The witness is now the first A1.1 Check, with its limit `Σ t^n e_n` in the completion.

No other A-layer claims completeness of an algebraic tensor product. A2–A8 work with finite-dimensional `g`.

## H02 (CBirkbeck) — answered

The claim is correct. Main's AffineLieAlgebras stops at A1–A8, and C7 is an independent extension. Under the extension rule it belongs in a new roadmap `TauCetiRoadmap/AffineLieAlgebrasPartII/`.

That move is not made here. It needs a new roadmap folder and a new PR description, and this repair may edit only this folder's README and `Suggested.lean`. Instead, the boundary is prepared so that the move is mechanical:

- The generic foundations now sit in the base layers, for Part II to import by section:
  - formal vertex algebras, the Borcherds identity and the extension theorem are A6.1 (`FormalVertexAxioms`, `formalMode`, `formalVertex_borcherds`);
  - the Heisenberg Lie algebra and Fock vertex algebra of any symmetric bilinear space are A7.2. A7 already had to build them for its Wakimoto prerequisites, so before this change C7 was rebuilding them.
- C7's *Needs:* lines cite only A6.1, A7.2, IntegralLattices, RootSystems and ReductiveGroups §9A.1a.
- No A-layer consumes C7. Its Dependencies paragraph says so, and the README's "How to read the build" says so.
- The A₁ weight-one comparison is owned once, in C7.7. Its A₁ Check repeats the `sl₂` relations only as a Check in C7.6.

When the worker opens Part II, the move is: C7, the C7 Lean block, and its Bakalov–Kac and Kac references. The introduction should cite A6.1 and A7.2 as the point where the base stops.

## H03 (CBirkbeck) — applied

Both suppliers resolve as cited:

- FormalConnectionsOpers F4.3 (at its open head, README lines 1461–1468) owns `V^G = V^g` for connected groups.
- Main ReductiveGroups §9A.1a (README lines 1125–1141) owns "the norm2 shell … is exactly the root set … with explicit root/coroot index maps".

Changes:

- **A7 (old line 782):** "Prove the Lie/group-invariant adapter for connected groups" → A7.3 "Consume FormalConnectionsOpers F4.3's … group versus Lie-algebra invariants theorem `V^G = V^g` for connected `G`". The `κ0`-induced `S(g) ≃ S(g*)` comparison and the jet theorem stay as A7.3 targets.
- **C7 (old lines 686–687):** "Prove that its norm-two shell is precisely the finite root system" → C7.7 "Consume ReductiveGroups §9A.1a's theorem that the norm-two shell of `Q_D` is exactly the root set, with its root/coroot index maps".
- **Same pattern, also repaired:** ReductiveGroups §9A.1a also builds the cover group on `Q×ℤˣ`, with the same `ε`, inverse and commutator. C7.1 now says that on ADE root lattices this group is consumed from there. C7.1 builds `L̂` only for general positive even lattices.

Check: for `A₂`, the shell has 6 vectors and `dim V_1 = 2 + 6 = 8`. This is the C7.5 Check.

## H04 (CBirkbeck) — applied

`Suggested.lean` now states both Whitehead lemmas under `/-! ## Layer A1 … -/`, on Mathlib's cochains:

- `complexWhitehead_one`: a 1-cocycle `f` with `d₁₂ f = 0` has the form `x ↦ ⁅x, v⁆`;
- `complexWhitehead_two`: every element of `twoCocycle ℂ L M` is `d₁₂ f`.

Both carry `[FiniteDimensional ℂ L] [LieAlgebra.IsSemisimple ℂ L] [FiniteDimensional ℂ M]` and the module action.

README A1.2 gives the route (Cartan criterion, then `TauCeti.exists_isCompl_of_isKilling`) and these Checks:

- `(d₁₂ f)(e,f′) = −f(h)` on `sl₂` with trivial coefficients;
- the abelian two-dimensional control `c(e₁,e₂) = 1`, which is not a coboundary since `d₁₂ = 0`;
- `ad h` as the coboundary of `v = −h`.

Ownership. NoncompactQuantumSymmetry P.4, an open PR (README line 13), assigns the complex case to AffineLieAlgebras A1 and extends it to all characteristic-zero fields. I first tried importing its general `whitehead_one`/`whitehead_two` instead. The depcheck reported `UPWARD: AffineLieAlgebras (on main) -> NoncompactQuantumSymmetry (#137)`, so A1 owns the complex lemmas, as the reviewer proposed. "Downstream consumers" now records the extension in NoncompactQuantumSymmetry P.4.

## H05 (CBirkbeck) — applied

The witness is correct, and the same defect had a second instance:

- `fock_orthogonal_directSum` asserted only `Nonempty` of an ungraded linear equivalence.
- `latticeWeightOne_decomposition` asserted `Nonempty (V[1] ≃ₗ H × (shell → ℂ))`, which is only a dimension count.

Both are deleted, together with `OrthogonalSumData`, `LiftedLatticeIsometry` and `CocycleChange`, which nothing else used. The module docstring now names as not statable the graded vertex-algebra isomorphisms `V_(L⊕M) ≃ V_L ⊗ V_M` and isometry transport. What they lack: the Heisenberg and charge fields on the Fock space, and a tensor product of vertex algebras.

README C7.5 keeps the specification: vacuum to vacuum, `ω_(L⊕M) = ω_L⊗1 + 1⊗ω_M`, the tensor-mode convolution over `i + j = n − 1`, and isometry lifting (Bakalov–Kac, Proposition 4.1). It also adds the Check that on the rank-zero control `V_0 ⊗ V_0 = ℂ` the marked map sends `1` to `1`, which excludes `−id`.

## H06 (CBirkbeck) — applied

`Suggested.lean` now holds only headline statements and the definitions they need: 963 → 300 lines, 23 declarations, 8 `sorry`s. Deleted:

- **The seven one-tactic declarations:** `criticalSymm`, `abelianHeisenbergBracket_jacobi`, both central-bracket lemmas, `latticeCover_centralInvolution_commutes`, `latticeCover_one_mul`, `latticeCover_mul_one`.
- **Projection and `rfl` wrappers:** `formalVertex_translation_covariance`, `weightOneZeroProduct_apply`, `_is_actual_zero_mode`, the `gradedDecomposition*` and `latticeGradedDecomposition*` lemmas, `*_parent`, `_isLie`, `_skew`, `_jacobi`, `latticeCoverProjection_mul`, `latticeCoverSection_projection`.
- **Library and boundary results:** the PBW `example`, `criticalInvariant` (it is `LieModule.traceForm_lieInvariant` scaled), `latticeWeightSpace_zero`, `positiveEvenLattice_bounded_vectors_finite`, `fieldTranslationCovariant_of_span_top`.
- **Unused scaffolding:** `dividedDerivativeFactor`, `chargeModeMonomialFormula` and the `Eminus*`/`chargeWord*` helpers, the cover and twisted-group-algebra definitions and their laws, `NormalizedSignCocycle`, `orderedSignExponent`, the Heisenberg carrier, `RankOne.*`, `PolynomialCurrent`, `FormalCurrent`, `orderSubspace`, `bracket_order`, `mode`, `criticalForm`, and the redundant `PositiveEvenLattice` fields (`IntegralLattice` already makes the carrier free and finite, and the ambient space finite-dimensional).

`FockSpace` no longer carries the unused cocycle argument. The mathematical content of everything deleted stays in the README as API bullets and Checks: for example, both central Heisenberg brackets are `(0,0)`, and the cover unit laws hold.

## H07 (CBirkbeck) — applied

The readable sources were fetched and read: Bakalov–Kac, arXiv math/0402315v3; Kac, arXiv 1512.00821v2; Frenkel, *Langlands correspondence for loop groups*, from the author's page.

- **Locators at each claim:**
  - Bakalov–Kac: Definition 2.1 with (2.14)/(2.17), p. 3; (4.3)–(4.6), p. 8; (4.12), (4.14), (4.15), (4.16), Theorem 4.1 and Proposition 4.1 with (4.18)–(4.20), p. 9.
  - Kac: Definition 1.4 and Theorem 1.1, p. 5; Proposition 3.1 and (3.24), p. 18; Proposition 4.5 and Theorem 4.1(a), p. 26; (4.33), p. 29.
  - Frenkel's locators are corrected to the book's numbering: §1.3.5, §1.3.1 with Lemma 1.3.1, §2.1.2, §3.2, Propositions 4.3.4, 4.3.9 and 7.3.6, §8.1.1, §8.1.4. "§4.3.9" was Proposition 4.3.9.
- **Convention adapter, now a C7.1 API bullet and Check:**
  - The reviewer is right that Bakalov–Kac (4.1) gives `ε(α,α) = −1` for norm 2 (p. 8). The roadmap's ordered-basis cocycle gives `+1` on basis vectors.
  - With `c(a) = (−1)^(Σ_i q(b_i)·binom(a_i,2))`, `ε·∂c` is bimultiplicative with diagonal `(−1)^(q(α))`, which is (4.1) for even lattices.
  - On `A₁`: `c(1) = 1`, `c(−1) = −1`, `c(2) = −1`, `∂c(a,a′) = (−1)^(aa′)`.
- **Unidentified notes:** the paragraph attributing a proposal to the "Construction11"/"semester-two" notes is deleted.
- **`sources.toml`:** not created. This job may edit only the README and `Suggested.lean`. The worker should record `BakalovKac2004`, `Kac2015` and `Frenkel2007LoopGroups`, which are now in the sources cache.
- **Weibel:** *An introduction to homological algebra* §7.8 is cited for Whitehead without reading it (paywalled book). Treat that locator as `uncertified`.

## H08 (CBirkbeck) — applied

The README is rewritten into the house layout:

- Summary;
- Scope and ownership;
- Conventions;
- Exact supplier contracts (Mathlib, Tau Ceti, FormalLaurentPuiseux, FormalConnectionsOpers, LieHighestWeight, RootSystems, IntegralLattices, ReductiveGroups);
- How to read the build;
- `## Layer A1` … `## Layer A8` and `## Layer C7`, each with `### k.n` subsections, *Needs:* lines, **API.** and **Checks.** lists (at least three computed Checks per subsection), and `### Examples` and `### Dependencies`;
- Downstream consumers;
- References.

The labels A1–A8 are kept, because GeometricRepresentationCategories and KacMoody cite them. Every Lean name appears in the README and every backticked own name is declared (gate `readme-ids-missing=0`). `RankOne.feiginFrenkel` is now prose, since it was never declared. Citations by PR number (`pull/1056`, the GeometricRepresentationCategories branch URL) are replaced by roadmap names. "Complete reducibility" is now LieHighestWeight Layer 5, as the reviewer noted.

**Disclosure on the dependency check.** When FormalConnectionsOpers was named in the new *Needs:*/Dependencies lines, the check reported:

```
UPWARD: AffineLieAlgebras (on main) -> FormalConnectionsOpers (#38) at README lines [353, 372, 417, 434, 719, 747]
CYCLE among: AffineLieAlgebras, FormalConnectionsOpers, KacMoody
```

- **The dependency is old.** Main's README already consumes FormalConnectionsOpers F1–F8 and F4.3 ("Consume rather than duplicate"), only in prose the checker does not parse. FormalConnectionsOpers is open, at merge order line 39.
- **The CYCLE is a false positive.** It comes from FormalConnectionsOpers' own Dependencies line 1332, "Nothing from Layer 6, KacMoody or AffineLieAlgebras", which the checker reads as edges to both.
- **How the README handles it.** The dependency is stated by name in "Scope and ownership" and under "From TauCetiRoadmap.FormalConnectionsOpers". The *Needs:*/Dependencies lines refer to it as "the formal loop and oper supplier contract F…".
- **Decision for the human.** Either accept that wording, or name the roadmap in those lines once FormalConnectionsOpers merges.

## Adversarial pass (every statement added or changed)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| A1.1 completeness of `F⊗L` | `L=⊕𝕜e_n`; `L=sl₂` | partial sums Cauchy, coefficient `e_n` ∀n, no finite-dim span; for `sl₂`, `F⊗L≅F³` complete | false for infinite-dim `L` | restricted to finite-dim; completion added; Check added |
| A1.1 `[a_M,a_N]⊆a_(M+N)` | `e⊗t`, `f⊗t⁻¹` | bracket `h⊗1 ∈ a_0 ∖ a_1` | true, sharp | Check |
| A1.2 `cκ(x_m,y_n)=mκδ` | `sl₂`, `κ0` | `c(h_1,h_(−1))=2`, `c(h_(−1),h_1)=−2`; wrong model `Res(fg dt)` gives 2 both orders | true; wrong model excluded | Checks |
| `complexWhitehead_one/two` | `sl₂`, trivial `ℂ`; abelian 2-dim; adjoint `sl₂` | `d₁₂f(e,f′)=−f(h)`; abelian `d₁₂=0`, `c(e₁,e₂)=1` not exact; `ad h = x↦x·(−h)` | true with semisimple; control fails without | added |
| A1.3 classification | abelian `ℂ` | `c(f,g)=f_0g_1−f_1g_0`, `c(1,t)=1`, `Res(1·dt)=0` | simplicity needed | negative Check |
| A2.3 loop lift sign | `g=diag(t,t⁻¹)`, `κ=kκ0` | `g⁻¹dg=h t⁻¹dt`; `g·h_0=h_0+2kK`; `[e_(n+2),f_(−n−2)]=h_0+(n+2)kK` = `g·(h_0+nkK)`; `−Res` gives `(n−2)k` | sign pinned | Check |
| A2.3 `φ_(στ)=φ_τ∘φ_σ` | `φ_σ=at`, `φ_τ=t+t²` | `at+a²t²` vs `at+at²` | order matters for `a≠0,1` | Check |
| A2.2 `Killing=2h∨κ0` | `sl₂`, `sl_n` | `8=2·2·2`; `2n tr` | true | Checks |
| A3.2 `N>0` | `[[−1,1],[0,−1]]∈SL₂(ℂ)` | not an exponential | `N=0` fails | Check |
| A4.1 `I_N` not two-sided | `sl₂` | `e_N f_(−N) ≡ h_0+Nk` mod `I_N`, ≠0 by PBW | true | Check |
| `genericSmooth_iff_continuous` | `ℂ[[x]]`, `J_N=x^N`; `J_N=A`; `ℂ((x))` | `A/x` continuous not smooth when `J_N=A`; `x⁻¹` orbit kernel `0` | HasBasis needed; both fail on `ℂ((x))` | Checks |
| A5.3 fibre transport | discrete `ℂ[y]`, `χ(y)=1`, `y↦y+1` | `χ∘a⁻¹(y)=0` | fibre moves | Check (replaced an invalid `ℂ[[x]][y]` draft) |
| `formalVertex_borcherds` | `ℂ[x]`, `T=d/dx`; non-example `Y(a,z)b=ab`; rank-one Heisenberg | creation fails: `z¹`-coeff `0` vs `Tx=1`; `[h_(1),h_(−1)] = (h_(0)h)_(0)+(h_(1)h)_(−1) = 0+id` | true; non-example excluded by `creation` | Checks |
| A6.2 Sugawara `c` | `sl₂` k=1, k=−2; `E₈` k=1 | `1`; undefined; `248/31=8` | true | Checks |
| A6.3 `{S_m,S_n}` | `m=−n=2` | central term `−½(8−2)=−3` | consistent | Check |
| A7.1 critical center | `sl₂` | dims `1,0,1,1,2` (wt 0–4); `x_1S=(k+h∨)x_(−1)|0⟩`, `=3x_(−1)|0⟩` at k=1, `0` at k=−2 | true | Checks |
| A7.3 jet character | `sl₃` | `q⁴` coefficient `3` (`P_(1,2)`, `P_(1,0)²`, `P_(2,1)`; a first draft said 2) | corrected | Check |
| A8.2 `Q_k`, `HC(d−Dκ)` | `sl₂`, k=1, `λ=α/2` | `Q=2−½=3/2`, `HC=(3/2)/6=1/4` = spin-½ weight `j(j+1)/(k+2)` | consistent | Check |
| C7.1 `ε` | rank 0; `A₁`; `A₂`; untwisted | `1`; `ε≡1`; `ε(b₁,b₂)=1`, `ε(b₂,b₁)=−1`, `ε(b₁+b₂,−b₁−b₂)=−1`; untwisted commutator `1≠−1` | true; untwisted rejected | Checks |
| C7.1 BK adapter | `A₁`; general diagonal | `c(1)=1,c(−1)=−1,c(2)=−1`, `∂c=(−1)^(aa′)`; `c(2a)=(−1)^(Σq(b_i)a_i)` matches `(−1)^(q(α))/ε(α,α)` | true | API + Check |
| C7.1 cover inverse | general | `(α,s)(−α,sε(α,−α))=(0,s²ε²)=(0,1)` | true | API |
| C7.3 `[T,h(1)]=−h(0)` | `e^α`; wrong `T` without charge term | `−B(h,α)e^α`; wrong model gives `0` | true; wrong model excluded | Checks |
| C7.4 charge coefficients | `B=−1,−2,≥0` | `e^α_(0)e^β=εe^(α+β)`; `e^α_(1)e^(−α)=ε·1`, `e^α_(0)e^(−α)=εα(−1)1`; `0` | true | Checks |
| `latticeWeightSpace_finiteDimensional`, `_isInternal` | rank 0; `A₁`; `A₂`; `E₈`; odd `ℤ` | `dim V[1]` = `0, 3, 8, 248`; odd: weight ½ and `ε(1,1)ε(1,1)⁻¹=1≠(−1)¹` | true for even pos.-def.; odd excluded | Checks |
| C7.5 central charge | `A₁`, `E₈` | `1 = 3·1/3`; `8 = 248/31` (cross-check with A6.2) | consistent | Checks |
| `weightOneZeroProduct_alternating/leibniz` | rank-one Heisenberg; `V_(A₁)` | `(h(−1)1)_(0)h(−1)1=0`; wrong `a_(1)b = B(h,h)·1`, symmetric in `V_0`; `[h,e]=2e`, `[e,f]=h`, `[h,f]=−2f` | true | Checks |
| C7.7 four cases | `A₂` | `[e^(b₁),e^(b₂)]=e^(b₁+b₂)`, reversed `−`; `[e^α,e^(−α)]=−α(−1)1` for `α=b₁+b₂`; `B(b₁,b₁+b₂)=1`, bracket `0`; ReductiveGroups `rootBracket` opposite case is `ε(a,−a)·a` | agrees with raw bracket | Checks |
| C7.8 normalization | one `s(α)=−1` | structure constant ×`−1` | consistent | Checks |

Context: every `sorry`'d theorem carries all its hypotheses in its own signature. No section `variable`s are used, and the structures carry the vertex and grading axioms.

## Mechanical checks

- **`#check` pass.** I temporarily appended `#check @name` for all 23 declarations to `Suggested.lean`, built with the permitted command, and restored the file. All 23 elaborated. Each type matches its README statement. The Whitehead theorems keep `FiniteDimensional ℂ L`, `IsSemisimple`, `FiniteDimensional ℂ M` and the module instances. No binder was dropped.
- **Ownership.** `roadmaps grep` for lattice vertex algebras finds only this roadmap. For Whitehead it finds NoncompactQuantumSymmetry P.4 (answered under H04). No declaration here reuses another roadmap's fully qualified name.
- **Citations.** `roadmaps resolve` reports no cross-roadmap citations or Lean names found nowhere. The earlier leads resolve: `SignedADE.normalizationSign` exists in ReductiveGroups `SignedADETargets.lean:199`, and `RankOne.feiginFrenkel` is now prose.
- **Suspicious text.** None found in the review.

## Build and gate

`lake build TauCetiRoadmap.AffineLieAlgebras.Suggested`: Build completed successfully (8988 jobs), with 8 `declaration uses 'sorry'` warnings and no other warnings or errors.

Depcheck (`gate --depcheck … --movable`):

```
depcheck: 204 roadmaps, 1448 edges, 0 problem(s)
```

Gate:

```
gate AffineLieAlgebras: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```
