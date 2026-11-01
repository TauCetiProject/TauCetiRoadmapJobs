# Review of OperatorAlgebraDynamics (pull request #1097 at c0af879)

**Verdict:** needs changes

Full re-review of the repaired head. The previous review's nine findings are repaired at this head (finding-by-finding record under *Verified sound*): the gate passes (depcheck 0 problems, build clean), the Segal-field closure and Nelson's criterion are deferred to QuantumFoundations QF4 in words that agree with the QF4 and RelativisticQuantumFieldTheory heads, the sorried-data definition and the padding are gone, `IsKMS` covers every real β, the new D5/D8 material carries Checks, and the locator slips are fixed. The new Fock–Weyl construction on exponential vectors was verified line by line against Attal (readable, author page) and by computation. One blocking finding remains, about the form of two of the newly declared supplier gaps; the rest are notes.

## R01 (P2) — Two declared gaps are compound: one slug carries two sections' deliverables for two different consumers

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` lines 73–77 ("What VonNeumannAlgebras must provide (gap:von-neumann-crossed-products): V8's discrete and V11's normal locally compact von Neumann crossed products … and V11's dual Haar normalization, Plancherel theorem and Pontryagin biduality") and lines 67–73 (gap:measurable-hilbert-fields: V4.0.Fields' measurable fields, direct integrals, decomposable operators, change-of-measure unitaries "and V4.0.Decomposition's reduction of a separable C*-representation commuting with a given diagonal").

Claim: a declared gap's `needs` must be one precise statement; a compound one is a defect by the review rules. `gap:von-neumann-crossed-products` bundles two unrelated deliverables of two different VonNeumannAlgebras layers for two different consumers here: D2 (line 204) consumes the V8/V11 von Neumann crossed products with their generators; D4 (line 303) consumes only V11's harmonic-analysis layer (dual Haar normalization, Plancherel, biduality) and, as line 86 says, "independently of the normal crossed-product theorem". A supplier reading the slug alone would deliver crossed products and not know D4 waits on Plancherel. `gap:measurable-hilbert-fields` likewise bundles V4.0.Fields (a carrier: measurable fields and direct integrals) with V4.0.Decomposition (a theorem: reduction over a given diagonal), which the README itself orders as separate stages ("V4.0.Fields → SA-B85 → V4.0.Decomposition → D5", lines 85 and 94): SelfAdjointSpectralTheory SA-B85 sits between them, so they cannot be one need.

Witness: VonNeumannAlgebras at its open head: Layer 8 (line 1917) owns discrete crossed products, Layer 11 (line 2785) owns the continuous crossed products and, at line 251, "V11.FourierUniqueness, then inversion, Plancherel and duality"; V4.0.Fields and V4.0.Decomposition are distinct units at lines 245 and 258. BanachAlgebras A7 on main (line 1021) defers "V11's Fourier inversion, Fourier–Plancherel and double-dual surjectivity" to V11, so no earlier owner exists and the needs are real; only their packaging is wrong.

Repair: split each slug by section and consumer. Replace the crossed-products sentence by two: "What VonNeumannAlgebras must provide (gap:von-neumann-crossed-products): V8's discrete and V11's normal locally compact von Neumann crossed products of a σ-weakly continuous action on a von Neumann algebra, with their canonical coefficient and group generators" and "What VonNeumannAlgebras must provide (gap:lca-fourier-plancherel): for a locally compact abelian group, V11's dual Haar normalization making the positive-character Fourier transform unitary on L², the Plancherel theorem and the evaluation biduality `G ≃ Ĝ̂`"; then tag line 204 with the first slug and line 303 with the second. Replace the measurable-fields sentence by "(gap:measurable-hilbert-fields): V4.0.Fields' measurable fields of separable Hilbert spaces over standard σ-finite measure spaces, their direct integrals, decomposable operators, rectangular decomposable maps and change-of-measure unitaries" and "(gap:diagonal-reduction): V4.0.Decomposition's reduction of a separable C*-representation commuting with a given diagonal C₀(X) representation to a decomposable representation over that diagonal's direct integral"; tag line 369 with the first and the sentence "Apply V4.0.Decomposition's reduction …" (line 382) with the second. The slugs `gap:gns-states-and-bicommutant` (states, GNS cyclic vector, bicommutant theorem) and `gap:hilbert-module-induction` (interior tensor products, induction, imprimitivity bimodules, linking algebra) are also lists, but each is one supplier section consumed as a unit (V0–V1 at D1 line 167; H3 at D3 line 267), so I leave them to the author.

## R02 (P3) — The gaps are declared in the README only; the folder has no `design/plan.json` for the intake to read

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` lines 50, 53, 63, 66, 68, 74, 78, 102 (eight `gap:` slugs); the folder holds `README.md`, `Suggested.lean`, `metadata.toml` only.

Claim: a declared gap counts as declared when the same slug is in the plan's `gaps` list, which is where the intake reads it to announce the need on the supplier's job. This roadmap is on main and predates the package pipeline, so it has no plan; the gate accepts the README form (depcheck 0 problems) but nothing will announce these eight needs to HilbertModules, VonNeumannAlgebras and LieGroupoidsPoisson. No roadmap on main uses `gap:` markers today (grep of every README under `TauCetiRoadmap/` on main: none), so this is the first and the board's process has no entry for it.

Witness: `gate.md` at this head, `depcheck=0`; directory listing of the folder.

Repair: none in this folder is possible by the rules (nothing outside the roadmap folder may be edited and the plan lives on the board). For the board: record the eight slugs with `supplier` and `section` in a plan entry for this package, or announce them by hand on the three suppliers' open jobs. Not blocking.

## R03 (P3) — Attal locator: relation (8.18) is on page 19, not 18

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` line 775 ("(Attal, Def. 8.20, Prop. 8.21 and (8.18), p. 18)").

Claim: Definition 8.20 and Proposition 8.21 are on p. 18 (attal-fock lines 654, 661), but the one-parameter form `W_u W_v = e^{−i Im⟨u,v⟩} W_{u+v}` labelled (8.18) is on p. 19 (attal-fock line 695, after the page-19 marker at line 682). The two-parameter form (8.17) on p. 18 (line 658) is what the p. 18 citation reaches.

Repair: "(Attal, Def. 8.20 and Prop. 8.21, p. 18, and (8.18), p. 19)". The references entry (lines 990–995) gives no pages and needs no change.

## R04 (P3) — QuantumFoundations QF4 also states strong continuity of the Fock Weyl group on the coherent-vector span

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` lines 775–777 ("that `t↦W_F(tf)` is strongly continuous, from the continuity of `u↦e(u)` on the total set and uniform boundedness"); QuantumFoundations at its open head, QF4 prerequisite section ("Derive strong continuity of W from its Weyl relations and vacuum characteristic function on the dense coherent-vector span, extending to every vector by the unitary norm bound").

Claim: the same theorem (regularity of the Fock Weyl representation, proved on the exponential-vector span and extended by the unitary bound) is planned at both heads. Both heads name D8 the owner of "their regular representations" (this README line 12; QF4's opening sentence "D8 supplies CAR and Weyl algebras, their regular representations"), so the duplicate is QF4's sentence, not this one: QF4's statement is the stronger continuity in the one-particle argument `h ↦ W(h)` (Grundling's Theorem 6.5), of which D8's ray continuity is the special case it should cite.

Repair: nothing in this folder. For the QF4 author: cite D8's regularity of `π_F` and prove only the continuity in `h`.

## R05 (P3) — The sibling revision #1137 of this folder still carries the earlier ownership sentence

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` line 12 at this head versus the same paragraph at the head of the other open revision of this folder (its line 13: "QuantumFoundations QF4 owns the generic Fock/second-quantization API and proves the normalization adapter `Φ_D8(h)=(a(h)+a†(h))/√2` on its specified invariant domain").

Claim: the two sentences are compatible in substance (both give QF4 the closure identification and keep the carriers and basic field operators in D8), but they are not identical, and that revision has none of this head's D5/D8 Checks, exponential vectors or Fock Weyl operators. Two open revisions of one folder cannot both merge as written.

Repair: none here. The second to merge must be rebased onto the first and carry this head's line 12 and D8 paragraph verbatim.

## R06 (P3) — Unused hypotheses (carried from the previous review)

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/Suggested.lean` line 51 (`continuous_action` under the section's `[IsTopologicalGroup G]`), lines 104 and 113 (`hα` in `kms_invariant` and `kms_entire_identity`).

Claim: joint continuity follows from point-norm continuity and the isometry of each `A ≃⋆ₐ[ℂ] A` (pinned `NonUnitalStarAlgHom.nnnorm_apply_le`) with no hypothesis on the topology of `G`; the KMS proofs (table below) use only the strip functions of `IsKMS`. Not a defect by the review rules; a note.

## R07 (P3) — Pre-existing shape: Checks only on the material added by this pull request

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` lines 711–743 (CAR completion, represented-family uniqueness, separability), 745–752 (gauge-invariant quasi-free states), 754–766 (universal Weyl algebra and its spectrum theorem), 818–846 (quasi-free Weyl states, thermal covariance), 848–947 (D9 definitions: quasi-local algebra, interaction norms, van Hove nets, mean entropy, pressure).

Claim: the roadmap predates the house shape (no `*Needs:*` lines, no per-layer Examples/Dependencies, section headings `D1`–`D9`); this revision added `**Checks.**` lists to the four paragraphs it rewrote (D5 unit-space representation, D8 CAR Fock, Bogoliubov, Fock Weyl) and to nothing else. The pre-Hilbert comparison and represented-family uniqueness paragraph (lines 711–713, new in this pull request) has no Checks of its own; its h=0 case is covered by the preceding list, and `h=ℂ` with the zero representation on `K=0` (where `1=0`, the excluded exception) is the natural negative control.

Repair: add that one bullet; the older definitions are the roadmap's standing debt, not this revision's.

## Verified sound

**Repair of the previous review's findings, at this head.** R01 (two UPWARD edges): the "supplies" sentences for HilbertModules and VonNeumannAlgebras are rewritten as eight "What X must provide (gap:…)" contracts (lines 47–105); gate `depcheck=0`, my rerun of the depcheck: `depcheck: 204 roadmaps, 1419 edges, 0 problem(s)` (verbatim, no UPWARD, CYCLE or moved line). Repaired, with R01/R02 above on their form. R02 (three owners of the Segal-field adapter): line 12 now gives QF4 "the essential self-adjointness of `Φ₀(f)` on `D_fin`, the identification of its closure with the Stone generator `Φ(f)`, and the vacuum cyclicity and irreducibility of `π_F`", and lines 792–796 repeat it; QuantumFoundations' head says the same ("QF4 owns the closure/domain comparison …; D8 owns those Weyl/field and vacuum identities") and RelativisticQuantumFieldTheory's head reads "QF4 proves the D8 normalization adapter … on the finite-particle core" and "D8, not QF, owns the CCR/CAR/Weyl algebra and regular representations". Repaired. R03 (Nelson re-planned): the sentence is gone; essential self-adjointness is QF4's. Repaired. R04 (`integratedOperator` by choice over a sorry): deleted. Repaired. R05 (padding, namespace, docstring, names): `scalarIntegrated`, `scalarIntegrated_apply`, `integratedOperator_apply` and the `Integrated.Basic` import are deleted; namespace `TauCetiRoadmap.OperatorAlgebraDynamics`; the docstring has the required form and lists the non-statable headlines by layer with the missing carrier; each of the six Lean names appears in the README (lines 121, 139, 144, 594, 598, 596–597 and 1008–1012). Repaired. R06 (β>0 only): `IsKMS` uses `Set.uIcc 0 β`/`Set.uIoo 0 β`; `kms_invariant` takes `β ≠ 0`; README lines 588–596 state the three cases. Repaired; degenerate cases checked in the table. R07: carried as R06 above. R08 (no Checks on new definitions): four `**Checks.**` lists added (lines 398–420, 684–699, 715–731, 798–814), each with the two-term witnesses asked for. Repaired. R09 (locators): "Theorem 4.22, Corollary 4.23 and Theorem 4.24", "Theorem 5.4", "Chapter III Proposition 2.7", "equal to 1". Repaired.

**Gate and build.** `gate.md` at c0af879: every scanner 0, `build=0`, OK. `lake env lean` on `Suggested.lean` in the pull-request worktree: exactly four `declaration uses sorry` warnings (lines 51, 68, 103, 112), nothing else. The signatures tool's "Unknown identifier `TauCeti.ContRepresentation.IsUnitary`" is an artifact of elaborating against the content checkout's newer Tau Ceti pin; at this worktree's pin the declaration is `TauCeti/RepresentationTheory/Continuous/Unitary/Basic.lean` line 52 (line 48 at the content pin, same name), and the build passes at both. Diff outside the folder against `origin/main`: none.

**Elaborated signatures.** All six declarations `#check`ed in a scratch copy (namespace renamed); each elaborated type agrees with `scratch/signatures.md` and with its README statement. The one "dropped binder" lead, `IsCovariant` without `[TopologicalSpace G] [IsTopologicalGroup G]`, is correct: the covariance identity is algebraic and the README says so (line 139 with the docstring). `#print axioms` on `IsKMS` and `IsCovariant`: no `sorryAx`. Degenerate strip sets elaborated and proved in the scratch file: `Set.uIcc (0:ℝ) 0 = {0}`, `Set.uIoo (0:ℝ) 0 = ∅`, and `Set.uIcc 0 β = Set.Icc β 0` for `β < 0`, so the β=0 predicate is the tracial condition along orbits and the β<0 predicate is the reversed strip, as the README and docstring say.

**One-tactic probe.** On the scratch copy each of the four sorried theorems was tried with `first | fun_prop | continuity | (simp_all [IsKMS]; done) | (simp; done) | rfl | infer_instance`; all four fail (the battery falls through to the last alternative's error at lines 54, 75, 107, 118 of the probe). No integrated covariant form, KMS notion, CAR, Weyl or Fock carrier exists in the pinned Mathlib or Tau Ceti (grep for `KMS`, `Weyl`, `Fock`, `CrossedProduct`: only `TauCeti/Algebra/CrossedProduct/*` (Galois crossed products, excluded at README line 1002), `TauCeti/Algebra/Lie/GeneralLinear/Fock.lean` (finite-dimensional Clifford module) and Mathlib's `Analysis/InnerProductSpace/StandardSubspace.lean`). Nothing in the file is padding; the two definitions are the minimum needed to state the KMS and covariance headlines.

**Headline theorems.** Green and symmetric imprimitivity, Takai duality, the Muhly–Williams disintegration, Renault's equivalence theorem, amenability ⇔ nuclearity, the Cuntz identification, the modular characterization of KMS states, the KMS simplex, ground states, the CAR/Weyl constructions and quasi-free uniqueness, Gibbs ⇔ KMS, the variational principle and high-temperature uniqueness: none has a carrier at the pins and each is named in the module docstring with its missing carrier. The four statable headlines (joint continuity, integrated form, KMS invariance, analytic KMS identity) are stated at the README's generality.

**Library declarations opened at the pins** (Mathlib 6b7abb3c, Tau Ceti a91d3aaf of the pull-request worktree): `PositiveLinearMap.GNS` (`Mathlib/Analysis/CStarAlgebra/GelfandNaimarkSegal.lean` line 147, `abbrev GNS := UniformSpace.Completion f.PreGNS`), `gnsNonUnitalStarAlgHom` (line 196), and the file's TODO at line 32 that the cyclic vector and recovery of the functional are not yet constructed, so `gap:gns-states-and-bicommutant` asks for nothing the pin has; `VonNeumannAlgebra` (`Mathlib/Analysis/VonNeumannAlgebra/Basic.lean` line 67, a star subalgebra equal to its double commutant by definition; line 23 records the bicommutant theorem as unproved); `ContinuousLinearMapWOT` (`Mathlib/Analysis/LocallyConvex/WeakOperatorTopology.lean`); `CStarModule` (`Mathlib/Analysis/CStarAlgebra/Module/Defs.lean` line 72); `TauCeti.ContRepresentation.IsUnitary` (above); `Measure.modularCharacter : G →* NNReal` (`#check`ed); Tau Ceti `Topology/Algebra/PontryaginDual.lean` (only `circleEquivPontryaginDualInt`, no biduality or Plancherel, so `gap:von-neumann-crossed-products`' harmonic-analysis half is a real need; see R01) and `Analysis/Bochner/LocallyCompactGroup.lean` (exists).

**Cross-roadmap citations resolved** (each at the head the brief names, or on main):

| Citation | Where found | Note |
|---|---|---|
| BanachAlgebras A7 | main, line 875; line 1021 defers Fourier inversion/Plancherel/double dual to V11 | consistent with the gap |
| AmenableGroups | main | |
| CStarAlgebras C1–C2, C5, C6, C7 | #860 head, lines 85, 263, 546, 637, 730 | not in the merge order; not flagged |
| HilbertModules H1–H3 (gaps) | #861 head, lines 123, 176, 259 | |
| VonNeumannAlgebras V0–V1, V4, V4.0.Fields, V4.0.Decomposition, V8, V10, V11 (gaps) | #889 head: Layers 0, 1, 4, 8, 10, 11 at lines 275, 392, 970, 1917, 2247, 2785; V4.0.Fields line 245, V4.0.Decomposition line 258 (consumes Fields and the given diagonal); V11 Plancherel/duality line 251 | |
| OperatorTheory/SelfAdjointSpectralTheory SA-B14, B44, B50, B59, B67, B79, B85 | main, milestones B2 (line 766), B3 (768), B6 (778); line 1371 records SA-B85 consuming V4.0.Fields | the stated order Fields → SA-B85 → Decomposition → D5 matches |
| OneParameterSemigroups | `Completed/OneParameterSemigroups` | |
| LieGroupoidsPoisson G0 (gap) | #1050 head, G0.0 line 261 | |
| RepresentationTheory/CompactGroups | main, Peter–Weyl | |
| RepresentationTheory/SpinRepresentations | #1207 head, `RepresentationTheory/SpinRepresentations/README.md` | Clifford algebra |
| FreeProbability F3 | main, line 255; full Fock space line 328 | |
| QuantumFoundations QF4 (owner of the Segal-field closure) | #1771 head, "QF4 prerequisite — Fock-operator API on D8 carriers" | read through `roadmaps show`; R04 |
| Consumers: Subfactors D8 | #874 head line 279 | CAR, Fock, quasi-free, Bogoliubov functoriality |
| CStarClassification D1–D4, D2/D6, D8 | #863 head lines 56, 35, 161, 633 | |
| OperatorKTheory D1–D4 | #866 head line 40 | |
| NoncommutativeGeometry D1–D2, D4 | #1143 head line 61 | |
| RelativisticQuantumFieldTheory D8/QF4 | #1772 head lines 21, 400, 416 | `exp(iφ(f)) = W_D8(√2Kf)` with vacuum value `exp(−‖Kf‖²/2)` = D8's `exp(−‖√2Kf‖²/4)` |

Ownership by object (`roadmaps grep`, every open head and main): exponential/coherent vectors and the Fock Weyl operators on them are defined only in this head (QF4 names "the dense coherent-vector span" without defining it; R04); the Bogoliubov `(U,V)` automorphism, the CAR Fock representation, the quasi-free states and the Weyl algebra have no other owner; KMS states in VonNeumannAlgebras V10 are the W*-form (previous review's convention check stands). Ownership against open pull requests not among the brief's checkouts (QuantumFoundations #1771, RelativisticQuantumFieldTheory #1772) was checked only through `roadmaps show`/`grep`.

**Seeded sample (15 locators) against the texts.** Attal, *Fock spaces* (author page, cache text `attal-fock`): Definition 8.4 line 268 (`ε(u)=Σ u^{⊗n}/n!`, `⟨ε(u),ε(v)⟩=e^{⟨u,v⟩}`), with his sector norm `‖f‖²=Σ n!‖f_n‖²_⊗` at lines 254–256, so the README's conversion to `Σ u^{⊗n}/√(n!)` in the tensor norm is right; Proposition 8.5 line 279 (density of the span and linear independence, proof by polarization and `u^{∘n}=d^n/dt^n ε(tu)|_0`, lines 311–316); Corollary 8.6 line 317 with continuity of `u↦ε(u)` from `‖ε(u)−ε(v)‖²=e^{‖u‖²}+e^{‖v‖²}−2Re e^{⟨u,v⟩}` at line 322; Definition 8.20 line 654–656 (`W_α ε(v)=e^{−‖u‖²/2−⟨u,Uv⟩}ε(Uv+u)`), (8.17) line 658, Proposition 8.21 line 661 (isometry on coherent vectors, inverse by (8.17), unitary), (8.18) line 695 (R03), Proposition 8.23 lines 699–707 (`W_{tu}=exp(it·(1/i)(a*(u)−a(u)))` by differentiating on `ε(k)`). Williams draft 3.1: Theorem 4.1 line 6878 (commuting free and proper actions of K and H on P, commuting actions α, β on A; exactly D3's hypotheses), Theorem 5.9 line 10032 (H ⊂ K closed), Theorem 7.13 line 12297, Corollary 7.18 line 12490. Sims notes: Lemma 4.2.3 line 1253, Theorem 4.2.7 line 1324, Proposition 4.3.2 line 1361, strong effectiveness line 1424 and Theorem 4.3.3 line 1431. Takeishi Theorem 5.4 line 496. Sims–Williams Theorem 13 line 552, Theorem 17 line 733. Muhly–Williams Theorem 5.5 line 1174 (second countable, locally Hausdorff; D5 specializes to Hausdorff) and Theorem 7.8 line 2410 (dense domain, dense range, inductive-limit continuity, adjoint identity). All support the statements as written.

**Adversarial table.**

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `IsKMS`, β=0 | `uIcc 0 0`, `uIoo 0 0` | strip `{Im z=0}`, interior ∅; `F(t+0·i)=F(t)` so both boundary rows give `φ(aα_t b)=φ(α_t(b)a)` for all t; boundedness `≤‖a‖‖b‖` | tracial condition along orbits, as README line 591 | none |
| `IsKMS`, β<0 | `uIcc 0 β = Icc β 0` (proved in scratch) | lower edge `Im z=β` carries `φ(α_t(b)a)`, upper edge ℝ carries `φ(aα_t b)` | the reversed strip "with the same boundary values" | none |
| `IsKMS` convention | A=M₂(ℂ), K=diag(1,0), τ_t=Ad e^{itK}, ω=Tr(e^{−βK}·)/Z, a=e₁₂, b=e₂₁ | `e^{itK}e₂₁e^{−itK}=e^{−it}e₂₁` ⇒ F(t)=e^{−it}e^{−β}/Z, F(iβ)=e^{β}e^{−β}/Z=1/Z=Tr(e^{−βK}e₂₂)/Z=ω(ba); sign e^{+βK} gives F′(iβ)=e^{2β}/Z′≠1/Z′=ω′(ba) | Gibbs sign pinned, BR convention | none |
| `kms_invariant`, β≠0, nonunital A | approximate unit e_λ; A=C(S¹) rotation at β=0 | `|φ((1−e_λ)x)|²≤(1−φ(e_λ))‖x‖²`; F_{e_λ,a}→F uniformly on the strip; glue iβ-periodically, bounded entire ⇒ constant; at β=0 evaluation at z₀ moves to e^{it}z₀ | true for β≠0, false for β=0 (hypothesis `hβ` needed and present) | none |
| `kms_entire_identity`, all β | a=0, b=0, β=0, β<0 | G(z)=φ(aF(z)) entire; F_{ab}−G vanishes on ℝ, Schwarz reflection ⇒ zero on the strip ⇒ F_{ab}(iβ)=φ(ba)=φ(aF(iβ)); β=0 gives φ(ab)=φ(ba) from the tracial row at t=0 | true; `hα` unused | R06 |
| `continuous_action` | trivial G; ℤ/2 on ℂ² by swap; S₃ on ℂ³ | `‖α_g a−α_h b‖≤‖a−b‖+‖α_g b−α_h b‖`, isometry of α_g (both directions) | true without the topological-group hypothesis | R06 |
| `IsCovariant` | ℤ/2 on ℂ², π diagonal, U=flip; U=1 | `Uπ(a)=π(swap a)U` holds; `U=1` fails at a=(1,0) | discriminates | none |
| `exists_integratedOperator` | μ=0, f=0, H=0; uncountable discrete G with counting μ | integrand a.e. supported on a σ-compact set (inner regularity), orbit continuous ⇒ a.e. strongly measurable; `‖∫π(f g)U_gξ‖≤∫‖f g‖‖ξ‖` | true | none |
| D8 exponential vectors `e(g)=Σ g^{⊗n}/√(n!)` | u, v; u=v=0 | `⟨e(u),e(v)⟩=Σ⟨u,v⟩ⁿ/n!=e^{⟨u,v⟩}` with `‖u^{⊗n}‖=‖u‖ⁿ`; Attal's `Σu^{⊗n}/n!` in the n!-weighted norm has the same norms | same vectors, same operators | none |
| `a(f)e(g)`, `a†(f)e(g)` | n-th sector | `a(f)e(g)_n=√n⟨f,g⟩g^{⊗(n−1)}/√(n!)=⟨f,g⟩e(g)_{n−1}`; `d/ds e(g+sf)|_0` has n-th component `nP_s(f⊗g^{⊗(n−1)})/√(n!)=√n P_s(f⊗g^{⊗(n−1)})/√((n−1)!)=a†(f)e(g)_{n−1}` | README's Prop. 8.23 sentence correct | none |
| `W_F(f)e(g)` formula vs Attal `W_u`, u=if/√2 | general | `−‖u‖²/2=−‖f‖²/4`; `−⟨u,g⟩=−conj(i)⟨f,g⟩/√2=+i⟨f,g⟩/√2`; `g+u=g+if/√2` | identical to line 770 | none |
| `W_F(f)` isometric | e(g), e(g′) | exponent `−‖u‖²−⟨g,u⟩−⟨u,g′⟩+⟨g+u,g′+u⟩=⟨g,g′⟩` | preserves inner products of exponential vectors; well defined by linear independence | none |
| Weyl relation | u=if/√2, v=ig/√2 | `W_uW_v=e^{−i Im⟨u,v⟩}W_{u+v}`, `⟨u,v⟩=⟨f,g⟩/2` ⇒ `e^{−i Im⟨f,g⟩/2}W_F(f+g)` | matches README and `σ=Im⟨·,·⟩` | none |
| `W_F(0)=1`, `W_F(−f)=W_F(f)*` | f | `W_F(f)W_F(−f)=e^{−i Im⟨f,−f⟩/2}W_F(0)=1`, isometry with two-sided inverse ⇒ unitary, adjoint = inverse | as stated | none |
| Vacuum characteristic function | f; h=ℂ, f=1 | `W_F(f)Ω=e^{−‖f‖²/4}e(if/√2)`, `⟨e(0),e(v)⟩=1` ⇒ `e^{−‖f‖²/4}`; f=1: `e^{−1/4}`; translation by `if`: `e^{−1/2}` | Check line 801 correct | none |
| Generator of `t↦W_F(tf)` | e(g) | `(1/i)d/dt[e^{−t²‖f‖²/4+it⟨f,g⟩/√2}e(g+itf/√2)]_0=(⟨f,g⟩e(g)+d/ds e(g+sf)|_0)/√2=Φ₀(f)e(g)` sectorwise; Attal's `(1/i)(a*(u)−a(u))` with u=if/√2 equals `(a(f)+a*(f))/√2` | the 1/√2 is forced | none |
| Commutator and phase Check | h=ℂ, f=1, g=i | `⟨1,i⟩=i`, Im=1: `W_F(1)W_F(i)=e^{−i/2}W_F(1+i)`; `⟨i,1⟩=−i`: `W_F(i)W_F(1)=e^{i/2}W_F(1+i)`; ratio `e^{−i}`; BCH with `[Φ₀(1),Φ₀(i)]=i` gives `e^{−i}` | Check line 803 correct | none |
| Vacuum variance | general; unnormalized field | `⟨Ω,Φ₀(f)²Ω⟩=½‖a†(f)Ω‖²=‖f‖²/2`; `−d²/dt² e^{−t²‖f‖²/4}|_0=‖f‖²/2`; `a+a†` gives `‖f‖²` | Check line 807 correct | none |
| Analytic-vector estimate | ψ with sectors ≤N | `‖aψ‖²≤N‖f‖²‖ψ‖²`, `‖a†ψ‖²≤(N+1)‖f‖²‖ψ‖²` ⇒ `‖Φ₀ψ‖≤√2√(N+1)‖f‖‖ψ‖`; k-fold from n: `(√2‖f‖)ᵏ√((n+k)!/n!)` | as stated | none |
| Strong continuity of `t↦W_F(tf)` | span of e(g) | scalar `e^{−t²‖f‖²/4+it⟨f,g⟩/√2}` continuous, `e(g+itf/√2)` continuous (Attal line 322), `‖W_F‖=1` ⇒ extends to the closure | regular representation | R04 (owner note) |
| CAR Fock, h=ℂ | basis (Ω,e₁) | `a†(1)Ω=e₁`, `a(1)e₁=Ω` ⇒ `a(1)=E₁₂`; `a(1)²=0`, `E₁₂E₂₁+E₂₁E₁₂=1`; `ω₀(a(f)*a(g))=0`, `ω₀(a(f)a(g)*)=⟨f,g⟩`; S=1: `⟨g,f⟩` | Check line 689 correct | none |
| √(n+1) Check | g⊥f, b†(f)g=P_a(f⊗g) | `‖P_a(f⊗g)‖²=(2‖f‖²‖g‖²−2|⟨f,g⟩|²)/4=‖f‖²‖g‖²/2`; `b(f)b†(f)g=½‖f‖²g`, `b(f)g=0` | sum `‖f‖²g/2`, not `‖f‖²g` | none |
| Antilinearity | λ=i | `{a(λf),a(g)*}=λ̄⟨f,g⟩` ⇒ `a(λf)=λ̄a(f)` | correct | none |
| Bogoliubov relations | expand `{γa(f),γa(g)*}` and `{γa(f),γa(g)}` with `⟨V*x,y⟩=⟨Vy,x⟩` | `⟨Uf,Ug⟩+⟨Vg,Vf⟩=⟨(U*U+V*V)f,g⟩`; conj of `⟨Uf,Vg⟩+⟨Ug,Vf⟩` is `⟨(V*U+U*V)f,g⟩`; V* antilinear | the four relations are right | none |
| Bogoliubov Checks, h=ℂ | V=conj: U=0; U=1; U=cosθ, V=sinθ·conj | `⟨Vy,x⟩=yx=⟨x̄,y⟩` ⇒ V*=V; U=0: all four hold, `{a(f̄)*,a(ḡ)}=gf̄=⟨f,g⟩`; U=1: `U*U+V*V=2`, `(a+a*)²·2=2`; rotation: `V*U+U*V=2sinθcosθ·conj`, `(cosθ a+sinθ a*)²=sinθcosθ`; `Re(fḡ)=Re⟨f,g⟩` | all four Checks correct | none |
| Weyl generator unitarity | f | `W(f)*W(f)=W(−f)W(f)=e^{−iσ(−f,f)/2}W(0)=1` | as stated | none |
| D5 Checks | empty G; group as one-unit groupoid; pair groupoid X×X | C*(∅)=0 ⇒ H=0; `C₀(pt)=ℂ`, `m(1)=1_{M(C*(G))}`, `h∘r` constant ∉ C_c for noncompact G; `(m(h)f)(x,y)=h(x)f(x,y)`, `L(f)ξ(x)=∫f(x,y)ξ(y)dμ`, ρ_L(h)=M_h, multiplicity one; X infinite with full-support μ ⇒ dim L²=∞ ⇒ no compact identity | all four Checks correct | none |
| D5 transport Check | L₁=L₂, T=I, λ=2μ | densities dμ/dλ=1/2; T=0 ⇒ zero fibre maps | correct | none |
| Gap minimality | each of the eight slugs against the pins and main | GNS cyclic vector: Mathlib TODO; bicommutant theorem: Mathlib TODO; Plancherel/biduality: not at the pins, deferred by BanachAlgebras A7 to V11; Hilbert modules: only `CStarModule` class; groupoid topology: no owner on main | nothing asked for is already provided | R01 (form only) |

## Not verifiable

- Bratteli–Robinson, *Operator Algebras and Quantum Statistical Mechanics 1* and *2* (Springer): resolve only to paywalled pages (`uncertified`). Definition 5.3.1 and §§5.2.1, 5.3.1 (cited by `IsKMS` and both KMS theorems), Theorems 5.3.10, 5.3.30, 5.4.4, 6.2.4, 6.2.16, 6.2.18, 6.2.40, 6.2.42, Proposition 6.2.45, Volume 1 4.1.19–4.1.25 are cited by locator alone; the KMS convention, the Fock normalization `e^{−‖f‖²/4}` and the Fermi factor were recomputed in the table instead.
- Renault, *A Groupoid Approach to C*-Algebras*, LNM 793 (Springer): same; Chapters I–III cited by locator alone. Muhly–Williams Theorem 7.8 (readable) restates Renault's Proposition 4.2.
- Grundling's notes cited by QuantumFoundations (Theorem 6.5) were not opened; R04 rests on QF4's own sentence.
- No `sources.toml` exists in the folder; Attal was fetched into the cache (author page, `attal-fock`) but nothing was recorded.

## Source issues

- none
