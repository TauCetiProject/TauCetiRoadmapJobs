# DESIGN-SpectralSequencesAndConvergence: design report

Deliverables: `packages/SpectralSequencesAndConvergence/design/README.md`,
`packages/SpectralSequencesAndConvergence/design/plan.json` (7 layers, 32 targets, no gaps),
`packages/SpectralSequencesAndConvergence/sources.toml` (9 entries, `sources check`: 0 problems).

## What the design covers

The roadmap builds the language of convergence for spectral sequences on Mathlib's carrier
`CategoryTheory.SpectralSequence`, over an arbitrary abelian category. It is built on the
spectral-object material that the pinned Tau Ceti already contains.

| Layer | Content | Target brief items |
| --- | --- | --- |
| 1 | subquotient presentations; cycle and boundary towers; stabilisation, regularity, degeneration; limit page `Z_∞/B_∞` (no hypothesis at stabilising positions, countable products and coproducts in general) | 1 |
| 2 | bidegree assignments (filtration degree, total degree, page offset) covering all of Mathlib's carriers; boundedness and stabilisation (Stacks 24.7–24.8); Euler characteristic of pages | 1, 4 (Euler) |
| 3 | decreasing filtrations on Mathlib `FilteredObject C ℤᵒᵖ`; weak, ordinary and strong convergence in a set `I` of total degrees; morphisms; finite filtrations; comparison theorem; vanishing, dimension count (as an iff), two columns, two rows, edge maps, five-term sequence; range-of-degrees example (Browning–Sawin) | 2, 7, 8, 10 |
| 4 | spectral objects indexed by `EInt`: towers as kernels and images of `δ`; abutment as a filtered object; `E_∞` against Tau Ceti `EInfty` (Stacks 24.6, 24.10 analogues); convergence in a range of degrees (Stacks 24.13 in spectral-object form); `IsFirstQuadrant` and `IsThirdQuadrant`; naturality and comparison | 9 |
| 5 | decreasingly filtered complexes in classical indexing (the DGFloer dictionary, now in abelian categories); induced filtration; cohomologically bounded and degreewise-finite convergence (Stacks 24.11, 24.13); classical convergence (Weibel 5.5.1) under exact sequential colimits | 4, 5(a) |
| 6 | spectral sequence of an exact couple in Mathlib's carrier, page shift; towers (Stacks 21.4); exact couples of spectral objects and filtered complexes, identified with Layers 4–5 | 6 |
| 7 | lim and lim¹ as the kernel and cokernel of Tau Ceti's `towerDifference`; lim-acyclic epimorphic towers and the Mittag–Leffler condition; Boardman's double-tower sequence; conditional convergence, `RE_∞`, `W`, Helle–Rognes Theorems 3.9 and 3.10, half-plane criteria; complete convergence (Weibel 5.5.10) | 3, 5(b) |

### Where the design departs from the target brief, and why

- **The pinned Tau Ceti is not empty of spectral-sequence material.** The brief says the pin has
  none. At the pin (`2fd255d`), Tau Ceti has a large set of relevant files:
  - `SpectralObject/{Abutment, Stabilization, Comparison, Map, SpectralSequenceMap}.lean`: the
    abutment, its filtration, `EInfty ≅ gr`, stabilisation, and the comparison theorem for
    `EInt`-indexed spectral objects;
  - `SpectralSequence/Comparison.lean`: a page isomorphism propagates to later pages;
  - `SpectralSequence/Filtered/*`: the spectral sequence of an increasing filtration of a cochain
    complex in any abelian category, with first page, `d₁`, finite convergence, exhaustive
    convergence for module complexes, and comparison;
  - `SpectralSequence/Bicomplex.lean`;
  - `CategoryTheory/Preadditive/TowerDifference.lean`;
  - module towers with lim, lim¹ and Mittag–Leffler;
  - the Euler–Poincaré engine for additive invariants.

  None of these is restated. Layers 4–5 consume them. Where this roadmap proves a stronger
  statement, the Tau Ceti statement is cited as the instance:
  - 4.3 and 4.4 replace the vanishing of `H^{n−1}(q+r−1 ≤ ⊤)` and `H^n(·≤ ⊤)` by a mono/iso
    condition in degree `n`;
  - 4.6 contains `isIso_hom_app_abutment_of_isIso_page`;
  - 5.4 is the abelian-category (AB5 sequential) form of `Filtered/Exhaustive.lean`.
- **Target 1 (limit page).** `Z_∞` and `B_∞` are defined as greatest lower and least upper
  bounds in `Subobject`. Mathlib's arbitrary meets and joins need well-poweredness and all small
  limits, so existence is a theorem: free at stabilising positions, and from countable products
  and coproducts in general. One definition covers the stabilised limit and Stacks's `Z_∞/B_∞`.
- **Convergence for all of Mathlib's carriers.** A single convergence theory, parametrised by a
  bidegree assignment, covers ℤ×ℤ, ℕ×ℕ, ℤ×Fin l, the homological first quadrant and the native
  spectral-object positions. Mathlib's E₂ indexing of a spectral object (assignment `(p,q) ↦ (p,
  p+q)`, `e = 0`, `F^p H^n := abutmentFiltration (n−p+1) n`) and the classical filtered-complex
  indexing (`(a,b) ↦ (−b−1, a+b)`, `e = 1`) are both assignments on the same native object. Both
  are pinned by computed witnesses.
- **Target 3 (Boardman) generality.** The brief offers two options: Grothendieck abelian
  categories, or AB4* with Mittag–Leffler vanishing proved from the definition of lim¹. Neither
  suffices:
  - Grothendieck categories need not have exact products.
  - In AB4* categories Mittag–Leffler does not force lim¹ = 0 (Neeman; stacks-012K line
    3720–3724).
  - Helle–Rognes's proof uses that a tower of epimorphisms has epimorphic limit projections
    (line 213–214, Lemma 3.15 (c)), which also fails in general.

  The design states the exact hypothesis set the route uses:
  - countable products and coproducts;
  - `CountableAB4Star`;
  - exact sequential colimits;
  - a new, explicitly defined hypothesis, "lim-acyclic epimorphic towers" (7.2). It is implied by
    enough projectives, and `ModuleCat R` satisfies it, so Helle–Rognes's graded-module setting
    is an instance.
- **Target 5(b)** is derived from Layer 7 (7.5) via the exact couple of a filtered complex (6.3),
  with completeness giving conditional convergence to the colimit.
- **Target 8 (dimension count)** is strengthened from "equality if degenerate" to an iff on the
  differentials touching total degree `n`.
- **Classical `E₀`.** The classical `E₀ = gr K` is not formed as a page. Mathlib's and Tau Ceti's
  filtered spectral sequence starts at classical `E₁`; the Conventions say so.
- **Weak Serre classes** (Stacks 24.11 (4), 24.12) are stated with explicit closure hypotheses
  rather than a named class. The class `IsWeakSerreClass` exists only in an open revision of
  EtaleCohomologyFoundations, not on main, so it is not taken as a dependency.
- **`Suggested.lean`** is not a deliverable of this job. The README therefore backticks no Lean
  name of this roadmap's own; proposed names are in `plan.json`.

## Ownership

- **Searched by object** (`roadmaps grep` over main and all 464 open heads; grep over all board
  packages) for: limit page/`E∞`/`EInfty`, exact couples, conditional convergence, comparison
  theorem, strong convergence, cycle/boundary towers, weak Serre classes.
- **Exact couples in an abelian category:** owned by StableHomotopyKTheory §7.22 (open new-roadmap
  pull request, merge order line 13, earlier than this roadmap). Consumed, not restated.
  ChromaticHomotopyTheory, EllipticKTheory and SchemeKTheoryOperations also cite §7.22 as the
  owner.
- **Limit pages, abstract convergence structures, the comparison theorem, Boardman in abelian
  categories:** no owner on main, in the board packages or in the open heads. This roadmap is
  the owner.
- **Module filtered complexes** (Weibel 5.5.1(2), 5.5.10): owned by DGFloer Layer 1 item 3 on
  main. This roadmap's abelian-category theorems contain them; the module statements are Checks.
- **Module towers:** owned by AlgebraicTopology Stage 6 item 0 on main.
- **Double complexes of modules:** DerivedModuleAlgebra §S.1.

## Notions moved down from later roadmaps

None. Every supplier is on main or is StableHomotopyKTheory (merge order line 13). The gate
places this roadmap right after StableHomotopyKTheory, so every consumer named in the README
(SchemeKTheoryOperations line 34, ArithmeticGaloisDuality line 43, …, StableHomotopyKTheoryPartII
line 316) comes later. TangentialBordism (line 10) is earlier and is not listed as a consumer.

## Overlap with open pull requests

- **DerivedModuleAlgebra #1701** (open revision) drops §1.T.1, moving module towers to
  AlgebraicTopology Stage 6 item 0. The design cites AlgebraicTopology Stage 6 item 0, which is
  stable on main and at every open AlgebraicTopology head (#1652, #1663, #1797, #1807, #1808,
  #1854). It does not cite §1.T.1.
- **DGFloer Layer 1 item 3** is renamed `### 1.3` by #1798 (same content), and its content is
  restated as AlgebraicTopology Stage 5 item 0 by #1807, #1808 and #1854. #963 and #1798
  conflict with each other. This design cites "DGFloer, Layer 1 item 3" as on main, only in
  Checks and Scope (no proof depends on it). When those revisions merge, the citation should
  follow to `§1.3` or to AlgebraicTopology Stage 5 item 0.
- **Ids this roadmap cites that only an open revision defines:** none.
- **Ids this roadmap's pull request drops:** none (new roadmap).
- The overlaps tool has no entry for this roadmap (not yet a pull request). Closest vocabulary,
  by hand: StableHomotopyKTheory §§7.21–7.26 (owner of exact couples and of filtered-spectrum
  convergence; §7.26 is an instance of 7.4) and DGFloer Layer 1 item 3 (module instance). Both
  settled above.

## Proposed Part IIs and revisions

- **SpectralSequencesAndConvergence, Part II**, covering three things this roadmap stops short
  of:
  - Cartan–Eilenberg systems, the colim–lim interchange morphism `κ` and the identification
    `W ≅ ker κ` (helle-rognes2024 §§5–7);
  - the necessity of Boardman's conditions via transfinite image towers (helle-rognes2024 Remark
    3.12);
  - multiplicative structures on spectral sequences and their convergence.

  The base roadmap stops at the sufficiency theorems of 7.4 and at additive structure.
- **DGFloer revision (not a Part II):** once this roadmap lands, DGFloer Layer 1 item 3's module
  convergence theorems become corollaries of 5.4 and 7.5, and its reindexing becomes this
  roadmap's Conventions dictionary.

## Gaps

None. No prerequisite is missing. StableHomotopyKTheory §7.22's contract is written and
supplies everything Layer 6 assumes:
- exactness of the derived couple;
- the homology of `(E, jk)` at a bidegree.

## Sources

- **Read** (certified, in the cache): stacks-012K (§§10, 19–24, 31), helle-rognes2024 (§§1–4),
  browning-sawin2020 (Theorems 1.1, 2.7, and the line 1250–1254 citation of Stacks 012K).
- **Settled uncertified, cited by locator only:** weibel1994 (locator extended to §3.5 for lim¹),
  boardman1999 (locator extended to 3.4(b), taken from helle-rognes2024 line 229),
  eilenberg-moore1962, mccleary2001, massey1952, cartan-eilenberg1956.
- **Not readable:**
  - The journal numbering of browning-sawin2020 (Annals, paywalled) was not compared with arXiv
    v3; the arXiv numbering is used and recorded in `version_note`.
  - Neukirch–Schmidt–Wingberg (author-page PDF) was tried for the general five-term sequence.
    Twice the sources service retrieved only the book's landing page, so the work is not cited
    and its manifest entry was removed. The five-term sequence (3.6) carries the Weibel §5.2 and
    McCleary Ch. 2 locators (uncertified), and DerivedModuleAlgebra §S.1 is its module instance.
- No `needs-references.toml` is written: nothing the design depends on is unread except settled
  uncertified texts.

## Suspicious text

None. No fetched page, roadmap or pull-request text contained instructions.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Convention: classical `E_r^{p,q}` = native page `r+1` at `(2p+q+1, −p−1)` | `K = ℤ →(×2) ℤ`, `F^0 = K`, `F^1 = K^1`, `F^2 = 0` | `E_1^{0,0} ↦ (1,−1)`, `E_1^{1,0} ↦ (3,−2)`; native page-2 relation `(1,−1) → (3,−2)` = `(r, 1−r)` at `r = 2`; `d = δ(1) = d(1) = +2`; agrees with Tau Ceti docstring `s = −q−1`, `t = p+2q+1` | holds | witness added to Conventions |
| Convention: E₂ indexing `F^p H^n = abutmentFiltration (n−p+1) n` | same complex, `n = 1` | `F^3 = abutmentFiltration (−1) 1 = im H^1(F^1) = ℤ/2 = H^1`, `F^4 = abutmentFiltration (−2) 1 = 0`; `gr^3 H^1 = ℤ/2` at native `(3,−2)`; classical index `1`; difference `2 = n+1` | holds | witness added |
| Convention: `d_r` degree `c + b − (r−1)a` for the cohomological couple | `a=(−1,1)`, `b=0`, `c=(1,0)` | `(1,0) + (r−1)(1,−1) = (r, 1−r)`; the alternative `c+b+(r−1)a = (2−r, r−1)` | holds; the alternative fails | Check added (6.1) |
| 1.1 subquotient presentation | `ℤ ⊇ 4ℤ`, `X = ℤ/4`; `X = 0`; two presentations of `ℤ/2` in `ℤ/4` | `0, 2ℤ/4, ℤ/4 ↦ 4ℤ, 2ℤ, ℤ`; `X = 0 ⇒ B = Z`; `(0, 2ℤ/4)` and `(2ℤ/4, ℤ/4)` both give `ℤ/2` | holds; presentation is data | non-uniqueness Check |
| 1.2 towers | all `d = 0`; `×2` E₂ example | `Z_r = ⊤`, `B_r = ⊥`; `Z_3(0,1) = 0 = B_3(0,1)`, `Z_3(2,0) = ℤ`, `B_3(2,0) = 2ℤ`, `E_3^{2,0} = ℤ/2`; wrong model `B_{r+1} = B_r` gives `ℤ` | holds; wrong model excluded | — |
| 1.3 stabilisation / regular / coregular | `×2` example at `(2,0)`, `(0,1)` | `(2,0)` stable from 3, not 2; `(0,1)` coregular from 2, regular from 3 | holds | — |
| 1.4 limit page | `×2`; zero; `K^0 = ℤ →id K^1 = ℤ` with `F^pK^1 = ℓ^{p−1}ℤ` (`p ≥ 1`) | `E_∞^{2,0} = ℤ/2`; `Z_r(0,0) = ℓ^{r−1}ℤ` (`Z_1 = ℤ`, `Z_2 = ℓℤ`, since `dz ∈ F^r K^1`), `Z_∞ = 0`, `E_∞^{0,0} = 0`, `E_r^{0,0} ≅ ℤ ∀ r`; `H^0(K) = H^1(K) = 0` | holds; no page equals the limit | Check written out with values |
| 1.4 existence from countable products/coproducts | — | `Z_∞ = ker(E → ∏ E/Z_r)` is the greatest lower bound; `B_∞ = im(∐ B_r → E)` is the least upper bound | holds without well-poweredness | Mathlib `sInf`/`sSup` avoided |
| 1.4 functoriality | morphism `f` | pullback preserves greatest lower bounds (right adjoint), image preserves least upper bounds (left adjoint) ⇒ `f(Z_∞) ≤ Z_∞′`, `f(B_∞) ≤ B_∞′` | holds | — |
| 2.1 bidegree assignment | cohomological; native classical; `(q, p+q)`; `(p,p)` | fil step `r` (`e=0`); `−(q+1−r)−1 = fil + r − 1` (`e=1`); `1−r` (no fixed `e`); not injective | holds; non-examples excluded | — |
| 2.2 bounded ⇒ stabilisation, explicit page | first quadrant `(1,0)`; `(p,q)` general; 1.4 complex | leaving target `q+1−r < 0` iff `r > q+1`, entering source `p−r < 0` iff `r > p`; so stable for `r > max(p, q+1)`; `(1,0)` stable from 2; 1.4 complex: `E_1^{p,1−p} = ℤ/ℓ ∀ p ≥ 1` (not bounded below), not regular at `(0,0)` | holds | page bound written with separate bounds `β`, `α` (previously both called `b`) |
| 2.3 Euler characteristic of pages | `ℤ/4 → ℤ/2` onto (length); `×2 ⊗ ℚ`; `finrank` on `k^(ℕ)` | `−2+1 = −1 = −1+0`; `−1+1 = 0 = 0`; `0 ≠ 1+0` | holds; Serre hypothesis needed | non-example Check |
| 3.1 filtrations | `ℓ`-adic on `ℤ`, `ℤ_ℓ`; constant; zero; `ℤ/4` vs `ℤ/2⊕ℤ/2` | `lim ℤ/ℓ^p = ℤ_ℓ ≠ ℤ`; constant not separated; zero not exhaustive; both have `gr = ℤ/2, ℤ/2` | holds | complete ⇒ separated (cone argument) and the lim¹ characterisation stated with `CountableAB4Star` |
| 3.2 convergence structures | `×2` complex; `ℓ`-adic `ℤ`; zero SS with `H^0 = ℤ` constant | `E_∞^{1,0} = ℤ/2 = gr^1 H^1`, strong; `E_∞^{p,−p} = ℤ/ℓ = gr^p ℤ`, converges, not strong; weak holds, convergence fails | holds | Check made self-contained (no forward reference) |
| 3.3 morphisms | `(−1 on pages, id)` on `E_∞^{0,0} = ℤ ⇒ H^0 = ℤ` | `gr^0(id) = 1 ≠ −1` | not a morphism, as intended | replaced a tautological Check by this one |
| 3.4 finite filtrations, Euler | `ℤ/4`, `ℤ/2⊕ℤ/2` | both `E_∞ = ℤ/2, ℤ/2`, length 2 | holds; `H ≠ ⊕E_∞` | — |
| 3.5 comparison | zero SS with `H^0 = ℤ` constant vs 0; `ℤ → ℤ_ℓ` with `E_1^{p,−p} = ℤ/ℓ` | `f = id` iso, `h = 0` / inclusion not iso | separation and completeness hypotheses necessary | Checks rewritten with explicit spectral sequences |
| 3.5 complete case needs exact sequential colimits | — | mono-ness of `H/F^{p′} → H′/F′^{p′}` needs `K ∩ ⋃ = ⋃ (K ∩ ·)`; epi-ness needs nothing | AB5-type hypothesis kept only where used | — |
| 3.6 two rows | `E_2^{0,0} = E_2^{0,1} = E_2^{2,0} = E_2^{2,1} = ℤ`, `d_2` iso | sequence at `n=0`: `0 → H^1 → ℤ ≅ ℤ` ⇒ `H^1 = 0`; at `n=1`: `ℤ ≅ ℤ → H^2 → 0` ⇒ `H^2 = 0`; `E_∞^{0,0} = E_∞^{2,1} = ℤ` ⇒ `H^0 = H^3 = ℤ` | holds | — |
| 3.6 two columns | `E_2^{1,n−1} = E_2^{0,n} = ℤ/2` | `H^n = ℤ/4` and `ℤ/2⊕ℤ/2` both fit | no splitting claimed | — |
| 3.6 five-term, `m ≥ 1` | only `E_2^{0,0} = ℤ` | `m = 0`: `0 → ℤ → ℤ → ℤ → 0`, exactness fails at `H^0` | hypothesis `m ≥ 1` needed | kept |
| 3.6 dimension count iff | `×2 ⊗ ℚ` | page-2 sum `1`, `dim H^1 = 0`, `d_2 ≠ 0`; conversely all differentials zero ⇒ equality | iff holds in both directions | strengthened from "if degenerate" |
| 4.1 towers of a spectral object | `r = 2`; `ℤ →(×2) ℤ` at native `(1,−1)`, `r = 3` | `H(q ≤ q) = 0` ⇒ `⊤, ⊥`; `δ : H^0(−1≤0) = ℤ → H^1(−2≤−1) = ℤ` is `×2` (`δ(1) = d(1) = 2`), `Z_3 = 0` | holds; Mathlib `E = ker δ / im δ` (Page.lean) | — |
| 4.3 `E_∞` vs `EInfty` | non-exhaustive `K^{−1} = ℤ →id K^0 = ℤ`; 1.4 complex; `×2` at `(3,−2)` | `H^{−1}(0 ≤ ⊤) = K^{−1} = ℤ →δ E_1^{0,0} = ℤ` onto ⇒ `Bᵗ = ℤ`, `B_∞ = 0`, `H^0 = 0`; `Zᵗ = 0 = Z_∞`; `i = −2` (`H^2 = 0`), `j = 0` (`H^1(G_{−1}) = ℤ → ℤ/2` not mono, `H^1(G_0) = H^1(K)` iso), page `max(2, 3) = 3` | holds | "canonical comparison" rephrased as the canonical subquotient `Zᵗ/B_∞` (no direct map `Z_∞/B_∞ → Zᵗ/Bᵗ` exists in general) |
| 4.3 boundary side under mono in degree `n` | diagram chase | `y ∈ H^n(q≤j) ↦ 0 ∈ H^n(q≤⊤)` ⇒ `y = δ(u)` with `u ∈ H^{n−1}(j≤⊤)`; `y` = image of `δ′(u) ∈ H^n(⊥≤j)`, `δ′(u) ↦ 0` in `H^n(⊥≤⊤)`, mono ⇒ `y = 0` | holds; weaker than Tau Ceti's vanishing in degree `n−1` | stated as the hypothesis, with vanishing as a sufficient condition |
| 4.4 convergence in a range | `ℤ →(×2) ℤ`, `n = 1`; positions with `q ≥ b` | `a = −2`, `b = 0`: `F^p = H^1` for `p ≤ 2`, `0` for `p ≥ 4`; page 2 at `(2,−1)` = `H^1(ℤ in degree 0) = 0`; for `q ≥ b`, `H^n(q≤q+1) ↪ ker(H^{n+1}(⊥≤q) → H^{n+1}(⊥≤q+1))`, which need not vanish | statement "positions with `q ≥ b` vanish on page 2" was **false** under degree-`n` hypotheses | corrected: such positions stabilise from page `q − a + 2` with zero limit page |
| 4.4 non-exhaustive non-example | `K^{−1} = ℤ →id K^0 = ℤ` | `H^0(⊥ ≤ j) = H^0(G_j) = ℤ` for `j ≥ 0`, `H^0(K) = 0` ⇒ not mono | hypothesis fails as claimed | Check value **corrected** (it previously said `H^0(⊥ ≤ j) = 0`) |
| 4.5 first quadrant | `n ≥ 0`; `n ≤ −2` | `isZero₁`: `H^m(⊥≤i) = 0` for `i ≤ 0`; `isZero₂` kills `H^{n−1}(j≤⊤)`, `H^n(j≤⊤)` for `j ≥ n+1`; for `n ≤ −2`, `b = n+1 < 0 = a` | `a ≤ b` failed for `n ≤ −2` | **corrected** to `a = min(0, n+1)`; `H^n = 0` for `n < 0` via `H^n(⊥≤0) → H^n(⊥≤⊤) → H^n(0≤⊤)` |
| 4.5 third quadrant | `m = −2` | `H^{m′}(⊥≤i) = 0` for `i ≤ m′` (`isZero₂`), `H^{m′}(j≤⊤) = 0` for `j ≥ 1` (`isZero₁`), `a = min(m,1) = −2`, `b = 1`; position `(p,q)` carries `EInfty(−q) m` since `F^s = abutmentFiltration(m−s+1) m`, `s = −p`, `m+p = −q` | holds | filtration index named `s` to avoid clash with homological `p` |
| 4.6 naturality/comparison | Tau Ceti hypotheses | Tau Ceti: vanishing in degrees `n−1, n` at `⊤`; here: `H^n(⊥≤j) → H^n(⊥≤⊤)` iso, implied by that vanishing | contains Tau Ceti's theorem | — |
| 5.1 classical spectral sequence | witness; trivial filtration; `G_t = F^t` | `d_1 = +2`, `E_2^{1,0} = ℤ/2`; `E_1^{0,q} = H^q(K)`; `F^t` antitone, not monotone | holds | — |
| 5.2 induced filtration | witness; non-exhaustive complex | `F^1H^1 = ℤ/2`, `F^2 = 0`; `gr^0H^0 = 0` ⊊ `E_∞^{0,0} = ℤ` | holds | — |
| 5.3 cohomological bounds (Stacks 24.13) | Stacks's proof; 1.4 complex | Stacks line 3229–3231 cites an isomorphism in degree `n−1` where the step uses injectivity of `H^n(F^s) → H^n(K)` (cocycle `x = dy` in `F^s` is a boundary in `F^s`); the lemma's statement is unaffected since its hypothesis (2) holds for all `n`; 1.4 complex: `H^1(F^sK) = ℓ^{s−1}ℤ ≠ 0` | restated with exactly the degrees used (`n, n+1` and `n`); degree-`n+1` hypothesis necessary | — |
| 5.4 classical convergence | `ModuleCat R`; non-exhaustive; `ℓ`-adic `ℤ` | AB5 gives `ker(X → colim) = ⋃ ker`; non-exhaustive fails weak convergence; `ℓ`-adic not bounded below, not strong | holds; both hypotheses needed | — |
| 6.1 exact couple spectral sequence | `E = 0`; constant tuple couple `ℤ²` | all `i` iso, pages 0; `jk(x,y) = (y,0)`, `(jk)² = 0`, `i² = i ≠ 0`, `ker = im = ℤ⊕0` ⇒ page 2 zero | holds; `i² = 0` not imposed | — |
| 6.2 towers of a couple | Bockstein of `ℤ`; couple on `ℤ/ℓ²` | `ker i^r = 0` ⇒ `B = 0`, `k = 0` ⇒ `Z = E`, `E_∞ = ℤ/ℓ`; `D = ℤ/ℓ²`, `E = ℤ/ℓ⊕ℤ/ℓ`, `j(x) = (x̄,0)`, `k(a,b) = ℓb`: exact, `d_1 = 0`, `Z_2 = k^{−1}(ℓℤ/ℓ²) = E`, wrong model `k^{−1}(im i²) = ker k = ℤ/ℓ⊕0` | holds; shifted model excluded | Check written with explicit couple |
| 6.3 couple of a spectral object | `ℤ →(×2) ℤ` | `deg d_r = (2,−1) + (r−1)(1,−1) = (r+1,−r)`; `d_1 = jk = ×2` on `E(1,−1) → E(3,−2)`; degree-1 tower `A^p = H^1(⊥ ≤ 2−p)`: `0` (`p ≥ 4`), `ℤ` (`p = 3`), `ℤ/2` (`p ≤ 2`), colim `ℤ/2`, lim `0`, images `F^p = H^1` for `p ≤ 3`; with `k = 0`, `ker k = ℤ ≠ 0 = im j` | holds | "surjective transitions" corrected (`A^4 = 0 → A^3 = ℤ` is not onto) |
| 7.1 lim, lim¹ | constant; `×ℓ` on `ℤ`; `ℤ/ℓ` zero transitions | `A, 0`; `0, ℤ_ℓ/ℤ`; pro-zero `0, 0` | holds | — |
| 7.2 epimorphic towers | `ℤ/ℓ^{n+1} ↠ ℤ/ℓ^n`; Neeman | `lim = ℤ_ℓ`, `lim¹ = 0`, projections onto; enough projectives: lift `P → Q_s` recursively along epis to `P → lim Q` | hypothesis justified; ML vanishing via stable images (epimorphic, since `φ(F′_{n+1}) = F′_n`) and pro-zero quotient | hypothesis made explicit |
| 7.3 double-tower sequence | `id` on `ℤ`; `×ℓ` on `ℤ` | `0 → 0 → 0 → 0 → 0`; `Q = 0`, `RQ = ℤ_ℓ/ℤ` with `×ℓ` an iso (`ℤ_ℓ = ℓℤ_ℓ + ℤ`, `1/ℓ ∉ ℤ_ℓ`), `0 → 0 → ℤ_ℓ/ℤ → ℤ_ℓ/ℤ → 0` | consistent | route recorded: 2×2 double complex of products (only `CountableAB4Star`), pro-isomorphism along the diagonal |
| 7.4 Boardman | zero couple; `D = ℤ`, `i = id`, `E = 0` | all invariants 0; zero pages, `RE_∞ = W = 0`, `A^{±∞} = ℤ`, neither conditional convergence | holds; zero pages do not force zero target | — |
| 7.4 half-plane, `s < s₀` | exact sequence `E^{s,n−s−1} → A^{s+1} → A^s → E^{s,n−s}` | `i` iso for `s < s₀` when `E^{s,·} = 0` in degrees `n−1, n` ⇒ `A^s ≅ A^{−∞}` for `s ≤ s₀` ⇒ `W^n = 0` | holds | off-by-one **corrected** (`s < s₀`, not `s < s₀ − 1`) |
| 7.4 half-plane, `s > s₁` | cycle towers at degree `n` | `Z_r^{s,n−s} = k^{−1}(im(i^{r−1}) ⊆ D^{s+1,n−s})`, which lives in total degree `n+1` | vanishing in degrees `n−1, n` alone does not control `RE_∞` in degree `n` | **corrected** to degrees `n−1, n, n+1` |
| 7.5 complete convergence | `ℓ`-adic `ℤ_ℓ`; `ℓ`-adic `ℤ` | `E_1 = E_∞ = ℤ/ℓ`, strong to `ℤ_ℓ`; `ℤ` not complete, strong fails | holds; completeness needed | route: complete ⇒ `1 − s` iso on `∏ F^sK` ⇒ conditional convergence to the colimit |
| Context (variable blocks) | — | no `Suggested.lean` at this stage; every hypothesis is in its target's statement in README and `plan.json` | — | — |
| Duplication by object | Tau Ceti `SpectralObject/*`, `SpectralSequence/*`, `TowerDifference`, module towers, Euler engine; Mathlib `FilteredObject`, `EulerCharSigns`, Grothendieck axioms | grep at the pins; every name in the README checked by script against declarations at the pins (only file names and DerivedModuleAlgebra roadmap names unmatched, the latter resolved on main by `roadmaps resolve`) | nothing restated | target brief's claim "no spectral-sequence material in Tau Ceti" corrected |

## Dependency-check output

```
candidate: SpectralSequencesAndConvergence is not in the merge order yet; checked as if placed after StableHomotopyKTheory (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2354 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean
name found nowhere. That tool could not check names outside TauCetiRoadmap on this host; they
were checked against the pinned Mathlib and Tau Ceti by script.
