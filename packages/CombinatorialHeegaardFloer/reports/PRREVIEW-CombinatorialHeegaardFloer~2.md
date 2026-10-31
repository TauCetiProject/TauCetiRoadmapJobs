# Review of CombinatorialHeegaardFloer (pull request #1089 at 2b9cba6)

**Verdict:** accepted

Files reviewed: `TauCetiRoadmap/CombinatorialHeegaardFloer/README.md` (775 lines) and
`TauCetiRoadmap/CombinatorialHeegaardFloer/Suggested.lean` (99 lines), the whole folder, against
Mathlib `6b7abb3c` and Tau Ceti `a91d3aa` (the pins of the pull request's `lake-manifest.json`).
The pull request changes nothing outside this folder. The gate passes every check and the
dependency check reports no problem. The folder changed by 192 lines since the previous review, so
this is a full review: first the seven previous findings, then the whole roadmap. No P1 or P2
finding; two P3 notes (a miscomputed value inside a Check, and a locator that names a paper which
defers the definition it is cited for).

## Previous findings (head 5d30db1): repair status

- **R01 (P2, statable headline absent): repaired.** `Suggested.lean` lines 44–60 state
  `unblockedHomology_equiv_of_movesTo` in the form proposed (Alexander-degree-zero `K[X]`-linear
  equivalence under `hG.unblockedHomologyModule K`, over every `[CommRing K] [CharP K 2]`); it
  elaborates with one `sorry` warning. README G.5 (lines 262–276) names it as the headline and
  `tau_eq_of_movesTo` as its corollary; the module docstring (lines 21–24) lists the bigraded form
  and the link form over `𝔽[V₁,…,V_ℓ]` as not statable, with the missing carriers.
- **R02 (P3, torus-knot chirality): repaired.** Lines 666–674 now say the grids present the
  mirror images of the positive torus knots (`2τ = −pq` on `torusLink p q`) and that
  `τ(T_{3,4}) = 3` in the "τ bites" bullet is for the positive knot.
- **R03 (P3, "MOST §15.2"): repaired.** Line 309: "book §15.2, MOST Theorem 4.2, or Gallais";
  both exist (OSSBOOK line 147; MOST06 lines 1585–1587).
- **R04 (P3, `tau_stabilizeX` attribution): repaired.** Lines 177–191 place `tau_stabilizeX` in
  `Grid/Stabilization/Homology.lean`, add the two cyclic-permutation theorems, and describe the
  one treated placement correctly (new column and row immediately before the split column and its
  marking: the pin's `G.stabilizeX s.castSucc (G.X s).castSucc s`, Stabilization/Homology.lean
  lines 15–16 and 285–286); lines 270–276 list the remaining input accordingly.
- **R05 (P3, blow-up negative control): repaired.** Lines 653–665 relabel the zero-framed case
  "outside the source's domain" with the conclusion still holding, and add a genuine negative
  control (the singular two-`(−1)` graph with `H₀ ≅ 𝔽₂[U,U⁻¹]`); both verified below (rows 15–16).
- **R06 (P3, `ε ≠ −1` argument): repaired.** Lines 368–377 now state the general-`ε` weight
  `χ_k(x) + s(s−ε)/2`, that the covector shift adds `ms` (not a constant), and that the lattice
  translation by `mE_new` carries the weight to the old one minus `m(m−ε)/2` (verified, row 3).
- **R07 (P3, shape and process language): repaired.** The three process phrases are gone
  (lines 247, 288, 558); the Fechtner bullet appears once (line 733); L.1–L.3 each have a
  `*Needs:*` line and three Checks (lines 396–417, 434–453, 528–549).

## R01 (P3) — L.3 Check: the unsigned `∂∂` value is miscomputed

**Location.** README lines 540–541: "Without the sign `(−1)^(j−1)` the same sum is
`2U·(0,0) − 2·(1,1) ≠ 0` in `ℤ[U]`".

**Claim.** The value is wrong; the conclusion (nonzero over `ℤ[U]`, zero mod 2) is right.

**Witness.** With the README's own `∂` and the sign dropped, `∂(square) = (0,0;{v₂}) −
(1,0;{v₂}) + (0,0;{v₁}) − (0,1;{v₁})`; applying `∂` to the four edges (all exponents as in the
signed computation on lines 538–540) gives `[U(0,0) − (0,1)] − [(1,0) − (1,1)] + [U(0,0) − (1,0)]
− [(0,1) − (1,1)] = 2U·(0,0) − 2·(1,0) − 2·(0,1) + 2·(1,1)`. The terms `(1,0)` and `(0,1)` do not
cancel without the sign.

**Repair.** Write "the same sum is `2U·(0,0) − 2·(1,0) − 2·(0,1) + 2·(1,1) ≠ 0` in `ℤ[U]`".

## R02 (P3) — L.2 locator: Zemke (2.3) does not define `A_v`, `B_v`, `g`

**Location.** README line 436–437 (L.2 `*Needs:*`: "Zemke §2.3 and equation (2.3) (`A_v`,
`B_v`, `g`)"), line 420 ("In the source normalization"), and the References bullet (lines
724–726: "§2.3 (including equation (2.3)): … its characteristic-cube conventions").

**Claim.** Zemke's equation (2.3) writes the differential with exponents `a_v(K,E)`, `b_v(K,E)`
and says only that they are "certain nonnegative integers", deferring their definition to
Ozsváth–Stipsicz–Szabó (ZEM21 lines 400–408). The formulas the README states (`f_K(I)`,
`g = min f`, `A_v = g(K,E∖v)`, `B_v = min_{v∈I⊆E} f_K(I)`, exponents `A_v − g`, `B_v − g`) are
those of Ozsváth–Stipsicz–Szabó, *A spectral sequence on lattice homology*, arXiv:1206.1654,
§3 (v1 printed page 5: `f` at (3.2), `g`, `A_v`, `B_v`, `a_v`, `b_v` and the boundary (3.3);
OSS14A lines 197–238), which the README does not cite. The formulas themselves are correct
(row 11 below, and the identity `B_v = (K(v)+v·v)/2 + g(K+2v*,E∖v)` at OSS14A lines 220–224).

**Repair.** In the L.2 `*Needs:*` line cite "Ozsváth–Stipsicz–Szabó, *A spectral sequence on
lattice homology*, arXiv:1206.1654, §3 (`f`, `g`, `A_v`, `B_v`, equation (3.3)); Zemke §2.3 and
equation (2.3) for the completed `∏ 𝔽[[U]]` carrier", and add that paper to the References.

## Verified sound

**Gate, dependency check, build.** `gate.md` at this head: every check passed, `build=0 OK`.
Rerun of the gate scanners and dependency check on this head: `set_option=0 … depcheck=0 …
stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`. Dependency check as instructed:
`depcheck: 204 roadmaps, 1416 edges, 0 problem(s)`; no UPWARD or CYCLE line. `git diff --stat
origin/main...HEAD` outside the folder: empty. The shared lake directory sits at the branch pins
(mathlib `6b7abb3c`, Tau Ceti `a91d3aa`) and the five imported object files exist.

**Elaboration and signatures.** `lake env lean` on a scratch copy of `Suggested.lean` with one
`#check @` line per declaration: exactly four "declaration uses `sorry`" warnings and nothing else
(3 s). Elaborated types agree with the README: `unblockedHomology_equiv_of_movesTo` quantifies over
`{n m} {G G'} (hG : G.IsKnot) (h : G.MovesTo G') (K) [CommRing K] [CharP K 2]` and concludes
`∃ e, TauCeti.LinearMap.IsHomogeneous ↑e (hG.alexanderUnblockedHomologyGrading K).piece
(….alexanderUnblockedHomologyGrading K).piece 0`; `tau_eq_of_movesTo` as before; the two lattice
headlines take `P.IsNegativeDefinite`, `Odd ε`, every `q : ℕ` and conclude `Nonempty (… ≅ …)` in
`ModuleCat PlumbingCoefficient`. Every binder is explicit, so no section variable is dropped.

**Padding probe** (same scratch file, 16 variants). `unblockedHomology_equiv_of_movesTo`:
`simp` ("no progress"), `rfl` (fails), `infer_instance` (fails), `exact ⟨LinearEquiv.refl _ _, …⟩`
(type mismatch: the carriers are the homologies of two different grids). `tau_eq_of_movesTo`:
`simp` no progress, `rfl` fails, `infer_instance` fails. `latticeChainHomology_blowUpVertex` and
`…_blowUpEdge`: `simp` unsolved goals, `rfl` fails, `infer_instance` fails, `exact ⟨Iso.refl _⟩`
fails (different cube types). Nothing is padding.

**Alexander grading normalisation (the degree-zero claim).** The pinned grading is the
knot-normalised `A = (M_O − M_X)/2 − (n−1)/2` (`Grid/Grading/Parity.lean` line 18 and
`alexanderℤ` line 371; `Integer.lean` line 167), transported to `GH⁻` by
`alexanderUnblockedHomologyGrading` (`Homology/KnotAlexander.lean` lines 37–39), so the
stabilization isomorphism is of Alexander degree zero: the pin's own
`stabilizeXHomologyMap_mem_alexanderUnblockedHomologyGrading_piece` and `tau_stabilizeX`
(`Stabilization/Homology.lean` lines 283–293) use exactly this. `U` acts as each variable
(`Unblocked.lean` lines 302–338, `X_smul_unblockedHomology`), as the README says.

**Tau Ceti names at `a91d3aa` newly cited this round.** `tau_relabelRows_finRotate` /
`tau_relabelColumns_finRotate` (`Homology/CyclicPermutation.lean` lines 168/183);
`IsXStabilization` / `IsOStabilization` with four corner types each (`Stabilization/Basic.lean`
lines 607/563 and their docstrings); `Weight/Translation.lean` with
`characteristicWeight_add_two_mulVec_eq_sub` (`χ_{k+2Al}(x) = χ_k(x+l) − χ_k(l)`, lines 78–89);
`blowUpCharacteristic` lifts `(k, ε)` by `blowUpCovectorEquiv` (value `ε` at `none`, `k(w) − ε`
at `some v`: `BlowUp.lean` lines 358–362), so total transforms carry `k`, and the pinned
`two_mul_characteristicWeight_blowUpCharacteristic` gives `2χ_{k'}(φ(x,s)) = 2χ_k(x) + s(s−ε)`
(`Weight/BlowUp.lean` line 118): the README's `χ_k(x) + s(s−ε)/2`. `blowUpEdgeCovectorEquiv`
(`EdgeBlowUp.lean` lines 386–389) has the same law on both ends of the edge; no edge weight lemma
exists at the pin, and the formula is recomputed in row 4. The 40 names checked in the previous
review were re-grepped and still exist. Note (no finding): `stabilizeO_castSucc_eq_stabilizeX_succ`
(`Stabilization/Basic.lean` line 493) shows an `O`-stabilization with the new column just before
the split column is literally an `X`-stabilization with it just after; the README's count of
untreated placements follows the pin's own docstrings and remains accurate as a description.

**Mathlib names in the new `*Needs:*` lines at `6b7abb3c`.** `FreeAbelianGroup`
(`GroupTheory/FreeAbelianGroup.lean`), `LaurentPolynomial` (`Algebra/Polynomial/Laurent.lean`),
`Finset.sup'` (`Data/Finset/Lattice/Fold.lean` line 531), `Finset.min'`, `Finsupp`,
`Module.End`, `Polynomial (ZMod 2)`: all present.

**Cross-roadmap citations, resolved on main `fa41b37`.** HeegaardFloer §8.1–8.3 are R1–R3
(lines 3937/4004/4084) and its `*Needs:*` lines consume CombinatorialHeegaardFloer Lanes H, G, L,
ALG (lines 3096, 3304, 3514, 4082, 4091); its scope (line 26) and Downstream (line 4139) record
this roadmap as its supplier. This README cites HeegaardFloer only as downstream owner, never on
a `*Needs:*` line: direction consistent. GeometricTopology "Layer 4: knot theory, done properly
(owned here)" (line 409) matches Lane K. MorseTheory on main has M1–M6 and no Cerf theory
(grep "Cerf": none), consistent with Lane H building the pointed Cerf moves in its reconciliation
target. None of the three is in `ORDER.txt` (all on main); this roadmap is itself on main (this
pull request revises it), so its lane shape is inherited.

**Ownership against the 435 open pull requests (index 2026-10-31).** `roadmaps grep` for
"lattice homology", "grid homology", "Cromwell", "nice move", "Reidemeister.Singer",
"latticeChainHomology_blowUp", "unblockedHomology_equiv_of_movesTo", "tau_eq_of_movesTo": no
other owner. Hits are HeegaardFloer on main and its revision #1776 (consumers), GeometricTopology
on main and its revisions #271/#1517/#903 (Cromwell deferred to this roadmap at their line
512/525; #903 lists Reidemeister–Singer at line 12416 as a reference entry of a revision of an
existing roadmap, so it is not a supplier and plans nothing this roadmap consumes), TemperleyLieb
on main (mentions Cromwell moves, builds nothing).

**Sources (all read; ids are cache keys).** NEM07 = arXiv:0709.0841v1, ZEM21 = 2111.14962v4,
MOST06 = math/0610559v3, OSS09 = 0912.0830v3, OSS13 = 1301.0480v1 (fetched this round: title
"Combinatorial Heegaard Floer homology and sign assignments", lines 6–7), OSS14A = 1206.1654v1
(fetched this round), GAL07 = 0706.0089v3, SW06 = math/0607777v4, MOT09 = 0910.0078v4,
MO10 = 1011.1317v6, LOT10 = 1010.2550v4, MOS06 = math/0607691v2, OSSBOOK = the authors' copy of
*Grid Homology for Knots and Links*.

- Seeded sample "Combinatorial computability is not combinatorial definition-with-invariance":
  SW06 abstract (lines 9–11: an algorithm computing the hat version, defined holomorphically);
  MOT09 abstract (lines 7–11: combinatorial descriptions via surgery on a grid link); MO10 is
  279 pages (line 1; README "~280"), a surgery formula for HF; LOT10 abstract (lines 7–12:
  bordered bimodules computing HF̂); MOS06 abstract (lines 8–11: combinatorial description of
  knot Floer homology); MOST06 proves invariance over `𝔽₂` from Cromwell plus Propositions 3.2
  and 3.8 (lines 1572–1574) and signs in §4 (1575–1587). Book: Chapter 16 "The holomorphic
  theory", 16.4 "Equivalence of knot Floer homology with grid homology" (lines 154–158); B.4
  Cromwell (178), B.3 Reidemeister–Singer (177), B.5 normal forms (179); "falls short of showing
  that these bounds are sharp" (616); Theorem 5.3.1 (4427–4434: bigraded `F[U]`-module `GH⁻(G)`
  depends only on the oriented knot, via Cromwell, Proposition 5.1.7, Proposition 5.2.1);
  Definition 6.1.5 (4724). Supported as written.
- Némethi (Lane L, all new citations): Definition 3.1.4 with finiteness (a) and monotonicity (b),
  `F^q = Hom_ℤ(C_q, T⁺₀)`, grading `d − 2w(□)`, `δ_w` (lines 208–225); §3.2.1 `M^g(n)`,
  `w₀ = χ_k`, edge weight `max + M^{g_j}(|Δχ|)`, higher cubes max over segments, "(3.1.4)(a) is
  satisfied since the form is negative definite" (303–315); 3.2.2(a),(b) (316–320); 3.2.3 `m_k`
  (322–324); 3.3.1–3.3.2 `χ_{k'}(x−l) = χ_k(x) − χ_k(l)`, `(k+2l)² = k² − 8χ_k(l)`, `8m_k`
  (369–381); 3.4.1 blow-ups of valence ≤ 2 (411–413); Proposition 3.4.2 and proof: `k' = c(k)`,
  `χ_{k'}(z) = χ_k(π_*z) + a(a+1)/2`, projection a homotopy equivalence, intersection-point case
  (414–437); Remark 3.4.3(a) (439–446); Example 4.2.4: `K = −E`, segment `[0,E]` weight 1,
  `H^q = 0` for `q > 0`, `H⁰ = T⁺₀ ⊕ T₀(1)` (576–582).
- Zemke: Theorem 1.1 (lines 50–53); §2.3 `CF(G) = ∏ 𝔽[[U]] ⊗ ⟨[K,E]⟩`, equation (2.3), the
  exponents deferred to OSS14a (377–408; see R02). OSS14A §3: `f` (3.2), `g`, `A_v`, `B_v`,
  `a_v`, `b_v`, boundary (3.3) (lines 197–238).
- OSS09 Definitions 1.1–1.2, Theorem 1.3 (63–87); GAL07 abstract (spin extension, 10–14).

**Adversarial table.** Values computed on each side.

| # | Statement | Instances | Values (left / right) | Result | Change |
|---|---|---|---|---|---|
| 1 | `unblockedHomology_equiv_of_movesTo` | `G' = G`; `torusLink 1 2` vs `torusLink 2 1`; stabilization `n → n+1`; trivial ring; `K = 𝔽₂[t]` | identity is a degree-0 equivalence; both grids have `2τ = −2`, tower in top degree `−1` on each side (a degree-0 iso must match towers); `A` has the shift `−(n−1)/2` (Parity.lean 18), so the pin's `stabilizeXHomologyMap` is degree 0 (Stabilization/Homology.lean 283–293), an unnormalised `(M_O−M_X)/2` would shift by `1/2` and the statement would be false; trivial ring excluded (`CharP R 2` forces `2 ∣ 1`); the grid complex over `K` is the base change of the `𝔽₂` complex and the pinned `tau_stabilizeX` already holds over every char-2 ring | holds | none |
| 2 | `tau_eq_of_movesTo` | as row 1; negative: `torusLink 1 2` vs `torusLink 2 3` | `−1 = −1`; `0 = 0` on unknots; `−1 ≠ −3` with no `MovesTo` (sizes 5 and 7 and different knots), consistent | holds | none |
| 3 | `latticeChainHomology_blowUpVertex`, general odd `ε` | `oneVertexPlumbing (−1)`, `k = −1`, `ε ∈ {−1, 1, 3}`; the `ε − 2m` orbit | lift: `k'(φ(E_v)) = (k(E_v) − ε) + ε = k(E_v)`, `Q'(φx, E_new) = 1 − 1 = 0`, `Q'(φx) = Q(x)`, so `χ_{k'}(φ(x)+sE) = χ_k(x) + s(s−ε)/2`; `k'' = k' + 2Q'(mE)` has `k''(E) = ε − 2m`, `χ_{k''} − χ_{k'} = ms` on `φ(x,s)`; translation `y ↦ y + mE`: `χ_{k''}(y) = χ_{k'}(y+mE) − χ_{k'}(mE)`, `χ_{k'}(mE) = m(m−ε)/2`; `ε = 1, m = 1`: `s(s+1)/2 = (s+1)s/2`, constant `0`; `ε = 3` gives `s(s−3)/2 = −1` at `s = 1` (weight can drop, as the pin's `Weight/BlowUp.lean` lines 27–36 note) but the module is still the `ε = −1` one by translation (`m = 2`, constant `2(2−3)/2 = −1`) | holds | none |
| 4 | `latticeChainHomology_blowUpEdge` | `A₂` (`−2,−2`), `k = 0`, `ε = −1`, `q = 0,1,2,3` | lift (EdgeBlowUp.lean 386–389): `φ(E_u) = E'_u + E_new`, `φ(E_v) = E'_v + E_new`; `φ(E_u)² = (e_u−1) + 2 − 1 = e_u`, `φ(E_u)·φ(E_v) = 0 + 1 + 1 − 1 = 1`, `φ(E_u)·E_new = 0`: same weight law; `χ = x₁² − x₁x₂ + x₂²`, `S₀ = {0}`, `S₁` = two squares at `0` (7 vertices), contractible; blown-up `(−3,−1,−3)` chain retracts by projection; `H₀ = 𝔽₂[U]`, `H₁ = H₂ = 0` both; `q = 3`: `0 / 0` | holds | none |
| 5 | L.1 Check 1 (genus-one `(−1)`) | `K = −E`, `K(E) = Q(−E,E) = 1` | `χ_K(xE) = −(x − x²)/2 = x(x−1)/2`; `χ(0) = χ(E) = 0`; edge `max(0,0) + M¹(0) = 1`; sublevel sets: `S₀` two points, `S_n` (`n ≥ 1`) a segment; `H⁰ = T⁺₀ ⊕ T₀(1)`, `H^q = 0` (`q > 0`) = NEM07 582; spherical rule: edge weight `0`, `H⁰ = T⁺₀` | holds | none |
| 6 | L.1 Check 2 (genus-zero `(−1)`) | canonical `K(E) = −E² − 2 = −1` | `χ_K(xE) = x(x+1)/2`; `S₀ = [−E, 0]` with edge weight `0 + M⁰(0) = 0`; `S₁ = [−2E, E]`; every `S_n` a segment; `H⁰ = T⁺₀`, `H⁰_red = 0`, `m_K = 0` | holds | none |
| 7 | L.1 Check 3 (singular pair) | `Q = [[−1,1],[1,−1]]`, `K = (−1,−1)` | `det = 0`; `χ_K(a,b) = (a + b + (a−b)²)/2 = t(t+1)/2 + b`, `t = a − b`; values `(0,0) ↦ 0`, `(1,0) ↦ 1`, `(0,1) ↦ 1`, `(b,b) ↦ b` for every `b ∈ ℤ`: unbounded below, sublevel sets infinite, (3.1.4)(a) fails | holds | none |
| 8 | L.2 Check 1 (one vertex) | weight `w`, `K(v) = c`; `(w,c) = (−1,−1)`, `(−2, 0)`, `(−2, 2)` | `f(∅) = 0`, `f({v}) = (c+w)/2`; `A_v − g = max(0, −(c+w)/2)`, `B_v − g = max(0, (c+w)/2)`: `(1,0)`, `(1,0)`, `(0,0)`; min of the two is `0` in each case (OSS14A line 230) | holds | none |
| 9 | L.2 Check 2 (zero-framed, `K = 0`) | `[0,{v}]` | `v* = 0`, both faces `[0,∅]`, exponents `0`, cancel mod 2; `d = 0`, `H₀ = H₁ = 𝔽₂[U]`; native: `d(e_x) = v_x + v_{x+1}`, kernel `a_x = a_{x−1}` with finite support `⇒ 0`, so `H₁ = 0`, `H₀ = 𝔽₂[U]` | holds | none |
| 10 | L.2 Check 3 (dictionary on `(−1)`) | `K = k + 2Qx = −1 − 2x` | `f_K({v}) = (−1−2x−1)/2 = −1−x`; exponents `max(0, 1+x)`, `max(0, −1−x)`; native `χ(x+1) − χ(x) = x+1`, drops `max(0,x+1)`, `max(0,−(x+1))`; `K + 2v* = −1 − 2x − 2 = −1 − 2(x+1)` | holds | none |
| 11 | L.2 formulas vs the native weight | base vertex `x`, cube `E`, `K = k + 2Qx` | `χ_k(x + E_I) − χ_k(x) = χ_K(E_I) = −f_K(I)` (Lemma 3.3.2), so `w(cube) = χ_k(x) − g(K,E)`; face `[K, E∖v]`: exponent `A_v − g`; face at `x + E_v`: `χ_k(x+E_v) = χ_k(x) − f_K({v})`, exponent `g(K+2v*,E∖v) + f_K({v}) − g = B_v − g` using `f_K(I∪{v}) = f_{K+2v*}(I) + f_K({v})`; equals OSS14A lines 215–229 | holds | R02 (locator only) |
| 12 | L.3 Check 1 (`A₂`, `K = 0`, signed `∂∂`) | square at `(0,0)` | vertex weights `0,1,1,1`, edges `1`, cube `1`, exponents `0` on the 2-cube faces; `∂∂ = [U(0,0) − (0,1)] − [(1,0) − (1,1)] − [U(0,0) − (1,0)] + [(0,1) − (1,1)] = 0`; unsigned: `2U(0,0) − 2(1,0) − 2(0,1) + 2(1,1)`, not the README's `2U(0,0) − 2(1,1)`; both `≠ 0` over `ℤ[U]`, `0` mod 2 | signed holds; unsigned value misstated | R01 |
| 13 | L.3 Check 2 (genus-one, chain level) | `K(E) = 1` | edge weight `1`, vertex weights `0`: `∂(0,{v}) = U(0) − U(E)`; spherical rule exponents `0,0` | holds | none |
| 14 | L.3 Check 3 (zero-framed over `ℤ[U]`) | `K = 0` | `χ = 0`, `∂(x,{v}) = (x) − (x+1)`; `H₀ = ℤ[U]`, kernel `a_x = a_{x−1}` finite support `⇒ H₁ = 0` | holds | none |
| 15 | Acceptance: zero-framed vertex outside the domain | `k = 0`, `ε = −1`, both sides | `P`: weight `0`, `S_n = ℝ` for `n ≥ 0`: `H₀ = 𝔽₂[U]`, `H₁ = 0`; blow-up `(−1,−1)` with `k' = (1,−1)` (lift law), weight `s(s+1)/2`, `S₀` a zigzag line, `S_n` a band `|t| ≤ r`: contractible; `H₀ = 𝔽₂[U]`, `H₁ = H₂ = 0`; `k'` and the canonical `(−1,−1)` differ by `(2,0) ∉ 2Q(L) = {(2t,−2t)}`: different orbits, consistent with row 16 | holds | none |
| 16 | Acceptance: negative control `[[−1,1],[1,−1]]`, `k = (−1,−1)` | all `n ∈ ℤ` | `χ(a,b) = t(t+1)/2 + b`; `(n,n) ∈ S_n`; from `t ≥ 1` the step `(a−1,b)` lowers weight by `t`, from `t ≤ −1` the step `(a,b−1)` lowers by `|t|`, from `t = 0` the steps `(a−1,b)`, `(a−1,b−1)` keep then lower weight by `1`: every vertex joins `(n',n')`, so `S_n` connected; `H₀(S_n) = 𝔽₂` for every `n ∈ ℤ`, `U` the shift: `H₀ ≅ 𝔽₂[U,U⁻¹]`, `U` bijective, not `≅ 𝔽₂[U]` | holds | none |
| 17 | Blow-up acceptance, general `w < 0` | `oneVertexPlumbing w`, `ε = ±1` | `χ_k(x) = −(kx + wx²)/2` convex, sublevel intervals, `H₀ = 𝔽₂[U]`, `H₁ = 0`; blown-up chain `(w−1, −1)` has `det = −w > 0`; `χ_k(x) + s(s∓1)/2` sum of convex one-variable functions, projection retraction; `ε = 1` is the `s ↦ s+1` translate of `ε = −1` | holds | none |
| 18 | Native row = cellular chains of `S_n` | grading `−2(w(c)+j)` | degree `−2n` part spanned by `U^{n−w(c)}c`, `w(c) ≤ n`; `d(U^{n−w(c)}c) = Σ U^{n−w(face)} face`; `U` = inclusion `S_n ⊂ S_{n+1}` | holds | none |
| 19 | Correction-term identity (lines 594–595) | any `k`, `l` | `(k+2l)² = k² − 8χ_k(l)` (NEM07 376); `max (k'²+|V|)/4 = (k²+|V|)/4 − 2m_k` | holds | none |
| 20 | Seifert plumbing convention (675–684) | `r = 0`; one leg `c/1` | `e = −b`; `[[−b,1],[1,−c]]`, `det = bc − 1 > 0` iff `e = −b + 1/c < 0` | holds | none |
| 21 | Link Euler factors (G.9, lines 290–299) | unknot; 2-component unlink | `χ(GĤ(U)) = 1`; unlink `Δ = 0`, `GĤ = 𝔽²` in Maslov `0,−1`, `χ = 0`; factors as OSSBOOK Theorem 11.6.1 and MOST06 Theorem 6.1 (previous review) | holds | none |
| 22 | Grid size bound (line 133) | `n ≤ 5` | `5! = 120` | holds | none |

**Declared gaps.** None declared; none needed (every supplier citation resolves on main or at
the pins).

## Not verifiable

- none. (The book was read from the authors' copy on an author page; the AMS landing page itself
  is paywalled. Every other source is on arXiv.)

## Source issues

- **Misprint** in NEM07 at Proposition 3.3.4, printed page 8 (line 392): the displayed
  inequality subtracts `χ_{k_r}(−x_i)`; it should be `χ_{k_r}(−y_i)`, as the proof on the next
  line uses; affects nothing.
