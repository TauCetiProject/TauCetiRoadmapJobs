# Review of SchemeAndStackFoundations (pull request #1276 at 0cb327b)

**Verdict:** rejected

The new polarized-algebraization objective extends an existing roadmap beyond its explicit boundary and belongs in Part II (R03). There are also mathematical and acceptance-test repairs below. This verdict does not reject polarized algebraization as mathematics. No pull-request file was changed.

## R01 (P1) — Break the two-way supply with JacobianChallenge

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:123`, `:425`, `:5342`, `:5704`.

**Claim:** JacobianChallenge Layers B–F, including proper coherence and the Picard construction, supply this roadmap, while this roadmap supplies prerequisites back to JacobianChallenge.

**Witness:** On main, `TauCetiRoadmap/JacobianChallenge/README.md:152` consumes this roadmap's Chow lemma; `:196` consumes its formal functions; `:208` consumes its Hilbert schemes. This roadmap consumes JacobianChallenge C at `:5342` and C–D at `:4862`.

This is a roadmap-level cycle even though the text distinguishes the early coherent-cohomology theorem from the later Picard construction. The binding contract requires a single direction of supply between roadmaps. The mechanical check below does not expose these main-roadmap return edges.

**Repair:** Separate the early foundational block from the later Jacobian consumers. Assign Chow's lemma, the proper-coherence/base-change prerequisites and Hilbert representability one preceding foundation owner, recording the ownership transfer rather than retaining duplicate targets in JacobianChallenge. JacobianChallenge then consumes that block; move the foundation's uses of JacobianChallenge's Picard output to Part II. Verify the resulting chain foundation → JacobianChallenge → Part II on these three explicit return edges. Merely reordering subsections leaves the same two roadmap vertices connected both ways.

## R02 (P1) — Arbitrary integer-valued gradings do not define Koszul symmetries

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:4744`: “pairs `(L, f : X → ℤ)` with the Koszul sign rule”.

**Claim:** An arbitrary function on the points of a scheme can grade an invertible sheaf in this symmetric monoidal groupoid.

**Witness:** On `X = 𝔸¹_ℚ`, take `L = O`, `f(0)=1` and `f=0` elsewhere. Self-symmetry would be −1 at 0 and +1 generically, whereas every unit of `ℚ[t]` is constant.

The cited Construction 5.1 requires local constancy: `bhatt-scholze-witt line 822`, with the symmetry at lines 824–828, printed p. 18. This is already repaired on main in `TauCetiRoadmap/SchemeAndStackFoundations/README.md:4833`, with the same negative control at `:4857`.

**Repair:** Retain main's `LocallyConstant X ℤ` degree carrier, morphisms only between equal degrees, and the pointwise sign glued on clopen degree loci. Retain its connected, disconnected and non-locally-constant Checks. The witness is then excluded; constant degree 1 gives the regular unit −1, and degrees `(0,1)` on `Spec(ℚ×ℚ)` give the regular unit `(1,−1)`.

## R03 (P2) — Put the new algebraization objective in Part II

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:74` and `:5403`.

**Claim:** This existing roadmap now owns the construction of a projective scheme from a polarized adic system and the corresponding category equivalence.

**Witness:** Main's `TauCetiRoadmap/SchemeAndStackFoundations/README.md:5505` ends the existing theorem at coherent modules and compatible morphisms on a supplied proper scheme, explicitly excluding polarized-system algebraization. The new §4.10A supplies precisely that excluded existence theorem.

The distinction is mathematical: an input proper `X` in §4.10 is not an output `X` constructed from `(X_n,L_n)` in §4.10A. This is an extension, not a correction to the existing statement. The brief requires extensions to be Part II roadmaps, with the base imported by section.

**Repair:** Preserve the base roadmap's scope and put the polarized-system category, algebraization, equivalence and complete-base-change targets in SchemeAndStackFoundations Part II, importing base §§4.7–4.10 and the relevant projective-geometry suppliers. Its introduction should state this precise boundary. For `X_n = ℙ¹_{k[[t]]/(t^{n+1})}`, the extension constructs `ℙ¹_{k[[t]]}`; the base then supplies effectivity of coherent modules and morphisms on it. That separates the two obligations without losing either theorem. This placement defect is why the verdict is rejected rather than ready for repair within this one folder's scope.

## R04 (P2) — The quotient's section algebra is outside the cited relative-Proj interface

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:2616`–`:2619`, compared with `:564`–`:565`.

**Claim:** The invariant section algebra, or a Veronese of it, can be fed to §0.3, whose carrier requires degree zero to be `O_S`.

**Witness:** Let `S=Spec k`, `Y=ℙ¹_k ⊔ ℙ¹_k`, `Γ=1`, and take `O(1)` on both components. The section algebra has degree-zero piece `k×k`; every Veronese still has degree-zero piece `k×k`, not `k`.

The projective-quotient theorem is not refuted. Its stated prerequisite interface is insufficient on an allowed input.

**Repair:** Use the finitely generated relative-Proj construction already owned by StableReduction Layer 2 (`TauCetiRoadmap/StableReduction/README.md:438`–`:444`), with its general graded-algebra carrier from AlgebraicVectorBundles L2A. Explicitly identify this invocation in the target and its Needs line; do not impose geometric connectedness on `Y`. Alternatively supply the necessary general-degree-zero comparison through that owner. On the witness, general relative Proj returns the two projective lines and the quotient map is the identity. A positive-degree Veronese alone does not repair the interface.

## R05 (P2) — Keep projectivity in both alteration headlines

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:6363`–`:6364`, `:6450`–`:6459`; `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean:1401` and `:1456`.

**Claim:** Proper compactifications are used as the Lean acceptance statements; §4.20 explicitly leaves the stronger projectivity conclusion outside its statement.

**Witness:** `de-jong-alterations line 601` (Theorem 4.1, printed p. 66) and line 1258 (Theorem 6.5, printed p. 83) both require a projective compactification. The elaborated Lean conclusions contain only `IsProper g`.

The README's field theorem promises projectivity, so its Lean signature is weaker. The trait theorem weakens the source in both places. A valid consequence is not the required full headline or an acceptable stand-in for a missing carrier.

**Repair:** Restore the projectivity conclusion to both README targets. State the full headlines with a genuine projective-morphism predicate on native carriers if this requires only simple definitions. Otherwise name both full headlines and the missing projective-geometry carrier in the module docstring and remove the proper-only substitutes. Do not replace projectivity with a freely supplied proposition. On `X=ℙ¹_k` and `X=ℙ¹_{k[[t]]}`, the identity alteration with the usual projective compactification satisfies the restored conclusion; both projectivity flags are true, whereas the present tests record only properness.

## R06 (P2) — State the statable full-faithfulness half of coherent existence

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:5368` and `:5400`; `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean:1187`.

**Claim:** The acceptance test records only essential surjectivity; `grothendieck_existence_fullyFaithful` remains README-only.

**Witness:** The existing adic system, closed immersions, module sheaves and pullback comparisons suffice to state unique algebraization of compatible module morphisms. The scratch signature uses precisely these carriers and no added definitions.

Full faithfulness is part of the category-equivalence headline, and §4.10A explicitly uses it to recover line-bundle isomorphisms. Stacks Proposition 30.25.4 (088C), `stacks-01SB line 3234` in Cohomology of Schemes, asserts an equivalence, not just existence of objects.

**Repair:** Add the headline: for coherent `M,N` on proper `X/A`, every family `g_n : j_n^*M → j_n^*N` compatible with the transitions is `j_n^*G` for a unique `G : M → N`. Use the same completeness, Noetherian, ideal and closed-immersion hypotheses as the object theorem, and the existing `pullbackComp`/`pullbackCongr` comparisons. For `A=k[[t]]`, `X=Spec A`, `M=N=O`, multiplication by compatible residues is multiplication by the unique series `a∈A`; incompatible residues `0 mod t` and `1 mod t²` fail the compatibility hypothesis.

The following addition to a scratch copy of the file elaborated under the defaults (exit 0; only `sorry` warnings). It is an acceptance signature, not a completed proof:

```lean
namespace TauCetiRoadmap.SchemeAndStackFoundations.Formal
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry
/-- Compatible coherent module maps on all reductions algebraize uniquely. -/
theorem coherentFormalHom_effective (A : AdicRing.{u}) [IsNoetherianRing A.carrier]
    {X : Scheme.{u}} (f : X ⟶ Spec (CommRingCat.of A.carrier)) [IsProper f]
    (I : X.IdealSheafData)
    (hI : (I.support : Set X) = Set.range (pullback.fst f
      (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk A.ideal)))))
    (𝔛 : AdicThickeningSystem.{u}) (j : ∀ n, 𝔛.X n ⟶ X)
    [∀ n, IsClosedImmersion (j n)]
    (hker : ∀ n, (j n).ker = I ^ (n + 1))
    (hjι : ∀ n, 𝔛.ι n ≫ j (n + 1) = j n)
    (M N : X.Modules) [M.IsFinitePresentation]
    [N.IsFinitePresentation]
    (g : ∀ n, (Scheme.Modules.pullback (j n)).obj M ⟶
      (Scheme.Modules.pullback (j n)).obj N)
    (hg : ∀ n,
      (Scheme.Modules.pullback (𝔛.ι n)).map (g (n + 1)) ≫
        ((Scheme.Modules.pullbackComp (𝔛.ι n) (j (n + 1))).app N ≪≫
          (Scheme.Modules.pullbackCongr (hjι n)).app N).hom =
      ((Scheme.Modules.pullbackComp (𝔛.ι n) (j (n + 1))).app M ≪≫
          (Scheme.Modules.pullbackCongr (hjι n)).app M).hom ≫ g n) :
    ∃! G : M ⟶ N, ∀ n, (Scheme.Modules.pullback (j n)).map G = g n := by
  sorry
end TauCetiRoadmap.SchemeAndStackFoundations.Formal
```

## R07 (P3) — Correct two sampled source locators

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:1311` and `:2693`.

**Claim:** Stacks 0335 supplies general finite-type stability of Nagata rings, and 0432 supplies 2-Yoneda.

**Witness:** `stacks-01SB line 21186` in Algebra lists particular Nagata base classes. `stacks-01SB line 484` in Stacks is the stack-in-setoids/sheaf criterion. Neither is the cited general theorem.

**Repair:** Cite Proposition 10.162.15 (0334), Algebra printed pp. 449–450, lines 21107–21110, for finite-type stability. Cite Categories Lemma 4.41.2 (004B), printed pp. 89–90, line 4451, for the groupoid-valued 2-Yoneda equivalence. The former gives `R Nagata ⇒ R[T] Nagata` for arbitrary Nagata `R`; the latter identifies maps from a representable with the fibre groupoid, including its automorphisms. These are roadmap locator errors, not errors in the sources.

## R08 (P3) — Delete acceptance-test padding

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean:277` and `:1363`.

**Claim:** The forward-functor projection and the thickness-three residual-chart calculation are headline acceptance theorems.

**Witness:** The forward-functor equality closes with `rfl` in the scratch copy. The second declaration is the exact `uv=s³t` Check of README `:6324`–`:6336`: substitution leaves `ab=st`, with local dimension 3 and embedding dimension 4.

**Repair:** Delete `universalHomeomorphismEtaleEquivalence_functor` and `Formal.DeJong.nodal_codim_two_thickness_three_residual` from `Suggested.lean`. Keep their mathematical content in the README API/Checks. Do not prove them in place. Also delete the proved example at `Suggested.lean:164`, which just invokes `fixed_of_henselian`, and the example at `:704`, which restates the pinned properness valuative criterion. They do not test a new definition nontrivially. The general étale-invariance and alteration headlines remain the acceptance targets. Re-evaluating the Check still gives `s²(ab−st)` and `3<4`; deleting it loses no general target.

## R09 (P3) — Account for every omitted headline in the module docstring

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean:17`–`:28`, compared with README `:17`–`:23`.

**Claim:** The three listed unavailable headlines account for the roadmap's omitted end theorems.

**Witness:** The README explicitly names Keel–Mori, coherent Grothendieck duality, the scheme Brauer-class map, pointless-curve Picard torsors, Schlessinger, GRR and Hodge index. None is stated in this file or named in its unstatable-headline list.

**Repair:** Inventory the README's actual end theorems. State those that can use native carriers and a few simple definitions; for each remaining one, name the theorem and the precise missing carrier in the docstring. Include polarized algebraization in the extension's corresponding inventory. Preserve the distinction between the actual scheme Brauer-class map and the affine matrix-splitting theorem. On the pointless real conic, the absent Picard target must distinguish actual line-bundle degrees `2ℤ` from Picard-sheaf degrees `ℤ`; an affine Picard-group comparison does not test that distinction. R06 separately identifies a concrete statable omission.

## R10 (P3) — Remove undeclared API and Check names from code spans

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:4991`–`:5009` (representative of the same format elsewhere).

**Claim:** Backticked local names such as `IsArtinLocalAug`, `ArtinLocalAlg`, `zmod_prime_pow_mem` and `dualNumber_pullback` name declarations of this roadmap.

**Witness:** None of these four names is declared in `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean`. The Checks are named API entries, despite the required prose-only Check convention.

**Repair:** Describe README-only constructions and their API in prose, using code spans for existing library declarations or actual acceptance-file names. Rewrite each Check as a computed example without a purported Lean counterpart; do not add padding to make these names exist. For this section, retain the computations that ℤ/4 is Artinian with residue 𝔽₂, ℤ₂ is not Artinian, and the dual-number fibre product has cotangent dimension 2. The gate's zero missing-ID count does not override this explicit form rule.

## Verified sound

The evidence below records successful checks and the limits of those checks; it does not turn a `sorry` elaboration into a proof. I read the complete two target files, the normative root README and CONTRIBUTING, and compared ownership with main and the available open-work index. No declared supplier gaps or README locators marked unverified were present.

**Mechanical checks.** The head matches the requested hash. The worker's gate passes every recorded scanner and the targeted build; the outside-folder three-dot diff is empty. The missing imported `TauCeti.AlgebraicGeometry.Cohomology.Genus` object was built using that individual module, then direct `lake env lean` elaboration of the target succeeded with only `sorry` warnings. A scratch copy with `#check @name` for 165 named definitions, structures, classes, abbreviations and theorems elaborated successfully. I read the printed types, including the explicit finite-dimensional genus guards, properness, finite generation, flatness, scalar structures, perfect-field condition and compatible-transition hypotheses. No lost-binder counterexample was found. The projectivity mismatch is R05.

The basic one-tactic probes tried `rfl`, `simp`, and `infer_instance` on all 76 admitted theorem bodies (74 in the full-file copy and the two characteristic statements in a second scratch copy), retaining `sorry` if none closed. One closed: R08's forward-functor equality. The characteristic statements retained `sorry`; their prime hypothesis is retained, and the empty scheme is allowed. The two named instances and anonymous category/algebra instances were inspected in the file. The additional full-faithfulness signature displayed in R06 also elaborated with exit 0 and only `sorry` warnings. This does not claim that the other declarations are independent of every possible one-line library citation.

The required dependency command completed successfully and printed:

```text
depcheck: 204 roadmaps, 1460 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line was emitted. R01 records the independently resolved two-way ownership against main; the zero count is not evidence that those two cited return edges disappear.

**Seeded source audit: all 15 requested sections.** Sources were fetched through the sources service from the Stacks Project, arXiv and Numdam. Numbers below are those in the fetched line-numbered extractions; Stacks line numbers are qualified by chapter because each chapter is a separate extraction. For tag-based citations, the stable tag identifies the proposition; printed chapter pages below describe the text inspected.

| Sample | Text and locator inspected | Hypotheses and outcome |
|---|---|---|
| §0.2 | Stacks Morphisms, 29.11.7 (01SB), printed p. 20, `stacks-01SB line 909`; Constructions 27.4.6 (01LX), p. 7, line 293 | The module comparison uses extension of scalars along `p^*A→O`, not bare pullback. Relative-Spec base change and the finite/finite-presentation/finite-type conditions agree. |
| §0.5 | More Algebra 064Q, 064T, 064V, 066E, pp. 160–167, `stacks-01SB line 7432`, 7500, 7586, 7746; Derived Categories of Schemes §10 (08E4) | Infinite finite-free resolutions are allowed; pseudo-coherent is not perfect. Noetherian module specialization and triangle stability retain their hypotheses. |
| §0.7 | Algebra 00P0–00P4, pp. 276–277, `stacks-01SB line 12978`; Varieties 020J/038H/038I/04KX/04KY/054Q/054R, pp. 14–19; 0B2L, p. 40, line 1811 | Local topological dimension is distinguished from stalk dimension; residue transcendence degree and geometric extension hypotheses are retained. |
| §0.17 | Algebra 00LI/00LK/00LX, pp. 172–174, `stacks-01SB line 8010`; 00N3/0AAE–0AAI, pp. 246–249; 031P–031R, p. 428; 0337, p. 453; More Algebra 0AV5/0AV7/0AV8, p. 58; Dualizing 0AVZ, p. 18, line 809 | Finite modules, local support dimension and the zero-module convention distinguish the claims. The Ext/local-cohomology characterization requires `IM≠M`; it is not blindly applied to the zero module. |
| §0.18 | Properties 02IO, p. 11, `stacks-01SB line 462`; Morphisms 056I/056J/05JU/05JV, pp. 8–9, lines 339, 353, 371, 390 | Scheme-theoretic support uses the annihilator and coherent/finite-type hypotheses. CM as a module is measured on its support, not by ambient dimension. |
| §0.19 | Česnavičius, Definition 1.2 and Example 1.3, p. 2, `cesnavicius-macaulay line 61`; §§2.8,2.10, pp. 6–7, lines 237,268 | CM formal fibres and the open-locus condition are both needed. Nonreducedness alone is not a counterexample. The `(S_n)` version is in §2.10. |
| §0.20 | Algebra 032F–032W, pp. 440–447; 0333–0335, pp. 444,449–451, `stacks-01SB line 20702`,20924,21107,21186 | N-2 includes inseparable extensions; Nagata includes Noetherianity. General finite-type-stability locator corrected by R07. |
| §1.9 | Morphisms of Spaces 03HL, p. 4, `stacks-01SB line 157`, and 03ZM, p. 80, line 3777; Properties of Spaces 0AHR/0AHS, p. 3, lines 103,120 | Separated, locally separated and quasi-separated are distinct diagonal conditions. Properness includes finite type, separation and universal closedness. |
| §1.18 | Stacks 026F/02ZI, pp. 6,10; 02ZN/0435/04W9/02ZP, pp. 14–19, `stacks-01SB line 630`,760,782,826; Categories 004B, pp. 89–90, line 4451 | Generic stackification is not limited to prestacks or groupoids. 2-fibre products retain the isomorphism datum. R07 corrects the Yoneda locator. |
| §2.1 | Cohomology on Sites 03F3/03YU/072W, pp. 7–8, `stacks-01SB line 290`,302,343; 072Z/0730, p. 22, lines 941,957; §35 (08J7), p. 82, line 3669; §36 (0B6E), p. 85, line 3809 | Higher direct image is sheafification of the cohomology presheaf. Flatness is retained for the ringed-site injective-preservation route. Internal derived Hom is not global derived Hom. |
| §2.18 | Derived Categories of Schemes 06YZ/06Z0/08DT/08DW/08DX/08D5/08DZ/0A6H/0ATN, pp. 2–7,25–26, `stacks-01SB line 145`,249,311,1132,1161; Cohomology 0D66/0D6C, pp. 103–107, lines 4789,4953 | Affine equivalence, qcqs pushforward, pseudo-coherent/bounded-below Hom and negative-Ext gluing conditions agree. Arbitrary derived morphisms are not treated as a sheaf without the negative-Ext condition. |
| §3.5 | Divisors 0BCY/0BCZ/0BD2, pp. 35–36, `stacks-01SB line 1536`,1553,1591 | The norm is determinant relative to `det π_*O`; rank is the actual local degree. Zero sections are excluded from the Cartier-divisor identity. Rank zero gives the unit norm. |
| §3.7 | `yun-zhang line 901`, §3.2.1, p. 16; lines 2223–2230, proof of Proposition 6.1(1), p. 40; Stacks 062Y and 0B9D, Divisors p. 40 and Pic p. 5; 0BA0, Pic pp. 13–14, line 573 | Section stacks retain inertia; the Abel family need only be Brauer–Severi without a universal bundle. The norm sequence is a sheaf/stack statement, not a short exact sequence of rational-point groups. The broader-field Brauer–Severi formulation is a descent argument, not literally the pointed Stacks statement. |
| §4.5 | Formal Deformation Theory 06GD, p. 4, `stacks-01SB line 168`; Artin's Axioms 07YG, p. 39, line 1816 | Small extensions and functorial obstruction classes, including the scaling of the kernel, are retained; an arbitrary relation chosen from a presentation is insufficient. |
| §4.6 | Deformations 08S5/08S7/0GPT, pp. 2–4, `stacks-01SB line 56`,127,161; 0D14, p. 25, line 1209; More on Morphisms 0C6R, p. 9, line 377; `deligne-mumford line 272`, Proposition 1.5, printed pp. 81–82, and line 333, Theorem 1.6, p. 83 | The lift-class torsor requires an existing lift; automorphisms and obstructions occupy the stated Ext/cohomology degrees. Split-node parameters are distinguished from conjugate nonrational nodes. |

Additional source checks: `bhatt-scholze-witt line 822` supplies R02; `de-jong-alterations line 597` and 1253 supply R05. The latter's §2.12, line 257, really does use **complete** DVRs, so completeness in the trait signature is not a silently narrowed convention relative to that source. Stacks coherent existence 088C, line 3234, and algebraization 089A, line 3641, distinguish R06 from the extension in R03. The proper-hypercover assertion in §2.16 was checked against Simplicial Spaces 0DHM/0DHP, lines 3444–3465: the cited bounded-below abelian-sheaf statement is not restricted to torsion coefficients.

**Pinned objects opened.** The pins recorded in the README are Mathlib `6b7abb3c76` and Tau Ceti `a91d3aaf`; searches used the worktree's pinned packages. Paths in this paragraph are relative to the relevant library root.

| Object/declaration | File and line at the pin | What its definition actually supplies |
|---|---|---|
| `LocallyConstant` | `Mathlib/Topology/LocallyConstant/Basic.lean:212` | A function together with local constancy, the missing condition in R02. |
| `SheafOfModules.IsLocallyFree` | `Mathlib/Algebra/Category/ModuleCat/Sheaf/LocallyFree.lean:61` | Local free presentations; finite rank is not built into the bare predicate. |
| `SheafOfModules.IsQuasicoherent` and finite-presentation data | `Mathlib/Algebra/Category/ModuleCat/Sheaf/Quasicoherent.lean:238`, `:253` | The local presentation conditions; the roadmap's rank predicate is additional. |
| `IsProper.eq_valuativeCriterion` | `Mathlib/AlgebraicGeometry/ValuativeCriterion.lean:330` | Properness equals the valuative criterion together with quasi-compactness, quasi-separatedness and local finite type. |
| `Scheme.Modules.pullbackComp` | `Mathlib/AlgebraicGeometry/Modules/Sheaf.lean:236` | The native comparison used to state compatibility of formal module maps in R06. |
| `localCohomology` | `Mathlib/Algebra/Homology/LocalCohomology.lean:173` | Colimit of Ext along ideal powers; a geometric support comparison remains work. |
| `IsAzumaya` | `Mathlib/Algebra/Azumaya/Defs.lean:60` | Finite, projective, faithful, and bijective multiplication-to-endomorphisms. It does not permit a zero algebra over a nonzero field. |
| `AlgHom.mulLeftRight_apply` | `Mathlib/Algebra/Azumaya/Defs.lean:52` | The action is `x ↦ a*x*b`, fixing the opposite-algebra convention. |
| `Ideal.ramificationIdx` | `Mathlib/RingTheory/RamificationInertia/Ramification.lean:52` | Length at a prime, with junk value 0 for a nonprime. This is not the older supremum-of-powers definition. |
| `Ideal.ramificationIdx_eq_one` | same file `:75` | Unramified essentially-finite-type case; the identity DVR map has index 1. |
| `Scheme.genus` | `TauCeti/AlgebraicGeometry/Cohomology/Genus.lean:64` | Finrank with an explicit finite-dimensionality guard; infinite-dimensional H¹ cannot silently supply genus 0. |
| `finrank_cohomology_zero_trivial_eq_one` | same file `:80` | Integral, universally closed and a specified rational point. The target's geometrically integral case without a point is not this declaration verbatim. |

**Resolved ownership.** AlgebraicVectorBundles L0A–L2B provides the module-sheaf operations, rank, tensor constructions and graded-algebra carrier; StableReduction Layer 2 provides finitely generated relative Proj/projectivity and Layers 0–4 the curve/model/blow-up input. In particular its README `:438` does not require the degree-zero equality imposed here. JacobianChallenge Layer C `:145` states proper coherence without flatness, `:165` separates flat base change from cohomology-and-base-change, and `:203` supplies relative divisors/symmetric powers; its return citations are R01. GrothendieckEulerForms Layers 2–3 owns exact Grothendieck groups and resolution comparison, so the geometric K₀/G₀ operations here are specializations, not new abstract K₀ carriers. ClassFieldTheory Layer 5 (`:920`) and ProfiniteCohomology Layers 9–10 (`:1363`, `:1549`) resolve the field-cohomology contracts. The scope's references to ModularCurves and AlgebraicCurves are explicitly non-input comparisons; I did not turn them into supplier edges.

The AbundanceStatement contracts resolve to §§4A–4B and §4D: normalized curve degree and Cartier pairing, numerical finiteness, and Nakai–Moishezon. Their characteristic-zero scope is retained. Object searches covered main, board packages, and the provided open-work index for henselization, stackification, DQCoh, formal functions, Picard/norm objects and polarized algebraization. They identify this existing base as the foundation owner; they do not justify replanning it. The two root-level `IsAzumaya` target names were searched explicitly: matches were versions of this same roadmap on main and its open revisions, not another owner. I found no verified duplicate fully qualified headline name in another inspected roadmap. Ownership against open pull requests whose files were not supplied was not checked. The absence of SchemeAndStackFoundations Part II from the accessible roadmap index is not itself a finding.

**Headline inventory.** The README names the following end theorems; this is the comparison used for R05, R06 and R09.

| Headline | Acceptance-file coverage |
|---|---|
| Henselization of a pair and universal property | Present: `Henselization.henselian`, `existsUnique_lift`, `fixed_of_henselian`. |
| Artin bootstrap | Present: `Groups.artinBootstrap`. |
| Keel–Mori | Absent; no per-headline missing-carrier explanation. |
| Coherent Grothendieck duality | Absent; affine DQCoh equivalence is a prerequisite, not this headline. |
| Brauer class of a scheme Azumaya algebra | Absent; affine étale matrix-splitting and fibre tests are different statements. |
| Picard torsors without a rational point | Absent; affine Picard comparison does not cover them. |
| Schlessinger hull/prorepresentability | Absent; no per-headline missing-carrier explanation. |
| Coherent Grothendieck existence | Essential surjectivity present; statable full faithfulness absent (R06). |
| Algebraization of compatible scheme morphisms | Present: `Formal.algebraize_hom`. |
| Field and trait alteration theorems | Present as weakened properness consequences (R05). |
| Grothendieck–Riemann–Roch | Absent; no per-headline missing-carrier explanation. |
| Hodge index | Absent; no per-headline missing-carrier explanation. |
| Weil bound for curves | Present on native schemes, finite fields and guarded genus. |
| Polarized-system algebraization/equivalence (§4.10A) | README-only extension; belongs in Part II (R03). |

**Adversarial computations: 136 rows.** Each row gives actual values, objects or truth values on both sides. Rows marked “survives” establish these tests, not a proof in general. Empty schemes, zero modules, rank zero, nonreduced thickenings, inseparability, small characteristics, non-abelian actions, non-quasi-separated spaces, sign conventions and total-function junk values are included where they apply. “Keep” means no change required by that test.

| Statement | Instances tried; values on the two sides | Result; change |
|---|---|---|
| §0.1 direct-image algebra/localization | A finite product of `k[t]/t^r` localizes to 0 at t; in the infinite product with unbounded r, t is not nilpotent and localization is nonzero. | The uniformity distinction survives; keep the qcqs restriction. |
| §0.2 relative-Spec module equivalence | `S=Spec k`, `A=k[t]`, `G=A`: bare `p^*G=k[s,t]`; counit's kernel contains `s−t`. Tensoring over `p^*A` gives `k[t]=O`. | Survives with the stated extension of scalars. |
| §0.2 finite-type/finite properties | `k→k[t]` gives a finite-type nonfinite affine morphism; `k→k[ε]/ε²` gives finite rank 2; zero algebra gives the empty scheme. | Different properties stay distinct; keep. |
| §0.3 degree-zero and degree-two Proj | `Proj k=∅`; `Proj k[T]`, deg T=2, is a point with degree-one twist 0, not a line. Polynomial degree-one algebra gives projective space. | Survives; O(1) needs the stated hypothesis. |
| §0.3 base change | `Proj k[x,y]=ℙ¹_k`; extending k to K gives `ℙ¹_K` on both sides. Degree-zero-only case gives ∅ on both sides. | Survives. |
| §0.4 extension/local freeness | `(x,y)` on `𝔸²` has fibre dimension 2 at the origin and rank 1 generically; its restriction off the origin is a line bundle. | Coherent extension is not automatically locally free; keep. |
| §0.5 pseudo-coherent module | Over `k[ε]/ε²`, the residue field has a resolution with every free term rank 1 and every differential ε; positive homology is 0, projective dimension is infinite. | Pseudo-coherent true, perfect false; keep. |
| §0.5 pseudo-coherent sheaf | A finite free sheaf has finite-free resolution length 0; extension by zero from the generic point of a trait has generic stalk K but global sections 0. | QC condition excludes the wrong sheaf; keep. |
| §0.6 reflexive hull | `M=(x,y)⊂k[x,y]`: `M**=R`, quotient `R/M=k`, depth at origin 1 versus dimension 2. | Reflexive false before taking hull; keep. |
| §0.7 local/stalk dimension | On `𝔸¹_k`, generic point: local topological dimension 1, stalk dimension 0, residue trdeg 1; closed rational point: 1,1,0. | `1=0+1=1+0`; keep. |
| §0.7 mixed components | `𝔸²⊔𝔸¹`: local dimensions 2 and 1; a single global dimension 2 would give a wrong value on the line. | Componentwise formula survives. |
| §0.7 geometric components | `Spec ℂ/ℝ`: one component before extension, two over ℂ. A purely inseparable field extension becomes nonreduced after scalar extension but has one underlying component. | Geometric conditions distinguish the cases. |
| §0.8 flatness over a trait | `R→R[u]/(u²−π)` is free rank 2; `R→R/(π)` has π-torsion and is not flat. | Dominating components/flatness conditions survive. |
| §0.9 finite-presentation descent | A polynomial equation uses finitely many coefficients; a countably infinite free module over a nonzero field is not finitely presented. | Finite data descend; no claim for the latter. |
| §0.10 unibranch distinction | A node has two branches after strict henselization; a smooth point has one. A connected finite étale cover of a locally Noetherian base has its component open and closed. | Survives. |
| §0.11 unramified versus inseparable | `k(t)⊂k(t^{1/p})` has nonzero relative differentials; a separable finite field extension has Ω=0. | Inseparable case fails the unramified condition. |
| §0.12 henselization | `I=0`: henselization R, lift unique; `I=R`: henselization 0 and target henselian pair receiving I must be zero. Complete local `(k[[t]],(t))` is fixed. | Unit/zero ideals and uniqueness survive. |
| §0.13 ind-étale | Identity algebra has one-stage étale presentation; adjoining a pth root of t in characteristic p is not étale. | Positive and negative controls distinguish the carrier. |
| §0.14 henselian idempotents | `k[[t]]×k[[t]]` has four idempotents, as does its residue algebra `k×k`; each lifts uniquely. | Survives. |
| §0.15 regular map | Identity of `k[ε]/ε²` has field fibres and is regular as a map; `k→k[ε]/ε²` has a nonregular fibre. | Map regularity is not regularity of both rings. |
| §0.16 catenarity | In `k[x,y]`, `(0)⊂(x)⊂(x,y)` has length 2; the local field case has length 0. | Dimension/chain conventions survive. |
| §0.17 depth | Field: depth=dimension=0; DVR: 1=1; regular 2-dimensional local ring: 2=2; zero module: depth ∞ and empty support. | Zero convention is separated; keep. |
| §0.17 Serre conditions | `k[[x,y,z]]/(xz,yz)` has dimension 2 and depth 1 at the maximal ideal: S₁ true, S₂ false. | Discriminates the min(n,dimension) condition. |
| §0.17 embedded components | `k[x,y]/(x²,xy)` at `(x,y)` has depth 0 and dimension 1, so is not CM. | Nilpotents alone are not the test; depth is. |
| §0.17 Hom depth | For `m=(x,y)⊂k[[x,y]]`, depth(m)=1 but `Hom(m,R)=R` has depth 2. | Does not identify a module's depth with its dual's. |
| §0.17 global versus local CM | `k×k[t]` has global dimension 1; stalk dimensions/depths are respectively 0/0 and 1/1. | Local CM true on both components. |
| §0.18 support | For `R=k[x,y]`, `M=R/(x,y)`: Ann(M)=(x,y), support dimension 0, depth 0, ambient dimension 2. For M=0: Ann=R, support ∅. | Scheme support and CM-on-support survive. |
| §0.19 CM quasi-excellence | Complete zero-dimensional `k[ε]/ε²` is CM despite ε≠0; empty scheme satisfies the conditions vacuously. | Nonreduced negative control correctly rejected. |
| §0.19 S₀ variant | `min(0,dim M_p)=0`; the depth inequalities impose no extra condition, leaving local Noetherianity. | Survives. |
| §0.20 Japanese | A field's integral closure in a finite extension L is L, of dimension `[L:k]`, including purely inseparable degree p. | Inseparable extensions retained. |
| §0.20 Nagata versus universal Japanese | Zero ring: no primes, Noetherian=true. Ring of eventually constant `𝔽₂`-sequences is not Noetherian, so cannot be Nagata even though its domain finite-type quotients are over finite fields. | Noetherian clause discriminates; keep. |
| §0.20 finite-type stability locator | For arbitrary Nagata R, `R[T]` is Nagata by 0334(1)⇒(2); 0335 only enumerates selected starting classes. | R07. |
| §0.21 geometric regularity | `k=𝔽_p(s)`, `B=k(s^{1/p})`: B is a field, but `B⊗_k B` contains a nonzero nilpotent with pth power 0. | Geometric regularity false; ordinary regularity true. |
| §0.23 universal homeomorphism | Frobenius on `𝔸¹_{𝔽_p}` has one-point geometric fibres and degree p; it is not a scheme isomorphism. | Topology is not structure-sheaf equality. |
| §0.23a étale invariance | Dual-number thickening → point has equivalent étale categories; identity pullback gives the same forward functor literally. | General theorem survives; projection equality is R08 padding. |
| §0.24 perfection | Frobenius on a perfect field is bijective; ε in dual numbers maps to 0 under a sufficiently large p-power. | Perfection removes nilpotents; keep. |
| §0.25 perfectly finite presentation | Perfection of `𝔽_p[t]` contains `t^{1/p^n}` for all n: not finite type as an ordinary algebra, though perfectly finitely presented. | Distinction survives. |
| §0.26 weak normality/perfect smoothness | Purely inseparable radicial maps have one geometric point per fibre but may have degree p; ordinary étaleness would give separable fibres. | No identification with ordinary étaleness. |
| §0.27 flat annihilator base change | `R=ℤ`, M=ℤ/2, S=ℤ[1/2]: tensor M=0 and Ann maps to the unit ideal. Nonflat S=ℤ/2 need not preserve kernels. | Flatness and finite-generation guards retained. |
| §0.28 quotient sheaves | I=0 gives original scheme and kernel 0; I=O gives ∅ and kernel O; I² on a doubled point records nilpotents. | Correct reversed relation between ideals and support. |
| §0.29 characteristic | `Spec 𝔽₂` satisfies p=2 and not p=3; ∅ satisfies both and has a unique map to either prime-field spectrum. | Explicit prime binders survive elaboration. |
| §0.29 Frobenius direction | After extending `𝔽_q` to its closure, relative q-Frobenius fixes coefficients and sends coordinate t to t^q; absolute Frobenius also raises coefficients. | Distinct maps retained. |
| §0.30 ramification | `t=u²`, then `u=v³`, gives indices 2,3 and 6; identity DVR map gives 1. For a nonprime ideal the native index is 0. | `6=2·3`; total-function convention checked. |
| §0.30 regular parameters | `R=k[[x,y]]`, I=(x): quotient regular dimension 1, maximal ideal has two generators, I one; I=(x²) gives nonregular quotient. | Quotient-regularity hypothesis discriminates. |
| §§1.1–1.2 descent | Two affine copies with identity transition descend to one copy; twisting a rank-one transition by a nontrivial cocycle can give a nontrivial line bundle. | Descent does not trivialize all objects. |
| §§1.3–1.6 algebraic spaces | Representable point has diagonal an isomorphism and identity atlas; `B C₂` has nontrivial automorphisms and is not a sheaf of sets. | Space versus stack distinction survives. |
| §1.7 fibre-product points | `Spec ℂ×_{Spec ℝ}Spec ℂ` has two points, whereas the product of the underlying one-point sets has one. | Map on points surjective, not generally bijective. |
| §1.8 base change | Identity map and empty open immersion remain étale after base change; the dual-number map to a point is not étale. | Étale-local predicate retains base-change hypothesis. |
| §1.9 separation | Doubled affine origin is locally separated and quasi-separated, but not separated. `ℙ¹→pt` is proper; `𝔸¹→pt` is not. | Diagonal and properness conditions distinguish the cases. |
| §1.10 small étale site | Identity of a nonschematic algebraic space is an étale object with nonschematic total space; scheme charts alone do not make every étale object a scheme. | Roadmap's distinction survives. |
| §§1.13–1.16 actions/torsors | Left translation of S₃ on itself has stabilizer {1} and `(g,x)↦(gx,x)` bijective; trivial action on a point has stabilizer S₃ and is not free. Same test for C₂. | Nonabelian orientation and torsor test survive. |
| §1.15 torsor triviality | A torsor with a section identifies with G; a nontrivial real quadratic torsor has no real section. | Both directions of triviality criterion survive. |
| §1.17 quotient structure sheaf | Identity relation on `Spec k[ε]/ε²` does not have `Spec k` as quotient: invariants have k-dimension 2, proposed target has dimension 1. | Sheaf clause excludes the wrong quotient. |
| §1.17 projective invariant algebra | Two projective lines, trivial group: B₀=k×k and Veronese B₀=k×k, while §0.3 requires k. | R04; use the general finitely generated owner. |
| §1.17 Artin bootstrap | Two disjoint points cover a point by a finite flat map; target is an algebraic space. A stack with stabilizer C₂ is not a set-valued target. | Headline's sheaf carrier matters. |
| §1.18 stackification | Constant C₂-torsor prestack on a circle misses a nontrivial monodromy class; stackification has two isomorphism classes of torsors. | Stackification genuinely adds descent objects. |
| §1.18 2-fibre product | `pt×_{B C₂}pt=C₂`: two objects, not one ordinary fibre-product point. | Isomorphism datum retained; Yoneda locator R07. |
| §1.18 generic stackification | A category with one noninvertible arrow keeps that arrow; groupoid-only replacement would delete the example. | Arbitrary-category scope supported by 02ZN. |
| §§1.19–1.23 inertia/Keel–Mori | Over char p, `B(ℤ/p)` has étale finite inertia and coarse point; its invariants functor need not be exact. `Bμ_p` has nonétale inertia. | DM, finite inertia and tameness are not conflated. |
| §1.24 affine Galois descent | ℂ with conjugation has invariants ℝ; `ℂ⊗_ℝℝ→ℂ` sends c⊗r to cr. Zero algebra descends to zero. | Semilinearity and continuity retain the correct carrier. |
| §1.25 conjugation | In S₃, conjugation by (12) sends (123) to (132), not (123); in C₃ conjugation is identity. | Noncommutative convention tested. |
| §2.1 pullback on cohomology | `Spec ℂ→Spec ℝ`: H¹ of constant ℤ/2 changes from ℤ/2 to 0. Identity map has R¹id*=0. | Pullback does not imply cohomology invariance. |
| §2.2 Leray | Identity map has only q=0 row; composite-to-point gives the same Hⁿ. | Degree order p+q=n survives. |
| §§2.3–2.4 H¹ and boundaries | μ₂-torsors over ℝ are positive/negative square classes; boundary of a split extension is 0. Nonabelian H¹ is a pointed set. | No unjustified group law. |
| §2.5 dimension vanishing | One-point space has Hⁱ=0 for i>0; a curve can have H¹≠0. | Bound uses i>d, not i≥d. |
| §2.6 projective cohomology | `ℙ¹,O(−2)`: H⁰=0,H¹=k; `ℙ¹,O`: H⁰=k,H¹=0; `ℙ⁰,O(−1)`: H⁰=A. | Tests positive/negative degrees and n=0 separately. |
| §2.7 local cohomology | `A=k[t]`, I=(t): H⁰_I(A)=0, H¹_I(A)=k[t,t⁻¹]/k[t]; for M=A/(t), H⁰_I(M)=M. | Support-torsion convention survives. |
| §2.8 Cousin input | A regular trait has generic field term K and codimension-one quotient K/R; zero-dimensional field has only degree 0. | Codimension shift tested. |
| §§2.9–2.11 coefficient sequences | Over `𝔽_p`, μ_p is nonreduced; pth-power on Gm is fppf-surjective but not an étale Kummer cover. Artin–Schreier gives H^q=0 on affine schemes for q≥2. | Invertibility/topology distinctions retained. |
| §§2.12–2.14 Nisnevich | `Spec ℂ→Spec ℝ` is étale surjective but has no residue-field-isomorphic lift; identity cover does. | Nisnevich is strictly finer than Zariski and coarser than étale. |
| §2.15 field cohomology | For separably closed k, absolute Galois group is trivial and positive-degree continuous cohomology is 0. For ℝ, H¹(ℤ/2)=ℤ/2. | Geometric-point comparison distinguishes fields. |
| §2.16 Tsen | `Br(ℂ(t))=0`; `Br(ℝ)` contains the quaternion class of order 2. | Algebraic-closure hypothesis matters. |
| §2.16 proper hypercover | Identity hypercover has augmented complex with cohomology the coefficient sheaf in degree 0 and 0 elsewhere. | Consistent with general bounded-below abelian descent. |
| §2.17 repleteness | The constant two-point inverse system has a two-point limit and each projection is the bijection 2→2; the constant empty system has limit ∅ and projection ∅→∅. | The limit-epi condition holds in both controls; keep. |
| §2.18 derived tensor | `ℤ/2⊗ᴸ_ℤℤ/2` has ℤ/2 in degrees −1 and 0; underived tensor has only degree 0. | Derived/underived distinction survives. |
| §2.18 affine equivalence | On Spec k, the complex k in degree 0 has H⁰=k and all other Hⁱ=0 on both module and sheaf sides. | Survives. |
| §2.18 Hom localization | Hom from an infinite free module is a product; the tuple `(t⁻ⁿ)` belongs to the product of localizations but has no common bounded denominator. | Finiteness/compactness is necessary. |
| §2.18 negative Ext gluing | `K=O⊕O[1]` has a nonzero degree −1 endomorphism component; a module in degree 0 has no negative Ext. | The gluing hypothesis excludes the wrong model. |
| §§2.19–2.20 coherent duality | `ℙ¹_k→Spec k` has dualizing complex `O(−2)[1]`; regular closed point of a curve gives the codimension-one shift `k[−1]` in upper shriek. | Relative dimension and codimension shifts are opposite. |
| §2.22 Azumaya/Brauer | `Mat₂(k)` has rank 4 and multiplication map an isomorphism; zero algebra over nonzero k has rank 0 and is not faithful. Hamilton quaternions over ℝ have nonzero Brauer class. | Positive-fibre test excludes zero; splitting is not global triviality. |
| §3.1 genus/base change | `ℙ¹`: h⁰=1,g=0; elliptic curve: h⁰=1,g=1; field extension preserves both dimensions. | Guarded genus and scalar extension survive. |
| §3.3 degree | `deg O(m)=m` on ℙ¹; rank-zero sheaf has degree 0; direct sum O(1)⊕O(−1) has rank 2 and degree 0. | Euler degree is signed, not natural subtraction. |
| §3.3 finite pullback/Hurwitz | Degree-2 map on ℙ¹ sends O(1) to O(2); an étale isogeny of elliptic curves gives `g_X−1=0=n·0`. | Actual degree, not a free parameter. |
| §3.3 high-degree vanishing | On ℙ¹, degree −1 is >−2: H¹=0,H⁰=0; degree −2 gives H¹=1 and is outside the strict inequality. | Boundary of inequality correct. |
| §3.4 grading | Point-jump on 𝔸¹_ℚ forces signs −1 and +1 in a constant unit; degrees (0,1) on two points give the unit (1,−1). | R02. |
| §3.4 affine Picard comparison | Field: both Pic groups 0; empty affine scheme: both trivial. | Does not substitute for Picard torsors. |
| §3.5 norm | Degree-2 ℙ¹ map: Norm O(1)=O(1), Norm π*O(1)=O(2). Hyperelliptic cover: Norm O=O, det π*O=O(−g−1). | Relative determinant correction necessary. |
| §3.5 norm rank zero/sections | Empty finite-flat cover has determinant norm 1; zero section for identity ℙ¹ has norm 0 and vanishing locus all of ℙ¹. | Rank-zero unit and Cartier regularity survive. |
| §3.6 pointless Picard torsors | Real anisotropic conic: actual Pic=2ℤ, Picard-sheaf degrees=ℤ, obstruction quotient=ℤ/2. | Pointless case is not affine Picard comparison. |
| §3.7 Abel map | Real conic, g=0,d=1: rank=d+1−g=2; Pic¹=Spec ℝ, fibre is the conic with no real points, not ℙ¹_ℝ. | Brauer–Severi formulation survives. |
| §3.7 section stack | Elliptic degree 0: h⁰(O)=1, h⁰(nontrivial L)=0; for ℙ¹ degree d≥0, h⁰=d+1. | No vector-bundle claim across degree-zero jump. |
| §3.7 norm sequence | Étale-locally split double cover: norm(a,b)=ab; middle map=(a/b,b/a); its norm=1. Kernel of norm consists exactly of (u,u⁻¹). | Both exactness directions computed. |
| §3.7 automorphisms | For geometrically connected X, Aut(O_X)=k×; ℙ¹_ℂ viewed over ℝ instead gives ℂ×≠ℝ×. | Geometric connectedness matters. |
| §3.8 invariant forms | On Gm the invariant form is dt/t; on an elliptic curve the identity Abel–Jacobi map pulls its invariant differential to itself. | No inversion or sign discrepancy. |
| §4.1 lifting | `Spec k→Spec k[ε]/ε²` is a first-order thickening; `Spec k[t]/t³→Spec k[t]/t⁴` has a square-zero kernel, whereas `(t)` in k[t]/t³ is not square-zero. | Kernel condition discriminates. |
| §§4.2–4.4 Schlessinger | Formal affine n-space has tangent kⁿ and prorepresenting ring k[[x₁,…,x_n]]; n=0 gives k and tangent 0. | Hull and representing object agree here, not by definition in general. |
| §4.5 obstruction | For xy=0, lifts x=y=ε over k[ε]/ε³ yield product ε²≠0; scaling the kernel generator changes the representative, not the vanishing condition. | Functorial obstruction, not arbitrary relation. |
| §4.5 finite tangent condition | Punctured affine plane has H¹(O) with classes x⁻ⁱy⁻ʲ for all i,j>0, hence infinite dimension. | Finite-dimensional tangent assumptions cannot be omitted. |
| §4.6 smooth deformations | ℙ¹ has H¹(T)=0; an elliptic curve has tangent deformation space dimension 1; curves have H²(T)=0. | Rigidity versus one-parameter deformation distinguished. |
| §4.6 line bundles | Square-zero units multiply `(1+a)(1+b)=1+a+b`; H²(I)=0 on curves, so line-bundle obstruction vanishes there. | Correct additive-to-multiplicative map. |
| §4.6 nodes | uv=t is smooth off t=0, with one split node at t=0; conjugate real smoothing parameters a±ib multiply to a²+b². | Rational split-node parameter is not a global real coordinate for two conjugate nodes. |
| §§4.7–4.8 adic systems | k[[t]]/(t^{n+1}) has length n+1; transition cuts down by the next power. I=0 gives a constant system. | Index n+1 and ordinary-module reductions match. |
| §4.9 formal functions | Proper closed point over k[[t]] with coefficient k: completed H⁰=k and inverse limit k; no flatness, H¹=0. | Matches Jacobian C's nonflat coherence contract. |
| §4.10 coherent existence | X=Spec A, A=k[[t]], modules A/(t^{n+1}) reconstruct A. Compatible endomorphisms reconstruct a∈A uniquely. | Object theorem survives; missing morphism headline R06. |
| §4.10 algebraize Hom | Residues of a series a(t) give one morphism to 𝔸¹_A; residues 0 mod t and 1 mod t² have no common lift. | Transition hypothesis is essential and present. |
| §4.10A polarized algebraization | `X_n=ℙ¹_{A/t^{n+1}}`, L_n=O(1): algebraization ℙ¹_A, rank H⁰(O(r))=r+1. Scalar 2 on L remains an automorphism although it fixes the projective scheme. | Mathematics survives this test; placement R03. |
| §4.10A section algebra degree zero | Two copies of ℙ¹ give A×A in degree zero; replacing the section algebra by an appropriate quotient of A[T₀,…,T_N] restores the required base degree zero. | Its explicit quotient-algebra route avoids R04's error. |
| §4.10A flat/smooth conditions | Constant closed point X_n=Spec k is nonflat over A/t²; `A[u]/(u²−t)` is flat but has nonreduced special fibre. | Neither flatness nor smoothness follows from properness alone. |
| §4.11 strict transforms | For torsion element killed by I^N, restriction off V(I) is 0; for A=k[t], I=(t), M=A, no nonzero element is killed. | Supported-torsion comparison survives. |
| §4.12 generic flatness | `A=k[t]`, A-module A/(t) becomes 0 on D(t), hence flat; at t=0 it is not flat. | Dense-open conclusion, not everywhere flatness. |
| §4.13 curve resolution | Cusp k[t²,t³] normalizes to k[t], finite and regular; a regular curve normalizes to itself. | Modification statement survives. |
| §4.14 Hilbert/symmetric powers | Hilb⁰ of a curve is a point; Hilb¹=X; Sym²ℙ¹=ℙ² including doubled points in char 2. | Empty and nonreduced length-two inputs retained. |
| §4.15 stable curves | Genus-zero component with 2 special points has dualizing-marked degree 0 and is unstable; with 3 it has degree 1 and is stable. | Positive-degree stability test discriminates. |
| §§4.16–4.17 alteration/SNC | Identity is a degree-1 alteration; a blow-up is a proper birational alteration. Empty boundary satisfies SNC; doubled divisor fails reduced component condition. | General carriers survive. |
| §4.18 nodal exponent | Substitution u=sa,v=sb into uv−s³t gives `s²(ab−st)`; local quotient dimension 3, cotangent dimension 4. | Correct negative-control Check; Lean padding R08. |
| §4.18 successive nodal resolution | uv=s⁴ gives exponent 2 then 0; uv=s³ gives exponent 1 after one step. | Drop by two, not by one. |
| §4.18 nonsplit family | `U²−aV²=stW²`, a nonsquare: components at s=0 remain conjugate; after adjoining √a the equation is uv=st. | Splitness hypothesis is needed. |
| §4.19 field alteration | Regular projective line with empty boundary permits identity alteration; an inseparable base extension can turn a regular imperfect-field curve nonreduced. | Regular is not geometrically smooth; projectivity omission R05. |
| §4.20 semistability | uv=π: regular total surface, reduced crossing special fibre. uv=π²: local dimension 2, embedding dimension 3. | Latter is not strict semistability. |
| §4.20 inseparable trait extension | t=u^p has finite rank p; after t=v^p base change, `(u−v)^p=0`; reduction gives u=v before normalization. | Reduction-before-normalization clause is necessary. |
| §4.20 projective compactification | ℙ¹ over k[[t]], boundary special fibre: projectivity=true and properness=true; only the latter is recorded in Lean. | R05's restored statement accepts the same model. |
| §5.1 Chow carrier | Countably many disjoint points: locally finite CH₀ is ∏ℤ; countably many affine lines: CH₀=0; negative-degree group=0. | Product rather than direct sum is intentional. |
| §5.2 pushforward/localization | A rational point on 𝔸¹ is principal and has zero CH₀ class, but its set-theoretic image in a point has degree 1. | Nonproper pushforward is excluded. |
| §5.3 c₁ | On ℙ¹, c₁O(m) has degree m; O has 0; an elliptic nontrivial degree-zero line bundle has degree 0 but need not have zero divisor class. | Degree is not the whole Chow class. |
| §5.4 Chern/Segre/Todd | Rank 0: c₀=s₀=1 and positive classes 0. Rank 1: s₁=−c₁. On ℙ², td₂=(9+3)/12=1. | Signs and denominator tested over rational coefficients. |
| §5.5 normal/conormal | Hyperplane in projective space has normal O(1), conormal O(−1); pullback of 0 along z↦z² has multiplicity 2. | Dual direction and refined multiplicity agree. |
| §5.6 intersection product | Doubled origin has nonclosed diagonal; smooth separated varieties have regular diagonal. Constant map ℙ¹→ℙ¹ pulls O(1) back to O, hence c₁=0. | Set-theoretic inverse image is not the pullback class. |
| §5.7 K₀ versus G₀ | Nodal cubic nontrivial L_λ has nontrivial determinant in K₀ but `[L_λ]=[O]` in G₀; node residue field has infinite projective dimension. | Regularity/resolution conditions matter. |
| §5.8 GRR | On ℙ¹, ch O(1)=1+h, td=1+h, integral product=2=χO(1). For divisor D, ch i*O_D=1−exp(−D). | Sign and Todd factor survive. |
| §5.9 intersections | Two transverse rational lines intersect with multiplicity 1; a tangent line/conic gives 2; a closed complex point over ℝ contributes residue degree 2. | Residue weights retained. |
| §5.9 arithmetic matrix | Two components meeting once have matrix `[−1,1;1,−1]`, row sums 0 and eigenvalues 0,−2. | Fibre direction is the kernel. |
| §5.10 Hodge index | On ℙ¹×ℙ¹, matrix `[0,1;1,0]`; H=(1,1) has square 2; D=(1,−1) has DH=0, D²=−2. | Signature (1,1) and negative sign on H⊥. |
| §5.10 Noether/Nakai | ℙ²: 12χ=12=K²+c₂=9+3. On ℙ¹×ℙ¹, O(a,b) ample iff a,b>0; O(−1,−1) has positive square but is not ample. | Curve inequalities cannot be dropped. |
| §5.11 Weil | ℙ¹/𝔽₂: N=3,g=0, error 0 and bound 0. Elliptic `y²+y=x³` over 𝔽₂: N=3,g=1, error 0≤2√2. | Small characteristic and genus zero survive. |
| §5.11 normalized intersections | Elliptic example q=2,N=3: Γ₀²=−4, Δ₀²=−2, Γ₀Δ₀=0, so 0²≤8. Hermitian curve over 𝔽_{q²}: error q³−q²=2gq. | Frobenius direction/sign tested, including equality. |
| §5.12 Bézout | Skew lines: 0≤1; coincident line as excess component: degree 1≤1; twisted cubic with proper plane section: length 3=3·1. | Inequality includes excess intersections. |

## Not verifiable

- The seeded audit is a source sample, not certification of every citation in the 7,462-line README. In particular I did not inspect the full texts of Fulton 1998, Hartshorne 1977, Liu 2002, SGA 4/6, or all the additional research references. Their unsampled locators are not certified by this report. No source was obtained from a pirate mirror or through a paywall.
- Some source applications exceed the source's literal setting: the unpointed Brauer–Severi statement in §3.7 uses the written descent argument, whereas Stacks 0BA0 is separably closed/pointed and Yun–Zhang works over a finite field. The split étale calculation and pointless-conic test support that argument; I do not attribute the broader statement verbatim to those sources.
- The open-work index supplied no readable SchemeAndStackFoundations Part II folder. No assertion about its unseen contents or ownership is used as a finding. Ownership against unnamed/unprovided open heads was not checked.
- The computed rows are finite adversarial witnesses. They do not certify all infinite families of inputs or substitute for the future Lean proofs. The rejection rests on the explicit defects above, not on an unperformed proof.

## Source issues

- none
