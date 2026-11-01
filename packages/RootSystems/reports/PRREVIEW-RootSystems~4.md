# Review of RootSystems (pull request #1278 at 13a294c)
Folder: `TauCetiRoadmap/RepresentationTheory/RootSystems/`
**Verdict:** needs changes

AI review by Codex. Two acceptance statements are false, six definitions admit data, and the gate fails. The new geometric sign and faithfulness mathematics survives the tests below, including infinite exponents and degenerate forms. Its ownership and placement in the acceptance module need repair. No pull-request file was changed. Final `git status --short` and `git diff --exit-code` are clean.

### Previous findings, checked first

The supplied previous report reviewed a different head, `e39b394`, of a different pull request. It includes sections absent from this head. I compared the actual passages rather than assuming this is a repair commit. No repair report marking findings “not actionable in this package” was supplied or found in this package's reports.

| Previous finding and quoted passage | Status at this head |
|---|---|
| R01: “The lowering theorem is false without finiteness” | **Not repaired.** `Suggested.lean:61` still lacks `[Finite ι]`; current R02. |
| R02: “Replace all eight admitted data definitions” | **Partly:** six remain at lines 107, 124, 193, 231, 343, 347; current R03. The two subgroup definitions addressed previously are absent. |
| R03: “Consume the pinned theory instead of planning it again” | **Not repaired.** Layers 1–6 and the private Dynkin dictionary remain; current R04. Section 3G does consume its native inputs correctly. |
| R04: “Pin the simple generators in the Coxeter presentation” | **Not repaired.** `Suggested.lean:124` still states an unmarked Coxeter structure; current R05. |
| R05: “State the marked integral transport, not just an isomorphism” | **Absent, not a demonstrated repair.** The previous local-to-native transport target and its promised equations are not in this head. Do not add that obsolete interface merely to answer the previous report. |
| R06: “Put the statable new headlines in the acceptance module” | **Previous metric/highest-root subjects absent.** This head does not promise them, so their absence is not re-raised. The analogous defect for its actual new faithfulness headline is current R07. |
| R07: “Remove the algorithm deliverables from the mathematical scope” | **Repaired as a property of this head:** no root-enumeration algorithm target occurs. The previous algorithm section is absent. |
| R08: “Delete the padding from Suggested.lean” | **Not repaired** for the retained declarations; nine close in the probes below. Current R08. Previous dictionary/factorization targets are absent. |
| R09: “Apply the Lean form rules to the companion and docstrings” | **Partly:** no `set_option` occurs, and the metric companion is absent. The new companion lacks `import Mathlib` and a declaration docstring; a PR URL remains in the main module. Current R10. |
| R10: “Supply claim-level locators, Checks and dependencies” | **Not repaired.** There are only two `*Needs:*` lines and no `**Checks.**` blocks. Current R09 and R11. |
| R11: “Correct the ownership locators that do not resolve on main” | **Previous citations absent.** Neither LieGroups 8N nor the ZigzagPreprojective stuck-position claim occurs here. The new Enriques ownership mismatch is independently witnessed in current R06. |

## R01 (P1) — The realization theorem cannot realize even A₁

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:293` — `RootPairing (Fin t.rank) ℚ (Fin t.rank → ℚ) (Fin t.rank → ℚ)`.

**Claim:** Every valid type has a root system whose root-index cardinality equals its rank.

**Witness:** At `t = A 1`, `Fin t.rank` has one element. `RootPairing.ne_neg`, `Mathlib/LinearAlgebra/RootSystem/Defs.lean:422`, requires that element to differ from its negative. A scratch Lean proof derives `False` from this carrier.

**Exact repair:** Delete the duplicate realization target and consume `TauCeti.DynkinType.rationalRootSystem` and its classification properties. If a genuinely additional existence statement remains, its root indices must be `Fin t.numRoots`, while its vector spaces remain `Fin t.rank → ℚ`. Test A₁ with two roots and one coordinate, A₂ with six roots and two coordinates, G₂ with twelve roots and two coordinates. The native rational family has precisely this separation at `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Rational.lean:80`.

The contradiction does not depend on the admitted Cartan matrix or on the classification proof. The root-pairing carrier itself is impossible. The independently elaborated probe was:

```lean
example (P : RootPairing (Fin 1) ℚ (Fin 1 → ℚ) (Fin 1 → ℚ)) : False := by
  letI := P.indexNeg
  exact P.ne_neg (i := (0 : Fin 1)) (Subsingleton.elim _ _)
```

## R02 (P1) — The lowering signature drops the finite-root hypothesis

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:61` — `theorem exists_mem_support_height_reflectionPerm_lt [P.IsCrystallographic]`.

**Claim:** Every positive nonsimple root in this characteristic-zero domain setting has a height-decreasing simple reflection, including infinite root pairings.

**Witness:** For H=[[2,−3],[−3,2]], use integral vectors of H-norm ±2 and coroot v∨=H(v,v)v/2. The root β=(1,1) has height 2; both simple reflections give height 3.

This is a native-base countermodel, not just an indefinite Cartan analogy. Take both ambient spaces to be ℚ² with the perfect pairing H, whose determinant is −5. Put ε(v)=H(v,v)/2, so ε(v)=±1. Reflection sends x to x−ε(v)H(x,v)v; it is an integral involutive H-isometry, preserves the indicated root set and its coroot assignment, and all Cartan pairings are integral. Both root and coroot embeddings are injective. Every root and every coroot has coordinates of one sign: opposite nonzero integer signs would give norm at least 10. Thus the independently signed root/coroot expansion clauses of `RootPairing.Base` hold for {e₁,e₂}. But H(β,e₁)=H(β,e₂)=−1, giving reflected roots (2,1),(1,2). The set is infinite: repeated s₁s₂ sends e₁ to (8,3),(55,21),(377,144).

**Exact repair:** Delete the local duplicate and cite `TauCeti.exists_mem_support_height_reflectionPerm_lt`, `TauCeti/LinearAlgebra/RootSystem/Lowering.lean:92`, retaining its finite, domain, characteristic-zero, crystallographic and reduced assumptions. If a signature is temporarily retained, carry `[Finite ι] [P.IsReduced]` explicitly. The countermodel fails finiteness; A₂'s nonsimple positive root lowers from height 2 to 1. Add these as positive and negative README Checks.

## R03 (P2) — Six admitted data definitions invalidate the acceptance objects

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:107`, also lines 124, 193, 231, 343, 347 — `CoxeterMatrix b.support := sorry`.

**Claim:** Later theorems test a particular matrix, Coxeter structure, longest element, Cartan dictionary, integral root datum and base.

**Witness:** The supplied gate reports `sorry-data=6`. Each of those six bodies is admitted data. Even the intended A₁ values—matrix [1], longest reflection, Cartan matrix [2], roots ±2 and coroots ±1—are not fixed by these bodies.

**Exact repair:** Use the native matrix, longest element, Dynkin family and integral datum/base listed in the supplier audit below. State the remaining presentation injectivity as a theorem on `TauCeti.weylCoxeterHom`, or a generator-compatible existence theorem, with `sorry` only for the proof. Delete redundant dependent statements. The six data-admission count must become zero in both Lean files. The native A₁ model gives the values above with actual definitions.

## R04 (P2) — Layers 1–6 re-plan substantial theory supplied at the pin

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:175` — “What is missing (build here)”; also `Suggested.lean:211` and the local finite-type/Dynkin definitions.

**Claim:** Positive-root sets, inversion theory, generation, abstract exchange/Matsumoto, chambers, longest elements, finite-type classification and numbered integral models remain new construction targets.

**Witness:** `TauCeti.existsUnique_dynkinType`, `TauCeti/LinearAlgebra/RootSystem/FiniteType/Classification.lean:127`, already proves classification. `TauCeti.IsFiniteType` at `FiniteType/Basic.lean:121` has exactly the local definition. `TauCeti.matsumoto` at `GroupTheory/Coxeter/Matsumoto.lean:138` supplies the word theorem.

**Exact repair:** Replace these targets and the parallel enum/dictionary with exact supplier contracts, preserving the native hypotheses and conventions. Retain genuinely additional results, notably injectivity of the native presented-group map and its length bridge. Include the already supplied closed-chamber orbit uniqueness, rather than claiming that interior uniqueness alone proves uniqueness on walls. Do not delete the unfinished presentation merely because its homomorphism is supplied. On A₁ both dictionaries assign rank 1 and two roots; on B₂ both assign [[2,−2],[−1,2]]. There is no mathematical distinction justifying the duplication. Section 3G's consumption of exchange/parabolic/dihedral inputs also directly contradicts the earlier “build here” list.

## R05 (P2) — The Coxeter structure does not identify its generators

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:124` — `CoxeterSystem (coxeterMatrixOfBase P b) P.weylGroup`.

**Claim:** This structure has the specified simple root reflections as its Coxeter generators.

**Witness:** In A₂, swapping the two generators preserves the Coxeter matrix and all lengths. Generator 0 then sends α₁ to α₁+α₂ rather than −α₁. The current signature and length statement do not exclude that swap.

**Exact repair:** Prove injectivity of `TauCeti.weylCoxeterHom P b`, whose generator equation is already supplied, or state `∃ cs, ∀ i : b.support, cs.simple i = RootPairing.weylGroup.ofIdx P i`. Use the native matrix. The swapped A₂ model fails the equation at i=0, whereas the intended model passes. Do not leave the marking only in a docstring.

## R06 (P2) — Geometric faithfulness has two declared roadmap owners

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:385` — “The T246 consumer in EnriquesSurfaces E5 uses this producer”.

**Claim:** EnriquesSurfaces only consumes this general faithfulness/sign theory and owns the specific lattice application.

**Witness:** At the supplied open head, `TauCetiRoadmap/EnriquesSurfaces/README.md:9` assigns general faithfulness and signs to §5.2; line 525 constructs them there. Its `Suggested.lean:36` states the same arbitrary-index injectivity theorem.

**Exact repair:** Reconcile ownership explicitly: retain the general native Coxeter theorem and sign/parabolic theory in the root/Coxeter supplier, and have EnriquesSurfaces §5.2 consume it while keeping its T246 lattice, mod-two action and geometry. Record the transfer in the relevant ownership contracts; do not introduce a reverse dependency on the geometric application. Until the two specifications agree, the asserted consumer relationship is false. The shared rank-one test gives ρ(s)=−1, and the shared infinite-dihedral test gives ρ(s₁s₂)e₁=(3,2): these are the same theorem, not different variants. This is object duplication, not a fully qualified Lean-name collision.

## R07 (P2) — The new statable headline is absent from Suggested.lean

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:365` — “Prove `Function.Injective cs.geometricRepresentation`”; companion theorem at `GeometricFaithfulnessTargets.lean:13`.

**Claim:** The acceptance module tests the roadmap's headline geometric faithfulness result.

**Witness:** `Suggested.lean` has no geometric-representation import or theorem. The companion's actual native signature elaborates, including arbitrary index universes, so this is not an unavailable-carrier case. The targeted acceptance build need not check that companion.

**Exact repair:** Put the native faithfulness theorem directly in `Suggested.lean` with `import Mathlib` and the used Tau Ceti module. Include the statable sign/length endpoint and the rank-two positivity milestone using a few real definitions on `B →₀ ℝ`, or clearly identify their supplied owner after R06. Inventory the remaining headlines and name genuinely unstatable ones with their missing carriers in the module docstring. The acceptance statements must include m=0, empty indices, and infinite indices; retaining only the finite Weyl-action theorem would not test the claim. The companion already demonstrates that faithfulness itself needs no stand-in.

## R08 (P3) — Remove nine one-tactic acceptance statements

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:56`, also lines 68, 73, 82, 113, 145, 177, 182, 188 — `theorem posRoots_finite`.

**Claim:** These are substantive acceptance milestones still needing development.

**Witness:** Scratch probes close all nine with `simp` or one pinned theorem. In particular, finiteness is `exact Set.toFinite _`, and exchange is `exact cs.strongExchange ⟨ht, hlt⟩`; the reduced-word hypothesis is unnecessary for that supplier.

**Exact repair:** Delete them from `Suggested.lean`. Keep the mathematics in the README as supplied API or Checks. Do not prove them in place. The probes and A₁/A₂ computed values below identify exactly which declarations this applies to. Other duplication, including Matsumoto's theorem after the symmetric-matrix convention is aligned, is covered by R04.

## R09 (P3) — Supply the required claim-level roadmap structure and remove residue

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:187` — “both flagged as TODO”; also the definitions in Layers 1–6 and §3G.

**Claim:** Every definition has usable API and three discriminating Checks; every claim has a locator and its own dependencies.

**Witness:** The gate reports `residue=1`. The README has no `**Checks.**` blocks and only two `*Needs:*` lines, at 337 and 359. Faithfulness has no explicit source locator; the source's finite-generator convention is unmentioned.

**Exact repair:** Use Summary, Scope and ownership, Conventions, Exact supplier contracts, and numbered layers ending in Examples and Dependencies. Give retained definitions three genuine Checks, not only the three global worked examples. Attach exact locators and hypotheses to claims; for §3G use Humphreys §5.4, Theorem pp.111–113 and Corollary p.113, and distinguish its finite-generator setting from the roadmap's finite-support extension to arbitrary indices. Spell out the promised transport/intertwiner domains and equations. Remove TODO/process language, the PR reference at line 464, and the stray closing markup after References. For finite type, [2] passes, the empty matrix passes, and [[2,−2],[−2,2]] fails since q(1,1)=0. For geometric signs, eᵢ passes, 0 fails, and eᵢ−eⱼ fails. These discriminate the intended definitions.

## R10 (P3) — The companion does not meet the Lean form rules

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/GeometricFaithfulnessTargets.lean:1` — `import TauCeti.GroupTheory.Coxeter.Geometric`; theorem at line 13.

**Claim:** Every listed Lean file has the required imports, module explanation and declaration documentation.

**Witness:** The 17-line companion has no `import Mathlib` and no theorem docstring. The main docstring does not inventory unavailable headlines, and `Suggested.lean:305` retains a pull-request URL. No `set_option` was found.

**Exact repair:** Consolidate the headline under R07, or apply the required form to every retained companion: one module docstring, `import Mathlib` plus the used native module, a mathematical declaration docstring and no process references. This changes no mathematical hypothesis; the arbitrary-index injectivity signature already elaborates.

## R11 (P3) — Resolve the supplier-name qualifications and gate flags

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:139` — `cartanMatrix_apply_same`, with `cartanMatrix_le_zero_of_ne`, `cartanMatrix_mem_of_ne`, `cartanMatrix_nondegenerate`, `cartanMatrix_eq_neg_chainTopCoeff` at lines 140–141.

**Claim:** These five backticked names can remain in the acceptance-name inventory as written.

**Witness:** The gate reports `readme-ids-missing=5`, but all five are native `RootPairing.Base` declarations in `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean`, at lines 112, 130, 135, 172 and 150 respectively.

**Exact repair:** Move them into the exact Mathlib supplier contract and qualify them with `RootPairing.Base`; do not add five local theorems. This is a gate classification false positive for mathematical absence: the paragraph already labels them Mathlib facts. Re-run the gate after the supplier formatting repair. On A₂ the native values are diagonal 2, off-diagonal −1, determinant 3, and chain-top coefficient 1, so the named facts are available and correct. Also correct the namespace slips at README lines 92 and 151: base existence is `RootPairing.nonempty_base` (`Mathlib/LinearAlgebra/RootSystem/BaseExists.lean:321`), while the positive-form and squared-length definitions are `RootPairing.RootPositiveForm.posForm` and `RootPairing.RootPositiveForm.rootLength` (`Mathlib/LinearAlgebra/RootSystem/RootPositive.lean:129`, 171). The shortened names do not identify different missing prerequisites.

## Verified sound

### Gate, pins and elaboration

Reviewed head: `13a294c7c6f137c5ce7d494f2a5b7d2afa685d51`. Mathlib pin: `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin: `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Both package checkouts match the manifest. The outside-folder diff is empty. This PR adds 102 README lines and the 17-line companion; the main acceptance file is inherited unchanged. The brief requires reviewing the entire folder, so inherited defects are included. The family index's RootSystems link resolves; its finite-root scope should be clarified to distinguish §3G's general Coxeter representation from finite root-pairing classification.

The supplied gate at this exact head reports:

```text
gate RootSystems: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=6 sorry-examples=0 residue=1 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=5 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 FAIL
```

Each nonzero rule is addressed by R03, R09 or R11. R11 explains the five false-positive name classifications; it does not assert five missing mathematical declarations. The gate omits the companion's form failures, which were checked manually. No stray file, computational-algorithm deliverable, route-specific “good case” restriction, `set_option`, or outside-folder edit was found.

I ran `lake env lean` on the absolute main `Suggested.lean` path from the worktree: exit 0, **27 admission warnings only** (21 theorems and six data definitions). All needed object files were already available. A scratch copy of the two modules with `#check @name` for **38 actual main declarations and the one companion theorem** elaborated successfully. The worker's 39-item main inventory includes the word `they` from a comment as a spurious theorem. The three flagged binder drops concern `posRoots`, `negRoots` and `inversions`: all omit `[IsDomain R]`, just as their real native set definitions do. They merely form sets using `Base.IsPos`; domainhood is not required to define these sets. These are not three extra mathematical findings. The lowering signature, however, really lacks finiteness; see R02. No file was changed to “repair” the inspected signatures.

The companion's actual signature retains independent universe parameters for index and group and no finiteness or nondegeneracy hypothesis. A separate scratch probe with `rfl`, `simp` and `infer_instance` leaves precisely that theorem admitted. Its proposition is not an API wrapper or a boundary case.

### Supplier order and ownership

The requested dependency command returned:

```text
depcheck: 204 roadmaps, 1485 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line occurred. RootSystems and EnriquesSurfaces are not entries in the supplied order; absence alone is not a finding. No supplier gap is declared. I read both `*Needs:*` lines and all supplier prose. The route in §3G uses pinned exchange, parabolic length additivity and alternating-word theory, then rank-two positivity, sign theory and faithfulness. It does not use Enriques geometry or finite-root classification to prove the general result. Missing per-target dependency lists elsewhere are R09.

Object searches used `roadmaps grep`, `roadmaps show`, direct reads of the supplied main/open checkouts, and board-package searches. The resolver returned no missing cross-roadmap citation or name; its output explicitly did not check pinned library names, which were checked locally instead. The following cross-roadmap references were resolved:

- `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:65`, 122, 173, 370 on main: finite root geometry is imported; integral weights, fundamental weights, ρ and representation-theoretic lattice API belong to its weight layers. This supports “Scope boundary”. The numbered simply connected datum here is a particular model, not a replacement for that general API.
- `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md` on main, its root-system dependencies: A/B/C/D root geometry is a consumer input, not an input to RootSystems. The family index points to the same subroadmaps.
- `TauCetiRoadmap/CFSGStatement/README.md:197` on main: L0 imports RootSystems Layer 6's numbered data; L0/L1 are at lines 215–216. The prose's PR URL should become this named section citation.
- `TauCetiRoadmap/RootSystemsPartII/README.md`, supplied open head, Scope and ownership and supplier contracts: extends finite theory to integral dominance and orbit-sum folding; does not own general geometric faithfulness. Its explicit citation of native classification and lattices corroborates the need to consume those inputs here.
- `TauCetiRoadmap/KacMoody/README.md`, supplied open head, Scope and ownership and “From TauCetiRoadmap.RootSystems”: consumes abstract Coxeter combinatorics after its own realization comparison. Its Cartan rows are coroots, whereas this roadmap's rows are roots; that transposition must be respected in any future comparison. No reverse supplier edge is introduced here.
- `TauCetiRoadmap/EnriquesSurfaces/README.md:9`, 525 and `Suggested.lean:36`, supplied open head: actual duplicate ownership is R06. Its Gram is 2B and the rightmost generator acts first, agreeing numerically with this roadmap. The FQNs differ, so no name collision is alleged.

No search hit from an open roadmap whose files were not supplied was promoted into a finding or supplier contract. The two main-roadmap shape comparisons were ReflectionInvariantTheory and Completed/IntegralLattices. Their reference and normalization sections were also read. Existing RootSystems revisions were treated as revisions of this owner, not independent suppliers.

### Pinned declarations opened

Paths in this table are relative to the respective library repository. Each entry was read at the pins above, including relevant standing variables. These are **25 object-level supplier checks**, not claims that the entire library was audited.

| Object | Declaration, file and line | What it supplies or does not supply |
|---|---|---|
| Root pairing and spanning | `RootPairing`, `IsRootSystem`, `Mathlib/LinearAlgebra/RootSystem/Defs.lean:81`, 120 | Perfect pairing, embedded roots/coroots and reflection permutations; the separate class requires both spans to be top. Finiteness, reducedness and crystallographicity are not fields of that class. |
| Native base | `RootPairing.Base`, `Mathlib/LinearAlgebra/RootSystem/Base.lean:71` | Finite support, independent root and coroot families, independently signed nonnegative-integral expansions. No finiteness of the whole root-index type; this matters in R02. |
| Root negation | `RootPairing.ne_neg`, `Mathlib/LinearAlgebra/RootSystem/Defs.lean:422` | A root index differs from its negative in a domain with 2 nonzero; rules out the singleton carrier in R01. |
| Cartan entries | Five `RootPairing.Base.cartanMatrix_*` results, `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:112`, 130, 135, 150, 172 | Diagonal 2, nonpositive bounded off-diagonal entries, root-string convention and nondegeneracy, with their finite/characteristic-zero hypotheses. R11's declarations exist. |
| Cartan rigidity | `RootPairing.Base.equivOfCartanMatrixEq`, `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:355` | Equivalence for matching Cartan matrices and specified base relabelling of finite reduced spanning crystallographic systems. |
| Irreducibility | `RootPairing.IsIrreducible`, `Mathlib/LinearAlgebra/RootSystem/Irreducible.lean:147` | Nontrivial M and N, and no proper nonzero reflection-invariant submodule. The empty spanning zero space does not pass. |
| Positive/negative root sets | `TauCeti.posRoots`, `negRoots`, `TauCeti/LinearAlgebra/RootSystem/Positive.lean:114`, 117 | Identical real definitions to the local sets, without `[IsDomain R]`. |
| Lowering | `TauCeti.exists_mem_support_pos_pairingIn`, `exists_mem_support_height_reflectionPerm_lt`, `TauCeti/LinearAlgebra/RootSystem/Lowering.lean:77`, 92 | Finiteness in the positive-pairing step; reducedness/domain in positive-preserving nonsimple lowering. |
| Weyl permutation action | `RootPairing.weylGroupToPerm_injective`, `finite_weylGroup`, `TauCeti/LinearAlgebra/RootSystem/Weyl/Group.lean:153`, 337 | Faithfulness for spanning systems and consequent finite Weyl group for finite indices. |
| Inversions | `TauCeti.inversions`, `TauCeti/LinearAlgebra/RootSystem/Inversions/Basic.lean:50`; `ncard_inversions_mul_ofIdx`, `Inversions/Exchange.lean:138` | Same right-multiplication convention and ±1 cardinality change. |
| Simple generation | `TauCeti.weylGroup_eq_closure_simple`, `TauCeti/LinearAlgebra/RootSystem/SimpleReflections.lean:124` | Exactly the local generation target. |
| Matrix and presented-group map | `TauCeti.coxeterMatrixOfBase`, `TauCeti/LinearAlgebra/RootSystem/Coxeter/Matrix.lean:278`; `weylCoxeterHom`, `Coxeter/Presentation.lean:57`, generator equation 66, surjectivity 82 | Actual data and marked surjection; this file does not prove injectivity. |
| Exchange and deletion | `CoxeterSystem.strongExchange`, `TauCeti/GroupTheory/Coxeter/StrongExchange.lean:413` and subsequent exchange/deletion theorems | Arbitrary words for strong exchange, no geometric-faithfulness assumption; the local reduced-word version is weaker. |
| Matsumoto | `TauCeti.matsumoto`, `TauCeti/GroupTheory/Coxeter/Matsumoto.lean:138` | Monoid-valued reduced-word invariance. Native braid words use M(i,j) and M(j,i); symmetry identifies the local common-exponent formulation. |
| Parabolic induction | `CoxeterSystem.parabolic`, `exists_isMinimalCosetRep`, `length_mul_of_isMinimalCosetRep`, `isMinimalCosetRep_iff`, `TauCeti/GroupTheory/Coxeter/Parabolic.lean:101`, 236, 280, 311 | Minimality in uW_J, length additivity and absence of right descents in J; arbitrary index types. |
| Dihedral words | `CoxeterSystem.wordProd_alternatingWord_eq_of_mem_parabolic_pair`, `TauCeti/GroupTheory/Coxeter/Dihedral.lean:167`; `CoxeterSystem.alternatingWord`, `Mathlib/GroupTheory/Coxeter/Basic.lean:396` | Reduced alternating expression of the element's length; the native word ends in its second argument. |
| Standard geometric action | `CoxeterMatrix.geometricForm`, `geometricForm_single_single`, `geometricReflection_apply`, `CoxeterSystem.geometricRepresentation`, `geometricRepresentation_simple`, `orderOf_simple_mul_simple`, `TauCeti/GroupTheory/Coxeter/Geometric.lean:125`, 131, 168, 479, 485, 525 | Finite-support real carrier, −cos(π/m), m=0 interpreted through real division by zero as Gram entry −1; exact pairwise orders. No injectivity theorem in this file. Its rank-two computation lemmas are private. |
| Chamber | `RootPairing.dominantChamber`, `TauCeti/LinearAlgebra/RootSystem/Chamber.lean:137`; `TauCeti.exists_mem_dominantChamber`, line 287 | The native cone and orbit existence, without introducing topology. |
| Interior and walls | `TauCeti.eq_one_of_smul_mem_dominantChamber`, `eq_one_of_smul_eq_self_of_mem_openDominantChamber`, `TauCeti/LinearAlgebra/RootSystem/Inversions/DominantChamber.lean:87`, 92; closed-orbit uniqueness in `FundamentalDomain.lean:224` | Interior freeness and the separate closed-orbit fundamental-domain theorem. A wall point can have nontrivial stabilizer. |
| Longest element | `TauCeti.longestElement`, `inversions_longestElement`, `TauCeti/LinearAlgebra/RootSystem/LongestElement.lean:194`, 200 | Actual element and its inversions; the local Coxeter-length bridge remains distinct. |
| Dynkin data and finite type | `TauCeti.DynkinType.Valid`, `cartanMatrix`, `HasCartanType`, `TauCeti/LinearAlgebra/RootSystem/DynkinType.lean:156`, 222, 416; `TauCeti.IsFiniteType`, `FiniteType/Basic.lean:121` | Native valid ranks and oriented matrices; G₂ is explicitly the transpose of Mathlib's matrix to match the stated short-first numbering. Exact duplicate finite-type predicate. |
| Classification and rigidity | `TauCeti.IsFiniteType.existsUnique_dynkinType`, `TauCeti.existsUnique_dynkinType`, `TauCeti/LinearAlgebra/RootSystem/FiniteType/Classification.lean:81`, 127; `nonempty_equiv_of_hasCartanType`, `Isomorphism.lean:137` | Connected-matrix and finite-root-system classifications and isomorphism. The root-system version includes nonempty indices; spanning and irreducibility supply this in the intended local setting. |
| Numbered integral/rational models | `TauCeti.DynkinType.simplyConnectedRootDatum`, `simplyConnectedBase`, `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Assembly.lean:79`, 94; `rationalRootSystem`, `Rational.lean:80` | Actual models with root indices `Fin t.numRoots`, weight coordinates `Fin t.rank`. |
| Positive-form lengths | `RootPairing.RootPositiveForm.posForm`, `rootLength`, `Mathlib/LinearAlgebra/RootSystem/RootPositive.lean:129`, 171; `TauCeti.DynkinType.rootLength`, `TauCeti/LinearAlgebra/RootSystem/RootLength.lean:123` | Squared-root lengths, not unsquared Euclidean norms; G₂ short/long values 1 and 3. Correct the shortened namespaces under R11. |
| Other supplied endpoints | `TauCeti.poincarePolynomial`, `TauCeti/GroupTheory/Coxeter/Poincare.lean:87`; `CoxeterSystem.bruhatLE_iff_exists_sublist_wordProd_eq`, `Bruhat.lean:450`; G₂ Weyl/dihedral equivalence, `TauCeti/LinearAlgebra/RootSystem/Weyl/Dihedral.lean:138` | Finite length polynomial, Bruhat subword criterion, and dihedral group of order 12. The generic type-A symmetric-group identification was not found by the corresponding pinned object searches. |

### Adversarial mathematics: computed values

The table distinguishes computation in actual native/simple definitions from intended values for the six admitted data definitions. “Pass” means the instances do not refute the statement; it is not a proof of the universal theorem. “Supplied” means the object/theorem is already provided. The **77 rows** represent every actual local declaration, the seeded sample and the additional prose endpoints. The empty root system is used only where nontriviality/irreducibility is not required. Zero rings, characteristic 2/3 and arbitrary DVRs are not instances of the rational/real geometric claims; the denominator in S(n) is nonzero for finite m≥2, and the infinite and diagonal cases are separate.

For rank-two geometric calculations set c=cos(π/m), with c=1 at m=0, and use basis (αᵢ,αⱼ). The two reflection matrices are `[[-1,2c],[0,1]]` and `[[1,0],[2c,-1]]`. I multiplied these according to the native words and compared both coordinates with the claimed sine formula for **30 (m,k) pairs**, m=0,2,3,4,5,6, including k=m as a negative control. Floating checks agree within 10⁻¹²; the representative exact values are recorded below. No root value is inferred by reducing through admitted data.

| Statement | Instances and computed values on both sides | Result / change |
|---|---|---|
| Scope boundary | A₁ simply connected coordinates: root lattice 2ℤ, weight lattice ℤ, fundamental weight 1, ρ=1; the highest-weight convention also gives integral weights ℤ | Consistent general-lattice owner; cite its sections, R09 |
| Root-pairing conventions | A₁ α=2, α∨=1 with dot pairing gives 2; reflection x−(x·1)2=−x. Zero root gives pairing 0≠2 | Pass |
| Base/sign conventions | A₂ simple coordinates e₁,e₂: (1,1) and (−1,−1) have signed integral expansions; (1,−1) has mixed signs and is not a positive/negative root | Pass; H-countermodel also tests the independent coroot-sign axiom |
| `posRoots` | A₁ heights 1,−1 give {+α}; empty indices give ∅. A₂ positives are (1,0),(0,1),(1,1) | Correct supplied definition |
| `negRoots` | A₁ complement of {+α} in {±α} is {−α}; A₂ negative list is the negatives of the three positives; empty complement in ∅ is ∅ | Both partition directions pass |
| `posRoots_finite` | Cardinalities 0,1,3 for empty,A₁,A₂; each finite | Padding R08 |
| Root-negation partition | A₂ (1,1) maps to (−1,−1), heights 2 and −2; no root equals zero | Pass; supplied |
| Positive integral expansion | A₂ α₁+α₂ has coefficients (1,1), sum and height both 2; −α₁ has coefficient −1 and fails positivity | Pass; supplied |
| Simple-reflection positive-root permutation | A₂ s₁ sends α₂↔α₁+α₂ and α₁↦−α₁; the complement of {α₁} has two elements on both sides | Pass; supplied |
| `exists_mem_support_height_reflectionPerm_lt` | A₂ (1,1): height 2→1. H=[[2,−3],[−3,2]]: β=(1,1), norm −2, pairings −1,−1; heights 2→3,3 | False signature R02 |
| `weylGroupToPerm_injective` | A₁ gives identity and the swap on two roots; A₂ gives six distinct permutations on six roots; empty spanning system gives one element | Pass; padding |
| `finite_weylGroup` | Orders 1,2,6 for empty,A₁,A₂; infinite dihedral group is excluded by finite root-system hypotheses | Pass; padding |
| `inversions` | A₂ for 1,s₁,s₁s₂,w₀: ∅,{α₁},{α₂,α₁+α₂},Φ⁺ | Correct right-product convention; supplied |
| `inversions_ncard_mul_ofIdx` | A₂ path 1,s₁,s₁s₂,s₁s₂s₁ gives 0,1,2,3; s₁s₁ gives 0 with 0+1=1 on the decreasing branch | Pass; padding |
| Index/vector inversion comparison | A₂ s₁s₂ has two negative images among positive indices and two corresponding vector roots; root embedding is injective | Pass; no repeated-root counting |
| `coxeterMatrixOfBase` | Intended A₁ diagonal 1; A₁²,A₂,B₂,G₂ Cartan products 0,1,2,3 give reflection-product orders 2,3,4,6 | Native data available; admission R03 |
| `weylGroup_eq_closure_simple` | A₁ closure of {s} has 2 elements; A₂ (12),(23) generate all 6 permutations; empty closure has 1 | Pass; padding |
| `weylCoxeterSystem` | A₂ true/swapped assignments share [[1,3],[3,1]], but generator 0 acts on α₁ by (−1,0)/(1,1) | Signature insufficient R05 |
| `length_weylCoxeterSystem_eq` | A₂ six lengths 0,1,1,2,2,3 equal inversion counts 0,1,1,2,2,3; swapping generators preserves both lists | Intended theorem survives; does not fix R05 |
| `strongExchange` | S₃ word 121 has length 3; left multiplying by s₁ gives 21 of length 2, deletion index 0. Empty word admits no shortening reflection | Pass; supplied/padding |
| Deletion/exchange corollaries | A₂ 112 evaluates to s₂, length 1 versus word length 3; deleting the first two entries gives 2. For 12·2, length 2→1 and deleting last entry gives 1 | Pass; supplied |
| `matsumoto` | A₂ reduced 121 and 212 evaluate to ABA and BAB, equal by the sole braid condition; empty words both give 1; m=0 imposes only 1=1 | Pass; supplied, symmetry alignment noted |
| Bruhat order | S₃: 1≤s₁≤s₁s₂; s₂ also a subword of 12; s₁ and s₂ have equal length 1 and neither is below the other | Pass; supplied subword criterion |
| Poincaré polynomial | Empty Coxeter system: 1; A₁:1+q; A₂:1+2q+2q²+q³, at q=1 gives 6 and at q=0 gives 1 | Pass; supplied |
| Standard geometric form | m=1 diagonal −cosπ=1; m=2 off-diagonal 0; m=3 gives −1/2; m=0 gives −cos0=−1. Infinite dihedral determinant 1−1=0 | Native convention passes including division-by-zero value |
| Geometric reflection/orthogonality | m=0: rᵢ(1,0)=(−1,0), rᵢ(0,1)=(2,1), rᵢ²(0,1)=(0,1); B((2,1),(2,1))=1=B(eⱼ,eⱼ) | Pass; zero-map model excluded by self-negation and identity law |
| Exact pairwise product orders | m=2: (rᵢrⱼ)²=I, rᵢrⱼ=−I; m=3 order 3; m=0 powers on eᵢ are (2n+1,2n), n=0,1,2 gives (1,0),(3,2),(5,4) | Pass; infinite-order evidence is not alone faithfulness |
| Native alternating word | k=0,1,2,3 gives [],[j],[i,j],[j,i,j]; products I,rⱼ,rᵢrⱼ,rⱼrᵢrⱼ | Direction checked against definition at the pin |
| Rank-two positivity, diagonal | i=j, m=1 forces k=0; image αᵢ, coefficient 1. The sine quotient at m=1 is not used | Pass |
| Rank-two positivity, orthogonal | m=2,k=0,1: images (1,0),(1,0), formula (S₁,S₀)=(1,0), (S₁,S₂)=(1,0); k=2 gives (−1,0) | Strict bound needed; pass |
| Rank-two positivity, A₂ | m=3,k=0,1,2: images/formula (1,0),(1,1),(0,1); k=3 gives (0,−1) on both sides | Sample passes, including boundary negative control |
| Rank-two positivity, B₂/G₂ | m=4,k=1,2: (1,√2),(1,√2); m=6,k=1,2,3: (1,√3),(2,√3),(2,√3), matching sine coefficients | Pass; no crystallographic restriction introduced |
| Rank-two positivity, noncrystallographic | m=5 with φ=(1+√5)/2: k=1,2,3,4 gives (1,φ),(φ,φ),(φ,1),(0,1), equal to sine formula | Pass for I₂(5) |
| Rank-two positivity, infinite | m=0,k=0,1,2,3,4: images and formula (1,0),(1,2),(3,2),(3,4),(5,4) | Pass despite degenerate form |
| Standard roots | Rank one orbit is {e,−e}; squared form value 1 on both; 0 has value 0, so cannot be a root. Empty indices give empty root set | Pass; avoids vacuous positivity at zero |
| Coordinate positivity | eᵢ and eᵢ+eⱼ have nonnegative coordinates and a positive one; 0 has none; eᵢ−eⱼ has a negative coordinate | Pass; need three README Checks |
| Sign criterion, cyclic case | A₁: w=1 has ℓ(ws)=1>0 and image +e; w=s has ℓ(ws)=0<1 and image −e | Both directions pass |
| Sign criterion, nonabelian case | A₂ w=s₁s₂: image of e₁=e₂, ℓ(ws₁)=3>2; image of e₂=−e₁−e₂, ℓ(ws₂)=1<2 | Both directions pass, correct right descent |
| Parabolic induction route | A₂ J={1,2}, w=s₁s₂: u=1, v=w, lengths 0+2=2. J={2}, w=s₁s₂: u=s₁,v=s₂, lengths 1+1=2 and ℓ(us₂)=2>1 | Minimality/additivity match pinned supplier |
| Nonzero roots and sign partition | A₂ six roots split 3 positive/3 negative, intersection empty; rank-one ±e have B-norm 1; zero has B-norm 0 | Pass; no positive-definite assumption needed |
| Simple geometric reflection on positive roots | A₂ r₁ fixes the positive-root complement set by swapping e₂ and e₁+e₂, sends e₁ to −e₁ | Pass |
| Proportional-root assertion | For λeᵢ a root, B(λeᵢ,λeᵢ)=λ²=1; λ=±1. λ=2 gives norm 4 and fails | Pass even when the ambient form is degenerate |
| `geometricRepresentation_injective` | Empty system: one group element and one endomorphism. A₁: matrices 1,−1 distinct. A₂: 6 matrices distinct. Infinite dihedral rotations: (2n+1,2n) distinct | Sample survives; R06/R07 concern ownership and acceptance |
| Infinite index support | Countably many mutually orthogonal generators: a finite word with support {0,7} negates precisely coordinates 0 and 7; e₀↦−e₀, untouched e₈↦e₈ | Generality survives; no infinite sum or topology required |
| Word composition/inverse | A₂ r₁r₂(e₁)=(0,1), r₂r₁(e₁)=(−1,−1); (r₁r₂)⁻¹(r₁r₂)e₁=(1,0) | Correct composition order; specify equations as targets/API |
| Real coordinate transport | Swap A₂ basis coordinates: T(e₁)=e₂; T r₁ e₁=−e₂=r₂ T e₁; T r₁ e₂=e₁+e₂=r₂ T e₂ | Pass for an explicitly marked intertwiner |
| Extension by zero/parabolic comparison | A₂ J={1}: E(3e₁)=(3,0); E r_J(3e₁)=(−3,0)=r₁E(3e₁); empty J maps 0→0 | Pass; full ambient complement need not be fixed |
| Integral scalar-extension comparison | A₂ Gram 2B=[[2,−1],[−1,2]] gives s₁(x,y)=(−x+y,y), whose ℤ→ℝ extension equals native r₁. Rank one −1 becomes +1 mod 2, so that noninjective scalar map fails | Correct faithful-scalar hypothesis; retain explicit basis compatibility |
| `dominantChamber` | A₁ α=2,α∨=1: [0,∞), values 0,1 pass and −1 fails; empty spanning module has chamber {0} | Correct supplied definition |
| `exists_mem_dominantChamber` | A₁ orbit {−2,2} meets chamber at 2; zero orbit {0}; A₂ orbit sorting produces one ordered-coordinate representative | Pass; padding |
| `eq_of_mem_dominantChamber_interior` | A₁ x=1: s·x=−1 outside; identity gives 1=1. At x=0 strict positivity is false | Pass; padding |
| `eq_one_of_smul_eq_self_of_interior` | A₁ stabilizer of 1 is {1}; stabilizer of 0 is {1,s}; the strict hypothesis excludes the latter | Pass; padding |
| Closed fundamental domain / wall distinction | A₂ dominant (1,1,−2) is fixed by (12), yet its dominant orbit intersection is the singleton {(1,1,−2)} | Conclusion true and supplied; interior argument alone leaves walls untreated |
| Chamber simple transitivity | A₁ has 2 open chambers and W-order 2; A₂ has 6 open sectors and W-order 6; origin belongs to no open sector | Pass; supplied |
| `longestElement` | Intended empty value 1, A₁ s, A₂ s₁s₂s₁=(13); squared values all 1 | Native construction supplied; admitted local data R03 |
| `longestElement_spec` and maximality | A₂ w₀ sends all 3 positives negative, length 3=card Φ⁺, square 1; remaining lengths 0,1,1,2,2≤3. Empty gives 0=0 | Intended theorem survives; use native w₀ |
| `DynkinType` / rank | A₀,A₁,B₂,E₆,E₇,E₈,F₄,G₂ ranks 0,1,2,6,7,8,4,2; A₁ and B₁ are different raw constructors | Correct convention; supplied enum |
| `DynkinType.Valid` | A₀ false,A₁ true,B₁ false,B₂ true,C₂ false,C₃ true,D₃ false,D₄ true | Eliminates low-rank duplicate labels |
| `DynkinType.cartanMatrix` | Intended B₂ [[2,−2],[−1,2]], C₂ transpose; G₂ short-first [[2,−1],[−3,2]]; simply laced A₂ [[2,−1],[−1,2]] | Correct native orientation; admitted local data |
| `IsFiniteType` | [2],d=1 gives q(1)=2>0; empty matrix passes vacuously; affine [[2,−2],[−2,2]] gives q(1,1)=0 and fails; [[2,1],[1,2]] has positive form but violates off-diagonal sign | Discriminates positivity from full Cartan condition; duplicate |
| Symmetrizer convention | B₂ A=[[2,−2],[−1,2]], d=(1,2) gives dA=[[2,−2],[−2,4]], leading minors 2,4>0; d=(2,1) is not symmetric | Correct left symmetrization; inverse squared-root lengths |
| `HasCartanType` | A₂ simultaneous identity or swapped-node match gives same matrix; B₃ versus C₃ have two long versus one long simple roots and are not permutation-matched oriented matrices | Correct oriented match; supplied |
| `isFiniteType_cartanMatrix` | A₁ value 2; A₂ determinant 3, q(1,1)=2; B₂ symmetrization determinant 4 | Intended finite statement passes; native duplicate |
| `existsUnique_dynkinType` | Rank-one [2] gives valid A₁ only, rejecting B₁/C₁; B₂/C₂ coincidence has valid B₂ only; empty root system fails irreducibility | Intended theorem passes; supplied |
| `nonempty_equiv_of_hasCartanType` | Two A₂ bases related by node swap have equal reindexed matrices and an equivalence; B₃/C₃ do not meet same-type hypothesis | Pass; supplied |
| `exists_rootPairing_of_dynkinType` | A₁ rank=1 but roots=2; A₂ rank=2 but roots=6; G₂ rank=2 but roots=12 | False actual root-index carrier R01 |
| Finite-type classification list | Rank 2 finite crystallographic connected products 1,2,3 give A₂,B₂,G₂; orthogonal product 0 is reducible; I₂(5) has product φ²=(3+√5)/2, not integral | Scope and exclusion correct |
| `DynkinType.IsLongSimpleRoot` | B₂ flags (true,false), C₃ (false,false,true), F₄ (true,true,false,false), G₂ (false,true); all A₂ flags true | Correct stated numbering; supplied object |
| `DynkinType.numRoots` | A₀=0,A₁=2,A₂=6; B₂=C₂=8; D₀=D₁=0 by truncated subtraction; D₄=24; E₆/E₇/E₈/F₄/G₂=72/126/240/48/12 | Values correct on valid types; invalid ranks excluded from realization |
| Bourbaki node convention | One-based node 1 maps to Fin index 0; B₂ long-first row entries (−2,−1), G₂ short-first entries (−1,−3) | Consistent; KacMoody comparison transposes rows/columns |
| `DynkinType.simplyConnectedRootDatum` | Intended A₁ character basis ω=1, coroot basis e=1: α=2ω, pairing 2, two roots ±2 and coroots ±1 | Native real data supplied; local admission |
| `DynkinType.simplyConnectedBase` | A₁ support {0}, root coordinate 2 and coroot coordinate 1; A₂ first two of six root indices are the two simple roots | Native marked base supplied; local admission |
| `hasCartanType_simplyConnectedRootDatum` | A₁ Cartan entry ⟨2,1⟩=2 matches [2]; A₂ simple root rows [[2,−1],[−1,2]] pair with standard coroot coordinates | Intended equality passes; use native theorem |
| `span_coroot_simplyConnectedRootDatum` | A₁ spanℤ{±1}=ℤ; A₂ contains e₁,e₂ so span=ℤ²; wrong scaled coroot family {±2} would span 2ℤ | Intended simply connected property discriminates wrong lattice |
| Adjoint/dual convention | A₁ flip has roots ±1, coroots ±2; root span is ℤ, coroot span 2ℤ; B₃ adjoint uses flipped C₃ datum to return to type B₃ | Correct dual-type qualification |
| `weylGroup_equiv_perm_of_typeA` | A₁ W-order 2=2!, A₂ W=S₃ of order 6=3!, positive counts 1=choose(2,2),3=choose(3,2); n=0 excluded | Statement survives; generator marking is only prose in worked example |
| `weylGroup_equiv_dihedral_of_isG2` | G₂ 12 roots=6 positive+6 negative; W-order 12=2·6, longest length 6; squared lengths 1 and 3 have ratio 3 | Statement survives in intended native type; dihedral clause supplied |

### Headline coverage and one-tactic probes

The README's endpoints are the marked Weyl Coxeter presentation, length equals inversions, strong exchange and Matsumoto, Bruhat/Poincaré theory, rank-two positivity and the general root-sign/length criterion, geometric faithfulness, chamber fundamental-domain/simple-transitivity results, longest-element characterization, finite-type Cartan classification and realization/rigidity, numbered simply connected data, their integral comparison, and the A/G₂ Weyl-group identifications. The table tests each. Most finite-root and abstract-combinatorial endpoints are supplied and must become contracts (R04). The new faithfulness signature is statable but only appears in the companion (R07). The main realization statement is actually impossible (R01), and admitted data prevent the local statements from specifying their intended objects (R03).

All **21 admitted main theorems** were tried on a scratch copy with individual `rfl`, `simp` and `infer_instance` branches; selected matching library lemmas were also tried. Nine closed without any admission in their proof. The companion theorem received the same three basic probes and did not close. Failure of a tactic probe is not evidence of mathematical depth. The helper's comment-word false positive `they` was excluded from the declaration counts; no theorem with that name exists.

| Declaration to delete | Successful single-tactic proof in the probe |
|---|---|
| `posRoots_finite` | `exact Set.toFinite _` |
| `weylGroupToPerm_injective` | `exact RootPairing.weylGroupToPerm_injective P` |
| `finite_weylGroup` | `exact RootPairing.finite_weylGroup P` |
| `inversions_ncard_mul_ofIdx` | `exact TauCeti.ncard_inversions_mul_ofIdx P w b hi` |
| `weylGroup_eq_closure_simple` | `exact TauCeti.weylGroup_eq_closure_simple P b` |
| `strongExchange` | `exact cs.strongExchange ⟨ht, hlt⟩` |
| `exists_mem_dominantChamber` | `exact TauCeti.exists_mem_dominantChamber P b x` |
| `eq_of_mem_dominantChamber_interior` | `simpa only [TauCeti.eq_one_of_smul_mem_dominantChamber P b w hx hw, one_smul]` |
| `eq_one_of_smul_eq_self_of_interior` | `exact TauCeti.eq_one_of_smul_eq_self_of_mem_openDominantChamber P b w hx hw` |

A direct Matsumoto `exact` probe exposed a presentation difference rather than a mathematical gap: the source's second braid word uses M(j,i), while the local statement repeats M(i,j). Symmetry is the required conversion. This target is already supplied (R04), but is not counted among the nine successful literal short proofs above. No repository file or dependency pin was changed by any probe.

### Sources and the seeded sample

All five referenced works were submitted to the source service; no manifest was edited. No README locator is explicitly marked unverified. “Scope boundary” supplies an ownership link rather than a theorem/page locator. Its main-roadmap content was resolved as above; assigning it a fabricated textbook theorem number would be inappropriate.

The legally accessible source was **humphreys-coxeter**, the [University of Washington institutional course copy of *Reflection Groups and Coxeter Groups*](https://sites.math.washington.edu/~billey/classes/reflection.groups/references/Humphreys.ReflectionGroupsAndCoxeterGroups.pdf). It was read through the service's line-numbered OCR and the page image where OCR was ambiguous. The printed numbering agrees with the cited 1990 work.

| Seeded target | Exact source support and hypotheses | Outcome |
|---|---|---|
| Scope boundary | `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:65`, 122, 173, Layers 1–2 and 6 on main; its integral weights use the actual root/coroot carriers | Ownership verified; no textbook locator is present to certify |
| Rank-two positivity | Humphreys §5.4, proof of the unnumbered Theorem, printed pp.112–113; **humphreys-coxeter line 4364** (last generator), **line 4366** (infinite exponent), **line 4370** (finite exponent), **line 4380** (positive-cone argument) | Supports nonnegative coefficients for the specified ending generator and k<m. The README's sine formula is an explicit derived refinement, verified by reflection multiplication above; it is not a displayed formula in this passage |
| Sign criterion | §5.4, unnumbered Theorem, printed p.111, proof pp.111–113; **humphreys-coxeter line 4324**, induction at **line 4329** | Correct direction: right multiplication increasing length gives a positive image of that simple root, decreasing gives a negative image |
| Faithfulness | §5.4, unnumbered Corollary, printed p.113; **humphreys-coxeter line 4386**, kernel argument **line 4387** | Correct corollary from a right descent and the sign theorem; the README should cite it explicitly |

The source's standing convention is **finite S**, printed p.106, **humphreys-coxeter line 4101**. It permits infinite group order, infinite exponents and degenerate standard forms. Arbitrary cardinality of S is therefore an extension of the cited theorem's literal setting. The roadmap's replacement proof route does support that extension: its pinned minimal-coset and alternating-word results have arbitrary index types; length induction uses a two-generator parabolic and finitely supported vectors. For w≠1 that parabolic factor has positive length because w has a descent in it, so the minimal representative has strictly smaller length. This is a mathematical check of the extension, not a claim that Humphreys states arbitrary-index quantifiers. R09 asks to make that distinction and its finite-support justification explicit, without narrowing the theorem.

The source first establishes the action and exact pairwise orders in §5.3, printed pp.109–110, **humphreys-coxeter line 4213**, reflection formula **line 4226**, infinite-dihedral iteration **line 4258**, Proposition **line 4266**. These agree with the native module. The new proof route consumes independently established parabolic/exchange theory at the pin rather than treating the source's later parabolic theorem as an earlier input; no circular use of geometric faithfulness was found.

The OCR near **humphreys-coxeter line 4368** appears to interchange the two infinite-dihedral coefficients. I inspected the printed page 112: it writes the αⱼ term first, giving 2αⱼ+3αᵢ, which is the correct (3,2) computed value. This is an extraction problem, not an error in the source. No copied prose was detected in the accessible sampled passages; inaccessible books could not be compared for copying.

## Not verifiable

- **bourbaki-lie**, *Lie Groups and Lie Algebras, Chapters 4–6*, including VI §4: the source service returned `uncertified` for a paywalled Springer citation. Its precise source passages were not read. No renewed missing-reference request was made for this settled paywalled result.
- **humphreys-lie**, *Introduction to Lie Algebras and Representation Theory*, Chapter III: service result `uncertified`, Springer/paywalled. The chapter's individual theorem hypotheses and page locators were not certified.
- **bjorner-brenti**, *Combinatorics of Coxeter Groups*: the DOI lookup returned `uncertified`, Springer/paywalled. The README gives no precise theorem/page locator for its Layer 3 claims. No source contents were inferred from the bibliographic lookup.
- **kac90**, *Infinite-Dimensional Lie Algebras*, 3rd edition, Chapter 4: the source service reached Cambridge's landing page but found no legal full text. The single remaining missing-reference entry records this lookup. This review is complete; it is not parked waiting for that text.
- Claim-by-claim textbook certification outside the accessible Humphreys sample is limited by those unavailable texts and the README's chapter-wide citations. The mathematical counterexamples, native duplication findings, computed table and Lean checks do not depend on their availability.
- “Scope boundary” has no theorem number/page to certify; its actual ownership link was checked. Arbitrary-index faithfulness is not literally stated in the finite-generator Humphreys source, as distinguished above.

## Source issues

- none
