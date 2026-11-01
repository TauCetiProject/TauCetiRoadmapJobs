# Review of OperatorAlgebraDynamics (pull request #1097 at 443d35c)

**Verdict:** accepted

Incremental re-review of the 47 lines changed since c0af879 (README only; `Suggested.lean` untouched; no file outside the folder). The one blocking finding of the previous review (compound supplier gaps) is repaired: the two bundled slugs are split into four, each naming one VonNeumannAlgebras section, and the four consuming passages carry the right slug. The Attal locator is corrected and the pre-Hilbert/uniqueness/separability paragraph now has three Checks, each recomputed below. The gate passes (every scanner 0, `build=0`), the dependency check reports no problem, and `lake env lean` on `Suggested.lean` gives exactly the four `sorry` warnings. No P1 or P2 finding remains; the notes below are the author's to take or leave.

## R01 (P3) — The eleven declared gaps have no `design/plan.json` for the intake to announce them

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` lines 50, 53, 63, 66, 68, 72, 76, 80, 84, 108 (slugs `gap:hilbert-module-adjointables` … `gap:topological-groupoid-vocabulary`); the folder holds `README.md`, `Suggested.lean`, `metadata.toml` only, and the board package directory holds only `reports/`.

Claim: a gap counts as declared where the intake reads it, the plan's `gaps` list. The split at this head raises the count from eight to ten VonNeumannAlgebras/HilbertModules/LieGroupoidsPoisson contracts stated in the README alone, and nothing announces them on the three suppliers' jobs. Carried from the previous review; not repairable inside the folder by the rules.

Witness: the folder listing and the board package directory at this head.

Repair: for the board, record the slugs with `supplier` and `section` in a plan entry for this package, or announce them by hand on the HilbertModules, VonNeumannAlgebras and LieGroupoidsPoisson jobs. Not blocking.

## R02 (P3) — "The source's omitted zero-representation exception" names no theorem

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` line 706 ("State represented-family uniqueness for nonzero unital CAR families … Preserve the source's omitted zero-representation exception.").

Claim: the paragraph's only locator is the section-level "(Bratteli–Robinson 2, §5.2.1)" of the preceding paragraph (line 682). The uniqueness theorem the new first Check tests (line 709: a nonzero unital CAR family generates a copy of `M₂(ℂ)`; the zero family on K=0 is the exception) is Bratteli–Robinson 2, Theorem 5.2.5, and a reader cannot find "the source's" statement from a section number. Bratteli–Robinson 2 is paywalled (cited by locator alone), so the theorem number is from memory and should be confirmed by the author against the copy they hold.

Repair: end the sentence "State represented-family uniqueness … isomorphism" with "(Bratteli–Robinson 2, Theorem 5.2.5)", and keep the next sentence.

## R03 (P3) — QuantumFoundations QF4 still plans the strong continuity of the Fock Weyl group that D8 owns

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` lines 801–803 (strong continuity of `t↦W_F(tf)` from the continuity of `u↦e(u)` and uniform boundedness); QuantumFoundations at its open head (line 1274: "D8 supplies CAR and Weyl algebras, their regular representations …"; line 1300 and the QF4 prerequisite section name the coherent-vector span without defining it).

Claim: carried from the previous review; nothing changed in either folder. QF4's sentence duplicates D8's regularity theorem; both heads name D8 the owner.

Repair: nothing in this folder. For the QF4 author: cite D8's regularity of `π_F` and prove only the continuity in the one-particle argument.

## R04 (P3) — The sibling revision of this folder still carries the earlier ownership sentence

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` line 12 at this head, against the same paragraph at the head of the other open revision of this folder (pull request #1137 at 1a78485), which has none of this head's D5/D8 Checks, exponential vectors, Fock Weyl operators or split gaps.

Claim: carried from the previous review. Two open revisions of one folder cannot both merge as written.

Repair: none here. The second to merge is rebased onto the first and carries this head's line 12, supplier contracts and D8 paragraphs verbatim.

## R05 (P3) — Unused hypotheses in `Suggested.lean` (carried)

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/Suggested.lean` line 51 (`continuous_action` under `[IsTopologicalGroup G]`), lines 104 and 113 (`hα` in `kms_invariant` and `kms_entire_identity`).

Claim: joint continuity follows from point-norm continuity and the isometry of each `A ≃⋆ₐ[ℂ] A`; the KMS proofs use only the strip functions of `IsKMS`. The file is unchanged since the previous review; a note, not a defect.

## Previous findings

- R01 — repaired: lines 68–83 now read four contracts, `gap:measurable-hilbert-fields` (V4.0.Fields' fields, direct integrals, decomposable and rectangular maps, change-of-measure unitaries), `gap:diagonal-reduction` (V4.0.Decomposition's reduction over a given diagonal C₀(X) representation), `gap:von-neumann-crossed-products` (V8/V11 crossed products of a σ-weakly continuous action with coefficient and group generators), `gap:lca-fourier-plancherel` (dual Haar normalization, Plancherel, evaluation biduality); line 210 (D2) carries the third slug, line 309 (D4) the fourth, line 375 (D5) the first, line 391 the second. Each matches one unit of the VonNeumannAlgebras head (table below). No new problem introduced.
- R02 — not repaired (not actionable in the folder): no `design/plan.json`; now R01 above.
- R03 — repaired: line 801 reads "(Attal, Def. 8.20 and Prop. 8.21, p. 18, and (8.18), p. 19)"; cache `attal-fock` lines 654, 661 under the page-18 marker (line 650) and line 695 under the page-19 marker (line 682); the printed page headers ("18 Stéphane ATTAL", "8 FOCK SPACES 19") agree with the markers.
- R04 — not repaired (outside this folder): now R03 above.
- R05 — not repaired (outside this folder): #1137 still open at 1a78485; now R04 above.
- R06 — not repaired (a note; Lean unchanged): now R05 above.
- R07 — repaired: lines 708–730 add three Checks to the pre-Hilbert comparison, represented-family uniqueness and separability paragraph, including the requested `h=ℂ`/`K=0` negative control; each recomputed below and correct.

## Verified sound

**Gate and build.** `gate.md` at 443d35c: every scanner 0, `depcheck=0`, `build=0`, OK. My rerun of the dependency check (verbatim): `depcheck: 204 roadmaps, 1420 edges, 0 problem(s)`; no UPWARD, CYCLE or moved line. `lake env lean` on `Suggested.lean` in the pull-request worktree (Mathlib 6b7abb3c, Tau Ceti a91d3aaf, the manifest's pins, verified with `git rev-parse` in both package checkouts): exactly four `declaration uses sorry` warnings (lines 51, 68, 103, 112), exit 0. The signatures tool's "Unknown identifier `TauCeti.ContRepresentation.IsUnitary`" (and its `hU : sorry`) is the same artifact as last round, elaboration against the content checkout's newer Tau Ceti; at the worktree's pin the declaration is `TauCeti/RepresentationTheory/Continuous/Unitary/Basic.lean` line 52. Diff outside the folder against `origin/main`: none.

**Elaborated signatures.** `Suggested.lean` is byte-identical to the head the previous review `#check`ed; `signatures.md` lists the same six types, each agreeing with its README statement (lines 121, 139, 144, 594–598). The one "dropped binder" lead (`IsCovariant` without `[TopologicalSpace G] [IsTopologicalGroup G]`) is correct: the covariance identity is algebraic and the README says so at line 139.

**One-tactic probe.** On a scratch copy (namespace renamed) each of the four sorried theorems was tried with `first | fun_prop | continuity | (simp_all [IsKMS]; done) | (simp; done) | rfl | infer_instance | (exact ⟨_, fun _ => rfl, le_rfl⟩)`; all four fail (errors at probe lines 54, 74, 105, 115). Nothing in the file is padding.

**Headline theorems.** Unchanged since the previous review: the four statable headlines (joint continuity, integrated covariant form, KMS invariance, analytic KMS identity) are stated; the rest (imprimitivity, Takai duality, disintegration, Renault equivalence, amenability ⇔ nuclearity, Cuntz identification, KMS simplex and modular characterization, CAR/Weyl constructions, Gibbs ⇔ KMS, variational principle) are named in the module docstring with their missing carriers.

**Declared gaps at this head, against the supplier.** The changed sentences were resolved against VonNeumannAlgebras at its open head (#889):

| Gap | Supplier passage at the head | Precise, minimal |
|---|---|---|
| `gap:measurable-hilbert-fields` | V4.0.Fields, line 1181 ("Hilbert and operator fields"), line 245 (Fields constructs the fields), line 1257 (standard fibres, decomposable maps, rectangular criterion) | one carrier unit; nothing at the pins (grep `directIntegral`, `MeasurableField`: none) |
| `gap:diagonal-reduction` | V4.0.Decomposition, line 258 (consumes Fields, V4.Normality, V4.0.Multiplication; owns spectral/central reduction and measurable selection); SelfAdjointSpectralTheory on main line 1371 consumes V4.0.Fields, so the stated order Fields → SA-B85 → Decomposition → D5 (README lines 88–90, 99–101) is consistent | one theorem unit |
| `gap:von-neumann-crossed-products` | V8 line 2059 (discrete crossed product on `ℓ²(Γ,H)`), V11 lines 3247–3254 (crossed products by second-countable locally compact groups with pointwise strong-star continuous normal actions, coefficient and group maps); D2 lines 210–214 assumes exactly "discrete for V8 or second countable for V11" and proves σ-weak ⇒ strong-star continuity itself | one unit per consumer (D2) |
| `gap:lca-fourier-plancherel` | V11 lines 3235–3245 (dual Haar normalized by the inversion identity, Plancherel unitary `F:L²(G)≃L²(dual G)`, evaluation `G→dual(dual G)` a topological group isomorphism, "supplies Dynamics D4's arbitrary-LCA Takai duality"); README line 309 (D4) cites it; BanachAlgebras A7 on main defers the same to V11 | one unit per consumer (D4); nothing at the pins (Tau Ceti `Topology/Algebra/PontryaginDual.lean` has no biduality or Plancherel) |

No slug is compound now, no supplier is `none`, nothing asked for exists at the pins or on main, and the slug tagged at each consuming passage is the one whose deliverable that passage uses.

**Seeded sample where it falls in the changed passages.** Attal, *Fock spaces* (author page, cache `attal-fock`): Definition 8.20 line 654 (`W_α ε(v)=e^{−‖u‖²/2−⟨u,Uv⟩}ε(Uv+u)`), (8.17) line 658, Proposition 8.21 line 661 (isometry on coherent vectors, inverse by (8.17), unitary), all under the page-18 marker (line 650); (8.18) `W_uW_v=e^{−i Im⟨u,v⟩}W_{u+v}` line 695 under the page-19 marker (line 682). The corrected locator is right. The CAR Checks cite no source beyond the paragraph's Bratteli–Robinson 2 §5.2.1 (paywalled; R02); their content was recomputed. The remaining sampled locators fall in untouched passages and were verified by the previous review.

**Cross-roadmap citations resolved at this round** (the changed passages only; the rest as in the previous review): VonNeumannAlgebras #889 (table above); SelfAdjointSpectralTheory on main line 1371; QuantumFoundations #1771 at d390951 lines 1274, 1300 (R03); the sibling revision #1137 at 1a78485 (R04). Ownership by object: exponential vectors, Fock Weyl operators, the CAR pre-Hilbert comparison and the separability criterion are defined only in this head (`roadmaps grep` over every open head and main); ownership against open pull requests not among the brief's checkouts was checked only through `roadmaps show`/`grep`.

**Adversarial table.** Rows for the changed statements carry computed values; rows for untouched statements cite the previous report.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Check line 709: nonzero unital CAR family on K≠0 | `b=E₁₂` on ℂ²; K=0 | `E₁₂²=0`, `E₁₂E₂₁+E₂₁E₁₂=E₁₁+E₂₂=1`; universal map `M₂(ℂ)→B(K)` is a unital *-hom with `1↦1_K≠0`, kernel an ideal of the simple `M₂(ℂ)`, so 0; K=0: `B(0)=0`, `0²=0`, `0+0=0=1` holds, kernel `=M₂(ℂ)` | injective iff K≠0; "nonzero" is needed | none |
| Check line 716: `a(f)` for `f=Σ2^(−n)e_n` | partial sums `f_N`, M<N | `‖f_N−f_M‖²=Σ_(M<n≤N)4^(−n)≤4^(−M)/3→0`; a antilinear so `a(f_N)−a(f_M)=a(f_N−f_M)`, norm `‖f_N−f_M‖` by the generator isometry; Cauchy, limit exists in the completion | `a(f)` defined in `CAR(h)` | none |
| Check line 716: `a(f)∉` the algebraic *-algebra | `h_N=span(e_1..e_N)`, `g=(1−P_N)f≠0` | the *-algebra generated by `a(e_1..e_N)` is `CAR(h_N)≃M_(2^N)`; `a(g)` anticommutes with every generator (`{a(g),a(e_i)*}=⟨g,e_i⟩=0`, `{a(g),a(e_i)}=0`); with `Γ=Π(1−2a(e_i)*a(e_i))`, `Γ²=1`, `x↦Γx` maps the commutant ℂ onto the anticommutant, so `a(g)=cΓ`, `0=a(g)²=c²`, `c=0`, contradicting `‖a(g)‖=‖g‖>0`; so `a(f)=a(P_Nf)+a(g)∉CAR(h_N)` for every N | true | none |
| Check line 723: separability | `CAR(ℓ²)`; `CAR(ℓ²(ℝ))` | Gaussian-rational star polynomials in the `a(e_n)` are countable and dense (generators total, operations continuous); `‖e_s−e_t‖²=2`, so `‖a(e_s)−a(e_t)‖=√2`, and the uncountably many balls of radius `√2/2` are disjoint, so no countable dense set | iff is right in both directions | none |
| Line 706: `CAR(h)≃CAR(completion h)` and `h=0` | `h=0` | universal unital algebra ℂ (Check line 690 agrees); the closed algebra generated by the zero operators alone is 0, not ℂ | consistent with D8's Checks | none |
| Gap sentences lines 68–83 | each slug against the VonNeumannAlgebras head | table above | precise and minimal | none |
| D2 line 210 consumer | discrete G; second-countable G | V8 for discrete, V11 for second countable; σ-weak ⇒ strong-star proved in D2 (lines 212–214) | hypotheses match the supplier's | none |
| D4 line 309 consumer | LCA G | dual Haar normalized for a unitary Fourier transform, biduality `G≃Ĝ̂` | matches V11 lines 3235–3245 | none |
| Attal locator line 801 | Def. 8.20, Prop. 8.21, (8.18) | cache lines 654, 661 (page 18), 695 (page 19); printed headers equal markers | correct | none |
| `IsKMS` β=0, β<0, convention; `kms_invariant`; `kms_entire_identity`; `continuous_action`; `IsCovariant`; `exists_integratedOperator` | as PRREVIEW-OperatorAlgebraDynamics~4 | values in that report's table (Gibbs sign on `M₂(ℂ)`, `uIcc 0 0={0}`, `uIoo 0 0=∅`, approximate-unit estimate, rotation counterexample at β=0) | unchanged file, carried | none |
| D8 exponential vectors, `a(f)e(g)`, `a†(f)e(g)`, `W_F(f)e(g)` versus Attal `W_u`, isometry, Weyl relation, `W_F(0)=1`, `W_F(−f)=W_F(f)*`, vacuum characteristic function, generator of `t↦W_F(tf)`, commutator Check, vacuum variance, analytic-vector estimate, strong continuity | as PRREVIEW-OperatorAlgebraDynamics~4 | values in that report's table (`−‖u‖²/2=−‖f‖²/4`, `⟨u,v⟩=⟨f,g⟩/2`, `e^{−1/4}` at f=1, `e^{−i}` phase ratio, `‖f‖²/2`) | unchanged text, carried | none |
| CAR Fock h=ℂ, √(n+1) Check, antilinearity, Bogoliubov relations and Checks, Weyl generator unitarity, D5 Checks, D5 transport Check | as PRREVIEW-OperatorAlgebraDynamics~4 | values in that report's table | unchanged text, carried | none |

## Not verifiable

- Bratteli–Robinson, *Operator Algebras and Quantum Statistical Mechanics 2* (Springer): resolves only to paywalled pages (`uncertified`); §5.2.1 and Theorem 5.2.5 (R02) cited by locator alone; the CAR Checks were recomputed instead.
- Renault, *A Groupoid Approach to C*-Algebras*, LNM 793: same, untouched this round.
- No `sources.toml` exists in the folder; the Attal text is in the cache (author page) but nothing is recorded.

## Source issues

- none
