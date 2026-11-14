<!-- from CBirkbeck, https://github.com/TauCetiProject/TauCetiRoadmapJobs/pull/15095#issuecomment-6876174077 -->
Review (codex) of d78d6b8

Verdict: needs_changes

**For the human reviewers:** this review raises 2 questions that a human decides (the scope of the roadmap, or a licence). They are in the section of that name at the end and do not change the verdict.

1. **F01** (P2) Two promised headline forms are still absent

   **Location.** `packages/CohomologyOfGroups/README.md:2402`: “Prove that for `M` free as an abelian group”; :2526: “Prove the `p`-primary form for a prime `p`”. `packages/CohomologyOfGroups/Suggested.lean:339` and :370 state only the rational-dual and global forms.

   **Claim.** The acceptance file covers the statable forms of the Tate-duality and periodicity end theorems. Neither omitted form is stated or identified as unavailable in its module docstring.

   **Witness.** Both signatures below elaborate at the pins, with only their two `sorry` warnings. Their printed types retain freeness, finiteness and primality. No additional definition or missing carrier is required.

   **Exact repair.** Add the two signatures below in Layer 8, with mathematical docstrings; name them in the corresponding README paragraphs and update the module's coverage paragraph. These are actual cup/evaluation statements. The integral pairing has target `Ĥ⁰(G, ℤ)`, identified with the order-annihilated subgroup of `ℚ/ℤ` by `a mod |G| ↦ a/|G|`. The primary subgroup uses Mathlib's `Ideal.primaryComponent`, `Mathlib/Algebra/Module/Torsion/PrimaryComponent.lean:48`, with membership at :50. Supply that exact contract in the README.

   The following fragments were elaborated inside the existing namespace with the package's imports and opens:

   ```lean
   theorem integral_tate_duality {G : Type} [Group G] [Fintype G] (M : Rep ℤ G) [Module.Free ℤ M] (i : ℤ) :
       (∀ y : tateCohomology ((ihom M).obj (Rep.trivial ℤ G ℤ)) i,
           (∀ x : tateCohomology M (-i),
             (tateCohomologyFunctor 0).map ((ihom.ev M).app (Rep.trivial ℤ G ℤ))
               (TauCeti.TateCohomology.cup M _ (-i) i 0 (by ring) x y) = 0) → y = 0) ∧
         ∀ φ : tateCohomology M (-i) →+
             tateCohomology (Rep.trivial ℤ G ℤ) 0,
           ∃ y : tateCohomology ((ihom M).obj (Rep.trivial ℤ G ℤ)) i,
             ∀ x : tateCohomology M (-i),
               (tateCohomologyFunctor 0).map
                   ((ihom.ev M).app (Rep.trivial ℤ G ℤ))
                 (TauCeti.TateCohomology.cup M _ (-i) i 0 (by ring) x y) = φ x := sorry

   theorem tfae_p_primary_periodicity (G : Type) [Group G] [Fintype G] (p : ℕ) [Fact p.Prime] :
       List.TFAE
         [∃ d : ℤ, 0 < d ∧ ∃ u : tateCohomology (Rep.trivial ℤ G ℤ) d,
             ∀ (M : Rep ℤ G) (n : ℤ), Set.BijOn (fun x : tateCohomology M n =>
               (tateCohomologyFunctor (n + d)).map (ρ_ M).hom
                 (TauCeti.TateCohomology.cup M (Rep.trivial ℤ G ℤ) n d (n + d) rfl x u))
               {x | ∃ j : ℕ, p ^ j • x = 0} {x | ∃ j : ℕ, p ^ j • x = 0},
           ∃ d : ℤ, d ≠ 0 ∧ IsAddCyclic (Ideal.primaryComponent (tateCohomology (Rep.trivial ℤ G ℤ) d) (Ideal.span {(p : ℤ)})) ∧
             Nat.card (Ideal.primaryComponent (tateCohomology (Rep.trivial ℤ G ℤ) d) (Ideal.span {(p : ℤ)})) = p ^ (Nat.factorization (Nat.card G) p),
           ∀ H : Subgroup G, IsPGroup p H → IsMulCommutative H → IsCyclic H,
           ∀ (P : Sylow p G),
             IsCyclic (P : Subgroup G) ∨
               ∃ m : ℕ, 1 ≤ m ∧ Nonempty ((P : Subgroup G) ≃* QuaternionGroup (2 ^ m))] := sorry
   ```

   **Tested discrimination.** For `G=C₃`, free trivial `M=ℤ`, and `i=0`, the integral pairing is multiplication in `ℤ/3`, so `(1,1) ↦ 1`; its character value is `1/3`. Without freeness, `G=C₂`, `M=ℤ/2`, `i=0` gives integral dual 0 versus character dual `C₂`. For `G=A₄,p=3`, all four primary clauses hold: the Sylow is `C₃`, and the primary period is 2; the global clauses fail because of `C₂×C₂`. Thus the global theorem does not state the primary theorem. For `G=C₂,p=3`, the primary groups vanish, their cardinal is `1=|G|₃`, and all four primary clauses still hold. Do not add a divisibility hypothesis to this equivalence.

   This is another occurrence of round 3 F01's omission pattern, not a claim that its specified three repairs failed.

2. **F02** (P2) The general conjugation–restriction factorization omits pullback

   **Location.** `packages/CohomologyOfGroups/README.md:774`: “in general it is `c_g` followed by restriction from `gAg⁻¹` to the image of `β`.”

   **Claim.** This describes `conjRes` for an arbitrary homomorphism `β : B → G`. The two named operations only reach cohomology of `β(B)`, whereas the actual definition reaches cohomology of `B`.

   **Witness.** Take `G=A=C₂`, `B=C₄`, `β` reduction modulo 2, `g=1`, trivial `𝔽₂`, degree 2. The claimed operations are the identity of `𝔽₂`; actual pullback is zero.

   Indeed, the nonzero normalized cocycle of `C₂` is `c(a,b)=⌊(a+b)/2⌋ mod 2`. Its pullback to residues `0,1,2,3` is the coboundary of `f(a)=⌊a/2⌋ mod 2`. Both functions on pairs are 1 exactly on `(1,1),(1,3),(3,1),(3,3)` and 0 on the other twelve pairs. This also agrees with the nonsplit-extension calculation in §6.7. An identification of the two abstract one-dimensional cohomology groups cannot fix the missing zero map.

   **Exact repair.** Replace the quoted general clause by: “In general, apply `c_g`, restrict to `β(B) ≤ gAg⁻¹`, and then pull back along the surjection `B → β(B)` induced by `β`. When `β` is injective, this last map is the identification induced by `B ≃ β(B)`.” Add the `C₄ → C₂` calculation above as a negative-control Check. The Lean definition at `Suggested.lean:73` already uses the full compatible pair and should stay unchanged. The corrected factorization gives zero on the counterexample and still gives ordinary restriction for subgroup inclusions. The newly added `conjCores` paragraph already qualifies its analogous image description by injectivity.

3. **F03** (P3) Three Mathlib declarations are assigned to the wrong file

   **Location.** `packages/CohomologyOfGroups/README.md:279` groups the quotient invariant/coinvariant functors and restriction under `RepresentationTheory/Rep/Basic.lean`.

   **Claim.** That file supplies all six listed representation constructions.

   **Witness.** At the Mathlib pin, the quotient functors are in `Mathlib/RepresentationTheory/Invariants.lean:263` and `Mathlib/RepresentationTheory/Coinvariants.lean:442`; restriction is in `Mathlib/RepresentationTheory/Rep/Res.lean:43`.

   **Exact repair.** Split the contract: retain `Rep.ihom`, `Rep.ofMulAction` and `Rep.ofHom` under `Rep/Basic.lean` (:774, :333, :92); give the other three names the respective files above. All six declarations exist; this is a locator correction, not a missing supplier. Opened their definitions: quotient invariants are fixed vectors with quotient action, quotient coinvariants are the coinvariant quotient with quotient action, and `res` applies `resFunctor`. For `C₄`, normal `C₂`, and the integral sign module, both degree-zero quotient modules are `ℤ` with nonidentity quotient acting as −1. The corrected locations supply precisely those objects, not higher-degree quotient actions.

Three findings: two P2 and one P3. The two findings of round 3 are repaired. The four reviewed inputs were not changed; no source was fetched or manifest entry altered.

## Verified sound

### Previous findings checked first

| Round-3 finding | Status and repaired passage | Verification |
|---|---|---|
| F01: homological double cosets and homological/Tate stable elements missing | **Repaired.** README:2192: “`transfer_comp_cores_eq_finsum`”; :2284: “The homological clause is `bijOn_cores_sylow_isHomologyStableClass`”; :2297: “`bijOn_tateRes_sylow_isTateStableClass`”. | Three theorems now occur at Lean:202, :266, :325. The four new definitions at :93, :185, :237, :283 have real bodies, APIs and discriminating Checks. Their hypotheses and inverse-conjugation directions were rechecked, including Tate degrees 0 and −1. Computations appear below. |
| F02: unnamed projection/Mackey inputs | **Repaired.** README:500: “`TauCeti.indProjection`”; :505: “`Rep.mackeyDecomposition`, `Rep.mackeyDecompositionNatIso`”. | Opened the pinned definitions at `TauCeti/RepresentationTheory/Induction/Projection.lean:196` and `TauCeti/RepresentationTheory/Induction/Mackey/Decomposition.lean:392,:425`. The routes and Needs lines in §§1.4,7.1 now name them. The coefficient action on an induced generator is inverse action, as the new contract says. |

The repair report marks both applied, with no “not actionable” decision. There were no maintainer notes. I reviewed the added contracts, definitions, API statements, examples and routes, and searched the rest of the package for the repaired omission patterns; R01 and R03 record remaining instances. The preceding review's unchanged mathematical rows were used only where they give computed values; its prose-only summaries were not treated as adversarial evidence. In particular the missing integral and primary forms were checked afresh.

### Principles, shape, build and hypotheses

Read all 41 numbered sections, all conventions, supplier contracts, API lists, Checks, Examples and Dependencies, and all four input files. Each of the eight layers ends with Examples and Dependencies. Each numbered section has 3–9 Checks; the seven Lean definitions have distinguishing examples, not just asserted existence. Main's ProfiniteCohomology, DerivedModuleAlgebra and ClassFieldTheory supplied the house-shape comparison.

The package retains arbitrary groups and commutative rings for its general theory. Its finite-group, finite-index, projectivity, flatness, finite-generation and degree restrictions are stated where used. There is no algorithm, restricted-prime shortcut, second copy of a roadmap, sorry'd datum, `set_option`, placeholder proposition, foreign roadmap import, process narrative, local path or pull-request number in the roadmap/signatures. All 19 package declaration names occur in the README and every backticked identifier attributed to this package resolves to one of them. `metadata.toml` is `math.GR`. All eight cited works have one manifest entry each; no unsettled missing source was discovered.

Read the pinned revisions from `lake-manifest.json`: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`; Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`. The prescribed `lake env lean` on the original acceptance file, run from the content checkout, **passed, exit 0**, with exactly twelve `declaration uses sorry` warnings and no other warning or error. Its imports are `Mathlib` and seven individually used Tau Ceti modules. No missing object-file build was needed.

A separate scratch copy with `#check @name` for every one of the 19 declarations also passed. No section binder was lost: arbitrary rings/groups, finite index, normality of the Hopf kernel, finite-group and prime instances, `n ≠ 0`, cyclic generator and normalized character remain in the elaborated signatures. The original signatures match their README statements; R01 requests additional statements, not weaker replacements. The two proposed additional signatures were independently elaborated and their types printed; freeness in the integral form remains explicit.

### Headline coverage and every-theorem padding probe

| README headline | Coverage at the pins |
|---|---|
| §§2.3,6.2–6.5: extension spectral sequences, edges and products | Docstring explains missing positive-degree quotient representations and the normalized extension filtration. Native degree-zero quotient functors do not construct these. |
| §§6.6–6.7: transgression and low-degree sequences | Docstring identifies missing constructed transgression and homological `d²`. |
| §§3.5–3.6: tree/amalgam/HNN sequences | Docstring identifies group actions on trees and connecting maps; the full topological action interface is not a small definition at the pins. |
| §3.6: free-group vanishing and free-product homology | Both stated with arbitrary coefficients and degree ≥2. |
| §§5.1–5.3: Künneth and universal coefficients | Docstring identifies missing transported group cross product, general group pairing and evaluation. Native complex statements do not by themselves name these group maps. |
| §5.4: arbitrary abelian `H₂ ≅ Λ²` | Stated as an additive isomorphism, beyond the finite-abelian supplier; the specific map is a README construction. |
| §6.8: Hopf | Stated on the actual subgroup quotient; the README fixes the map's sign. |
| §7.1: double cosets | Both ordinary cohomological and homological map identities now stated. |
| §7.2: stable elements | All three ordinary cohomology, homology and all-integer Tate forms now stated. |
| §8.1: Tate duality | Rational-dual form stated; free integral-dual form missing, R01. |
| §8.3: periodicity from cohomologically trivial resolutions | Docstring identifies missing iterated connecting class. |
| §8.4: cyclic cup periodicity, p-period | All-degree cyclic cup theorem stated; numerical Swan/quaternion theorems remain with K3BlochGroups. |
| §8.5: periodicity equivalences | Global form stated; p-primary form missing, R01. |

All twelve admitted theorems were probed on a scratch copy with solving alternatives `simp`, `rfl`, `infer_instance`, `exact?`, at default options. None closed. Nine searches returned failure; three reached the default 200000-heartbeat limit. The latter are limitations of the lemma search, not evidence of nonexistence of a proof. Each was additionally compared against the underlying pinned maps and the supplied library-near-match leads.

| Theorem (line in Suggested.lean) | Probe and object comparison |
|---|---|
| `freeGroup_isZero_of_two_le` (113) | Failure; the pinned free-group result only has trivial-coefficient homology in `Type`. |
| `coprod_groupHomology_bijective` (121) | Failure; neither abelianization nor a coproduct carrier gives the higher homology identity. |
| `nonempty_groupHomology_two_addEquiv_exteriorPower` (136) | Failure; the exterior carrier does not calculate group homology. |
| `nonempty_groupHomology_two_addEquiv_hopf` (145) | Failure; quotient and commutator constructors do not give Hopf's formula. |
| `res_comp_corestriction_eq_finsum` (174) | Timeout; representation Mackey and profinite integral Mackey have different statements. |
| `transfer_comp_cores_eq_finsum` (202) | Timeout; the pinned transfer/index identity does not identify the double-coset composite. |
| `bijOn_res_sylow_isStableClass` (226) | Failure; Sylow injectivity does not identify the image. |
| `bijOn_cores_sylow_isHomologyStableClass` (266) | Timeout; transfer followed by inclusion equals index, without the stable-image assertion. |
| `bijOn_tateRes_sylow_isTateStableClass` (325) | Failure; Tate restriction and change-of-group maps supply operations, not stable-image bijectivity. |
| `tate_duality` (339) | Failure; nondegeneracy and surjectivity are not part of cup/evaluation definitions. |
| `cup_characterConnectingClass_bijective` (356) | Failure; abstract two-periodicity and degree-zero normalized cup do not state this all-degree equality of operations. |
| `tfae_periodic_cohomology` (370) | Failure; Sylow/quaternion carriers do not prove the equivalence. |

No padding deletion is requested. None of these statements merely mirrors a Check or quantifies over unrelated arbitrary data.

### Computed adversarial evidence

Here `C_m` denotes a cyclic group, `F_p` the prime field, and unspecified integral actions are trivial. The table covers all seeded targets, all acceptance headlines, changed constructions and the findings. Zero modules and the zero coefficient ring give zero groups/maps throughout. For a finite group, `|G|≥1`; the character denominator therefore never uses division by zero. Negative homology in the degree-zero UCT is defined to vanish, rather than interpreted as natural subtraction.

| Statement | Instances | Values on both sides or distinguishing values | Result/change |
|---|---|---|---|
| §1.1 `conjRes` | Quotient `C₄→C₂`, `F₂`, degree 2 | Actual map sends the nonzero class to 0; described image-only factorization sends it to 1. All 16 cocycle values checked above. | R02. |
| §1.1 `conjCores`, conjugation | `S₃`, `g=(123)`, coefficient permutation module | `g(12)g⁻¹=(23)`, opposite conjugation gives `(13)`; coefficient `g⁻¹` satisfies both intertwining sides. Replacing it by `g` gives `g²x(1)=3` versus `xg²(1)=2` for `x=(23)`. | New definition excludes the wrong inverse. |
| §1.2 quotient actions; R03 | `C₄`, `N=C₂`, integral sign module; `N=1` | In degree 0 both quotient modules are `ℤ` with quotient generator −1. For `N=1`, degree 0 is `M`, positive degrees 0. | Sound objects; fix file locators. |
| §1.3 Additivity | `C₂`, sums of trivial `ℤ`; infinite free basis | Homological sides are `⊕_I C₂` in degree 1; the identity on `ℤ^(ℕ)` has infinitely many nonzero coordinate maps, so it is not a finite-coordinate sum in Hom. | Cohomological arbitrary-product/finite-sum distinction necessary. |
| §1.4 Shapiro/projection | `C₂` on `G ⊔ pt`; two sign modules; 3-cycle permutation | Orbit homology gives `H₀=ℤ²,H₁=C₂`, not three invariant points. Sign tensor sign is trivial. Native projection sends `e₁→e₃`, forward-action error sends `e₁→e₂`. | F02 repaired. |
| §1.5 discrete comparison | `ℤ` discrete versus with profinite topology, `ℤ` discrete coefficients | Ordinary `H¹=ℤ`; continuous homomorphisms for the profinite topology are 0. For `C₃,F₃`, normalized identity character evaluates to 1, not 2. | Discreteness and map normalization essential. |
| §§2.1–2.3 hyper(co)homology and two sequences | `G=1,M[0]`; `S₃` permutation augmentation `ℤ[S₃/A₃]→ℤ` | First example gives `M` in degree 0, 0 above. Second: `d¹` in degree 0 is id; in degree 1 it is `C₃→C₂=0`; total degrees 0,1,2 are `0,C₂,C₃` in both filtrations. | Sound; no false acyclicity converse. |
| §2.2 connecting map | `0→ℤ --2→ ℤ→C₂→0`, `G=C₂` | `H¹(C₂,C₂)→H²(C₂,ℤ)` sends 1 to 1; adjacent maps have zero image and kernel. | Sound. |
| §§3.1–3.3 exactness and orbit modules | Exact `C₂→ℤ/4→C₂` over `ℤ/4`; free circle action with sign coefficients | Tensor with `C₂` leaves top homology `C₂≠0`. Sign local differential is −2, hence `H₀=C₂,H₁=0`; constant coefficients would give `ℤ,ℤ`. | Flat/projective hypotheses and local action matter. |
| §§3.4–3.5 tree chain complex | Infinite line; single loop; sign module | Line boundary `t−1` has kernel 0 and cokernel `k`, identified with `k` by augmentation; a loop has boundary 0 and kernel `k`. After sign coefficients, `t−1=−2`, giving `H₁=0,H₀=C₂`. | Tree condition and boundary direction distinguish models. |
| §3.6 amalgams/HNN | `C₄*_(C₂)C₆`; `BS(1,2)` | First abelianization is `C₁₂`. HNN edge difference `1−2=−1` leaves `H₁=ℤ`; a sum gives `C₃` instead of `ℤ`. | Sound. |
| §3.6 free-group/free-product headlines | Empty and singleton bases; `C₂*C₂`; sign module on `F₂` | Both theories vanish in degree 2 for free groups. Free-product degrees 2,3 are `0,C₂²` on both sides. Degree 1 sign example has `ker(-2,-2)=ℤ`, versus 0 from the factor `H₁`s. | Degree ≥2 is required. |
| §§4.1–4.2 cup/differential signs | `C₂,F₂`; degree-one torus classes; nontrivial coefficient action | The `F₂` degree-one generator has nonzero square. Ordered torus cup evaluates to 1. Dropping the group action in the cochain cup leaves differential defect `2(t−1)`. | Correct action and Leibniz convention. |
| §4.3 Identities | Coordinate classes `x,y` on `ℤ²` | On `(e₁,e₂)`, `x∪y=1`, `−y∪x=0` as cochains; on the alternating torus cycle both evaluations equal 1. | Commutativity is on classes, with the swap and sign. |
| §4.4 Diagonal approximations | Edge `(g₀,g₁)` | AW image is `(g₀)⊗(g₀,g₁)+(g₀,g₁)⊗(g₁)`; boundary on both sides is `g₁⊗g₁−g₀⊗g₀`; augmentation 1. | Zero or same-degree-only diagonal fails. |
| §4.5 projection | `C₂`, trivial module, degree zero | `cor(a·res b)=2ab=(cor a)b`. | Index not inverted. |
| §4.6 Cap/evaluation | Oriented torus cycle, `y` second coordinate, `x` first | Back-face cap gives `e₁` and evaluation 1; front-face cap gives `−e₁`. The stated factor `(−1)^(1·1)` corrects it; `⟨x∪y,z⟩=1=⟨x,y∩z⟩`. | Front/back transport and adjunction agree. |
| §4.7 comparison of products | `C₃`, trivial integers and normalized character | Degree-zero class 1 cupped with connecting character is the degree-two generator; replacing character `1/3` by `−1/3` gives its negative. | Map normalization retained. |
| §5.1 Künneth | `C₂×C₂`, integral coefficients, degree 2; two degree-one shuffles | Tensor term is `C₂`, Tor term 0, giving `H₂=C₂`; shuffle is `[a|b]−[b|a]`, reversing factors negates the oriented class. | Cross-product sign and Tor grading correct. |
| §5.2 Universal coefficients | `G=C₂,A=F₂,k=ℤ`; `G=ℤ,A=k=ℤ` | `H₂(C₂,F₂)=0⊕Tor(C₂,F₂)=C₂`; omitting Tor gives 0. `H¹(ℤ,ℤ)=Hom(ℤ,ℤ)=ℤ`, while Ext term is 0. | Both correction and Hom terms necessary. |
| §5.3 cohomological cross product | `C_p²`, `F_p`, `p=2,3`, degrees 0,1,2 | Tensor summands have dimensions `1,2,3`, matching group cohomology; no field Tor terms. | No odd-prime restriction; source's printed `n` is a typo, not copied. |
| §5.4 exterior-square/Pontryagin | `A=1,ℤ,C₂²,ℤ²` | Degree-two homology and exterior square are respectively `0,0,C₂,ℤ`; ordered basis wedge maps to the alternating torus cycle, not its sum. | Genuine arbitrary-abelian extension. |
| §6.1 normalized extension filtrations | `C₄,N=C₂,F₂`, degree 1; `N=1,G` | Vanishing-on-N filtration has dimension 2 (`f(2)=0`); auxiliary coset filtration has dimension 1 (`f(1)=f(3)`). Extreme normal subgroups leave a single row or column. | Distinct filtrations are not identified as complexes. |
| §§6.2–6.3 Hochschild–Serre | `C₂→C₄→C₂` versus split `C₂²`, `F₂` | Both have one-dimensional E₂ entries; nonsplit transgression `d₂` sends 1 to 1, split sends 1 to 0. Total degree-two dimensions are 1 versus 3. | Extension data is essential; both sequence directions consistent. |
| §§6.4–6.5 edges/products | `C₄→C₂`; torus bidegrees `(1,0),(0,1)` | Degree-one inflation maps 1 to the quotient character; restriction to the kernel is 0. Ordered product evaluates to 1 and the swapped order to −1. | Edges and total-degree sign agree with suppliers. |
| §§6.6–6.7 transgression/low degree | Nonsplit `C₂→C₄→C₂`, then split `C₂²` | Kernel character has transgression 1 versus 0; inflation in degree 2 is 0 versus injective. | Exactness agrees with R02's counterexample. |
| §6.6 factor-set sign and scalar extension | `C₃→C₉→C₃`; `C₉→C₂₇→C₃`; `C₄→Q₈→C₂` | First two: the lift `f(i)=⌊i/3⌋ mod 3` has `df(2,1)=−1=2`, opposite to the carry class. In the quaternion case the factor-set value is `2∈C₄`, whose image in `C₄⊗F₂` is 0, so transgression is 0 and `dim H¹(Q₈,F₂)=2`. | Scalarization and the negative sign agree, including nonabelian case. |
| §6.8 Hopf | Cyclic presentation; free kernel 1; torus presentation | Cyclic numerator `R∩[F,F]=1`, hence `H₂=0`, not the full relation group `ℤ`. Kernel 1 also gives 0. Torus lifted boundary gives `[s,t]⁻¹`, negative of the opposite calibration. | Exact quotient and inverse commutator retained. |
| §6.9 profinite comparison | Finite `C₄,N=C₂,F₂`, discrete topology | Every function is continuous; both lifted coboundaries send `(1,1)` to 1 and give the same nonzero transgression. With split extension both are 0. | No claim for nonfinite groups under this comparison. |
| §7.1 both double-coset headlines | `S₃,H=K=C₂`, degree 0 and positive degree | Degree 0 both composites multiply by 3; summands multiply by 1 and 2. In positive degree the second factors through `H_n(1,M)=Hⁿ(1,M)=0`, leaving id. | New homological form sound. |
| §7.1 new homological summand | `H=G`; `K=1` | First gives the inclusion-induced map on both sides. Second sends `m` to `Σ[g⁻¹m]`, exactly left-coset transfer after inversion, not `Σ[gm]` with unaltered representatives. | Representative and conjugation directions fixed. |
| §7.2 ordinary and homological stability | `S₃,p=3` and `p=2`, integral degree-one homology | On `C₃`, inversion has stable subgroup 0, equal to `H₁(S₃)(3)=0`; at 2 both groups are `C₂`. | Zero/all-class wrong predicates fail. |
| §7.2 homological stability in higher degree | `(C₃)²⋊C₂`, inversion, degree 2 | Inversion acts by `(+1)` on `Λ²(C₃²)=C₃`; stable part and global 3-primary `H₂` are both `C₃`. | Not a degree-one stand-in. |
| §7.2 Tate stability, degree 0 | `S₃`, trivial `ℤ`, `p=2,3`; sign module at 3 | Trivial module: `{0,3}⊂ℤ/6→ℤ/2` and `{0,2,4}⊂ℤ/6→ℤ/3` are bijections. Sign module: normalizer negation leaves only 0 at 3, not all `C₃`. | New Tate definition includes coefficient action. |
| §7.2 boundary and comparison degrees | `G=P=C₂`, trivial `ℤ` or `Q/Z` | Tate degree 0 for `ℤ` is `C₂` and restriction id; ordinary degree-zero primary invariants are 0. Tate degree −1 for `Q/Z` is its 2-torsion `C₂`, again id. | Separate Tate boundary clauses are needed. |
| §8.1 stated Tate duality | `C₂,M=ℤ`, `i=0,1` | At 0 both sides 0; at 1 both sides `C₂`, with nonzero character value `1/2`. | Rational-dual signature sound. |
| §8.1 omitted integral duality | `C₃,M=ℤ,i=0`; nonfree `C₂` coefficients | Pairing `(1,1)=1 mod 3`; free dual has three characters. Nonfree example gives `0≠C₂`. | R01: retain freeness and add signature. |
| §§8.2–8.3 group criterion/resolution period | `C₂²,Q₈`; sign character of `C₂` | First has noncyclic abelian subgroup; second has only cyclic abelian subgroups and period 4. Sign twist in the length-one sphere sequence sends `Ĥ⁰(C₂,ℤ)=C₂` to `Ĥ¹(C₂,ℤ_sgn)=C₂`, whereas untwisted odd degree is 0. | Quaternion and orientation-twist alternatives essential. |
| §8.4 cyclic cup headline | `C₃` trivial coefficients, `C₂` sign coefficients, trivial group | Normalized cup sends the generator of `ℤ/3` to the generator two degrees later. Sign coefficients give odd groups `C₂`, even groups 0 on both sides. Trivial group: all Tate groups 0. | Full integer-degree statement, no division by zero. |
| §8.4 p-period | `S₃,p=3`; `Q₈,p=2`; prime not dividing order | `H²(S₃,ℤ)(3)=0,H⁴=C₃`, so period 4. `Q₈` has `Ĥ²=C₂²,Ĥ⁴=C₈`, also period 4. Away from order, least degree with order-one cyclic group is 1. | Divisibility needed for Swan's numerical formula, not R01's equivalence. |
| §8.5 global and primary periodicity | `A₄,p=3`; `C_p²`; trivial group | `A₄`: primary clauses all true, global all false. `C_p²`: dimensions `n+1` unbounded and abelian criterion false. Trivial group: all Tate groups 0, cardinal 1, both criteria true. | Global signature sound; add distinct primary form (R01). |

### Seeded locators and wording

All fifteen sampled targets were checked at their recorded locators where text was available. No additional author-flagged unsettled locator occurs; the three settled unreadable/waived entries remain settled. A locator supporting only a step of a stated route is distinguished from a theorem at the target's full generality.

| Seeded target | Text opened and result |
|---|---|
| 1.3 Additivity | Brown82 Ch. III §8 unavailable; algebraic exactness of products/direct sums checked independently. Source certification remains unavailable. |
| 2.3 The two spectral sequences | HS53 Ch. I §5 Lemmas 1–2, pp.115–116, lines 239–274; Prop.5 lines 283–288 has the coefficient-acyclicity hypothesis for identifying invariants. Homological transcription at Ch.I §7 p.118, lines 355–362. README uses that extra hypothesis only for the collapse comparison. |
| 3.4 The chain complex of a tree | SerreArbres II §2.8, p.168, lines 5135–5166: oriented-edge boundary, exact augmented complex. Tensoring the split integral complex yields arbitrary coefficients. |
| 3.6 Amalgams, HNN extensions and free groups | SerreArbres II §2.8 Prop.13, Remark 1 and amalgam example, p.169, lines 5170–5196. HNN/free forms follow by the indicated tree and stabilizers; Brown82 II §7 unavailable. |
| 4.1 The cochain cup product | HS53 II §1, pp.118–119, lines 386–400; MilneCFT II Prop.1.38 p.73, lines 3474–3484. The prefix action and Leibniz sign agree. Source's integral bilinear pairing is extended by the stated k-linear construction. |
| 4.3 Identities | MilneCFT II Prop.1.39(a)–(e), pp.73–74, lines 3485–3507. Swap of coefficients, restriction/inflation and finite-index projection all retained. |
| 4.4 Diagonal approximations | Brown82 Ch.V unavailable. HS53 II §1 lines 389–396 verifies the cochain formula being recovered. Pinned AW formula/naturality/coassociativity and resolution comparison support the actual route. No claim of reading Brown's proof. |
| 4.6 Cap product and evaluation | Brown82 Ch.V unavailable. Opened pinned front-face cap and Kronecker/internal-Hom comparisons; the package's back-face sign was computed independently above. |
| 5.2 Universal coefficient sequences | Loh19 Cor.3.2.21 p.135, lines 5841–5851, is integral homology. Outlook3.2.26 p.138, lines 5985–5994, points to cohomological results rather than proving the general target. The hereditary-ring extension is justified by the stated projective-chain route and pinned UCT; it is not asserted to be the verbatim scope of the outlook. |
| 6.1 Normalized cochains and the extension filtration | HS53 II §1, pp.118–121, lines 368–419 and 480–530: both filtrations, inclusion and acyclicity comparison; II §2 Thm.1 p.121 gives the restriction identification. Normalization and normal-subgroup hypotheses agree. |
| 6.3 Homological Hochschild–Serre | Loh19 Thm.3.2.12(1) p.123, lines 5306–5314; HS53 I §7 p.118 homological transcription. Normality, arbitrary module and first quadrant retained; the arbitrary-k realization uses the explicitly named bicomplex route. |
| 6.8 Hopf's formula | Loh19 Thm.1.5.1 p.30, lines 1460–1472, and Thm.3.2.18/proof pp.129–131, lines 5568–5598 onward. Free presentation and both commutator subgroups match. The map sign is calibrated by the supplier and the bar calculation, not inferred from an unnamed source isomorphism. |
| 6.9 Comparison with profinite theory | HS53 III §4 Thm.2 and remark pp.129–130, lines 825–856, supports the ordinary low-degree sequence. The finite/discrete comparison is the separately stated native/ProfiniteCohomology route; HS53 is not a source for continuous cohomology. |
| 7.2 Stable elements | Brown82 III §10 unavailable. Hutchinson13 §3 p.11, lines 482–491, states integral homological stable elements; MilneCFT II Prop.1.30/Cor.1.33 pp.70–71, lines 3357–3389, supplies the index and injectivity steps. The arbitrary-coefficient and Tate extensions have explicit routes through double cosets and shifting. |
| 8.1 Tate duality | Brown82 VI §7 and CE56 XII unavailable. Native pairing, contragredient action, all integer degrees and examples checked; no certification of the inaccessible proofs. |

For wording I compared the twelve readable portions of this sample and six further passages: §1.1 against HS53 lines 154–160; §1.2 against Loh19 Prop.3.2.13 pp.124–125; §3.3 against Loh19 lines 2205–2227; §5.1 against Loh19 lines 5854–5920; §6.5 against HS53 lines 686–700; §8.4 against MilneCFT lines 3793–3822. No distinctive sentence, clause-by-clause paraphrase, copied example list or figure was found. Shared expressions were formulas, conventional names and forced hypotheses. The Lean Tate-duality and Hopf docstrings were also inspected; their unavailable primary texts are not counted as wording comparisons.

Counting source-key citation occurrences before References gives HS53 42, Loh19 22, Brown82 14, Hutchinson13 12, MilneCFT 9, SerreArbres 4, CE56 3 and SwanPPeriod60 2: 108 occurrences. Repeated source-line attributions are counted by the same rule. HS53's contents/organization were read at lines 22–42 and its chapter/section headings: general methods, direct normalized filtration, applications. Its material is distributed across this roadmap's Layers 1,2,4,6; the tree, product/UCT, subgroup and periodicity developments are not copies of that chapter sequence. Within Layer 6 the dependencies from normalized filtration to E₂, edges, products, transgression and low-degree exactness explain the order. Layers 3–5 provide independent tree, diagonal and tensor inputs; Layer 8 uses 7.2 and the product machinery. No one-to-one same-scope run of source chapters was found.

Source independence: 18 passages compared with 5 sources; no expressive copying found; largest share HS53, 42 of 108 citation occurrences; contents compared with HS53: independent. Brown82 and CE56 text/contents were unavailable, and SwanPPeriod60 remains waived.

### Pinned library and ownership audit

The library near-match leads were compared by object at the pins. Ordinary `MonoidHom.transfer` has a group-homomorphism target, not these higher homology maps; stabilizer lemmas do not characterize stable cohomology classes; perfect-pairing predicates do not prove Tate duality. No one-lemma duplicate or fully qualified declaration collision was found. The arbitrary-coefficient free-group theorem extends the pinned trivial-coefficient result; general cup/cap maps still require the transport from chain operations described in the README.

Representative exact locations opened in this audit follow. `Mathlib/` and `TauCeti/` refer to the pinned repositories, not a later checkout. Declaration snippets were inventoried from both libraries, including the newly consumed Tate functoriality and transfer operations.

| Object and pinned declarations | Location and distinction |
|---|---|
| `Rep.standardComplex`, `Rep.standardResolution`, `Rep.barResolution` | `Mathlib/RepresentationTheory/Homological/Resolution.lean:168,:321,:427`. Alternating-face complex and actual projective resolutions. |
| `Rep.ihom`, `Rep.ofMulAction`, `Rep.ofHom`, `Rep.res` | `Mathlib/RepresentationTheory/Rep/Basic.lean:774,:333,:92`; `Mathlib/RepresentationTheory/Rep/Res.lean:43`. Internal Hom is the `linHom` representation, not an unstructured function space. R03 corrects file grouping. |
| `Rep.quotientToInvariantsFunctor`, `Rep.quotientToCoinvariantsFunctor` | `Mathlib/RepresentationTheory/Invariants.lean:263`; `Mathlib/RepresentationTheory/Coinvariants.lean:442`. Only degree-zero fixed points/coinvariants, with normality explicit. |
| `groupCohomology.map`, `groupHomology.map` and functorial carriers | `Mathlib/RepresentationTheory/Homological/GroupCohomology/Functoriality.lean:141` and `Mathlib/RepresentationTheory/Homological/GroupHomology/Functoriality.lean:157`; coefficient functors at :522,:534 and :818,:831 respectively. Variances match `conjRes` and `conjCores`. |
| Inflation, coinflation and restriction | Same cohomology file :376,:552,:566; homology file :543,:850,:864. These give the existing short complexes and maps, not full extension spectral sequences. |
| `groupHomology.inhomogeneousChains.d_single` | `Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:132`: first boundary coefficient is `A.ρ (g 0)⁻¹ a`. This pins the Hopf and evaluation signs. |
| Shapiro and `Rep.indCoindIso` | `Mathlib/RepresentationTheory/Homological/GroupCohomology/Shapiro.lean:58`; `Mathlib/RepresentationTheory/Homological/GroupHomology/Shapiro.lean:65`; `Mathlib/RepresentationTheory/FiniteIndex.lean:178`. The last has finite index, while Shapiro does not. |
| Shapiro comparison maps | `TauCeti/RepresentationTheory/Homological/GroupCohomology/Shapiro.lean:109,:152`; `TauCeti/RepresentationTheory/Homological/GroupHomology/Shapiro.lean:98,:143`. Evaluation at 1, induction unit and counit match the routes. |
| `TauCeti.groupCohomology.corestriction` | `TauCeti/RepresentationTheory/Homological/GroupCohomology/Corestriction.lean:136`; trace comparison :149, naturality :156, index composite :165, connecting compatibility :187, transitivity :399. |
| `TauCeti.groupHomology.transfer` | `TauCeti/RepresentationTheory/Homological/GroupHomology/Transfer/Basic.lean:79`; Shapiro comparison :89, coefficient naturality :103, inclusion composite :121. No ordinary homological double-coset theorem there. |
| Projection/Mackey | `TauCeti/RepresentationTheory/Induction/Projection.lean:196,:202`; `TauCeti/RepresentationTheory/Induction/Mackey/Decomposition.lean:392,:425`. Arbitrary subgroups; actual induced representation summands, without assuming an infinite-index coinduction decomposition. |
| Dimension shifting | `TauCeti/RepresentationTheory/Induction/DimensionShift.lean:83,:156`; `TauCeti/RepresentationTheory/Homological/GroupHomology/Induced.lean:49`. Cokernel/kernel constructions, with induced-from-trivial acyclicity. |
| First and cyclic homology | `Mathlib/RepresentationTheory/Homological/GroupHomology/LowDegree.lean:1019`; `Mathlib/RepresentationTheory/Homological/GroupHomology/FiniteCyclic.lean:85,:122`. Trivial-action `H₁` and positive-degree even/odd cyclic formulas, not general `H₂`. |
| Free groups/directed unions | `TauCeti/AlgebraicTopology/ClassifyingSpace/WedgeCircles.lean:259`; `TauCeti/RepresentationTheory/Homological/GroupHomology/DirectedUnion.lean:113,:132`. Respectively trivial coefficients in `Type`, and surjectivity/vanishing for nonempty directed unions; no claim that these supply the full new generality. |
| AW and shuffle | `TauCeti/AlgebraicTopology/SimplicialObject/AlexanderWhitney.lean:172,:206,:222,:313`; `TauCeti/AlgebraicTopology/SimplicialSet/Shuffle.lean:689,:731,:753`; `TauCeti/AlgebraicTopology/SimplicialSet/EilenbergZilber.lean:761`. Diagonal, signs and naturality are inputs, not planned again. |
| Künneth, UCT, Kronecker | `TauCeti/Algebra/Homology/Monoidal/Homology/Kunneth/Sequence.lean:729,:793`; `TauCeti/Algebra/Homology/UniversalCoefficient/Basic.lean:121,:153,:180`; `TauCeti/Algebra/Homology/Kronecker.lean:106`. Projective cycles/split inclusions are real assumptions; the roadmap supplies the group-chain instance. |
| Internal-Hom/coinvariant comparison | `TauCeti/RepresentationTheory/Homological/GroupCohomology/CoinvariantsTensor.lean:91,:167`. Dual cochains of coinvariant tensor chains, used for evaluation and UCT. |
| Cup/cap on complexes | `TauCeti/Algebra/Homology/Monoidal/Cup.lean:69,:86,:278`; `TauCeti/Algebra/Homology/Monoidal/Cap.lean:74,:88,:271`. A diagonal is an input; front-face cap and its boundary sign require the stated transport. |
| Filtered and bicomplex sequences | `TauCeti/Algebra/Homology/SpectralSequence/Filtered/SpectralObject.lean:409,:425`; `TauCeti/Algebra/Homology/SpectralSequence/Filtered/FirstPage.lean:89`; `TauCeti/Algebra/Homology/SpectralSequence/Filtered/Stabilization.lean:83`; `TauCeti/Algebra/Homology/SpectralSequence/Bicomplex.lean:410,:442,:484`; `TauCeti/Algebra/Homology/TotalComplex.lean:596`. Stabilization uses the neighboring-degree vanishing conditions; it does not require a global finite filtration here. |
| Inflation–restriction and Sylow injectivity | `TauCeti/RepresentationTheory/Homological/GroupCohomology/InflationRestriction.lean:132,:139`; `TauCeti/RepresentationTheory/Homological/GroupCohomology/Sylow.lean:58`. These do not give stable-image surjectivity or the higher transgression. |
| Tate comparisons | `Mathlib/RepresentationTheory/Homological/TateCohomology/Basic.lean:233,:241`. Require positive natural degree; Tate 0 and −1 remain separate norm objects. |
| Tate group-change maps | `TauCeti/RepresentationTheory/Homological/TateCohomology/Functoriality.lean:249,:262,:468,:491,:630`: actual group isomorphism and intertwining map, comparison in both degree ranges, and compatibility with connecting maps. |
| Tate restriction | `TauCeti/RepresentationTheory/Homological/TateCohomology/Restriction/AllDegrees.lean:48,:167`; `TauCeti/RepresentationTheory/Homological/TateCohomology/Restriction/Delta.lean:248`. Degree 0 invariants, degree −1 relative norm-kernel transfer, positive restriction and negative transfer, with index composite. |
| Tate products/periodicity | `TauCeti/RepresentationTheory/Homological/TateCohomology/Cup/Product.lean:131`; `TauCeti/RepresentationTheory/Homological/TateCohomology/Character.lean:65`; `TauCeti/RepresentationTheory/Homological/TateCohomology/Cup/Cyclic.lean:146`; `TauCeti/RepresentationTheory/Homological/TateCohomology/Periodic.lean:302,:346`. The normalized character computation is degree zero; abstract periodicity alone is not the asserted cup operation in all degrees. |
| Tate product identities | `TauCeti/RepresentationTheory/Homological/TateCohomology/Cup/Delta.lean:242,:443`, `Associativity.lean:214`, `GradedComm.lean:168`, `Corestriction.lean:178`, `Restriction/AllDegrees.lean:141` in that Cup directory. Tensor exactness, grading and comparison hypotheses agree with the routes. |
| Topological carriers/comparison | `Mathlib/RepresentationTheory/Homological/ContCohomology/Basic.lean:113`; `TauCeti/RepresentationTheory/Homological/ContCohomology/DiscreteGroup.lean:166`. The first carrier does not require discrete topology; the second equivalence has finite-group/integral scope and does not supply the desired full natural comparison. |
| Continuous products/Mackey/transgression | `TauCeti/RepresentationTheory/Homological/ContCohomology/Cup/Graded/Basic.lean:120`, `Cup/Cohomology.lean:169`, `Corestriction/Mackey/AllDegrees.lean:279`, `Transgression.lean:147,:354,:702,:779` under the same ContCohomology directory. Their topological hypotheses are not silently dropped. |
| Change of resolutions and factor set | `TauCeti/RepresentationTheory/Homological/GroupHomology/ChangeOfGroups.lean:217`; `TauCeti/RepresentationTheory/Homological/GroupCohomology/ChangeOfGroups.lean:265`; `TauCeti/GroupTheory/GroupExtension/Cohomology.lean:120,:363`. Actual chain-map naturality and normalized section-independent extension class. |

Read the board package index before any absence claim: its listed package heads are AnalyticNumberTheory and LawrenceVenkateshMethod. The package, main, and the provided open-roadmap corpus were searched by objects using `roadmaps grep` and read with `roadmaps show`. Main has no second CohomologyOfGroups folder. The overlaps file has no conflicting head, dropped cited id, revision-only cited id or incoming dropped-package-id issue. `roadmaps resolve` was rerun: no unresolved cross-roadmap citations or package names. Its output explicitly did not search local pins; it was not substituted for the local library inspection.

| Roadmap/current text | Resolved ownership and citations |
|---|---|
| DerivedModuleAlgebra, main | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:955`, §S.1: generic first-quadrant sequence; homological low-degree extension is a declared gap. |
| SpectralSequencesAndConvergencePartII, PR #2307 | `TauCetiRoadmap/SpectralSequencesAndConvergencePartII/README.md`, Layers 2–3: abstract hyperderived/composite-functor sequences; §4.3 at :1726: Künneth; §5.2 at :1894: filtered pairings. Those objects stay with this supplier; this package builds explicit group models and comparisons. |
| SpectralSequencesAndConvergence, PR #2302 | `TauCetiRoadmap/SpectralSequencesAndConvergence/README.md:25`, scope: generic towers, limit pages and convergence. No duplicate generic machinery is claimed here. |
| ProfiniteCohomology, main | `TauCetiRoadmap/ProfiniteCohomology/README.md:1140,:1155,:1571,:1770,:2622,:2763,:3519` resolve §§3.1–3.2,5.5,6.4,10.1,10.5 and Layer 12. Continuous theory stays there; arbitrary discrete comparison and its product/sequence compatibilities are the distinct targets here. |
| InductionRestriction, main | `TauCetiRoadmap/RepresentationTheory/InductionRestriction/README.md:213`, Layers 0–2: projection, conjugate representations and representation Mackey. The package now cites native projection/Mackey; it owns their (co)homological application, not another representation construction. |
| ClassFieldTheory, main | `TauCetiRoadmap/ClassFieldTheory/README.md:778`, §0.1: Tate interface, Nakayama–Rim, cohomological triviality and Tate–Nakayama. Used without replanning. |
| FreeGroupsAndLimitGroups, main | `TauCetiRoadmap/FreeGroupsAndLimitGroups/README.md:385,:773,:803,:863,:875,:906,:937`: §§2.2,4.1–4.2,4.5–4.8, graph groups, trees, stabilizers and splittings. The HNN generator/loop inverse agrees with this package's convention. |
| AlgebraicTopology, main; PR #1808 scope also read | `TauCetiRoadmap/AlgebraicTopology/README.md:1945,:2005`, §§5.3–5.4: finite regular constant-coefficient covers and torus homology. Main is the supplier; this package owns the algebraic group-chain statement, not the topological deck/cellular construction. |
| StableHomotopyKTheory, main | `TauCetiRoadmap/StableHomotopyKTheory/README.md:1336`, §3.29: perfect-group central extension/Hopf kernel. The general-group Hopf theorem here is explicitly distinguished. |
| K2SymbolsBrauer, PR #1302 | `TauCetiRoadmap/K2SymbolsBrauer/README.md:107`, §1.1: lifted-boundary/inverse-commutator calibration. It leaves general Hopf existence/bijectivity to a supplier; the convention is not used as a proof of existence here. |
| SchemeKTheoryOperations, PR #1229 | `TauCetiRoadmap/SchemeKTheoryOperations/README.md:2548,:2582`, §6.7: integral hyperhomology and full directed-union comparison. This package imports those cases and extends coefficients/models. |
| K3BlochGroups, PR #1430 | `TauCetiRoadmap/K3BlochGroups/README.md:1189,:1855`, §§4.1,5.2: bounded-below integral reindexing, localized stable elements, integral duality, quaternion resolution/period class and Swan period. Those stay there; arbitrary coefficients and all-degree duality/criteria are the extensions here. |
| ArithmeticGaloisDuality, PR #858 | `TauCetiRoadmap/ArithmeticGaloisDuality/README.md:5014`, §D7.2: finite-group UCT and homological Sylow surjectivity. Identifying precisely the stable image is stronger and is owned here. |
| InductionRestrictionPartII, PR #1154 | `TauCetiRoadmap/InductionRestrictionPartII/README.md:312,:415,:1558`, RS.0.1, RS.0.3, RS.6.8: central five-term, Hall multiplier coinvariants, degree-two abelian product and finite-abelian exterior comparison. All-group/noncentral and arbitrary-abelian extensions are distinguished. |
| MappingClassGroupsAndCanonicalRepresentations, PR #2266 | `TauCetiRoadmap/MappingClassGroupsAndCanonicalRepresentations/README.md:847`, §1.1: existence/naturality of cohomological Hochschild–Serre, lift/transgression, five terms and degree-two filtration. The package imports those and supplies the explicit normalized filtration, products and higher transgressions. |
| IntegralIwasawaTheoryPartII, PR #2267 | `TauCetiRoadmap/IntegralIwasawaTheoryPartII/README.md:273`, §0.7: flat base change, vanishing/coinflation and evaluation, compared at the stated coefficient specialization. |
| ModularCurvesPartII, PR #913 | `TauCetiRoadmap/ModularCurvesPartII/README.md:3935`, §15.4: the modular amalgam and correspondence-equivariant sequence. Its additional equivariance is not replanned by the general tree theorem. |

Overlap check: read SpectralSequencesAndConvergencePartII, K3BlochGroups, ArithmeticGaloisDuality, SpectralSequencesAndConvergence, AlgebraicTopology (main and PR #1808), ProfiniteCohomology, DerivedModuleAlgebra and InductionRestriction; generic sequences/convergence belong to the spectral roadmaps and DerivedModuleAlgebra, localized finite-group statements to K3BlochGroups, finite-group UCT/Sylow surjectivity to ArithmeticGaloisDuality, topological chains/cover comparisons to AlgebraicTopology, continuous theory to ProfiniteCohomology, representation induction/conjugation/Mackey to InductionRestriction and the pins. This package owns the explicitly distinguished discrete group/cochain extensions. The closest-results/headings list is empty.

### Supplier order and gaps

Every Needs line and supplier citation was read. The prescribed dependency command returned:

```text
depcheck: 244 roadmaps, 2206 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line, and no banned supplier is consumed. The Hopf route uses pinned trivial-coefficient free-group vanishing rather than waiting for the tree-based arbitrary-coefficient extension. No extra supplier or ownership move is needed for the reported repairs.

`gap:homological-low-degree` occurs in `packages/CohomologyOfGroups/design/plan.json:2461` and README:542, with DerivedModuleAlgebra §S.1 as owner. It requests the two homological edge maps and associated five-term sequence for a first-quadrant double complex; the supplier supplies E₂/convergence and cohomological edges, but does not yet state those homological maps.

`gap:flat-kunneth` occurs in that plan at :2474 and README:563, with SpectralSequencesAndConvergencePartII §4.3 as owner. It requests naturality of the two-column sequence for bounded-above complexes over a commutative ring with higher Tor vanishing. The sequence, its cross-product edge and spectral-sequence naturality already exist in the supplier; the gap requests only the resulting sequence's naturality. The integral-to-homological reindexing gives Tor indices summing to `n−1`, as computed above. Both gaps are precise, minimal named contracts, not unowned prerequisites. This needs-changes verdict is not a conditional acceptance.

## Not verifiable

- Brown82 remains settled uncertified: Ch.II §7, Ch.III §§8–10, Ch.IV §4, Ch.V, Ch.VI §§7,9 and Ch.VII were unavailable. In this round's sample that affects §§1.3,3.6,4.4,4.6,7.2,8.1. Their source wording and contents comparison were not certified.
- CE56 remains settled uncertified: Ch.XVII for hyperhomology and Ch.XII for Tate duality/periodicity were unavailable. No renewed source request was made.
- SwanPPeriod60 remains settled waived: Theorems 1–2 were not read in the primary paper. Hutchinson13's explicitly secondary statement was checked; it does not become primary-source certification.
- The three named padding probes hit Lean's default heartbeat limit. Native definitions, map comparisons and near-matches were inspected, but these timeouts are not exhaustive proof searches.

## Source issues

- **Misprint** in Loh19 at Corollary 3.2.23 proof, printed p.136 (Loh19 line 5903 and line 5908): the source says the tensor resolution uses the G-complex twice; it should use the G-complex and the H-complex; affects the proof.
- **Misprint** in Loh19 at Example 3.2.25 continuation, printed p.138 (Loh19 line 5976 and line 5980): the source says the displayed homology has integral coefficients and dimension n over the prime field; it should have prime-field coefficients and dimension n+1; affects a stated result.
- **Misprint** in Hutchinson13 at Corollary 3.3 proof, printed p.12 (Hutchinson13 line 518): the source says the indicated homology degree is congruent to 3 modulo 3; it should be congruent to 3 modulo 4; affects the proof.
- **Gap** in MilneCFT at Chapter II Remark 3.5, printed p.81 (MilneCFT line 3813–3822): the source says cyclic periodicity is cup with the normalized character class, postponing proof; it should supply the normalization computation or the proof referenced there; affects the proof.

The new Loh19 misprint was checked against the rendered source page, not merely extraction. For n=0 the correct dimension is 1, and for n=1 it is 2. The package uses n+1 and does not inherit it. Milne's item records a locally deferred proof, not a counterexample to its statement. None of these source issues requires another package change.

## For the human reviewers

- Brown82 and CE56 are recorded as uncertified; their text and contents were unavailable. HS53, which has the largest citation share, was readable and compared.
- Loh19 is university-hosted course material; `packages/CohomologyOfGroups/sources.toml:33` records author-page access, not a licence to reuse expression. No expressive reuse was found in the comparisons.

<!-- tauceti-roadmap-review {"agent": "codex", "head": "d78d6b8ac0a2d01ec3fe3fac210d144a69d14a49", "job": "REV-PKG-CohomologyOfGroups~4", "model": "gpt-6-astra", "worker": "chris-10"} -->
