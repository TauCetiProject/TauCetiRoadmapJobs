# PORT-AdicCoefficientsAndComparisonsPartII

Branch `roadmap/adic-coefficients-and-comparisons-part-ii`, head commit `4dd1d9c` (4dd1d9c591535e6b7f5ffd518e94498b1d65ef9f), one commit on top of main `a0ad405`. The commit adds `TauCetiRoadmap/AdicCoefficientsAndComparisonsPartII/{README.md,Suggested.lean,metadata.toml}` and nothing else (git diff against origin/main: 3 files, 1914 insertions).

## Build

Exact outcome line of `lake build TauCetiRoadmap.AdicCoefficientsAndComparisonsPartII.Suggested` at the head commit:

```text
Build completed successfully (8954 jobs).
```

Warnings: 2, both `declaration uses sorry` (`Suggested.lean` lines 127 and 137, the two theorems). No other warning. Pins of this worktree's manifest: Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2`, Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`.

The file keeps its `module` header (ten `Suggested.lean` files on main use it; without it the build emits a third warning asking for it). Because `module` keeps the declarations private to importers, the signature audit was run on a scratch copy of the file with `#check @name` appended for all six declarations inside the namespace, elaborated once with `lake env lean`. Every elaborated type equals the worker's `signatures.md` entry and matches its README statement in §PA.5.2b: the two theorems carry `NontriviallyNormedField K`, `IsUltrametricDist K`, `CompleteSpace K`, `IsAlgClosed k`, `CompleteSpace k`, the nontrivial-norm witness and the finiteness witness explicitly; no section binder was dropped. Nothing in the Lean changed except the docstring title.

## Gate

```text
gate AdicCoefficientsAndComparisonsPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

Dependency direction (`gate --depcheck … --movable`, exact output):

```text
depcheck: 204 roadmaps, 1662 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.

## Draft pull request body

This roadmap develops alterations whose generic degrees have prescribed prime support: Temkin's char(X)-alterations and desingularization of morphisms, Gabber's prime-to-ℓ alterations over fields and one-dimensional bases, the prime-to-ℓ variety form used by Jannsen's Hasse principles and the odd-degree regular model used by Dittmann–Pop. It is Part II of AdicCoefficientsAndComparisons, whose Layer L5 uses alterations in the scheme–v-sheaf comparison without controlling their degrees. Starting from scheme and valuation foundations, it builds degree-controlled alterations and universal resolvability (projective for quasi-excellent bases of dimension at most two, proper for separated quasi-excellent threefolds), pointed Riemann–Zariski spaces, tame distillation for field extensions and for alterations with separable variants, log regular pairs with normalized monoidal blow-ups, functorial monoidal desingularization and the inertia-specializing extension of Gabber's modification, uniformization of one-dimensional valued and analytic fields, Temkin's stable modification of non-proper multipointed relative curves, resolution of relative curves by prime-supported alterations, and the final desingularization theorems together with Rumely's theorem on integral points and de Jong's arithmetic semistable alteration over a global Dedekind base. `Suggested.lean` states the analytic uniformization theorem (existence, perturbation stability and the residue-coordinate clause) on complete ultrametric normed fields; the module docstring lists the remaining headline theorems and the carriers (projective morphisms, quasi-excellence, log structures, snc divisors, arbitrary-rank tameness, the Riemann–Zariski limit, scheme alterations) they lack at the pins.

## Dependencies that are still pull requests

CrystallineCohomology (CR.5:log-algebra.1–4), LefschetzPencilsAndVanishingCycles (§0.10), ClassicalAdicEtaleCohomology (§2.4), ResolutionOfSingularitiesCharacteristicZero (§§7.5–7.6) and the base roadmap AdicCoefficientsAndComparisons (Layer L5). Each was checked at its open head through the roadmap service: every cited section and target name exists there. On main: SchemeAndStackFoundations (§§0.9, 0.16–0.21, 1.17, 2.4, 2.6, 2.11, 2.20, 3.3–3.4, 3.6, 4.11–4.20, 5.9, all headings present, and the names `IsQuasiExcellentRing.isNagata`, `Formal.IsAlteration`, `Formal.IsAlteration.IsGenericallyEtale`, `IsStrictNormalCrossings`, `resolution_of_curves`, `genericDegree_comp`, `flattening_by_blowup`, `chow_lemma`, `finiteGroupQuotient_projective`, `bertini_smoothness`, `serre_normality_criterion`, `regular_map_completion`, `depth_shortExact`, `classGroup_picard_locallyFactorial`, `RelativeDualizingComplex.*`, `relativeDualizingModule_invertible_iff` all found in its README or Suggested.lean), StableReduction (Layers 2–4), PurityOfBranchLocus (§0.3, `IsRegularLocalRing.free_of_isCohenMacaulay`, `auslander_buchsbaum`), EtaleCohomologyFoundations (§F.0.A1, `SchemeInertia`). LocalFieldsRamificationPartII (GF.0–GF.6) is a board package at merge-order position 363, one above this roadmap; all fourteen slugs it is cited by occur in that package's design README.

Pinned declarations: every Mathlib and Tau Ceti name in the supplier contracts was grepped at the pins and found at the stated file (ResidueField.lean:147 `Hom.residueDegree`, Normalization.lean:122/215/372 and the `normalization.hom_ext` note at line 25, IdealSheaf/Subscheme.lean:659/662/707, LocalStructure.lean:376, ConstructibleTopology.lean:160, LocalSubring.lean:116, UniversallyOpen.lean:105/129, FinitePresentation.lean:161, ValuativeCriterion.lean:24/274, AlgebraicClosure.lean:39, NormedValued.lean:47, Topology/Algebra/Field.lean:60, ValuationSubring.lean:854, Etale/Basic.lean:205; Tau Ceti ValuationSpectrum/Basic.lean:73/212/241/253, PatchPresentation.lean:96/196, ResidueDegree.lean:47/65, Quotient/Affine.lean:59, Quotient/FiniteGroup/Affine.lean:66/73/85).

## What moved from the Lean to the README

Nothing. The package's `Suggested.lean` already satisfies the acceptance-test form (four definitions with real bodies on native carriers that the two headline theorems need, no API lemmas, examples or sorry'd data). Nothing statable at the pins is absent: the other headline families each need a carrier the pins lack, as the docstring records and as the greps for projective morphisms, quasi-excellence, log structures, normal crossings and alterations confirm (no hit in either library at the pins).

## Supplier replacements and duplication removals

None required: the package restates nothing a pinned library or a roadmap on main provides. The duplication sweep by object (pseudo-projective morphisms, tame distillation, universal resolvability, stable modification of non-proper curves, pointed Riemann–Zariski spaces, Rumely's theorem, odd-degree alterations, prime-to-ℓ alterations, monoidally smooth morphisms, log regular pairs, maximally dominating morphisms, snc supports) over main and the 440 open heads at the 2026-11-04 index found no other owner; the hits are citations of this roadmap by EtaleDualityAndPerverseSheavesPartII, Temkin references in CrystallineCohomology and MotivesAndAlgebraicCycles, and unrelated uses of the words. One README edit of this kind: in §PA.4.1 an API bullet that duplicated the Spec F₂ Check (a test, not a fact of the API) was removed; the Check stays.

## Edits made in the port

- Title aligned with the base roadmap's title at its open head ("adic coefficients and the comparison of schemes with v-sheaves, part II — prime-to-degree alterations"), in the README and the Lean docstring.
- Summary: one sentence saying where the base roadmap stops (Layer L5 uses alterations without controlling their generic degrees).
- §PA.4.1: the duplicated API bullet removed (above).
- The review's two non-blocking notes (temkin10 line locators 679/742 and the log blow-up universal property phrased through its gap) were already applied in the accepted package and were verified at the cited lines (temkin10 line 679 is the §3.2 heading, 742 the definition of Val_K(S); README line 103 begins "Through gap:log-blowup-universal-property").

## Reviewer pass

The whole README was reread. Spot checks of locators at the cached texts: temkin10 lines 432–436 (Lemma 2.1.6), 445–449 (Theorem 2.1.8), 460–467 (Theorem 2.1.10 (i)–(iii), matching the two Lean theorems clause by clause), 2031–2036 (Assumption 6.2.1), 2339–2344 (Theorem 6.3.1); temkin17 lines 71–74 (char(X), P-numbers), 108–113 (Theorem 1.2.5), 149–160 (Theorem 1.2.9), 707–711 (Lemma 3.1.6), 817–818 (Lemma 3.2.10), 858–863 (Theorem 3.2.12), 903–906 (Lemma 3.3.4), 939–943 (Theorem 3.3.6), 986–991 (§4.1.4), 1107–1122 (§§4.3.2–4.3.4); ilo14 lines 6778–6781 (X Theorem 1.11), 7194–7198 (X 3.1.5), 7223–7228 (X 3.1.6), 7304–7322 (X 3.3.3–3.3.4). All agree with the statements they anchor. No statement was found wrong, vacuous or unsourced. The adversarial pass is recorded below.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| PA.0.1 char(X) unit criterion | X = ∅; Spec Z_(2); Spec Z[1/6]; Spec F_p[t] | ∅: Γ = 0, every p a unit, char = ∅; Z_(2): 2 non-unit, 3 unit, char = {2}; Z[1/6]: char = primes ≥ 5; F_p[t]: p = 0 non-unit, ℓ ≠ p unit, char = {p} | Pass | none |
| PA.0.1 finiteness of char(S) ∖ char(X) | S = Spec Z, X = Spec Z[1/6]; S = Spec Z, X = Spec Q | {2,3}, finite; Spec Q → Spec Z is not of finite type (excluded), difference = all primes | Pass; hypothesis necessary | none |
| PA.0.2 maximal domination vs dominance | A¹_k ⊔ Spec k → A¹_k (point to origin); Spec k → A¹_k at 0; ∅ → S | first: surjective, dominant, maximal point of Spec k ↦ origin, not maximal: fails; second: fails; ∅: vacuous, holds | Pass | none |
| PA.0.3 alteration examples | Spec k[t] → Spec k[t²,t³]; Frobenius of A¹_{F_p}; P¹_k → Spec k | degrees 1, p, generic fibre P¹ not finite | Pass | none |
| PA.0.4 ∅-alteration ⇔ modification (integral) | id; Spec Z[i] → Spec Z | 1 has no prime factor (∅-number); 2 ∉ ∅-numbers | Pass | none |
| PA.0.4 P-numbers | 0; 1; 6 with P = {2,3}; 6 with P = {2} | 0 excluded (not positive); 1 is a P-number for every P; 6 yes; 6 no | Pass | none |
| PA.0.8 Cartier sub-support | Z′ = V(xy) ⊂ A²_k, Z = V(x) | V(x) codim 1 irreducible inside Z′, equals component V(x): snc | Pass | none |
| PA.0.8 counterexamples | origin of A²; V(xy(x−y)); nodal cubic char ≠ 2 | codim 2; three branches through a point in dim 2 (|J| = 3 > 2); singular component | Pass | none |
| PA.0.9 Spec k universally resolvable | Y finite over k | Y_red product of fields, regular; Y_red → Y closed immersion of residue degree 1; nowhere dense closed subset of a finite discrete space = ∅ | Pass | none |
| PA.0.10 dimension does not grow | Y → S alteration, S noetherian dim ≤ 1 | dimension inequality dim O_{Y,y} + trdeg κ(y)/κ(s) ≤ dim O_{S,s} + trdeg k(Y)/k(S) = dim O_{S,s} + 0 ≤ 1 | Pass | none |
| PA.0.11 Lipman input | Y = Spec k[u,v,w]/(uw−v²), Z = ∅ | normal, singular locus = vertex, completion normal; one blow-up with charts k[u,v₁], k[w,v₂], k[v,s,s⁻¹] regular; length 1; D = ∅, π = id, degree 1 | Pass | none |
| PA.0.11 codimension-2 point | Y = Spec k[[x,y]], Z = closed point | Lipman sequence empty; D = Z codim 2 is not snc (components must be codim 1); blow-up gives E ≅ P¹, snc | Pass | none |
| PA.0.12 affine clause | S = Spec A, A reduced complete local dim 3 | Cossart–Piltant Cor. 1.2 gives projective resolution; non-separated doubled zero section excluded by hypothesis | Pass | none |
| PA.1.2 RZ of a DVR | X = Spec R, K = Frac R, ε generic | tight modifications isomorphisms; RZ = Spec R, two points with stalks K and R | Pass | none |
| PA.1.3 Val_K(X) for the doubled line | k[t]_(t) with ε generic | two centres (the two origins), Val_K(X) → Val_K not injective | Pass | none |
| PA.1.5 restriction direction | Z[i]_(1+i) ∩ Q; the two primes over 5 | 2 = −i(1+i)² has value 2 > 0 so image Z_(2); fibre over Z_(5) = {(2+i),(2−i)}, size 2 | Pass | none |
| PA.1.7 Val_Q(Spec Z[1/p])′ | K = Q | valuation rings containing 1/p: Q and Z_(ℓ), ℓ ≠ p; Z_(p) excluded | Pass | none |
| PA.2.1 trivial valuation tameness | L/K inseparable, trivial valuation | e = 1, no defect, residue extension L/K inseparable: wild; separable: tame | Pass | none |
| PA.2.1 Artin–Schreier wildness | u^p − u = t⁻¹ over F_p(t), t-adic, p = 2, 3 | v(u) = −1/p, e = p = residue char: wild though separable | Pass | none |
| PA.2.2 pointed-scheme comparison | char K = 0 or char K ∈ P; K = F₂(t), P = ∅ | valuations centred on Spec Z_{P′} = those with residue char in P ∪ {0}; residue char 0 forces tameness; F₂(t) has no map to Spec Q: hypothesis needed | Pass | none |
| PA.3.1 glued Spec ∏F₃ example | C₂ swapping two copies glued along U = ⋃ D(eₙ) | all primes maximal, inertia specialization vacuous; inertia C₂ on U (residue F₃ has no automorphisms), trivial off U; U dense open not closed; not quasi-separated | Pass | none |
| PA.3.1 inertia on Spec Z[i] | (1+i), (2+i), (3) | decomposition/inertia orders (2,2), (1,1), (2,1); F₂ has trivial automorphism group | Pass | none |
| PA.3.3 wild prime bound | T³ − T − 2 over Q at 2 | discriminant −4(−1)³ − 27·4 = 4 − 108 = −104; mod 2: T³ − T = T(T+1)², local degrees 1 and 2, wild 2 ≤ 3, 2 ∤ 3 | Pass | none |
| PA.4.1 cusp boundary structure | Spec k[x²,x³], Z = {x = 0}, étale stalk | classes (2,a), a ∈ k^s, indecomposable and infinitely many: not fine; Zariski over F₂: generated by (2,0),(2,1),(3,0),(3,1), not saturated since 2·(1,0) = (2,0) | Pass | API bullet duplicating the Spec F₂ Check removed |
| PA.4.1 A₁ cone pair | (Spec k[u,v,w]/(uw−v²), V(v)) | dimension 2 = 0 + rank 2 at the vertex; V(v) = image of V(xy) since v = xy | Pass | none |
| PA.4.2 A₁ normalized blow-up | ideal (u,w) of P | chart k[u,v,s]/(v² − u²s), s = w/u, non-normal; v/u integral with (v/u)² = s; saturation k[u,z], w = uz²: regular | Pass | none |
| PA.4.3 Kummer vs monoidally smooth | square map of (A¹, V(t)), char 3 | ℕ → ℕ, 1 ↦ 2, cokernel ℤ/2 invertible: Kummer étale; equal ranks force r = 0 and ×2 not an isomorphism | Pass | none |
| PA.4.5 coefficient ring | C₃; C₂ × C₂; trivial G | N = 3, Λ = Z[1/3, ζ₃]; exponent 2, Λ = Z[1/2]; Λ = Z | Pass | none |
| PA.4.8 chart cokernels | xy = π; π = u t^p | ℕ → ℕ², 1 ↦ (1,1): cokernel ℤ; 1 ↦ (p,1) primitive: cokernel ℤ, gcd(p,p,1) = 1 | Pass | none |
| PA.5.1 arithmetic genus and dualizing degrees | E ∪ P¹ at one node | p_a = 1 + 0 + 1 − 2 + 1 = 1; degrees 2·1−2+1 = 1 and −2+1 = −1 | Pass | none |
| PA.5.1 node dualizing generator | Spec k[u,v]/(uv) | u dv + v du = 0 so du/u = −dv/v; residues (1,−1); Ω¹ fibre at the node 2-dimensional | Pass | none |
| PA.5.2 fibre positivity | contracted P¹ with 3, 2 special points | −2+3 = 1 > 0 ample; −2+2 = 0 not ample | Pass | none |
| PA.5.2a type 4 disc field | nested discs D(aₙ,rₙ), rₙ ↓ r > 0, empty intersection | for c ∈ k eventually |T−c| = |aₙ−c| > rₙ ≥ r; |T−aₙ| ≤ rₙ → r; inf = r, not attained; (E,F) = (0,0) | Pass | none |
| PA.5.2a special cosets in F_p((t)), ρ = |t| | a = 0, b = t⁻¹, s = ρ⁻¹; a = 1, b = 1, s = 1 (p = 2); a = t, b = t⁻¹; a = 0, b = t⁻¹, s = 1 | v(c^p) ∈ pℤ never −1, min norm ρ⁻¹ attained: special; c̃²−c̃ = 0 in F₂, min 1 attained: special; c non-integral gives p·v(c) < v(c)+1: min ρ⁻¹, critical not special; inf ρ⁻¹ ≠ 1: not critical | Pass | none |
| PA.5.2a deep ramification | completion of Q_p(p^{1/p^∞}); completion of Q_p^tame | first: Frobenius surjective on k°/p, residue F_p, not tamely closed; second: value group ℤ_(p), p^{1/ℓ} needs a root of valuation 1/(pℓ) ∉ ℤ_(p): not deeply ramified | Pass | none |
| PA.5.2a generator types | k = Q₃, radius r ∉ divisible hull, z = T²; k = Q₂ | (e,f,deg) = (2,1,2): tame for p = 3, wild for p = 2 | Pass | none |
| PA.5.2b Lean statement vs temkin10 Thm 2.1.10 | (i)–(iii) at temkin10 lines 460–467 | (i) x with K finite unramified over closure of k(x); (ii) ε-ball; (iii) K̃ ≠ k̃ and x̃ transcendental, K̃/k̃(x̃) separable; Lean: `analytic_uniformization` = (i)+(ii), `analytic_uniformization_residue` = (iii) with transcendence implying K̃ ≠ k̃; unramified = étale integer rings by Lemma 2.1.6 (lines 432–436, finite height) | Pass | none |
| PA.5.2b degenerate instance | K = k | H(0) = k, degree 1, integer map identity, étale; x = 0, ε = 1 | Pass | none |
| PA.5.5a constants | A = Q(∛2), B = A(ω); S₅ invariants | A ⊗_Q A = A × B (x³−2 = (x−∛2)(x²+∛2x+∛4)); [A:F] = 5, B ⊗_F A splits by S₂×S₃-orbits of sizes 2, 3 | Pass | none |
| PA.5.5a inseparable base change | F = F₂(u), L = F(T), E = F(u^{1/2}) | E(T) a field of degree 2; with L = F(u^{1/2})(T) the tensor has the nilpotent u^{1/2}⊗1 − 1⊗u^{1/2} | Pass | none |
| PA.6.10 odd degree on Z/2 | degrees 3, 2 | 3 ≡ 1 invertible mod 2; 2 ≡ 0 | Pass | none |
| PA.6.11a Weil–Cartier lemma | A = k[[x,y]], p = (x); k[[t]] | depth A/p = 1, depth p ≥ min(2, 1+1) = 2, free of rank 1, principal; DVR: (t) | Pass | none |
| PA.6.11a elliptic curve count | y² = x³+x+1 over F₅ | values 1,3,1,1,4 at x = 0..4; squares {0,1,4}; points 2+0+2+2+2+1 = 9; Δ = −16·31 ≡ 4 ≠ 0 | Pass | none |
| PA.6.11a intersection matrices | uv = π; two components meeting twice | [[−1,1],[1,−1]], [[−2,2],[2,−2]]; kernels the whole fibre; restrictions −1, −2 definite | Pass | none |
| PA.6.11b projection | N = d | identity matrix, empty centre, π = id, degree 1 | Pass | none |
| Title and base-stop sentence | base roadmap title at its open head | base is "adic coefficients and the comparison of schemes with v-sheaves"; its Layer L5 uses alterations without prime control | Aligned | title and summary edited |

## Unresolved

- Two citations point at board packages that are neither on main nor open pull requests: LocalFieldsRamificationPartII (supplier, GF.0–GF.6; merge-order position 363, immediately before this roadmap at 364) and LogicAndDefinabilityInNumberTheoryPartII (cited only as a downstream consumer, §2.1, and for the alias PrimeToDegreeAlterations). The citation resolver lists the latter as its one lead. Both resolve in the board's design READMEs (the alias is used there for §§PA.2.6, PA.3.7 and PA.6.10). Nothing was changed.
- MotivesAndAlgebraicCycles §0.5c (open head) constructs `pAlterationSupport` from Temkin's Theorem 4.3.1 without naming this roadmap and sits earlier in the merge order; the README cites it as a consumer only, which is not a direction defect, and the edit belongs to that roadmap.
- Ownership against open pull requests was checked through the roadmap service's indexed heads (index of 2026-11-04T13:10:18Z), the board packages and the sibling checkouts the brief lists; pull requests the brief names without files were not read.
- The five supplier contracts recorded in the accepted review (closed-subset-log-structure, finite-type-fp-factorization, log-blowup-universal-property, maximal-separable-p-extension, very-tame-local-quotient) plus normalization-finite-field-identification and kummer-etale-source-descent remain contracts on their suppliers; the README states each with its hypotheses and conclusion.
- Untrusted text: no fetched or review text contained instructions; nothing to quote.


Pull request: #1796 (roadmap/adic-coefficients-and-comparisons-part-ii at 4dd1d9c)
