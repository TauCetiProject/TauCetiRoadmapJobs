<!-- from CBirkbeck, https://github.com/TauCetiProject/TauCetiRoadmapJobs/pull/15095#issuecomment-6878366911 -->
Review (claude) of f181f00

Verdict: needs_changes

**For the human reviewers:** this review raises 2 questions that a human decides (the scope of the roadmap, or a licence). They are in the section of that name at the end and do not change the verdict.

1. **F01** (P3) 5.2 cites an integral statement for the general ring without saying so

   **Location.** `packages/CohomologyOfGroups/README.md:1644–1649`: "Prove, for `k` of global dimension
   at most one, any group `G` and a `k`-module `A` with trivial action, natural short exact sequences,
   split but not naturally, … (Loh19 Cor. 3.2.21, p. 135, and Outlook 3.2.26, p. 138)."

   **Claim.** The two locators support both universal coefficient sequences over every `k` of global
   dimension at most one, as natural short exact sequences.

   **Witness.** Loh19 line 5841–5843: Cor. 3.2.21 is for `ℤ` only and gives a direct-sum isomorphism of
   `Hₙ(G; A)`, no sequence. Loh19 line 5985–5990: Outlook 3.2.26 names a cohomological theorem and
   states none. The natural sequence over a principal ideal domain is Cor. 3.2.20, Loh19 line 5762–5770
   (printed p. 133).

   **Exact repair.** Replace the parenthesis by: "(Loh19 Cor. 3.2.20, p. 133, the natural sequence with
   its non-natural splitting for a complex of free modules over a principal ideal domain, and
   Cor. 3.2.21, p. 135, its instance for group homology over `ℤ`, stated there as a direct-sum
   decomposition; Outlook 3.2.26, p. 138, names the cohomological sequence without stating it; the
   generality here, `k` of global dimension at most one and both sequences, is that of the route)".
   Add `Cor. 3.2.20 (p. 133)` to the `locator` of `Loh19` in `packages/CohomologyOfGroups/sources.toml`.
   The statement itself is sound and stays: for `k = ℤ`, `G = ℤ/2`, `A = ℤ/2`, `n = 2` it gives
   `0 ⊕ Tor(ℤ/2, ℤ/2) = ℤ/2 = H₂(ℤ/2, ℤ/2)`, the value of Cor. 3.2.21; for `k = 𝔽₂`, outside that
   corollary, both correction terms vanish and `Hⁿ(G, A) = Hom(Hₙ(G, 𝔽₂), A)`. The same pattern was
   searched in every other citation: 5.1, 5.3, 6.6, 8.2, 8.3 and 8.4 already say what their source
   proves less generally; 5.2 is the only one that does not.

2. **F02** (P3) 4.7 has no locator

   **Location.** `packages/CohomologyOfGroups/README.md:1502–1521`, target 4.7: "Prove: (a) Tate. …
   Route: both satisfy the axioms of 4.2 in positive degrees. (b) Discrete groups. … (c) Profinite
   groups. …"

   **Claim.** Every target carries a locator, or says that it compares pinned declarations and is taken
   from no source (as 1.5 at :944–946 and 6.9 at :2126–2129 do).

   **Witness.** Lines 1502–1521 contain no source id; `MilneCFT`, whose Prop. 1.38 is the uniqueness
   the route of (a) uses (MilneCFT line 3459–3476), lists no `Target 4.7` in
   `packages/CohomologyOfGroups/sources.toml:54`.

   **Exact repair.** After "Route: both satisfy the axioms of 4.2 in positive degrees" add "(the
   uniqueness of MilneCFT Ch. II Prop. 1.38, p. 73)", and after the sentence at :1518 add: "The three
   comparisons are between the pinned `TauCeti.TateCohomology.cup`, `TauCeti.TopPairing.cup` and the
   cup product of 4.1; they are determined by those definitions and are not taken from a source."
   Add `"Target 4.7"` to `cited_for` of `MilneCFT`. Checked on (a): for `G = ℤ/2`, `𝔽₂`, bidegree
   `(1, 1)`, both cups send `(x, x)` to the nonzero class, and the bidegree `(0, 0)` axiom of
   Prop. 1.38 is the product of invariants, which the quotient `H⁰ → Ĥ⁰` carries to the Tate product.

Two findings, both P3 (source locators); none blocking. The three findings of round 4 are repaired,
the acceptance file elaborates with `sorry` as its only warning, and no mathematical defect was
found. Both findings were met in the seeded sample of locators.

## Verified sound

### Previous findings (round 4), checked first

| Finding | Status | Repaired passage and check |
|---|---|---|
| F01 (P2) integral Tate duality and `p`-primary periodicity absent | **Repaired** (carrier differs from the suggestion, soundly) | `Suggested.lean:359` `tate_duality_of_free … [Module.Free ℤ M]`; `:409` `tfae_primary_periodic_cohomology`; README:2430 "(`tate_duality_of_free`)", :2568 "(`tfae_primary_periodic_cohomology`)"; module docstring :32–34 lists both. (b_p) uses `AddCommGroup.primaryComponent`, `Mathlib/GroupTheory/Torsion.lean:450` (additivised `CommGroup.primaryComponent`), membership at :459 by `Iff.rfl`: the same set `{x | ∃ k, p ^ k • x = 0}` as (a_p). Both statements recomputed below. |
| F02 (P2) `conjRes` factorization omitted the pullback | **Repaired** | README:782–785 "`c_g` from `A` to `gAg⁻¹`, followed by restriction to `β(B) ≤ gAg⁻¹`, followed by the map along the surjection `B → β(B)`"; :794–796 the homological form; Check :835–846. Recomputed: all 16 values of the pulled-back carry cocycle and of `df`, `f = (0,0,1,1)`, agree (1 exactly on odd pairs). |
| F03 (P3) three Mathlib declarations under the wrong file | **Repaired** | README:279–285. Opened: `Rep.res` `Mathlib/RepresentationTheory/Rep/Res.lean:43`; `Rep.quotientToInvariantsFunctor` `…/Invariants.lean:263`; `Rep.quotientToCoinvariantsFunctor` `…/Coinvariants.lean:442`. |

The repair report marks nothing "not actionable". No maintainer note was left. The repaired
patterns were searched in the rest of the package: `Suggested.lean:68–72, 87–92` (docstrings of
`conjRes`, `conjCores`) state only the inclusion and injective cases; §7.1 and §7.2 use `conjRes`
and `conjCores` for subgroup inclusions only. No further instance.

### Principles, shape, Lean form

Read all of `README.md` (2653 lines, 41 numbered targets in 8 layers), `Suggested.lean`,
`metadata.toml`, `sources.toml`. General theory over any group and commutative ring; finiteness,
finite index, flatness, projectivity, global dimension and degree restrictions are stated where
used. No algorithm, no sorry'd data, no `set_option`, no process residue (grep for round, review,
pull request, `#n`, machine paths, LaTeX delimiters, `lemma` as a keyword: nothing but "Shapiro's
lemma" and source lemma numbers). Every layer ends with Examples and Dependencies; every numbered
target has at least 3 Checks (3–9, counted over all 41). The organisation is the roadmap's own (see Source
independence).

Elaboration, run from the content checkout at Mathlib `1b1ccf4b` and Tau Ceti `2fd255d9`:
`lake env lean` on `packages/CohomologyOfGroups/Suggested.lean` **exit 0**, exactly 14
`declaration uses sorry` warnings (lines 113, 121, 136, 145, 174, 202, 226, 266, 325, 339, 359,
375, 389, 409), nothing else. Imports: `import Mathlib` and seven `TauCeti.*` modules, each used.
A scratch copy with `#check @name` for all 21 declarations: exit 0; no binder lost
(`tate_duality_of_free` keeps `[Module.Free ℤ ↑M]`, the stable-element theorems keep `[Finite G]`
or `[Fintype G]`, `[Fact (Nat.Prime p)]` and `n ≠ 0`, the double-coset statements keep
`[H.FiniteIndex]`); each type equals its README statement. All 21 Lean names occur in the README
and every backticked name the README gives as its own is declared.

### Headline theorems and padding

| README headline | In `Suggested.lean` |
|---|---|
| Hochschild–Serre sequences, edges, products, transgression, low degree (6.2–6.7) | not statable; docstring names the missing quotient action in positive degrees, filtration, transgression and `d²` |
| Tree sequences, amalgams, HNN (3.5–3.6) | not statable; docstring (trees with action, connecting maps). Free groups and free products stated (:113, :121) |
| Künneth, universal coefficients (5.1–5.3) | not statable; docstring (cross product, general cup, evaluation) |
| `H₂(A, ℤ) ≅ Λ²A` (5.4), Hopf (6.8) | stated as existence of an additive isomorphism (:136, :145), the README saying so |
| Double coset formula (7.1) | both forms (:174, :202) |
| Stable elements (7.2) | cohomology, homology, Tate (:226, :266, :325) |
| Tate duality (8.1) | `ℚ/ℤ` form and free integral form (:339, :359) |
| Periodicity from resolutions (8.3) | not statable; docstring |
| Cyclic cup periodicity (8.4), periodicity theorem (8.5) | :375, :389 and the `p`-primary form :409 |

One-tactic probe on a scratch copy, every one of the 14 theorems, with
`first | rfl | infer_instance | simp`: none closes (5 fail outright, 9 leave `simp` goals open).
None restates a definition, mirrors a Check, computes a small value or is a boundary case. No
padding.

### Adversarial table (computed values)

`C_m` cyclic of order `m`; trivial action unless said.

| Statement | Instances | Values on each side | Result |
|---|---|---|---|
| 1.1 `conjRes` general form (repaired) | `C₄ → C₂`, `𝔽₂`, degree 2; inclusion | pullback of carry = `df`, `f=(0,0,1,1)`: `(1,1)↦1`, `(1,3)↦1`, `(3,1)↦1`, `(3,3)↦1`, other 12 pairs `0` on both; map `𝔽₂→𝔽₂` is 0; for an inclusion the third map is the identity | sound |
| 1.1 `conjCores` general form | same data, degrees 1, 2 | resolution comparison `f₁=1`, `f₂=2` (`N₄ ↦ 2N₂`): `H₂` map 0, `H₁` map `ℤ/4⊗𝔽₂ → ℤ/2⊗𝔽₂` bijective; dual of the cohomological value | sound |
| 1.4 `Hom_k(Ind X, M) ≅ Coind Hom_k(X, M)` | pinned `coindV` (`f(φ(h)g) = h·f(g)`, `Mathlib/RepresentationTheory/Coinduced.lean:60`) | `Φ(F)(hg)(x) = hg·F(⟦hg⊗x⟧)` and `(h·Φ(F)(g))(x) = hg·F(⟦g⊗h⁻¹x⟧)`, equal as `⟦hg⊗hx⟧ = ⟦g⊗x⟧` | sound |
| 2.1 hyperhomology | `S₃`, `ℤ[S₃/A₃] → ℤ` | `H₀=0`, `H₁=H₀(S₃,ℤ_sgn)=ℤ/2`, `H₂=H₁(S₃,ℤ_sgn)=ℤ/3` (from `0→sgn→ℤ[S₃/A₃]→ℤ→0`); coinvariant complex `ℤ→ℤ` acyclic | sound; wrong model excluded |
| 3.1 flat versus projective | `k=ℤ/4`, `ℤ/2→ℤ/4→ℤ/2`; `ℤ[1/2]` presentation | tensor with `ℤ/2`: `H₂=ℤ/2≠0`; `u^*(a)=(a_i−2a_{i+1})`, `(1,0,1,0,…)` needs `a₀=Σ4^j=−1/3∉ℤ` | hypotheses needed |
| 3.5 tree sequence | `ℤ` on the line, coefficients `M`; `M=ℤ` | edge map `t⁻¹−1`: `H₁=M^ℤ`, `H₀=M_ℤ`; with a sum: `H₀(ℤ,ℤ)=ℤ/2≠ℤ` | sound; sign as SerreArbres Rem. 1 |
| 3.6 amalgam, HNN, free product | `C₄*_{C₂}C₆`; `BS(1,2)`; `F₂` with sign module | coker of `1↦(−2,3)`: order 12, `ℤ/4⊕ℤ/3`; `1−2=−1` gives `H₁=ℤ`, sum gives `ℤ/3`; `ker(−2,−2)=ℤ` vs factors `0` | sound; `n ≥ 2` needed |
| 4.1 action in the cup | `G=ℤ`, `N=ℤ[ℤ]` | defect of the action-free model at `(1,1,1)`: `t−2+(1+t)−1 = 2(t−1) ≠ 0` | sound |
| 4.2 connecting rules, uniqueness | family `(−1)^{pq}x∪y` | `x∪'δy = δ(x∪'y)`, `δx∪'y = (−1)^q δ(x∪'y)`: fails the left rule for odd `q` | convention pinned |
| 4.5 projection formula | `H=G`; `x=res z`; degree 0, `C₂` | both `x∪y`; `cor res(z∪y)=[G:H](z∪y)`; `2ab=2ab` | sound |
| 4.6 cap, face | `ℤ²`, `z=[e₁|e₂]−[e₂|e₁]` | back face `y∩z=[e₁]`, `⟨x,y∩z⟩=1=⟨x∪y,z⟩`; front face `−[e₁]` | sound |
| 4.7 agreement of cups | `C₂`, `𝔽₂`; norm image in degree 0 | `(x,x)↦` nonzero class in both; norms multiply to 0 in both | sound (R02: locator) |
| 5.1 Künneth | `C₂²`, `ℤ`, degrees 2, 3; `M=𝔽₂`, `N=ℤ[1/3]`, degree 2 | `ℤ/2`; `(ℤ/2)³ = 2 + Tor(H₁,H₁)`; tensor `𝔽₂²` + Tor `𝔽₂` = `dim H₂(C₂²,𝔽₂) = 3` | sound |
| 5.2 universal coefficients | `C₂`, `A=ℤ/2`, `n=2`; `G=ℤ`, `n=1` | `0⊕Tor(ℤ/2,ℤ/2)=ℤ/2`; `Ext¹(ℤ,ℤ)=0`, `Hom(ℤ,ℤ)=ℤ=H¹(ℤ,ℤ)` | sound (R01: locator) |
| 5.3 cohomological cross product | `C_p²`, `𝔽_p`; `ℤ×ℤ`, bidegree `(1,1)` | `dim Hⁿ = n+1`; `⟨x×y,a×b⟩ = 1−0 = 1 = ⟨x,a⟩⟨y,b⟩`, Koszul factor would give `−1` | sound |
| 5.4 `H₂ ≅ Λ²` (headline) | `1`, `ℤ`, `C_n`, `C₂²`, `ℤ²`, `ℚ` | `0,0,0,ℤ/2,ℤ,0` on both sides; `[a]²=[a|a]−[a|a]=0` | sound |
| 6.2 Hochschild–Serre | `S₃ ⊃ A₃`, `𝔽₃`; `C₄ ⊃ C₂`, `𝔽₂` | action `(−1)^{⌈q/2⌉}`: `H^q=𝔽₃` for `q≡0,3 mod 4`; `E₂` all `𝔽₂`, `Hⁿ=𝔽₂`, so `d₂≠0` | sound |
| 6.6 transgression sign | `C₃⊂C₉`, `𝔽₃`; `Q₈ ⊃ C₄`, `𝔽₂` | `df(2,1)=0−1+0=−1`, `(c∪u)(2,1)=+1`: `τ(u)=−c∪u` as HS53 Thm. 4; `2⊗1=0` so `c_{𝔽₂}=0`, `dim H¹(Q₈,𝔽₂)=2` | sound |
| 6.7 low degree | `C₂⊂C₄`, `ℤ`, `m=2`; homology | `0→ℤ/2→ℤ/4→ℤ/2→0`; `0→ℤ/2→ℤ/4→ℤ/2→0` with `1↦2` | sound |
| 6.8 Hopf (headline) | `ℤ/n`; `ℤ²`; `R=1`; `n=0` | `R∩[F,F]=0`; `d([a|b]−[b|a])=[ba]−[ab]`, `h=bab⁻¹a⁻¹=⁅a,b⁆⁻¹`; `0=0`; `0=0` | sound |
| 7.1 double coset, both forms | `S₃`, `H=K=C₂`, degree 0; `K=1` | `1+2=3=[G:H]`; `Σ[g⁻¹m]` over `G/H` = transfer over `H\G` | sound |
| 7.2 stable elements, cohomology | `S₃`, `p=3`, `ℤ`, degrees 2, 4; degree 0; `C₂×S₃` on `𝔽₂³` | `−1`: `0`; `+1`: `ℤ/3`; `H⁰(G,ℤ)(p)=0` vs all of `ℤ` stable; `c_{(23)}`: `e₃↦e₂`, `dim` stable `=2<3` | sound; `n≠0` needed |
| 7.2 homology | proof recomputed: `tr cor z = Σ cor c_{g⁻¹} tr z = Σ [P:P∩g⁻¹Pg] z = [G:P]z`; `S₃`, `p=3`, `n=1`; `(C₃)²⋊C₂`, `n=2` | stable `=\{z=−z\}=0=H₁(S₃)(3)`; inversion on `Λ²` is `+1`: `ℤ/3` | sound |
| 7.2 Tate | `S₃`, `p=2,3`, degree 0, `ℤ` and `ℤ_sgn` | `{0,3}→ℤ/2`, `{0,2,4}→ℤ/3` bijective; sign module: only `0` stable, `Ĥ⁰(S₃,ℤ_sgn)=0` | sound |
| 8.1 `tate_duality` | `C₂`, `ℤ`, `i=0,1,−1` | `0=0`; `ℤ/2=Hom(H₁,ℚ/ℤ)`; `Ĥ⁻¹(ℚ/ℤ)=ℤ/2=Hom(Ĥ⁰(ℤ),ℚ/ℤ)` | sound |
| 8.1 `tate_duality_of_free` (new) | `C₃`, `ℤ`, `i=0,1,2`; `C₂`, `M=ℤ/2`; `G=1`; `M=0` | multiplication on `ℤ/3`, 3 homs = pairing with `0,1,2`; `0,0`; `ℤ/3,ℤ/3`; non-free: `Ĥ⁰(Hom(ℤ/2,ℤ))=0` but a nonzero `ℤ/2→ℤ/2` exists; all groups 0 | sound; freeness needed |
| 8.2 `p`-groups | `Q₈`; `D₈`; `C₇⋊C₃` with "`p`"`=21` | cyclic abelian subgroups; contains `C₂²`; orders 1, 3, 7 so `g^21=1`, non-cyclic | primality needed |
| 8.3 resolutions | `C₂`, `n=0`; truncation of a bounded free complex | `Ĥⁱ(M)≅Ĥⁱ⁺¹(M⊗ℤ_sgn)`; `F_n/B_n` is an extension of `B_{n−1}⊂F_{n−1}` by `ℤ_χ`, so `ℤ`-free, and `B_n` has a finite free resolution | sound |
| 8.4 cyclic cup (headline), `p`-period | trivial group; `C₃`; `S₃`; `p∤|G|` | all groups 0, `1/1=0` in `ℚ/ℤ`; generator ↦ generator; `Ĥ²(3)=0`, `Ĥ⁴(3)=ℤ/3`: period 4; least `d` would be 1 | sound |
| 8.5 `tfae_periodic_cohomology` | `1`; `S₃`; `A₄`; `C_p²`; `d=0` | all hold; `Ĥ⁴=ℤ/6`; (c) fails by `V₄`; `dim=n+1` unbounded; `Ĥ⁰=ℤ/|G|` always cyclic, so `d≠0` needed | sound |
| 8.5 `tfae_primary_periodic_cohomology` (new) | `A₄`, `p=3` and `2`; `C₂`, `p=3`; `S₃`, `p=3`; `Q₈`, `p=2`; `C₂²`, `d=0` | `Ĥ²(A₄,ℤ)=ℤ/3`, order `|A₄|₃`: all four hold; `V₄` fails (c_2); sets `{0}`, card `1=3⁰`: all hold; `Ĥ⁴(3)=ℤ/3`, least `d=4`; `Q₈≅QuaternionGroup 2`, `Ĥ⁴=ℤ/8`; `Ĥ⁰=ℤ/4` cyclic of order `|G|₂` though (c_2) fails | sound; `d≠0` needed, no `p∣|G|` |
| 8.5 route (b_p)⇒(a_p), (a_p)⇒(c_p) | `|G|=6`, `p=3`: `e₃=4`; `|G|=12`, `A=C₃` | `4²=16≡4`, `4≡1 (3)`, `4≡0 (2)`; `res(e₃)=4≡1` in `ℤ/3` | sound |

Degenerate inputs: zero module and zero ring give zero groups throughout; the trivial group
satisfies every finite-group headline with all Tate groups zero; `Nat.card G ≥ 1`, so no division
by zero; `2 ^ m` with `m ≥ 1` starts at `Q₈` (`QuaternionGroup 1` is cyclic of order 4, excluded
harmlessly).

### Seeded sample of locators

| Target | Read | Result |
|---|---|---|
| 1.1 | HS53 line 154–160 (corollary to Prop. 2, p. 113); line 345–354; Loh19 line 5322–5334 (Prop. 3.2.13, p. 124) | supports inner triviality; pages right |
| 2.1 | HS53 line 201–213 (§4, p. 114), line 83–86 (Prop. 1, p. 111), line 355–362 (p. 118) | supports, and the README says "in cohomology" |
| 3.1 | Brown82 Ch. VII | not readable (uncertified) |
| 3.5 | SerreArbres line 5170–5184 (Prop. 13, Rem. 1, printed p. 169) | both sequences, signs `t` positive, `o` negative: as stated |
| 4.2 | MilneCFT line 3459–3484 (Prop. 1.38, p. 73) | any group, `r, s ≥ 0`, both rules with the exactness hypotheses, uniqueness: as stated |
| 4.5 | MilneCFT line 3492 (Prop. 1.39(d), p. 74) | supports; the README adds finite index and the mirrored form |
| 4.7 | no locator | R02 |
| 5.2 | Loh19 line 5841–5851, 5985–5994, 5762–5770 | R01 |
| 5.3 | Loh19 line 5985–5994 (p. 138); HS53 line 368–379 | README says the source records it without proof: accurate |
| 6.2 | HS53 line 489 (Thm. 1, p. 121), 654 (Thm. 2, p. 125), 677 (Prop. 3, p. 125), 341–344 (Prop. 7, p. 117); Loh19 line 5306–5314 (p. 123), 5358 (p. 125) | supports; pages right |
| 6.8 | Loh19 line 1460–1468 (Thm. 1.5.1, p. 30), 5568 (Thm. 3.2.18, p. 129) | free `F`, normal subgroup, same quotient; README says the map is not fixed there |
| 7.2 | MilneCFT line 3357–3389 (Prop. 1.30, p. 70; Cor. 1.33, p. 71); Hutchinson13 line 482–491 | index formula, Sylow injectivity, integral homological stable elements with `k ≥ 1`; Brown82 III §10 not readable |
| 8.1 | Brown82 Ch. VI §7, CE56 Ch. XII | not readable; statement and route recomputed above |
| 8.3 | Loh19 line 7012–7023 (Thm. 4.3.7, p. 165), proof line 7069 (p. 167) | the README calls its target "the algebraic form" of it: accurate |
| 8.5 | Loh19 line 7089–7126 (§4.3.2, pp. 167–168) | supports the step "periodic ⇒ abelian subgroups cyclic"; Brown82, CE56 not readable |

Also read outside the sample: HS53 line 825–830 (Ch. III Thm. 2, p. 129), 854–856 (p. 130),
984–990 (Thm. 4, p. 133: `d₂u = −c ∪ u`, the order and sign of 6.6); Hutchinson13 line 494–504,
511–515; MilneCFT line 3793–3822; Loh19 line 2399–2446. No locator flagged by the author as
unverified exists.

### Pinned declarations opened this round

`Mathlib/GroupTheory/Torsion.lean:450, :459`; `Mathlib/RepresentationTheory/Rep/Res.lean:38, :43`;
`…/Invariants.lean:263`; `…/Coinvariants.lean:442`; `…/Coinduced.lean:60`; `…/Induced.lean:59, :77`;
`Mathlib/GroupTheory/DoubleCoset.lean:79` (`Quotient H K` is `H\G/K`, so the Lean's
`Quotient K H` is the README's `K\G/H`); `Mathlib/CategoryTheory/Monoidal/Closed/Basic.lean:92`;
`Mathlib/RepresentationTheory/Homological/TateCohomology/Basic.lean:141`;
`Mathlib/GroupTheory/SpecificGroups/Quaternion.lean:51`;
`TauCeti/RepresentationTheory/Homological/TateCohomology/Character.lean:65` (`G : Type`,
`[Group G] [Fintype G]`), `…/Cup/Product.lean:131`, `…/Cup/Delta.lean:242, :443`,
`…/Cup/Associativity.lean:214`, `…/Functoriality.lean:249, :262`,
`…/Restriction/AllDegrees.lean:48, :104`;
`TauCeti/RepresentationTheory/Homological/GroupHomology/Transfer/Basic.lean:79, :103`;
`TauCeti/RepresentationTheory/Homological/GroupCohomology/Corestriction.lean:136`;
`TauCeti/Algebra/Group/Subgroup/Finite.lean:35`. In addition every one of the 201 backticked
library identifiers of the README was searched at the two pins by its final name: none is absent.
For the files of the other contract bullets the round-4 table (file and line) was relied on; those
bullets are unchanged.

### Duplication and ownership

No pinned declaration proves a target: `TauCeti.isZero_groupHomology_freeGroup` is trivial
coefficients in `Type` only; the pinned Tate cup and periodicity do not state duality, the
all-degree cyclic cup bijection or the equivalences. `roadmaps grep` over main and the open heads
for Tate duality, periodic cohomology, `p`-period, stable elements, the double coset formula,
Hopf's formula and the 21 Lean names: no second owner and no name collision. K3BlochGroups §5.2
(its line 1856–1870 at the open head) owns the `ℤ_(r)` stable-element theorem, the integral duality
for `d ≥ 1`, the quaternion resolution and Swan's periods, as the README says; InductionRestrictionPartII
and K2SymbolsBrauer use Hopf's formula and its normalisation without owning the general theorem.
`roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
`scratch/overlaps.md`: no other pull request changes this roadmap, no cited id is dropped, none is
defined only by an open revision, no second copy on main (main has no such folder; the board index
lists only AnalyticNumberTheory and LawrenceVenkateshMethod). Resolved at the heads:
SpectralSequencesAndConvergencePartII Layer 2 (:1019), Layer 3 (:1383), §3.2 (:1434), §3.4 (:1544),
§4.2 (:1655), §4.3 (:1727), §5.2 (:1895); K3BlochGroups §4.1 (:1190), §5.2 (:1856);
DerivedModuleAlgebra §S.1 (main, :955).

Overlap check: read SpectralSequencesAndConvergencePartII, K3BlochGroups, ArithmeticGaloisDuality, SpectralSequencesAndConvergence, InductionRestrictionPartII, ProfiniteCohomology, DerivedModuleAlgebra, InductionRestriction; abstract hyper-derived, composite-functor, Künneth and filtered-pairing spectral sequences: SpectralSequencesAndConvergencePartII; convergence machinery: SpectralSequencesAndConvergence; first-quadrant double complexes: DerivedModuleAlgebra; `ℤ_(r)` stable elements, integral duality, quaternion period, Swan: K3BlochGroups; finite-group integral universal coefficients and Sylow surjectivity: ArithmeticGaloisDuality; central five-term sequence, Hall coinvariants, finite-abelian `Λ²`: InductionRestrictionPartII; continuous cohomology: ProfiniteCohomology; projection formula and Mackey decomposition of representations: InductionRestriction and the pinned Tau Ceti; nothing else shared, and the results-and-headings list is empty.

### Supplier order and gaps

Every `*Needs:*` line and supplier citation was read; no supplier is on the never-cite list and
every named roadmap is on main or earlier in the merge order (this roadmap is line 318). Output of
the dependency check:

```text
depcheck: 244 roadmaps, 2206 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. `gap:homological-low-degree` (DerivedModuleAlgebra §S.1) and
`gap:flat-kunneth` (SpectralSequencesAndConvergencePartII §4.3) carry the same slug in
`packages/CohomologyOfGroups/design/plan.json` and in the README (:550, :571). Each is precise and
minimal: §S.1 at main states edge morphisms and the five-term sequence in cohomological indexing
only; §4.3 at its head states the two-column sequence and naturality of the spectral sequence from
page 2, not naturality of the sequence. Neither is a finding.

### Copyright and arrangement

Wording compared for 16 passages: the twelve readable sample locators above and 6.6 (HS53 line
984–990), 6.7 (HS53 line 825–830), 8.2 (Loh19 line 2399–2419), 8.4 (MilneCFT line 3813–3822), with
the docstrings of `nonempty_groupHomology_two_addEquiv_hopf` and
`bijOn_cores_sylow_isHomologyStableClass` against Loh19 line 1460–1468 and Hutchinson13 line
482–491. What is shared is formulas, exact sequences and standard names; no sentence or run of
clauses is reproduced, and 3.5 is not a translation of the French (it adds the conjugations for
non-representative end points). No table, figure, exercise or example list is taken over.

Citation occurrences before References: HS53 42, Loh19 22, Brown82 14, Hutchinson13 12, MilneCFT 9,
SerreArbres 4, CE56 3, SwanPPeriod60 2 (108). HS53's contents (line 22–42 and its section heads:
Ch. I §§1–7, Ch. II §§1–5, Ch. III §§1–6) against Layer 6: 6.1 ↔ II §1, 6.2 ↔ II §§2–4 and I §7,
6.4 ↔ III §1, 6.5 ↔ II §5, 6.6 ↔ III §§3, 6, 6.7 ↔ III §4; 6.3, 6.8, 6.9 have no counterpart, III §§2, 5
are unused, and II §5 is placed after III §1. No one-to-one run in order; the order inside Layer 6
is forced by its Needs lines (6.2 needs 6.1; 6.5 needs 6.2; 6.6 needs 6.5; 6.7 needs 6.6).

Source independence: 16 passages compared with 5 sources, none shared; largest share HS53, 42 of 108 locators; contents compared with HS53: independent. Brown82 and CE56 (uncertified) and SwanPPeriod60 (waived) could not be read.

## Not verifiable

- Brown82 (settled uncertified): Ch. II §7, Ch. III §§8–10, Ch. IV §4, Ch. V, Ch. VI §§7, 9, Ch. VII.
  In the sample this leaves 3.1, the primary locator of 7.2, 8.1 and 8.5 unchecked against the
  text; their statements were recomputed independently above.
- CE56 (settled uncertified): Ch. XII, Ch. XVII.
- SwanPPeriod60 (settled waived): Thms. 1–2 read only through Hutchinson13 line 499–504.
- The one-tactic probe does not include a library search (`exact?`); round 4 ran it on the twelve
  earlier theorems, and the two new ones were compared by object with the pinned Tate cup files.

## Source issues

- **Misprint** in Hutchinson13 at Corollary 3.3, proof, printed p. 12 (Hutchinson13 line 518): the source says the degrees concerned are those congruent to 3 modulo 3; it should be congruent to 3 modulo 4, as in its statement; affects the proof.
- **Gap** in MilneCFT at Chapter II Remark 3.5, printed p. 81 (MilneCFT line 3813–3817): the source says the cyclic period isomorphism is cup product with the class of the normalised character and postpones the proof; it should give the proof or a computation; affects the proof.

## For the human reviewers

- Brown82 and CE56 are cited by locator without their text (`packages/CohomologyOfGroups/sources.toml:93, :108`); 14 and 3 of the 108 citations rest on them, including the primary locators of 7.1, 8.1 and 8.5.
- Loh19 and MilneCFT are course notes read from their authors' sites, not refereed publications (`packages/CohomologyOfGroups/sources.toml:23, :40`); 31 of 108 citations. No reuse of their expression was found.

<!-- tauceti-roadmap-review {"agent": "claude", "head": "f181f004b256da9748fdf021dd6e1ee7587785d8", "job": "REV-PKG-CohomologyOfGroups~5", "model": "fable", "worker": "chris-x26"} -->
