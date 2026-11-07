# PORT-GSp4NonregularModularityLifting

Branch `roadmap/g-sp4-nonregular-modularity-lifting`, created from `c9a16a0` (main), head `f9628b0`
(one commit, `GSp4NonregularModularityLifting: roadmap (README, Suggested.lean, metadata)`). The
folder `TauCetiRoadmap/GSp4NonregularModularityLifting/` holds `README.md` (1676 lines),
`Suggested.lean` (56 lines) and `metadata.toml` (`topic = "math.NT"`, as `ClassFieldTheory` on main).
Nothing outside the folder is changed; the worktree is clean.

An earlier run of this job had ported the same package on the previous base `a0ad405` (commit
`4f3d623` on the old branch) but its report did not survive. The branch was deleted and recreated
from `c9a16a0`, the folder restored from `4f3d623`, and every claim below re-verified in this run
against the current main, the current open heads and the pins. The package itself
(`packages/GSp4NonregularModularityLifting/`) is unchanged since before the earlier run.

**Build.** `lake build TauCetiRoadmap.GSp4NonregularModularityLifting.Suggested`:

    ✔ [8954/8954] Built TauCetiRoadmap.GSp4NonregularModularityLifting.Suggested (6.2s)
    Build completed successfully (8954 jobs).

Warnings: 0 (the file declares nothing, so there is no `sorry` warning either).

**Gate.** `tauceti-roadmap gate … GSp4NonregularModularityLifting --base origin/main`, run after
the commit:

    gate GSp4NonregularModularityLifting: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK

**Dependency direction.** `gate --depcheck … --movable`:

    depcheck: 232 roadmaps, 2131 edges, 0 problem(s)

No UPWARD, CYCLE, `moved:` or NOT IN ORDER line. The roadmap is at line 267 of the merge order,
after every supplier it names (the latest are OrdinaryAutomorphicFormsAndModularityLiftingPartII at
265, PadicFamiliesPartII at 246, HigherHidaAndColemanTheory at 245, AutomorphicBundlesPartII at 244);
its only consumer, AbelianSurfacesModularity, is at 375.

## Draft pull request body

This roadmap builds minimal modularity lifting for `GSp₄` in the nonregular Siegel weights `(a,2)`,
following Calegari–Geraghty, Pilloni and Boxer–Calegari–Gee–Pilloni: from the integral cuspidal
coherent sections of the Siegel threefold with their normalized `p`-operators it constructs the
singular-weight Hecke-valued Galois representations through regular weights and Hasse transfer,
proves the two cuspidal Fourier-doubling injections (with the corrected scalar and vector theta
operators and the all-index contraction identity), the Klingen Taylor–Wiles level comparison with
its integral inverse, and balance of the selected patching summand, and reaches three distinct
endpoints: minimal `R = T` with positive-rank cuspidal freeness and the classical weight-`(a,2)`
corollary for `4 ≤ a < p−1`, Pilloni's ordinary variable-weight `R = T` with ordinary `p`-adic
modularity, and the characteristic-zero higher-Hida patching that gives rank one in all four
chambers and classical weight-two modularity lifting (including `p = 2`). Every implication keeps
its geometric, classification and patching premises explicit, and the integral `p`-actions, Klingen
newvector and projective Satake statements it needs from its suppliers are stated as named
supplier contracts. It is the lifting input that AbelianSurfacesModularity consumes.

`Suggested.lean` declares nothing: none of the headline theorems is statable at the pins (Mathlib and
Tau Ceti carry no Siegel threefold, Siegel modular form, coherent automorphic coefficient,
`GSp₄`-valued automorphic Galois representation or Galois deformation ring), and its module docstring
lists each headline with the carrier it lacks.

## Suppliers that are still pull requests or board designs

Cited roadmaps not on main, by name: AbelianSchemesAndArithmeticModuli, ArithmeticGaloisRepresentations,
AutomorphicBundles, AutomorphicGaloisRepresentations, AutomorphicGaloisRepresentationsPartII,
AutomorphicLFunctionsAndLocalFactors, DeformationAndDerivedPatchingAlgebra,
EndoscopicTransferAndUnitaryTraceComparison, FiniteFlatGroupsAndIntegralPadicHodgeTheory,
GlobalGaloisDeformations, HodgeTateAndCanonicalSubgroups, IntegralHeckeAndGaloisDeterminants,
LocalGaloisDeformationRings, ModularityAndLanglandsExtensions, OverconvergentAutomorphicForms,
PadicHodgeTheory, PotentialModularityAndCompatibleSystems, ShimuraCompactifications, ShimuraData,
SmoothRepresentationsOfLocalGroups (all open pull requests at their heads), and four accepted board
designs with no pull request yet: AutomorphicBundlesPartII, PadicFamiliesPartII,
OrdinaryAutomorphicFormsAndModularityLiftingPartII, PotentialAutomorphyInfrastructurePartII. All of
them precede this roadmap in the merge order. The downstream consumer AbelianSurfacesModularity is an
open pull request. No cited roadmap is on main.

Every citation was resolved this run at the copy named: each supplier was re-dumped with
`roadmaps show` (the four designs read from `packages/<Name>/design/README.md` or the package README
on the board) and every cited layer, section or label checked against its headings
(`scratch/citecheck.txt`): AutomorphicBundles Layers 5, 10, 11, 12 and §§10.4, 10.7, 10.8;
AutomorphicBundlesPartII Layers 1–8, §§3.13, 4.1–4.3, 8.9; AutomorphicGaloisRepresentationsPartII
AG2.P, AG2.5, AG2.6; AutomorphicGaloisRepresentations §0.4; ArithmeticGaloisRepresentations §§6.4,
7.3–7.6, 7.9–7.12; IntegralHeckeAndGaloisDeterminants §§0.7, 1.1–1.7, 2.1–2.3 and its own labels
IHG.3a, IHG.3b, IHG.4 (the supplier itself writes "Layer IHG.4"); LocalGaloisDeformationRings §§1.22,
2.7, 2.17, 2.24, 2.25, 6.3, 6.14, 6.26, 6.27, 6.29, 6.31 (with `GSp4.MinimalAt` at §2.25 and
`GSp4.SiegelOrdinary` at §6.14, which settles the two Lean-name leads of the worker's citations file);
GlobalGaloisDeformations R04.3–R04.6 and G7; SmoothRepresentationsOfLocalGroups SR.1.4,
SR.2.1–SR.2.3, SR.4.1–SR.4.5; PadicFamiliesPartII E6, E6/four-pieces, S7, F8, K2;
OrdinaryAutomorphicFormsAndModularityLiftingPartII §§1.2, 1.3, 2.1–2.2, 3.1–3.2, 4.7–4.8, 5.2,
5.4–5.6, 6.3–6.4; PotentialAutomorphyInfrastructurePartII PL.4; and the rest as listed in the
README's supplier contracts. Since the earlier run only ArithmeticGaloisRepresentations changed at
its head (its ClassFieldTheory contract wording and a §3.0 inertia paragraph); none of the cited
sections moved. The resolver (`roadmaps resolve`) reports exactly the two leads
"AutomorphicBundlesPartII Layers 1" and "OrdinaryAutomorphicFormsAndModularityLiftingPartII §§2.1":
both are the board designs above, not missing roadmaps.

Pins: Mathlib `f6090c70`, Tau Ceti `358314d4` (the manifest is unchanged between `a0ad405` and
`c9a16a0`). The five library declarations the README names were located in the cited files at the
pin: `ZMod` (`Mathlib/Data/ZMod/Defs.lean` line 138), `Module.End.genEigenspace` (line 71) and
`Module.End.mem_genEigenspace_nat` (line 89, a `lemma`) in `Mathlib/LinearAlgebra/Eigenspace/Basic.lean`,
`IsIdempotentElem` (`Mathlib/Algebra/Group/Idempotent.lean` line 37) and `TauCeti.ContCohomology.H1`
(`abbrev`, `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean` line 725). The
`#check` elaboration of these five (`scratch/check.log`, same pin) shows the types the README
describes; `Suggested.lean` has no declaration of its own, so there is no signature to compare with
the README and `scratch/signatures.md` correctly says so.

## What moved from the Lean file to the README

Nothing. The package's `Suggested.lean` already declared nothing, and the README already carried
every target, API list and Check. The port only rewrote the module docstring: it now states that the
file declares nothing because no headline is statable at the pins, lists the headline theorems by
README section with the carrier each lacks, and records that the two statable predicates (the
nondegenerate ordinary-root condition of §0.1 and the `R`-regular weight predicate of §11.1) are
polynomial conditions on free variables rather than headlines and therefore stay in the README. The
docstring's section numbers follow the renumbered Layer 3 (§3.2 secondary Hasse geometry, §3.5 the
regular Hecke-valued representation). The file keeps the `module` / `public import Mathlib` header that
other declares-nothing roadmaps on main use; the gate's import checks pass on it.

## Supplier replacements, label repairs and duplication sweep

No restatement of a supplier result was found in either file, so nothing was deleted on that ground.
The README edits are the port's shape repairs:

- **Supplier labels mapped to the suppliers' own numbering.** AutomorphicBundles' letter labels
  B3, B3.HT, B3.HT.n, B4, B5 became Layer 5, Layer 10, §10.n, Layer 11, Layer 12, by that roadmap's own
  printed dictionary, and the contract says so in one clause. AutomorphicBundlesPartII's IC.n became
  Layer n (its board package has no IC labels; titles agree). The contract for AutomorphicBundlesPartII
  Layer 4 now names the arithmetic normalization, the sheaf-level unique integral division and the
  geometric spin-polynomial dictionary of its §§4.1–4.3, which is what §1.1 consumes. The
  SmoothRepresentationsOfLocalGroups contract adds SR.1.4 (the positive Klingen Hecke algebra) that
  §6.1 uses. IHG.3a/3b/4, AG2.*, R04.*/G7, SR.*, E6/S7/F8, PL.4, R07.*, AL.4 and A3.12/A4.3 are the
  suppliers' own labels and are kept.
- **Gap tags rendered as named contracts.** Every `(gap:slug)` became "(the <name> contract)" and the
  headers "What X must provide (the <name> contract)". Mapping from the package's slugs (the
  review's `conditional_gaps` list uses the same slugs, with `integral-enormity-` truncated and
  `dyadic-ordinary-local-regularity` folded into the LocalGaloisDeformationRings §§6.29/6.31 text,
  which has no separate contract in the accepted package):
  `integral-enormity-and-oddness` → integral-enormousness; `weil-restriction-big-image` →
  Weil-restriction big-image; `normalized-integral-siegel-p-actions` → normalized integral p-action;
  `selected-coherent-rank-inequality` → selected rank-inequality; `gsp4-cg-selmer-presentation` →
  CG Selmer-presentation; `gsp4-torus-tw-data` → torus Taylor–Wiles;
  `p12-variable-weight-patching-data` → variable-weight patching;
  `symplectic-descent-every-residue-characteristic` → all-characteristic symplectic-descent;
  `gsp4-pseudocharacter-reconstruction` → pseudocharacter-reconstruction; `p12-flag-orientation` →
  flag-orientation; `p12-ordinary-horizontal-control` → horizontal-control;
  `gsp4-steinberg-u-eigenvalue` → Steinberg eigenvalue; `gsp4-klingen-level-comparison` → Klingen
  level-comparison; `gsp4-paramodular-newvector` → paramodular newvector;
  `gsp4-ordinary-neat-refinement-lines` → refinement-line; `gsp4-pure-monodromy-uniqueness` →
  pure-monodromy uniqueness; `projective-finite-group-satake` → projective Satake;
  `dyadic-ordinary-support` → dyadic ordinary-support; `symplectic-ordinary-component-support` →
  symplectic component-support. Nineteen contracts, nineteen headers; no `gap:` remains.
- **Structure.** Layer 3 renumbered without the `3.1a` label (3.1 Hasse shifts, 3.2 secondary Hasse
  geometry, 3.3 selected annihilator quotients, 3.4 central characters, 3.5 regular Hecke-valued
  representation) with every cross-reference updated; *Needs* tokens of the form "Layer k (title)"
  became "§k.n"; the package's "Conditional theorem contracts" section became the "Premises carried by
  the end theorems" paragraphs of Conventions; the Summary says that `Suggested.lean` states no
  target; P12's own section and definition numbers are prefixed "P12" where they could be read as
  this roadmap's; two "§6.3 level" phrases that meant CG20 §6.3 now say "the q-enlarged minimal
  level of §0.4"; the Downstream consumers paragraph names the sections AbelianSurfacesModularity
  consumes (§§2.5–2.6 and 11.2–11.6).
- **The accepted review's one non-blocking note** (§3.1a, "rank-one open of the supersingular
  curve") is already repaired in the package text: the secondary section "is a unit on the rank-one
  open and vanishes along the reduced supersingular curve to order two".

**Duplication sweep.** By object, with `roadmaps grep` over main and all 451 open heads and by direct
reading of the sibling checkouts new since the earlier run (SheafConvolutionOnAbelianVarieties,
EllipticModularityEffectiveComparisons, TopologicalMirrorSymmetryForHitchinSystems,
SmoothRepresentationsOfLocalGroupsPartII, AutomorphicCongruences; LocalAnabelianGeometry, FieldOfNorms
and HigherLocalClassFieldTheory have no checkout here and were searched through the service only):
the genus-two scalar and vector theta operators and their injectivity, the secondary Hasse section
and its extension, the Klingen Taylor–Wiles comparison with inverse `v_Q⁻¹∘tr`, the selected-summand
balance, Katz modularity in weight `(a,2)`, the `R`-regular weight predicate, the two
Hasse-projection injections and the three lifting endpoints have no other owner. The theta operators
found elsewhere are the GL₂ ones (AlgebraicModularFormsAndSerreWeights, QuaternionicModularForms,
CompletedCohomologyAndLocalGlobalCompatibility, PadicDifferentialEquationsAndRigidCohomology) and
the rigid-cohomology theta of ComputationalNumberTheory. SmoothRepresentationsOfLocalGroupsPartII
has Steinberg series and Satake parameters in general but no `GSp₄` Steinberg `U`-eigenvalue,
paramodular newvector, Klingen no-newforms or projective Satake statement, so the contracts asked of
SmoothRepresentationsOfLocalGroups are not planned there; AutomorphicCongruences' Klingen Eisenstein
series on `GU(2,2)` and Steinberg-twist hypotheses are different objects. No removal was needed and
the Scope and ownership section records none.

Ownership against open pull requests was checked through the service's index of all 451 heads and
the sibling checkouts the brief lists; the three new pull requests without a checkout here were
covered by the service grep only.

## Reading the README as an upstream reviewer

Read in full once more. Nothing was found wrong, vacuous or unsourced: every target carries its
hypotheses and a locator into the certified sources (CG20, P20, P12, PS16, M14, BCGP25, BCGP21,
Tho17, Yam14), every definition has an API list and at least three Checks, every layer ends with
Examples and Dependencies, and the twelve layers are in build order. No LaTeX delimiters, process
words, pull-request numbers, machine paths or `gap:` tags remain (grep counts 0). So no further fix
was made beyond the port repairs listed above.

## Adversarial mathematics pass

All values recomputed this run (`scratch/adv2.txt`); the table lists the statements whose witnesses
carry arithmetic. Every row agrees with the README, so no change resulted.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 ordinary-root condition over 𝔽₁₁ | (α,β)=(2,3), (2,6), (1,3) | 3·8·(−1)·35 ≡ 7; α²β²=144≡1 so product 0; α²=1 so product 0 | 7, 0, 0 as stated | none |
| §0.3 CG datum: U₁ lifts over 𝔽₇[η]/(η²) | N₀=E₂₃, N=N₀+η(E₁₂−E₃₄), J antidiagonal | NᵀJ+JN=0 for both; N₀²=0; N²=η(E₁₃−E₂₄)≠0; g=I+ηX symplectic, plane restriction I₂+ηE₁₂ | as stated | none |
| §0.3 oddness vs weight range | p=7: a=4, 5, 6 | 4≤4<6 ✓; a=5: ν(c)=(−1)^(−4)=1 not odd; a=6: 6<6 ✗ | as stated | none |
| §0.4 neat prime test | p=11, a=4, q=5 | ε̄(Frob₅)=5⁻¹=9, 9⁻³≡4; roots (1,5,3,4): 1·4=4, 5·3≡4, ratio 5/1=q | q rejected for those roots, accepted for scalars | none |
| §0.4 covers | p=5, Q={11}; q=3 | (ℤ/11)^× order 10, 5-power quotient 5; −I₄≡2I₄≠I₄ mod 3 | as stated | none |
| §0.5 refinement labels in 𝔽₁₃ | (2,4,11,9), relabelled (2,11,4,9); depth p=5,N=2 | 2·9≡5, 4·11≡5, 2·4=8, 11·9≡8 (reject); relabel: αβ=22≡9, γδ=36≡10 (accept); 10 mod 25≠0, 100 mod 25=0 | as stated | none |
| §1.2 adic selector vs eigenspace | O=ℤ₁₁, T=16, Q=6, α=2, β=3 | T−5=11, Q−6=0; 11^(n!)→0; ker(11ⁿ)=0 | selector 1, algebraic eigenspace 0 | none |
| §1.2 joint selector on k² | T=diag(c,c+1), Q=diag(d+1,d) | T−c nilpotent on ke₁, Q−d nilpotent on ke₂; intersection 0; complement k² | zero selector, union formula is identity | none |
| §2.2 Steinberg eigenvalue exponent | (j,k)=(2,2), (4,2), (3,3) | (j+k−6)/2 = −1, 0, 0; wrong shift (j+k−4)/2 at (3,3) = 1 | as stated | none |
| §2.3 reciprocal polynomial | F=diag(1,2,3,6) | det(1−XF)=1−12X+47X²−72X³+36X⁴ | as stated | none |
| §2.4 parity | (m₁,m₂,w)=(1,0,0), (1,0,1) | 1≡1; 2≢1 | as stated | none |
| §2.5 multiplier and determinant | diag(α,β,β⁻¹ε⁻¹,α⁻¹ε⁻¹); ℓ=3 | pair products ε⁻¹, det ε⁻²; 3 and 9; with ε instead 1/3, 1/9 | as stated | none |
| §2.6 Weil–Deligne convention | r(F)=diag(1,q), N=E₁₂ | r(F)Nr(F)⁻¹ has (1,2) entry q⁻¹ | q⁻¹N; N/3 at q=3 | none |
| §2.7 dual-spin exponents | w=0, w=2 | (−1,−1,−2,−2), (−2,−2,−3,−3) | as stated | none |
| §2.8 isotypy dimensions | dim W=1,2; eigenspace of dim 3 | 4, 8; 3 not a multiple of 4 | as stated | none |
| Layer 2 Example dual-spin dictionary | HT {0,0,1,1}, multiplier ε⁻¹ | negate and add 3: {2,2,3,3}; multiplier ε^(1−6)=ε⁻⁵ | as stated | none |
| §3.1 congruence at p=2 and ramified ϖ | (1+2)², ϖ²=2 | 9≡1 mod 4; (1+ϖ)²−1=ϖ²(ϖ+1) | divisible by ϖ² | none |
| §3.1 shift divisibility | p=5, m=3 | p^(m−1)=25 ∤ 5 | s=5 rejected | none |
| §3.2 secondary determinant exponent | p=5 | (p−1)(p+1)=24 | 24 not 4 | none |
| §3.4 pairings over 𝔽₇ | diag(1,2,3,4) | trace 10≡3, det 24≡3; pairings (4,6), (3,1), (2,5) | no common multiplier | none |
| §3.4 Hasse shift and multiplier | p=7, t=6 and t=2 | ε̄^(−12)=1 since 6∣12; ε̄^(−4)≠1 since 6∤4 | as stated | none |
| §3.5 cyclotomic exponents | (a,b)=(4,3); b=2 | (0,−1,−3,−4), paired sums −4; at b=2 first two exponents 0,0 | as stated | none |
| Layer 3 Example | p=7, m=2, μ=(4,2) | s=7t₀, t=42rt₀, μ′=(4+42rt₀,2+42rt₀), difference 2 | as stated | none |
| §4.1 Legendre multipliers over 𝔽₅ | d=1,2,0 | (1/5)=1, (2/5)=−1, (0/5)=0 | as stated | none |
| §4.1 p-primitive vs discriminant | Q=(1,0,p) | d=−4p≡0, det=p≡0, coefficients not all divisible by p | distinct conditions | none |
| §4.2 scalar exclusions and ranges | p=7: k=8; (j,k)=(2,2),(4,2),(6,2) | 8·15=120≡1 mod 7; target degree −2; 2<5 and target (10,10); 4<5 but 6>6 false | as stated | none |
| §4.2 contraction normalization | p=7, con(e₂²⊗f₁²)=−2 | −2≡5; scaling by 2 gives 10≡3; det(f₁²)=0 | 5 and 3, extra det factor would give 0 | none |
| §4.4 scalar kernel relation | c=6 in 𝔽₁₁ | c³−c=210≡1; c=1 gives 0 | F=0 forced for c=6 | none |
| §4.5 sign conventions at p=7 | Q=diag(1,1), diag(1,2) | (−4/7)=−1, (−8/7)=−1; (1/7)=1, (2/7)=1 | as stated | none |
| §4.7 neighbour reciprocity at Γ(5), p=7 | P=x²+7y², M=[[2,5],[35,91]] | det M=7; M⁻¹·P=(1/7)adj·P·adjᵗ=1208x²−930xy+179y², disc −28, ≡3x²+4y² mod 5; Q≡2x²+y²; diag(3,2)≡diag(7⁻¹,7), det 1, carries 3x²+4y² to 27x²+16y²≡2x²+y² | as stated | none |
| §4.7 non-normalizing level | H=⟨A⟩, A=[[0,1],[4,1]] mod 5; D=diag(2,1), D∨=diag(1,2) | ord A=6, A⁻¹=[[1,4],[1,0]]; n_j A n_j⁻¹ = [[0,4],[1,1]] (j≡0,3), [[3,2],[4,3]] (j≡1,4), [[4,1],[2,2]] (j≡2,5), none in H; same for D⁻¹A^(−j)D∨ | Δ∨∉N(H)DH and ∉HDN(H) | none |
| §4.7 β unit | β=3 in 𝔽₁₁ | 3·4=12≡1 | θ₁F=0 follows | none |
| §6.1 Klingen block projector over 𝔽₁₁ | (α,β,γ,δ)=(2,3,4,6) | αδ=βγ=12≡1; blocks 6, 8, 18≡7, 24≡2; R(6)=(6−8)(6−7)(6−2)=(−2)(−1)(4)=8; R(8)=R(7)=R(2)=0 | projector 1 on the labelled block, 0 elsewhere | none |
| §6.1 excluded refinement over 𝔽₁₃ | (2,4,11,9) | αβ=8=γδ, so R(8)=0 on the desired block | excluded by §0.5 | none |
| §6.2 GL₂ oldform control | q=11, p=5, α=(1+δ)/2, β=(1−δ)/2, δ²=−43 | αβ=11; (qα−β)/((q+1)(α−β))=1/2−5δ/516 ≡ 1/2 ≡ 3 mod 5; v=(q+1)·that=6−5δ/43 ≡ 1; −43≡2 nonresidue mod 5 so δ∉𝔽₅ | degree-normalized trace is not the inverse | none |
| §6.2 Klingen degree | x≡1 mod 7 | 1+x+x²+x³≡4, 4⁻¹≡2 | v_x≡1 | none |
| §7.1 dual bundle | a=4 | L=ω(1,−1) | as stated | none |
| §7.3 defects over S=O[C_p] | S, k, S⊕k | S: 1−0=1; k: 1−2=−1; sum 0 | balanced total, unbalanced summand | none |
| §7.3 weight bounds | (p,a)=(7,4), (7,5) | 5>4, 7>2, 6>4; 7>3 but 5>5 false; ν(c)=1 at a=5 | as stated | none |
| §7.4 Example Tor | S=O[C₅], Tor₁ˢ(k,O) | periodic resolution ⋯→S→S→O, tensor k kills both maps: Tor₁=k | dimension 1 | none |
| §8.3 scalar neatness witness | p=11, a=4, λ=2; p=7; p=3 | gcd(3,10)=1; λ²=4; 5³≡4, 5⁻¹=9, 9⁻³≡4; cubes mod 7 are {±1}, 3I₄ has multiplier 9≡2; 𝔽₃^×={±1} | as stated | none |
| §8.4 six-point model | S₆≅Sp₄(𝔽₂) | 16 classes; order 15·8·3·2=720=6!; (12) fixes 8 classes; (123) fixes 4 | as stated | none |
| §8.5 Hodge–Tate pairs | a=4 | 0+3=0+3=3, matches ε⁻³ | as stated | none |
| Layer 8 Example | p=7, a=4, ℓ=3 | 3³=27, 27²=729 | as stated | none |
| §9.3 / §9.4 weight lists | κ′=(4,2),(2,2),(1,1); k′=2,3 | (0,0,−3,−3), (0,0,−1,−1), (0,1,0,1); (0,0,−1,−1), (0,−1,−2,−3) | as stated | none |
| §10.3 freeness ranks | one rank-two depth-N torus | d·p^(2N); at p=2, N=1 order 4 | as stated | none |
| §10.7 diamond relation | (1+t)^(pᴺ)−1 | t-coefficient pᴺ≠0 | not in (t²) | none |
| §11.1 R-regular weights | R=3: (−4,−1), (0,3), (−1,−4) | gaps 3,3; 3,−5; −3 | as stated | none |
| §11.3 residue-field degree | E=ℚ₇, (t²−3) | squares mod 7 {0,1,2,4}, 3 nonsquare, [E′:E]=2 | fibre E-dimension 2 | none |
| OAFML-II contract Checks | n=4,[F⁺:ℚ]=1; p=2,n=2,[F⁺:ℚ]=2,#T=3,q=5; p=3 | 4≡0 mod 4; χ=1−3−5+2=−5, h¹=1−1+5=5, g=5+3−1−2=5; 7 mod 9=7, 19 mod 9=1 | as stated | none |
| Descent contract Check | C=I+εE₁₄, J antidiagonal | E₄₁J+JE₁₄=0, so CᵀJC=J | as stated | none |
| Paramodular contract Checks | χ(3)=ζ₃; ω(ℓ)=2, χ(ℓ)=√2 | χ(9)=ζ₃²≠1; 2·(√2)⁻²=1 while ωχ²=4 | as stated | none |
| Conventions witnesses | a=2, ℓ=3; Q=diag(1,1), p=7 | ε(Frob₃)=1/3, ε⁻¹=3, det 9; d(Q)=−4≡3 nonsquare (squares 1,2,4), det 1 square | as stated | none |

Context, generality and vacuity were checked by reading: the Lean file has no `variable` block or
declaration, so nothing silently loses a hypothesis; the README's generality is the sources' (the
CG branch keeps `p ≥ 5` and `a = 2` or `4 ≤ a < p−1`, the P12 branch its own image conditions, the
BCGP branch `p ≥ 2` with integral enormousness); every endpoint names the objects the roadmap
defines (selected modules, the two injections, balance, the four higher-Hida modules). Unused
hypotheses: none found that an instance shows superfluous.

## Unresolved

Nothing blocks the pull request. Three notes for the maintainer:

- The four board-design suppliers (AutomorphicBundlesPartII, PadicFamiliesPartII,
  OrdinaryAutomorphicFormsAndModularityLiftingPartII, PotentialAutomorphyInfrastructurePartII) have
  no pull request, so the citation resolver will keep listing two leads for them until they are
  opened; the README cites them by section as the house style requires.
- Six of the nineteen contracts are asked of SmoothRepresentationsOfLocalGroups, while a
  SmoothRepresentationsOfLocalGroupsPartII pull request now exists; at its head that Part II plans
  none of these `GSp₄` statements, so the asks stay with Part I as the accepted review placed them.
- `Suggested.lean` keeps the `module` / `public import Mathlib` header of the declares-nothing
  roadmaps on main rather than a bare `import Mathlib`; the gate accepts it.

## Suspicious text

None of the fetched or read text (package, reports, supplier READMEs, sibling pull requests)
contained an instruction to run commands, use credentials, contact a service or change how the job
is done.


Pull request: #1817 (roadmap/g-sp4-nonregular-modularity-lifting at f9628b0)
