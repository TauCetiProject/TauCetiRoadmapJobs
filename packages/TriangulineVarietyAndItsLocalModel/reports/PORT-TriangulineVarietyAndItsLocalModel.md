# PORT-TriangulineVarietyAndItsLocalModel

- **Branch:** `roadmap/trianguline-variety-and-its-local-model`, created from main at 3b51055.
  - A local branch of that name already existed from an earlier attempt of this job on main d0bb87a (commit c1e0b56, never pushed). I reset the branch to 3b51055 and used that folder only as a draft.
  - Everything that changed since the earlier attempt was re-verified in this run: SpringerResolutionAndCharacteristicCycles is now an open pull request, and main gained HopfologicalAlgebra. I also re-read the whole README.
- **Head commit:** `154076d` "TriangulineVarietyAndItsLocalModel: roadmap (README, Suggested.lean, metadata)". It adds exactly `TauCetiRoadmap/TriangulineVarietyAndItsLocalModel/{README.md,Suggested.lean,metadata.toml}` (3 files, 2351 insertions); nothing outside the folder changes.
- **Build** (`lake build TauCetiRoadmap.TriangulineVarietyAndItsLocalModel.Suggested`):
  `✔ [8954/8954] Built TauCetiRoadmap.TriangulineVarietyAndItsLocalModel.Suggested (4.8s)` / `Build completed successfully (8954 jobs).` **0 warnings.** The file has no declarations, so there is no `sorry` warning either.
- **Gate** (`gate <worktree> TriangulineVarietyAndItsLocalModel --base origin/main`, on the committed head):
  `gate TriangulineVarietyAndItsLocalModel: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`
- **Dependency check** (the brief's `gate --depcheck … --movable --content …`, after all edits):
  `depcheck: 225 roadmaps, 2121 edges, 0 problem(s)`
  There is no UPWARD, CYCLE or `moved:` line.

## Draft pull request body

This roadmap builds the Breuil–Hellmann–Schraen local model of the trianguline variety and Ding's recovery of crystabelline Hodge parameters by higher intertwining.

Starting from (φ,Γ)-modules over the Robba ring with Artinian coefficients, B-pairs and almost de Rham period modules, it identifies the framed deformation theory of a trianguline representation, rigidified by its triangulation flag and its Hodge flag, with the completed double incidence scheme g̃×_g g̃ of the Grothendieck simultaneous resolution for `Res_(K/ℚ_p) GL_n`. At a point with locally algebraic generic parameter and distinct Sen weights, the completed trianguline variety is then, up to formal power-series variables, the completion of one irreducible component X_w. From this the roadmap derives:

- normality, Cohen–Macaulayness and flatness of the character projections near such points;
- the crystalline accumulation property;
- the criterion w_x≤w for a companion point of a generic crystabelline representation to lie on X_tri;
- the Kazhdan–Lusztig identity for weight-fibre cycles;
- the local multiplicity formula for generic crystalline representations. The general multiplicity problem is stated as a conjecture.

A second branch constructs the simultaneous-refinement, paraboline and partial de Rham tangent spaces of a generic crystabelline (φ,Γ)-module all of whose refinements are noncritical. It proves that two exact sequences of tangent quotients recover the Hodge parameters. Both sequences are built from pullback and pushout along the canonical rank-(n−1) injection; the second recovers them embedding by embedding, through Ding's single-embedding modification. A third branch proves Newton–Thorne's strictness theorem for ordered-regular triangulations, their Weil–Deligne criterion for noncritical triangulations, and the three rank-two de Rham cases.

Everything is local, for every prime p including p=2 and every finite K/ℚₚ, and no global patching hypothesis enters. This is the local geometry that eigenvariety, companion-point and locally analytic socle arguments consume.

None of the headline theorems is statable on the pinned Mathlib and Tau Ceti. They have no Robba rings, (φ,Γ)-modules, B_dR-representations (Mathlib's `BDeRhamPlus` and `BDeRham` are bare rings), Galois deformation rings, flag schemes or Kazhdan–Lusztig polynomials. `Suggested.lean` therefore declares nothing, and its docstring names the missing carrier for each headline.

## Dependencies that are not yet on main

This roadmap is merge-order line 249.

- **Suppliers that are open roadmap pull requests, all earlier in the merge order:**
  - PadicHodgeTheory (line 113)
  - PhiGammaModulesAndIwasawaCohomology (28)
  - LocalGaloisDeformationRings (74)
  - DeformationAndDerivedPatchingAlgebra (59)
  - CompletedCohomologyAndLocalGlobalCompatibility (242)
  - ModularityAndLanglandsExtensions (183)
  - SpringerResolutionAndCharacteristicCycles (248), which became a draft pull request since the earlier attempt.
- **Supplier that is not yet a pull request:** LocallyAnalyticRepresentationsOfLocalGroups (line 243, board package with design only). It is consumed through its target ids `LR.4/principal-series` and `LR.5/orlik-strauch-{functor,exactness,irreducibility,jordan-holder,products}`, which are headings in its design README, and through the two contracts gap:all-constituent-triangularity and gap:constituent-conventions.
- **On main:** SchemeAndStackFoundations, RigidAnalyticGeometry, AdicSpacesPartII and PadicMeasuresIwasawaAlgebras. Only the last is named in Scope alone.
- **Named only in Scope, not consumed:**
  - LocallyAnalyticDistributions and PadicDifferentialEquationsAndRigidCohomology (open pull requests).
  - PadicLocalLanglandsForGL2QpPartII (board package, merge-order line 361, after this roadmap). Its bullet records the deduplication decided in review: that roadmap's §1.2 ("Polynomial injectivity and invertibility of the connection", line 256 of its design README) owns the nontrianguline P(∇) statements, and no target here uses them. Depcheck does not count it as a supplier.
- **Downstream consumers named:**
  - PadicHodgeParametersInLocallyAnalyticRepresentations (board package, line 250). Its design README has contracts TR1–TR5 headed "TriangulineVarietyAndItsLocalModel".
  - The README also records, as the review's F09 repair, that PadicFamilies, CompletedCohomologyAndLocalGlobalCompatibility and ModularityAndLanglandsExtensions consume none of its results.

## What moved from the Lean to the README

Nothing. The package's `Suggested.lean` already declared nothing: a module docstring listing the 17 headline groups with their missing carriers, and an empty namespace.

**Statability.** The pins are unchanged (Mathlib f6090c7, Tau Ceti 358314d; `.lake/packages` checkouts confirmed at those revisions). I re-checked at them:
- **No carrier for any headline:** no file in either library matches Robba, trianguline, KazhdanLusztig, WeilDeligne, PhiGammaModule, a simultaneous resolution or Grothendieck–Springer.
- **Flags:** `Mathlib/LinearAlgebra/Basis/Flag.lean` is the flag of submodules attached to a basis, not a flag scheme.
- **Period rings:** `Mathlib/RingTheory/Perfectoid/BDeRham.lean` lines 75 and 88 define `BDeRhamPlus` (the `AdicCompletion` of `W(R♭)[1/p]` along `ker θ`, `deriving CommRing`) and `BDeRham` (a `Localization` of it). The file declares no instance, Galois action, topology or chosen generator of `ker θ`, so no headline involving B_dR-representations becomes statable.

**Header.** The docstring and the `module` / `public import Mathlib` header are kept from the earlier attempt.
- **Plain form rejected:** with a plain `import Mathlib` header, Lake warns "imports `Mathlib` from package `mathlib`, which is designed for use with the module system". That is not a `sorry` warning, so the brief's build criterion rules it out.
- **Precedent:** seven roadmaps on main use the `module` / `public import Mathlib` form.
- **Gate:** it accepts this form (`imports=0 no-import-mathlib=0`).

**`#check` comparison.** The file has no named declaration, so there was nothing to put in a scratch `#check @name` file and no binder could be lost; nothing changed.

## Supplier replacements and duplication removals

**No restatements.** The README states no theorem that a pinned declaration already proves, and the Lean file declares nothing, so there was nothing to replace by a supplier.

**SpringerResolutionAndCharacteristicCycles at its pull-request head.**
- **Section numbering:** I compared every heading with the package README used in the earlier attempt. The numbering is identical; only the headings of §1.2 and §11.3 changed.
- **Content:** I re-read all 24 cited sections at the head: §§1.1–1.3, 2.1, 3.1, 3.5, 3.6, 4.3, 4.4, 5.1, 5.4, 6.6, 7.1–7.3, 11.3, 11.4, 12.2, 13.3–13.5, 14.1, 14.2, 14.4. Consumed content confirmed:
  - §3.6: X_w∩V_v≠∅ ⇒ v≤w.
  - §4.4: the local miracle-flatness criterion with the point-plus-line warning.
  - §5.1: κ₂,w=w⁻¹∘κ₁,w, with the same permutation action as our Conventions.
  - §11.3: m_(w,v)=P_(w₀w,w₀v)(1), zero unless v≤w.
  - §13.4: the tangent bound with the hypothesis ψ=0.
  - §13.5: the sufficient smoothness criterion.
  - §14.4: the completed KL cycle identity.
- **Two contract descriptions changed:**
  - §1.2 was described as "smooth projectivity of the flag variety". At the head it proves dimension and geometric integrality, and takes smoothness and projectivity from ShimuraData §3.8. Our §1.4 uses §1.2 only for the dimension count dim g̃=dn². The contract now reads "dimension and geometric integrality of the smooth projective flag variety".
  - §12.2 was glossed "partial-flag saturation, that is parabolic invariance, of simple cycles". At the head, §12.2 states the saturation form: (g₁B,g₂B,ψ)∈Z_v and p∈P_w imply (g₁pB,g₂B,ψ)∈Z_v. It also says explicitly that left translation of the first flag by the standard P_w does not preserve ℒ_w in general. "Parabolic invariance" invites exactly that wrong reading, so the contract now states the saturation form, and §9.7's proof sketch says "partial-flag saturation of simple cycles".
- **Downstream:** its Downstream consumers section names this roadmap as consumer of §5.4, §13.3, §§13.4–13.5 and §14.4, matching our contract.

**Other cited roadmaps.**
- **Open pull-request suppliers:** the README of every one at its current head is byte-identical to the copy verified in the earlier attempt (diff 0 lines for all ten I fetched). The consumed statements recorded there therefore stand:
  - PadicHodgeTheory §§3.2, 4.3–4.5, 5.2, 5.3, 6.3
  - PhiGammaModulesAndIwasawaCohomology §§1.0c, 1.1–1.2, 2.7, 3.1, 3.4a, 3.8, 3.9, 7.1–7.8
  - LocalGaloisDeformationRings §§0.4, 1.1, 1.4, 1.12, 1.18, 1.23, 3.4–3.10
  - DeformationAndDerivedPatchingAlgebra §§1.6–1.16, 2.1–2.7, 3.1–3.2
  - CompletedCohomologyAndLocalGlobalCompatibility §§5.1, 5.2a
  - ModularityAndLanglandsExtensions §§4.3, 4.5
  - LocallyAnalyticDistributions §3.3
  - PadicDifferentialEquationsAndRigidCohomology §RD.2.43
- **On main at 3b51055:** I re-checked each heading:
  - SchemeAndStackFoundations §§0.16, 0.17, 0.21, 4.3, 4.4, 4.5
  - RigidAnalyticGeometry §§1.2, 7.3, 8.1, 8.2, 8.3
  - AdicSpacesPartII R1.1 (its *rigid-local-ring-completion* item), R1.5, R1.7, R1.9
  - PadicMeasuresIwasawaAlgebras §3a.1
- **Board packages:** LocallyAnalyticRepresentationsOfLocalGroups has the Layer LR.4 and LR.5 headings with the cited target ids. PadicLocalLanglandsForGL2QpPartII has §1.2 as above.

**Mathlib locators at f6090c7, all exact** (re-read at the pinned checkout):
- `LinearMap.prod`: Prod.lean:95
- `LinearMap.range`: Submodule/Range.lean:57
- `LinearMap.ker`: Submodule/Ker.lean:59
- `LinearMap.finrank_range_add_finrank_ker`: FiniteDimensional/Lemmas.lean:173
- `Submodule.finrank_sup_add_finrank_inf_eq`: FiniteDimensional/Lemmas.lean:53
- `AdicCompletion`: AdicCompletion/Basic.lean:171
- `Module.length`: Length.lean:30
- `AlgebraicGeometry.AlgebraicCycle`: AlgebraicCycle/Basic.lean:44 (`abbrev`)
- `BDeRhamPlus`/`BDeRham`: BDeRham.lean:75/88

**Duplication sweep and ownership.** I swept by object with `roadmaps grep` over main (3b51055) and all 441 open roadmap pull-request heads (index 2026-11-05T17:20:30Z), and read the board packages named above.
- **No match anywhere:** "companion point", "accumulation property", "higher intertwining", "paraboline".
- **"trianguline variet":** hits are CompletedCohomologyAndLocalGlobalCompatibility §5.2a (the owner of X_tri, deferred to in Scope) and reference-list entries in LocalGaloisDeformationRings, PhiGammaModulesAndIwasawaCohomology and SpringerResolutionAndCharacteristicCycles. Springer's Scope places trianguline spaces outside its scope.
- **"local model":** all hits are Shimura-variety or integral local models, different objects.
- **New roadmap on main:** HopfologicalAlgebra contains none of these objects (one hit, an SGA 5 publisher name).
- **Earlier hits, unchanged:** "almost de Rham", "crystabelline", "numerically noncritical" and "simultaneous resolution"/"Grothendieck–Springer". The last is GroupSchemesOverABase GS8.5's multiplicative G̃, a different object from the Lie-algebra g̃ consumed from Springer, as Springer's own Scope says.
- **Removals:** none needed. The Scope bullets already record the review-stage deferrals:
  - X_tri to CompletedCohomologyAndLocalGlobalCompatibility §5.2a;
  - NT-regularity to ModularityAndLanglandsExtensions §4.3;
  - P(∇) to PadicLocalLanglandsForGL2QpPartII §1.2.
- **Ownership:** this roadmap owns the BHS local-model adapters, the Ding tangent and higher-intertwining theory and the NT local statements; no other roadmap on main, at an open head or among the board packages states them. `Suggested.lean` has no declaration, so no name can collide with a readable roadmap.

## Fixes from the upstream-reviewer read

Made in this run, after reading the whole README again:

1. **Springer §1.2 contract description** (see above). It cited a section for smooth projectivity that, at the supplier's head, proves dimension and geometric integrality.
2. **Springer §12.2 wording, contract and §9.7.** The words "parabolic invariance" could be read as invariance under left translation of the first flag by P_w, which the supplier says is false in general. Both places now state partial-flag saturation.
3. **§10.3.** "In particular n=3 always gives dimension two; the stated n=4,K=ℚₚ case does as well" referred to a case stated nowhere in the README. It now reads "the dimension is always two when n=3, and when n=4 and K=ℚₚ", which is Ding25 Remark 2.3 (Ding25 lines 529–531), already in the section's locator.
4. **Five locators made exact.** A mechanical pass (cited theorem number against the source text near each cited line) found five that point at a page marker although they name a single numbered item:
   - §9.4: Conjecture 4.3.4, BHS19 line 3239 → 3263.
   - §11.5: (2.17), Ding25 line 775 → 789.
   - §11.6: (2.18), Ding25 line 775 → 820.
   - §12.7: Corollary 2.26, Ding25 line 1059 → 1091.
   - §13.1: (2.34), Ding25 line 1093 → 1136.

   Every other BHS19 and Ding25 locator points either at the cited item or at the start of the cited page, which matches the page given.

Made in the earlier attempt and confirmed again here:

5. **§9.4.** It records the BHS19 misprint of the full-character codimension, [K:ℚₚ]n(n+3)/2 against the correct dn(n+1)/2+n.
6. **Summary:** X_tri(r̄) is attached to a residual representation.
7. **Conventions:** the coefficient field E contains the images of the embeddings, so |Σ|=d.
8. **§1.2:** a split code span.
9. **§9.9:** the Check wording "dim X_tri is 7".
10. **Springer citations:** plan ids were turned into section numbers.
11. **Process wording** was removed.

No mathematical error was found in the statements. The table records the computed instances.

## Adversarial mathematics pass

Notation: A=E[ε]/ε²; d=[K:ℚₚ]; e, f the ramification and residue degrees; dimensions are E-dimensions. I recomputed the values below while reading the README in this run. The source passages for §§9.4, 9.9, 10.3 and the locator rows were re-read in the source texts at the cited lines.

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Conv: two-term witness x\|x\| | δ=x\|x\| and δ=x over ℚₚ; ℚₚ(1) | x\|x\|(p)=p·p⁻¹=1, x\|x\|(u)=u (Γ cyclotomic); BHS wt=+1, NT wt=−1; invariant generator t⁻¹e of B_dR⁺(1): Fil^i∋t⁻¹e iff i≤−1, jump −1; x(p)=p | consistent with PadicHodgeTheory §4.5 Check "jump −r"; no change |
| Conv: ϖ_K versus p | e=2, unramified δ with v(δ(ϖ))=1 | p=ϖ²u, δ(u)=1 ⇒ v(δ(p))=2 | consistent |
| Conv: geometric Art_K | ℚ₃, η(Frob_arith)=2; cyclotomic | Art(3)=Frob_geom ⇒ δ(3)=1/2; D_cris: σ(c)=η(σ)⁻¹c ⇒ φ=1/2=δ(3); χ_cyc∘Art: u↦u (Lubin–Tate [u] in geometric normalization), 3↦1, so χ_cyc∘Art=x\|x\| | consistent |
| Conv: frame counts | d=2, n=2 | dn²=8, n²=4, n=2 | consistent |
| Conv: Cartan graph (z,w⁻¹z) | w=(123), z=(ε,2ε,3ε) | w(1)=2, w(2)=3, w(3)=1 ⇒ w⁻¹z=(z₂,z₃,z₁)=(2ε,3ε,ε); wz=(z₃,z₁,z₂)=(3ε,ε,2ε) | consistent |
| Conv: refinement labels φ_(w⁻¹(i)) | w=(123) | w⁻¹=(132) ⇒ (φ₃,φ₁,φ₂) | consistent |
| Conv: D_σ weights; signed relation | off-σ (3,1,0); f=g=id_E | ambient min 0 ⇒ (0,0,0), endpoints (0,0); range of (id,−id) is {(a,−a)} ∌ (1,1),(1,0) | consistent |
| Contract: Herr signs | scalar φ=2, γ=3 | d⁰(1)=(1,2); d¹(1,2)=2·1−1·2=0; d¹(1,0)=2; d¹d⁰=0 by commutation | matches PadicHodgeTheory §4.5 Checks |
| Contract: character spaces §2.7 | ℚ₂; general K | ℤ₂×={±1}×(1+4ℤ₂): 2 components; dim W=d, dim T=d+1, T→W smooth of relative dimension 1 | consistent |
| Contract: LGDR §1.23; Nφ=pφN | rank n, degree d; φ=diag(1,p), Ne₂=e₁ | supplier 1+d²f, 1+d(d+1)f/2, 1+d(d−1)f/2 ↦ 1+n²d, 1+dn(n+1)/2, 1+dn(n−1)/2; Nφe₂=N(pe₂)=pe₁=pφ(e₁) | consistent |
| Contract: PadicHodgeTheory §5.3 | crystalline λ over ℚₚ | r_D(Φ_arith)=φ^(−1) ⇒ λ⁻¹; unr(λ)∘Art⁻¹ sends Frob_geom to λ | consistent |
| Contract: Springer flatness, KL support | pt⊔𝔸¹→𝔸¹; S₂ | fibre over 0 is 2 points of dim 0, O_(𝔸¹,0)→k not flat; P_(s,e)=0, P_(e,e)=P_(s,s)=P_(e,s)=1; P_(w₀w,w₀v)≠0 ⇒ w₀w≤w₀v ⇔ v≤w | consistent |
| Contract: Springer at its PR head, §§1.2, 2.1 | dimension of g̃ for GL₂ and Res_(K/ℚₚ)GL₂ with d=2; Springer §1.2 Checks | dim F+dim b=N+(r+N): GL₂ 1+3=4=dn² (d=1); d=2: 2+6=8=dn²; Springer §1.2 gives (N,r,D,dim B)=(1,1,3,2) for SL₂ and (3,3,9,6) for GL₃ | consistent with §1.4/§2.4 "dimension dn²"; §1.2 now states dimension and geometric integrality (smoothness and projectivity are its ShimuraData input), **contract description changed** |
| Contract: Springer §5.1 Weyl relation at its PR head | Springer Check GL₃, w=(123), z=diag(1,2,4); our Conventions z=(ε,2ε,3ε) | κ₂=w⁻¹κ₁=(2,4,1), not (4,1,2); ours (2ε,3ε,ε) under the same action (wz)_i=z_(w⁻¹(i)) | consistent |
| Contract: Springer §12.2 at its PR head | first-flag left translation versus saturation | Springer: (g₁B,g₂B,ψ)∈Z_v, p∈P_w ⇒ (g₁pB,g₂B,ψ)∈Z_v; (pF₁,F₂,ψ) by the standard P_w does not preserve ℒ_w in general | "that is parabolic invariance" could be read as the false left-translation form: **wording changed** in the contract and §9.7 |
| Contract: NT-regular (MALE §4.3) | n=2, one τ | δ₁/δ₂=τ excluded, δ₁/δ₂=τ⁻¹ allowed; a=0 gives ratio 1, excluded | consistent with supplier text |
| gap unrestricted-trianguline-variety | (n,d)=(2,1),(1,d) | dim 4+3=7, T² 4, W² 2 ⇒ fibres 3, 5; n²+dn(n−1)/2−n=4+1−2=3; n=1: 1+d=dim T, relative 0 | consistent |
| gap partial-de-rham-cohomology | W=E, d=1, J=Σ and J=∅ | J=Σ: 1+1+0−1=1=dim H¹_g; J=∅: 1+1+0−0=2=dim H¹ | consistent |
| gap general-character-spaces | finite order χ; z^kχ; ℚ₂ | wt(χ)=0, wt(z^kχ)=k; two sign components | consistent |
| gap completed-normalization-injectivity | node E[[x,y]]/(xy) | to E[[x]]×E[[y]]: y↦(0,y), kernel 0; to one branch: y↦0 | consistent |
| gap dominant-trianguline-semistability | n=1, δ=z^k unr(φ) | crystalline character, single refinement, noncritical | consistent |
| 1.1 groupoids, frame change | N=E₁₂, B=diag(1,0); N=εE₁₂; rank one | N′=(1−εB)N(1+εB)=N+ε[N,B]; NB=0, BN=E₁₂ ⇒ [N,B]=−E₁₂ ≠0 (non-isomorphic); for N=εE₁₂, ε[N,B]=0 (isomorphic); rank one ν=0 vs ν=ε distinct | sound |
| 1.2 matrix model | n=1, ν=ε; d=2, n=2 | ν²=0 but charpoly X−ε≠X; relative dimension dn²=8 | sound |
| 1.3 κ_F | ν=[[ε,a],[0,2ε]]; swapped lines | κ=(ε,2ε) for all a; (2ε,ε) after swap | sound |
| 1.4 first g̃ model | (n,d)=(2,1),(1,2) | 1+3=4=dn²; 0+2=2 | sound |
| 2.1 lattice filtration | B_dR⁺; t^aB_dR⁺ | Fil^i=(t^iB_pdR⁺)^G=K iff i≤0; for t^a: K iff i≤−a, jump −a; Fil^i(t^aW⁺)=Fil^(i+a)(W⁺) | sound |
| 2.2 Artinian filtrations | graded piece A; (A,0) over A×A; εA⊂A | dim_E A=2, reduction 1; ranks (1,0); εA⊗E→A⊗E is 0 | sound |
| 2.3 Hodge flag | h=(0,2); (0,2),(1,4); (0,0) | rank Fil^(−h₁)=#{i:h_i≤h₁}=1, Fil^(−2) rank 2; regular; (0,0) not | sound |
| 2.4 second g̃ model | h=(0,2), n=1, d=2 | 1+3=4; 2 | sound |
| 3.1 T₀ⁿ, T_regⁿ | n=1; ratio 1; ratio ε; BHS19 line 2143 | vacuous; 1=z⁰ fails both; ε=ε∏τ⁰ fails both; "εδ_j/δ_i algebraic" ⇔ δ_i/δ_j∈ε·alg, matching BHS T₀ | sound |
| 3.2 based parameter | δ vs δx; δ(1+εψ) | R[1/t](δ)≅R[1/t](δx); same based lift only for ψ=0 | sound |
| 3.3 torsion | ℚₚ, k=1, weights 0,1; k=0 | graded pieces (R/t)(δx^i), i<k, nonzero H⁰ iff wt∈{1−k,…,0}: (1,1) and (0,0); k=0: 0 | sound |
| 3.4 localized realization | D, tD | same W_dR, positive lattices differ by t | sound |
| 3.5 weights = Cartan | δ=x², δ_A=δ(1+ε log) | wt(δ_A)=2+ε, difference ε; finite order: 0 | sound |
| 4.1 ordinary / NT order | valuations (1,−1),(0,0); ℚ₃ η | sum 0 but not ordinary; δ(3)=1/2 a 3-adic unit; NT21 line 1083 | sound |
| 4.2 strictness | n=1; R⊕R; NT21 line 1103 | H⁰(R(δ₁)δ₁⁻¹)=E; repeated parameter gives dim 2; source's "0≤i≤n" correctly read as i≤n−1 (quotient zero at i=n) | sound |
| 4.3 numerical noncriticality | (0,3) with slopes 2, 3; gaps (3,1) | 2<3; 3<3 false; 2<1 false. NT21 Def. 2.9 says "increasing"; the README's "strictly increasing" loses no point of X_tri: there v_p((δ₁⋯δ_i)(p))=e·v_p((δ₁⋯δ_i)(ϖ_K))≥0 (§8.3), so equal adjacent weights never satisfy the strict inequality | P3 note, no change |
| 4.4 WD criterion | substitution; ℚₚ, (0,3); d=2 | v_p(δ₁⋯δ_i(p))=v_p(χ₁⋯χ_i(p))−Σ_(j≤i)Σ_τ k_(τ,j); NT condition ⇔ Lemma 2.8(3) exactly (NT21 lines 1199–1212); 2<3; 2<3+0, v(δ₁(p))=2 | sound |
| 4.5 rank-two cases | three cases, NT21 lines 1300–1313 | 1, 2, 2 triangulations; split: noncritical (x^(−k₁)χ₁, x^(−k₂)χ₂), critical reversed | sound |
| 5.1 Herr → period H¹ | ν=0 on E²; Jordan block | (ker, coker)=(2,2); (1,1) | sound |
| 5.2 rank-one localization | ℚ₃, δ=unr(2)x²; k=1,2; BHS19 lines 2061–2128 | εδ⁻¹=x\|x\|·unr(1/2)x⁻²=unr(1/6)x⁻¹ (\|3\|=1/3); both nonalgebraic; wt 2∉{1}: iso, 2∈{1,2}: zero; map to the localization factors through t⁻², zero; (ii)/(iii) residual vs lifted local algebraicity | sound |
| 5.3 formal smoothness | rank one, ψ=ε | character derivative ε forces ν=ε; ν=0 fails the fibre product | sound |
| 5.4 closed condition, ν=0 split | Jordan block; R[1/t]² | excluded; flags e₁, e₂ distinct | sound |
| 6.1 gluing | weight 1/2 over ℚ₃; x² | exp((1/2)log u) converges on 1+3ℤ₃ (v(log u)≥1>1/2); non-integral weight ⇒ D_pdR=0; x² admits a frame | sound |
| 6.2 relative representability | n=2, d=2; δ=1 | T²: 2·3=6, weights 4, relative 2=n; H⁰=E outside T₀ | sound |
| 6.3 framed localized dimension | (n,d)=(2,2),(1,1); BHS19 line 2411 | d(n²+n(n+1)/2)=14; 2+6=8, 8+8−2=14; 2 and 2 | sound |
| 6.4 double-flag model | (2,2),(1,2) | X^pdR_(D,F)=dn²+dn(n+1)/2: 8+6=14; 2+2=4 | sound |
| 6.5 component conditions | n=1; x_pdR∉X_w | one permutation; empty functor | sound |
| 6.6 normal component rings | (2,2) | 14=8+6 | sound |
| 6.7 weight graph | s, (ε,2ε); (123) | s⁻¹z=(2ε,ε); w⁻¹z=(2ε,3ε,ε) | sound |
| 6.8 Galois components | (2,2),(1,2) | n²+dn(n+1)/2: 4+6=10, 10+8=14+4; 1+2=3 | sound |
| 6.9 tangent / support | (2,2) smooth point; GL₂, N=0 | 4−8+6+8=10; w_x=e permits {e,s}, w_x=s permits {s} (Springer §3.6) | sound |
| 7.1 unique localized flag | rank one; R[1/t]² | one; two lines | sound |
| 7.2 closed immersion | node | product over branches injective, one branch not | sound |
| 7.3 root matching | roots ε, 2+3ε; 0,0 | (X−ε)(X−2−3ε)=X²−(2+4ε)X+2ε; X²=(X−ε)(X+ε) | sound |
| 7.4 local model | (2,2),(1,2) | 10+8=8+(4+6)=18; 3+2=2+(1+2)=5 | sound |
| 7.5 normal and CM | n=1; (2,1) | dim d+1, smooth; 7 | sound |
| 8.1 flatness | (2,1); E[t]→E[x,y], t↦xy | 7−4=3, 7−2=5; flat (torsion-free over a PID), singular fibre | sound |
| 8.2 accumulation definition | weights a±(p−1)p^m, p odd and p=2 | gap→∞; u^((p−1)p^m)∈1+p^(m+1)ℤₚ→1; at p=2, (±(1+4x))^(2^m)→1 | sound |
| 8.3 large gaps | e=2,(4,1),v=1; d=2,e=1,(0,2),v=−3; n=1 unr(p) | 3>2; −2>−3 and (2.13) −3≥−4 hold with w=s, so the prefix bound v≥0 is needed (BHSsmooth17 line 644 compares a single gap with a sum over τ); prefix bound on X_tri: {\|·\|>1} is a nonempty admissible open of full local dimension, so it meets the dense U_tri; v(p)=1 not étale | sound |
| 8.4 accumulation at x | gap a−b+2(p−1)p^m | >C for large m | sound |
| 8.5 tangent bound | (2,1),w=s,w_x=e; (3,1),w₀,w_x=e | bound = dim X_tri−dn²+dim TŪ_w+(dn−d_(ww_x⁻¹))+ℓ(w_xw₀); 7−1+1+(2−2)=7; d_(w₀)=1 (fixed space z₁=z₃), 15−1+3=17 | sound |
| 8.6 refined space | n=1 unramified quadratic, k=0; (1+T); n=2 distinct τ | crystalline space dim 1, torsor 1+2=3, M_τ dim 2, relative 1=n²; (au₂/u₁)(bu₁/u₂)=ab; crystalline φ=(1+T)⁻¹, at T=ε: 1−ε; T_τ/S_n=∏G_m^(m_j)/S_(m_j); degree-2 étale cover | sound |
| 8.7 companion criterion | S₂; S₃; n=1 ramified χ; crystalline hypothesis | w_x=e: {e,s}, w_x=s: {s}; s₁≤s₁s₂, s₂≰s₁; x_e=(χ,χ); χ_iχ_j⁻¹=\|·\|_K ⇔ φ_i/φ_j=p^(−f), so over ordered pairs φ_iφ_j⁻¹∉{1,p^f}; εδ_i/δ_j=z^(1+k_i−k_j)\|·\|_Kχ_i/χ_j algebraic ⇔ χ_jχ_i⁻¹=\|·\|_K | sound |
| 9.1 weight cycles | (n,d)=(1,2),(2,1),(2,2) | codim = (n²+dn²)−(n²+dn(n−1)/2)=dn(n+1)/2: 2, 3, 6; fibres 1, 5, 6; BHS19 line 3173 | sound |
| 9.2 KL identity | S₂; N Jordan; P_(s,e) | C_e+C_s; Jordan N: only N-stable line Ee₁, w_x=e, Z_s={N=0}∌x_pdR so C_s=0; P_(s,e)=0, P_(e,s)=1 | sound |
| 9.3 fixed-character fibre | n=1, d=2; unr(1), unr(2) | 0 vs 1 inside dim 3; same unit restriction | sound |
| 9.4 multiplicity problem: codimension | (n,d)=(1,2),(2,1),(2,2); BHS19 lines 264, 3265, 3270, 3330 | README dn(n+1)/2+n: 3, 5, 8; BHS [K:ℚₚ]n(n+3)/2: 4, 5, 10. dim R_r=n²+dn²: 3, 8, 12. Fibre README n²−n+dn(n−1)/2: 0, 3, 4; BHS n²+dn(n−3)/2: −1, 3, 2. Flatness check dim X_tri−dim Tⁿ: (1+2)−3=0, 7−4=3, 10−6=4 | README correct; source misprint for d>1, recorded in §9.4 (BHS19 line 3263 now cited for Conjecture 4.3.4) |
| 9.5 conditional uniqueness | F₂=C₂, F₁=C₁+2C₂; 0=C₁+C₂ | C₁=F₁−2F₂; solutions (a[Z],−a[Z]) | sound |
| 9.6 full-character cycles | (1,2),(2,1),(2,2) | n²−n+dn(n−1)/2: 0, 3, 4; weight minus full = n (6−4=2 at (2,2), not dn=4) | sound |
| 9.7 presentation independence | identical presentation; S₂ | coefficient 1; no relabelling identification | sound |
| 9.8 crystalline formula | split n=2, d=1 | [Z_cr]+[Z_other], dim 3 | sound |
| 9.9 split fibre | ℚₚ, n=2; BHS19 line 276 | δ=(z^(h₂)unr φ₁, z^(h₁)unr φ₂)=x_(w₀) with w_x=e (Fil^(−h₁)=χ₁-line=φ₁-line); dim X_tri 7, base 4 ⇒ 3; unit base 2 ⇒ 5 | sound |
| 10.1 ΦΓ_nc(φ,h) | n=2 refinements; (3,1,0)→(0,0,0) | (φ₁z^(h₁),φ₂z^(h₂)), (φ₂z^(h₁),φ₁z^(h₂)); weakly, not strictly, decreasing | sound |
| 10.2 labelled subquotients | n=3, h=(3,1,0); \|r\|=k | D₁ weights (3,1), C₁ (1,0); D/D_(r^c) rank k | sound |
| 10.3 injection pencil | n=2; n=3; n=4 over ℚₚ | dim 1; dim 2, rank 1; rank 2, pairwise independent | sound |
| 10.3 wording against Ding25 Remark 2.3 | n=3; n=4, K=ℚₚ; Ding25 lines 484–531 | n=3: r_i singletons, (D₁)^(r_i) and (C₁)_(r_i) both R(φ_(i′)z^(h₂)) ⇒ dim 2 always; Remark 2.3: "always two dimensional when n=3, or n=4 and K=ℚₚ" | statement correct; **unclear phrase "the stated n=4 case" reworded** |
| 10.4 annihilator | d=1; d=2; aι | dim 1 = E[D]; dim 2; same annihilator | sound |
| 10.5 modified endpoints | off-σ (3,1,0); K=ℚₚ | (0,0), not (1,1); D_σ=D | sound |
| 10.6 modified annihilator | d=2; d=1 | 2 vs 1; 1 and 1 | sound |
| 10.7 rank-three example | a=2, 1, 0 | normal (1,1,0)×(1,a,1)=(1,−1,a−1); a=2: (1,−1,1)·(1,2,1)=0; a=1: third coordinate 0; a=0: line (1,0,1); induced lines: plane∩⟨e₁,e₂⟩=E(e₁+e₂), line mod e₃ = E(e₁+ae₂) | sound |
| 10.8 surjectivity of T_σ | d=1; d=2 | identity; non-injective | sound |
| 11.1 rank-one derivatives | ψ=v_K; log_σ; d=2 | 1+ε at ϖ; dims 1, 2, 3 | sound |
| 11.2 refinement spaces | scalar twist, ψ unramified or logarithmic | κ_w=(ψ,…,ψ); de Rham iff ψ smooth | sound |
| 11.3 Weyl transport | (3,1); w₂=(123); s | 10, 4, 7, target n(d+1)=6 ⇒ kernel 1; (a₃,a₁,a₂); (2,1) | sound |
| 11.4 zero-parameter quotient | (2,1),(3,1) | (1+dn(n−1)/2)−n: 0, 1; (1+n²d)−that: 5, 9; barExt¹_w: (1+dn(n+1)/2)−(1−n+dn(n−1)/2)=n(d+1) | sound |
| 11.5 g′ space | (2,1) | dim Hom_g′=n+(d+1)−1=n+d; 1+dn(n−1)/2+d=3 vs 2 | sound |
| 11.6 paraboline | blocks (2,1); P=G; P=B | graded (2,1), cumulative (2,3); identity; trianguline | sound |
| 11.7 paraboline dimensions | (3,1),(2,1); general | dim P=4+2+1=7, 8−1=7=dim(B∩L)+3=4+3; dim P−n(n−1)/2=Σn_i(n_i+1)/2=dim(B∩L_P); B: 3d+3, G: 6d+3 | sound |
| 11.8 blockwise g′ | (3,2),(2,1); (2,2) G and B | n+rd=3+4=7; 2+2=4 excludes (log_σ,0); 2+4=6=n(d+1) contains it | sound |
| 12.1 partial condition | d=1; d=2 rank one | no condition; 2 vs 3 | sound |
| 12.2 partial dimensions | (3,2); blocks (2,1) | 1+n²d−(d−1)n(n+1)/2=1+3+9=13; 1+3+7=11; zero kernel 1−3+6=4; 7=5+2 (rank two: 6−1, rank one: 2−0) | sound |
| 12.3 modified tangents | (2,2) | 1+8=9; 1+1=2; 1+dn(n+1)/2−dn=3; 1+n²=5; 1+dim B=4 | sound |
| 12.4 first-order modification | ε·id; d=1 | residual spectrum {0,0}, operator nonzero; identity | sound |
| 12.5 kernel of T_σ | (3,2) | (d−1)n(n−1)/2=3; 7→4, 13→10, 19→16 | sound |
| 12.6 modified zero kernel | (2,2); n=3 | 1−2+1=0 vs 1−2+2=1; 1−3+3=1 | sound |
| 12.7 quotient isomorphisms | (3,2) | 13−4=10−1=9 | sound |
| 13.1 pullback / pushout | ι=0, id, aι | 0; identity; same images | sound |
| 13.2 exceptional images | (3,1),(3,2),(4,1); identity | (2,0,4), (4,1,7), (6,3,9); 2(n−1)(n−2)d−[(n−1)(n−3)d+d−1]=1+n(n−2)d | sound |
| 13.3 image rigidity | (3,2); n=2 | 1+(n−1)(n−2)d=5 vs 4 vs 0; n=2: 1 | sound |
| 13.4 matched relation | f=g=0, id, 2·id | {0}; {(a,−a)}; unchanged | sound |
| 13.5 relation rigidity | scaling; ι=0; d=1, 2 | preserved; 0 ≠ nonzero; ℚₚ isomorphism only | sound |
| 13.6 first/last criterion | (3,1) scalar twist | targets (2,5) vs (5,2); κ_G(D⊗R(1+εψ))=(C₁⊗R(1+εψ),ψ) | sound |
| 13.7 F+G spans | (3,2),(2,1); general | dim P=n²−n+1: 15+15−11=19; 4+4−3=5; 2(1+(n²−n+1)d)−1−(n²−2n+2)d=1+n²d; ker κ_F=−1+(n−1)d | sound |
| 13.8 refinements span | (2,1),(3,1) | 4+4−3=5; 8+8−6=10 | sound |
| 13.9 relation L | scalar twist; ψ=0 | (1−εψ)(1+εψ)=1; ([ι⁻M],[−ι⁺M]) | sound |
| 13.10 recovery sequence | (3,1),(2,1) | 2(5+2)=14=9+5; 2(2+2)=8=5+3 | sound |
| 13.11 partial images | (3,2); n=2 | 1+(n−1)(n−2): 3 vs 5; 1 | sound |
| 13.12 partial criterion | log_σ; log_τ | allowed; violates the partial condition | sound |
| 13.13 L_σ | d=2, log_τ | τ-derivative 1 ⇒ ∉Hom_σ | sound |
| 13.14 single-embedding sequence | (3,2) | endpoints Ext¹_σ=1+4=5, kernel 0; scalar 2; V_σ=14; target (1+9)−1=9; L_σ=5 | sound |
| 13.15 identification | (3,2) | 9, 14, 5; kernels 4 and 1 | sound |
| 13.16 partial generation | (2,2) | 5+5−4=6; 4+4−3=5 | sound |
| Worked examples | split GL₂; a=2; (3,2) | as 9.9, 10.7, 13.7/12.7/13.14 rows | consistent |
| Lean context / generality | `Suggested.lean` | no `variable`, no declaration, no `include` | n/a |

**Degenerate classes covered:**
- n=1 throughout Layers 1–9.
- n=2 at the pencil boundary and n=4 for pairwise independence.
- p=2 in §8.2 and in the character space.
- e=2 for p versus ϖ_K.
- d=1 versus d=2 in every Layer 10–13 statement.
- Nilpotent coefficients: ν=ε, a Jordan N, ε·id.
- Zero maps: ι=0, f=g=0.
- Empty components: x_pdR∉X_w.
- Absent parameters: the zero cycle in §9.8.

No junk denominators occur. Every ratio is of characters, and the excluded values φ_i/φ_j∈{1,|·|_K} are hypotheses.

## Unresolved

- **Resolver lead on README line 19.** `roadmaps resolve` lists "PadicLocalLanglandsForGL2QpPartII §1.2: no roadmap … on main or in an open pull request". It is a board package later in the merge order (line 361), named only in Scope as the owner of a statement removed in review; depcheck reports no problem. If the worker prefers not to name a roadmap that is not yet public, line 19 can be shortened to "No target here concerns the rank-two nontrianguline connection statements (P(∇)-injectivity, bijectivity of ∂ on N_rig)". I kept the owner's name because Scope is where review-stage removals are recorded.
- **Citations that may move.** The `LR.4`/`LR.5` ids come from the LocallyAnalyticRepresentationsOfLocalGroups design, which is not yet a pull request. If its port renumbers, those citations must follow. The Springer section numbers are now checked against its pull-request head.
- **Ownership against open pull requests** was checked with `roadmaps grep` over all 441 open heads and main, and the sibling checkout of SpringerResolutionAndCharacteristicCycles given in the brief was read directly.
- **Suspicious text:** none. No package file, report, supplier README or source text that I read contained instruction-like text.


Pull request: #1829 (roadmap/trianguline-variety-and-its-local-model at 154076d)
