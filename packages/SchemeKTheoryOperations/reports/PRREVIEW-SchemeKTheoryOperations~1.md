# Review of SchemeKTheoryOperations (pull request #1229 at b1e77b8)

**Verdict:** needs changes

Seven findings: three P1, one P2 and three P3. The gate passes. The blockers concern the definition of integer-graded K-groups, torus characters over Dedekind domains, two supplier locators, and duplicated highest-weight theory.

## R01 (P1) — Define integer-graded groups from the nonconnective spectrum

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:381`, `:695` and the relative API at `:1672`. Line 695 specifies “K_n(X on Z) := π_n K(X on Z), n ∈ ℤ”.

**Claim:** These are the integer-graded supported groups used by localization, Bass contraction and the later products. But the conventions at line 23 explicitly reserve K for connective K and 𝕂 for nonconnective K. The API therefore kills every negative group, contrary to the surrounding definition at line 691 and the roadmap's own nodal Check at line 420.

**Witness:** For full support on Spec(k[x,y]/(y²−x²−x³)), char(k)≠2, connective π₋₁=0. Nonconnective K₋₁ is the cokernel of (a,b)↦(a−b,a−b) on ℤ², hence ℤ.

**Repair:** Define all integer-indexed absolute, supported and relative groups using 𝕂 (the proposed Scheme.KB model). Keep separately named connective spectra and state their nonnegative comparison. Update the maps and pairings in those API blocks consistently. The repaired definition gives ℤ on the nodal example, 0 on Spec ℤ in degree −1, and 0 for empty support; it preserves the existing nonnegative comparison. This is a conflict between two explicit definitions, not a request to change the intended mathematics.

## R02 (P1) — Retain K₀(A) coefficients in torus characters

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:1809`; also the trivial-torus Check at `:1819`. The paragraph claims a representation-ring isomorphism with ℤ[X] from weight ranks.

**Claim:** Section 6.3.1 starts over a Dedekind domain A. Finite projective weight modules need not be free. Taking their ranks loses ideal classes, so neither the character isomorphism nor the Check that the trivial torus gives ℤ is true in that scope.

**Witness:** For A=ℤ[√−5], I=(2,1+√−5), [I]−[A]≠0 in K₀(A), but its rank character is 1−1=0. Serre.1968 lines 430–446 gives K₀(A)[X], specializing to ℤ[X] for principal A.

**Repair:** Define the general character by the classes of the weight modules, with target K₀(A)[X], and prove its inverse by putting a finite projective module in a prescribed weight. Specialize to rank-valued ℤ[X] over fields/PIDs, or under an explicit K₀(A)≅ℤ hypothesis. Preserve the Dedekind generality. Change the trivial-torus Check to K₀(A), and use the existing ideal I as a negative control: the corrected character retains [I]−[A], while rank kills it. The following split-reductive field and PID comparisons can keep their ℤ[X]^W targets.

## R03 (P1) — Resolve the Moore-spectrum supplier sections

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:73`: StableHomotopyKTheory §§7.30–7.31 are cited for additional coefficient products and Eₙ Moore structures.

**Claim:** These prerequisites are described as supplied at those sections, but the cited sections contain different constructions. No declared gap licenses the discrepancy.

**Witness:** `TauCetiRoadmap/StableHomotopyKTheory/README.md:2643` is §7.30 on deformation categories; `:2659` is §7.31 on HF₂-synthetic spectra. The required results occur at §7.33, `:2686`, and §7.34, `:2703`.

**Repair:** Cite §§7.33–7.34, carrying their actual hypotheses: the Browder variant includes η·1=0, the homotopy-group vanishing conditions and the extra modulus-3/modulus-4 conditions; the Eₙ result has q≥n+1 at odd primes and 2q≥3(n+1) at 2. Keep §7.28 for its existing range. This supplies Hℤ/2 with its commutative product and S/p² with an E₁ structure at odd p, while excluding the unsupported S/p exponent-one inference. It does not require a new supplier or a change of merge order.

## R04 (P2) — Import the existing highest-weight classification

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:1809`, especially the instruction to prove the classification of absolutely simple rational representations and highest-weight triangularity; supplier list at `:89`.

**Claim:** This foundational representation theory is assigned here again, although it is existing roadmap work. The new exact Grothendieck-ring comparisons do not require a second owner of highest-weight theory.

**Witness:** On main, `TauCetiRoadmap/ReductiveGroups/README.md:1741` constructs torus weights/formal characters; `:1770`–`:1777` gives highest lines, simple L(λ), classification by X⁺ and absolute simplicity. Highest-weight order is at `:1799`.

**Repair:** Import ReductiveGroups §§10A–10B in scope and supplier contracts, deleting the repeated construction as a target here. Keep the new passage to exact representation K₀/G₀, Dedekind-base weight classes, and generic/residue comparisons. The import has the required positive-characteristic scope: for SL₂ over 𝔽₂, L(2) has character t²+t⁻² and dimension 2, whereas ∇(2) has character t²+1+t⁻² and dimension 3. Neither the imported classification nor the repaired comparison asserts semisimplicity.

## R05 (P3) — Cite the spectrum comparison, including its degree-zero condition

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:405`, citing Schlichting 5.10 and Theorem 7.1 for the connective-cover comparison in every nonnegative degree.

**Claim:** The result is appropriate for Perf, but those locators do not establish the asserted spectrum comparison. Section 5.10 sets up the Frobenius pair; Theorem 7.1 compares negative groups.

**Witness:** Schlichting lines 963–990, Definition 11.4 and Theorem 11.7, pp.20–21, constructs the spectrum and identifies positive homotopy and degree-zero K₀ of the idempotent completion.

**Repair:** Cite Definition 11.4 and Theorem 11.7, and explicitly use idempotent completeness of the perfect derived category to obtain degree zero. Keep the earlier locators only for their separate model/negative-comparison roles. For Perf(k), both degree-zero groups are ℤ. For the dense triangulated subcategory of even Euler characteristic, K₀ maps as 2ℤ→ℤ upon idempotent completion; the extra argument really matters.

## R06 (P3) — Remove undeclared Lean names from the README API catalogue

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:236`, `:381`, `:1809` and the analogous API bullets throughout.

**Claim:** The README presents proposed own declarations such as `perfCategory`, `Scheme.K` and `TauCeti.RepresentationRing.formalCharacter` in backticks, although Suggested.lean declares only two predicates and one theorem. Under the requested README convention, these own names claim declarations in Suggested.lean.

**Witness:** `TauCetiRoadmap/SchemeKTheoryOperations/Suggested.lean:38`, `:46`, `:57` contains exactly IsStrictlyPerfect, IsPerfectComplex and IsPerfectComplex.exists_strictlyPerfect; none of the three sampled catalogue names is declared there.

**Repair:** Express the proposed API facts as mathematical prose. Retain the three genuine own Lean names and exact names of imported declarations. Do not add catalogue declarations or stand-ins to Suggested.lean. Rechecking the sample then leaves three actual own names and zero missing claimed declarations. The worker's readme-ids scanner did not catch this form violation.

## R07 (P3) — Give dependencies per target, not only per layer

**Location:** `TauCetiRoadmap/SchemeKTheoryOperations/README.md:1566`–`:1597`, representative of the document; the only explicit `*Needs:*` line is at `:1305`.

**Claim:** Layer-level dependency lists do not identify the statement and proof-route inputs of the individual targets, as the requested roadmap form requires. In particular, localization, Bass comparison, projective cohomology and blowup decomposition have different prerequisites.

**Witness:** There are 63 numbered topic subsections and seven layer dependency lists, but only one `*Needs:*` line. Section 5.7 invokes projective cohomology and derived pushforward; §5.8 additionally uses the exceptional filtration and categorical additivity.

**Repair:** Add a separate precise Needs line for each theorem/construction, naming existing supplier sections and earlier local targets. For §5.7 resolve StableReduction Layer 4, §2.3 and §5.3; for §5.8 additionally resolve §5.7 and the supplied categorical additivity. Preserve §3.3's direct Frobenius-localization route so that it does not acquire a dependency on §5.6's Bass comparison. The codimension-one identity blowup should use no exceptional summand, while codimension two uses one; the dependency lists should reflect that proof rather than importing an entire later layer.

## Verified sound

The review read the complete README and Suggested.lean, including the API bullets and Checks, and compared the source sample, ownership, suppliers, signatures and conventions. The computations below are witnesses for the mathematical statements; equivalent formulations in an API use the same witness. They do not claim that an elaboration with sorry proves the mathematics.

**Gate and scope.** The head is exactly b1e77b8b3c5625a61e8fcbcc8c1be50d8a8033a5. The outside-folder diff is empty. The worktree remained unchanged. The worker's gate reports zero failures for all scanners, dependencies and the targeted build, ending `build=0 OK`; no stray file was found. The independently run dependency check returned:

```text
depcheck: 205 roadmaps, 1460 edges, 0 problem(s)
```

There was no UPWARD or CYCLE line. The two wrong supplier locators in R03 are not graph-order failures. The document uses general qcqs perfect theory, retains the non-Noetherian and negative-degree cases, and distinguishes downstream comparisons from prerequisites. No computational algorithm, copied source passage, sorry'd data or set_option was found.

**Lean acceptance test.** Direct elaboration of `TauCetiRoadmap/SchemeKTheoryOperations/Suggested.lean` succeeded with only the sorry warning on its one theorem. A scratch copy elaborated `#check @...` for all three declarations. The theorem retains CompactSpace, QuasiSeparatedSpace, HasDerivedCategory, the finite-type quasicoherent resolution hypothesis and the given perfect complex; neither predicate has a silently dropped binder. The README and signature agree on these hypotheses. A scratch one-tactic probe confirmed that simp, rfl and infer_instance do not close the theorem. Object-based searches found no single pinned strict-global-representative theorem to use by exact. There is no padding finding.

The headline inventory is: global strict representatives (§1.6); enhanced/complicial model comparison and finite descent (§§1.5,1.7); K/G comparison and proper transfers (Layer 2); supported localization and dévissage (§§3.3,3.5); spectral descent, Gersten and descent/coniveau comparison (§§4.4–4.9); perfect/Witt hyperdescent (§§4.10–4.11); projective bundle, Bass and blowup formulas (§§5.5–5.9); scheme Adams operations and weight decompositions (§§6.8–6.11); Chern-character isomorphisms, Riemann–Roch, excess and supported cycles (Layer 7). The first is stated. The module docstring names the remaining families and their missing enhanced-category, spectrum, operations or Chow/comparison carriers. No additional headline statable on the pinned native carriers was identified. The two kept definitions have real bodies and support the actual global-representative theorem.

**Pinned declarations inspected.** Mathlib is pinned at 6b7abb3 and Tau Ceti at a91d3aa. The following are library-relative file names, at those pins:

| File and line | Declaration read and limitation checked |
| --- | --- |
| `Mathlib/AlgebraicGeometry/Modules/Sheaf.lean:36`, `:339` | Scheme.Modules is the module-sheaf category; restrictFunctor is the actual restriction used by the local predicate. Pullback identities/composition at :443, :449, :468 do not supply a derived K-functor. |
| `Mathlib/Algebra/Category/ModuleCat/Sheaf/LocallyFree.lean:61` | IsLocallyFree imposes local freeness, not finite rank by itself. |
| `Mathlib/Algebra/Category/ModuleCat/Sheaf/Generators.lean:142`; `Quasicoherent.lean:269` in the same directory | IsFiniteType and IsFinitePresentation are distinct. The Lean predicate explicitly combines locally free and finite type. |
| `Mathlib/RingTheory/OrderOfVanishing/Basic.lean:324` | Ring.ordFrac has multiplicative codomain ℤᵐ⁰; the README correctly requires a nonzero-element/additive-order adapter. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Exact.lean:163` | ExactK0 is the quotient by exact-sequence relations, with essential smallness among its assumptions. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Triangulated.lean:139`, `:154`, `:169`, `:193`, `:200` | TriangulatedK0, triangle relation, subtraction and shift signs already exist; the new target is their comparison with scheme π₀. |
| `TauCeti/Algebra/Category/ModuleCat/CartanMap/Basic.lean:124`, `:215`, `:222`, `:381` | Finite-projective and finite-module categories, exact structures and cartanMap are existing objects. |
| Same CartanMap file, `:515`, `:530`, `:673`, `:686` | moduleResolutionEquiv, moduleEulerClassOf, cartanInverse and cartanEquiv retain the finite-resolution hypothesis. |
| `TauCeti/AlgebraicGeometry/Modules/TensorProduct.lean:52`, `:57`, `:63` | Monoidal, symmetric and closed structures are underived. |
| `TauCeti/Algebra/Category/ModuleCat/Sheaf/TensorProduct/Closed.lean:73`, `:104` | TauCeti.SheafOfModules.monoidalClosed and root SheafOfModules.dual provide the stated underived interface. |
| `TauCeti/AlgebraicGeometry/Modules/Quasicoherent/Affine.lean:35`, `:42`, `:50` | affineEquiv and its functor/inverse formulas require IsAffine X. |
| `TauCeti/RepresentationTheory/RepresentationRing/Basic.lean:106`; `Exact.lean:42` | repRing is split K₀ of FDRep. The exact-K₀ comparison in Exact has finite-group and invertible-order hypotheses; it does not replace the new Dedekind/rational-group-scheme construction. |

**Ownership and suppliers.** Object-based `roadmaps grep` searches, supplier `roadmaps show` reads, main-file reads, the board packages and the supplied sibling checkouts were used. The citation scanner's 215 unresolved-name leads were not treated as 215 mathematical findings. Own proposed names account for many of them. No collision with the three fully qualified Suggested.lean names was found. Open-work ownership was checked against the accessible heads, including SchemeKTheoryOperationsPartII, GeneralAlgebraicKTheoryPartII, ArcTopologyAndDescent, MotivicEtaleKTheory, AlgebraicVectorBundles and AlgebraicKTheory.

The following resolves the cross-roadmap interfaces by object. Line locators below are in the named roadmap's README, on main where present and otherwise its supplied/open head; the source file is `TauCetiRoadmap/<name>/README.md`.

| Supplier or consumer | Resolution and ownership conclusion |
| --- | --- |
| AlgebraicVectorBundles | L0A–L0C, lines 215, 228, 254: finite locally free category and affine projective dictionary. Kept strict-complex and K-realization targets differ from the bundle constructions. |
| DGAInfinity | Layer 5, lines 431–465: compact/thick perfect dg-modules and projective models. The opposite-algebra conversion addresses its right-module convention. |
| GrothendieckEulerForms; AlgebraicKTheory | Exact/triangulated K₀ and Euler/Cartan objects are imported through the pinned modules above. AlgebraicKTheory §2.3, line 307, and Layer 4 supply determinant/SK₁ and semilocal inputs. The README transports them rather than rebuilding them. |
| GeneralAlgebraicKTheory | §§3.12,3.14;4.14,4.16; Layers 5–6; §§7.2–7.7,8.13; Layers 9–10; §§11.7–11.16,12.10–12.11,13.6 were resolved. In particular §11.14, line 2614, distinguishes idempotent-completed degree zero; §§12.10–12.11, lines 2811,2849, supply Bass comparison and negative vanishing. Scheme localization need not await scheme Bass. |
| StableHomotopyKTheory | Layer 5 and §§7.1–7.10,7.21–7.28 resolve spectra, coefficients, towers and convergence. §§7.30–7.31 fail as cited: R03. Correct providers are §§7.33–7.34. |
| EnhancedDerivedSheaves | E1.8/E1.8DMA, lines 840,888, provide enhanced perfect categories; E1.9, lines 925–1057, provides the proper-support variants. E2.8, lines 2399,2470,2495,2519, provides proper coherence and perfect h-descent. E5 presentability, cotangent-export, animation and spectra-comparison are present; E4.2/E4.5 provide completion interfaces. Scheme v-descent and Witt perfect effectivity remain distinct new targets. |
| SchemeAndStackFoundations | §0.9, lines 848–859, approximation; §0.15, line 1090, Popescu; §§0.24–0.26, lines 1565–1640, perfect/Witt geometry; §§2.12–2.14, lines 3696,3731,3805, Nisnevich inputs; §2.18, line 3959, DQCoh and derived operations; §4.19, lines 6374,6409, alterations; §§5.7–5.8, lines 6987–7107, resolution property and geometric GRR. Spectral descent, the finite m-pseudo-coherent refinement and K-transfer comparisons are additional objects here. |
| StableReduction | Layer 4, lines 529–545: Rees geometry. SchemeKTheoryOperations owns the regular-immersion K-theoretic decomposition, not another blowup construction. |
| AlgebraicModuliForArithmeticGeometry | §§1.3,1.5 supply flags and field projective-space regularity. Relative projective-bundle regularity and Quillen's exact-category resolution are the declared extensions here. |
| JacobianChallenge | Layers A–C supply Picard/divisor dictionaries, curve duality and proper coherence (proper-coherence statements at lines 145–170). The target adds derived/spectral realizations while retaining flat-coefficient hypotheses for ordinary cohomology/base change. |
| ReductiveGroups | Layers 0–1,4,9 resolve comodules, torus gradings and split integral groups. Sections 10A–10B, lines 1733–1809, also own the highest-weight theory omitted from the supplier contract: R04. |
| ColemanIntegration | L3.Fa.1, lines 2397–2426, is the regular separated finite-dimensional ample-family Quillen package, including its exact-cube comparison. The README preserves these names and treats comparison as downstream, not an upward prerequisite. |
| MotivicEtaleKTheory | §2.0a owns multirelative fibres; §2.3 higher Chow; §§3.3–3.4,4.1–4.2,7.1 the Deligne/regulator objects. Ordinary one-fibre perfect K-theory and the present cycle comparisons do not reconstruct these. |
| SchemeKTheoryOperationsPartII | Its opening scope, line 7 onward, starts from this ordinary-scheme theory and extends it. No declaration-name collision was found. |
| ArcTopologyAndDescent; DiamondsAndVStacks | The former consumes the perfect-scheme comparison in §4.10. The latter's perfectoid v-site has different objects; it does not already provide the ordinary perfect-scheme v-site. Neither is made an upward supplier by the comparison here. |

**Seeded source audit.** All 15 requested targets were checked against legally obtained texts, including the stated hypotheses and page/number conventions. No additional locator explicitly marked unverified was found in the README. GS99 uses the archived 60-page version specified by the bibliography; BS17 uses v3; printed pages and PDF pages were distinguished. For three scanned works the numbered extraction did not finish; their cited pages were read as rendered PDFs. The source-service attempts obtained legal copies of all 26 named non-Stacks works, as well as the five Stacks chapters used in the main checks. No superseded fetch failure is an outstanding reference request.

| Target | Text actually inspected | Outcome |
| --- | --- | --- |
| 1.5 Models/universes | TT90 lines 2607–2775 (Definitions 3.1–3.3, Lemmas 3.5,3.8; pp.312–316), 6980–7002 (Appendix F, pp.431–432); Schlichting lines 589–603 (5.10,p.13); Thomason93 §4, pp.213–215 | Strict/flat/coherent comparisons have their stated scopes. Acyclic-retract correction is needed and is explicitly retained. Smallness is for derived models, not all chain representatives. |
| 1.6 Global representatives | Stacks.perfect lines 4279–4430, especially Lemma 37.2/tag 0F8F at 4392–4399 and roof lemmas 37.3–37.4 | qcqs plus the resolution property gives bounded finite-locally-free representatives; neither global freeness nor an affine hypothesis is needed. |
| 2.1 K/G models | TT90 lines 2607–2648, pp.312–314; Schlichting lines 963–990, Definition 11.4/Theorem 11.7, pp.20–21 | Correct intended constructions; R01 is the contradictory grading definition and R05 is the wrong comparison locator. |
| 2.3 Proper images | Stacks.perfect lines 249–257 (08D5), 311–312 (08DZ), 1213–1222 (08E2), 3102–3118 (08EV); TT90 lines 2872–2910, pp.319–320 | Proper coherent and perfect scopes are separated. The arbitrary-base flat-proper statement includes finite presentation, avoiding TT90's overstatement. |
| 3.2 Extension/localization | TT90 lines 3587–3668 and 3791–3845, §§5.2.2–5.2.4,5.5.1–5.5.4, pp.338–344 | Object extension has the K₀-image/retract qualification; maps and nullhomotopies use roofs. Quasi-compact complements are retained. |
| 4.9 Descent/coniveau | Weibel lines 27221–27235, V.10.12, PDF p.457; GS99 §2.2.4, pp.33–34, and §5.4,p.52 | The comparison needs local Gersten and a filtered comparison, not merely equality of E₂ groups. Both are stated. |
| 4.10 Perfect h/v | BS17 lines 173–180,375 onward,1864–1880,1963–1972,2151–2186; Definitions 2.1,11.1, Lemma 2.12, Theorems 11.2,11.12 and Remark 11.13 | Correct ordinary perfect-scheme topology and restricted derived Čech input. The roadmap's mapping-space/core distinction avoids the source's off-by-one slip. |
| 5.3 Projective cohomology/Koszul | TT90 lines 3298–3354, §§4.5–4.6, pp.330–331 | Quotient convention, negative twists, determinant dual and Koszul signs agree. Rank zero/one are treated separately. |
| 5.7 Blowups | Thomason93 §1.2,p.197; Lemmas 2.3–2.5,pp.200–202 | Perfect maps, adjunctions and twisted vanishings support the targets. The d≥2 restriction on the recovery calculation is necessary and retained. |
| 6.1 Products | TT90 lines 2823–2871, §3.15,pp.318–319 | Tensor/support and external products have the appropriate perfect/coherent hypotheses. Relative products are fibres, and higher tensor products are distinguished from the auxiliary square-zero λ-product. |
| 6.3 Representation rings | Serre.1968 lines 153–231,430–446,487–581; Propositions 2–4,7, Theorems 4–5,pp.40–42,47–51 | Finite-projective covers are valid over Dedekind bases. The torus coefficient ring is wrong in the roadmap: R02. Highest-weight ownership is R04. |
| 6.9 Weights/coefficients | Soulé lines 885–935, Proposition 5,pp.513–514; GS99 Definition 1/Proposition 5,pp.38–41, Theorem 3,pp.46–47, Proposition 8,p.48 and p.52; Geisser lines 91–178,§1.1,pp.3–4 | Separate individual-γ and full filtration bounds; preserve integral endpoints, odd coefficients, Bockstein and eigenvalue separation. The roadmap uses an ample-family scope where the vector-bundle comparison is justified. |
| 7.3 γ-character | Soulé lines 1533–1567,§7.1,p.532 | Newton polynomials divided by i!, rational associated-graded comparison and nilpotence scope agree. |
| 7.6 Excess/self-intersection | Thomason93 Theorem 3.1,p.206 and Lemma 3.2/(3.1.4),p.207 | Supports, locally free excess conormal, all Tor degrees and conormal rather than normal factor agree. Ambient regularity is not required for this perfect-transfer formula. |
| 7.7 Supported cycles | GS87 Theorem 8.2,pp.274–275; LiLiu.2021 lines 3036–3108,Appendix B,(B.3),pp.60–61; Zhang.2021 lines 2493–2536,§9.1,pp.924–925 | GS87 is the primary general source. Li–Liu and Zhang are supported/arithmetic applications; they are not used to silently enlarge their particular ambient scope. |

**Computed adversarial witnesses.** These 210 rows cover the 63 numbered topic subsections, including all sampled targets, the headline families and the mathematics touched by the findings. In the table, k is a field unless specified, shifts are cohomological, and O means the structure sheaf. “Retain” means that this computation found no defect in the stated scope; it is not a substitute for the source check. The R labels specify the required change.

| Statement | Instances tried | Values computed on the two sides / negative control | Result; change |
| --- | --- | --- | --- |
| 1.1 Strict perfectness | O(1) on P¹; skyscraper at 0 on A¹ | O(1): bounded and locally rank 1, hence true; skyscraper: local ranks 0 and 1, hence false | Retain |
| 1.1 Local versus global summand | O(1) on P¹ | Hom(O(1),Oʳ)=0, although its local free rank is 1 | Retain |
| 1.1 Zero and empty scheme | Zero complex; Spec(0) | Each term is zero; bounds [0,0] work; both predicates true | Retain |
| 1.1 Term bounds versus acyclicity | O in all degrees ≤0; its identity cone | First has infinitely many nonzero Hⁱ; cone has Hⁱ=0 but infinitely many nonzero terms; strict predicate false for both | Retain |
| 1.1 Cone and shift signs | k→0; k→k identity | Cone(k→0) has Euler −1; identity cone has 1−1=0 | Retain |
| 1.1 Local lifting bound | P=N=k[0], M=0, a=1 | Claimed H-conditions hold, but id(k)≠0 cannot lift; P⁰≠0 violates the required lower term bound | Retain negative control |
| 1.1 Surjective lifting | k²→k, first projection | Vector 1 lifts to (1,0); composite is 1 | Retain |
| 1.1 Nullhomotopy | N=Cone(id Q), M=0 | Identity contraction gives every map P→N the zero homotopy class | Retain |
| 1.2 Finite-level pseudo-coherence | ℤ/n; ⊕ℕℤ | ℤ/n has two finite free terms, hence finite type and presentation; countable free module has infinitely many generators and fails level 0 | Retain |
| 1.2 Pseudo-coherent not perfect | k over k[ε]/ε² | ε-periodic resolution has one generator in every step; Torᵢ(k,k)=k for every i≥0 | Retain |
| 1.2 Local versus uniform bounds | ⨿ₙSpec k with k[n] | Each component has amplitude [−n,−n]; no finite global interval contains all −n | Retain qcqs restriction |
| 1.2 Tensor amplitude | k⊗ᴸ over k[x] with itself | Over k: degrees −1,0; over k[x], each copy of k contributes [−1,0], giving [−2,0] | Retain |
| 1.2 Shift of amplitude | k[1] | Only H⁻¹=k; interval [0,0] shifts to [−1,−1] | Retain |
| 1.3 Local perfectness | ℤ/n; residue field of dual numbers | First represented by [ℤ→ⁿℤ], true; second has nonzero Tor in every degree, false | Retain |
| 1.3 Derived dual/tensor | k²[1], k³ | Dual is (k²)∨[−1]; tensor has dimension 6 in degree −1; Euler −6=(−2)·3 | Retain |
| 1.3 Retracts | Projector diag(1,0) on k² | Image k is finite/projective; rank 1+1=2 under complementary splitting | Retain |
| 1.4 Affine comparison | Spec ℤ and ℤ/2 | Tilde followed by sections gives ℤ/2; strict resolution has H⁰=ℤ/2 and H⁻¹=0 | Retain |
| 1.4 Coherator versus identity | Quasicoherent tilde of A² | Unit/counit recover A², rank 2 on both sides; this tests only the supplied quasicoherent subcategory | Retain |
| 1.5 Models and universes | Add acyclic [M→id M] of arbitrarily large cardinality | Derived object stays 0 and K₀ class stays 0; chain carriers have unbounded cardinalities | Retain small-model qualification |
| 1.5 Corrected approximation | Bounded vector-space complexes, Euler-equivalence weak maps | A⊕A[1] has Euler 0 while retract A has Euler 1; the extra acyclic-retract condition fails | Retain correction |
| 1.5 Flat/projective comparison | [ℤ→²ℤ] | Flat and projective models both give H⁰=ℤ/2, Euler 1−1=0 | Retain |
| 1.6 Global strict headline | P¹ point; ℤ/n; empty scheme | [O(−1)→O] resolves the point; [ℤ→ⁿℤ] resolves ℤ/n; zero resolves empty scheme | Retain Lean theorem |
| 1.6 Resolution-property necessity | Doubled affine plane | Naive bundle K₀=ℤ, perfect K₀=ℤ²; an origin class (0,1) cannot come from diagonal ℤ | Retain hypothesis |
| 1.6 Derived isomorphism, not literal equality | E plus a contractible non-finite summand | H(E⊕Cone(id M))=H(E), but its terms need not be finite; Q(E⊕Cone(id M))≅Q(E) | Retain conclusion |
| 1.7 Core truncation | Amplitude [0,0], k=𝔽₃ | Map(k,k) is discrete with 3 points; core has π₁=k×=C₂, so 1-truncated, not 0-truncated | Retain +1 |
| 1.7 Enhanced versus triangulated gluing | Identity cover of Spec k | Descent object is k, endomorphism space has π₀=k and automorphisms k× on either side | Retain enhanced carrier |
| 2.1 π₀ and exact additivity | k²→k³→k | 3=2+1; a [k²→0 k³] complex in degrees −1,0 has Euler 3−2=1 | Retain |
| 2.1 Naive versus perfect K | Doubled affine plane | ℤ versus ℤ² in degree zero; separate origin classes survive only on the latter | Retain distinction |
| 2.1 Negative grading | Nodal affine curve, full support | π₋₁ connective=0; coker(diagonal difference ℤ²→ℤ²)=ℤ | Fails; R01 |
| 2.1 Regular negative vanishing | Spec ℤ; Spec k; empty | Nonconnective K₋₁=0,0,0 respectively | Retain |
| 2.1 Connective cover at zero | Perf(k); even-Euler dense subcategory | First ℤ→ℤ is identity; second 2ℤ→ℤ is not onto | Retain with R05 locator/idempotence argument |
| 2.1 G-theory class | A=k[ε]/ε² | [A]=[k]+[k]=2[k] in G₀(A)=ℤ | Retain |
| 2.2 Pullback preserves perfectness | k[t]→k, P=[A→ᵗA] | Pullback is [k→⁰k], still strict; cohomology k in degrees −1,0, Euler 0 | Retain derived pullback |
| 2.2 Composition and identity | ℤ→𝔽₂→𝔽₄ applied to ℤ² | Successive and composite pullbacks both give 𝔽₄²; identity gives ℤ² | Retain |
| 2.2 Finite-Tor G pullback | k[t]→k versus k[ε]/ε²→k | First Tor only degrees 0,1; second Torᵢ=k for all i, not bounded | Retain finite-Tor hypothesis |
| 2.3 Proper transfer | P¹→Spec k, O(−1), O(−2), O(n) | Euler 0,−1,n+1, respectively | Retain |
| 2.3 Finite locally free transfer | ℤ→ℤ[i] | Pushforward rank 2; transfer of a pulled-back rank r bundle is 2r | Retain |
| 2.3 Proper alone not K-perfect | Spec k→Spec(k[ε]/ε²) | Pushforward k has infinitely many nonzero Tor groups, despite properness | Retain perfectness condition |
| 2.3 Flat proper needs finite presentation | R=∏ℕk, I=⊕ℕk, Spec(R/I)→Spec R | All R-modules are flat; I is not finitely generated, so R/I is not finitely presented/perfect | Retain finite-presentation repair already present |
| 2.3 Perfect is not coherent over arbitrary base | A=k⊕V, V²=0, V infinite-dimensional; differential e∈V\{0} | [A→ᵉA] is strict, but kernel=V is not finitely generated | Retain separate K/G scopes |
| 2.4 Tor-independent base change | Point self-square in A¹ | Derived pullback k⊗ᴸ_A k=k⊕k[1], Euler 0; underived k has Euler 1 | Retain Tor independence for underived square |
| 2.4 Projection formula | P¹, O(n), constant bundle kʳ | χ(O(n)⊗kʳ)=r(n+1)=rχ(O(n)) | Retain |
| 2.5 Affine Cartan comparison | Finite projective A²; ℤ/n | Projective class 2[A] on both sides; Euler of ℤ/n=[ℤ]−[ℤ]=0 | Retain supplied-map comparison |
| 2.6 Regular Cartan | k versus dual numbers | k: K₀→G₀ is 1↦1; dual numbers: 1↦2, not an isomorphism | Retain regularity |
| 2.6 Compactness | D(k), k versus ⊕ℕk | Hom(k,⊕k)=⊕k; identity of ⊕ℕk has infinitely many coordinates and does not factor through a finite subsum | Retain |
| 2.7 Continuity | A=colim k[t₁,…,tₙ], matrix using t₁,t₂ | Matrix and its finite relations descend to stage 2; no bound is asserted for arbitrary infinite matrices | Retain finite-presentation data |
| 2.7 Negative G vanishing | Noetherian dual numbers | G₋₁=0 by coherent dévissage; singularity does not force negative G | Retain distinction from K |
| 3.1 Supports | Cone(t), O on A¹, empty/full support | Cone(t) restricts to 0 on D(t), O does not; empty-supported category is 0, full is Perf(X) | Retain |
| 3.1 Support is a subset | V(t) and V(t²) | Same supported perfect category; k[t]/t and k[t]/t² have units k× and k×·(1+tk) | Retain no subscheme substitution |
| 3.1 Support intersection | Points 0 and 1 on A¹ | Derived tensor of their perfect skyscrapers is 0; intersection empty | Retain |
| 3.1 All-degree support comparison | Node with full versus empty support | Full K₋₁ should be ℤ; empty K₋₁=0; connective API gives 0 for both | Fails; R01 |
| 3.2 Object extension obstruction | Open restriction and its K₀ image | An extending object has class in image by definition; adjoining E[1] gives [E⊕E[1]]=0, removing the class obstruction | Retain stable extension, not unconditional extension |
| 3.2 Roof denominators | D(t), multiplication t⁻¹ | Roof O←ᵗO→id O restricts to t⁻¹; no polynomial multiplication on O equals t⁻¹ globally | Retain roofs |
| 3.2 Nullhomotopy denominators | Torsion ℤ/p² | Multiplication p² kills the module, whereas p need not; denominator exponent cannot be fixed at 1 | Retain |
| 3.3 Oriented boundary | DVR π and π⁻¹ | ∂[π]=1; ∂[π⁻¹]=−1 in ℤ | Retain |
| 3.3 Right/left product sign | ℤ₅, unit 2 | ∂([5][2])=[2]; ∂([2][5])=−[2]=[3] in 𝔽₅× | Retain right-linear convention |
| 3.3 Full/empty localization | Z=X or Z=∅ | Fib(𝕂(X)→0)=𝕂(X); Fib(id)=0 | Retain nonconnective formulation |
| 3.4 Excision | Étale identity near a support; empty support | Restricted supported object and class unchanged; empty side 0→0 | Retain support-local hypothesis |
| 3.5 Dévissage | k[ε]/ε² with reduced point | G₀=ℤ and [A]=2; K₀(A)→G₀(A) is multiplication 2, so K-dévisage cannot ignore regularity | Retain |
| 3.5 Thickness | DVR O/πᵐ | Composition length m; class m[k], unlike reduced class 1 | Retain |
| 3.6 Determinant and scalar section | diag(u,v), diag(u,u⁻¹) | Determinants uv and 1; scalar diag(u,1) returns u | Retain imported determinant |
| 3.6 Order normalization | πᵐ, unit u, zero | Additive order m,0 on nonzero elements; ordFrac(0)=0 in ℤᵐ⁰ is not the additive integer 0 | Retain explicit adapter |
| 3.6 Specialization depends on parameter | π versus 2π over ℤ₅ | Relative unit changes by 2; the correction in K₁(𝔽₅) is −[2]=[3], not 0 | Retain parameter convention |
| 3.6 Transfer and ramification | ℤ₂→ℤ₂[i], π=1+i | vπ(2)=2; finite transfer has rank 2 and norm(1+i)=2 | Retain e/f distinction |
| 3.7 Divisor class | Dedekind A and nonprincipal prime I | [A/I]=[A]−[I], rank 0 but nonzero Picard component | Retain; also R02 witness |
| 3.7 Divisor multiplicities | 12∈ℚ× | v₂(12)=2, v₃(12)=1, all other finite valuations 0 | Retain |
| 3.7 Proper curve reciprocity | t on P¹ | div(t)=[0]−[∞], degree 1−1=0; on Gₘ the boundary points are absent | Retain proper-scope distinction |
| 3.8 Witt support degree | W(𝔽_p), Cone(pᵐ) | Length m; determinant valuation m; m=0 gives cone(id)=0 | Retain |
| 3.8 Completion | Wₙ(𝔽₂)=ℤ/2ⁿ | lim ℤ/2ⁿ=ℤ₂; compatible rank-one free modules give rank one, not a direct sum of the stages | Retain derived effectivity target |
| 3.8 Frobenius/perfection | 𝔽_p[t]→𝔽_p[t^(1/p∞)] | Frobenius becomes bijective; t has a pth root, unlike in the original polynomial ring | Retain |
| 3.9 Quasi-isogeny sign | p and p⁻¹ on a Witt line | Degrees +1 and −1; composition has degree 0 | Retain |
| 3.9 Identity quasi-isogeny | β=id on a rank-one object | Cone contributions 1−1=0; underlying rank is still 1 | Retain degree is not rank |
| 3.9 Ramified coefficient | p=uπᵉ | degree(π)=1 and degree(p)=e; normalized p-degree cannot replace π-degree | Retain |
| 4.1 Mayer–Vietoris and nonconnectivity | Nodal union with two components meeting twice | Rank-difference map ℤ²→ℤ² has diagonal image and cokernel ℤ in negative degree; truncating it would erase the obstruction | Retain; enforce R01 |
| 4.1 Reduced presheaf condition | Constant Hℤ, including empty open | Value on ∅ is Hℤ with π₀=ℤ rather than 0; reducedness fails | Retain hypothesis |
| 4.1 Brown–Gersten point case | One-point space | Sections and stalk both have πₙ=πₙ(E); if all stalk groups vanish, sections have 0 groups | Retain |
| 4.2 Nisnevich residue condition | Spec(k×k)→Spec k | Two lifts with residue degree 1; cover true though source has two components | Retain |
| 4.2 Nonexample cover | Nontrivial finite field extension L/k | Residue degree [L:k]>1 at the only point, so no residue-isomorphic lift | Retain |
| 4.2 Distinguished square complement | Open identity square; empty complement | Complement maps 0→0; pullback diagram is identity on all values | Retain |
| 4.3 Sheafification | Two-point discrete space, constant presheaf ℤ | Presheaf sections ℤ; sheaf sections ℤ²; map a↦(a,a) not onto | Retain sheafification |
| 4.3 Hypercohomology not objectwise π₀ | Units on P¹ | H¹(P¹,Gₘ)=Pic(P¹)=ℤ, yielding a negative hypercohomotopy group for the associated degree-zero sheaf | Retain |
| 4.3 Godement points | Spec field with identity stalk | Stalk and sections both k; augmentation followed by totalization is identity | Retain |
| 4.4 Coniveau indexing | DVR with generic and closed point | E₁ residue differential F×→ℤ sends π↦1 and a unit↦0; total degree decreases by 1 | Retain |
| 4.4 Support tower endpoints | Dimension 0 field | Filtration F⁰=K, F¹=0; sole nonzero column is p=0 | Retain convergence bound |
| 4.4 Boundary squared | Regular surface Koszul square | Two ordered residue paths have opposite signs, +1 and −1; their sum is 0 | Retain |
| 4.5 Coherent versus perfect coniveau | Residue field of dual numbers | Coherent class [k]=1 exists; k is not perfect because Torᵢ(k,k)=k for all i | Retain separate towers |
| 4.5 Dimension versus codimension | Curve in smooth surface, then smooth threefold | Dimension remains 1; codimensions are 1 and 2 | Retain dimension indexing for coherent cycles |
| 4.5 Proper residue transfer | 𝔽₄/𝔽₂ | K₀ transfer sends 1↦2; K₁ norm of generator α is α³=1 | Retain residue degree/norm |
| 4.6 Gersten kernel | DVR | Kernel(v:F×→ℤ)=O×; π maps to 1, so v is surjective | Retain |
| 4.6 Bloch's formula | P¹ over k, codimension 1 | CH¹(P¹)=Pic(P¹)=ℤ; O(1) maps to degree 1 on both sides | Retain |
| 4.6 Codimension-zero case | Integral field | CH⁰(Spec k)=ℤ=H⁰(K₀); no negative-codimension terms | Retain |
| 4.7 Geometric/equicharacteristic case | 𝔽₂(t), regular local k[x]_(x) | Field Gersten augmentation is identity; DVR residue of x equals 1 | Retain includes imperfect fields through stated approximation route |
| 4.7 Semilocal continuity | k[t] localized at (t),(t−1) | One function field k(t) remains; product of two local rings would have two generic points | Retain semilocal, not product replacement |
| 4.7 Continuity is not codimension preservation | R→R/(t) | Height of (t) drops from 1 to 0; a termwise fixed-codimension identification would fail | Retain cohomological route |
| 4.8 Relative effacement | Λ a DVR, Λ[x]/(x−π) | Quotient is Λ and flat; Λ[x]/(π) is killed by π and not flat | Retain relative-flat divisor condition |
| 4.8 Regular equation | t=0 versus x−π | Multiplication by 0 has full kernel; x−π has zero kernel | Retain regularity hypothesis |
| 4.9 Filtered comparison | Regular DVR, identity cover | Descent and coniveau give H⁰(K₁)=O× and residue quotient 0; the nontrivial differential is v(π)=1 | Retain filtered theorem, not an E₂-only argument |
| 4.10 Valuation lifting | D(t)→A¹ and valuation centered at 0 | t is nonunit at the center; there is no lift into D(t), so not a v-cover | Retain |
| 4.10 Empty covers | ∅→Spec k; identity of ∅ | First fails lifting of Spec k; second has no valuation obstruction and both categories are zero | Retain |
| 4.10 Derived Čech chart restriction | Invert a negative-degree generator with π₀-image 0 | The localized derived algebra can retain the inverted generator; base change through π₀ forces 0 invertible and gives zero | Retain restricted chart theorem |
| 4.10 Amplitude detection | k and k[1] on a perfect point | Residue amplitudes [0,0] and [−1,−1]; the latter is excluded from the former stratum | Retain |
| 4.10 h-to-v passage | Fixed [a,b], then all perfect objects | Core truncation bound b−a+1 is finite; no single such bound works for all shifts together | Retain stratum-first passage |
| 4.11 Witt finite stages | W₂(𝔽₂)→𝔽₂ | Units {1,3} both reduce to 1; automorphism lifting has nontrivial kernel {1,3} | Retain groupoid/derived descent |
| 4.11 Zero-object lifting | Zero perfect complex | Deformations and automorphisms are zero/identity; its lift space is contractible | Retain |
| 4.11 Uniform amplitude | Finite free module over ℤ₂ and all mod-2ⁿ reductions | Every stage has amplitude [0,0] and rank 1; limit has the same interval and rank | Retain uniform-bound condition |
| 4.11 Supported degree | Cone(pᵐ) on a perfect residue point | Supported K₀ degree and p-adic determinant valuation both m | Retain |
| 4.12 Square-to-Čech descent | Identity cover; disjoint two-point cover | Identity gives E; disjoint cover gives E×E, equal to value on two points for a sheaf | Retain |
| 5.1 G-homotopy invariance | A=k[ε]/ε², polynomial t | G₁(A[t])=G₁(k[t])=k×; K₁ has nonconstant unit 1+εt | Retain G/K distinction |
| 5.1 Graded torsion category | S=R[t,u], S/tS | t-torsion true, but graded pieces R·uⁿ exist for every n≥0; finite-support grading would exclude it | Retain |
| 5.1 Dehomogenization | S(−n), S/t, S/u, with t=1 | Outputs R[s],0,R respectively; grading shift becomes a free module | Retain |
| 5.1 Zero-section Euler | Trivial line zero section | Koszul alternating class 1−1=0; two terms cancel | Retain |
| 5.2 Regular K homotopy | k→k[t] | K₀ is ℤ→ℤ, 1↦1; K₁ is k×→k× | Retain regularity |
| 5.2 Laurent factor | k[t,t⁻¹] | K₁=k×⊕ℤ; t has coordinates (1,1), a constant a has (a,0) | Retain |
| 5.3 Rank-zero projective bundle | E=0 | P(E)=∅; K=0 and zero summands on the right | Retain |
| 5.3 Rank-one convention | E=L | P(E)=X, O(1)=L, pushforward O(n)=Lⁿ | Retain quotient convention |
| 5.3 Positive twist | E=L⊕O, rank 2 | π_*O(1)=L⊕O, not L∨⊕O | Retain |
| 5.3 Negative twist/top cohomology | Rank-2 E | Rπ_*O(−1)=0; Rπ_*O(−2)=det(E)∨[−1] | Retain determinant and shift |
| 5.3 Koszul relation | E=k², L=[O(−1)] on P¹ | 1−2L+L²=0, equivalently (1−L)²=0 | Retain |
| 5.4 Relative regularity | O on P¹ over any affine base | H¹(O(−1))=0, evaluation surjective; no field-only hypothesis is used for this example | Retain relative extension |
| 5.4 Quillen resolution | O(1) on P¹ | T₀ has rank 2, T₁ rank 1; Euler reconstruction 2−L=[O(1)] | Retain |
| 5.4 Regularity negative control | O(−1) with an unjustified regular presentation | Naive zero-section data would give 0 although [O(−1)]=L≠0; required regularity fails | Retain |
| 5.5 Projective bundle basis | O(m) on P¹ | Coordinates (m+1,−m); rank (m+1)−m=1, Euler m+1 | Retain |
| 5.5 Independence in rank 2 | 1 and L on P¹ | Rank/Euler columns (1,1),(1,0) have determinant −1 | Retain |
| 5.6 Bass boundary | k[t,t⁻¹] | ∂[t]=1, ∂[a]=0 for a∈k× | Retain |
| 5.6 Nil terms | A=k[ε]/ε² | 1+εt is nonzero NK₁ class; evaluation 0 gives 1, evaluation 1 gives 1+ε | Retain evaluation-at-zero convention |
| 5.6 Iterated Laurent signs | Symbols [t][u] and [u][t] | Iterated oriented residues are +1 and −1 | Retain grading signs |
| 5.7 Codimension-one blowup | Cartier divisor | Blowup map is identity; exceptional-index set 1≤i≤d−1 is empty | Retain |
| 5.7 Adjunction and vanishing | d=2, exceptional fibre P¹ | Rp′_*O=k, Rp′_*O(−1)=0; unit k→k is identity | Retain |
| 5.7 Exceptional recovery | d=2 versus d=1 | In d=2 the unwanted twist has RΓ(O(−1))=0; d=1 retains an extra k[−1], so the proposed recovery would give k⊕k[−1] | Retain d≥2 restriction |
| 5.7 Exceptional sign | Exceptional divisor E | 0→O→O(E)→i_*O_E(−1)→0 gives [i_*O_E(−1)]=[O(E)]−1 | Retain |
| 5.8 Blowup decomposition | Blowup A² at origin; blowup P² at point | K₀ ranks 1+1=2 and 3+1=4; d=1 gives rank addition 0 | Retain |
| 5.8 Exceptional image discriminator | O versus O_E(−1) on exceptional P¹ | RΓ(O)=k while RΓ(O(−1))=0; using O would destroy orthogonality | Retain |
| 5.9 Bass comparison | k; nodal curve | Both nonconnective models give K₋₁(k)=0 and K₋₁(node)=ℤ; connective K gives 0 for the node | Retain comparison; R01 |
| 6.1 Internal/external products | k² and k³; disjoint supported points | Rank 2·3=6; disjoint support product 0 | Retain |
| 6.1 Graded commutativity | Two degree-one unit classes | Reversing factors introduces −1; their DVR boundaries are [u] and −[u] | Retain |
| 6.1 Relative fibre | Identity map X→X; X→∅ restriction | Fibre of identity is 0; fibre of K(X)→0 is K(X) | Retain with nonconnective R01 |
| 6.1 Tensor versus auxiliary λ-product | Unit symbols t,u over k(t,u) | Iterated tame residue of tensor symbol is 1∈ℤ, hence product nonzero; auxiliary positive×positive product is 0 | Retain distinction |
| 6.2 Special λ sum | Rank 2 and rank −1 | λ_t(2)=1+2t+t²; λ_t(−1)=1−t+t²−t³+… | Retain formal inverse |
| 6.2 Universal product polynomial | Rank-2 bundles P,Q, operation λ² | λ²(P⊗Q) has rank C(4,2)=6; product identity gives 2·2·1+2·2·1−2·1·1=6 | Retain |
| 6.2 Universal composition polynomial | Rank-4 bundle E, λ²λ² | C(C(4,2),2)=C(6,2)=15; corresponding universal expression 4·4−1=15 | Retain |
| 6.2 Disconnected rank | Two-point scheme, ranks (1,2) | Augmentation is function (1,2), not one integer; λ² has ranks (0,1) | Retain locally constant target |
| 6.2 Nonunital filtration | J=(x³) in ℤ[u,u⁻¹]/(u−1)⁴ | γ_t(x³)=1+x³(t−3t²+2t³); F³ in the ℤ-unitization is 2J, while J∩F³(ambient)=J | Retain intrinsic/induced distinction |
| 6.2 Weighted products | η=(u−1)(v−1), with (u−1)²=(v−1)²=0 | γ²η is nonzero although η²=0; square-zero multiplication alone does not force F²=0 | Retain weighted definition |
| 6.3 Exact versus split representations | Nontrivial extension 0→1→V→1→0 | Exact K₀ gives [V]=2[1]; an isomorphism V≅1⊕1 need not exist | Retain exact category |
| 6.3 Dedekind Euler resolution | Torsion A/I | Class [A]−[I]; for A=ℤ,I=(p), this is 1−1=0 | Retain |
| 6.3 Derived versus ordinary dual | A=ℤ[√−5], torsion A/I | Ordinary Hom(A/I,A)=0; derived Euler dual is [A]−[I∨]≠0 | Retain |
| 6.3 Torus character coefficients | Trivial torus over ℤ[√−5] | [I]−[A]≠0 maps to rank 0; corrected K₀(A)-valued character maps it to itself | Fails; R02 |
| 6.3 Field formal character | Gₘ over 𝔽₂, weights 0 and 1 | Formal characters 1 and t; both rational-point characters take value 1 | Retain scheme representation |
| 6.3 Highest-weight scope | SL₂/𝔽₂, weight 2 | Simple character t²+t⁻² (dimension 2); Weyl/induced character t²+1+t⁻² (dimension 3) | Sound mathematics, duplicated; R04 |
| 6.3 Generic/residue lattice independence | ℤ and pℤ in ℚ | Both rank 1; both reductions intrinsically one-dimensional over 𝔽_p | Retain PID comparison |
| 6.3 Stable representation convention | GL₀; determinant of GL₂ | GL₀ representation ring ℤ; determinant monomial x₁x₂; dual monomial (x₁x₂)⁻¹ | Retain |
| 6.3 Group scheme versus abstract points | Gₘ/ℤ | Integer character lattice ℤ gives infinitely many monomials; ℤ×={±1} only detects parity | Retain |
| 6.3 Associated projective representation | Weight −1 on a line P | Associated bundle P∨, not P; rank is 1 in both but tensor with P gives O only for P∨ | Retain |
| 6.4 Higher λ and Adams | A unit loop u, k=2 | λ²[u]=−[u]; ψ²[u]=2[u]; ψ¹[u]=[u] | Retain |
| 6.4 Composition | ψ²ψ³ on a unit loop | ψ²(3[u])=6[u]=ψ⁶[u] | Retain |
| 6.4 Stable finite rank | Dimension 0 and 1 representations | Empty sum has rank 0; adding a trivial line increases rank by 1 while preserving the stabilized nontrivial weights | Retain |
| 6.5 Rational projectors | Operator T=diag(2,4) on ℚ² | (4−T)/2=diag(1,0), (T−2)/2=diag(0,1); sum=id, product=0 | Retain nonzero denominators |
| 6.5 Parameter 1 | Same proposed eigenweights with k=1 | Eigenvalue difference 1²−1=0, so projector division is invalid | Retain k>1 requirement |
| 6.6 Splitting principle | Rank 2 E with formal roots L₁,L₂ | λ_t(E)=(1+L₁t)(1+L₂t); determinant L₁L₂; no ordering enters the symmetric coefficients | Retain |
| 6.6 Higher filtration bound | Regular d-dimensional X, degree m | Bound F_γ^(m+d+1)=0 is distinct from individual γ^j=0; at m=d=0 only rank remains and F¹=0 | Retain full-filtration theorem |
| 6.7 K-coherence comparison | Field point; P¹ | Point has cohomological dimension 0; P¹ has nonzero Pic=ℤ in sheaf cohomological degree 1, requiring dimension bound 1 | Retain dimension control |
| 6.7 Pointed fringe | π₀ with a nontrivial π₁ stabilizer | Core of k has automorphism group k×; forgetting stabilizers changes a fibre from B(k×) to a point | Retain pointed-set treatment |
| 6.8 Higher operations on schemes | O(1) and unit u on P¹ | ψ²[O(1)]=[O(2)]; ψ²[u]=2[u]; these are multiplicative in degree zero and additive on higher groups | Retain different laws |
| 6.8 Product compatibility | Two line bundles L,M | ψ²(LM)=L²M²=ψ²(L)ψ²(M) | Retain |
| 6.9 Endpoint/Bockstein indexing | Two-cell Moore space S¹∪ₙe² | Coefficient K₂ has endpoints K₂/n and K₁[n]; shifting the Moore space would give a K₂[n] endpoint instead | Retain degree-two construction |
| 6.9 Finite eigenvalue separation | ℓ=5, k=2, weights 0,1,2 | Eigenvalues 1,2,4; differences 1,2,3 are units mod 5 | Retain |
| 6.9 Collision negative control | ℓ=3, k=2, weights 0,1,2 | Eigenvalues 1,2,1; first/last difference 0 | Retain strict prime/weight-width bound |
| 6.9 Generalized versus honest eigenspace | T=[[2,1],[0,2]] | (T−2)≠0 but (T−2)²=0; a length-two extension need not be scalar 2 | Retain integral endpoint/splitting inputs |
| 6.9 Coefficient product supplier | Hℤ/2; S/p² at odd p | Hℤ/2 has π₀=𝔽₂ and higher π=0; q=2,n=1 satisfies 2≥2 | Corrected source available; R03 |
| 6.9 Even-prime E₁ bound | S/8 | q=3,n=1 gives 2q=6=3(n+1); S/2 gives 2<6 | Retain full supplier range after R03 |
| 6.10 Bott class | Zero bundle; trivial line; line L, k=2 | θ²(0)=1; θ²(O)=2; θ²(L)=1+L | Retain |
| 6.10 Negative integer convention | k=−1 and line L | θ⁻¹(L)=−L⁻¹; multiplying by (1−L) gives 1−L⁻¹ | Retain |
| 6.10 Virtual rank-zero class | 1−u in ℤ[u,u⁻¹] | θ²(1−u)=2/(1+u), not generally in ℤ[1/2,u,u⁻¹] | Retain stated localization/invertibility scope |
| 6.10 Twisted operation | Rank-one conormal, square-zero higher component x | Twisted positive product is 0; λ²(0,x)=(0,−x), not zero | Retain twist is not trivial multiplication |
| 6.11 Gysin Adams factor | Trivial conormal rank c | θᵏ(Oᶜ)=kᶜ; ψᵏi_*x=i_*(kᶜψᵏx) | Retain conormal correction |
| 6.11 Coniveau weight | Codimension p point, weight i−p | Extra kᵖ times k^(i−p) equals kⁱ | Retain shifted residue weight |
| 6.11 Low-degree Serre-error claim | Rational coefficients | Finite-torsion error category becomes 0; claimed decompositions become genuine rational direct sums | Retain modulo-error formulation integrally |
| 6.12 Supported λ/product | Regular divisor with class 1−L | λ_t(1−L)=(1+t)/(1+Lt); coefficient of t² is L²−L | Retain support operation, not exterior powers of a torsion sheaf |
| 6.12 Support self-product | Point of regular curve | Derived tensor has k in Tor₀ and Tor₁; alternating class 1−1=0 | Retain |
| 7.1 γ versus support filtration | h=1−[O(−1)] on P¹ | h∈F¹, h²=0; rank(h)=0, determinant(h)=O(1) | Retain |
| 7.1 Rank-zero ideal | Field | K₀(k)=ℤ with rank=id; F¹=0, hence all higher filtration groups 0 | Retain |
| 7.2 Leading Chern sign | Codimension c=1,2,3 | Coefficient (−1)^(c−1)(c−1)! is +1,−1,+2 | Retain |
| 7.2 Point on P² | [O_P] | ch₂ is +[P], but c₂ is −[P]; conflating Chern class with character reverses the sign | Retain |
| 7.2 Geometric character | O(n) on P¹ | ch=1+nH because H²=0 | Retain |
| 7.3 γ-valued character | h=1−L on P², L=O(−1) | ch(h)=1−exp(−H)=H−H²/2; positive H²/2 would be wrong | Retain |
| 7.3 Newton normalization | Line root a, degrees 1,2 | Components a and a²/2; denominator 2 is invertible over ℚ, not automatically over ℤ | Retain rational coefficients |
| 7.3 Associated-graded isomorphism | P¹ | K₀⊗ℚ=ℚ·1⊕ℚ·h maps to ℚ·1⊕ℚ·H by 1↦1,h↦H | Retain |
| 7.4 Euler/GRR | O(n) on P¹→point | (1+nH)(1+H)=1+(n+1)H; pushforward is n+1=χ(O(n)) | Retain |
| 7.4 Adams–Riemann–Roch | P¹, k=2, h²=0 | θ²(Ω)=2−2h, inverse=(1+h)/2; pushforward gives (1+1)/2=1 | Retain cotangent/inverse sign |
| 7.5 Relative-base normalization | Spec ℚ over Spec ℤ, e=1,r=0 | d=e+r=1 although absolute dim=0; homological ψ-factor on rank is k⁻¹ | Retain base-relative index |
| 7.5 Independence under ambient enlargement | Same point in A¹ over Spec ℤ | e+r=2 and supported γ-weight 1 give j=1; k⁻¹ agrees with the previous ambient | Retain |
| 7.5 Proper homological transfer | Finite field extension degree d | Rank class pushes to d; scalar k⁰ on dimension-zero cycles commutes: d·1=1·d | Retain |
| 7.6 Transverse excess | Independent equations x,y in k[x,y] | Excess F=0, λ₋₁(F)=1; intersection length 1 | Retain |
| 7.6 Self-intersection | Cartier conormal L∨ | Multiplier 1−L∨; a trivial conormal gives 1−1=0 | Retain |
| 7.6 All Tor degrees | Regular codimension-2 point | Tor ranks 1,2,1, then 0; alternating sum 1−2+1=0 | Retain exterior-power identification |
| 7.6 Supported map directions | Point included in a curve, then pulled back | K(point)→K(curve)→K(point) has multiplier 0; reverse restriction/extension cannot be substituted | Retain |
| 7.7 Supported Chow versus ordinary Chow | Closed point in A¹ | CH¹_with_support(A¹)=ℤ, while CH¹(Spec k)=0; support codimension belongs to the ambient | Retain |
| 7.7 Cycle multiplicity | O/πᵐ on a regular DVR | Leading cycle m[closed point], agreeing with length m and the supported K-class | Retain |
| 7.7 Dimension-one indexing | Curve in surface and in threefold | Both contribute to Gr₁ of dimension filtration; corresponding codimensions are 1 and 2 | Retain |
| 7.7 Zero-dimensional support | Finite set Y of closed points | CH₁(Y)=0; F₁G₀(Y)=F₀G₀(Y), hence Gr₁=0 | Retain |
| 1.2 Finite-level noncoherent distinction | A=k⊕V, V²=0, V infinite-dimensional; M=k | M has one generator, but its kernel V in A→k is not finitely generated; level 0 holds, level −1 fails | Retain |
| 1.3 Amplitude detection needs perfectness | ℚ/ℤ over ℤ, degree zero | Ordinary fibres over every residue field are 0, but Tor₁ at p is ℤ/p; tensor without derivation would misidentify the amplitude | Retain derived test |
| 3.6 Algebraically closed field injectivity | k→k[t]→k, t↦0 | Composite on every K-group is identity; for A=0 the target groups are 0 and the K₀ map ℤ→0 is not injective | Retain nonzero-algebra hypothesis |
| 6.1 Nonflat external perfect product | X=Z=Spec 𝔽₂ over Spec ℤ | Underived fibre product is Spec 𝔽₂; pullbacks of both units are 1, and their product is 1 | Retain; do not impose coherent flatness on this K-product |
| 6.2 Integral filtration need not terminate | ℤ[C₂], σ²=1, x=σ−1 | x²=−2x and Fⁿ=2^(n−1)ℤx for n≥1; no term vanishes | Retain nilpotence hypotheses |
| 6.3 Nonabelian representation ring | S₃ over ℂ, standard V | Character V=(2,0,−1); V⊗V=(4,0,1)=1+sign+V, so dimension 4=1+1+2 | Retain arbitrary-group exact representation construction |
| 6.3 Cyclic positive-characteristic control | C₂ over 𝔽₂, regular module | Regular module is an indecomposable length-two extension, but its exact K₀ class is 2[trivial] | Retain; no split-K₀ substitution |
| 6.9 A¹ representability | Spec k and A¹_k, degree zero | Both represented groups are K₀=ℤ; pullback sends 1 to 1 | Retain regular scope |
| 6.9 Uniqueness cannot be tested only on points | ψ² versus identity on P¹ | Both fix rank; with L=1−h, ψ²(L)=1−2h while id(L)=1−h and h≠0 | Retain natural operation on all smooth test schemes |
| 6.9 Trivial coefficient modulus | n=1 | Cofibre of identity on the sphere is 0; spectral coefficients and Moore mapping groups are both 0 | Retain separate boundary case |

The false source statements encountered are separated below from the roadmap findings. In particular, the roadmap already includes the finite-presentation safeguard for flat proper pushforward, the corrected approximation condition, and the correct core truncation bound. These are not additional defects attributed to this roadmap.

## Not verifiable

- No seeded source remains inaccessible. GS99, GS87 and Thomason93 were verified from readable legal PDF pages rather than completed numbered text extractions; consequently those entries use printed-page locators instead of invented extraction line numbers.
- The review does not certify every unselected bibliography locator or the full proofs of the 26 fetched works. The seeded targets, explicitly relevant source-proof steps, and every source used as a finding witness were read. No README locator was explicitly flagged unverified.
- No claim is made that the absent enhanced K-theory/Chow constructions elaborate at the pins. Their absence is the reason the module docstring omits those headline signatures. The three declarations actually present were elaborated and their binders checked.

## Source issues

- **Error** in TT90 at Theorem 1.9.8, p.271, and the related assertions of 1.9.6, pp.269–270: the source says derived equivalence suffices for the stated complicial K-equivalence without acyclic-retract closure; it should be require retracts up to weak equivalence of acyclic objects to be acyclic; affects a stated result; corrected in print at Thomason93 §4, pp.213–215.
- **Error** in TT90 at 3.16.6, p.320: the source says flat proper maps of quasi-compact schemes preserve perfect pushforward without a presentation hypothesis; it should be include finite presentation, or another sufficient pseudo-coherence/perfectness-preservation hypothesis; affects a stated result.
- **Misprint** in BS17 v3 at proof of Theorem 11.2(2), assertion (1), p.47: the source says the core of the amplitude-[a,b] perfect category is (b−a)-truncated; it should be (b−a+1)-truncated, while its mapping spaces are (b−a)-truncated; affects the proof.
- **Error** in GS99 at Proposition 5, pp.39–41 of the archived 60-page version: the source says vector-bundle Quillen K agrees with the stated hypercohomology for every Noetherian finite-dimensional scheme; it should be impose the vector-bundle/perfect comparison hypothesis, or use perfect-complex K in that comparison; affects a stated result.
- **Misprint** in Panin.2003 at Theorem A, p.169: the source says the second residue sum is indexed by height-one primes again; it should be indexed by height-two primes for the K_(n−2) term; affects a stated result.
