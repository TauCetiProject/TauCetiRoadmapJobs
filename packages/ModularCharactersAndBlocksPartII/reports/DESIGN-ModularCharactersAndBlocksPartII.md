# Design report: DESIGN-ModularCharactersAndBlocksPartII

Files written: `packages/ModularCharactersAndBlocksPartII/design/README.md`,
`packages/ModularCharactersAndBlocksPartII/design/plan.json` (35 targets in 9 layers, 2 gaps),
`packages/ModularCharactersAndBlocksPartII/sources.toml` (locators and `cited_for` updated to the
README sections; no new keys), and this report. No `needs-references.toml` was written: every
text the design cites is either read in the cache or settled as uncertified.

## What the design covers

The design follows the triaged target (T1–T9) in two strands on the base
ModularCharactersAndBlocks (open pull request, head 534668f).

- **Coprime actions on characters (Layers 1–5).** The action `(s · χ)(g) = χ(s⁻¹ • g)` and
  `Irr_S(Γ)`; the fixed-class lemma (Glauberman Lemma 3, from LocalFiniteGroupTheory L3); Brauer's
  permutation lemma for automorphisms; Gallagher's determinant-normalised extension (Glauberman
  Theorem 1, over any field, no finiteness of `Γ`); the canonical extension with its field of
  values and integral values on `S` (T1); Gallagher's correspondence in character form for any
  normal subgroup, derived from the pinned Tau Ceti tensor factorisation with trivial factor set
  (T1); the cyclic case with its sign (T2); Glauberman's restriction formulas (Corollaries 4–6);
  the composition-series construction, the `p`-group case, independence of the series,
  equivariance, bijectivity and the count (T3, T4); the unique compatible family and the
  definition `θ ↦ θ*` (T4); Galois equivariance, fields of values and the constituent property
  (T4); `θ(1) ∣ |Γ : C| θ*(1)` (T5); degree-divisibility as a predicate with its reduction to
  prime order, its proved instances, and the cited general theorem (T5).
- **Heights (Layers 6–9).** Central characters of blocks, Osima's formula and connectivity of
  blocks in the Brauer graph, defect classes; Brauer's theorem on heights (T6); heights, defects
  and `Irr₀` with the special blocks (T7); the Min–Max theorem and induced defect groups; covering
  through central characters; defect groups under domination; the Fong–Reynolds correspondence
  with preservation of heights (T7); regular blocks and Fong's theorem; the extended first main
  theorem with the `p'` inertial index; vanishing off defect groups; blocks of `P C_G(P)` with
  defect group `P`; heights of blocks with a normal defect group (T7); Reynolds' theorem (T9);
  the height zero and Alperin–McKay predicates with their proved instances and cited theorems
  (T7, T8).

Every merged-target list was empty, so nothing else is in scope.

### Design decisions worth recording

- **Gallagher's correspondence is stated for any `N ⊴ G` and any extendible `θ`**, not only for
  `Γ ⊴ Γ ⋊ S`: the pinned `TauCeti.IsProjectiveInertiaExtension.tensorRepEquiv`,
  `isIrreducible_tensorRep_iff` and `tmulIntertwining_bijective` give the representation-level
  statement in that generality, so narrowing would be artificial.
- **Gallagher's extension theorem is stated over any field for any group `Γ`**, as in
  Glauberman's Theorem 1; only finiteness of `A` and `gcd(|A|, dim V) = 1` are used.
- **Galois equivariance is stated through power maps `χ^{(j)}`, `j` coprime to `|Γ|`**, which is
  universe-free; the pinned `IsPrimitiveRoot.cyclotomicIrreducibleCharacterAction` requires `K`,
  `L`, `G` in one universe and would restrict `Γ` to `Type` if used directly in a statement.
- **The route to "every character of `b` lies under a character of `B`" needs connectivity of a
  block in the Brauer graph** (Martínez Corollary 2.7), which the base does not state (its §4.2
  has only the converse, Martínez Theorem 2.2). It is planned in §6.1 with Osima's formula, from
  base material only.
- **The structure theorem for blocks of `P C_G(P)` (§8.2) avoids Sambale Theorem 1.23** (the
  bijectivity of domination and `C_B = |N| C_{B̄}`, whose proof Martínez omits): uniqueness of
  the dominated block follows from the vanishing of defect-zero central characters on
  `p`-singular classes and the fact that a `p`-regular class meets `xP` only in `x`; surjectivity
  of `ξ ↦ θ_ξ` follows from Reynolds' projective-character argument (reynolds line 201) instead
  of the Cartan identity.
- **Reynolds' theorem (§8.4) splits into an unconditional and a conditional direction.** "All
  heights zero ⇒ `D` abelian" uses only the extended first main theorem, covering, Clifford
  theory and §8.2; "`D` abelian ⇒ all heights zero" uses Itô's theorem with Brauer's height
  theorem, which is much shorter than Martínez's route but needs the gap
  ito-abelian-normal-degree.
- **The Fong–Reynolds route is the matrix-algebra reduction** `k[G] f ≅ Mat_{|G:T|}(k[T] e_b)`
  (with `f` the orbit sum of `e_b`), which gives the block bijection, the character and Brauer
  character bijections and the decomposition numbers together; Martínez's Theorem 7.12 is a
  sketch that does not prove injectivity or surjectivity (martinez lines 1852–1853).

## Notions moved down from later roadmaps

None. Every supplier is on main (CharacterTheory, InductionRestriction), earlier in the merge
order (ModularCharactersAndBlocks, FiniteGroupInvariants), or another author's open pull request
adding a new roadmap folder (LocalFiniteGroupTheory, the draft #1634 by another author at head
0c409c9, which the base and FiniteGroupInvariants already cite).

## Proposed Part IIs

- **CharacterTheory, Part II: degree divisibility from central and abelian normal subgroups.**
  `dim ρ ∣ |G : Z|` for an irreducible complex `ρ` and a subgroup `Z` acting by scalars (Isaacs
  Theorem 3.12, by the tensor-power argument on `G^m` modulo the kernel of the product of
  scalars), and Itô's theorem `χ(1) ∣ |G : A|` for abelian `A ⊴ G` (Isaacs Theorem 6.15). The
  pinned Tau Ceti has `TauCeti.Representation.finrank_dvd_card` only; CharacterTheory on main
  does not plan these; no roadmap on main or in an open pull request mentions Itô's theorem
  (searched `Itô|Ito's theorem|divides |G : Z|`).
- **InductionRestriction, a further part on projective representations: the Clifford degree
  quotient.** For `N ⊴ G` and `θ` under `χ`, `χ(1)/θ(1) ∣ |G : N|` (Isaacs Corollary 11.29), via
  the divisibility of the degree of an irreducible projective representation of a finite group
  by its order, from the pinned linearisation over a finite central extension
  (`IsProjectiveRep.exists_commonExtension_linearization`,
  `exists_finite_stem_extension_lifting_pgl`) and the scalar-subgroup divisibility above.
  InductionRestriction Layer 7 and the pinned tensor factorisation stop before this divisibility.
  The existing InductionRestrictionPartII (reduced multipliers) does not cover it.

Both are recorded as gaps with supplier `none` in `plan.json` and under *Exact supplier
contracts* in the README. The ownership rule of the brief (an extension of an existing roadmap's
direction is proposed as a Part II rather than planned here) decided against planning them in
this roadmap.

## Gaps

| slug | needed by | what is missing | supplier |
|---|---|---|---|
| `ito-abelian-normal-degree` | §8.4 (the direction "`D` abelian ⇒ all heights zero" of Reynolds' theorem) | Itô's theorem, through `dim ρ ∣ [G : Z]` for a subgroup acting by scalars | none (proposed CharacterTheory Part II) |
| `clifford-multiplicity-dvd-index` | §8.3 (Reynolds' height formula and the equality of the set of heights with `{ν(ξ(1))}`) | `χ(1)/θ(1) ∣ [G : N]` for `θ` under `χ` | none (proposed InductionRestriction part) |

The unconditional part of §8.3 (`h(χ) ≥ ν(ξ(1))` and every `θ_ξ` lies under some `χ`) and the
direction "all heights zero ⇒ `D` abelian" of §8.4 do not depend on either gap.

## Ownership

Searched by object, on main and at the heads of all 459 open roadmap pull requests with
`roadmaps grep`: Glauberman correspondence / Glauberman–Isaacs (no match), height zero / `Irr_0`
(only unrelated uses of "height"), Fong–Reynolds (no match), Gallagher (only Gallagher's
zero-one law in ProbabilisticAndMetricNumberTheory), permutation lemma (FiniteGroupInvariants
§6.2, the Galois version, recorded in the README Scope as a different acting group), Min–Max and
defect class (only the base's §6.2 sentence), canonical extension (unrelated geometric uses),
extended first main theorem / inertial quotient (no match), Alperin–McKay / McKay conjecture (no
match), coprime action on characters / `Irr_S` (no match), Itô (only stochastic calculus). The
board packages index lists three imported packages, none in this area. This roadmap is the owner
of the targets it plans; the two degree-divisibility statements are left to proposed Part IIs.

No `Suggested.lean` declaration name of a readable roadmap is reused: the design defines no Lean
names in backticks of its own; plan names are unqualified and in this roadmap's namespace.

## Source notes

- **Martínez, Theorem 8.5 (i)** (martinez lines 1928–1958): the printed proof writes
  `0 ≠ λ_B(Ĉl_G(x)⁺)` before deriving it from `t* λ_{B̄}(…)`, so the nonvanishing of `t mod p` is
  assumed rather than proved. The design uses a different route (§7.3): the image of
  `e_B ∈ Tr_D^G(k[G]^D)` in `k[G/N]` is `|N : N ∩ D| · Tr_{DN/N}^{G/N}(ā)`, contains `e_{B̄}`, and
  Higman's criterion in `G/N` applies.
- **Martínez, Theorem 7.12** is a sketch (lines 1852–1853 say injectivity and surjectivity are
  not proved); the design's route is the matrix-algebra reduction, with Reynolds Theorem 1
  (reynolds line 133) as the original source.
- **Martínez, Theorem 3.3 (Min–Max)** is stated without proof (lines 710–717); the design gives a
  route from the base's §§6.1–6.2 (Brauer projection, relative trace ideals, Higman's criterion).
- **Martínez, Theorem 8.11** relies on Proposition 8.9, whose proof is omitted (line 2004); the
  design avoids it as described above.
- **Glauberman, Corollary 5**: the sign `ε'` of the restriction formula is not always the sign of
  Theorem 3 (for `|A| = 2` they can differ by `θ₀(a)`); the README states Corollary 5 with its own
  sign `ε'`.
- **Hartley–Turull** is an OCR text; only Theorem A (line 84), the reduction sentence (line 91),
  Definition 3.1 (line 304) and Proposition 3.2 (line 306) are cited, and each was read at those
  lines.
- **Sambale** is a survey; Theorems 1.18, 1.19 and 1.23 (lines 499, 509, 542) were read and are
  cited for statements only.
- Paywalled, cited by locator only (`uncertified`, settled in the manifest): isaacs (Theorems
  3.12, 6.15, 6.32, Corollaries 6.17, 11.29, Chapter 13), navarro-1998 (Chapter 3, Theorem 5.9),
  navarro-2018 (Chapter 2), feit (Chapter IV), isaacs-1973 (named only).
- Sources that could not be read: none beyond the settled uncertified entries.
- Nothing suspicious was found in any fetched text, roadmap or pull request.

## Adversarial pass

| statement | instances tried | values computed | result | change |
|---|---|---|---|---|
| Convention `(s·χ)(g) = χ(s⁻¹ • g)` | `C₇`, `S = C₃` by `r ↦ r²`, `χ(r) = ζ₇` | `s⁻¹ • r = r⁴`: `ζ₇⁴`; other convention `ζ₇²` | pins the inverse; left action | witness added to Conventions and §1.1 |
| §1.1 `Irr_S(Γ)`, `C_Γ(S)` | `Q₈` with `C₃`; trivial action; `S = 1` | `Irr_S(Q₈) = {1, χ₂}`, `C = {±1}`; `Irr_S = Irr`, `C = Γ` | holds | — |
| §1.2 fixed classes | `Q₈`/`C₃`; inner `C₂` on `S₃` (non-coprime); `C₂` swapping `C₂ × C₂` | `2 = 2`; `3 ≠ 2`; coset `{(1,0),(0,1)}` has no fixed point | coprimality and solvability needed | non-coprime negative Checks added |
| §1.3 Brauer permutation lemma | `C₃` inversion; `Q₈`/`C₃`; inner on `S₃`; `⟨1+E₁₂, 1+E₁₃⟩` on `𝔽₂³`; `Γ = 1` | `1=1`, `2=2`, `3=3`; group fixes 2 classes vs 4 characters, each element 4 vs 4; `1=1` | element-wise statement true; group-wise false for noncyclic | stated for single automorphisms and cyclic groups; noncyclic non-example added |
| §2.1 Gallagher extension | `Γ=1`, `F=ℚ`, `A=C₂`; `Q₈`, `A=C₂` by conjugation by `i`; `Q₈`, `A=C₃`; `A=1` | sign extension det `−1`; implementing operators `±√−1·ρ(i)`, det `−1`; trace `−1`, det `1` at order 3 | coprimality with `dim V` needed; over `𝔽₂` the sign is trivial | field fixed to `ℚ` in the first Check; non-coprime Check added |
| §2.2 canonical extension, two normalisations | `SL(2,3)`; trivial action; `S₃ = C₃ ⋊ C₂` | `χ̂(a) = −1`; `det(χ̂λ) = λ² ≠ 1`; `χ̂ = χ × 1`; `det sgn = −1` on `C₂` | "order coprime to `#S` ⟺ trivial on `S`" holds for every linear character of `Γ ⋊ S` since its restriction to `Γ` has order dividing `#Γ` | — |
| §2.3 values | `SL(2,3)`; trivial action on `C₃`; `ℚ(ζ₄) ∩ ℚ(ζ₃)`, `ℚ(ζ₄) ∩ ℚ(ζ₈)` | values `2,−2,0,−1,1`; `χ̂ω(a) = −ω`; `χ̂(s) = 1`; `ℚ`, `ℚ(i)` | holds; non-canonical extension fails integrality | non-coprime cyclotomic Check added |
| §2.4 Gallagher correspondence | `SL(2,3)` over `χ₂`; `N = G`, `N = 1`; `Z(Q₈) ⊴ Q₈` with faithful `θ` | 3 characters; `{θ}`; identity; `1 ≠ 4` | extension hypothesis needed | stated for any `N ⊴ G` |
| §3.1 cyclic cosets | `S₃`; `SL(2,3)`; `D₈ = C₄ ⋊ C₂` | 3 transpositions conjugate to `a`; classes of size `24/6 = 4`; `ax` conjugate to neither `a` nor `ax²` | coprimality needed | non-coprime Check added |
| §3.2 cyclic correspondence and sign | `SL(2,3)` (generators `a`, `a²`); trivial `C₂` on `C₃`; `C₂` inverting `C₅`; `A = 1` | `ε = −1`, `χ₂* = sgn`; `ε = 1`, `χ* = χ`; `χ̂(a) = 1`; `ε = 1` | sign genuinely `−1`; `t ↦ χ̂(at) = −sgn` is not a character | Check without sign added |
| §3.3 one element | `SL(2,3)`; `a = 1`; `C₃ × C₃` acting on `Q₈` through one factor | `(−1, sgn)`; `(1, χ)`; kernel element `(1, χ₂)` | holds for noncyclic `A` | an incoherent Check replaced by the `C₃ × C₃` Check |
| §3.4 restriction formulas | `SL(2,3)`, `B = 1`; `χ = 1`; `3^{1+2}_+` with involution; `C₂` inverting `C₅` in `C₃ × C₅` | `(2 sgn + sgn)/3 = sgn`; `Γ = C·Γ`; `(3ω − ω)/2 = ω` (also `(3ω+ω)/2 = 2ω`); `Γ = C₃·C₅` | Corollary 5's sign may differ from Theorem 3's for `#A = 2` | statement rewritten with its own sign `ε'` and linear `θ₀` of `A` |
| §4.1 `Λ_C` | `C₃` on `Q₈`; `C₆ = C₂ × C₃` on `Q₈ × C₅` along both series; `S = 1` | `Λ(sgn) = χ₂`; both series give `χ₂ × 1` (steps computed); identity | holds | Lemma 4 phrased with `A ⊴ B`, `B` acting, no coprimality on `B` |
| §4.2 `p`-group case | `SL(2,3)`; `3^{1+2}_+` with involution; `S = 1` | `(2sgn+sgn)/3 = sgn`; `(3ω−ω)/2 = ω`; zero | holds | — |
| §4.3 independence | `C₆` example; `C₉ ≤ Aut(C₁₉)`; trivial action | same result; `C = 1`, `Irr_S = {1}`; identity | holds | chain version with prime-power factors added |
| §4.4 bijectivity and count | `SL(2,3)`; `3^{1+2}_+`; `C₇ ⋊ C₃` with automorphism inverting `C₇`; `C₃` on `C₇` | `2=2=2`; `3=3=3` (11 classes, 3 fixed); `3=3=3` (two degree-3 characters swapped); `1=1=1` | holds | — |
| §4.5 the family and `θ*` | `SL(2,3)`; `C₂` swapping `C₃ × C₃`; `C₂` swapping `C₂ × C₂` (non-coprime) | `χ₂* = sgn`, multiplicity `2 ≡ −1 (mod 3)`; `(ψ_a × ψ_a)* = ψ_{2a}`; both fixed characters restrict to `1` with multiplicity `1` | coprimality needed; correspondent is not "same label" | — |
| §4.6 equivariance, Galois, fields, constituent | swap example with `α` = inversion; same with `j = 2`; `SL(2,3)` | `ψ_{−2a} = ψ_{2a} ∘ α⁻¹`; `ψ_{4a} = ψ_a = (ψ_{2a})^{(2)}`; `ℚ = ℚ`, multiplicity `2` | holds | Galois stated with power maps (universe-free) |
| §5.1 degree bound | `SL(2,3)`; `3^{1+2}_+`; trivial action; `θ = 1`, `C ≠ Γ` | `2 ∣ 4`; `3 ∣ 9`; `θ(1) ∣ θ(1)`; reverse `[Γ : C] ∤ 1` | direction matters | negative Check added |
| §5.2 degree-divisibility predicate | `SL(2,3)`; `3^{1+2}_+`; abelian `Γ` | `1 ∣ 2`; `1 ∣ 3`; `1 ∣ 1`; variant `2 ∤ 1` | proved instances are those with irreducible restriction to `C` | redundant "`C = Γ`" clause removed; vague API bullet replaced |
| Convention valuations | `p = 2`, `q = 3/2`, `2/3` | `ν₂ = −1` (not in `O`), `ν₂ = 1` (in `m`) | holds | — |
| Convention central characters | `S₃`, `p = 2`, transpositions | `ω = 3, −3, 0`; `λ_{B₀} = 1` | holds | — |
| §6.1 `λ_B`, Osima, defect classes | `S₃`, `p = 2`: `B₀` and `r + r²`; `A = {1}` | coefficients `1/3, 1/3, 0` and `2/3, −1/3, 0`; defect classes `{1}` and the 3-cycles; `f_{{1}}` coefficient `1/6 ∉ ℤ₂` | uniqueness of `λ_B` needs the residue field of `Z(k[G])e_B` to be `k`, which base §2.3 gives | base §2.3 added to contracts; locator corrected to martinez lines 699, 760; a vague Check replaced |
| §6.2 Brauer's height theorem | `S₃` at 2; `SL(2,3)` at 3; `A₅` at 2 | `a = d = 1`, `2 ∣ 2`; `ν₃(2) = 0`, `3 ∣ 3`; odd degrees `1,3,3,5`, `4 ∣ 4` | `p^a ∣ χ(1)` false (wrong model) | — |
| §6.3 heights | `SL(2,3)` at 2; `D₈`; trivial group; `S₃` at 2 (`std`) | heights `0,0,0,1,1,1,0`, `#Irr₀ = 4`; `0,0,0,0,1`; `0`; `ν = a = 1`, `d(std) = 0` | natural subtractions never truncate (`a − d ≤ ν ≤ a`) | — |
| §6.4 special blocks | `S₃` at 2; `A₅` at 2 with `N(V₄) = A₄`; `SL(2,3)` at 3 with `N(C₃) = C₆` | `{1, sgn}`; `4` and `4`; `3` | holds | defect-zero locator corrected from martinez Corollary 2.9 to Theorem 2.8 (line 583) |
| §7.1 Min–Max | `S₃` at 2 and 3; `G = 1` | `λ = 3 ≡ 1`, `D_t = ⟨t⟩`; `a = 1`, `D_r = 1`; at `p = 3` `λ(K̂_t) = 0`, `λ(K̂_r) = 2`, `D_r = C₃` | holds | route supplied (the source states it without proof) |
| §7.2 covering | `S₃`, `N = C₃` at 2 and 3; `N = 1`, `N = G` | `ω_std = −1 = ω_λ` on `{r, r²}`; one block each side | holds | route for the fifth statement made explicit (connectivity, `χ⁰`, Frobenius reciprocity, Clifford semisimplicity) |
| §7.3 domination | `S₃`, `N = C₃` at 2 and 3; `N = 1` | `DN/N = C₂`; dominated blocks of defect zero in `1` | printed proof assumes `t ≢ 0` | route replaced by the relative-trace argument |
| §7.4 Fong–Reynolds | `S₃`, `N = C₃`, `p = 2`, `b = {λ}`; `T = G`; `S₄`, `N = V₄`, `p = 3`, `b = {λ}` | `{λ} ↦ {std}`, `h = 0 = 0`; identity; `T = D₈`, two linear extensions induce to the two degree-3 characters, heights `0` | holds | an empty Check replaced by the `S₄` Check |
| §7.5 regular blocks, Fong | `S₃`, `N = C₃`, `p = 2`; `QC_G(Q) = G`; `S₃`, `p = 3` | `λ_{B₀}(K̂_t) = 1` (not regular), `{1_N}^G` undefined (`λ` differ on `{r,r²}`: `2 ≡ 0` vs `−1`); `λ_std(K̂_t) = 0`; `[G : PN] = 2` | consistent with Proposition 9.3 | — |
| §7.6 extended first main theorem | `S₃` at 2 and 3; `S₄`, `p = 2`, `P = V₄` | indices `1`, `2`; index `6` and defect group `D₈` | index condition needed | negative Check added |
| §8.1 vanishing | `S₃` at 2 (`std(t) = 0`); `SL(2,3)` at 3 (`χ₃` at orders 3, 6); principal block | `0`; `0`; no constraint | holds | — |
| §8.2 blocks of `P C_G(P)` | `D₈`; `C₂ × C₃` at 2; `P = 1`; `SL(2,3)` at 2 | `Irr(B) = Irr(D₈)`, heights `{0,1}`; `θ = 1 × ψ`; `θ_1 = θ`; `Q₈ C_G(Q₈) = Q₈ ≠ G` | uniqueness argument: a `p`-regular `x ∈ C_G(P)` has `Cl(x) ∩ xP = {x}`; defect-zero characters vanish on `p`-singular elements | route rewritten without Proposition 8.9 / Sambale 1.23 |
| §8.3 heights for normal `D` | `SL(2,3)` at 2; `A₄` at 2; `D × H` | `{0, 1} = {ν(1), ν(2)}` (degree-3 character over nontrivial linear characters, degree-2 over `χ₂`); `{0}`; `ν(ξ(1))` | inequality unconditional; equality needs `p ∤ ψ(1)/θ(1)` | equality made conditional on gap clifford-multiplicity-dvd-index |
| §8.4 Reynolds' theorem | defect zero; `D₈`; abelian `G`; `D × H`; `SL(2,3)` at 2; `A₄` at 2 | height `0`; height `1`; heights `0`; heights `0` iff `D` abelian; height `1`; heights `0` | "`D` abelian ⇒ heights `0`" needs Itô | split into unconditional and gap-conditional directions |
| §9.1 height zero predicate | `S₃` at 2, 3; `S₄` at 2; `G = 1` | heights `0`; height `1` with `D₈`; defect zero | consistent with the cited theorems | — |
| §9.2 Alperin–McKay predicate | `S₃` at 2; `A₅` at 2; `SL(2,3)` at 3 | `2 = 2`; `4 = 4`; `3 = 3` twice | holds | — |

Context check: every block statement carries the splitting `p`-modular system and the defect
group in its hypotheses; every coprime-action statement carries coprimality, and those from
§1.2 on that use Glauberman's lemma or Schur–Zassenhaus conjugacy carry solvability of `S`
(cyclic and `p`-groups are solvable). Generality: the README and `plan.json` state the same
hypotheses (Gallagher's extension over any field and any group `Γ`; Gallagher's correspondence
for any `N ⊴ G`; heights for any block of any finite group at any prime).

## Dependency check

    $ tauceti-roadmap … gate --candidate packages/ModularCharactersAndBlocksPartII/design/README.md --only ModularCharactersAndBlocksPartII …
    candidate: ModularCharactersAndBlocksPartII is not in the merge order yet; checked as if placed after ModularCharactersAndBlocks (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2348 edges, 0 problem(s)

No UPWARD or CYCLE line. `roadmaps resolve` on the README reports no cross-roadmap citation and
no Lean name found nowhere; it does not check pinned Lean names on this host, so every
backticked Mathlib and Tau Ceti name was checked against the pinned sources (Mathlib 1b1ccf4,
Tau Ceti 2fd255d) by declaration search, with the namespaces of the Clifford, tensor-factorisation,
Galois-action, field-of-values and central-character declarations read at their files.
