# GATE-SchemeAndStackFoundations~2: answers to the human review of `0cb327b`

All points come from one comment (CBirkbeck, 2026-11-01T17:29:59Z, findings F01–F10). They are
numbered H01–H10 in order. Repairs are in commit `828d0b6` on top of `0cb327b` and are not pushed.

## H01 (CBirkbeck) — answered

The two-way supply with JacobianChallenge predates this pull request. Main's
`TauCetiRoadmap/SchemeAndStackFoundations/README.md` already consumes JacobianChallenge A–F (44 citations, including the supplier list "From JacobianChallenge: A … F"), and main's `TauCetiRoadmap/JacobianChallenge/README.md:152,196,208,229,246,277,279,286` consumes §§0.9, 1.1, 3.6–3.7, 4.9, 4.12 and 4.14 of this roadmap. §4.9's supplier paragraph is byte-identical to main's. The only JacobianChallenge edge this pull request added was §4.10A's `*Needs:* … JacobianChallenge Layer C`, and that edge is gone with §4.10A (H03). Breaking the remaining cycle means moving ownership between two roadmaps on main, including deleting targets in JacobianChallenge. That cannot be done inside this folder, so it needs a separate restructuring that a human decides on. The mechanical depcheck does not see these main-to-main edges: `depcheck: 204 roadmaps, 1471 edges, 0 problem(s)`.

## H02 (CBirkbeck) — applied

This branch was cut before main's commit `6d56013e` (#1163). That commit's README change was applied to the branch by a three-way merge, which applied cleanly. §3.4 now matches main. `gradedPicardGroupoid X` has degree `f : LocallyConstant X ℤ`, morphisms only between equal degrees, and the sign `(−1)^{f·g}` glued over clopen loci. The connected, disjoint-union, point-degree, pullback-component and degree-zero Checks are back. The point-degree Check is the reviewer's witness on `𝔸¹_ℚ`, where `ℚ[t]^× = ℚ^×`. On `Spec(ℚ×ℚ)` with `f = (0,1)` the self-symmetry is the unit `(1,−1)`.

## H03 (CBirkbeck) — applied

§4.10A ("Polarized adic systems and projective algebraization") is deleted. The boundary is back to main's wording in two places. The scope paragraph, README `:71–75`, again says polarized algebraization and its category equivalence are outside this scope. §4.10 again says "Algebraization of a polarized adic system, the corresponding category equivalence, and effective formal deformations of curves are outside this subsection". `polarized_adic_system_algebraize` was a README-only target, so `Suggested.lean` does not change for this point. The deleted text is preserved at `0cb327b` for a Part II roadmap.

The existing SchemeAndStackFoundationsPartII design covers flat cohomology and does not take this material. The open EnriquesSurfaces pull request cites "SchemeAndStackFoundations … 4.10A" and must move that citation to whichever roadmap takes the extension.

## H04 (CBirkbeck) — applied differently

The repair comes from main's `6d56013e`, which was merged into the branch (see H02), rather than by routing through StableReduction Layer 2. §0.3's `relativeProj` now accepts any degree-zero part `A_0`, as an `O_S`-algebra through its unit (Stacks 01NN). "Generated in degree one" is defined over `A_0`, and the section adds `relativeProj_veronese` (keeping `A_0`) and `relativeProj_closedImmersion`. The finite-group quotient (§1.17) now says `A_0 = (f_* O_Y)^Γ` is in general not `O_S` and imposes nothing on it.

The reviewer's witness is now two Checks. `relativeProj_product_degreeZero`: `A = k[x,y]×k[x,y]` has `A_0 = k×k`, its `relativeProj` is `ℙ¹ ⊔ ℙ¹`, and every Veronese keeps `A_0 = k×k`. `finiteGroupQuotient_two_components`: `Y = ℙ¹ ⊔ ℙ¹`, `Γ = 1`, and `q` is the identity. `relativeProj_eq_stableReduction` still identifies the finitely generated case with StableReduction's relative Proj, so no second carrier is introduced.

## H05 (CBirkbeck) — applied

`Suggested.lean` gains `Formal.DeJong.IsProjectiveOverSpec R g`. It holds when, for some `n`, there is a closed immersion over `Spec R` into Mathlib's `Proj (MvPolynomial.homogeneousSubmodule (Fin (n+1)) R)`. Both headlines now use it:
- `alteration_theorem`: `IsProper g` → `IsProjectiveOverSpec k g`.
- `semistable_alteration_theorem`: `IsProper g` → `IsProjectiveOverSpec R₁ g`.

In the README, §4.19's "properness is the consequence recorded in `Suggested.lean`" and §4.20's "projectivity conclusion is outside this statement" are gone. §4.19 now defines the predicate with an API and four Checks. The source confirms projectivity in both theorems: `de-jong-alterations line 601` (Theorem 4.1(i), p. 66) and line 1258 (Theorem 6.5(i), p. 83), Numdam open copy.

Over a field or a local ring this is de Jong's projectivity, because every finite-type module is a quotient of a free one. StableReduction Layer 2 still owns projective morphisms in general; this predicate is their affine-base case. Its fully qualified name differs from the field-only `IsProjectiveOver` in the open AlgebraicModuliForArithmeticGeometryPartII pull request.

## H06 (CBirkbeck) — applied

`Formal.grothendieck_existence_fullyFaithful` is added to `Suggested.lean`. It is the reviewer's signature, under the README's existing name and with the same hypotheses as `grothendieck_existence`: compatible level maps `g n : j n^* M ⟶ j n^* N` give `∃! G : M ⟶ N` with `(pullback (j n)).map G = g n`. §4.10 now says "Prove `grothendieck_existence_fullyFaithful`", and its Lean line lists the declaration. A Check `grothendieck_existence_fullyFaithful_test_scalar` is added: for `k[[t]]`, compatible residues give a unique series, and the residues `0`, `1 mod t²` fail the compatibility hypothesis.

## H07 (CBirkbeck) — applied

`*IsNagata.of_finiteType*` now cites Proposition 10.162.15 (0334), item (2), instead of 0335 (`stacks-algebra line 21107–21110`). The other two 0335 citations (README `:1364`, `:1393`) are kept. They claim that rings of finite type over `𝔽₂` or over `k` are Nagata, which is item (5) of 0335 (`stacks-algebra line 21186–21192`).

`yonedaEquiv` now cites Categories, Lemma 4.41.2 (004B) (`stacks-categories line 4451`). 0432 is the stack-in-setoids criterion (`stacks-stacks line 484`). It stays on `*StackInGroupoids.ofSheaf*` and on §1.23's `isSetoid_iff_moduliFunctor`, where it is the right citation.

## H08 (CBirkbeck) — applied

Four items are deleted from `Suggested.lean`:
- `universalHomeomorphismEtaleEquivalence_functor`. Its content is in §0.23a's prose, and the Lean line now says the forward functor is `smallEtaleBaseChange f` by construction.
- `Formal.DeJong.nodal_codim_two_thickness_three_residual`. Its README Check stays, with `s²(ab − st)`, dimension 3 and embedding dimension 4.
- The `example` invoking `fixed_of_henselian`.
- The `example` with the valuative criterion for proper `f`, along with its comment.

In the README, Convention 5 now says "and no `example`s" (it said "two proved `example`s"), and the §0.12 and §4.18 Lean lines are updated.

## H09 (CBirkbeck) — applied

The module docstring now names every omitted end theorem from the README summary, and the carrier each one lacks at the pins:

| Section | Theorem | Missing at the pins |
|---|---|---|
| §1.23 | Keel–Mori | algebraic stack, inertia and coarse moduli space (only `StackInGroupoids` is here) |
| §§2.19–2.20 | Grothendieck duality | derived pushforward on `DQCoh` |
| §2.22 | scheme Brauer class `Br_Az(X) → H²(X_ét, 𝔾_m)` | Azumaya algebras on schemes and étale `𝔾_m` cohomology (the docstring says the affine matrix-splitting theorems are not this map) |
| §3.6 | Picard torsors | only `relativePicardPresheaf`, not its fppf sheafification or degree decomposition (the docstring records the pointless-conic `2ℤ` versus `ℤ` distinction) |
| §4.4 | Schlessinger | `C_Λ` with fibre products, the dual-numbers object, the tangent-space vector structure and hulls in `Ĉ_Λ`, together a long encoding |
| §5.8 | GRR | Chern character, Todd class and `K_0` pushforward |
| §5.10 | Hodge index | an intersection pairing on Pic of a surface |

## H10 (CBirkbeck) — applied differently

The cited section is fixed fully, but the same format elsewhere is not converted.

§4.2 is rewritten. `C_Λ` and `Ĉ_Λ` are defined in prose. The API is prose bullets, keeping only library names in code spans. The five Checks are computed prose with no Lean labels: `ℤ/4` with residue field `𝔽_2`, `ℤ_p` not Artinian, a two-dimensional cotangent space for `k[ε] ×_k k[ε]`, `k[x]/(x³) → k` not small, and a new non-local control `k[x]/(x²) × k`. The cross-references to `ArtinLocalAlg`, `CompleteLocalAlg` and `dualAdd` (README `:219`, `:351`, §4.3) are reworded.

About 700 other Check bullets inherited from main use the same `name: …` labels, and many of those labels are cross-referenced in prose (for example "`algebraize_hom_test_incompatible` below"). Converting them mechanically would break those references, so the document-wide conversion is left as a separate editing pass.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `IsProjectiveOverSpec R g` | `R = 0`; `n = 0`; `ℙ¹_{k[[t]]}`; `𝔸¹_k`; empty `X` | `Spec 0 = ∅`, so `X = ∅` and it holds; `Proj R[T₀] ≅ Spec R`; identity on `ℙ¹_R` works; `𝔸¹_k` would be closed in proper `ℙⁿ_k`, but `𝔸¹_k → Spec k` is not universally closed, so it fails; `∅ ⊂ ℙ⁰_R` holds | correct; wrong model `IsProper` is excluded by proper non-projective schemes | Checks added in §4.19 |
| `alteration_theorem` (projective) | source Thm 4.1; `X` a regular projective curve, `Z` a point | source (i) says "projective variety", line 601; the identity alteration with `X̄₁ = X ⊂ ℙⁿ` satisfies it | matches source | `IsProper g` → `IsProjectiveOverSpec k g` |
| `semistable_alteration_theorem` (projective) | source Thm 6.5; `X = ℙ¹_{k[[t]]}`, `Z = X_s` | source (i) says "projective S₁-variety", line 1258; the identity with `H = ∅` has boundary `X_s`, and `ℙ¹_R` is projective via `n = 1`, `i = id` | matches source | `IsProper g` → `IsProjectiveOverSpec R₁ g` |
| `grothendieck_existence_fullyFaithful` | `X = ∅`; `A = k[[t]]`, `X = Spec A`, `M = N = O`; residues `0`, `1 mod t²`; `A` discrete (`I = 0`) | `Hom(0,0)` is a singleton, so `∃!` holds; compatible `a_n` give the unique `a = lim a_n`; `1 mod t²` restricts to `1 ≠ 0`, so `hg` fails; with `I = 0`, `j n` has kernel 0 and `g n = G` | true; Noetherian `X` makes `I`-adic and `I_A O_X`-adic towers cofinal | theorem added |
| §4.2 `C_Λ` Checks | `ℤ/4`; `ℤ_p`; `k[ε]×_k k[ε]`; `k[x]/(x³)→k`; `k[x]/(x²)×k` | `𝔪 = (2)`, residue `𝔽₂`, length 2; chain `pⁿℤ_p` strictly decreasing; `𝔪 = (x,y)`, `𝔪² = 0`, `dim 𝔪/𝔪² = 2` against 1 for `k[ε]`; `𝔪·(x) = (x²) ≠ 0`; two maximal ideals | each excludes its wrong model (no Artinian clause; no locality; factor confusion) | rewritten |
| §3.4 graded Picard (merged) | connected `X`, degree 1; `Spec(ℚ×ℚ)`, `f = (0,1)`; `𝔸¹_ℚ` point degree | self-symmetry `(−1)^{1} = −1`; `(1,−1)`; the non-constant unit is impossible since `ℚ[t]^× = ℚ^×` | consistent | main text merged |
| §0.3 `relativeProj`, `A_0 ≠ O_S` (merged) | `A = k[x,y]×k[x,y]`; Veronese `d = 2` | `A_0 = k×k`; `relativeProj = ℙ¹ ⊔ ℙ¹`; `A^{(2)}_0 = k×k` | consistent with §1.17's quotient | main text merged |
| Locators 0334 / 004B | source text | 0334(2): "any finite type R-algebra is Nagata"; 004B: 2-Yoneda for categories fibred in groupoids | correct | two locators changed |

**Elaborated signatures.** The `#check @name` lines were appended temporarily to `Suggested.lean`, the file was built with the brief's `lake build` (no other Lean command is allowed), and then the lines were removed. They covered the four declarations added or changed here: `IsProjectiveOverSpec`, `alteration_theorem`, `semistable_alteration_theorem` and `grothendieck_existence_fullyFaithful`. The printed types match the README:
- `IsProjectiveOverSpec k g` and `IsProjectiveOverSpec R₁ g` appear in the conclusions.
- `grothendieck_existence_fullyFaithful` keeps `[IsNoetherianRing A.carrier]`, `[IsProper f]`, `[∀ n, IsClosedImmersion (j n)]` and both `IsFinitePresentation` instances.

No binder was lost. Other declarations were not rechecked this round.

**Ownership.** For `IsProjectiveOverSpec`, open pull requests were searched with `roadmaps grep` for projective-morphism predicates. The only match is the field-only `IsProjectiveOver` in AlgebraicModuliForArithmeticGeometryPartII, under a different name and namespace. StableReduction Layer 2 is cited as the general owner.

**Sources read.**
- `de-jong-alterations`: Numdam open copy of PMIHES 83 (1996), lines 597–603 and 1253–1259.
- `stacks-algebra`, `stacks-categories`, `stacks-stacks`: Stacks project PDFs.

This job may not edit `sources.toml`, so these keys are not in the manifest. No source is missing; `needs-references.toml` was not written.

## Build and gate

`lake build TauCetiRoadmap.SchemeAndStackFoundations.Suggested TauCetiRoadmap.AdicEtaleGeometry.Suggested TauCetiRoadmap.EnhancedDerivedSheaves.Suggested`: `Build completed successfully (9279 jobs)`. The only warnings are `declaration uses 'sorry'`.

Depcheck: `depcheck: 204 roadmaps, 1471 edges, 0 problem(s)`, with no UPWARD, CYCLE or moved line.

Gate: `gate SchemeAndStackFoundations: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`
