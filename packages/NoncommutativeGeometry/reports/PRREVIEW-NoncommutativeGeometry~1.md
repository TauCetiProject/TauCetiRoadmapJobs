# Review of NoncommutativeGeometry (pull request #1143 at 537f769)

**Verdict:** needs changes

This is a revision of the roadmap `TauCetiRoadmap/NoncommutativeGeometry` that is on main. The pull request changes only `README.md` and `Suggested.lean` of that folder (no edit outside it). The findings below cover the whole folder at the head, not only the diff; where a defect pre-exists on main this is said.

## R01 (P1) — NoncommutativeGeometry and SmoothBanachRepresentations cite each other as suppliers

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` lines 127–129 ("These maps and pure-tensor equations supply scalar restriction and extension for SmoothBanachRepresentations SB7") and lines 562–565 (N6 "comparing the two seminorm families … with SmoothBanachRepresentations SB2/SB8" and "Consume that roadmap's generic density, complete Fréchet star-algebra, Lie-derivation and all-matrix inverse/holomorphic-closure theorems").

Claim: N1.Tensor is a supplier of SmoothBanachRepresentations SB7, and N6 is a consumer of SmoothBanachRepresentations SB2/SB8, "creating no reverse dependency".

Witness: at the open head of SmoothBanachRepresentations (`TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md`), line 39 names "NoncommutativeGeometry N1.Tensor … the sole owner" and SB7 item 3 (line 154) consumes it; line 42 and line 165 say "NoncommutativeGeometry N6 consumes SB8". Each roadmap is a supplier of the other. The merge order is a single direction of supply per roadmap, not per section: one of the two must precede the other, and whichever is placed second has an upward edge. Both pull requests are the same author's, so the "other authors' open pull requests" exception does not apply. The depcheck does not report it only because SmoothBanachRepresentations is not in the merge order yet. SB8 (line 165) also states the estimates `Q_k ≤ C_k P_k`, `P_m ≤ D_m Q_(m+3)` that N6 claims to prove, so the same statement currently has two owners.

Repair (tested against the text on main, which has no such cycle): break the cycle on the N6 side, since N1.Tensor's work has already landed in Tau Ceti under this roadmap. Restore N6's own route, which main already had: "Identify 𝒜_θ with the smooth vectors of the two-torus gauge action; prove spectral invariance in all matrix levels by differentiating inverses and applying K3", keep the two-way seminorm estimates and the θ=0 witness as N6's own targets, and delete the SB2/SB8 citation and the sentence "N1.Tensor precedes SB7; the later SB8→N6 Fourier application creates no reverse dependency". SmoothBanachRepresentations may then keep consuming N1.Tensor, and its line 42/165 claims that N6 consumes SB8 become that roadmap's to drop. (The alternative, moving N1.Tensor into SmoothBanachRepresentations SB7 and citing it from N1.Cyclic, also breaks the cycle but contradicts the delivered library work.)

## R02 (P2) — Gate: three UPWARD supplier edges (depcheck fails)

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` lines 58–60, the supplier-table rows for HilbertModules H1–H6, NoncommutativeIntegration I1 and VonNeumannAlgebras V0,V4,V6,V10.

Claim: these roadmaps are suppliers of this one.

Witness: the gate at 537f769 reports `depcheck=3 … FAIL` with

```
UPWARD: NoncommutativeGeometry (on main) -> HilbertModules (#9) at README lines [58]
UPWARD: NoncommutativeGeometry (on main) -> NoncommutativeIntegration (#275) at README lines [59]
UPWARD: NoncommutativeGeometry (on main) -> VonNeumannAlgebras (#3) at README lines [60]
depcheck: 204 roadmaps, 1429 edges, 3 problem(s)
```

The three rows are unchanged from main; this roadmap is on main and is not listed in the merge order, so the check ranks it before every listed open roadmap. The same kind of edge at line 257 (AlgebraicKTheory, listed at position 11) and the links to OperatorKTheory, CStarAlgebras and SmoothBanachRepresentations (not listed) are not reported: a scratch README containing only those three links gives `depcheck: 204 roadmaps, 1422 edges, 0 problem(s)`. So the tool's treatment of a main roadmap that consumes open roadmaps is not uniform, and the review brief's own list of permitted suppliers includes VonNeumannAlgebras, HilbertModules, AlgebraicKTheory and NoncommutativeIntegration. I report the gate's lines as the rule requires (no acceptance while the gate fails) and flag the inconsistency: the previous round's order file (148 roadmaps) reported `NOT IN ORDER: NoncommutativeGeometry` for the same README.

Repair: this is a placement, not a README edit: the board inserts NoncommutativeGeometry into the merge order after its last listed supplier (NoncommutativeIntegration, position 276), after which the three lines are downward. If the board does not place a main roadmap, the rows must be repointed to roadmaps on main or the consumed objects moved into this roadmap, which would re-plan three suppliers and is not recommended.

## R03 (P2) — VonNeumannAlgebras "V6, V10" exist at neither open head

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` line 60: "VonNeumannAlgebras V0,V4,V6,V10 — Representations/GNS, basis-independent Hilbert trace, cyclicity, normal tracial weights and the tracial Lp comparison". Unchanged from main.

Claim: sections V6 and V10 of VonNeumannAlgebras supply the Hilbert trace, normal tracial weights and the tracial Lp comparison.

Witness: at the head of pull request #1041 (`TauCetiRoadmap/VonNeumannAlgebras/README.md`) the sections are V0–V4 and V4.0.Fields only; its Scope and ownership (lines 46–50) says traces, dimension functions and modular theory "belong to the Part II roadmap of this one". At the head of #889 the sections are "Layer 0" to "Layer 11" with no "V6"/"V10" labels. Neither head has a section the citation resolves to. The objects do exist elsewhere: #1041 V3.3 "Traces on B(H) and on group rings" is the Hilbert trace; NoncommutativeIntegration Layer 1 (cited as I1 by its line 56), which this roadmap already consumes, owns tracial Lp.

Repair: write the row as "VonNeumannAlgebras V0, V3.3, V4 — representations/GNS, the basis-independent trace on B(H) and its cyclicity, preduals and normality", and move "normal tracial weights and the tracial Lp comparison" into the NoncommutativeIntegration I1 row (its 1.1–1.5 own the trace and the Schatten identification). No section numbered V6 or V10 is cited anywhere else in the README.

## R04 (P3) — `NormalizedEvenCycle` and `SpectralTriple` are definitions no headline uses

Location: `TauCetiRoadmap/NoncommutativeGeometry/Suggested.lean` lines 86–108.

Claim (implicit): these carriers are needed to state a headline theorem.

Witness: the only sorried statement in the file is `exists_cyclicTwoCocycle_torusTwoCochain` (line 67), on the torus cochain; no declaration mentions either structure. The module docstring (lines 17–27) correctly says that the N3 character index theorem and the N5 Hochschild-class theorem are not statable at the pins (no Schatten ideal, trace class or Dixmier trace: confirmed by `#check` of `Schatten` and `ContinuousLinearMap.IsTraceClass`, both unknown at Mathlib 6b7abb3c). A definition that makes nothing statable is outside the file's remit.

Repair: delete both structures from `Suggested.lean` and drop the two backticked names in README N3 (line 327) and N5 (line 501), keeping the prose descriptions as targets. If a headline on them is wanted instead, one statable at the pins is the index theorem for the compression of a normalized even cycle with no summability: "for `e` with `π e` a projection, `π e ∘ F ∘ π e` restricted from the positive to the negative eigenspace of the grading is Fredholm" via Mathlib `ContinuousLinearMap.IsFredholm` (`Mathlib/Analysis/Normed/Operator/Fredholm/Basic.lean` line 123); its index identity with the character is not statable.

## R05 (P3) — Locators: the SBI theorem lies outside the cited page span; a Zulip thread cited for an API that now exists at the pin

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` line 672 ("Chapter III §§1–3, pp.187–205,216–218,229–231, for cycles, the cyclic bicomplex/SBI, torus cohomology and pairings") and lines 702–706 (the "Mathlib's Fredholm design discussion" link).

Witness: in the author-page copy (`connes94`, page markers equal printed pages), the SBI exact triangle is Theorem 26 at line 7650, printed page 208, outside 187–205; the cup product is Theorem 12 (line 7223, p. 197), S is Lemma 14 (line 7274, p. 198), the cycle characterisation is Proposition 4 (line 6933, pp. 190–191), the torus is Proposition 5 and Theorem 7 (lines 7980–8008, pp. 217–218), the pairings are Propositions 2–3 (lines 8469–8495, pp. 229–230). At the pinned Mathlib, `ContinuousLinearMap.IsFredholm`, `FredholmPackage` and `IsFredholm.index_comp` exist (`Mathlib/Analysis/Normed/Operator/Fredholm/Basic.lean` lines 123, 178, 613), so the Zulip pull-request discussion is a stale process reference.

Repair: cite by theorem number: III.1 Prop. 3–4 (pp. 190–191), Thm. 12 (p. 197), Lemma 14 (p. 198), Thm. 26 (p. 208); III.2 Prop. 5 and Thm. 7 (pp. 217–218); III.3 Prop. 2–3 (pp. 229–230); IV.1 Prop. 2 (p. 295), Prop. 1–2 (pp. 299–300), Def. 3 (p. 302), Prop. 4 (p. 303); IV.2 Def. 2 and Prop. 3–4 (pp. 312–313), Thm. 8 (p. 315); IV.6 pp. 356–357. Replace the Zulip link by the pinned declaration names and file.

## R06 (P3) — Shape and timeless wording

Location: whole README; new text at lines 439–449 ("Keep K5's matrices and swapped adapter and N2's Bott orientation unchanged"), 566–569 ("Retain the torus Fourier proof").

Witness: the README predates the house shape: no `# Roadmap:` title and `**Summary.**`, no `## Scope and ownership` / `## Conventions` / `## Exact supplier contracts` / `## How to read the build` / `## Layer k` headings, no `*Needs:*` lines, no `**Checks.**` lists (the new N1.Tensor section defines the completed projective tensor and the real/complex dictionary with no Check at all), no `### Examples` / `### Dependencies` per layer, no `## References` with per-claim locators. "Unchanged", "Keep", "Retain" describe a revision rather than the mathematics.

Repair: at minimum, give N1.Tensor three discriminating Checks (for example: on ℓ¹⊗̂ℓ¹ the projective seminorm of a pure tensor is the product of norms; on ℓ²⊗̂ℓ² the projective norm of Σ e_i⊗e_i over n terms is n while the Hilbert norm is √n, so the comparison with the Hilbert tensor is not an isometry; for complex E,F the element x⊗y+(ix)⊗(iy) of E_ℝ⊗_ℝF_ℝ lies in the span of (ix)⊗y−x⊗(iy), since in the complex tensor (ix)⊗(iy)=−x⊗y; a definition that forgot the quotient would keep it nonzero), and replace the revision words by statements ("K5's matrices e₁=σ₁, e₂=−σ₂ and N2's Bott orientation are the ones used here"). A full reshaping is a larger change the author may take or leave.

## Verified sound

**Gate and diff.** `git diff --stat origin/main...HEAD` touches only `README.md` (142 lines changed) and `Suggested.lean` (104 lines changed) of this folder; nothing outside. Gate at 537f769: every scanner 0 except `depcheck=3` (R02); `build=0`, `sorry-data=0`, `set_option=0`, `stray-files=0` (`PROGRESS.md`, `STATUS.md`, `metadata.toml` are generated roadmap files). Dependency check run by me:

```
UPWARD: NoncommutativeGeometry (on main) -> HilbertModules (#9) at README lines [58]
UPWARD: NoncommutativeGeometry (on main) -> NoncommutativeIntegration (#275) at README lines [59]
UPWARD: NoncommutativeGeometry (on main) -> VonNeumannAlgebras (#3) at README lines [60]
depcheck: 204 roadmaps, 1429 edges, 3 problem(s)
```

**Lean.** `lake env lean` on a scratch copy of `Suggested.lean` with `#check @` for all five declarations: elaborates with the single `sorry` warning; the elaborated types carry `[CompleteSpace H]` and `[SecondCountableTopology H]` on both structures and all four hypotheses on the theorem (matches `README` N3 "separable Hilbert space", N5, N6). One-tactic probe on `exists_cyclicTwoCocycle_torusTwoCochain`: `simp [torusTwoCochain]` leaves the cyclicity goal `τ(a(δ₁b δ₂c)) − τ(a(δ₂b δ₁c)) = τ(c(δ₁a δ₂b)) − τ(c(δ₂a δ₁b))` open and the anonymous-constructor attempt with `simp` fields times out: not padding. The `example` at line 57 is proved and tests the body of `torusTwoCochain` (ordered product via `MultilinearMap.mkPiAlgebraFin ℂ 3 A`). `CyclicTwoCocycle.cocycle` is N1's coboundary at n=2 with last sign (−1)³, and `cyclic` is φ(a,b,c)=φ(c,a,b), the n=2 case of φ(aₙ,a₀,…)=(−1)ⁿφ(a₀,…), which agrees with Connes III.1 Prop. 4(3) (line 6946: φ(a₁,…,aₙ,a₀)=(−1)ⁿφ(a₀,…,aₙ); the two shifts are inverse and carry the same sign).

**Library declarations opened at the pins (Mathlib 6b7abb3c, Tau Ceti a91d3aa).** `TauCeti.LinearPMap.resolventSet` and `resolvent` (`TauCeti/Analysis/Normed/Operator/Resolvent/Unbounded.lean` lines 168, 199): the resolvent is `(λ•I − A)⁻¹`, so `resolvent D i = (i−D)⁻¹`, as N5 says ("compare with the native (i−D)⁻¹"); `TauCeti.derivationLieAlgebra` (`TauCeti/Algebra/Lie/Derivation/Basic.lean` line 118): ℂ-linear endomorphisms with the Leibniz rule, as N6's "endomorphism-valued derivations"; `TauCeti.Complexification` with `equivProd`, `ofRealLI`, `reCLM`, `ContinuousLinearMap.complexify` (`TauCeti/Analysis/Normed/Module/Complexification.lean` lines 80, 303, 288, 274, 356; Taylor norm, needs a seminormed `X` for the topology, so N1.Tensor's "type synonym" for the locally convex case is right); Mathlib `LinearPMap.instStar` and `IsSelfAdjoint.dense_domain` (`Mathlib/Analysis/InnerProductSpace/LinearPMap.lean` lines 229, 241): `IsSelfAdjoint D` in `SpectralTriple` is `D† = D` and forces a dense domain; `ContinuousLinearMap.IsFredholm` (Fredholm/Basic.lean line 123); `IsCompactOperator`, `MultilinearMap.mkPiAlgebraFin`, `PiTensorProduct.projectiveSeminorm`, `UniformSpace.Completion`, `WithSeminorms` exist. Not at the pins: `Schatten`, trace class, a Dixmier trace, a cyclic cohomology carrier (Tau Ceti a91d3aa of 2026-10-05 predates `TauCeti.RingTheory.CyclicCohomology`, which `STATUS.md` records on later Tau Ceti; at a later pin `CyclicTwoCocycle` should give way to that carrier).

**Cross-roadmap citations resolved (16).** OperatorKTheory #866: K1–K7 headings; K5 Clifford model `e₁↦[[0,1],[1,0]]=σ₁`, `e₂↦[[0,i],[−i,0]]=−σ₂`, grading diag(1,−1) (lines 491–493); swapped reduction `e⊗1↦e₂, 1⊗e↦e₁` fixed, unswapped has class −β (lines 499–508); K3 `[z_s]×[z_t]=q*β` (line 350); K7 `A_θ=C(𝕋)⋊_αℤ`, `α(f)(z)=f(exp(2πiθ)z)`, v coordinate, u=U, positive-trace generator (lines 962–981); K4 compares with `ContinuousLinearMap.IsFredholm` (line 380). AlgebraicKTheory #1142: A0–A3 own K₀, GL∞/E∞, Whitehead, relative and ℂ⊕A unitizations and name "NoncommutativeGeometry N2 consumes A0–A3 and owns its algebraic cyclic pairings" (line 19). HilbertModules #861: H1–H6 (H6 `LinearPMap` module operators), N7 named as owner of the torus connections (line 120). NoncommutativeIntegration #864: "Layer k here is Ik" (line 56), 1.6 weak Lp. CStarAlgebras #860 C1–C5; IndexTheory #1077 I1–I8 (not a supplier, as stated). On main: BanachAlgebras A1–A4, A6 (bounded Hochschild cohomology, line 801); BanachSpaceTheory B4 (line 167); OperatorAlgebraDynamics D1, D2, D4 (lines 75, 143, 254); SelfAdjointSpectralTheory SA-E01–… (line 1202); OperatorIdeals singular values. SmoothBanachRepresentations #1145 SB2, SB7, SB8 exist (R01). VonNeumannAlgebras: R03.

**Ownership against open pull requests.** SpectralManifolds #1158 (line 7, 21), CompactQuantumMetricSpaces #1155 (lines 90–91, 606), HilbertModules/HeisenbergImprimitivity #1149 and RefinedTraceMethods #1493 (algebraic periodic cyclic homology, a different object) cite this roadmap as the owner of spectral triples, Dixmier traces and the smooth torus; no second builder found. Locally convex projective tensor: only this roadmap and SmoothBanachRepresentations (R01).

**Sources: seeded sample, 17 targets in `connes94` (author page, page marker = printed page).** IV.1 Def. 1 (lines 11021–11033, pp. 293–294): F=F*, F²=1, [F,π(a)] compact, γ=γ*, γ²=1, γπ=πγ, γF=−Fγ = `NormalizedEvenCycle`. Tr′(T)=½Tr(F(FT+TF)) (line 11242, p. 299) and Prop. 1 (cycle), τₙ with γ in even degree (lines 11252–11267) = N3. Prop. 2 (line 11282, p. 300): τ_{m+2} = −(2/(m+2)) S τ_m = N3 "compatibility with S". Def. 3 (lines 11343–11347, p. 302): even λₙ=(−1)^{n(n−1)/2}Γ(n/2+1), odd λₙ=√(2i)(−1)^{n(n−1)/2}Γ(n/2+1): the README's even λₙ agrees and its odd coefficient is the negative, as its Sources section declares. Prop. 4 (lines 11376–11406, p. 303): ⟨x,Ch⟩ = Fredholm index of eP|_{eH⁺}: eH⁺→eH⁻, matches "from the positive to the negative grading". IV.2 Def. 2 (line 11754, p. 312) Tr_ω with (log N)⁻¹Σ_{n<N}μₙ (README's log(1+N) is asymptotically the same normalisation); Prop. 3 (line 11765) and Prop. 4 (line 11789, p. 313): (s−1)ζ(s)→L iff logarithmic means →L, residue = N4's Tauberian bridge; Thm. 8 (lines 11865–11873, p. 315): D⁻¹∈L^{(n,∞)}, sign D=F, a and [D,a] in all δ-domains, φ_ω=λₙTr_ω(a₀[D,a₁]⋯[D,aₙ]|D|⁻ⁿ) with γ in even case, bφ_ω=0, equal evaluation on Hochschild cycles = N5 verbatim in substance. III.1 Prop. 3 (line 6905, p. 190): Ω¹=Ã⊗A, da=1⊗a; Prop. 4 (line 6933): cyclic cocycle ⇔ character of a cycle, with b and cyclicity as README N1; Thm. 12 (line 7223, p. 197): cup product = character of tensor cycle; Lemma 14 (line 7274): S = σ#; Thm. 26 (line 7650, p. 208): SBI exact (R05 locator). III.2 Prop. 5 (lines 7980–7985, p. 217): H⁰=ℂ, Diophantine ⇒ dim H¹=2, dim H²=1, else infinite-dimensional non-Hausdorff; Thm. 7 (lines 7998–8008, p. 218): HP^{ev}≃ℂ² basis Sτ, φ=(2πi)⁻¹τ(x₀(δ₁x₁δ₂x₂−δ₂x₁δ₁x₂)), HP^{odd}≃ℂ² basis τ(x₀δⱼx₁), δⱼ(U^ν)=2πi nⱼU^ν = N6. III.3 Prop. 2 (line 8469, p. 229): ⟨[e],[φ]⟩=(m!)⁻¹(φ#Tr)(e,…,e); Prop. 3 (line 8493, p. 230): (2i)^{−1/2}2^{−n}Γ(n/2+1)⁻¹(φ#Tr)(u⁻¹−1,u−1,…) = N2 with √(2i)=1+i. IV.6 (lines 13549–13560, pp. 356–357): (ξU₁)(s)=ξ(s+θ), (ξU₂)(s)=e^{2πis}ξ(s), ∇₁ξ=−2πi(s/θ)ξ, ∇₂=d/ds, index = dim Ker D − dim Ker D* = N7.

**Adversarial pass.**

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `torusTwoCochain` body (N6) | A=ℂ, δ=0; δ₁=δ₂ | both give 0; Lean `example` proves value (2πi)⁻¹τ(a(δ₁bδ₂c−δ₂bδ₁c)) | correct | none |
| `exists_cyclicTwoCocycle_torusTwoCochain` | Ω=A⊗Λ(ℂ²), d(a)=δ₁a e₁+δ₂a e₂, ∫a e₁e₂=τ(a) | d²a=(δ₁δ₂a−δ₂δ₁a)e₁e₂=0 by hcomm; ∫d(a e₁)=−τ(δ₂a)=0; ∫ωη for 1-forms (a e₁+b e₂)(c e₁+d e₂): τ(ad−bc) vs τ(cb−da)=−τ(ad−bc): graded trace; Connes III.1 Prop 4 ⇒ cyclic cocycle; bφ=∫a₀da₁da₂a₃−∫a₃a₀da₁da₂=0 | true with exactly the four hypotheses; unital not needed beyond `Ring` | none |
| `CyclicTwoCocycle` conventions | n=2 | b: +φ(ab,c,d)−φ(a,bc,d)+φ(a,b,cd)−φ(da,b,c) = README b with (−1)³; cyclic φ(a,b,c)=φ(c,a,b) = (−1)² shift | matches N1 and Connes Prop 4(3) | none |
| Hardy circle calibration (N3) | u=z, F=2P−1 on ℓ²(ℤ) | [P,u]=e₀⊗e₋₁*, T=(u⁻¹−1)[F,u]=2(e₋₁−e₀)⊗e₋₁*, Tr′T=TrT=2; λ₁=−(1+i)Γ(3/2)=−(1+i)√π/2; ⟨[u],Ch₁⟩=(1+i)⁻¹·½·(2/√π)·(−(1+i)√π/2)·2=−1; PuP: e_k↦e_{k+1} on k≥0, coker=⟨e₀⟩, index 0−1=−1 | consistent | none |
| Circle cocycle ψ (N2) | ψ(u⁻¹−1,u−1) | =(2πi)⁻¹∫z⁻¹dz=1; pairing (1+i)⁻¹(1/√π)·1=1/((1+i)√π); τ₁(a,b)=2Tr(a[P,b])=2ψ(a,b) checked on (z⁻¹,z) | consistent | none |
| Odd pairing vs mixed-complex constants (N2) | n=2k+1 | 2^{−n}/Γ(k+3/2)=k!/((2k+1)!√π) using Γ(k+3/2)=(2k+2)!√π/(4^{k+1}(k+1)!); ⟨ch_{2k+1},c_{2k+1}φ⟩=k!/((1+i)√π(2k+1)!)φ(u⁻¹,u,…) | the two displayed pairings agree | none |
| Even pairing vs ch chains (N2) | k=m | (−1)^m(2m)!/m!·(−1)^m/(2m)!·φ(e−½,e,…)=φ(e,…,e)/m! for normalized φ; k=0: τ(e) | agree with (m!)⁻¹(φ#Tr)(e,…,e) | none |
| σ_m and S normalization | ℂ, e=1 | Connes Prop 2(b): Sφ(e,…,e)=(m+1)φ(e,…,e) ⇒ S^mτ(1,…,1)=m! = σ_m(1,…,1); pairing with [1] = 1 | consistent with "σ_m ↦ z↦z" | none |
| Bott pairing ⟨β,φ_B⟩ (N2) | tautological L on ℂ⁺=S², deg L=−1 for ds∧dt | Grassmann curvature e de de, c₁=(i/2π)Tr Ω ⇒ ∫Tr(e de de)=−2πi·deg L=2πi; (2πi)⁻¹·2πi=+1 | +1 as stated | none |
| ψ₁#ψ₂ on q*β | deg q=+1 | (2πi)⁻²∫_{𝕋²}Tr(e de de)=(2πi)⁻²·2πi=1/(2πi)=(1/((1+i)√π))² | consistent | none |
| Product orientation (N3) | x⊠_u y with e₁=σ₁, e₂=−σ₂ | D₁e₁+D₂e₂=D₁σ₁−D₂σ₂=−i(σ₁δ₁−σ₂δ₂)=N7's D; swapped D₁e₂+D₂e₁=−D₁σ₂+D₂σ₁; U=(σ₁−σ₂)/√2: U²=1, Uσ₁U=−σ₂, Uσ₂U=−σ₁, Uσ₃U=−σ₃ | both reductions as displayed | none |
| ⟨β,Ch(x)#Ch(y)⟩ | Ch(x)=−(1+i)√πψ | ((1+i)√π)²/(2πi)=2πi/(2πi)=+1 | +1 | none |
| Naive bounded product | [F₁⊗1⊗σ₁, z₁] | =[F₁,z₁]⊗1⊗σ₁, rank 1 ⊗ id_{ℓ²(ℤ)}: not compact; (F₁σ₁−F₂σ₂)²=2≠1 | non-example correct | none |
| N7 Dirac Hochschild class | D=−i(σ₁δ₁−σ₂δ₂), γ=σ₃ | [D,a][D,b]=−(δ₁aδ₁b+δ₂aδ₂b−iσ₃δ₁aδ₂b+iσ₃δ₂aδ₁b); Tr₂(σ₃·)=2i(δ₁aδ₂b−δ₂aδ₁b); λ₂=(−1)Γ(2)=−1; φ_ω=(−1)(2i)/(4π)τ(…)=(2πi)⁻¹τ(…)=+φ | +φ, pairs +1 with β | none |
| |D| spectrum and Tr_ω|D|⁻² (N7) | lattice (m,n) | D²=−(δ₁²+δ₂²) (cross terms cancel by δ₁δ₂=δ₂δ₁), eigenvalue 4π²(m²+n²), mult. 2; Σ_{0<m²+n²≤R²}2/(4π²(m²+n²))≈(log R)/π, N≈2πR² ⇒ sum≈(log N)/(2π); p-summable iff p>2 | 1/(2π), kernel dim 2 | none |
| Heisenberg module (N7) | (ξU₁)(s)=ξ(s+θ), (ξU₂)=e^{2πis}ξ | (ξU₂U₁)=e^{2πiθ}(ξU₁U₂) ✓ U₂U₁=λU₁U₂; ∇₁(ξU₁)=(∇₁ξ)U₁+ξδ₁U₁ with δ₁U₁=2πiU₁ ✓; ∇₂(ξU₂)=(∇₂ξ)U₂+2πiξU₂ ✓; [∇₁,∇₂]=2πi/θ | Leibniz and curvature as stated | none |
| Coupled Dirac index (N7) | D⁺=−i(∇₁−i∇₂) | =−2πs/θ−d/ds; kernel exp(−πs²/θ)∈𝒮 (θ>0), adjoint d/ds−2πs/θ kernel exp(πs²/θ)∉L²; index +1; curvature trace (2πi)⁻¹(2πi/θ)·θ=1 | +1 = φ(generator) | none |
| Trivial module at θ=0 | D⁺=−2i∂_z on 𝕋² | ker = constants, coker = constants, index 0 | φ([1])=0 | none |
| Odd torus modules (N7) | ρ₁(U₁)=S, ρ₁(U₂)=V₊; ρ₂(U₁)=V₋, ρ₂(U₂)=S | V₊S=e^{2πiθ}SV₊ and SV₋=e^{2πiθ}V₋S ✓; (1−P_H)S(1−P_H): e₋₁↦0, onto ⇒ index +1; V diagonal ⇒ 0; ‖[F,ρ(a)]‖₁≤Σ2|m||a_{mn}|<∞ | consistent | none |
| ν_j(U_k)=δ_jk | ν_j=((1+i)√π/(2πi))φ_j | ν_j(U_k⁻¹,U_k)=((1+i)√π/(2πi))·2πiδ_jk; pairing (1+i)⁻¹(1/√π)·that=δ_jk | correct | none |
| Logarithmic ideal vs S_{(1,∞)} (N4) | N_k=2^{2^k}, μ_j=k/N_k on [N_k,2N_k), μ_j=(k+1)/N_{k+1} on [2N_k,N_{k+1}) | non-increasing; Σ_{j<N}μ_j≤2Σ_{i≤k+1}i≈k²≪log N≈2^k; (2N_k)μ_{2N_k−1}=2k→∞ | a diagonal operator in L^{(1,∞)} not in S_{(1,∞)} exists | none |
| L^{(n,∞)} ⇒ |T|ⁿ∈L^{(1,∞)} | μ_j≤C(j+1)^{−1/n} | μ_j(|T|ⁿ)≤Cⁿ/(j+1), partial sums ≤Cⁿ(1+log N) | true | none |
| Dixmier trace normalisation | Connes log N vs README log(1+N) | ratio log(1+N)/log N→1; both give the same Lim_ω for dilation-invariant ω | equivalent | none |
| N6 seminorm estimates | a=1+U₁, θ=0; general a | Q₀=sup|a_rs|=1, P₀=‖1+U₁‖=2; |r^kа_rs|≤(2π)^{−k}‖δ₁^k a‖ ⇒ Q_k≤C_kP_k; ‖δ^αa‖≤(2π)^mQ_{m+3}Σ(1+|r|+|s|)^{−3}, Σ_{n}4n/(1+n)³<∞ while Σ4n/(1+n)² diverges | both directions, +3 is the right offset, constants θ-free | none |
| N6 Hochschild dimensions | θ irrational Diophantine / not | Connes Prop 5: 1,2,1 and two-step resolution ⇒ 0 above 2; non-Diophantine: H¹,H² infinite-dimensional non-Hausdorff | as stated | none |
| N1.Tensor real/complex quotient | complex Fréchet E,F | E⊗_ℂF=(E⊗_ℝF)/span{(ix)⊗y−x⊗(iy)}; quotient of π^ℝ_{p,q} = inf over real representations of lifts = π^ℂ_{p,q}; Fréchet quotient by closed kernel is open | topological real-linear equivalence | none |
| N1.Tensor complexification | real Fréchet E,F | ℂ⊗_ℝ(E⊗_ℝF)≅E_ℂ⊗_ℂF_ℂ algebraically; seminorms equivalent not equal (README claims equivalence only) | consistent | none |
| `SpectralTriple` fields | D with non-dense domain | `IsSelfAdjoint D` ⇒ `D† = D` ⇒ dense domain (`Mathlib/Analysis/InnerProductSpace/LinearPMap.lean` line 241); resolvent at i is `(i−D)⁻¹`, compactness ⇔ that of (D−i)⁻¹ | no vacuous instance | none |
| Odd character sign vs Connes | n=1 | Connes λ₁=√(2i)Γ(3/2)=(1+i)√π/2 gives ⟨[u],Ch₁⟩=+1 while ind(PuP)=−1 under kernel-minus-cokernel; README's −(1+i) makes them agree | the declared deviation is forced by the index convention | none |

## Not verifiable

- none. Every locator sampled is in the author-page copy of Connes' book (`connes94`), which is the only source the README cites. Ownership against open pull requests whose files the brief does not give was not checked beyond the sibling checkouts listed.

## Source issues

- none
