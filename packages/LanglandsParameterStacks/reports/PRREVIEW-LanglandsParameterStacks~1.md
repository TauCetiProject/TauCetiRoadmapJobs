# Review of LanglandsParameterStacks (pull request #1202 at f4a8f12)

**Verdict:** needs changes

## R01 (P1) — Supply the Lie-invariant theorem used by the nilpotence argument

**Location:** `TauCetiRoadmap/LanglandsParameterStacks/README.md:422`, LP1.15, “every degree e of a homogeneous generator of the Chevalley invariants”.

**Claim:** The stated numerical condition makes every singularity covector null, by applying homogeneous Chevalley invariants. The proof needs a description of the coadjoint invariant quotient, its homogeneous degrees and its zero fibre in the stated characteristics. None of the three listed inputs supplies this. LP1.13 defines the nullcone; RG2.5 supplies the dual group; ClassFieldTheory supplies Weil theory. Defining the nullcone does not identify it with a polynomial invariant zero fibre.

**Witness:** FS lines 10995–11012 explicitly use Lie Chevalley restriction, an invariant Lie-dual identification and the zero-fibre criterion. `TauCetiRoadmap/ReductiveGroups/README.md:2057` supplies a complex Lie quotient; LP3.25 supplies group-element restriction, a different quotient.

**Repair:** Before LP1.15, state the exact coadjoint invariant/zero-fibre input, including the positive-characteristic hypotheses implied by the numerical condition, and own its missing extension here or declare a precise supplier gap. Import the characteristic-zero material from its existing owner. A proof using a perfect pairing must supply that pairing and its hypotheses; a direct coadjoint proof can avoid it but must supply its invariant theorem. Add these inputs to `Needs`. Do not replace this by a good-prime-only restriction of the roadmap's other results.

**Repair test:** In `gl₂` over `𝔽₅`, `q=2`, `n=1`, invariant degrees 1 and 2 give `q−1=1`, `q²−1=3`, both invertible. `E₁₂` has `(tr,det)=(0,0)`, whereas `diag(1,−1)` has `(0,4)`. The required zero-fibre theorem admits the first and excludes the second; trace vanishing alone does not. For the torus with `q=3, ℓ=2`, the degree-one factor is zero and the nonzero singularity line must remain excluded from the conclusion. This finding concerns an unowned proof input, not a counterexample to FS's theorem.

## R02 (P2) — Import the existing highest-weight construction

**Location:** `TauCetiRoadmap/LanglandsParameterStacks/README.md:731`, LP3.0, “Define the induced module” and “the Weyl module”.

**Claim:** This paragraph commissions the induced/Weyl objects and the dominance/nonvanishing theorem again, while citing only ReductiveGroups layer 9.

**Witness:** `TauCetiRoadmap/ReductiveGroups/README.md:1759`, §10B, already constructs `∇(λ)=Ind_(B⁻)^G k_λ`, `Δ(λ)=∇(−w₀λ)*`, arbitrary-field base change and vanishing for nondominant weights.

**Repair:** Delete those constructions and their dominance theorem as new targets. Import ReductiveGroups §10B by name in Scope, the supplier contract and LP3.0's dependencies, retaining SchubertGeometry S3.2 for the section comparison. Keep the new rational-cohomology comparison, good-filtration theory and applications here. Explicitly transport the lower-Borel convention rather than rebuilding the objects.

**Repair test:** For the lower Borel of `GL₂`, the imported weights `(1,0)`, `(0,−1)`, `(0,1)` give respectively the standard module of dimension 2, its dual of dimension 2, and zero. These are exactly this paragraph's controls. No Part II replacement of the whole roadmap is needed: the defect is a removable overlapping input.

## R03 (P2) — Use the pinned exponential and flat-equalizer comparison

**Location:** `TauCetiRoadmap/LanglandsParameterStacks/README.md:378` and `:444`, LP1.11a and LP2e.1.

**Claim:** The roadmap asks to construct the nilpotent polynomial exponential and prove its coefficient/conjugation naturality, and to construct and prove flat base change of the coaction equalizer by tensor exactness. These primitives already exist at the pin.

**Witness:** `Mathlib/RingTheory/Nilpotent/Exp.lean:50,53,185` gives `IsNilpotent.exp`, `exp_eq_sum`, `map_exp`. `Mathlib/RingTheory/Flat/Equalizer.lean:279,294` gives `AlgHom.tensorEqualizer` and `AlgHom.tensorEqualizerEquiv`, the latter under `Module.Flat`.

**Repair:** Add those exact declarations to the Mathlib supplier contract; use the existing exponential and specialize the existing equalizer map to the coaction and `includeRight`. Keep the genuine new work: logarithm and inverse identities, the algebraic-group/scheme comparison and quasi-unipotence, and the tensor-associativity identification with the base-changed coaction. Delete the duplicated generic construction/proof obligations, not their discriminating README examples.

**Repair test:** The existing finite sum gives `exp(E₁₂)=1+E₁₂` and `exp(E₁₂+E₂₃)=1+E₁₂+E₂₃+E₁₃/2` over `ℚ₂`. Ring-hom naturality handles scalar extension and conjugation. The native equalizer map sends `s⊗a` to `s⊗a`; for `ℤ[x]` with sign action, reduction to `𝔽₂` misses `x`, exactly as the README requires when flatness fails. The native equivalence keeps flatness as an explicit binder. These declarations were opened and their signatures elaborated at the pin.

## R04 (P3) — Fix the 82 target headings that fail the gate

**Location:** `TauCetiRoadmap/LanglandsParameterStacks/README.md:129` and all subsequent target headings through `:1071`.

**Claim:** Target labels use prefixes and letter suffixes, for example `LP0.1` and `LP1.6a`, rather than the required digits-only `k.n` form.

**Witness:** The worker's gate at the reviewed head reports `target-ids=82` and `FAIL`; all other reported check counts, including `build`, `depcheck`, `outside-folder` and `stray-files`, are zero.

**Repair:** Number the seven layers and their subsections numerically in build order, updating internal references consistently. Rerun the gate. For example the first target becomes `### 0.1 Restriction, sections and continuity of crossed cocycles`; the inserted “a” targets receive their own consecutive numeric subsection. The same repair applies to every one of the 82 reported instances. A failing gate prevents acceptance even when its only failures are P3.

## R05 (P3) — Stop presenting absent API names as Lean declarations

**Location:** `TauCetiRoadmap/LanglandsParameterStacks/README.md:131`, `:145`, `:731` and analogous definition paragraphs; `TauCetiRoadmap/LanglandsParameterStacks/Suggested.lean:4`.

**Claim:** The README presents new API names such as `CrossedCocycle.sectionEquiv`, `LParameter.asLift` and `HasGoodFiltration` in backticks, although the Lean file deliberately declares nothing. APIs are long inline catalogues instead of the required prose bullet lists. This is distinct from citing real supplier declarations.

**Witness:** `Suggested.lean:46–49` opens and closes the namespace with zero declarations. LP0.2 alone promises several names that have no declaration there. The empty file is legitimate for the unavailable headline carriers; the naming contract is not.

**Repair:** Retain the mathematical APIs as prose bullets with their domains, hypotheses and conclusions. Remove declaration-style names for unstatable owned targets; preserve backticks for actual imported declarations and mathematical formulae. Do not fill the Lean file with placeholder carriers or API padding. Change its module title to the prescribed “target signatures” form and describe it as the headline acceptance test. For LP0.2, a valid bullet states that passing from a condensed cocycle to a lift preserves its first coordinate and prescribed projection; the `GL₂` infinite-inertia example remains a Check.

## R06 (P3) — Replace commentary Checks with computed tests

**Location:** `TauCetiRoadmap/LanglandsParameterStacks/README.md:881`, `:891`, `:909`, in LP3.14, LP3.15 and LP3.17.

**Claim:** Statements that full-group results differ from connected-group results, that both are needed, or that one theorem cannot be deduced from another are explanations, not discriminating Checks.

**Witness:** LP3.17's second Check gives no group, action, fundamental group or computed value. LP3.15's last Check likewise supplies no object that distinguishes its two assertions.

**Repair:** Move those explanations into prose and replace them by actual instances. For LP3.14–LP3.15 use `G=G_m`, inversion by `C₂`, characteristic 3: `H=μ₂`, `H°=1`; weight 1 restricts to the nontrivial character of `μ₂`, while restriction to `H°` forgets it. Induction of that character is the odd Laurent monomials, and the counit evaluates at 1. For LP3.17 use an inner involution of `SL₂` in characteristic 3: the connected fixed group is `G_m`, with `π₁=ℤ`, torsion subgroup zero, although `π₁(SL₂)=0`. These values distinguish the objects actually asserted.

## R07 (P3) — Record the cited works in the source manifest

**Location:** `TauCetiRoadmap/LanglandsParameterStacks/README.md:1093`, References; missing `TauCetiRoadmap/LanglandsParameterStacks/sources.toml`.

**Claim:** Sources and version-dependent locators are listed in prose but have no source manifest. The brief's source inventory consequently has no recorded texts or version checksums.

**Witness:** The folder contains `README.md` and `Suggested.lean`, with no `sources.toml`; the supplied sample description says no targets were found by heading. The source-service audit retrieved the legal texts listed below without modifying this folder.

**Repair:** Add the required `tauceti-roadmap-sources/v1` manifest using one stable key per work, exact locators and target associations, service provenance and version notes. Preserve the distinction between successfully retrieved, unavailable and paywalled/uncertified texts. In particular retain Zhu's v3 Lemma 3.10 versus the older Lemma 3.1.8 numbering, and Touzé–van der Kallen's preprint Theorem 1.5 versus the published label. Do not copy source files into the folder. Fetching the same keyed work should resolve to the recorded version and checksum.

## Verified sound

This is a full-folder review of the stated head. Findings above are separable repairs; the roadmap's parameter-stack scope is not itself a replacement for an existing roadmap. No route-specific restriction was found in the unconditional coarse-point/reconstruction statements. The good-`π₁` restrictions are attached to the stronger integral categorical theorems, and the bad-prime negative examples remain in scope.

The repository README's writing rules and CONTRIBUTING were read, along with main-branch supplier roadmaps including ReductiveGroups, EnhancedDerivedSheaves and SchemeAndStackFoundations. The two requested files were read throughout. There are 82 target sections, seven layers and zero Lean declarations. The PR diff outside this folder is empty. No PR file was edited. There is no sorry'd data, `set_option`, extra import, admitted example, hidden free predicate or computational algorithm in the Lean file.

### Gate, dependency direction and elaboration

The supplied head-specific gate has exactly one failing rule: `target-ids=82`. The targeted build passed. Independently, the requested direct `lake env lean` elaboration of `Suggested.lean` completed with exit 0 and no warnings. The independent dependency command, with the supplied order, `--movable` and main content, returned:

```text
depcheck: 205 roadmaps, 1446 edges, 0 problem(s)
```

There was no `UPWARD`, `CYCLE` or `moved:` line. Every `Needs` paragraph and supplier contract was read; this mechanical success does not supply the missing mathematical input in R01. With zero declarations, the required per-declaration `#check @name` comparison and one-tactic padding pass both have zero subjects. There is no padding to delete from the Lean file. Nine native declarations used in the audit were additionally checked in one scratch Lean file; that file elaborated successfully.

### Headline coverage

The summary's three end results are (1) coarse geometric points classify semisimple parameters at every `ℓ≠p`, (2) categorical Hecke data produce the excursion-to-centre map, and (3) perfect generation and the `Ind Perf` module comparison under the stated fundamental-group condition. Intermediate deep results are finite-wild ramification and enhanced restriction; syntomic representability and derived classicality; Weil cotangent duality, Weil–Deligne comparison and singular support; the derived free-cocycle presentation; generalized reductive reconstruction and continuity; good-filtration/fixed-group theory and wild gerbe elimination; and the enhanced integral invariant comparison.

The module docstring names these by target and identifies the missing local Weil/condensed coefficient, parameter-scheme, animated-stack, invariant-family and enhanced-category carriers. At the checked pins, semidirect products, ordinary representations, ordinary continuous cohomology, the two-term cotangent map and triangulated t-structures do not provide those carriers. No headline was forced through a stand-in. The ordinary nilpotent exponential and equalizer statements of R03 are inputs, not reasons to insert substitute headlines into this file.

### Source sample and locators

The supplied sample description contains no fifteen target identifiers (“none found by heading”). To make the sample reproducible rather than silently invent a worker result, I sampled 15 of the 82 headings in file order with Python's `random.Random('PRREVIEW-LanglandsParameterStacks~1:f4a8f12').sample(targets,15)`. No README locator was explicitly marked unverified. All fifteen replacement sample targets were checked against legal extracted text; additional locators were checked for findings, conventions and end theorems. Line references below name the source-service extraction, not a machine path. FS means the linked author version of Fargues–Scholze; other keys match the audit's source-service requests.

| Sample target | Locator opened and source lines | Hypothesis/statement comparison |
| --- | --- | --- |
| LP2e.15 | FS VIII.4.1–4.2, pp.290–293, lines 11261–11353; Lafforgue Lemma 10.1, pp.133–135, lines 7407–7417, and Proposition 10.8, pp.138–139, lines 7804–7844 | FS supplies the integral abstract categorical formulation; Lafforgue supplies the operator relations in his coefficient setting. No prime restriction is imported from the stronger generation theorem. |
| LP3.18 | FS §VIII.5.4, pp.311–312, lines 12117–12139 | Finite torsor input and animation/left Kan extension match; the characteristic-ℓ construction retains prime-to-ℓ component groups. The separately stated integral version is a separate coefficient construction. |
| LP0.1 | FS §VIII.1.1, p.278, lines 10760–10780; DHKM §1.2, pp.4–6, lines 158–205 | Crossed cocycles and sections use the prescribed action; the new inverse/restriction interfaces are elementary extensions of the imported cocycle object. |
| LP4.2 | FS VIII.5.1 and proof, pp.293–294, lines 11358–11388 | Good fundamental-group torsion condition and the integral-to-residue-field reduction are retained; characteristic zero is distinguished. |
| LP2e.10 | FS VIII.3.7 and proof, pp.288–289, lines 11150–11213 | Reindexing, ordered multiplication, unit and inverse substitutions are preserved, with component projection fixed. |
| LP2e.8 | FS VIII.3.5, p.288, lines 11125–11134 | The underlying animated/derived comparison is unconditional; it is not the enhanced invariant comparison. |
| LP2c.0 | Chenevier Proposition 1.27, p.20, lines 804–823; definitions in §§1.1–1.5 | Rational trace/determinant comparison is correctly restricted to ℚ-algebras. The modular full-law object is kept. |
| LP3.19 | FS VIII.5.20, p.312, lines 12139–12173 | Full faithfulness and induced image are separate from essential surjectivity at good `π₁`; a free group includes rank zero. |
| LP0.2 | FS §VIII.1.1, pp.278–279, lines 10760–10780 | Relatively discrete coefficients allow the displayed infinite tame-inertia image over ℚℓ; discrete coefficients would change the object. |
| LP3.21 | FS VIII.5.2, p.294, lines 11379–11388, and its concluding proof pp.312–315, lines 12196–12276 | Wild elimination and tame reduction keep both `ℓ≠p` and the good-`π₁` assumption. |
| LP3.1 | FS VIII.5.4, pp.294–295, lines 11394–11452 | Cohomological degree tests match; finite-component induction, rather than the trivial representation alone, supplies disconnected generators. |
| LP2e.13 | FS VIII.4.2, p.291, lines 11272–11307 | Creation, tuple action, annihilation and compatible reindexing match; the tuple is not an arbitrary unrelated variable. |
| LP0.3 | FS VIII.1.3 and proof, pp.279–280, lines 10782–10865 | Finite wild image uses pro-p versus ℓ-adic continuity; the elementary normal-cutoff extension retains the action/projection kernel. |
| LP3.20 | FS VIII.5.21, pp.313–315, lines 12196–12276 | Solvability and prime-to-ℓ order are retained; empty section spaces are allowed. |
| LP1.5 | FS VIII.1.3, pp.279–281, lines 10782–10865; DHKM Theorem 4.1, pp.29–30, lines 1333–1371 | Syntomicity and finite-wild hypotheses match. The base has dimension one: relative `dim Ĥ` and absolute `dim Ĥ+1` are distinguished. |

Gulliksen Theorem 3.1, printed p.174, Gulliksen lines 262–282, was retrieved from the publisher’s open scan (OCR) after resolving its PDF link; its exact-Koszul-complex and noetherian-module assumptions were read. It supplies the finite-generation operator argument, not by itself every descent assertion of LP1.14. The successful retrieval replaces the earlier unresolved request for the same key.

Other opened passages include DHKM Corollary 4.2 (lines 1372–1379, canonical comparison after ℓ-adic base change); KSS §§1.20–1.21 (lines 349–392, pp.8–9); Quast Theorem 3.7 (lines 501–527, pp.13–14, generalized reductive reconstruction); Touzé–van der Kallen Theorem 1.5 (lines 98–104, p.3, finite good-filtration dimension); SAG D.6.3.1, D.6.3.3–D.6.3.4 (lines 79502–79530, pp.2177–2178, flat descent); and FS VIII.2.5–VIII.2.13 (lines 10902–11018, pp.282–285). A source citation is evidence for a mathematical theorem, not an ownership contract; that distinction is why R01 remains a finding.

### Computed adversarial table

Each row records values, not a claim that examples prove a general theorem. Grouped identities in a target are tested on the same specified object. All 82 target sections are covered, including all sampled targets and all mathematical finding locations. “Retain” means no counterexample was found in these tests; it does not certify unavailable primary texts. Here `k` is an algebraically closed field when the target requires it, `U=1+E₁₂`, and `A` denotes the actual coordinate algebra, not a free placeholder.

| Statement | Instances tried | Values on the two sides / excluded model | Result and change |
| --- | --- | --- | --- |
| LP0.1 cocycles, sections, gauge, restriction, H¹ | Negation of ℤ by C₂; inversion of ℚˣ; trivial group | `c(s²)=1−1=0` versus homomorphism value 2; gauge of 1 by 2 is `2/(1/2)=4`, opposite convention gives 1/4; gauge shifts an integer by `2h`, so H¹ is ℤ/2. Trivial-source H¹ has one element; restriction by identity fixes c. | Retain conventions; R05 API form. |
| LP0.2 relatively discrete coefficients | `q=3`, `ℓ=2`, tame coordinate `t∈ℤ₂` | `diag(3,1)(1+tE₁₂)diag(1/3,1)=1+3tE₁₂`; coefficients lie in the rank-one ℤ₂-module while inertia has infinitely many values. Over 𝔽₂, continuous compact-inertia image is finite. | Retain; discrete ℚ₂ model fails. |
| LP0.3 finite wild, cutoff, descent | Unit cocycle on S₃ with prescribed projection identity; trivial coefficients; C₂ indiscrete | Section kernel is `{1}`, versus whole S₃ for cocycle-only kernel. Gauge leaves section kernel `{1}`. Trivial H,Q gives cutoff P. Indiscrete C₂ identity has image size 2 but kernel not open; noncompact discrete ℤ has open kernel and infinite image. | Both topology hypotheses and projection kernel are necessary. |
| LP0.4 degree and extension | Arithmetic/geometric Frobenius, q=3 | Degrees `−1,1`; Tate values `3,1/3`. `σ⁻¹τσ=τ³` becomes `Fr τ Fr⁻¹=τ³`. Continuous extension fixes generator values, so two extensions have difference zero on a dense subgroup. | Retain normalization and ℓ-adic comparison scope. |
| LP0.5 wild parameters/admissible extensions | Split trivial dual cocycle; full Weil projection | Projected inertia image has size 1, whereas inertia in `Ĝ⋊W` projects onto the infinite inertia group. Requiring finite full image excludes the basic section. | README correctly uses finite projected image; source issue below. |
| LP0.6 twisted centralizer | Unit cocycle, S₃ acting by conjugation on S₃ | Twisted fixed subgroup is `Z(S₃)={1}`; centralizer of the first-coordinate image `{1}` alone is S₃ of order 6. | Retain twisted condition. |
| LP0.6a Weil centre | `𝔽₃((t))`, tame involution `t↦−t` | Difference on `t⁻¹` is `−2t⁻¹=t⁻¹`, pole order 1. An Artin–Schreier coboundary with a pole has pole order divisible by 3. Thus this automorphism acts nontrivially on H¹. | Retain odd-characteristic scope; example detects the proposed route. |
| LP0.7 wild enhancement group | Cyclic cubic image in SO₃; dihedral image | Cubic centralizer is a torus T, so Sρ=T (not π₀(T)=1); dihedral centralizer gives C₂. The classical Sφ of the cubic torus-centralized extension is 1. | Retain distinction from the usual finite enhancement group. |
| LP0.8 restriction of enhancements | The preceding cyclic and dihedral cases | Cubic case: only trivial T-character comes from Sφ=1; dihedral case: trivial and sign characters of C₂ both occur. Conjugation transports the same character class. | Retain extension condition. |
| LP1.1 finite-presentation scheme | Split tame Gm, q=3 | Coordinate algebra `ℤ₂[a±,b±]/(b²−1)`; mod 2 it is `k[a±,ε]/ε²`. Replacing finite flat μ₂ by its reduced point loses ε. | Retain nonreduced scheme. |
| LP1.2 all-depth union/strata | Trivial dual group; arbitrarily deep wild characters of a torus | Trivial dual gives one point in every cutoff and one point in the union; distinct conductor levels of wild characters give distinct clopen pieces, not one finite-type affine torus. | Retain piecewise construction. |
| LP1.3 Weil cohomology/Euler characteristic | Trivial one-dimensional ℚℓ module and its Tate twist | Dimensions `(H⁰,H¹,H²)=(1,1,0)` and `(0,1,1)`; Euler characteristics `1−1=0` and `−1+1=0`. Duality switches the two triples. | Retain continuous cochains and twist. |
| LP1.4 unipotent classes/dimension | Torus; SL₂; tame torus | Torus has one unipotent class; SL₂ has identity and nonidentity unipotent classes. Tame torus solution dimension is 1, equal to dim Gm; not the dimension 2 of an unrestricted pair. | Finite-class input remains subject to the primary-source limitation below. |
| LP1.5 syntomicity/dimensions | Tame Gm over ℤ₂, q=3 | Relative dimension 1; absolute dimension 2; quotient-stack relative dimension `1−1=0`. Special fibre has ε²=0 despite flat rank-two μ₂. | Retain; source dimension convention checked. |
| LP1.6 model comparison | q=3 tame torus; inverse Frobenius | Both schemes have `b²=1`; generator coordinate `a` is replaced by `a⁻¹`. Relative/absolute dimensions are 1/2. | Canonical after ℓ-adic extension, not arbitrary integral choice changes. |
| LP1.6a flat enhanced descent | k→k[ε]/ε²; nonflat reduction in reverse | First algebra is free of rank 2 and faithfully flat; reduction has `Tor₁(k,k)=k`, so it is not an instance of the flat theorem. The unit descends to k in the first case. | Retain flatness and enhanced descent. |
| LP1.7 derived parameter stack | W=1, dual H; H=1 | Framed algebra is the base and quotient is BH; for H=1 the quotient is a point. Confusing the framed point with BH loses stabilizer H. | Retain actual quotient. |
| LP1.8 classicality | Tame torus relation versus a zero relation | `b^{q−1}−1` is a nonzero divisor in the integral Laurent polynomial ring, giving no negative homology. A derived zero locus of the zero function on k instead has H⁻¹=k. | Retain regular-sequence input; abstract derived zero loci need not be classical. |
| LP1.9 cotangent duality | Trivial one-dimensional Weil module | RΓ has degrees 0,1; its Tate-twisted dual has nonzero degrees 1,2 before `[2]`, hence degrees −1,0 after it. The dual of the first complex likewise has degrees −1,0. | Retain `[2]` and dual coefficient. |
| LP1.10 tangent/cotangent | Trivial Gm parameter in characteristic zero | Tangent `RΓ(W,k)[1]` has H⁻¹=k (automorphisms), H⁰=k (unramified variation), H¹=0. Forgetting `[1]` puts these in degrees 0,1. | Retain quotient-stack shift. |
| LP1.11 Weil–Deligne relation | `N=E₁₂`, geometric Frobenius diag(1/3,1) | Conjugation gives `(1/3)E₁₂`, matching `q⁻¹N`; the arithmetic matrix diag(3,1) gives `3E₁₂`. Torus has N=0. | Retain sign and nilpotence. |
| LP1.11a exp/log/quasi-unipotence | E₁₂; E₁₂+E₂₃ over ℚ₂; finite-order inertia | Square-zero exponential is `1+N`; length-three exponential adds E₁₃/2, while `log(1+E₁₂+E₂₃)` subtracts E₁₃/2. A killed finite-order matrix has log 1=0. | R03: use pinned exponential; integrality fails as stated. |
| LP1.12 monodromy normalization | U=1+E₁₂, power m | `log(U^m)=mE₁₂`, hence `m⁻¹log(U^m)=E₁₂`; replacing m by 2m leaves N unchanged. For the length-three ℚ₂ example coefficient −1/2 is not in ℤ₂. | Retain normalized logarithm and rational coefficients. |
| LP1.13 singularity/dual nullcone | Tame Gm, q=3; smooth point; nodal GL₂ chart | At char 2 trivial torus parameter, singularity fibre is k but nullcone is `{0}`; in char 0 fibre is 0. At a smooth chart H⁻¹(L)=0. For `uv=0` the residual module has nonzero hypersurface operator support, with obstruction direction nilpotent. | Retain dual formulation and nonperfect nilpotent-support example. |
| LP1.14 Hochschild action/support | Smooth `k[x,y]` in char 0; node `k[x,y]/xy` | Smooth case `H¹(L∨)=0`, but `HH²=B·(∂x∧∂y)≠0`. Node residue-field Ext persists in arbitrarily high degrees; a finite projective module has Ext above degree 0 equal to 0. | README correctly uses a map, not an isomorphism; see source issue. |
| LP1.15 nilpotence | gl₂ over 𝔽₅ with q=2; Gm over 𝔽₂ with q=3 | Degrees 1,2 give factors 1,3; `E₁₂↦(0,0)`, `diag(1,−1)↦(0,4)`. Torus excluded factor `3−1=0` permits nonzero singularity covectors. | R01 missing invariant/zero-fibre input. |
| LP2e.1 invariants/coarse quotient/flat change | Scaling Gm over 𝔽₂; sign action on ℤ[x]; U in SL₂ | Coaction invariants are 𝔽₂, while invariants under Gm(𝔽₂)=1 are 𝔽₂[x]. Sign reduction maps `𝔽₂[x²]→𝔽₂[x]`, missing x. U and 1 both have trace 2 and determinant 1. | R03 native flat comparison; retain coaction, nonflat and nonclosed-orbit controls. |
| LP2e.2 nonintegral quotients/neighbourhoods | Weights 1,−1 on k[x,y]; dual-number thickening | Invariants k[xy]; fibre xy=0 has two punctured orbits but one closed orbit, the origin. For trivial action on k[ε]/ε², invariant algebra remains k[ε]/ε², not k. `D(xy)//G=D(xy)` in the quotient. | Retain nonreduced extension; primary Haboush/Richardson text limitations below. |
| LP2e.3 reductivity distinctions | Diagonal torus and upper unipotent subgroup of GL₂ | Torus representation splits as two characters: CR true, irreducible false. Nontrivial unipotent extension has invariant line without complement: CR false. | Retain different notions and nonconnected extension. |
| LP2e.4 closed tuples | Tuple U in SL₂; diagonal semisimple tuple | `diag(t,t⁻¹)Udiag(t⁻¹,t)=1+t²E₁₂→1`; U-orbit not closed. A diagonal semisimple tuple has a closed orbit. | Retain closure/CR criterion, not equality of arbitrary orbits. |
| LP2e.5 semisimple parameters | Γ=ℤ, SL₂, U versus 1; torus | U has nontrivial extension and semisimplification 1; 1 is semisimple. In a torus every character is semisimple. | Retain absolute/parabolic definition. |
| LP2e.6 coarse geometric classification | Same U and 1; inversion-twisted Gm | U and 1 share coarse point; only 1 is the closed representative. Twisted gauge is `t↦h²t`; over algebraically closed k every nonzero t lies in one orbit, including char 2 on geometric points. | Retain geometric bijection; no scheme-level square-root smoothness claim. |
| LP2e.7 free index/word substitutions | F₀; F₁⊔F₁; inversion-twisted product | Rank-zero object maps uniquely to every object; coproduct rank is 2. With first projection inversion and values 2,3, cocycle multiplication gives `2·3⁻¹=2/3`, not 6. | Retain signed twisted words and siftedness. |
| LP2e.8 derived free presentation | W=Fₙ; W=1 | Terminal identity tuple evaluates colimit to O(Hⁿ); for W=1 both algebras are the base with no negative homology. | Retain; underlying equality does not compute derived invariants. |
| LP2e.9 extended excursion algebra | H=Gm, Γ=ℤ, trivial/inversion projection; H=1 | Trivial action gives `ℤℓ[t±]`; inversion gauge weight 2 gives invariant algebra ℤℓ even at ℓ=2; H=1 also gives the base. | Retain prescribed projection and imported finite-wild scalar object. |
| LP2e.10 excursion relations | Laurent coordinate; S₃ word order | `t·t⁻¹=1`; empty product 1. `(12)(23)=(123)` and `(23)(12)=(132)` differ, so unordered fibre multiplication fails. | Retain all signed substitutions. |
| LP2e.11 torsion-free characters | Tame torus, q=3, ℓ=2 | `ℤ₂[a±,b]/(b²−1)` is torsion-free, so removal changes zero elements. Its mod-2 nilpotent `b−1` does not mean integral 2-torsion. | Retain distinction between nilpotent special fibre and removed ℓ-power torsion. |
| LP2e.12 categorical datum | Empty legs; zero category | Γ⁰ is trivial and T₁=id; zero category centre is the zero ring with `1=0`, giving its unique datum. | Retain unit/coherence, not unrelated functors. |
| LP2e.13 excursion operator | Unit α,β; α=0; scalar external products | Operators are respectively 1,0 and `2·3=6`, not 5. Reindexing on compatible tuples preserves those values. | Retain actual composite and tuple hypothesis. |
| LP2e.14 coefficients/presentation | Same scalar data; Gm two legs folded to one | Coefficients 1,0,6 agree with operators. Bi-invariant two-leg algebra is `R[t±]`, one-leg algebra R; folding sends t to 1. With zero category the right-hand maps are singleton maps, so the square cannot be a pullback. | README correctly requires commutativity only. |
| LP2e.15 centre map | Gm, Γ=ℤ; zero category | Laurent generator maps to the invertible standard-character operator u, inverse to u⁻¹, and 1 to 1. In zero centre all images are 0=1. | Retain algebra-map and unit assertions. |
| LP2c.0 determinant/trace | Rank 0,1,2; char 2 | Rank-zero law is 1 with trace 0; rank-one law is multiplicative linear. Rank-two over ℚ has `(T(x)²−T(x²))/2=D(x)` and T(1)=2. Mod 2 ranks 0 and trivial 2 both have trace 0, degrees 0 and 2 differ. | Retain full laws in small characteristic. |
| LP2c.1 projected families | Γ=1; Q=C₂ inversion, trivial η and generator 2 or 1/2 | Component idempotents evaluate to 1 on η and 0 elsewhere. Connected invariants distinguish 2 from 1/2, whole-J invariants identify them. Over the zero ring 0=1, so the README correctly restricts its separating Check to nonzero rings. | Retain G°-invariants and component fibre. |
| LP2c.2 reconstruction | SL₂ unipotent; H=1; GL₂ in char 2 | U reconstructs as 1; H=1 reconstructs precisely η. Trivial rank-two determinant still has characteristic polynomial `(T−1)²`, despite zero trace. | Retain uniqueness up to connected conjugacy and determinant compatibility. |
| LP2c.3 characteristic-zero continuity | Unramified Gm character with Frobenius 2 over ℚ₃ | Inertia image `{1}` lies in rank-one ℤ₃-module; full Weil image `{2ⁿ}` need not be finite. | Retain inertia/relative continuity rather than finite full image. |
| LP2c.4 discrete continuity | Finite C₂ character into kˣ, char≠2; constant evaluation | Nontrivial character kernel has index 2 and open kernel in the finite topology. Constant class functions alone have full kernel and cannot detect that character. | Retain all invariant evaluations and the reconstruction hypothesis. |
| LP2c.5 semisimple character bijection | Gm characters; U and 1 | For Gm, evaluation at generator recovers the same unit a on both sides. U and 1 yield the same invariant family; restricting the parameter side to semisimple classes gives one class. | Retain semisimple qualification in both directions. |
| LP2c.6 group-algebra adapter | Linear combination `2[γ]−[δ]`, trivial rank-two representation | Trace extension is `2τ(γ)−τ(δ)`; trivial τ=2 gives 2. Its value at `[γδ]` is 2, but product of trace values is 4. | Retain linear trace adapter, not an algebra homomorphism. |
| LP2c.7 trace comparison | GL₂ U and identity; trivial rank 2 mod 2 | Both traces are 2 in char 0; mod 2 both are 0. Rational Newton identities recover determinant coefficients; division by 2 has no inverse in 𝔽₂. | Retain characteristic-zero trace-only comparison. |
| LP2c.8 Schur parameters | Simple one-dimensional object; sum of two inequivalent simples; zero object | End rings L, L×L,0; only first has specified L-algebra isomorphism to L. | Retain actual Schur isomorphism, excludes zero and arbitrary scalars. |
| LP3.0 highest weights/good filtrations | GL₂ lower B; SL₂ char 2; torus | Dimensions ∇(1,0)=2, ∇(0,−1)=2, ∇(0,1)=0. In char 2, ∇₂ has dimension 3 and its Frobenius-twist submodule dimension 2, with quotient dimension 1. Torus good-filtration dimension is 0; O(Gm) has infinitely many weights. | R02 imports highest-weight objects; retain direct-sum filtration convention. |
| LP3.1 good t-structure | Torus V in degree 0 and V[−1]; C₂ char 3 | H¹(V)=0 but H¹(V[−1])=V≠0; first connective, second not. `Ind₁^{C₂}1=1⊕sign`, whereas sums of trivial representations miss sign. | Retain shift and disconnected generators. |
| LP3.2 separatedness | Nonzero torus weight λ with dual test | `H⁰(Gm,k_λ⊗k_{−λ})=k`, so it cannot be infinitely connective; the zero object gives 0 in every degree. | Retain detection by all highest-weight tests. |
| LP3.3 free algebra good filtration | F₀; F₁ and Gm | Algebras k and k[t±]; conjugation weights all zero and rational Hⁱ for i>0 is 0. Filtration `0⊂k⊂k⊕k(1)` has factors weights 0,1. | Retain tensor theorem use. |
| LP3.4 induced-perfect category | G=1; X=point; bad PGLℓ adjoint quotient | First gives Perf(A); second Perf(BG). For bad PGLℓ, the unit skyscraper is absent from induced image although present in Perf(G/G). | Retain generation as a theorem, not definition. |
| LP3.5 bar criterion/Borel restriction | G=1, M=A | Augmented bar complex contracts to A; `M⊗_A M∨=A` as well. For the excluded PGLℓ skyscraper the comparison fails, rather than proving all objects induced. | Retain actual algebra and dualizability inputs. |
| LP3.6 tensor connectivity | A and N connective, torus; N=k in degree 0 | `A⊗_A N=N`; higher positive cohomology 0. Replacing N by k[−1] gives H¹=k, violating the premise. | Retain connectivity binder. |
| LP3.7 adjoint generation/counterexample | SLₙ, PGLℓ, Gm | Fundamental-group torsion orders 1,ℓ,1 respectively (π₁(Gm)=ℤ). PGLℓ unit skyscraper lies outside induced image; no such obstruction asserted for the other two. | Retain bad-prime obstruction and torus torsion convention. |
| LP3.8 twisted free generation | F₀,F₁; torus inversion | Rank-zero quotient BG; rank-one ordinary quotient G/G. Inversion on Gm gives transitive action with stabilizer μ₂, so quotient is Bμ₂ on that component. | Retain twisting, including nonreduced μ₂ in char 2. |
| LP3.9 derived unit fibres | Identity map of G; multiplication G²→G; constant map to Gm | Identity unit fibre is a point; multiplication unit fibre is G via `g↦(g,g⁻¹)`. Constant unit map has derived self-intersection with H⁻¹=k, not just an ordinary point. | Retain derived fibre. |
| LP3.10 tame fibre | Abelian torus commuting relation, q=3 | Ordinary tame equation `b²−1=0`; mod 2 it is `(b−1)²=0`. A commutator relation on a torus is identically 1 and its derived unit fibre has a nonzero exterior degree −1 class. | Retain actual tame map; do not replace by a reduced commuting locus. |
| LP3.11 fixed groups | Inversion C₂ on Gm in char 3 versus char 2 | Fixed μ₂ has two reduced points in char 3; in char 2 coordinate ring `k[ε]/ε²`, tangent dimension 1. | Retain prime-to-characteristic order. |
| LP3.12 cyclic resolution | Swap on Gm²; inversion on Gm | Swap fixed group diagonal Gm; inversion fixed equation `t²−1`, differential at 1 is multiplication by 2 (invertible in char 3, zero in char 2). | Retain order hypothesis in resolution. |
| LP3.13 Donkin fixed subgroup | Swap on K²; torus | Restriction of ∇λ⊠∇μ to diagonal is ∇λ⊗∇μ; for torus weights a,b it is weight a+b, again good. | Retain tensor-theorem step and solvability. |
| LP3.14 induction/counit | Gm, inversion, char 3, H=μ₂ | Sign induction consists of odd Laurent monomials; counit is sum of coefficients at t=1. Kernel includes `t³−t≠0`, both terms sign under H, so it has a good H° filtration. Identity-action counit kernel is 0. | R06 replaces noncomputational Check. |
| LP3.15 restriction generation | Same μ₂ fixed subgroup | Gm weights 0 and 1 restrict to trivial and sign, the two simples of μ₂; restriction to H°=1 gives only the underlying vector spaces. | R06 distinguishes full and connected groups. |
| LP3.16 bad-order counterexample | Swap on `(SL₂×SL₂)/μ₂`, char 2 | Fixed group has factor `(μ₂×μ₂)/μ₂≅μ₂` alongside PGL₂; nontrivial central character has weight 1 mod 2. Acting order 2 equals characteristic, outside LP3.15. | Retain actual non-smooth centre and excluded hypothesis. |
| LP3.17 fundamental group | Inner involution of SL₂, char 3; cyclic permutation of Kʳ | Connected fixed group Gm has π₁=ℤ and zero torsion, while SL₂ has π₁=0. Diagonal K has the same torsion subgroup as K, not r copies. | R06 supplies numerical distinction. |
| LP3.18 mapping approximation | One point; two points; bad PGLℓ circle | One-point value Ind Perf(BG); two-point value its tensor square. Bad PGLℓ circle image excludes the unit skyscraper. | Retain actual finite-input extension; approximation is not always equality. |
| LP3.19 free gerbe | F₀; Gm,F₁; PGLℓ,F₁ | Rank-zero module algebra k, comparison identity. Torus rank-one algebra k[t±] and comparison an equivalence; bad PGLℓ has missing skyscraper. | Retain full faithfulness versus equivalence. |
| LP3.20 wild elimination | P=1; C₂ inversion on Gm in char 3 | P=1 leaves the band unchanged. Inversion produces band μ₂ with identity component 1 and component order 2 prime to 3. No-section component contributes the zero category. | Retain finite union/empty cases. |
| LP3.21 tame reduction | Trivial wild group and tame Gm | Parameter algebra `k[a±,b±]/(b^{q−1}−1)`; perfect equivariant modules are graded perfect modules over it, generated by character twists. π₁ torsion is zero. | Retain good-π₁ categorical claim. |
| LP3.22 smooth centralizers | SL₂ versus GL₂, U, char 2 | SL₂ centralizer ring `k[a,b]/(a²−1)=k[ε,b]/ε²` is nonsmooth. GL₂ centralizer `k[a±,b]` is smooth. Lie(Gm)=k is abelian, not semisimple. | Retain very-good/reductive-pair alternatives. |
| LP3.23 étale quotient descent | Double cover t=u² in char≠2 at u=0 | Inertia C₂; without quotient ramification index 2 and derivative 0. Quotient by full C₂ gives k[t]→k[t], index 1 and derivative 1. | Retain inertia-killing hypothesis, not arbitrary finite quotients. |
| LP3.24 formal slices | Left translation of G on itself; trivial action at a smooth point | Translation stabilizer 1 and quotient point give zero-dimensional slice. Trivial action has stabilizer G and the whole formal neighbourhood as slice. | Retain stabilizer and separability data. |
| LP3.25 group Chevalley restriction | GL₂ and SL₂ | GL₂ invariants `k[s,p±]`, with `s=t₁+t₂,p=t₁t₂`; SL₂ invariant `t+t⁻¹`. Lie GL₂ instead has noninvertible determinant coordinate, `k[s,p]`. | Retain group statement; it cannot supply R01's Lie theorem. |
| LP2i.1 enhanced excursion comparison | Trivial H; torus | H=1 gives base algebra; torus rational higher invariants vanish and invariant algebra is the whole cocycle algebra for trivial action. Bad PGLℓ obstruction persists outside the hypotheses. | Retain stronger enhanced conclusion and separate scalar owner. |
| LP2i.2 invariant coefficient change | Tame torus q=3 from ℤ₂ to 𝔽₂ | Rank-two factor `ℤ₂[b]/(b²−1)` becomes `𝔽₂[ε]/ε²` of dimension 2; invariants on both sides are the whole factor. Reduction does not yield dimension 1. | Retain nonflat base change under good-π₁ theorem, distinct from LP2e.1. |
| LP2i.3 comparison strengths | Torus; bad-prime general case | Torus comparison kernel 0 and map identity. As a negative control in characteristic 2, `k[t²]→k[t]` is a universal homeomorphism with one geometric point per fibre but misses t; geometric bijectivity alone does not imply a ring isomorphism. | Retain separation of universal homeomorphism, rational iso and integral iso. |
| LP4.1 universal bundles | Gm weight 1, inverse weight, zero representation | Fibres carry characters t,t⁻¹ and zero module of rank 0. Tensor of weights 1 and −1 has weight 0; dual reverses weight. | Retain actual equivariant bundle, not just its rank. |
| LP4.2 perfect generation | W=1; tame torus; bad PGLℓ | W=1 gives Perf(BH). Torus gives graded perfect modules generated by character twists. Bad PGLℓ unit skyscraper is not generated. | Retain theorem's coefficient/π₁ hypotheses. |
| LP4.3 module equivalence | W=1; H=1; tame Gm | W=1 algebra is unit, so unit-modules give Ind Perf(BH); H=1 parameter stack is a point. Tame torus gives modules over its coordinate algebra with Gm-grading retained. Forgetting grading identifies distinct weights 0 and 1. | Retain enhanced module category and equivariance. |

### Pinned library and ownership audit

The manifest pins inspected were Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Searches were by objects (coaction equalizers, nilpotent exponential, algebraic induction, fixed subgroups, cotangent complexes, continuous cohomology, invariant quotients and parameter/excursion categories), not only suggested names. Native declarations opened include:

| Pin-relative file and line | Declaration/object and boundary checked |
| --- | --- |
| `Mathlib/GroupTheory/SemidirectProduct.lean:151` | `SemidirectProduct.rightHom`; algebraic projection, not a local Weil topology. |
| `Mathlib/Algebra/Algebra/Subalgebra/Basic.lean:1030,1042` | `AlgHom.equalizer`, membership; genuine algebra-map equalizer, not rational-point invariants. |
| `Mathlib/Algebra/Algebra/Subalgebra/Lattice.lean:381` | `AlgHom.equalizer_same`; trivial coaction specializes to the whole algebra. |
| `Mathlib/RingTheory/Flat/Equalizer.lean:279,294,302` | Canonical tensor-equalizer map, flat equivalence, underlying-map compatibility. |
| `Mathlib/RingTheory/Nilpotent/Exp.lean:50,53,185` | Polynomial exponential on a rational module/ring, nilpotent finite-sum theorem and ring-hom naturality. The total definition itself is not a theorem of group-scheme logarithms. |
| `Mathlib/RingTheory/Flat/Basic.lean:323` | `Module.Flat.lTensor_exact`; exactness requires flatness. |
| `Mathlib/AlgebraicGeometry/GammaSpecAdjunction.lean:608` | `Spec.homEquivAlgHom`, including contravariant direction. |
| `Mathlib/AlgebraicGeometry/ZariskisMainTheorem.lean:205` | `Scheme.Hom.exists_isIso_morphismRestrict_toNormalization`; locally finite type, separated and quasi-compact hypotheses retained. |
| `Mathlib/AlgebraicGeometry/Normalization.lean:122,169` | Normalization and its map; not all the excellent-base finiteness package. |
| `Mathlib/RingTheory/Extension/Cotangent/Basic.lean:61,333` | Two-term cotangent map and H₁ kernel; not the full animated cotangent complex needed here. |
| `Mathlib/RepresentationTheory/Character.lean:63`; `Mathlib/LinearAlgebra/Trace.lean:190` | Character/linear trace identity values; no general modular trace-only reconstruction. |
| `TauCeti/Algebra/AlgebraicGroup/PointsFunctor.lean:150`; `FunctorOfPoints.lean:154` in the same directory | Algebraic-group points functor and coefficient map, not condensed parameter schemes. |
| `TauCeti/Algebra/AlgebraicGroup/SpecialLinear/Basic.lean:195,380` | SL coordinate Hopf algebra and native matrix-points equivalence. |
| `TauCeti/GroupTheory/FixedSubgroup.lean:58` | Fixed subgroup as an equalizer; no scheme-smoothness theorem follows from that abbreviation. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/Functoriality.lean:207` | Ordinary continuous-cohomology functor on topological representations, not condensed derived Weil cochains. |

The nine scratch signature checks were `IsNilpotent.exp`, `IsNilpotent.exp_eq_sum`, `IsNilpotent.map_exp`, `AlgHom.tensorEqualizer`, `AlgHom.tensorEqualizerEquiv`, `AlgebraicGeometry.Spec.homEquivAlgHom`, the cited Zariski-main theorem, `Module.Flat.lTensor_exact`, and `CategoryTheory.PresheafOfGroups.OneCocycle`. The last is a Čech cocycle object, not a pre-existing group crossed-cocycle carrier. No binder change to a roadmap declaration was applicable because there are none.

The required `roadmaps grep` ownership searches were run against the indexed open heads and main, and relevant supplied sibling files and board packages were inspected. Supplier texts were also obtained with `roadmaps show`. Main was used for revisions of existing roadmaps. The following contracts were resolved against their actual texts (paths refer to each supplier's README):

| Supplier | Resolved section/line and scope |
| --- | --- |
| SmoothRepresentationsOfLocalGroups | SR.6.1 at lines 4799,4839,4849: cocycle/gauge/section, finite-wild discretization and integral scheme; SR.6.2 at 4883: wild strata; SR.6.3 at 4961,4988: excursions and scalar comparisons. Here the extensions are condensed/derived/categorical, and finite-wild scalar comparisons remain imported. |
| IntegralHeckeAndGaloisDeterminants | §0.7 at 1313,1389,1476,1519,1564: connected families, GL determinant comparison, invariant-word colimit, representing algebra and untwisted comparison; §§1.2,1.7: reconstruction. Prescribed nonconnected projection and Weil continuity are additional work here. |
| ArithmeticGaloisRepresentations | §1.11 at 1309,1336: integral quotient package and connected complete reducibility/closed tuples. LP2e explicitly extends beyond integral schemes and connected groups. |
| ReductiveGroupsPartII | RG2.2.3 at 3188: finite invertible-order fixed groups; RG2.5 at 6724,6931: pinned dual and L-group. Neither supplies R01's positive-characteristic Lie quotient. |
| ReductiveGroups | Layers 6,7,9 provide algebraic-group and integral pinned foundations; §10B at 1759 supplies R02's duplicate highest-weight objects; §11C at 2057 supplies a complex Lie quotient only. |
| LocalFieldsRamification | Layer 4 at 1154,1284,1297,1323: local Weil/inertia, wild/tame structure and arithmetic convention. The roadmap explicitly reverses Frobenius and degree together. |
| ClassFieldTheory | Layer 9 and the mixed-characteristic reciprocity contracts: local Weil topology and reciprocity; LP0.6a owns its equal-characteristic Artin–Schreier route rather than applying mixed-characteristic reciprocity there. |
| SchubertGeometry | S3.2 at 49: induced-module/section comparison; S5.5–S5.6 at 76–77: dominant vanishing/integral forms. These do not authorize a second highest-weight owner. |
| EnhancedDerivedSheaves | E0,E3: coherent functor/Kan-extension foundations; E1.8: perfect complexes; E5 at 1810,2010: descendability and animation. Its restricted descendability statement is not arbitrary faithful-flat descent; LP1.6a is a real added target. |
| DerivedModuleAlgebra | §§0.4,0.8–0.10 at 815,1018,1060,1093: full cotangent and derived algebra/base-change interfaces. |
| SchemeAndStackFoundations | §§0.20,0.21,0.30 at 1302,1394,1956; layer 1 at 2044; §2.18 at 3959; §§4.1–4.8 at 5066–5383: normalization/excellence, descent/stacks, perfect-complex and formal/deformation inputs. |
| DeformationAndDerivedPatchingAlgebra | §§3.2–3.4 at 572,603,626: regular/local/dimension and complete-intersection foundations. |
| DGAInfinity | Layers 5,8 at 431,520: derived modules and associative/Hochschild foundations. The commutative cotangent-to-Hochschild support construction remains here. |
| AlgebraicVectorBundles | L0–L2 at 215,228,269,306: sheaf tensor, duals, relative Spec and finite locally free bundles; not enhanced parameter categories. |

The board-package search also found `packages/ReductiveGroupsPartIII/design/README.md:87`, which plans characteristic-zero group Chevalley restriction. It is later in the supplied order (position 222 versus 60 here). The integral group restriction of LP3.25 belongs at this earlier roadmap and its characteristic-zero specialization should flow to that continuation, not create an upward dependency here. `packages/SpringerResolutionAndCharacteristicCycles/design/README.md:504` concerns coadjoint graph closures at p>h, not the invariant quotient required in R01. IntegralHeckeAndGaloisDeterminants §6.4 additionally has countable single-factor good filtrations for GL₂ over ℤ; that is distinguished from LP3.0’s arbitrary direct-sum field convention and general reductive group.

No additional fully qualified declaration collision occurs: this file declares nothing. The connected pseudocharacter, finite-wild excursion, fixed-subgroup and group-scheme owners are imported, with the two ownership defects R02–R03 called out rather than treating the whole roadmap as duplicate. GlobalShtukasAndFunctionFieldLanglands GS.5 and the geometric spectral action are consumers, not upward inputs. The broad ownership search also distinguishes the characteristic-zero Lie theory in `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md`, layer 7, from the positive-characteristic prerequisite in R01.

## Not verifiable

The fifteen-target sample above was independently selected because the brief supplies no usable seeded target list. It should not be read as a certification of an unavailable worker sample.

Jantzen's *Representations of Algebraic Groups*, second edition, was not available through the legal source service. The precise II.2 and II.4 page/number claims and I.10.4 proof references are therefore not certified from that book. FS and Touzé–van der Kallen support several of the mathematical statements, but do not establish Jantzen's pagination.

Haboush's DOI resolved to a JSTOR landing page without a legally retrievable text through the service; Richardson's DOI resolved to a Project Euclid landing page without a PDF link. Their primary texts were not read. The relevant restatements in BHKT and FS were available. Lusztig's paper was classified paywalled/uncertified by the service; its locator remains uncertified and is not re-requested. The accessible Fulman–Guralnick and FS discussions were used for the finite-unipotent-class input.

Kempf 1976 (homogeneous-space vanishing used in LP3.0) and Kempf 1978 (Corollary 3.5 used in LP2e.6) resolved to JSTOR landing pages without legally retrievable texts through the service. Koppinen 1984 (coordinate-ring good filtration, LP3.0) resolved to a Wiley endpoint returning HTTP 403. Those primary locators remain unverified. Donkin 1981 and 1985 were classified paywalled/uncertified and are not re-requested; FS is the available secondary account for the criterion and related filtration inputs.

Arinkin–Gaitsgory was retrieved as arXiv:1201.6343v4. Its Theorems 4.1.8 and 4.2.6, AG lines 1562–1587, concern quasi-smooth geometry over a characteristic-zero field (standing convention at AG line 1507). They are not a direct citation for arbitrary mixed-characteristic syntomic charts; LP1.14 explicitly owns that extension and also cites FS's relative formulation. Mathieu's original paper was retrieved from Numdam: Theorem 1, printed p.626, Mathieu lines 61–64, supplies the tensor-product filtration without the earlier exceptional-type restrictions. Neither text was silently generalized to the mixed-characteristic setting.

Unavailable texts are consolidated in `needs-references.toml`, with stable keys and the legal endpoints tried. No unavailable text is being treated as a source error. No source manifest was edited during this review.

## Source issues

- **Error** in FS at §VIII.2.2.1, printed p.282: the source identifies degree-two Hochschild cohomology with degree-one cotangent-dual cohomology; it should give a natural map, not a general isomorphism; affects the proof.
- **Misprint** in FS after Definition VIII.3.4, printed p.287: the source identifies excursion geometric points with points of the framed cocycle scheme; it should identify them with points of its invariant quotient; affects a stated result.
- **Misprint** in FS in the proof of Theorem VIII.4.1, printed p.292: the source calls the reindexing square cartesian; it should call it commutative, since the zero-category two-leg torus example is not cartesian; affects the proof.
- **Misprint** in FS at §VIII.5.1, printed p.294: the source calls highest weights cocharacters of the torus; it should call them characters; affects nothing.
- **Error** in KSS at §1.20(i)(a)–(b), printed p.8: the source requires finite full inertia image while requiring identity projection to the Weil group; it should require finite image in the finite-action L-group quotient; affects a stated result.
