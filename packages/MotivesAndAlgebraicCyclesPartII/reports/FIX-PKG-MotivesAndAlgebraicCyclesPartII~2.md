# FIX-PKG-MotivesAndAlgebraicCyclesPartII~2

Repair round for the review `REV-PKG-MotivesAndAlgebraicCyclesPartII` (six findings, all P3). Files changed: `packages/MotivesAndAlgebraicCyclesPartII/README.md`, `packages/MotivesAndAlgebraicCyclesPartII/sources.toml`. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged (no new supplier gap was needed).

## REV-PKG-MotivesAndAlgebraicCyclesPartII/F01 (P3) — applied

Verified: `roadmaps grep` over main and all open heads finds none of `KSpace.ofRing`, `nonunitalK`, `AbsoluteExcision`, `absoluteExcision_iff_tor`, `TorUnital`, `bassSpectrum`, `bassSpectrum_filteredColimit`, `NonunitalBass.filteredColimit`, `supportKTheory`, `enhancedEt`, `lowerShriek*` in the cited roadmaps; `finiteFieldKGroups` occurs only as an alias declared by GeometryOfNumbersAndQuadraticArithmetic (§6.10), not in GeneralAlgebraicKTheory; `completed` in KTheoryFiniteLocalFields §1.6 is a prose word (`toCompleted` is its only backticked name); `Det`, `IsPartiallyProper`, `canonicalCompactification` do not occur in DiamondEtaleCohomology (#922), whose sections C2.2, C2.12, C4.5, C4.13–C4.14 exist under the titles the README paraphrases; DiamondSixOperations S2.4 is "Properties of `Rf_!`". All cited sections exist at the heads (GeneralAlgebraicKTheory §§3.2, 8.3, 8.10, 10.10, 13.4, 13.5, 13.8c; SchemeKTheoryOperations §§3.1, 3.3, 3.4, 3.8, 6.4, 6.8, 6.11; KTheoryFiniteLocalFields §§1.5, 1.6, 2.1, 6.5).

Changed (README, supplier contracts and three `*Needs:*` lines): every invented name → the section cited with its statement in words (e.g. "§3.2 (`KSpace.ofRing`)" → "§3.2 (functorial connective K-theory of unital rings)"; "§S2.4 (`lowerShriek`, …)" → "§S2.4 (the exceptional direct image `Rf_!` with its base change and projection formula)"). The names that resolve (`perfect_positiveK_uniqueDivisible`, `IsCutoffCardinal`, `vTopology_subcanonical`, `Perf.Spd`, the EnhancedDerivedSheaves names, …) are kept. `roadmaps resolve` now lists no Lean name found nowhere.

## REV-PKG-MotivesAndAlgebraicCyclesPartII/F02 (P3) — applied

Verified at the pin: the Tau Ceti tree has no `KTheory` directory and no `LambdaOperations`; the only `adams*` declarations are in `Algebra/Homology/DG/Algebra/AdamsCompletion.lean` (Adams completion of a dg algebra). SchemeKTheoryOperations §6.4 (head 393a8f1) owns the operations for commutative `A` through the universal lifting property.

Changed: "§6.4 (`TauCeti.KTheory.LambdaOperations.adams` on `K_m(A)` of every commutative ring)" → "§6.4 (Adams operations `ψ^k` on `K_m(A)` for every commutative ring `A`, through the universal lifting property)".

## REV-PKG-MotivesAndAlgebraicCyclesPartII/F03 (P3) — applied

Verified: GeneralAlgebraicKTheoryPartII at its head (#1742) contains no string `KII.`; its §1.2 ("Additive ∞-categories and group-completion K-theory") is the group-completion model with `Kadd(Proj^ω(A)) ≃ τ_{≥0} K(A)`; it states no E∞-ring structure on `K` of an E∞-ring and its own scope line says "§4.10 supplies coherent multiplicative K" of RefinedTraceMethods. RefinedTraceMethods §4.10 ("K-theory as tensor unit and the Dennis trace", head #1493) states that connective K is the tensor unit of the presentably symmetric monoidal category of finitary additive invariants with lax symmetric monoidal inclusion, which makes `K(Perf(R))` an E∞-ring for every E∞-ring `R`. RefinedTraceMethods is at position 223 of the merge order, this roadmap at 228.

Changed: scope line, contract (§1.2 of GeneralAlgebraicKTheoryPartII in words; a new RefinedTraceMethods §4.10 clause in the "KTheoryFiniteLocalFields and RefinedTraceMethods" contract), §6.1 route and `*Needs:*`, Layer 6 Dependencies: "KII.1/additive-k and KII.4/multiplicative-k" → "GeneralAlgebraicKTheoryPartII §1.2 and RefinedTraceMethods §4.10".

## REV-PKG-MotivesAndAlgebraicCyclesPartII/F04 (P3) — applied

Verified: Scholze line 1864 (proof of Corollary 8.2, p. 44) says `ℚ(n)[2n]` sits in degrees `≥ n`; line 1931 (proof of Proposition 8.5, p. 46) says only "upper-triangular". Cancellation reduces `Hom(ℚ(i)[2i], ℚ(j)[2j])` to `Hom(ℚ(i−j)[2(i−j)], ℚ)` for `i > j`, which vanishes by connectivity; the direction `i < j` is `H^{2(j−i)}(X, ℚ(j−i))`, nonzero in general (`X = ℙ¹_C`, `j − i = 1`: `Pic(ℙ¹)_ℚ = ℚ`).

Changed (§6.2 route): "vanishes for `i < j`" → "`= Hom(ℚ(i−j)[2(i−j)], ℚ)` vanishes for `i > j`, because `ℚ(i−j)[2(i−j)]` is `(i−j)`-connective (… Scholze, proof of Corollary 8.2, p. 44) while `ℚ` sits in degree zero". No other place in the README states this vanishing direction (grep for `i < j`, `i > j`, "triangular").

## REV-PKG-MotivesAndAlgebraicCyclesPartII/F05 (P3) — applied differently

Verified: the old justification is not a proof (`ℚ(i) ⊂ M₂(ℚ)` and a quaternion division algebra embeds in `M₄(ℚ)`, as the review says). The review's dimension count needs Harder's vanishing of positive rational K-groups of curves over finite fields plus filtered continuity for schemes; no roadmap on main or at an open head states Harder's theorem (`roadmaps grep -i harder`), and it is not needed. The repair uses only objects already in the roadmap: if `ℚmot[E]` were a sum of rational Tate objects, its multiplicities `n_{i,m}` would be computable both as `dim Hom(ℚmot[E], ℚ(i)[m]) = dim K_{2i−m}(E)^{(i)}_ℚ` and, by duality `ℚmot[E]^∨ = ℚmot[E](−1)[−2]`, as `dim Hom(ℚ(i)[m], ℚmot[E]) = dim K_{m−2i}(E)^{(1−i)}_ℚ`; one of the two K-degrees is negative unless `m = 2i`, and negative K-groups of the regular scheme `E` vanish (SchemeKTheoryOperations §2.6, head 393a8f1, line "For regular Noetherian X … negative K vanishes"). So `ℚmot[E] ≅ ℚ ⊕ ℚ(1)[2]` with `End = ℚ × ℚ` of dimension 2, whereas `End(ℚmot[E]) = CH¹(E × E)_ℚ` contains the three independent classes `E × {0}`, `{0} × E`, diagonal (intersection matrix with zero diagonal by adjunction and `K_{E×E} = 0`, off-diagonal entries 1, determinant 2). The intersection pairing and adjunction formula are cited from Vakil, The Rising Sea (draft of 21 February 2024, author's page, fetched legally through the sources service: Exercise/Definition 20.2.A pp. 580–581 at Vakil lines 24235–24244, the bilinear form (20.2.4.1) at line 24276, Exercise 20.2.B(a) at lines 24285–24290).

Changed: the third Check of §9.5 (old → new as above); the K-theory contract gains SchemeKTheoryOperations §2.6; Layer 9 Dependencies gain SchemeKTheoryOperations §2.6 and MotivicEtaleKTheory §2.2; `sources.toml` and References gain the entry `Vakil` (certified, author-page). `MotivicEtaleKTheory §2.2` (Adams-weight pieces are higher Chow groups) was already in the contracts.

## REV-PKG-MotivesAndAlgebraicCyclesPartII/F06 (P3) — applied

Verified: Scholze line 812 (Definition 4.3, p. 19) tests "any base change `A → C` to an algebraically closed Banach field `C`", discrete fields included; the README tested geometric Banach points only (nondiscrete). The two agree for analytic `A` (a topologically nilpotent element has norm zero in a discrete field, and finitely many generate the unit ideal), and every strict ring is analytic (§0.4).

Changed (§0.6): the definition now quantifies over every algebraically closed Banach field, discrete or not, with the sentence explaining why it may be tested on geometric Banach points for analytic (hence strict) `A`; a Check records that the test class contains the discrete fields. §§0.7, 1.7, 9.3 use the notion on strict or analytic rings and are unchanged.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.6 new test class | analytic `A`, discrete `C`; `A = C = k` discrete algebraically closed; `A = k` discrete, `B = k[T]` with the trivial Gauss norm, `C = k` and `C` nondiscrete | no map: `x ↦ 0` for topologically nilpotent `x` but `Σ a_i x_i = 1` forces `1 = 0`; identity gives `S = {∗}`; `M(k[T])` is the trivially valued Berkovich line, connected, and `C⟨T⟩₁` is the closed disc, connected: rejected on both test classes | holds; agrees with Definition 4.3 on analytic rings | definition widened, Check added |
| §6.2 vanishing direction | `(i, j) = (1, 0)` and `(0, 1)` on `X = ℙ¹_C` | `Hom(ℚ(1)[2], ℚ) = 0` (connective source, degree-zero target); `Hom(ℚ, ℚ(1)[2]) = Pic(ℙ¹)_ℚ = ℚ ≠ 0` | old direction false, new direction holds | `i < j` → `i > j` |
| §9.5 Tate multiplicities of `ℚmot[E]` | all `(i, m)`; `p = 2, 3`; ordinary and supersingular `E` | `n_{0,0} = 1`, `n_{1,2} = dim Pic(E)_ℚ = 1`, `n_{i,2i} = 0` for `i ∉ {0, 1}`, `n_{i,m} = 0` for `m ≠ 2i` (one of `K_{2i−m}`, `K_{m−2i}` negative); `dim End = 2` | contradiction with `dim CH¹(E × E)_ℚ ≥ 3` independent of `p` and of `End(E)` | Check rewritten |
| §9.5 intersection matrix on `E × E` | `E × {0}`, `{0} × E`, `Δ` | self-intersections `2g − 2 − C·K = 0`; pairwise `1` (transverse at `(0,0)`); `det [[0,1,1],[1,0,1],[1,1,0]] = 2` | independent | — |
| §9.5 consistency on a Tate curve | `ℙ¹` in place of `E` | same symmetry gives `ℚmot[ℙ¹] = ℚ ⊕ ℚ(1)[2]`, `dim End = 2 = dim Pic(ℙ¹ × ℙ¹)_ℚ` (classes `ℓ`, `m`, matrix `[[0,1],[1,0]]`) | the argument does not over-prove | — |
| §9.5 duality input | `E` over the discrete field `𝔽̄_p`, `f : E → pt` | `ℤmot[E] = f_* ℤ(1)[2]`, `(f_* ℤ)^∨ = f_* f^! ℤ = ℤmot[E]`, so `ℤmot[E]^∨ = ℤmot[E](−1)[−2]`; Scholze Corollary 9.6 (line 2198) is for every Banach field, discrete included, and Theorem 11.1 (line 2395) gives dualizability of `ℤmot[X](−j)` | holds | — |
| Supplier contract wording (F01–F03) | each section heading at the head | §3.2 "functorial connective K-theory of unital rings", §8.3 "Nonunital rings, the unitisation", §8.10 excision/Tor-unitality, §10.10 Bass spectrum, §13.4–13.5 filtered continuity, §13.8c finite-field groups, SKO §2.6 negative vanishing, §3.1 supported perfect complexes, §6.4 universal lifting, GAKII §1.2 group completion, RTM §4.10 tensor unit | all match | names deleted |

## Checks

- `lake env lean …/Suggested.lean` from the content checkout: exit 0, no output (file unchanged; it declares nothing, so the `#check @name` comparison has nothing to compare and no `variable` binder can be lost).
- Dependency gate: `depcheck: 225 roadmaps, 2224 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere (before the round: `KSpace.ofRing`, `NonunitalBass.filteredColimit`, `Perf.Spd`; the last resolves in DiamondsAndVStacks §D6, line 260 of its README).
- Grep for LaTeX delimiters, process words and machine paths: no match.
- Ownership: the only new citations are of sections that already exist at the suppliers' heads (RefinedTraceMethods §4.10, SchemeKTheoryOperations §2.6, GeneralAlgebraicKTheoryPartII §1.2); nothing new is constructed here. Ownership against open pull requests was checked through `roadmaps grep` for the deleted names and for "Harder".
- Sources: `Vakil` fetched from the author's page and recorded certified; no `needs-references.toml` was needed and none was written.

## For the maintainer

- New supplier citations: RefinedTraceMethods §4.10 (E∞-ring structure on `K` of an E∞-ring, replacing the nonexistent GeneralAlgebraicKTheoryPartII "KII.4") and SchemeKTheoryOperations §2.6 (negative K-groups of regular noetherian schemes vanish, used by the §9.5 Check). Both roadmaps are earlier in the merge order.
- `finiteFieldKGroups` is declared by GeometryOfNumbersAndQuadraticArithmetic as an alias of GeneralAlgebraicKTheory §13.8c, not by GeneralAlgebraicKTheory; this roadmap now cites the section in words.
- No Lean name of this roadmap changed (`Suggested.lean` declares nothing).
