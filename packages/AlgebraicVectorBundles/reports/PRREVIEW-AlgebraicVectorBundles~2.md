# Review of AlgebraicVectorBundles (pull request #1221 at f41881c)

**Verdict:** needs changes

## R01 (P2) — Include the statable pullback headlines

Location: `TauCetiRoadmap/AlgebraicVectorBundles/Suggested.lean:27` (the omitted-headline list), compared with `TauCetiRoadmap/AlgebraicVectorBundles/README.md:185` and `:301`: “Construct natural isomorphisms `f^* Sym^n(E) ≅ Sym^n(f^* E)` and `f^* ∧^n(E) ≅ ∧^n(f^* E)`”.

Claim: the strong monoidal pullback milestone and the two power–pullback comparisons are absent from the acceptance test, although their native carriers and signatures already exist. The summary and scope explicitly promise them. These are general structural results, not boundary-case Checks.

Witness: the three signatures below elaborate at the pins. `TauCeti/AlgebraicGeometry/Modules/Pullback/Basic.lean:293` supplies the canonical oplax tensor comparison; `Mathlib/CategoryTheory/Monoidal/Braided/Basic.lean:530` supplies the native strong braided-functor type.

Repair: add headline statements for the canonical comparison's invertibility and the two power comparisons. The following signatures were elaborated on the pins, with arbitrary schemes and no flatness or quasi-coherence assumptions:

```lean
theorem pullback_tensor_isIso {X Y : Scheme.{u}} (f : Y ⟶ X)
    (E F : X.Modules) :
    IsIso (Functor.OplaxMonoidal.δ (Scheme.Modules.pullback f) E F) := by
  sorry

theorem symmetricPower_pullback {X Y : Scheme.{u}} (f : Y ⟶ X) (n : ℕ) :
    Nonempty ((SheafOfModules.symmetricPower X.sheaf n ⋙ Scheme.Modules.pullback f) ≅
      (Scheme.Modules.pullback f ⋙ SheafOfModules.symmetricPower Y.sheaf n)) := by
  sorry

theorem exteriorPower_pullback {X Y : Scheme.{u}} (f : Y ⟶ X) (n : ℕ) :
    Nonempty ((SheafOfModules.exteriorPower X.sheaf n ⋙ Scheme.Modules.pullback f) ≅
      (Scheme.Modules.pullback f ⋙ SheafOfModules.exteriorPower Y.sheaf n)) := by
  sorry
```

The first statement uses the pinned canonical comparison, rather than an unspecified map. Its unit, symmetry and composition laws are already in `Modules/Pullback/Basic.lean:306`, `:326`, `:348`; cite them in the supplier contract. Preserve the README's normalization and coherence requirements for the power comparisons. On the non-flat map `Spec 𝔽₂ → Spec ℤ`, `E = ℤ/4`, both tensor sides are `𝔽₂`; for a free rank-two sheaf in degree two the symmetric ranks are `3 = 3` and exterior ranks `1 = 1`. The proposed signatures retain these cases.

## R02 (P2) — Do not assign kernel closure to a second roadmap

Location: `TauCetiRoadmap/AlgebraicVectorBundles/README.md:247`: “the kernel of a map of quasi-coherent sheaves on a scheme is quasi-coherent … which this layer proves as its input”; also `:253`.

Claim: this new prerequisite is already an explicit target of SchemeAndStackFoundations on main. Giving it a second owner conflicts with the existing-work contract. Simply importing the whole supplier in return would also reverse the established supply from vector bundles to scheme foundations.

Witness: `TauCetiRoadmap/SchemeAndStackFoundations/README.md:604` on main, §0.4 `qcoh_pushforward`, explicitly includes kernel closure. Its `:405` consumes AlgebraicVectorBundles. The readable open revision retains the same kernel target at `:590`.

Repair: delete the standalone promise to prove general kernel closure here and record its owner, SchemeAndStackFoundations §0.4, in Scope and ownership. State the internal-Hom proof directly on affine charts using the existing exact tilde functor: `TauCeti.AlgebraicGeometry.preservesFiniteLimits_tildeFunctor`, `TauCeti/AlgebraicGeometry/Modules/Tilde/Basic.lean:110`, together with Mathlib's fully faithful tilde functor and affine quasi-coherent equivalence. Add these actual pinned inputs to the contract and `*Needs:*`; no reverse roadmap dependency is necessary. A finitely presented source gives a finite matrix on copies of the target module; tilde carries its kernel to the sheaf kernel. This proves the full arbitrary-scheme headline by locality without reassigning the generic closure theorem.

Test of this route: for `R = k[ε]/(ε²)`, `E = R/(ε)`, `F = R`, the presentation yields multiplication by `ε` on `R`; its kernel is `(ε)`, and `Hom_R(E,R) = (ε)`. Exact tilde identifies both associated sheaves. The route therefore retains non-flat, nonreduced inputs and does not narrow the headline. The native exactness declaration was opened and its type checked with its own module imported.

## R03 (P3) — Compute the actual sheaf pullback in the infinite-rank Check

Location: `TauCetiRoadmap/AlgebraicVectorBundles/README.md:263`: “the comparison `(∏ ℤ) ⊗ ℚ → ∏ ℚ` is not surjective”.

Claim: the module map is indeed not surjective, but it is not the sheaf comparison for the stated `E = 𝒪_X^(ℕ)` on `Spec ℤ`. Its internal Hom into `𝒪_X` is the product sheaf, which is not the sheaf associated with its global-section module.

Witness: the actual source at the generic point is `colim_{m ≠ 0} ∏ᵢ ℤ[1/m]`. It contains `(2⁻ⁱ)ᵢ`; `(∏ᵢ ℤ) ⊗ ℚ`, whose sequences have one common denominator, does not.

Repair: specify `F = 𝒪_X`, replace the source by this filtered colimit, and use `(1/pᵢ)ᵢ`, with `pᵢ` distinct primes, as the missing vector in `∏ᵢ ℚ`. Every source vector has denominators supported on finitely many primes, so this vector has no preimage. The `(2⁻ⁱ)ᵢ` control distinguishes the repaired sheaf calculation from the erroneous module-localization calculation. Keep the valid finite-presentation obstruction in the README.

## R04 (P3) — Attach locators to the pushforward construction and dictionary

Location: `TauCetiRoadmap/AlgebraicVectorBundles/README.md:372` and `:518`: “Construct the pushforward algebra” and “Prove as natural isomorphisms”. Neither claim paragraph has a source locator.

Claim: the references list and neighboring targets do not identify sources for these two sampled targets. In particular §7.2 lists several different comparisons under one paragraph.

Witness: `stacks-01SA line 865` identifies the inverse functor with the pushforward algebra; `ega-ii line 515`, Proposition 1.7.11, printed p. 17, gives the sum/product and base-change comparisons.

Repair: cite Stacks Tag 01SA and Tag 01LQ at §4.1, and Tag 01LC for the quasi-coherence input (affine morphisms are quasi-compact and quasi-separated). At §7.2 cite EGA II 1.7.9–1.7.11, pp. 16–17, for sections, fibres, direct sums and base change, explicitly applying these to `E^∨`; state that the remaining operations are transported through §7.1's equivalence and cite §§2–3 for their sheaf constructions. With `E = k²`, `F = k`, the direct-sum comparison gives `𝔸³_k ≅ 𝔸²_k ×_k 𝔸¹_k`; the fibre and section identifications both give vectors in `k²`, so the dual convention remains intact.

## Verified sound

This is a full AI-assisted review of the two specified files at `f41881ce8dcfe7174dd8ec629f1ea65484a59602`, not an incremental review. Four findings: two P2 and two P3. The prior six findings were checked first. None is being re-raised as a settled, non-actionable finding.

**Previous findings, checked against this head.**

| Previous finding | Passage at this head and assessment |
| --- | --- |
| R01, consumer build failure | Repaired. `Suggested.lean:51`, `:56`, `:61`, `:137` restore the four names; `:121` defines the determinant by an actual product. “`⟨determinantModule E, isInvertible_determinantModule E⟩`” packages real data using a propositional theorem. The recorded targeted gate passes. |
| R02, four wrong locators | Repaired as to all four locators: README `:190` says “Tag 01CD”; `:247–248` says “Tag 01CQ” and “Tag 01LB”; `:427` says “01LX (2)”; `:458` says “Tag 01CL”. I fetched and read each corrected locator. The new ownership assignment at §2.2 is separate finding R02 above. |
| R03, determinant parity | Repaired. README `:332–337`: “it carries the rank function … and its parity” and “compatible with the swap of summands up to the sign”. The rank-(1,2) and two-line swap computations below agree with the ring supplier. |
| R04, missing internal-Hom signature | Repaired. `Suggested.lean:80` states `ihom_isQuasicoherent` with both `[E.IsFinitePresentation]` and `[F.IsQuasicoherent]`; its elaborated signature retains them. |
| R05, supplier listed as consumer; weak affine citation | Repaired. README `:144`, `:227` cite `nonempty_hasLeftDual_iff_isFiniteLocallyFree`; the downstream list at `:541–545` no longer lists PadicMeasuresIwasawaAlgebras. |
| R06, dependency mismatches | Repaired. README `:366` lists Layer 1 for Layer 3; `:505–507` explicitly needs the “base-change comparison of Layer 2 for finite locally free `E`”. |

**Gate and files.** The worker's head-specific gate reports all checks zero, including `depcheck=0`, `build=0`, `outside-folder=0`, `stray-files=0`, `sorry-data=0`, `readme-ids-missing=0`, and ends `OK`. The targeted build in that record includes the consuming SchemeAndStackFoundations module. I independently confirmed the requested head and an empty outside-folder diff. The worktree remained clean. No source, manifest, toolchain, roadmap, or dependency-order file was edited.

The dependency command was independently run with the prescribed `--movable` and main-content arguments. Its complete output was:

```text
depcheck: 204 roadmaps, 1452 edges, 0 problem(s)
```

There is no `UPWARD`, `CYCLE`, or `moved:` line. AlgebraicVectorBundles already exists on main. All 14 target `*Needs:*` lines and seven layer dependency summaries were read. The sole external mathematical supplier explicitly used in these lines is PadicMeasuresIwasawaAlgebras §5.1, already on main. Kernel closure is locally assigned rather than expressed as a supplier edge; consequently the mechanical check cannot detect R02. No declared gaps were present.

**Source sample: all 14 requested targets.** All 14 distinct Stacks tags in the references were fetched through the sources service. Their texts reduce to five chapter PDFs. EGA II was fetched legally from Numdam; Hartshorne was classified as uncertified/paywalled. No README locator is labelled unverified. Tags, chapter-local numbering, printed pages and hypotheses were checked against the extraction, not inferred from the title. Source statements below are paraphrases.

| Target | Locator actually read | Scope and result |
| --- | --- | --- |
| 1.1 Strong monoidal pullback | [Stacks 01CD](https://stacks.math.columbia.edu/tag/01CD), Modules Lemma 16.4, p. 22; `stacks-01CD line 1036` | Arbitrary morphism of ringed spaces and arbitrary modules; functorial tensor comparison. No flatness or finite-presentation hypothesis. Corrected citation supports the claim. |
| 2.1 Dualizability | Modules §18, p. 25, `stacks-0FNU line 1171`; Algebra Lemma 78.2, p. 184, `stacks-00NX line 8610` | Dualizable sheaf iff locally a finite-free summand iff finitely presented and flat; affine finite presentation plus flatness iff finite projective/finite locally free. The QCoh-to-modules inclusion and affine localization give the claimed scheme statement. |
| 2.2 Internal Hom | [Stacks 01CQ](https://stacks.math.columbia.edu/tag/01CQ), Modules Lemma 22.6, pp. 32–33, `stacks-01CQ line 1530`; Schemes §24(5), p. 46, `stacks-01LB line 2119`; Modules Lemma 22.5, p. 32, `stacks-0C6I line 1521` | Finite presentation gives a local finite kernel presentation; quasi-coherent kernels stay quasi-coherent on schemes. Flat base change needs the finitely presented source. The finite-locally-free arbitrary-base-change variant follows from dual/tensor, not by deleting flatness from 0C6I. Mathematics sound; ownership and infinite-rank Check addressed above. |
| 3.1 Rank formulas | Modules Lemma 21.5(3),(5),(6), p. 30; `stacks-01CK line 1414` | Finite presentation, quasi-coherence and local freeness pass to each power. Numerical ranks require the stated monomial/exterior bases; 01CK alone does not state the numbers. Rank zero and characteristic two checked below. |
| 3.2 Pullback comparisons | Modules Lemma 21.3, p. 30; `stacks-01CI line 1404` | Tensor, exterior and symmetric algebras commute with arbitrary pullback; homogeneous pieces give the asserted degreewise comparisons. No local-freeness assumption. |
| 3.3 Determinant | Modules Lemma 21.6, pp. 30–31, `stacks-01CL line 1440`; also Lemma 21.5 for the individual degree; PadicMeasuresIwasawaAlgebras §5.1 at main, README `:3172–3230` | The local exterior-power construction and graded affine comparison are consistent. The product-of-restrictions formula was checked directly on the native carriers; Hartshorne II, Exercise 5.16 was not certified. |
| 4.1 Pushforward/pullback algebras | `stacks-01LQ line 202`, Constructions §4, p. 5; `stacks-01SA line 865`, Morphisms Lemma 11.5, p. 19; `stacks-01LB line 2134`, Schemes Lemma 24.1, pp. 46–47 | Affine structure maps suffice for quasi-coherent pushforward. Morphisms act by pulling back functions; algebra pullback uses ordinary pullback. R04 requests the missing inline locators. |
| 4.2 Functor of points | `stacks-01LQ line 202` and `line 226`, Constructions §4 and Lemma 4.2, pp. 5–6; representability and identification at `line 246` and `line 271`, pp. 6–7 | The test scheme is arbitrary. Both variables have the stated variance; the three adjoint forms of an algebra map agree. |
| 5.1 Anti-equivalence | `stacks-01SA line 865`, Morphisms Lemma 11.5, p. 19 | Schemes affine over the arbitrary base, all base morphisms, and quasi-coherent algebras. Exactly the pinned categories. |
| 5.2 Base change | `stacks-01LX line 293`, Constructions Lemma 4.6(2), p. 7; `stacks-01SA line 869` | Arbitrary scheme base change, with no flatness assumption. Corrected locator matches. |
| 6.1 Graded/symmetric algebras | `stacks-01CL line 1440`, pp. 30–31; `ega-ii line 439`, §1.7.4, p. 15; `line 457`, p. 16; `line 472`, Proposition 1.7.6, p. 16 | Sheaf symmetric algebra, its universal property and grading, affine comparison and quasi-coherence. The graded adjunction is the degree-one version of this universal property. |
| 6.2 Linear schemes | `stacks-062N line 364`, Constructions Lemma 6.3, p. 9; Definition 6.2 at `stacks-01M1 line 350`, pp. 8–9 | Stacks' “vector bundle” here allows arbitrary QCoh degree-one piece, with free symmetric algebra and grading-preserving maps. This is the README's `LinearSch`, not its finite-rank subcategory. |
| 7.1 Geometric equivalence | `stacks-01M1 line 336`, Constructions §6, pp. 8–9; `ega-ii line 482`, Definition 1.7.8, p. 16 | Sources use `Spec Sym(F)` contravariantly. Substituting `F = E^∨` and using finite-local-free biduality gives the covariant total space and section-valued universal property. The source does not itself label this dualized functor by the README's notation. |
| 7.2 Dictionary | `ega-ii line 488`, §1.7.9, pp. 16–17; `line 503`, §1.7.10, p. 17; `line 515`, Proposition 1.7.11, pp. 17–18 | Sections, field-valued fibres, sum/product and arbitrary base change follow with the same dual substitution. Remaining operations are transported across the equivalence. R04 requests these locators at the claim. |

**Computed adversarial pass: 57 rows.** The table splits compound targets into their definitions, identities and comparison laws. Values are independent calculations, not conclusions inferred from successful elaboration. `k` is a nonzero field, `R = k[ε]/(ε²)` where used, and `pᵢ` are pairwise distinct primes. A successful row supports the indicated cases; it is not a proof of the general theorem.

| Statement | Instances tried | Values on the two sides / positive and negative models | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions; finite locally free predicate and alias | `k⁰`, `k`, `k^(ℕ)` | Locally free/finitely presented are `(true,true)`, `(true,true)`, `(true,false)`; FLF values `true,true,false` | Correct distinction from infinite local freeness | None |
| Fixed-rank predicate `isFiniteLocallyFreeOfRank` | `k²`, mixed ranks `(1,2)`, empty scheme | `k²` satisfies rank 2, not 1; mixed sheaf satisfies no constant rank; empty scheme satisfies every rank | Quantifier and empty-base behavior correct | None |
| Rank locus convention | `X = Spec k ⊔ Spec k`, ranks `(1,2)` | `U₁ = {left}`, `U₂ = {right}`, `U₀ = ∅`; union is `X`, pairwise intersections empty | Distinguishes one global rank from rank function | None |
| 1.1 tensor comparison | `ℤ → 𝔽₂`, `E = F = ℤ/4` | `𝔽₂ ⊗_{𝔽₂} 𝔽₂ = 𝔽₂`; `(ℤ/4 ⊗ℤ ℤ/4) ⊗ℤ 𝔽₂ = 𝔽₂` | Non-flat base and modules allowed | R01 signature |
| 1.1 unit comparison | `R → k`; empty base | `k ⊗R R = k = 𝒪_Spec k`; empty case `0 = 0` | Unit map invertible | None |
| 1.1 free comparison and braiding | free ranks 2 and 3; rank-two self-tensor | Tensor bases on both sides indexed by 6 pairs; `e₁⊗e₂` maps to `e₂⊗e₁`, coefficient `+1` on both paths | Ordinary symmetric tensor, no Koszul sign here | None |
| 1.1 identity/composition coherence | identity; `ℤ → ℤ/4 → 𝔽₂`, vector `(1,2)` | Identity returns `(1,2)`; direct and iterated pullback both give `(1,0)` | Compatible with native comparisons | Cite existing partial coherence in R01 |
| 2.1 dualizability iff, positive | `k⁰`, `k²` | FLF true in both; coevaluation `0`, respectively `1 ↦ e₁*⊗e₁ + e₂*⊗e₂`; triangle maps are identity | Both implications agree | None |
| 2.1 iff, negative | `k^(ℕ)`; `k[t]/(t)` over `k[t]` | First has infinite rank but every coevaluation has finite tensor support; second has `Tor₁(k,k)=k`; FLF and dualizable both false | Neither local freeness alone nor finite presentation alone suffices | None |
| 2.1 iff, empty scheme | `Spec 0` | Unique module is zero and unit; both sides true; triangle endomorphism is the unique map | No illicit nonemptiness | None |
| 2.2 quasi-coherent Hom | `E = R/(ε)`, `F = R`; also `E=R²` | `Hom_R(E,R)=(ε)=ker(ε:R→R)`; free case `Hom_R(R²,R)=R²` | Finite kernel presentation gives actual Hom | R02 ownership/route |
| 2.2 kernel-closure input | `ε:R→R`; identity and zero on `R` | Kernels `(ε)`, `0`, `R`; associated sheaf kernels are their tildes | Mathematical input true but already owned | R02 |
| 2.2 flat base-change iso | `ℤ → ℚ`, `E=ℤ/2`, `F=ℤ` | `Homℤ(ℤ/2,ℤ)⊗ℚ=0`; `Homℚ(0,ℚ)=0` | Stated flat criterion agrees | None |
| 2.2 failure without flatness | origin in `Spec k[t]`, `E=k[t]/(t)`, `F=k[t]` | Pullback of Hom is `0`; Hom of pullbacks is `k`; map is `0→k` | Negative control correct | None |
| 2.2 finite-free base change with arbitrary target | `R→k`, `E=R²`, `F=R/(ε)` | Left `k²`; right `Hom_k(k²,k)=k²`; comparison identity on coordinate functionals | No flatness needed for FLF source | None |
| 2.2 dual–tensor identification | `E=R²`, `F=R/(ε)` | `Hom_R(R²,F)=F²`; `(R²)^∨⊗R F=F²`; `eᵢ*⊗a` evaluates to `a` on `eᵢ` | Same evaluation, not a rescaled map | None |
| 2.2 infinite-rank generic-point Check | `Spec ℚ→Spec ℤ`, `E=𝒪^(ℕ)`, `F=𝒪` | Actual source contains `(2⁻ⁱ)`; claimed source with a common denominator does not. Target contains `(1/pᵢ)`; actual source does not | Check misidentifies source; non-surjectivity survives | R03 |
| 2.2 naturality/composition | free source, maps multiplication by 2 and 3; base `ℤ→ℤ/4→𝔽₂` | Composite scalar `6→0`; sequential scalars `0·1=0`; evaluation after either route is zero | Comparison has correct variance/composition | None |
| 3.1 symmetric rank | `(r,n)=(0,0),(0,1),(1,2),(2,2)` | Basis sizes `1,0,1,3`; `multichoose` values `1,0,1,3` | Includes zero-degree unit, no 0/0 | None |
| 3.1 exterior rank | `(r,n)=(0,0),(0,1),(1,2),(2,2),(2,3)` | Basis sizes `1,0,0,1,0`; binomial values identical | Out-of-rank degree gives zero | None |
| 3.1 characteristic-two relations | `k=𝔽₂`, rank 2, degree 2 | Antisymmetric-only quotient has basis `e₁²,e₁e₂,e₂²`, dimension 3; alternating quotient has dimension 1 | Exterior convention is necessary | None |
| 3.1 variable rank and square-zero base | ranks `(1,2)` over two components; `R²` | Sym² ranks `(1,3)`, exterior² ranks `(0,1)`; over `R`, free ranks 3 and 1 survive reduction to `k` | No reducedness or constant-rank assumption | None |
| 3.2 symmetric pullback | `ℤ/4` over `ℤ`, reduction to `𝔽₂`, degree 2 | `Sym²ℤ(ℤ/4)⊗𝔽₂=𝔽₂`; `Sym²𝔽₂(𝔽₂)=𝔽₂` | Arbitrary-module formulation survives nonflat example | R01 signature |
| 3.2 exterior pullback and sign | `R²→k²`, degrees 0,1,2,3 | Modules on both sides `k,k²,k,0`; generator `e₁∧e₂` maps to itself, scalar `+1` | No hidden dual or sign | R01 signature |
| 3.2 composition | `ℤ²`, `ℤ→ℤ/4→𝔽₂`, degree 2 | Direct and iterated reduction send `e₁∧e₂` to the same generator; unit degree maps `1→1` | Pseudofunctorial normalization consistent | None |
| 3.3 determinantModule product, rank loci | ranks `(1,2)` on `Spec k ⊔ Spec k` | Restricted factors give `(k,0)` at degree 1, `(0,k)` at degree 2, zero otherwise; product `(k,k)`, ranks `(1,1)` | Actual product defines a line | None |
| 3.3 determinant restriction theorem | same scheme, `r=1,2,7` | On `U₁`: `k≅k`; on `U₂`: `k≅∧²k²=k`; on empty `U₇`: `0≅0` | The new theorem includes empty rank loci honestly | None |
| 3.3 rank zero and unbounded rank | zero bundle; `⊔_{n≥0} Spec k` with rank `n` on component `n` | At rank 0 the surviving factor is `∧⁰0=k`; at every component `∧ⁿkⁿ=k`; all determinant stalk ranks 1 | No quasi-compactness needed for countable product construction | None |
| 3.3 wrong product without restrictions | rank-one `k` | Unrestricted product has factors `∧⁰k=k`, `∧¹k=k`, others zero: dimension 2; prescribed product dimension 1 | Restriction excludes wrong model | None |
| 3.3 determinantObj invertibility | `R²`; empty base | Determinant is free `R` of rank 1; on empty base unique sheaf is also unit | Packaging uses a proof, not admitted data | None |
| 3.3 equal-rank functor | maps `a,b:k→k`; zero map; rank 0 | Determinant maps are `a,b,ab`; zero has determinant 0 in rank 1; unique rank-zero endomorphism has determinant 1 | Target category must allow non-isomorphisms, as pinned | None |
| 3.3 affine graded comparison | ranks `(1,2)` over `k×k` | Both constructions have underlying `(k,k)`, rank labels `(1,2)`, parity `(1,0)` | Prior parity finding repaired | None |
| 3.3 sum/swap sign | two lines over `ℚ`, then `𝔽₂`; ranks 1 and 2 | Swap determinant `−1` vs sign `(−1)¹=−1`; mod 2 both become 1; rank 1/2 swap sign `+1` | Koszul and ordinary line braidings properly distinguished | None |
| 3.3 determinant pullback | matrix `diag(2,3)` over `ℤ`, reduction mod 5 | Pullback determinant `6 mod 5=1`; determinant of reduced matrix `2·3=1` | Affine comparison retains determinant, not inverse determinant | None |
| 4.1 pushforward algebra object | identity; disjoint union of two copies; `Spec R→Spec k` | Algebras `𝒪`, `𝒪×𝒪`, and `R`; alternative tensor `𝒪⊗𝒪=𝒪` loses two idempotents | Actual functions, correct multiplication/unit | R04 locator |
| 4.1 map variance and algebra base change | affine map given by `t↦u²`; `ℤ[t]→𝔽₂[t]` | Pullback sends coordinate `t` to `u²`; scalar extension is `𝔽₂[t]`, unit `1→1` | Contravariance and structure algebra correct | None |
| 4.2 universal property, unit/polynomial | `T=Spec R`, algebras `𝒪`, `𝒪[t]` | Unit: one morphism/one algebra map. Polynomial: maps indexed by `R`; `t↦a` corresponds to point `a` | Both directions agree including nilpotent `a=ε` | None |
| 4.2 product algebra and disconnected tests | `A=k×k`, `T=Spec k` then `Spec(k×k)` | Respectively 2 and 4 algebra maps/clopen decompositions; empty `T` gives 1 | Both clopen pieces may be empty | None |
| 4.2 naturality | `t↦a`, test map `R→S`; algebra endomorphism `t↦t²` | Test pullback gives image of `a` in `S`; precomposition gives `a²` on both sides | Correct variance in each variable | None |
| 5.1 anti-equivalence | `A=k[t]/(t²)`; empty base | Global functions of affine Spec recover `A`; unit/counit act identically on `1,t`; empty categories each have one isomorphism class | Nonreduced input retained | None |
| 5.1 necessity of affine structure map | punctured affine plane over `k` | Functions `k[x,y]`; relative Spec gives whole `𝔸²`, including origin, rather than the punctured plane | Correct negative control | None |
| 5.1 ramified/inseparable Check | `A=k[x,t]/(t²−x)` | As `k[x]`-module, basis `1,t`, rank 2; fibre at 0 is `k[t]/t²`; in char 2 generic extension purely inseparable of degree 2 | Equivalence needs no étaleness; ramification is not restricted to char ≠2 | None |
| 5.2 base change | `A=𝒪[t]`; `A=𝒪×𝒪`; identity | Both sides `𝔸¹_Y`; at a residue field both sides `Spec κ ⊔ Spec κ`; identity gives same algebra `A` | Arbitrary base change correct | None |
| 5.2 non-flat fibre | `k[x]→k`, double-cover algebra above | Both coordinate algebras `k[t]/t²`, not `k×k` | Nilpotents preserved | None |
| 6.1 graded algebra and symmetric adjunction | `F=k²`; graded `k[t]/t²` | Sym pieces dimensions `1,2,3` in degrees 0,1,2; quotient pieces `1,1,0`; maps from `Sym(k)` to a graded algebra correspond exactly to its degree-one elements | Generated-in-degree-one differs from free | None |
| 6.1 affine/localization/base-change interface | `M=R/(ε)`; localization of `k[x]` at `x` | `Sym_R(M)=R[t]/(εt)` on both affine descriptions; after reduction to `k`, `k[t]`; localized polynomial algebra `k[x,x⁻¹,t]` on both routes | Comparisons preserve relation and degree | None |
| 6.1 finite generation, degree-one generation | `k[t]/t²` degree 1; `k[t]` degree 2 | First generated by one degree-one element; second finitely generated but degree-one part 0 and not degree-one generated | Distinguishes the two preservation claims | None |
| 6.2 linear-scheme definition/equivalence | `F=0,k²`; `α_p` over `𝔽_p`, `p=2,3` | `Sym(0)=k`, `Sym(k²)=k[x,y]`; degree-one recovery gives `0,k²`. For `α_p`, relation `tᵖ=0` has nonzero kernel from `k[t]` | Free-generation condition excludes module-scheme wrong model | None |
| 6.2 morphisms and module structure | `t↦at`; `t↦t²` over `𝔽₂` | Scaling has degree 1 and satisfies `(sv)↦s(av)`; squaring is additive but `(sv)²=s²v²≠sv²` in `𝔽₂[s,v]` | Scheme-level scalar action, not only rational-point linearity | None |
| 6.2 zero/addition/scalar laws | one free coordinate | Ring maps `t↦0`, `t↦t₁+t₂`, `t↦st`; addition associative since both composites `t₁+t₂+t₃` | Canonical module-scheme operations determined | None |
| 7.1 total-space convention and variance | `E=k²`, `A=[[1,2],[0,3]]`, `v=(4,5)` over `ℚ` | Covariant action `Av=(14,15)`; using un-dualized contravariant coordinates gives transpose action `(4,23)` | Dual is essential | None |
| 7.1 geometric equivalence | finite free ranks 0,1,2; infinite free degree-one piece | Totals `X,𝔸¹,𝔸²`; degree-one modules of coordinates are dual ranks `0,1,2`; infinite rank is excluded from GeomVB | Correct finite subcategory and bidual inverse | None |
| 7.1 universal property and zero map | `T=Spec R`, `E=𝒪²`; zero `E→E` | Both sets `R²`; point `(ε,1)` corresponds to same section; zero map sends it to `(0,0)`, not itself | Nonreduced tests and zero-section map retained | None |
| 7.2 base change, sections and fibre | free rank 2, `R→k` | Total space base changes `Spec R[x,y]→Spec k[x,y]`; fibre vectors `k²`, rational points `k²`; global sections `R²` | Correct scheme fibre and point set distinguished | R04 locator |
| 7.2 direct sum | `k²⊕k` | `Spec k[x,y,z]` vs fibre product with coordinate ring `k[x,y]⊗k k[z]=k[x,y,z]` | Product is over the stated base | R04 locator |
| 7.2 zero/addition | two sections `(1,2),(3,4)` over `ℚ` | Both descriptions give zero `(0,0)` and sum `(4,6)` | Transport preserves group operations | None |
| 7.2 dual/tensor/Hom/powers/determinant | ranks 2 and 3 over `k` | Geometric ranks: dual 2, tensor 6, Hom 6, Sym² 3, exterior² 1, determinant 1; equal to sheaf-side dimensions | Transported dictionary agrees in these cases | R04 explicit derivation |

**Pins, native carriers and declarations.** The manifest identifies Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The supplier list was inventoried by object and declaration name (77 entries, including carriers and predicates). In particular, the following declarations and their defining signatures/bodies were opened at those pins; paths below are library-repository-relative.

| Library file and line | Declarations and what they establish |
| --- | --- |
| `Mathlib/AlgebraicGeometry/Modules/Sheaf.lean:36`, `:49`, `:165`, `:182`, `:188`, `:215`, `:236`, `:443` | `Scheme.Modules`, its limits, pushforward, pullback, their adjunction, identity/composition and restriction/pullback comparison. Products live in module sheaves, not in an assumed abelian category of arbitrary QCoh products. |
| `Mathlib/Algebra/Category/ModuleCat/Sheaf/LocallyFree.lean:47`, `:61` | `IsLocallyFreeData`, `IsLocallyFree`: local free generator data without finite-index hypothesis. Infinite ranks are allowed. |
| `Mathlib/Algebra/Category/ModuleCat/Sheaf/Quasicoherent.lean:253`, `:269` | `IsQuasicoherent`, `IsFinitePresentation`: the latter retains finite presentation data; no Noetherian hypothesis. |
| `Mathlib/AlgebraicGeometry/Modules/Tilde.lean:373`, `:889` | `tilde.fullyFaithfulFunctor`, `tildeEquiv`: actual affine module/sheaf comparison used in R02. |
| `Mathlib/AlgebraicGeometry/Restrict.lean:52` | `Scheme.Opens.ι`, used with `Clopens.toOpens` in the elaborated determinant. |
| `Mathlib/CategoryTheory/Monoidal/Braided/Basic.lean:530`; `Mathlib/CategoryTheory/Monoidal/Functor.lean:389` | `Functor.Braided`, `Functor.Monoidal`: native data types make the missing strong-structure headline statable. |
| `Mathlib/CategoryTheory/Monoidal/CommMon_.lean:168`; `Mathlib/CategoryTheory/Monoidal/Subcategory.lean:62`, `:91` | `Functor.mapCommMon`, `ObjectProperty.IsMonoidal`, `fullMonoidalSubcategory`. The proposed algebra constructions use these carriers. |
| `Mathlib/LinearAlgebra/ExteriorPower/Basis.lean:94`; `Mathlib/Data/Nat/Choose/Basic.lean:379` | `Module.Basis.exteriorPower` indexed by `powersetCard`, and the recursive `Nat.multichoose`, with values 1 at degree 0 and 0 for rank 0 in positive degree. |
| `Mathlib/AlgebraicGeometry/AffineSpace.lean:105`, `:151`, `:224` | `homOfVector`, `homOverEquiv`, `SpecIso`: free-bundle Checks use these existing objects. |
| `TauCeti/AlgebraicGeometry/Modules/TensorProduct.lean:52`, `:57`, `:63`, `:74` | The canonical monoidal, symmetric, closed and QCoh monoidal-property instances. |
| `TauCeti/Algebra/Category/ModuleCat/Sheaf/TensorProduct/Closed.lean:73`, `:87`, `:104`; `TauCeti/Algebra/Category/ModuleCat/Sheaf/InternalHom/FinitePresentation.lean:306` | Sheaf closed structure, underlying internal Hom, dual, and `ihomStalkEquiv` with its finite-presentation hypothesis. |
| `TauCeti/Algebra/Category/ModuleCat/Sheaf/LocallyFree.lean:143`; `TauCeti/AlgebraicGeometry/VectorBundle/FiniteLocallyFree.lean:75`, `:103`, `:134`, `:140`, `:153`, `:183` | FLF is the intersection of local freeness and finite presentation; full subcategory, finite biproducts, free objects, arbitrary pullback and inclusion into finitely presented sheaves. Morphisms are all module maps. |
| `TauCeti/AlgebraicGeometry/VectorBundle/OpenCover.lean:63`; `TauCeti/AlgebraicGeometry/VectorBundle/Quasicoherent.lean:43`; `TauCeti/AlgebraicGeometry/VectorBundle/Functoriality.lean:43`, `:80` | Open-cover criterion, QCoh inclusion and pullback coherences, already supplied. |
| `TauCeti/AlgebraicGeometry/VectorBundle/Rank.lean:124`, `:172`, `:201`, `:219`, `:247`, `:270` | Rank, pullback/biproduct/tensor formulas, rank loci and invertibility iff pointwise rank one. |
| `TauCeti/AlgebraicGeometry/VectorBundle/FixedRank.lean:50`, `:69`, `:185` | Constant-rank property, full fixed-rank category, and rank-one/invertible equivalence. No invertibility requirement on morphisms. |
| `TauCeti/AlgebraicGeometry/VectorBundle/Dual/Basic.lean:59`, `:78`, `:118`; `TauCeti/AlgebraicGeometry/VectorBundle/Dual/Bidual.lean:67` | FLF dual, rigidity, forward dualizability implication and actual bidual map. |
| `TauCeti/AlgebraicGeometry/VectorBundle/Affine/Basic.lean:102`; `TauCeti/AlgebraicGeometry/Modules/Tilde/Dual.lean:113` | Finite-projective equivalence and dualizability iff under `[IsAffine X]`. They do not prove the general-scheme converse in the submitted headline. |
| `TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:89`, `:112`, `:121`, `:133` | Invertibility property, full category `InvertibleSheaf`, free and trivial objects. In particular its morphisms are not restricted to line isomorphisms. |
| `TauCeti/Algebra/Category/ModuleCat/Sheaf/SymmetricPower.lean:52`, `:81`, `:99`; `TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower.lean:49`, `:75`, `:95` | Powers are sheafifications of sectionwise powers with degree-zero/one comparisons. The two missing arbitrary-degree pullback comparisons are not supplied here. |
| `TauCeti/AlgebraicGeometry/RelativeSpec/Basic.lean:355`, `:360`, `:396`; `TauCeti/AlgebraicGeometry/RelativeSpec/Functor.lean:159`, `:166`, `:178`; `TauCeti/AlgebraicGeometry/RelativeSpec/Affine.lean:153` | Relative Spec, map to base, chart pullback, QC algebras, affine-over category, functor and affine comparison. “Affine” qualifies the structure map; the base need not be affine or separated. |
| `TauCeti/AlgebraicGeometry/Modules/Pullback/Basic.lean:293`, `:306`, `:315`, `:326`, `:348`; `TauCeti/AlgebraicGeometry/Modules/Pullback/Affine.lean:115`, `:170` | Canonical oplax structure, invertible unit and symmetry/composition formulas; strong structure on the QCoh composite when the source of the pullback functor is affine. These are partial inputs, not the arbitrary-module strong theorem. |
| `TauCeti/AlgebraicGeometry/Modules/Tilde/Basic.lean:110`; `TauCeti/AlgebraicGeometry/Modules/Quasicoherent/Pushforward.lean:53` | Exact tilde and QCoh pushforward along `Spec.map`, useful existing affine inputs. The former makes R02's repaired proof route concrete. |

**Elaboration and padding.** I built the missing individual Tau Ceti imports, then ran the specified `lake env lean` command on the actual submitted module: exit 0, exactly seven `declaration uses sorry` warnings, no other warnings/errors. A separate copy appended `#check @name` for all **12** declarations (seven theorems, three definitions and two abbreviations); exit 0. The types were compared with the README. All finite-presentation, quasi-coherence, scheme, bundle, degree and rank-locus binders survived. No signature change was needed. `determinantObj` depends on a propositional invertibility theorem; its underlying module is the real product definition, not sorry'd data. `ULift` merely supplies the small product index at universe `u`; it does not replace a category carrier.

On another copy, each of the seven theorem bodies was tried with `simp`, `rfl` and `infer_instance` individually in rollback branches. All seven still required `sorry`; the probe exited 0 with seven admission warnings. Reading the corresponding library results also found no one-lemma closure: the dualizability iff has an affine hypothesis, the power files have degree-zero/one formulas rather than arbitrary-rank formulas, and there is no pinned determinant or relative-Spec equivalence. The rank-locus restriction theorem is a general comparison with a genuine sheaf product, not reflexivity. No padding finding is raised.

**Headline inventory.** README headlines are: strong monoidal pullback; the dualizability criterion; internal-Hom quasi-coherence and base-change comparisons; symmetric/exterior finite-local-freeness and rank; their pullback comparisons; determinant construction/invertibility and its comparisons; relative-Spec anti-equivalence and base change; the linear-scheme anti-equivalence; the finite-bundle equivalence and section-valued universal property. Seven signatures are present. R01 concerns three missing statable structural signatures. The module docstring explicitly names the missing algebra-pullback, graded-algebra, linear-scheme and geometric-total-space carriers for §§5.2, 6.2 and 7.1. These are legitimate missing constructions; the docstring's claim about lack of a strong pullback structure does not make the *existence theorem for that structure* unstatable. The fully coherent internal-Hom base-change map and the downstream algebra/total-space statements still need their new constructions; no stand-in should be added for them.

**Ownership and supply.** Read the main AlgebraicVectorBundles and AlgebraicCurves roadmaps for shape, and the relevant main SchemeAndStackFoundations sections. The submitted folder preserves the existing roadmap's seven stages, mapping the old L0A/L0B/L0C/L1A/L1B/L2A/L2B labels to Layers 1–7. It removes already supplied material from the targets while retaining its imports; this is maintenance of the existing roadmap, not a new competing roadmap or a route-specific scope reduction.

Object searches were run with `roadmaps grep`, in the pinned libraries, in the board's package READMEs/Lean files, and in the accessible open-roadmap material. `roadmaps show SchemeAndStackFoundations --pr 1276` was also read; ownership decisions use main for this existing roadmap. Searches covered linear schemes, geometric total spaces, graded QC algebras, relative-Spec equivalence, dualizability, power pullbacks, determinants and QCoh kernels. The generic kernel theorem is the overlap in R02. No second owner was found for this roadmap's remaining seven-stage construction. Open hits about other tensor categories, formal/analytic stacks or relative Proj are not the same objects. The service's cached entry for this PR was not used as the reviewed head; all target line references above come from the specified worktree.

Resolved cross-roadmap citations at main:

- `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:323–337`, `:3172–3230`: ring determinant, equal-rank maps, arbitrary ring base change, parity and Koszul symmetry. The supplier explicitly imports no scheme construction. The repaired affine determinant comparison here matches it; no cycle is needed.
- `TauCetiRoadmap/JacobianChallenge/README.md:111` (Layer A) and `:218` (Layer D): line bundles/Picard group and Picard/Jacobian construction are the named exclusions.
- `TauCetiRoadmap/AlgebraicCurves/README.md`, Scope boundaries and Layers 0–5: curve places, divisors and degree/Riemann–Roch remain there; no curve degree theorem is replanned here.
- `TauCetiRoadmap/StableReduction/README.md:319–325`, `:439–445`: it consumes L2A's graded algebra and builds relative Proj. `TauCetiRoadmap/SchemeAndStackFoundations/README.md:555` (§0.3) is the other Proj owner, with the explicitly stated comparison to StableReduction.
- `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean:1872`, `:2535`, `:2550`, `:2565`: the consumer uses precisely the four restored names. Its main README `:405` consumes the old layer labels. The recorded targeted gate confirms that the repaired aliases/determinant packaging discharge the prior build failure.
- `TauCetiRoadmap/GroebnerGeometry/README.md:41`, `TauCetiRoadmap/AdicSpacesPartIII/README.md:403`, `TauCetiRoadmap/NilpotentOrbits/README.md:64`, `TauCetiRoadmap/ReductiveGroups/README.md:380`, and `TauCetiRoadmap/SchubertGeometry/README.md:23` resolve the downstream citations to vector-bundle inputs. They do not supply prerequisites to this roadmap.

The new determinant definition owns scheme-level gluing over possibly infinitely many clopen rank loci, while PadicMeasuresIwasawaAlgebras owns the finite-projective ring determinant. On affine schemes the rank function has finite image; on non-quasi-compact schemes it need not, and the product definition handles the latter. No computational algorithm, good-prime restriction, copied source passage, free proposition stand-in, `set_option`, sorry'd data, or outside-folder edit was found. Every target has a Checks block of at least three bullets; the determinant has five. The Check defect and missing inline locators are R03–R04. There are no empty layers or unassigned heavy carriers apart from the duplicate ownership requiring the repair above.

## Not verifiable

- **Hartshorne, Algebraic Geometry, II, Exercise 5.16** (`hartshorne`): the sources service resolved the citation to the paywalled Springer DOI family and returned `uncertified`; no legal full text was supplied. I did not certify the exercise's wording, hypotheses or its support for the varying-rank product formula. That formula was instead checked directly, and the local exterior-power facts were checked in Stacks. The book's broader II.5 reference remains uncertified too. No alternative source request was created for this settled paywalled result.
- The computations do not prove the seven admitted Lean theorems. Their statements elaborate; the mathematical review checks hypotheses, examples, proof inputs and sources. The worker's recorded targeted gate, rather than a second independent rebuild of the consumer, is the evidence for the full two-module build.

## Source issues

- none
