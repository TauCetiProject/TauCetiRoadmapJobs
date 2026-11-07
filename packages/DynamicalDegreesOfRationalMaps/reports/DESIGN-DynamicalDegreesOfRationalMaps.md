# Design report: DESIGN-DynamicalDegreesOfRationalMaps

Deliverables: `packages/DynamicalDegreesOfRationalMaps/design/README.md` (six layers, 27 targets), `packages/DynamicalDegreesOfRationalMaps/design/plan.json` (the same targets as data, one gap), and `packages/DynamicalDegreesOfRationalMaps/sources.toml` (15 entries, `sources check`: 0 problems). No `needs-references.toml` was written: every text the design relies on was read.

## What the design covers

- **Layer 1.** Function-field pullback and topological degree of a dominant rational map (§1.1); the graph `Γ_f` as Mathlib's scheme-theoretic image, with `π_1` a modification and `π_2` an alteration of generic degree `e(f)` (§1.2); the correspondence `W_{f,g}` of a composite (§1.3); normalization lift and field extension of graphs (§1.4).
- **Layer 2.** Euler-characteristic intersection numbers (imported from CyclotomicClassGroupsAndStickelberger §4.3): component formula (§2.1), comparison with Chow degrees (§2.2, Stacks 0BFI), real coefficients (§2.3), reduction of homogeneous inequalities to an integral variety over an algebraically closed field (§2.4).
- **Layer 3.** Over an arbitrary field: nef API (§3.1), Kleiman's nonnegativity with nef-plus-ample over algebraically closed fields (§3.2), Siu's inequality in intersection form (§3.3), Hodge inequality on surfaces (§3.4), Khovanskii–Teissier (§3.5), Siu for products, i.e. dang2020 Theorem 3 in intersection form (§3.6).
- **Layer 4.** Mixed degrees and model independence (§4.1), values, integrality and positivity (§4.2), normalization and field-extension invariance (§4.3), sub-multiplicativity across `X_1 ⤏ X_2 ⤏ X_3` (§4.4), comparison of polarizations and birational conjugacy (§4.5).
- **Layer 5.** Existence of `λ_k` by Fekete (§5.1), properties including `λ_d = e(f)` and log-concavity (§5.2), invariance (§5.3), algebraic entropy (§5.4).
- **Layer 6.** Rational maps of `ℙ^d` by forms (§6.1), degree formulas (§6.2), Cremona, Fibonacci and Frobenius (§6.3), polynomial maps of `𝔸^d` (§6.4).

All ten final targets of the brief are planned. Target 1 is §1.2; target 2 is §§4.1–4.3; target 3 is §4.4 and §4.5; targets 4–5 are §§5.1–5.3; target 6 is §3.5; target 7 is §5.4; target 8 is §6.2; target 9 is §6.3; target 10 is §6.4. The brief's Checks appear as README Checks: normal projective as a special case of §4.4, the `ℙ¹` comparison with ArithmeticDynamics in §6.1/§6.2, Frobenius with `λ_d = p^d`, normalization in §4.3, and the non-geometrically-integral base change in §1.4/§4.3. No targets were merged into this one.

## Design decisions and corrections to the triage brief

The brief was written by another agent. These points were checked and changed.

1. **AbundanceStatement is not on main.** It is open pull request #545 by another author. It is not in the merge order, and its Layer 4 works over algebraically closed fields of characteristic zero only, so it is a near miss for an arbitrary-field theory. It is not a supplier. The README's Scope records that §3.2 contains its Layer 4D special case.
2. **Mathlib has no `ℙ(n; S)` at the pin.** `𝔸(n; S)` exists; projective space is `AlgebraicGeometry.Proj` of the graded polynomial ring (Mathlib/AlgebraicGeometry/ProjectiveSpectrum/Scheme.lean:854). The README conventions say so.
3. **Normality is not needed for sub-multiplicativity.** §4.4 works on the integral correspondence `W_{f_1,f_2}` and uses §3.6 on an integral projective variety. Dang's normality enters only through his numerical-class machinery. The normal case is a special case. This widens target 3, which the brief stated for normal `X`.
4. **Positivity route.** The brief left open Dang's numerical-cycle route versus Truong's moving-lemma route. The design takes Dang's Theorem 3 but states it in intersection form, (§3.6): products of nef line bundles paired with nef line bundles. This avoids numerical cycle spaces `N^k`, basepoint-free cones, finite-dimensionality, de Jong for `N^k` and correspondences. The inputs are Siu's inequality (ArakelovGeometryAndAbelianHeightsPartII §0.3), Kleiman (§3.2) and Bertini irreducibility (LefschetzPencilsAndVanishingCycles §5.1). `N^k` and the spectral description go to Part II.
5. **Over an arbitrary field without Truong's correspondences.** Every inequality is reduced by §2.4 to an integral variety over an algebraically closed field: normalization, the constant field `K' = H⁰(Ṽ, O)` over which `Ṽ` is geometrically irreducible, then base change. The base-changed graph appears only in the cycle-level formula of §4.3, which is immediate for Euler-characteristic numbers.
6. **Dang's Proposition 3.4.1 is false as stated for arbitrary closed subschemes.** On `V = ℙ² ⊔ ℙ²` with `B = (O(1), O(2))`, `(B²) = 5`, and `A_1 = C = (O(1), O)`, its paired form gives `5 ≤ 2`, which is false. Dang applies it only to general complete intersections, which are irreducible by Bertini. §3.6 therefore requires an integral `V` and cuts with generic members, so that the slices are irreducible. The counterexample is a non-example Check of §3.6.
7. **Real classes.** Real polarizations are positive combinations of nef line bundles with `(ω^d) > 0` (§2.3). Every ample and every big and nef line bundle is one, and the brief's requirement not to restrict to ample classes is met. Arbitrary big and nef classes in `N¹(X)_ℝ` would need finite-dimensionality of `N¹` over an arbitrary field. That is recorded as Part II motivation.
8. **ArithmeticDynamics direction.** ArithmeticDynamics is earlier in the merge order (line 321). It is cited as a supplier for the `ℙ¹` Check (§§0.18, 0.26) and therefore is not listed as a consumer. The consumer is a later roadmap continuing it, on arithmetic degrees.
9. **Intersection-number carrier.** CyclotomicClassGroupsAndStickelberger §4.3 owns the Euler-characteristic numbers (Stacks 33.45). SchemeAndStackFoundations §5.10, ArakelovGeometryAndAbelianHeightsPartII §0.3 and SchemeAndStackFoundations §4.15 state their results with Chow degrees or Stacks' numbers. The comparison (Stacks Chow Lemma 41.4, tag 0BFI) was found nowhere, so §2.2 owns it.

## Ownership

Searches by object used `roadmaps grep` over main and the 455 open roadmap pull requests at their heads, and grep over the board packages. They covered dynamical degree, algebraic entropy, graph of a rational map, topological degree, function-field pullback, Khovanskii, Teissier, Kleiman, Nakai, nef plus ample, Siu, Hodge index, Hodge inequality, Snapper, numerical polynomial, intersection number, Bertini, Jouanolou, nef, big and nef, pseudo-effective, Fekete and Cremona. Findings:

- Nothing on main, in an open pull request or in a board package defines degrees or dynamical degrees of rational maps in dimension `≥ 2`, the graph of a rational map, Khovanskii–Teissier, Kleiman's theorem over an arbitrary field, or Siu's inequality for products.
- Function-field pullbacks exist only for isogenies: Tau Ceti's `TauCeti.Isogeny.fieldPullback`, EllipticCurves on main, and ArithmeticDynamics' isogeny API. These are Weierstrass special cases, so §1.1 is not a duplicate. The README says this in Scope.
- Siu's inequality for two nef line bundles over a field is ArakelovGeometryAndAbelianHeightsPartII §0.3 (2′). It is imported, and §3.3 only rewrites it in intersection form. The geometric nefness definition is that roadmap's §0.1.
- Euler-characteristic intersection numbers are CyclotomicClassGroupsAndStickelberger §4.3, imported. Bertini irreducibility is LefschetzPencilsAndVanishingCycles §5.1, imported.
- Kleiman's nonnegativity over arbitrary fields: AbundanceStatement Layer 4D has only the characteristic-zero, algebraically closed case, and it is an open pull request outside the merge order. StableReductionPartII and AlgebraicModuliForArithmeticGeometryPartII record nef/big transfer needs as gaps to SchemeAndStackFoundations, but none states Kleiman. This roadmap is the first one that needs Kleiman, Khovanskii–Teissier and Siu for products at arbitrary-field generality, and no earlier roadmap in the merge order owns them, so it owns them in Layer 3. They are general results; a later positivity roadmap can import them.
- Field-extension invariance of nefness is already registered by StableReductionPartII as gap:numerical-nef-big-transfer for SchemeAndStackFoundations. The design consumes the same contract instead of stating it again.

The resolver flags one citation: "ArakelovGeometryAndAbelianHeightsPartII §0.1: no roadmap … on main or in an open pull request". This is not a defect. That roadmap is a board package (`packages/ArakelovGeometryAndAbelianHeightsPartII/README.md`), earlier in the merge order (line 323). Its §0.1 and §0.3 were read there and are quoted in the supplier contracts.

## Notions moved down from later roadmaps

None.

## Proposed Part IIs and supplier extensions

- **DynamicalDegreesOfRationalMaps, Part II.** This roadmap stops at degrees and dynamical degrees computed from products of line bundles on graphs. Part II would cover:
  - numerical cycle spaces `N^k(X)_ℝ` and `N_k(X)_ℝ` over an arbitrary field, with finite-dimensionality via de Jong alterations (dang2020 Theorem 2.5.1);
  - basepoint-free and pseudo-effective cones, the operators `f^*` and the spectral description `λ_k = lim ‖(f^n)^*‖^{1/n}` (dang2020 Theorem 2; truong2020 Theorem 1.1 (5));
  - real big and nef classes in `N¹`;
  - relative dynamical degrees and the product formula (dang2020 Theorem 4; truong2020 Theorem 1.1 (4)).
- **SchemeAndStackFoundations extension (positivity over arbitrary fields).**
  - gap:numerical-nef-big-transfer: nefness under field extension.
  - Descent of ampleness along field extensions (`L` ample if `L_{K'}` is). With it, §3.2's nef-plus-ample would hold over every field rather than over algebraically closed fields only. No target here needs the general form, because every inequality is reduced to an algebraically closed field first.

## Gaps

| slug | supplier and section | needed by | contract |
| --- | --- | --- | --- |
| `numerical-nef-big-transfer` | SchemeAndStackFoundations §5.3 (the field-extension part of StableReductionPartII's gap of the same name) | §§3.1–3.6, and through them §§4.2, 4.4, 4.5 for nef polarizations that are not ample | `L` nef on a projective `K`-scheme `X` iff `L_{K'}` nef on `X_{K'}` |

For ample polarizations no gap is used: ampleness passes to the reduction of §2.4 by stacks-morphisms Lemma 38.7 and base change.

## Adversarial mathematics pass

Notation: on `ℙ¹ × ℙ¹`, `(a,b)·(c,d) = ad + bc`. `h` is the hyperplane class on `ℙ^d`, `fib` is `Nat.fib` and `φ` is `Real.goldenRatio`.

| statement | instances tried | values computed | result | change |
| --- | --- | --- | --- | --- |
| Convention: composition order | `f = z²`, `g = z + 1` on `ℙ¹` | `f.comp g` at `z = 1`: `1² + 1 = 2`; `f ∘ g` at `1`: `(1 + 1)² = 4` | witnesses differ | pinned in Conventions |
| Convention: index `k` counts the target | `z ↦ z²` on `ℙ¹` | `(π_1^*H) = 1`, `(π_2^*H) = 2` | `deg_1 = 2 = e`; opposite convention gives 1 | pinned |
| Convention: numbers depend on `K` | closed point of degree 2 | `χ_K = 2`, `χ_{κ(P)} = 1` | consistent with §2.4 `c_V` | pinned |
| Convention: `fib` indexing | Fibonacci map | `fib 0 = 0`, `fib 2 = 1` gives `deg f^0 = 1`; `fib 3 = 2` gives `deg f = 2`; `fib 4 = 3`, `fib 5 = 5` | matches the forms | pinned |
| §1.1 pullback, `e(f)` | squaring; Frobenius; Cremona; projection `ℙ² ⤏ ℙ¹`; constant map | `[K(z):K(z²)] = 2` (inseparable in char 2); `p^d`; `1`; transcendence degree 1, so finrank is junk `0`; not dominant | positivity iff equal dimension; junk value isolated | finiteness item and junk value stated |
| §1.1 multiplicativity | Cremona∘Cremona; squaring∘squaring | `1·1 = 1`; `2·2 = 4 = [K(z):K(z⁴)]` | holds | tower order corrected to `f^*g^*K(Z) ⊆ f^*K(Y) ⊆ K(X)` |
| §1.2 graph | id; squaring; Cremona; projection; constant | diagonal; `Γ ≅ ℙ¹` with `π_2` of degree 2; blow-up at 3 points with line fibres of `π_1`; `π_2` has `ℙ¹` fibres; `Γ = ℙ¹×{pt}` | alteration needs equal dimension; surjectivity needs dominance | hypotheses stated per item |
| §1.3 correspondence | `σ,σ`; squaring twice | `(q_Y,q_Z)` degree `e(σ) = 1`; degree `2 = e(f)`, not `4` | degree is `e(f)`, not `e(g∘f)` | stated |
| §1.4 base change | `ℙ¹_ℂ` over `ℝ`; Cremona `ℚ → ℂ`; cuspidal cubic | two diagonals (reducible, no rational map); `e = 1` both; lift of id is id | geometric integrality needed for `f_{K'}` | non-example Check |
| §2.1 component formula | double point; line ∪ point; `V(xy)` | `2 = 2·1`; `1` (point ignored); `2 = 1 + 1` | holds | none |
| §2.2 Chow comparison | `ℙ²`; `ℙ¹×ℙ¹` | `(h²) = 1`; `χ(O(n_1,n_2)) = (n_1+1)(n_2+1)`, so `(1,0)·(0,1) = 1` and `(1,0)² = 0` | holds | none |
| §2.3 real classes | `√2(1,0) + (0,1)`; `t = −1`; `(1,0) + (0,1)` | square `2√2`; `(−O(1)) = −1`; square `2` with neither summand big | polarization defined by `(ω^d) > 0` | real polarization uses `H = Σ L_i` in §4.5 |
| §2.4 reduction | `ℙ¹_ℂ/ℝ`; pointless conic; `x² + ty²` over `𝔽_2(t)`; pinched `ℙ¹_ℂ` | `c = 2`, `2 = 2·1`; `c = 1`, `2 = 2`; `K' = K(√t)`, `m = 1`, `c = 2`, `χ_K(O(n)) = 2(n+1)`, so `2 = 2·1` (over `K` the fundamental cycle `2[line]` gives 2 as well); `H⁰ = ℝ` but `ℂ ⊆ K(V)` | normalization is needed | first draft of the imperfect-field Check wrongly claimed `m = 2`; corrected to `m = 1` |
| §3.1 nef API | `O(a)` on `ℙ¹`; `O(a,b)`; `O(1,0)`; `Bl_pℙ²` | nef iff `a ≥ 0`; iff `a,b ≥ 0`; degree 0 on `{p}×ℙ¹`; `h² = 1`, `h·e = 0` | big and nef does not imply ample | none |
| §3.2 Kleiman | `(1,0)²`; `(1,−1)²`; `(1,0) + (1,1)`; `Bl_pℙ²` | `0 ≥ 0`; `−2 < 0` with `(1,−1)` not nef; `(2,1)² = 4`, rulings degrees `1, 2`; `(h·e) = 0`, `3h − e` ample | nef hypothesis is needed | nef-plus-ample stated over algebraically closed fields only (ampleness descent not supplied) |
| §3.3 Siu | `A = (1,1)`, `B = (1,0)`, `C = (0,1)`; `C = (1,0)`; `B = (1,−1)` | `2·1 = 2 ≤ 2·1·1 = 2` (equality); `0 ≤ 2`; `2 > 2·0·1 = 0` | fails for non-nef `B` | non-example Check |
| §3.4 Hodge | `H = (1,1)` with `D = (1,−1)`, `D = H`; quadric cone; `Bl` of two points with `H = E_1`, `D = E_2` | `0 ≥ −4`; `4 = 4`; `4 = 2·2`; `0 < (−1)(−1) = 1` | needs `(H²) > 0` | non-example Check |
| §3.5 Khovanskii–Teissier | `(1,0),(0,1)`; `(2,1),(1,1)`; `aH, bH` on `ℙ^d`; `ℙ² ⊔ ℙ²` with `(O(2),O(1))`, `(O(1),O(2))` | `1 ≥ 0`; `9 ≥ 4·2 = 8`; equality; `α_1·α_2 = 2·1 + 1·2 = 4`, `α_i² = 4 + 1 = 5`, `16 < 25` | integrality is needed | non-example Check |
| §3.6 Siu for products | `(ℙ¹)³`, `B = h_1+h_2+h_3`, `A = h_1, h_2`, `C = h_3`; `i = r`; `ℙ² ⊔ ℙ²` | `(B³) = 6`, `h_1h_2B = 1`, `B²h_3 = 2`: `6 ≤ 4·1·2 = 8`; constant `binom(3,2) = 3` gives `6 = 6`; constant `1` gives `2 < 6`; `5 ≤ 2` false | constant `(r−i+1)^i` is valid, not sharp; irreducible slices required | integral `V` and generic slices required; reducible non-example |
| §3.6 positivity consequence | `A = B = H` on `ℙ^r` | `(H^r)² = 1 ≤ (r−k+1)^k` | consistent | none |
| §4.1 model independence | squaring with `q_1 = id`, and with `q_1 = f`, `q_2 = f∘f` | `deg_0 = 1`; `(f^*H) = 2 = 2·1` | factor `e` | stated |
| §4.2 values | Cremona `ℙ²`; Frobenius; `id` with `ω = (1,0)`; `ω = (1,0)+(0,1)` | `(1,2,1)`; `p^k`, `e = p^d`; `deg_1 = 0`; `deg_1 = 2` | positivity needs bigness | polarized case requires `(ω^d) ≠ 0` |
| §4.3 invariance | `ℙ¹_ℂ/ℝ`; cuspidal cubic; Cremona `ℚ/ℂ` | `2 = 1 + 1`; `ν^*O(1) = O(3)`, `deg_0 = 3 = 3`; `(1,2,1)` | holds | none |
| §4.4 sub-multiplicativity | squaring∘squaring; Cremona; morphisms of degrees `a, b`; Frobenius then squaring, `k = d` | `4 ≤ 4`; `1 ≤ 8`; `(ab)^k ≤ (d−k+1)^k a^k b^k`; `2p = p·2` | equality at `k = 0, d` | normality dropped (see above) |
| §4.5 comparison | swap `τ` with `ω = (1,1)`, `ω' = (2,1)` | `deg_1 = 2` and `(2,1)·(1,2) = 5`; `ω·ω' = 3`, `ω² = 2`, `ω'² = 4`, `C = 2²·9/4 = 9` | `5/2 ∈ [1/9, 9]` | first draft of the constant was wrong; corrected |
| §5.1 existence | morphism of degree `a`; Cremona; Fibonacci | `λ_k = a^k`, `inf_n ((d−k+1)^k a^{nk})^{1/n} = a^k`, not attained at `n = 1`; degrees `2,1,2,1,…`, so `λ_1 = 1`; `fib(n+2)^{1/n} → φ` | Fekete applies (bounded below by `a_min^d`) | none |
| §5.2 properties | Fibonacci; Frobenius; Cremona; squaring | `φ² = φ + 1 ≈ 2.618 ≥ 1`; `λ_k = p^k` (equality), `λ_d = p^d = e`; `(1,1,1)`; `(1,2)`; `λ_k ≤ λ_1^k`: `1 ≤ φ`, `p^k ≤ p^k` | separable-degree `λ_d` would contradict `deg_d(F^n) = p^{nd}` | none |
| §5.3 invariance | linear conjugate of Cremona; cusp; `ℙ¹_ℂ/ℝ` | `λ_1 = 1`; `1`; `1` | holds | none |
| §5.4 entropy | morphism degree `a`; Cremona; Fibonacci; Frobenius | `d·log a`; `0`; `log φ ≈ 0.4812` (only at `k = 1`); `d·log p`; bounds `log e ≤ h ≤ d log λ_1`: Fibonacci `0 ≤ 0.48 ≤ 0.96` | holds | none |
| §6.1 forms | `(x_1x_2, x_0x_2, x_0x_1)`; `(x_0², x_0x_1, x_0x_2)`; `d = 1` | composite `(x_0x_1x_2)(x_0,x_1,x_2)`, so `σ² = id`; common factor `x_0`, identity of degree 1 | reduced forms needed | non-example Check |
| §6.2 degree formulas | Cremona; Frobenius; `(x_0², x_1², x_0x_2)` | `deg_2 = 1 < 4`, `δ_2 = 4 − 3 = 1`; `p^k`; `deg_1 = 2`, `deg_2 = e = 2 ≤ 4`, base point `[0:0:1]` | equality for all `k` only for morphisms (Russakovskii–Shiffman: equality at `ℓ` iff `codim I > ℓ`) | none |
| §6.3 examples | Fibonacci `n = 1, 2, 3`; Cremona `ℙ³`; Frobenius `p = 2, d = 1` | `[yz:xy:z²]`, `[xyz:xy²:z³]`, `[xy²z²:x²y³:z⁵]` (degrees `2, 3, 5`, no common monomial factor, total degrees `fib(n−1) + 2fib(n) = fib(n+2)`); `3` and `1`; `2 = e` | inverse of `(x,y) ↦ (y,xy)` is `(u,v) ↦ (v/u, u)`, so `λ_2 = 1` | none |
| §6.4 polynomial maps | `(x², y)`; Hénon `(y, x+y²)`; `(y, z, x+yz)`; `(x, xy)` | `a = e = 2`, `deg f^n = 2^n`, `λ = (1,2,2)`; `λ_1 = 2`, `λ_2 = 1`; degrees `2, 3, 5`; empty fibre over `(0,1)` | properness hypothesis is needed for finiteness | non-example Check |

### Context, generality and duplication

- *Hypotheses in scope.* Each statement carries its standing hypotheses in its sentence, in the README and in `plan.json`: integral projective varieties, nef and big, equal dimension, dominance, geometric integrality for `f_{K'}`, algebraically closed for nef-plus-ample. The Mathlib preconditions are listed in the contracts: `comp` needs the first map dominant, `comp_assoc` needs irreducible middle schemes, `toPartialMap` needs a reduced source and separated target.
- *Generality.* Sub-multiplicativity is widened from normal to integral (decision 3) and from self-maps to chains between different varieties. That gives birational conjugacy and comparison without big and nef pullbacks.
- *Duplication by object.*
  - Mathlib at the pin has no graph, field pullback, intersection number or positivity. Its scheme-theoretic image (`Scheme.Hom.image`) and Fekete lemma (`Subadditive.tendsto_lim`) are used, not restated.
  - Tau Ceti has Euler characteristics and line bundles but no intersection numbers; its isogeny `fieldPullback` is a special case.
  - Euler-characteristic intersection numbers, Siu (two classes), Bertini irreducibility and Nakai–Moishezon are imported from their owners.
- *Interfaces.* Every promised map has a named target:
  - field pullback (§1.1), graph and projections (§1.2), correspondence of a composite (§1.3);
  - base change and normalization of graphs (§1.4), the Chow-cycle pullback `f^*` (§4.1);
  - the reduction to algebraically closed fields (§2.4).

## Suggested.lean: statability at the pins

The design has no `Suggested.lean`. The packager can state the headlines against the pins with simple definitions that have real bodies:

- The graph is `Scheme.Hom.image` of the lift into `pullback (X ↘ Spec K) (Y ↘ Spec K)` of the domain representative `Scheme.RationalMap.toPartialMap`.
- The intersection number of `L_1, …, L_r` on a proper `K`-scheme `V` can be written as Kleiman's alternating sum `Σ_{I ⊆ {1..r}} (−1)^{|I|} χ_K(V, ⊗_{i∈I} L_i^∨)`. Here `χ_K` is Tau Ceti's `AlgebraicGeometry.Scheme.Modules.eulerCharBelow` truncated above `dim V`. By kleiman2005 Theorem B.7 (line 3571) and Definition B.8 (line 3583), this is the coefficient of `n_1⋯n_r` used by CyclotomicClassGroupsAndStickelberger §4.3: in Snapper's binomial expansion, only the index `(1, …, 1)` contributes that monomial. Tensor products, duals and pullbacks are Tau Ceti's `InvertibleSheaf.tensorProduct`, `.dual` and `.pullback`.
- Degrees are these numbers on the graph. `λ_k` is a `limUnder` or `Subadditive.lim` of real numbers. Nefness is a curve test with the same numbers.
- The `ℙ^d` statements use `Proj` of `MvPolynomial (Fin (d+1)) K` and `Nat.fib`/`Real.goldenRatio`.

No sorry'd data is needed. No `Suggested.lean` Lean name appears backticked in the README.

## Sources

All sources were read from open repositories:

- arXiv: dang2020, truong2020, dangfavre2021, dinhsibony2005, guedj2010, russakovskiishiffman1997, silverman2014, cutkosky2015, kleiman2005;
- Stacks project chapter PDFs, version ed88ff78: stacks-varieties, stacks-chow, stacks-morphisms, stacks-constructions.

lazarsfeld2004 and fulton1998 are settled as uncertified and cited by locator only. Every statement taken from them is also in a certified source or a supplier: Kleiman via SchemeAndStackFoundations §4.15 and cutkosky2015 §2.2; Khovanskii–Teissier via cutkosky2015 Theorem 6.1; Siu via ArakelovGeometryAndAbelianHeightsPartII §0.3 and dang2020 Proposition 3.4.1; Fulton via SchemeAndStackFoundations §§5.2–5.3 and stacks-chow.

The Stacks chapter PDFs number lemmas chapter-locally (Varieties §45 is online §33.45); tags are given everywhere. No text was missing. Nothing suspicious was found in any fetched text, issue or roadmap.

Ownership was checked against the open roadmap pull requests through `roadmaps grep`, which searches their heads, and through the board packages.

## Dependency check

```text
candidate: DynamicalDegreesOfRationalMaps is not in the merge order yet; checked as if placed after ArakelovGeometryAndAbelianHeightsPartII (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2185 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. Suppliers are SchemeAndStackFoundations and StableReduction (main), CyclotomicClassGroupsAndStickelberger (ORDER line 30), LefschetzPencilsAndVanishingCycles, ArithmeticDynamics (321) and ArakelovGeometryAndAbelianHeightsPartII (323), the last supplier.
