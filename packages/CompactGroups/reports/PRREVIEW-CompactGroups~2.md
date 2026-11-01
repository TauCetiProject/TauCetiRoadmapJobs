# Review of CompactGroups (pull request #1047 at a020ae2)
Folder: `TauCetiRoadmap/RepresentationTheory/CompactGroups/`
**Verdict:** needs changes

:robot: Independent AI review. The worktree was read only. Four P1 and three P2 findings block acceptance; the remaining eight findings are P3. The existing roadmap can be repaired and its new programme moved to Part II. No approval or merge is given.

## R01 (P1) — The claimed Banach-density supplier assigns the theorem back here

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:395–407`. “Consume the topology-free prefix and the Banach density theorem of AutomorphicFormsOnReductiveGroups §2.1, which owns them”.

**Claim/defect:** The supplied predicate, submodule and Banach density theorem do not have the claimed owner. This is a missing prerequisite, not a complaint that a declared gap is unfinished.

**Witness:** AutomorphicFormsOnReductiveGroups README §2.1, lines 301–314, and its supplier contract at line 51 assign all three to CompactGroups under gap:banach-gfinite-density; §2.1 owns only the complete locally convex extension.

**Repair and check:** Own the field-general orbit-span predicate/submodule and the compact strongly continuous Banach density theorem in the CompactGroups extension. Leave the complete locally convex extension to AutomorphicFormsOnReductiveGroups as a downstream consumer. Remove the reverse supply claim. For rotations on C(S¹), the resulting theorem must give dense trigonometric polynomials despite operator distances ‖Rθ−I‖=2 for nonidentity rotations. The estimate already described at lines 423–435 gives the required proof route.

## R02 (P1) — The global-form proof consumes LieGroups sections absent on main

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:699–718`. “LieGroups5A’s … early7 … and7F’s actual finite central covering”.

**Claim/defect:** The allowed supplier is LieGroups on main. The named 5A and 7F phases exist in its open revision, but not in that allowed version. No matching supplier gap is declared here.

**Witness:** Main RepresentationTheory/LieGroups/README.md:358,407 has Layer 5 and Layer 7, but no 5A or 7F. The open revision has 5A at line 694 and 7F at line 1399.

**Repair and check:** Give the required center/derived splitting, compact semisimple cover and actual finite central covering explicit ownership: build missing prerequisites before descent in the extension, or declare precise, separately scoped LieGroups supplier gaps with matching plan slugs. Cite main for the parts it actually supplies. Preserve the U(2) test: kernel (−1,−I) acts by (−1)^(q−a₁), so q≡a₁ mod 2 is required; a bare Lie-algebra splitting cannot replace this cover.

## R03 (P1) — The Hilbert countability contract is also taken from an ineligible revision

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:488–499`. “BanachSpaceTheory B5’s early ℓ²/Hilbert-basis countability and support unit”.

**Claim/defect:** That unit is absent from BanachSpaceTheory on main. Its open revision supplies it, but a revision of an existing roadmap is not an allowed dependency under this brief.

**Witness:** Main BanachSpaceTheory/README.md:255 starts B5 with measure duality and contains no Hilbert-basis countability unit. The supplied open revision states the unit at lines 838–897.

**Repair and check:** Use exact pinned declarations where available (Summable.countable_support_ennreal supplies the support step), and explicitly own the remaining separability/countability bridge or declare its precise BanachSpaceTheory gap. Test zero Hilbert space (empty index), ℓ²(ℕ) (countable index), and ℓ²(J) for uncountable J (unit vectors at distance √2). Do not silently substitute the revision for main.

## R04 (P1) — The prose characterization of irreducibility includes the zero representation

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:84–86`. “no closed G-invariant subspace other than 0 and V”.

**Claim/defect:** This is claimed equivalent to Representation.IsIrreducible but omits nonzeroness. It affects the scalar-uniqueness and dimension-positive uses later in the roadmap.

**Witness:** For G={1}, V=0, the stated subspace condition is true. Mathlib/RepresentationTheory/Irreducible.lean:29 defines IsIrreducible via IsSimpleOrder, which excludes the one-element subrepresentation lattice.

**Repair and check:** Require V≠0 as well as absence of proper nonzero closed invariant subspaces. Add this negative Check beside the definition. Then V=0 fails, the one-dimensional trivial representation passes, and the two-dimensional trivial representation fails. In particular the repaired definition excludes the zero-space case where every c>0 gives the same zero Gram operator.

## R05 (P2) — Put the extension after the existing CompactGroups roadmap

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:258–298,393–616,647–803,885–917`. “This additional application assumes K is a compact connected finite-dimensional real Lie group”.

**Claim/defect:** These are substantial new programmes added to an existing roadmap, including global representation rings, multiplicity-space metrics, product duals and Banach actions. The binding contract requires extensions to be Part II and to build on the existing work.

**Witness:** Main RepresentationTheory/CompactGroups/README.md already specifies Haar through Peter–Weyl, characters and the SU(2) engine. The diff adds 596 README lines, including the new global-form and product-dual layers.

**Repair and check:** Keep corrections to the existing specification in this folder; move the new programme to CompactGroups Part II, stating where the base ends and importing its named layers and pinned results. Keep the U(2) recognition, arbitrary-product and nonmetrizable examples in the extension. This is a repairable extension-placement defect, not a reason to discard its mathematics.

## R06 (P2) — Treat implemented objects as inputs instead of new construction targets

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:191–255,300–392,455–477,618–645,805–884`. “Package this as a structure IrrepModel G”.

**Claim/defect:** The consume table acknowledges these pinned implementations, but subsequent layers still ask to construct the same objects and prove the same theorems. Naming the implementation in a preliminary table does not resolve the duplicate ownership.

**Witness:** TauCeti/RepresentationTheory/Compact/PeterWeyl.lean:512,668,711 supplies peterWeylBasis, IrrepClass and stdPeterWeylBasis; Compact/Character/Basis.lean:346 supplies characterBasis; SU2/Weyl/Integration.lean:146 supplies Weyl integration.

**Repair and check:** Delete implemented construction targets and cite their fully qualified declarations in scope/supplier contracts; retain only missing comparisons, with the difference stated. Do this also for Haar, unitarization, coefficients, orthogonality, Frobenius–Schur and SU(2) classification. Verify the replacement on the circle: the pinned FourierPeterWeyl comparison already uses index −n for scalar action n; no second coefficient convention is needed.

## R07 (P2) — The acceptance module omits the new statable headline theorems

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/Suggested.lean:14–40; CountabilityTargets.lean:23–41; ProductDualTargets.lean:25–56; AbelianFourierTargets.lean:30–49`. “The statements here suggest Lean forms for particular milestones”.

**Claim/defect:** The requested acceptance test builds Suggested.lean only. The new countability, product-dual and compact abelian Fourier headlines are in unimported companion files; the main docstring neither lists them nor explains absent headlines such as the global representation-ring comparison.

**Witness:** The combined scratch elaboration successfully checked all eleven companion theorems against the pins. Suggested.lean imports no companion and contains none of those eleven declarations.

**Repair and check:** Put the retained, statable extension headlines in its Suggested.lean with native carriers and real simple definitions. List each genuinely unstatable headline and its missing carrier in that module’s docstring. Do not import another roadmap module. Preserve the explicit basis-vector equation: for scalar character z at z=i, the coefficient is −i, while the Fourier vector indexed by that character is i.

## R08 (P3) — Delete theorem padding from the acceptance test

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/Suggested.lean:136–137,235–239,480–481,530–533`. “The character at the identity is the dimension n+1”.

**Claim/defect:** Four of the eighteen admitted main-module targets closed in the scratch probe; many already-proved declarations are also direct aliases, instance checks or README Checks. They are not acceptance-test headlines.

**Witness:** The probe closed orthogonal_invariant, schur_orthogonality_distinct, su2Irrep_character_one and weyl_integration_formula. Native witnesses are Continuous/InvariantComplement.lean:100, Compact/Intertwiner/Basic.lean:416, Continuous/Character.lean:110 and SU2/Weyl/Integration.lean:146.

**Repair and check:** Delete them from Suggested.lean; retain relevant mathematics as README targets/Checks or supplier citations. Also delete the seven Haar fact wrappers, matrixCoeff_apply, representativeStarSubalgebra_toSubmodule and weyl_integration_formula_normalized. Remove remaining pure native aliases under R06. The normalization Check remains 1=(1/(2π))·4·(π/2), and χ₀(1)=1, χ₁(1)=2 remain README Checks, not new admitted theorems.

## R09 (P3) — Remove forbidden options and use the required imports in every Lean file

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/Suggested.lean:50–53; AbelianFourierTargets.lean:1–10; CountabilityTargets.lean:1–9; InvariantMetricTargets.lean:1–9`. “set_option backward.isDefEq.respectTransparency false”.

**Claim/defect:** The gate reports one forbidden option; the same rule applies to the three companion autoImplicit options. Two companions use Mathlib submodule imports, and three omit the required import Mathlib.

**Witness:** The defaults-only scratch copy, with all four set_option lines removed, elaborated without errors. The comment claiming the transparency override is necessary is therefore false at these pins.

**Repair and check:** Delete all four options and the obsolete necessity comment. Replace companion Mathlib submodule imports by the single import Mathlib; add it to InvariantMetricTargets.lean. The complete 74-declaration signature copy already used the union of these native imports successfully; removing all options also passed.

## R10 (P3) — Remove the four gate-rejected HTML anchors

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:257,479,518,570`. “<a id="compact-product-dual"></a>”.

**Claim/defect:** The residue gate rejects all four explicit anchor tags.

**Witness:** The worker records residue=4 at precisely these lines; each tag precedes a heading which can supply a generated Markdown anchor.

**Repair and check:** Delete the four tags and update any links to the generated heading anchors. Keep the mathematics and use the required Layer k headings; the product-dual finite-support statement is unchanged by this repair.

## R11 (P3) — Resolve the two identifier-gate failures without adding padding

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:149,628,939`. “character_orthonormal”.

**Claim/defect:** The gate reports readme-ids-missing=2: character_orthonormal and haarProb_def. The former is an undeclared local label; the latter is a real supplier declaration and the unqualified spelling is a scanner ambiguity.

**Witness:** Suggested.lean has only character_orthonormal_self and character_orthonormal_distinct. TauCeti/RepresentationTheory/Compact/Haar.lean:97 defines TauCeti.haarProb_def, so that library declaration is not missing.

**Repair and check:** Write the character orthogonality statement in prose and qualify the supplier as TauCeti.haarProb_def in the supplier contract. Do not add wrapper declarations. For C₃ the normalized character pairings remain 1 on the diagonal and (1+ω+ω²)/3=0 off it.

## R12 (P3) — Clear the twenty non-sorry warnings which fail the gate

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/Suggested.lean:70–99,121,167,193,213,224,260–277,293,355,378,407,436`. “automatically included section variable(s) unused”.

**Claim/defect:** The targeted build and direct Lean command succeed, but emit twenty unused-section-variable warnings in addition to sorry warnings. The supplied gate counts these as build=20 and fails; this is a warning-policy failure, not a failed elaboration.

**Witness:** At haar_univ_ne_zero the compiler reports CompactSpace and T2Space unused; at matrixCoeff_apply it reports seven unused section instances. The saved gate lists all twenty affected declarations.

**Repair and check:** Remove the duplicate wrappers under R06/R08, and explicitly scope any remaining theorem binders to their mathematical needs. Do not suppress linters. Re-run the gate until only sorry warnings remain. Nonzeroness of Haar mass still holds on noncompact ℝ, while finiteness requires compactness; this separates the two contracts.

## R13 (P3) — Remove executable extraction and enumeration deliverables

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:791–792,909–913`. “Give a finite extraction algorithm” / “Prove finiteness, a terminating enumeration”.

**Claim/defect:** The brief permits mathematical background and small Checks but excludes computational algorithm deliverables. These two instructions explicitly ask for algorithms.

**Witness:** The first requests extraction of U(2) multiplicities; the second requests enumeration of partitions indexing SU(2) embeddings.

**Repair and check:** Delete the algorithm/enumeration requests. Retain the multiplicity formula, existence and uniqueness, finiteness and cardinal identity. The checks still give multiplicities 1,1 from weights 1,2,1, and embedding counts p(n)−p_odd(n)=0,0,1,1,3 for n=0,…,4.

## R14 (P3) — Attach exact legal-source locators to the claims

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:260–298,663–797,972–999`. “Chs. 2-4, 15-18”.

**Claim/defect:** Most claims in the seeded sample have no theorem/page locator at the claim. A five-book bibliography with broad chapters does not identify the source for the continuous representation ring, descent, positive cone or U(2) criterion. Knutson and the Banach course notes are not bibliographically identified in References.

**Witness:** The legal Knapp text places compact highest-weight classification at Theorem 5.110, printed p.335 (knapp line 14203), not Chapter IV. U(2) recognition at lines 765–797 has no local source locator.

**Repair and check:** Add theorem/section and printed-page locators at each theorem, exact versions and complete reference entries; distinguish deductions from directly cited results. For example use Knapp Proposition 4.58 p.264 for periods and Theorem 5.110 pp.335–336 for dominant analytic weights, with the finite-cover argument separately located. Identify the Knutson and Banach notes or replace them with readable legal references. The sample’s mathematical tests below remain the normalization controls.

## R15 (P3) — Supply the required layer contracts and discriminating Checks

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:39–189,191–255,300–348`. “## Standing conventions” / “### Layer 0”.

**Claim/defect:** The README lacks the required Summary, Scope and ownership, Exact supplier contracts, per-target Needs lines, layer-ending Examples/Dependencies, and per-definition lists of at least three Checks. A global Ordering section and three worked examples do not discharge those obligations.

**Witness:** There are zero *Needs:* lines and zero **Checks.** blocks in the 999-line README. For example the Gram operator, IsInvariant and coefficient definitions have no attached three-test lists.

**Repair and check:** Restructure the retained content into the required headings and explicit dependencies, moving existing facts into supplier contracts. Attach discriminating tests per definition: for Gram metrics use T=2I (positive), T=0 on ℂ (not positive), and diag(1,2) on trivial ℂ² (positive but nonscalar). For coefficients include the zero vector, scalar action at i, and a nonabelian two-dimensional coefficient. Do not manufacture Lean declarations for these Checks.

## Verified sound

The following are bounded checks, not proofs of admitted theorems. I read all six listed files, compared the existing CompactGroups roadmap on main, and used the main CharacterTheory and completed OrthogonalL2Bases roadmaps as format/ownership comparators. I checked all 74 named declarations with explicit `#check @…` commands in one combined scratch elaboration. The two local product-measure instances were also elaborated: their bodies are `borel _` and `⟨rfl⟩`. Compactness, Hausdorffness and finite dimension remain in the admitted analytic theorem signatures; no dropped-hypothesis finding is made. Definitions retain fewer binders where appropriate (for example coefficients need group-parameter continuity, not compactness). Nothing was changed in the PR.

Pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The checked PR head is exactly `a020ae2362b85638922f2e76044db081f727ec02`. The prescribed outside-folder diff is empty; all six changes are in the assigned folder. No sorry-valued data, copied source passage, route-specific restriction or fully qualified name collision with another roadmap was found. This does not excuse the duplication of native objects under new names (R06).

Gate and elaboration evidence: the targeted `lake build TauCetiRoadmap.RepresentationTheory.CompactGroups.Suggested` completed successfully (9118 jobs); direct `lake env lean` of Suggested.lean also exited 0. The gate still fails on set_option=1, residue=4, readme-ids-missing=2 and build=20. Those last twenty entries are linter warnings, recorded in R12 rather than mislabeled compiler errors. Combined companion elaboration passed. Removing every set_option from the combined copy also passed, so the override is unnecessary at these pins.

The dependency command specified in the brief returned:

```text
depcheck: 204 roadmaps, 1481 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The mechanical result does not resolve section ownership: R01–R03 give the manual defects. There are no declared CompactGroups gaps and no Needs lines to audit; the prose supplier edges were read instead.

The admission probe tried `simp`, `rfl`, `infer_instance`, and a single native-lemma application where a matching declaration was found, for all 29 admitted theorems (18 in Suggested.lean and 11 in companions). Four main-module admissions closed, listed in R08; 25 retained their original admissions. A failed one-tactic attempt is not proof of novelty: several others have the same mathematical content as native results with differently packaged hypotheses. In particular the two invariant-form iff targets repackage Compact/FrobeniusSchur/InvariantForm.lean:135,148. The following table records computed witnesses for every named declaration; definitions and non-sorried wrappers are included.

Conventions for the tables: μ is probability Haar; cπ(v,w)(g)=⟨π(g)v,w⟩ with the first slot conjugate-linear; χn(z)=zⁿ. “Pass” means the displayed instance is consistent. “Keep/cite” means keep the mathematics while citing a native result if already supplied; it does not recommend retaining wrapper declarations.

| Statement (Lean name) | Instances tried | Computed values on both sides | Result | Change |
| --- | --- | --- | --- | --- |
| haarProb | trivial group; C₂ | μ({1})=1; each C₂ singleton=1/2 and μ(G)=1 | Pass | Cite native |
| haar_univ_lt_top | trivial group; noncompact ℝ control | trivial-group Haar mass=1<∞; ℝ mass=∞ so ∞<∞ is false | Pass | Delete wrapper |
| haar_univ_ne_zero | trivial group | Haar mass=1≠0; zero measure would give 0=0 | Pass | Delete wrapper |
| isProbabilityMeasure_haarProb | trivial group; C₂ | 1⁻¹·1=1; C₂ singleton masses 1/2+1/2=1 | Pass | Delete wrapper |
| haarProb_apply_univ | C₂ | 1/2+1/2=1 | Pass | Delete wrapper |
| isMulLeftInvariant_haarProb | S₃; singleton | μ(g{h})=1/6=μ({h}) | Pass | Delete wrapper |
| isMulRightInvariant_haarProb | S₃; singleton | μ({h}g)=1/6=μ({h}) | Pass | Delete wrapper |
| isInvInvariant_haarProb | S₃; singleton | μ({h⁻¹})=1/6=μ({h}) | Pass | Delete wrapper |
| IsUnitary | C₂ sign; unipotent ℤ control | ‖−v‖²=‖v‖²; [[1,1],[0,1]]e₂ has norm²2≠1 | Pass | Cite native |
| isUnitarizable | C₂ action A=[[1,1],[0,−1]] | S=(I+A* A)/2=[[1,1/2],[1/2,3/2]], det S=5/4>0; A*SA=S | Pass | Cite native |
| IsInvariant | C₂ action diag(1,−1) | e₁-line maps to itself; e₁+e₂-line maps to e₁−e₂, outside | Pass | Keep definition only if needed |
| orthogonal_invariant | diag(1,−1), U=ℂe₁ | U⊥=ℂe₂; A(e₂)=−e₂∈U⊥ | Pass; one tactic | R08 |
| exists_orthogonal_irreducible_decomposition | V=0; trivial ℂ² | k=0 and empty sum=0; k=2, dimensions 1+1=2, cross inner product=0 | Pass | Cite native |
| isCompletelyReducible | C₂ sign⊕trivial; ℤ unipotent control | two invariant complementary lines; unipotent has only invariant line ℂe₁ and no complement | Pass with compactness | Keep/cite |
| matrixCoeff | χ₁ at i, v=w=1; v=0 | ⟨i,1⟩=−i; zero coefficient=0 | Pass | Cite native |
| matrixCoeff_apply | same | c(i)=−i=⟨i,1⟩ | Pass; rfl | Delete wrapper |
| matrixCoeffLp | χ₁; zero vector | ‖[z⁻¹]‖₂²=1; ‖0‖₂²=0 | Pass | Cite native |
| representativeSubmodule | trivial group; C₃ | span{1}=ℂ; span{1,z,z²} has dimension3=dim C(C₃) | Pass | Cite native |
| representativeStarSubalgebra | Circle | χ₁χ₂=χ₃; star χ₁=χ₋₁; 1=χ₀ | Pass | Cite native |
| representativeStarSubalgebra_toSubmodule | C₃ | both underlying spans=ℂ³, dimension3 | Pass; rfl | Delete wrapper |
| matrixCoeff_conj_inv | χ₁ at i, v=w=1 | conj(−i)=i=c(1,1)(−i) | Pass | Native inverse formula |
| schur_orthogonality_self | trivial one-dimensional action, v₁=1,v₂=i,w₁=w₂=1 | ⟨1,−i⟩=−i=conj⟨1,i⟩·1; wrong conjugation gives i | Pass | Cite native |
| schur_orthogonality_basis | S₃ standard irrep, d=2 | matching (i,j) norm²=1/2=(1/2)·1·1; distinct indices=0 | Pass | Cite native |
| schur_orthogonality_distinct | C₃ trivial and nontrivial character | (1+ω+ω²)/3=0; Hom=0 | Pass; one tactic | R08 |
| convolutionOperator | C₂, k=(1,−1), f=(a,b) | k*f=((a−b)/2,(b−a)/2); matrix=(1/2)[[1,−1],[−1,1]] | Pass | Cite native |
| convolutionOperator_isCompact | preceding C₂ operator; k=0 | rank1≤2; zero rank0 | Pass | Cite native |
| convolutionOperator_isSelfAdjoint | k=(1,−1); wrong k=(i,0) | matrix*=matrix; wrong operator=(i/2)I has adjoint=(−i/2)I | Pass | Cite native |
| convolutionOperator_eigenspace_finiteDimensional | C₂ sign kernel | eigenvalue1 dimension1; kernel dimension1; zero eigenvalue excluded in general | Pass | Cite native |
| representativeStarSubalgebra_dense | C₃; Circle f=1+2z | C₃ span=ℂ³; f already lies in span so distance=0 | Pass | Cite native |
| representativeStarSubalgebra_separatesPoints | Circle 1,i | χ₁(1)=1≠i=χ₁(i) | Pass | Cite native |
| IrrepModel | C₂ sign | dimension1, action(−1)=−1, norm1, no nontrivial proper subspace | Pass | Cite native |
| IsIrrepSkeleton | C₂ models {trivial,sign}; duplicated trivial | first exhausts2 classes with Hom between=0; duplicate has Hom dimension1 and misses sign | Pass | Cite native |
| IsPeterWeylBasis | C₂ functions 1,sign; wrong rescaling | correct vectors have norm1; 2·sign has norm2 and violates element equation | Pass | Cite native basis equation |
| peterWeylBasis | S₃; trivial group | 1²+1²+2²=6=dim L²(S₃); trivial index has1 vector and L² dimension1 | Pass | Cite native |
| character | χ₁ at i; zero representation | trace(i)=i; trace on zero space=0 | Pass | Cite native |
| star_character_eq_sum_matrixCoeff | χ₁ at i | conj trace(i)=−i=only diagonal coefficient | Pass | Cite native star_character |
| character_conj | S₃ standard, transposition | trace(hgh⁻¹)=0=trace(g); at 3-cycle both=−1 | Pass | Cite native |
| characterLp | S₃ standard values 2,0,−1 | norm²=(4+3·0+2·1)/6=1 | Pass | Cite native |
| centralLp | S₃ | class sizes1,3,2 give fixed subspace dimension3; δ_transposition is moved to another δ | Pass | Cite native |
| characterLp_mem_centralLp | S₃ standard | values remain (2,0,−1) on the three classes | Pass | Cite native |
| character_orthonormal_self | S₃ standard | (4+0+2)/6=1 | Pass | Cite native |
| character_orthonormal_distinct | S₃ trivial vs standard | (2+3·0+2·(−1))/6=0 | Pass | Cite native with direction comparison |
| frobeniusSchurIndicator | C₃ χ₁; C₂ sign | (1+ω²+ω)/3=0; (1+1)/2=1 | Pass | Cite native |
| frobeniusSchurIndicator_trichotomy | trivial; C₃ χ₁; Q₈ two-dimensional | indicators1,0,(2+2−12)/8=−1 respectively | Pass | Cite native |
| frobeniusSchurIndicator_eq_one_iff | trivial ℂ; C₃ χ₁ | B(v,w)=vw is invariant and ν=1; ω²B=B forces B=0 and ν=0 | Pass | Cite native |
| frobeniusSchurIndicator_eq_neg_one_iff | Q₈ standard; trivial ℂ | alternating determinant form nondegenerate, ν=−1; ℂ has no nonzero alternating form, ν=1 | Pass | Cite native |
| frobeniusSchurIndicator_eq_one_iff_exists_structureMap | trivial ℂ; quaternionic ℂ² | conjugation squares to+I; J(v₁,v₂)=(−conj v₂,conj v₁) squares to−I | Pass | Cite native |
| SU2 | I; diag(1,−1) | I*I=I, det I=1; second is unitary but determinant−1, excluded | Pass | Cite native |
| su2Irrep | n=0,1,2 | dimensions1,2,3; weights {0},{1,−1},{2,0,−2} | Pass | Cite native |
| continuous_su2Irrep | n=0; torus n=1 | constant action1; entries exp(±iθ) tend to1 as θ→0 | Pass | Cite native |
| su2Irrep_irreducible | n=0,1 | trivial one-dimensional module irreducible; standard has no invariant line (torus lines exchanged) | Pass | Cite native |
| su2Irrep_character_one | n=0,1,2 | χn(1)=1,2,3=n+1 | Pass; simp | R08 |
| su2Torus | θ=0,π,π/2 | I,−I,diag(i,−i); determinants all1 | Pass | Cite native |
| su2_conjugate_into_torus | torus element; [[0,1],[−1,0]] | first already diagonal; second eigenvalues i,−i, hence torus angleπ/2 | Pass | Cite native |
| su2Irrep_character_torus | n=2,θ=π/2 | exp(iπ)+1+exp(−iπ)=−1; trace=−1 | Pass | Integer subtraction correct |
| su2Irrep_character_sin_quotient | n=1,θ=π/3; endpoint excluded | 2cos(π/3)=1=sin(2π/3)/sin(π/3); at0 junk quotient0≠2 | Pass | Retain nonzero denominator |
| su2Irrep_character_endpoint | n=0,1,2 and k=−1 | 1,−2,3=(n+1)(−1)^(−n) | Pass | Cite/check, not headline |
| su2Irrep_inequiv | m=0,n=1 | dimensions1≠2 and irreducibility force Hom=0 | Pass | Cite native classification |
| su2Irrep_exhaust | trivial and standard | n=0 and n=1, identity intertwiner nonzero in each case | Pass | Cite native |
| weyl_integration_formula | f=1 and χ₁ | LHS1,0; RHS(1/(2π))·4·(π/2)=1 and odd-cosine integral0 | Pass; one tactic | R08 |
| weyl_integration_formula_normalized | f=1 | (1/(2π))·4·(π/2)=1 | Pass; Check | Delete wrapper |
| su2Character_orthonormal | (m,n)=(0,0),(0,1),(1,1) | weighted integrals1,0,1=δmn | Pass | Native comparison |
| compactCharacter | χ₁(i),χ₋₁(i) | i,−i equal their complex coercions | Pass | Keep if needed |
| exists_irrepClass_characterEquiv | trivial group; Circle χ₁ | unique class↔unique character; scalar action at i=iI, dimension1 | Pass | R07 |
| compactCharacter_span_dense | C₂; Circle 1+2z | C₂ span{1,sign}=ℂ²; polynomial has approximation error0 | Pass | R07 |
| exists_characterBasis | C₂; Circle χ₁ | vectors1,sign have norm1 and pairing0; Circle vector at i=i, not coefficient−i | Pass | R07 |
| secondCountable_iff_countable_irrepClass | trivial; Circle; Circle^J uncountable J | (true,true),(true,true),(false,false); dual sizes1,ℵ₀,at least card(J) | Pass | R03/R07 |
| separable_L2_iff_countable_irrepClass | same three groups | (true,true),(true,true),(false,false); orthogonal coordinate vectors distance√2 | Pass | R03/R07 |
| not_separable_L2_circleProduct | J uncountable; J=∅ control | card(J) vectors distance√2; empty product L²=ℂ is separable and premise false | Pass | R07 |
| gramForm_invariant_iff_commutes | C₂ diag(1,−1), T=diag(1,2); T=swap | invariant form/commutator: true/zero; for swap values−1≠1 and TA−AT=[[0,−2],[2,0]] | Pass | R07 |
| positive_selfIntertwiner_existsUnique_scalar | trivial ℂ, T=2I; trivial ℂ² control | unique c=2>0; diag(1,2) not scalar and ℂ² not irreducible | Pass | R07 |
| character_finite_coordinates | Circle² χ=z₁²z₂⁻¹; empty product | F={1,2}, χ(i,−1)=1=i²·(−1)⁻¹; empty product1 | Pass | R07 |
| exists_productDualEquiv | two circles; no factors | (2,−1) maps to z₁²z₂⁻¹, evaluation(i,−1)=1; zero sum↔trivial character | Pass | R07 |
| circleProduct_character | χ=z₁⁻¹; trivial χ | unique n=−e₁ gives χ(i)=−i; trivial χ has n=0, product1 | Pass | R07 |

Additional prose targets, proof-route steps and seeded-sample controls:

| Statement | Instances tried | Computed values on both sides | Result | Change |
| --- | --- | --- | --- | --- |
| Haar averaging: constants, linearity, translation | C₂ values (2,4) and (1,3) | averages3 and2; sum average5=3+2; swapped average3=3 | Pass | Cite native averaging |
| Topological/algebraic irreducibility equivalence | G={1}, V=0 | prose condition true; IsIrreducible false; positive scalar metric uniqueness false | Fail | R04 |
| FDRep continuity boundary | discontinuous additive a:S¹→ℂ, a(g)=1 | shear sends e₂ to e₁+e₂; invariant e₁ has no invariant complement | Pass as negative control | Retain continuity in categorical mirror |
| Gram-form representation and invariance | h(v,w)=conj(v)·2w on ℂ | T=2I; h(1,i)=2i=⟨1,2i⟩; T=0 gives0≠2i | Pass | Keep missing comparison |
| Irreducible metric scaling and inverse isometry | h₂=4h₁ on ℂ | h₂(v/2,w/2)=h₁(v,w); inverse multiplies by2 | Pass | Keep comparison |
| Commutant and multiplicity metric | trivial ℂ² | commutant=M₂(ℂ), complex dimension4; diag(1,2) positive, not scalar | Pass | Retain multiplicity freedom |
| Unitary decomposition change | A=diag(1,2), U swaps coordinates | UAU*=diag(2,1)=A′; U* A′ U=A | Pass | Keep equation |
| Finite average comparison | C₂ trivial ℂ | normalized form=⟨v,w⟩; raw sum=2⟨v,w⟩ | Pass | Cite native finite comparison |
| Coefficient sesquilinearity | trivial ℂ, v=w=1 | c(iv,1)=−i; c(1,iw)=i; wrong linear-first gives i in first test | Pass | Add explicit Check |
| Coefficient left/right translations | Circle χ₁, g₀=i,g=−1 | c(g₀g)=i=c(v,π(g₀⁻¹)w)(g)=c(π(g₀)v,w)(g) | Pass | Keep equations |
| Coefficient product and involution | Circle χ₁,χ₂ at i | c₁c₂=(−i)(−1)=i=c₃; star c₁=i=c₋₁ | Pass | Cite native algebra |
| Normalized coefficient orthonormality | S₃ d=2 | squared norm d·(1/d)=2·1/2=1; distinct basis pairs0 | Pass | Cite native |
| Continuous convolution representative bound | C₂ k=(1,−1), u=k | convolution=k, ‖k‖∞=1=‖k‖₂‖u‖₂; jSₖu=Aₖu | Pass | Keep sharper bound if new |
| Kernel and spectral route | preceding operator | constants in kernel map to0; sign eigenspace eigenvalue1 maps to sign | Pass | Native route not circular |
| Approximate identities | finite C₂ | k=(2,0) has integral1 and k*f=f; k=0 would have mass0 | Pass | Cite native; use nets generally |
| Isotypic G×G blocks and projectors | C₃ character χ₁ | coefficient block=ℂχ₋₁; convolution by χ₋₁ sends χ₋₁ to itself and χ₁ to0 | Pass | Conjugation convention matches native |
| Hilbert-sum block dimensions | S₃ | block dimensions1,1,4 sum to6; center dimensions1+1+1=3 | Pass | Cite native blocks |
| G-finite Banach approximation | Circle rotations, v=1+2z | orbit span dimension2; exact representative approximation error0 | Mathematics passes; ownership fails | R01 |
| Uniform operator bound and zero vector | unitary action; zero space | Cπ=1 in nonzero unitary case; zero vector error0, no division by ‖v‖ | Pass | Keep zero branch |
| Banach covariance | Circle π(g)v=gv, f(g)=g⁻¹, h=i | T_f=I; π(h)T_f=iI; T_(L_h f)=iI | Pass | Cite A7 and own adapter |
| Uniform-on-compact-vector-set refinement | unit ball in ℂ, Tε=(1−ε)I | supremum error ε=‖Tε−I‖; zero vector error0 | Pass | Keep bound before density |
| Metrizability and per-vector support | Circle^J; f=χj+2χk | orthogonal coefficients1,2, others0; norm²5=1+4; support size2 even if J uncountable | Pass | R03 |
| Product dual topology distinction | χn on Circle^ℕ, constant tuple−1 | each fixed coordinate exponent eventually0; χn(−1,−1,…)=−1 always, not1 | Pass | Keep discrete topology |
| Small-arc exclusion | z=i or−1 | z or z² leaves centered arc(π/2); z=1 has all powers1 | Pass | Cite native arc lemma |
| Nonabelian finite-coordinate generality | product S₃×S₃, χ=sign first factor | χ((12),1)=−1; χ(1,(12))=1; only first restriction nontrivial | Pass | Do not narrow to abelian factors |
| Abelian scalar action and basis reindexing | Circle χ₁ | scalar π(i)=i, coefficient=−i; π=χ₋₁ supplies Fourier vector value i | Pass | R07 |
| Fourier coefficient, Parseval and unconditional expansion | Circle f=1+2z | fhat(0)=1, fhat(1)=2, others0; sum squared coefficients5=‖f‖₂² | Pass | No pointwise convergence claim |
| Class-function completeness and inversion | C₃; χ₁ | inversion sends χ₁ toχ₋₁; both norm1; central space dimension3 | Pass | Cite native basis |
| Continuous representation ring and positive cone | S¹; trivial group | R(S¹)=ℤ[z,z⁻¹], z+z⁻¹ genuine; −1 virtual only; R({1})=ℤ | Pass | R05/R14 |
| Torus lattice and period normalization | T=S¹, χn(exp(it))=exp(int) | derivative=in; at period2π, ell=2πn; n=1/2 would give−1, not1 | Pass | Exact period contract needed |
| Real complexification pairs opposite weights | real plane rotation | weights+1,−1 each multiplicity1; conjugation swaps and squares to1 | Pass | Keep comparison |
| Actual Weyl action and distinct orbit sums | SU2 W={±1}, weight0 and2 | orbit sum at0=1, not2; at2=z²+z⁻²; reflection squares toidentity | Pass | Keep wall test |
| Finite central cover descent | U(2), (q,a₁)=(1,1),(0,1) | kernel action(+1),(−1); first descends, second does not | Mathematics passes; supply fails | R02 |
| Zero-root and zero-rank cases | K=S¹; K={1} | derived factor trivial, X=ℤ or0; descent ring ℤ[z±1] orℤ | Pass | Do not replace actual X by semisimple lattice |
| Dominant-integral global existence | SU2 weight1; SO3 weight1 and2 | SU2 kernel test1; SO3 weight1 gives−1 on−I, weight2 gives+1 | Pass | R02/R14 |
| Restriction ring isomorphism and positivity | SU2 | z²+z⁻²=χ₂−χ₀; coefficients(1,−1) not both nonnegative | Pass | Preserve virtual/genuine distinction |
| Downward leading-orbit subtraction | SU2 χ₂ | χ₂=(z²+z⁻²)+1; subtract leading orbit leaves1 with smaller highest weight0 | Pass | Finite dominance, no central-real ordering |
| U(n) covering congruence | U3 highest tuple(2,0,−1); U1; U0 | q=1,a=(2,1), Σiaᵢ=4≡1 mod3; U1 mod1 imposes nothing; U0 has trivial group | Pass | Keep rank0 separate |
| U(n) ring generators | U2, det inverse and standard | weights det⁻¹=(−1,−1); standard=(1,0),(0,1); product has(0,−1),(−1,0) | Pass | Include negative twists |
| U(2) iff recognition, both directions | zero f; det⁻¹; weights1,2,1 at(2,0),(1,1),(0,2) | zero module; one det⁻¹; differences m(2,0)=1,m(1,1)=1; dimensions0,1,4=3+1 | Pass | R13/R14 |
| U(2) converse negative control | f(1,−1)=f(−1,1)=1, f(0,0)=0 | Weyl symmetry true; inequality0≥1 false; outward integer difference−1 | Pass | Do not use truncated natural subtraction before inequality |
| U(2) finite-support hypothesis | f(a,b)=1 on all ℤ² | symmetry1=1 and inequality1≥1; infinitely many weights, no finite-dimensional module | Pass | Keep finite support |
| Frobenius–Schur form uniqueness and even dimension | Q₈ standard ℂ²; C₃ χ₁ | invariant alternating-form space dimension1, J²=−I, dim2 even; complex type form space dimension0 | Pass | Cite native |
| SU2 monomial norm warning | n=2, rotate coordinates by 45° | x²↦(x²+2xy+y²)/2 has coefficient norm²3/2≠1 | Pass | Keep unitary conjugacy before coefficient use |
| SU2 endpoint and Weyl density | n=2, θ=0,π | χ₂=3 at both endpoints; sine quotient is junk0/0=0; weighted total mass1 | Pass | Keep sum formula globally |
| SU2 homomorphisms, kernels and partitions | d=0,1,2; n=0,…,4 | kernels SU2,{I},{±I}; partition counts p=1,1,2,3,5 and odd-part counts1,1,1,2,2 | Pass | Counts0,0,1,1,3; R13 |
| Faithfulness and unitary conjugacy | Sym²⊕trivial vs Sym¹⊕trivial | −I acts+I on first, nontrivially on second; kernels {±I} vs{I} | Pass | Preserve complex dimension d+1 |
| Separable deliverables/build order | trivial group; S₃; Circle | core basis sizes1,6,ℵ₀, with no SU2 model needed; SU2 engine dim Symⁿ=n+1 separately | Pass | Core and engine ownership stay separate |

Source sample and locators:

| Seeded target | Text actually inspected | Outcome |
| --- | --- | --- |
| Haar measure | Mathlib/Haar Basic:530,540,550,572,582 and Unique:278,683,690,700; knapp lines 10080–10099, printed pp.239–240 | Native existence, normalization and compact probability uniqueness confirmed; no second-countability assumption inserted. |
| Two neighbouring roadmaps | Completed/OrthogonalL2Bases B2:275–308 and RepresentationTheory/CharacterTheory scope:39–120, contracts:167–241 | Hilbert assembly and finite character specialization have owners. B2’s polynomial-facing ℕ/real-line formulation is not an arbitrary-dual theorem; native HilbertBasis.mkOfOrthogonalEqBot supplies the arbitrary-index assembly. |
| Virtual representations and actual torus characters | TauCeti/CharacterTable/VirtualCharacter.lean:124–139; knapp line 11115, Proposition 4.58, printed p.264 | Native virtualCharacters has no continuity condition. Period test confirmed. No exact source locator is supplied for the continuous Grothendieck-ring construction; R14. |
| Global existence and descent before the ring isomorphism | knapp lines 10549–10559, Theorem 4.29 pp.250–251; 11261, Theorem 4.69 p.268; 14142, Theorem 5.107 p.334; 14203–14240, Theorem 5.110 pp.335–336 | Compact connected/semisimple and analytic-integrality hypotheses support the mathematical route. This does not supply missing roadmap-owned cover interfaces; R02. |
| Normalization and global-form tests | Knapp Proposition 4.58 and Theorem 5.110; direct kernel calculations in table | 2π, SO3 parity and U(n) congruence pass. No exact locator in the README for these computations; R14. |
| Recognizing genuine U(2) weight characters | README lines 765–797; finite differences and explicit Sym²⊕det computation | Both directions and finite-support control pass mathematically. Knutson text not identified/read; source attribution is not certified. |
| Separable deliverables | README lines 972–982; native Haar, PeterWeyl and SU2 files; Etingof §37 | This is a scheduling/ownership statement, with no theorem/page citation in the README. Core/engine independence is consistent; neither source availability nor a build proves completeness. |

No README locator is explicitly marked unverified. The additional readable source was [Etingof’s MIT lecture 11](https://ocw.mit.edu/courses/18-755-lie-groups-and-lie-algebras-ii-spring-2024/mit18_755_s24_lec11.pdf): §37.1, Theorem 37.1, printed p.199 (etingof lines 9–38), and §37.2, Theorem 37.5, printed p.202 (lines 145–158). Its countable-base hypothesis is explicit. It supports the stated countable-base comparison, not the full uncountable theorem or the converse criterion. [Knapp’s legal digital second edition](https://www.math.stonybrook.edu/~aknapp/books/beyond2digital.html) was fetched through the sources service; the cited numbering is that version’s, and its printed second edition has a corrections appendix. No source was copied into the PR or reports.

Pinned-object and ownership audit (selected opened declarations, 25 entries):

| Object | Declaration and file:line at the pin | Consequence |
| --- | --- | --- |
| Native representation carrier | ContRepresentation, Mathlib/RepresentationTheory/Continuous/Basic.lean:55 | Bundles a homomorphism to continuous linear operators, not continuity in G. |
| Irreducibility | Representation.IsIrreducible, Mathlib/RepresentationTheory/Irreducible.lean:29 | Nontriviality is included through IsSimpleOrder; R04. |
| Haar | Measure.haar, Mathlib/MeasureTheory/Measure/Haar/Basic.lean:582 | Choice of Haar on a locally compact group. |
| Probability Haar uniqueness | isHaarMeasure_eq_of_isProbabilityMeasure, Mathlib/MeasureTheory/Measure/Haar/Unique.lean:700 | No private uniqueness theorem needed. |
| Normalized measure | TauCeti.haarProb / haarProb_def, TauCeti/RepresentationTheory/Compact/Haar.lean:93,97 | Native probability normalization and instances. |
| Parameter continuity/averaging | exists_isUnitary_congr, TauCeti/RepresentationTheory/Compact/UnitaryModel.lean:92 | Carries Continuous π explicitly. |
| Unitarity | IsUnitary, TauCeti/RepresentationTheory/Continuous/Unitary/Basic.lean:52 | Inner-product-preserving action predicate. |
| Complement invariance | IsUnitary.apply_mem_orthogonal, TauCeti/RepresentationTheory/Continuous/InvariantComplement.lean:100 | No compactness needed for this algebraic consequence. |
| Decomposition | IsUnitary.exists_orthogonal_irreducible_decomposition, TauCeti/RepresentationTheory/Continuous/OrthogonalDecomposition.lean:194 | Native subrepresentations, orthogonal family and internal sum. |
| Scalar Schur | exists_eq_smul_one_of_isIrreducible, TauCeti/RepresentationTheory/Continuous/Schur.lean:86 | Metric-scalar comparison has a native input. |
| Unitary equivalences | exists_linearIsometryEquiv_congr_eq, TauCeti/RepresentationTheory/Continuous/Unitary/Equivalence.lean:58 | Irreducible equivalence upgrade, not unrestricted choice of scalar normalization. |
| Coefficients | matrixCoeff_apply / matrixCoeff_apply_inv, TauCeti/RepresentationTheory/Continuous/MatrixCoefficient.lean:80,241 | Conjugate-linear-first convention confirmed. |
| Schur orthogonality | schur_orthogonality_self / basis, TauCeti/RepresentationTheory/Compact/SchurOrthogonality.lean:109,127 | Reciprocal dimension and conjugation match. |
| Off-diagonal coefficients | schur_orthogonality_distinct, TauCeti/RepresentationTheory/Compact/Intertwiner/Basic.lean:416 | Only the second action must be unitary in native statement. |
| Convolution | convolutionCLM_apply_apply / toLp_apply, TauCeti/RepresentationTheory/Compact/Convolution.lean:209,220 | k(xy⁻¹)f(y) convention, equivalent to k(y)f(y⁻¹x). |
| Arbitrary-dual Peter–Weyl | IrrepClass / stdPeterWeylBasis / coe_stdPeterWeylBasis, TauCeti/RepresentationTheory/Compact/PeterWeyl.lean:668,711,721 | Native index is in group universe; no countability premise. |
| Circle comparison | peterWeylFamily_fourierIrrepModel, TauCeti/RepresentationTheory/Compact/FourierPeterWeyl.lean:147 | Native −n reindexing already provided. |
| Class-function basis | characterBasis / coe_characterBasis, TauCeti/RepresentationTheory/Compact/Character/Basis.lean:346,356 | The class-function completeness headline is already native. |
| Coefficient block/projector | peterWeylBlockAveraging / eq_starProjection, TauCeti/RepresentationTheory/Compact/IsotypicBlock/Basic.lean:651,820 | Averaging kernel is dimension times conjugate trace character. |
| Invariant forms | frobeniusSchurIndicator_eq_one_iff / eq_neg_one_iff, TauCeti/RepresentationTheory/Compact/FrobeniusSchur/InvariantForm.lean:135,148 | Native nondegeneracy formulation; local extra B≠0 is redundant for irreducibles. |
| SU2 models/classification | symPowerModel_apply / existsUnique_nonempty_equiv_symPower, TauCeti/RepresentationTheory/SU2/Exhaustion.lean:119,299 | Native monomial model and exhaustive classification. |
| SU2 Weyl integral | weyl_integration_formula, TauCeti/RepresentationTheory/SU2/Weyl/Integration.lean:146 | Continuous class-function integral with exactly the displayed normalization. |
| Continuous-functions density | ContinuousMap.toLp_denseRange, Mathlib/MeasureTheory/Function/ContinuousMapDense.lean:363 | Requires p≠∞, finite measure and weak regularity; p=2 qualifies. |
| Hilbert assembly/Parseval | HilbertBasis.mkOfOrthogonalEqBot / tsum_inner_mul_inner, Mathlib/Analysis/InnerProductSpace/l2Space.lean:555,471 | Arbitrary-index native machinery. |
| Compact dual/single circle | PontryaginDual / compact discreteness, Mathlib/Topology/Algebra/PontryaginDual.lean:37,84; TauCeti.fourierPontryaginDualEquiv, TauCeti/Analysis/Fourier/AddCircle.lean:246 | Native dual is ContinuousMonoidHom; compactness gives discreteness. |

Also opened Circle.eq_one_of_forall_pow_mem_centeredArc_pi_div_two and AddCircle.homeomorphCircle at Mathlib/Analysis/SpecialFunctions/Complex/Circle.lean:483,435, and Summable.countable_support_ennreal at Mathlib/Topology/Algebra/InfiniteSum/ENNReal.lean:553. None requires general Pontryagin biduality. The Borel instances in CountabilityTargets select the product topology’s Borel sigma algebra, rather than incorrectly assuming its equality with the product measurable-space instance at arbitrary cardinality.

Cross-roadmap resolution: thirteen distinct referenced roadmaps were examined by object. The completed OrthogonalL2Bases B2 and CharacterTheory contracts resolve; OperatorTheory/OperatorIdeals Part C (README:530–566) owns Hilbert–Schmidt columns and compactness; BanachAlgebras A7.ChosenApproximateIdentity/A7.IntegratedRepresentations (README:895–933) provides the stated strong Banach integration and norm bound without global separability. LieHighestWeight Layers 0–6, 9 and pure Layer 10 are present on main (the late compact-center application is explicitly separate at README:1726); RootSystems Layers 1–6 are present, with root combinatorics preceding Coxeter comparison. CharacteristicClasses C5.1 (README:1062) is an invariant-polynomial consumer/boundary, not a representation-ring supplier. NoncompactQuantumSymmetry M0 and TopologicalKTheory T6.1 are downstream application owners. SmoothBanachRepresentations is a downstream smooth-topology comparison, not a prerequisite here. The three faulty supply claims are R01–R03.

Ownership search used the required roadmaps grep/show commands, main, the supplied open checkouts and board package READMEs, with object searches for Peter–Weyl, continuous virtual characters, invariant Hermitian forms, finite-coordinate characters, Hilbert countability and product duals. Hits outside the provided open-file set were not used as evidence. No competing owner for arbitrary-product character factorization or the compact abelian reindexing comparison was found in the allowed material; these belong in the compact-group extension. Open revisions of LieGroups and BanachSpaceTheory were read to diagnose drift, not accepted as suppliers. Automated search hits are not treated as statements or instructions.

Headline inventory: Haar unitarization and complete reducibility; Schur orthogonality; uniform and L² Peter–Weyl with its exact coefficient basis and isotypic sum; class-function character completeness; Frobenius–Schur trichotomy; SU2 classification and Weyl integration; invariant-metric/commutant classification; strong Banach G-finite approximation; dual-countability/metrizability/separability; arbitrary-product duality; compact abelian Fourier basis; compact connected representation-ring restriction and global descent; U(2) positive-cone recognition; SU2→U(n) conjugacy/faithfulness classification. The first seven are overwhelmingly native at the pins and should be consumed. The companion declarations demonstrate that the countability/product/Fourier and selected metric headlines are statable now. The representation-ring/global-Lie comparison requires additional carrier/interface work and must be explicitly accounted for in the acceptance module docstring; no free predicate substitute is acceptable.

## Not verifiable

- The README has no sources manifest. I did not edit one. The source service legally read Knapp’s digital second edition and Etingof’s MIT notes. The original printed Knapp edition was not independently compared page by page with the digital corrections; locators above specify the version read.
- Bump, Lie Groups, second edition; Bröcker–tom Dieck, Representations of Compact Lie Groups; and Hewitt–Ross, Abstract Harmonic Analysis I/II: the service resolved publisher-only material and returned uncertified. Their broad chapter assertions were not text-certified; I did not infer contents from a paywall.
- Conway, A Course in Functional Analysis, second edition, VII.9 exercises 8–11: the title lookup failed; DOI 10.1007/978-1-4757-4383-8 then resolved to a paywalled Springer source and was recorded as uncertified for this review. Exercise numbering, pages and precise hypotheses remain unverified. See the [publisher record](https://link.springer.com/book/10.1007/978-1-4757-4383-8).
- Folland, A Course in Abstract Harmonic Analysis, second edition, Chapter 5: the service reached the Taylor & Francis DOI 10.1201/b19172 landing page but found no fetchable legal text. No specific theorem/page locator was supplied by the README. Retained in the scratch missing-source request.
- Knutson’s first-semester notes, p.60, and the Banach course notes, p.136: author/title lookup and the available bibliographic description did not identify a readable edition. Knutson’s author-page search did not identify the cited notes. Both remain in the single scratch missing-source request. The U(2) criterion has no explicit Knutson locator in the README; the PR description is not source evidence.
- General compact-connected representation-ring surjectivity and the full U(2) recognition theorem have no exact supplied source locators. Their displayed examples and algebra were checked, but those checks do not certify an unspecified source. The report is complete with these limits; it is not awaiting source access to issue its verdict.

## Source issues

- **Misprint** in etingof at Corollary 37.7 proof, printed p.203: the source says the quotient by K_m embeds in the unitary group of the first n representations; it should be the first m representations; affects the proof.
