# Review of SuperconnectionsAndMathaiQuillenForms (pull request #2297 at fdef9b8)

**Verdict:** needs changes

## R01 (P3) — The finite-dimensional limit theorem still lacks an exact locator

**Location:** TauCetiRoadmap/SuperconnectionsAndMathaiQuillenForms/README.md:820: “Berline–Getzler–Vergne, §9.1, for (b)”.
**Claim:** Previous R01 is only partly repaired: §4.4(b)'s locally constant kernel limit and convergent transgression still have no statement number or page.
**Witness:** README.md:817–820 asserts convergence with all derivatives and an exact difference; :1221 supplies only Chapter 9's full range, pp. 263–310. The description's Review paragraph explicitly acknowledges the missing theorem number and page.
**Repair:** Replace the bare §9.1 citation with the statement number and printed page supporting both conclusions, including any separate transgression locator. BGV1992 remains settled uncertified; this requires consultation by someone with access, not another source request.

## Previous findings

- R01 — partly repaired: README.md:1057–1058 now cites Quillen §2, Proposition 2.1, pp. 214–215; :1108–1110 cites §5.A, (5.1), Propositions 5.2 and 5.5, pp. 222–223. At :820, BGV remains “§9.1, for (b)”.
- R02 — repaired: the description now says “This description is written for the head `fdef9b8e`” and records the added Quillen locators and the outstanding BGV locator.

## Verified sound

For the Cayley rows, `X = [[0,−2],[2,0]]`, `ε = diag(1,−1)` and `g = ⅕[[-3,−4],[4,−3]]`.

| Statement | Instances tried | Left side computed | Right side computed | Result | Change |
|---|---|---|---|---|---|
| 1.1 exterior supercommutativity | `Λ(ℤ²)` and `Λ(𝔽₂²)`, `a=e₀`, `b=e₁` | Coefficient of `e₀e₁` in `ab`: `1` in both rings | Coefficient in `−ba`: `1` in both rings; unsigned `ba` over `ℤ`: `−1` | Koszul sign agrees | Citation shortened |
| 4.4(b), R01 | Point, `E⁺=ℂ³`, `E⁻=ℂ`, `T=(2,0,0)`, `t=½,1` | `(e^(−4t²)+2)−e^(−4t²)=2` at both parameters | `ch(ker T)−ch(ker T*)=2−0=2`; transgression `0` | Limit agrees in this instance | Exact locator still needed |
| 6.1 invertibility | `X` above | `det(1−X)=5` | `(1−X)⁻¹=⅕[[1,−2],[2,1]]`; product `I₂` | Invertible | Locator added |
| 6.1 unitarity | `X`, `g` above | `g* g = diag(25/25,25/25)=I₂` | Unitary condition `I₂` | Agrees | Locator added |
| 6.1 graded identity | `X`, `g` above | `εgε=⅕[[-3,4],[−4,−3]]` | `g⁻¹=⅕[[-3,4],[−4,−3]]` | Agrees | Locator added |
| 6.1 inverse Cayley | `g` above | `(g−1)(g+1)⁻¹=[[0,−2],[2,0]]=X` | `cayley X=⅕[[-3,−4],[4,−3]]=g`; `X* = εXε = −X` | Agrees | Locator added |
| 6.1 new eigenspace comparison | `T=2`, vectors `(1,2)` and `(1,−2)` | `gε(1,2)=(1,2)`; `εg(1,−2)=(1,−2)` | `ε(1,2)=(1,−2)`; `(1−X)(1,0)=(1,−2)` | Graphs of `T` and `−T` distinguished | Convention explanation added |
| 6.2 trace identity | `k=1`, `P=diag(1,0)`, `dP(∂x)=σ₁`, `dP(∂y)=σ₂` | `tr(F(dF)²)(∂x,∂y)=16i` | `8 tr(P(dP)²)(∂x,∂y)=8·2i=16i` | Agrees | Locator added |
| 6.2 Chern normalization | Same tangent vectors, `k=1` | `tr(F(dF)²)(∂x,∂y)=16i` | `ch₁=(i/2π)·2i=−1/π`; `8(2π/i)(−1/π)=16i` | Agrees | Class locator added |
| 6.2 odd invariant form | `U(1)`, `g=e^(iθ)`, `k=1` | `g⁻¹dg=i dθ`, exterior derivative `0`, integral `2πi` | Closedness requires `0`; translation pulls back to `i dθ` | Agrees | Locator added |

The rows for untouched statements stand as in the previous review, of `ce8469c`.

- Diff: 17 README lines, 3 changed passages; 0 changed Lean declarations or layer headings; 0 files changed outside the folder; worktree clean.
- Sources: 1 supporting passage reopened, Wu2006 lines 228–238, equation (2.8) and its following exactness formula; 2 cited sources remain uncertified. Seeded targets affected: 1.1, 4.4, 6.1 and 6.2.
- Pinned library: `Mathlib/LinearAlgebra/CliffordAlgebra/Prod.lean:54`, `CliffordAlgebra.map_mul_map_of_isOrtho_of_mem_evenOdd`, has arbitrary commutative coefficients and the stated homogeneous sign; identity isometries for the zero form give §1.1.
- Supplier citations: GeneralizedCohomology G4.0b is on main `8a42212`, README.md:1082 and :1149; the #1808 overlap lead is false. LieGroupoidsPoisson G0.1, CharacteristicClasses C4.2, LieGroups Layer 2, SmoothBundlesConnections B2.2 and DifferentialGeometry Layers 0–1, 6 were resolved on main.
- Gate: worker reports all checks zero, including `build=0`, `OK`. Local rerun reports only `depcheck: NOT IN ORDER: SuperconnectionsAndMathaiQuillenForms (insert it after its last supplier)`, expressly exempt before intake; candidate-order output: `depcheck: 244 roadmaps, 2200 edges, 0 problem(s)`. No UPWARD or CYCLE.
- Lean: targeted build and direct elaboration both pass with only 16 `sorry` warnings; a scratch copy elaborated all 49 `#check @name` commands, matching all 49 supplied signatures. The affected signatures retain their required hypotheses; no signature changed. Earlier padding results stand.
- PR text: head, three-file addition, scope, pins, 16 headline theorems, unchanged Lean since `0c22c1ff`, new Quillen citations and unresolved BGV locator agree with this head.

Overlap check: read RationalHomotopyModels, SpinGeometry, CalibratedGeometry and IndexTheory; no new object is introduced. Clifford-module geometry belongs to SpinGeometry, real skew normal forms to CalibratedGeometry §4.2, index formulas to IndexTheory; RationalHomotopyModels owns no changed object here. The graded Cayley correspondence and invariant character forms remain this roadmap's targets.

Source independence: changed passages only; 3 inspected, 0 comparable against their 2 settled uncertified sources, BGV1992 and Quillen1988. Largest share remains Wu2006, 23 of 55 mathematical source locators. No layer was added, removed or reordered; the previous arrangement comparison stands. New wording was not certified against those unavailable texts.

## Not verifiable

- BGV1992 §1.3 and §9.1: settled uncertified in the source manifest; text unavailable, no renewed request.
- Quillen1988 §2, Proposition 2.1, pp. 214–215; §5.A, (5.1), Propositions 5.2 and 5.5, pp. 222–223: locators now present, but text remains settled uncertified; no renewed request.

## Source issues

- none

## For the human reviewers

- **Not tested.** BGV1992 (15 of 55 locators) and Quillen1988 remain unavailable for wording and arrangement comparison. Quillen's new locators and convention attribution are unverified; §4.4(b)'s BGV locator still needs someone with access.
- **Licence.** README.md:1246–1248 and :1251–1253 cite Knuth (arXiv:math/9503234) and Harvey–Lawson (arXiv:math/9407216), recorded as read from arXiv in the previous review. `packages/SuperconnectionsAndMathaiQuillenForms/sources.toml` still has no entry for either.
