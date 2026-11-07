# PKG-KloostermanSheavesAndBesselIsocrystals: package report

Deliverables: `packages/KloostermanSheavesAndBesselIsocrystals/README.md` (12 layers, 66 subsections),
`Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml` (24 entries), and the top-level
`gaps` list of `design/plan.json` (nothing else in that file changed; checked by a key-by-key JSON
comparison against the original).

Inputs used: `design/README.md`, `design/plan.json` (the accepted review is embedded in its `review`
field; there was no separate `review.json` and `reports/` was empty, so the non-blocking notes applied
are the review's notes and its 19 recorded source issues). Pins (from `lake-manifest.json`): Mathlib
`6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The
design's recorded baseline commits are older; every library claim was rechecked at these pins.

## Headline theorems

| Headline | Status | Lean name / what is missing |
| --- | --- | --- |
| Existence of the `H`-valued Bessel F-isocrystal `Be_H†` with the Heinloth–Ngô–Yun traces (XZ Thm 1.2.4(i), 4.4.4) | not statable | no category of overconvergent F-isocrystals on a curve, no `ℓ`-adic local systems, no Hecke eigensheaves on `Bun_G` at the pins |
| Geometric Satake for arithmetic `D`-modules (XZ Thm 1.3.6, 3.5.1, 3.6.7) | not statable | no arithmetic `D`-modules |
| Zhu's comparison `Kl^dR ≅ Be_H` and the relative de Rham–rigid comparison (XZ Thm 4.3.3, 4.2.1) | not statable | no `D`-modules on stacks, no opers, no relative rigid cohomology |
| Frenkel–Gross differential Galois groups; Bessel monodromy classification incl. `SO_{2n+1}`, `G₂` at `p = 2` (XZ Thm 1.2.7) | not statable | no differential Galois group of a `G`-connection, no Tannakian monodromy of F-isocrystals |
| Heinloth–Ngô–Yun functoriality and companion monodromy (XZ Thm 1.2.8, Cor 4.5.6) | not statable | no `ℓ`-adic local systems on `𝔾_m` |
| Generic ordinarity for every `H`; everywhere ordinarity on Newton points (XZ Thm 1.2.4(ii)) | not statable in Newton form | no Newton point of an `H`-valued Frobenius class |
| Everywhere ordinarity for types `B_n`, `D_{n+1}` (and `G₂`) on trace functions | **stated** | `orthogonalSum_ordinary` |
| Exponential-sum identity at `p = 2` (Carlitz at `n = 1`; XZ Cor 5.3.11(ii), corrected) | **stated** | `orthogonalSum_sub_card_eq_kloostermanSum` |
| Exponential-sum identity at odd `p` (XZ §1.2.9(i), Cor 5.3.11) | **stated** | `gaussSum_mul_orthogonalSum_sub_card` |
| Orthogonal convolution identity, every `p` (XZ (1.2.9.2), corrected) | **stated** | `orthogonalSum_sub_card_eq_convolution` |
| Signed 2-adic Dwork congruences (XZ Thm A.5(i′)) | **stated** | `signed_dwork_congruence` |
| Characteristic-two isomorphism `Be†_{2n+1} ≅ Be†_{SO_{2n+1},Std}` (XZ Prop A.1) | not statable | no F-isocrystals; its trace consequence is stated |
| Adjoint rigidity and simple-wild local parameter (XZ Cor 4.5.7) | not statable | no rigid cohomology with coefficients, no `H`-valued local Weil parameters |

Definitions in `Suggested.lean`, each only to make a headline statable: `dworkBlock`, `kloostermanSum`,
`orthogonalSum`, `quadraticCharIn`, `quadraticHypergeometricSum`, `traceChar`. `kloostermanSum` is the
same sum as CongruenceSpectralGap §4.2a `hyperKloosterman` (restated because a roadmap module cannot be
imported; the fully qualified names differ).

## What the README could not support, and how the design's open items were settled

The design ended with twelve open gaps (G1–G12) and fifteen supplier requests. A roadmap is definite about
scope, so each was resolved:

- **G1 (relative integral Hecke geometry)** → supplier gap `relative-level-geometry` on
  GlobalShtukasAndFunctionFieldLanglands (§§0.1, 1.1–1.2 over a noetherian base); the specific level
  models are owned in §0.4.
- **G2 (coefficient operations, smooth Satake eigenvalues)** → split: arithmetic `D`-module operations,
  weights, nearby cycles, trace formula and `ℓ`-independence are supplier gap
  `arithmetic-d-module-operations` on PadicDifferentialEquationsAndRigidCohomology (no roadmap owns
  arithmetic `D`-modules; RD is the natural owner). ULA and hyperbolic localization for arithmetic
  `D`-modules (XZ §§2.8, 2.10) and the geometric Satake equivalence for arithmetic and for
  characteristic-zero holonomic `D`-modules (XZ §3; Beilinson–Drinfeld §5.3) are owned here (§§1.2–1.3):
  no roadmap on main, in an open PR or in the board designs owns them, and XZ is their primary source.
  Algebraic holonomic `D`-modules come from SpringerResolutionAndCharacteristicCycles Layer H.
- **G3 (oper localization, central descent)** → opers from FormalConnectionsOpers F4/F6, the critical
  center from AffineLieAlgebras A7–A8; the level-structure localization theorem (Zhu Thm 8/Cor 9) and the
  central descent are owned here (§§2.4, 2.6), as no roadmap owns them.
- **G4 (quasi-minuscule middle image)** → owned target §3.3 (it replaces the affineness step of XZ
  Lemma 4.2.6(i); it is a new statement without a published proof and is the riskiest owned target).
- **G5 (gauge vs column convention)** → owned target §4.5 with three derived statements (transpose
  solves the printed equation with `A^t`; `A^t` is the dual representation at `(−1)^h x` after
  conjugation by `(2ρ)(√−1)`; the printed product is the transpose of the reversed column product).
  All theorems are stated in the column convention, so nothing depends on it.
- **G6 (slope comparison, exact radius)** → Baldassarri's comparison is supplier gap
  `formal-slope-comparison` on RD; the exact-radius statement is Bessel-specific and owned (§7.3).
- **G7 (monodromy and Lie theory)** → Tannakian reconstruction from MotivesAndAlgebraicCycles Layer 6 and
  §§RD.6.64–RD.6.65; D'Addezio's comparison is supplier gap `companion-monodromy` on RD; the principal
  `SL₂` classification, Kostant decomposition, centralizers and class-preserving automorphisms are
  supplier gap `principal-sl2-subgroups` on ReductiveGroups (Layer 7); Gross–Reeder's simple wild
  parameters are owned (§6.5).
- **G8 (automorphic Newton bound)** → supplier gap `cuspidal-newton-bound` on
  GlobalShtukasAndFunctionFieldLanglands (V. Lafforgue 2011, Prop. 2.1, read); cuspidality of the
  eigenfunction is HNY Lemma 2.1/Remark 2.2 (read); Newton semicontinuity is §RD.3.43.
- **G9 (Landau–Ginzburg and boundary count)** → owned (§§8.4–8.5) with Lam–Templier Thm 1.8 and
  Pech–Rietsch–Williams §3.3 (both read); the corrected boundary constant was verified by direct
  evaluation of the chart sum (table below).
- **G10 (global slope filtration, minimal slope)** → supplied: dense-open slope filtration §RD.3.45 and
  the minimal-slope reconstruction PadicDifferentialEquationsAndRigidCohomologyPartII MS.4 (Tsuzuki
  Thm 1.3, read); the Bessel-specific bridge is §10.5.
- **G11 (generic hypergeometric)** → owned §9.1 (Miyatani, read); the zero spectrum is cited through
  XZ §5.2.3 to Katz (uncertified, book and journal not openly available).
- **G12 (scalar and toric ordinarity)** → scalar all-prime ordinarity is supplier gap
  `scalar-kloosterman-ordinarity` on KloostermanMomentsAndPotentialAutomorphy (Sperber 1980 Thm (2.35)
  read: it needs `p > n + 3`; the general case is Wan 1993, uncertified); the toric slopes are owned
  (§11.2) with Adolphson–Sperber and Wan uncertified.

Seven supplier gaps are declared in `plan.json` and stated in the supplier contracts as
`What <Supplier> must provide (gap:<slug>)`: `relative-level-geometry`, `cuspidal-newton-bound`
(GlobalShtukasAndFunctionFieldLanglands); `arithmetic-d-module-operations`, `formal-slope-comparison`,
`companion-monodromy` (PadicDifferentialEquationsAndRigidCohomology); `principal-sl2-subgroups`
(ReductiveGroups); `scalar-kloosterman-ordinarity` (KloostermanMomentsAndPotentialAutomorphy).

Notions moved down from later roadmaps: none. The owned additions above are owned here because no
roadmap on main, in the open pull requests (searched with `roadmaps grep` over all 354 heads) or in the
board's design packages owns them.

## Duplication removals and citation repairs

- The design's target "rank-one sign dictionary" duplicated PadicDifferentialEquationsAndRigidCohomology
  §RD.6.48 (with §§RD.1.46, RD.6.42, RD.6.47): deleted as a target; its specialization and witness are in
  the conventions.
- `FiniteFieldsAndCharacterSums` FF.1 (Gauss-sum absolute value, Hasse–Davenport lifting) does not exist
  anywhere: replaced by Mathlib `gaussSum_mul_gaussSum_eq_card` and the owned §0.2 (Hasse–Davenport is not
  in Mathlib, Tau Ceti or any roadmap; ClassicalArithmeticCompletion §7.29 is the product relation, not the
  lifting relation).
- Raw scalar Kloosterman sums: cited to their actual owner CongruenceSpectralGap §4.2a; the `ℓ`-adic
  Kloosterman and Artin–Schreier sheaves to §4.2b.
- The design's use of KM.4 (rigid realization) for the classical scalar comparison: KM.4 concerns moment
  motives; §8.1 now compares through KM.1 companions and §RD.6.95 (with `π ↦ −π`).
- Kept variants that specialize supplier constructions, each saying how it differs: §6.1 (§§RD.6.64–6.65 to
  the image of `Rep(H)`), §4.2 (§RD.5.103 to the Bessel residue), §5.1 (BunGAndNewtonStrata §1.5 to Frobenius
  classes).
- Stale identifiers replaced by the actual sections: `GS.0`/`GS.1` → GlobalShtukasAndFunctionFieldLanglands
  §§0.1, 0.14, 1.1–1.9, 1.12; `RD.k/<slug>` → §RD numbers (e.g. specialization maps §RD.4.58, the square
  §RD.4.59, Taylor comparison §§RD.0.37/RD.1.44, GOS §RD.6.55, Tannakian generation §RD.6.65); `BG1` →
  BunGAndNewtonStrata §§1.5, 1.22; `MC.6/neutral-tannaka-reconstruction` → MotivesAndAlgebraicCycles Layer 6;
  Moy–Prasad level groups → ReductiveGroupsPartII RG2.3.6 (the design used ReductiveGroups Layer 9 only).
- LocalGaloisGroups was listed by the design as a supplier but nothing consumes it: dropped.

## Corrections relative to the design and sources

- Identity (i) (`p = 2`) holds only for characters of the form `ψ₀ ∘ Tr`; for `x ↦ ψ₀(Tr(cx))`, `c ≠ 1`, it
  becomes `U_n(a) − q = R_{2n+1}(a/c)` (checked over `𝔽₄`). The Lean statement uses `traceChar`;
  (ii) and (iii) hold for every nontrivial character (checked over `𝔽₉` and `𝔽₄` for all `c`).
- The Gauss sum in (ii) is `Σ ρ(y) ψ(−y)` (`gaussSum ρ ψ⁻¹`); `Σ ρ(y) ψ(y)` fails over `𝔽₃`, `𝔽₇`.
- XZ (1.2.9.1) at `p = 2` prints a factor `−1/√q`; (1.2.9.2) prints `−(1/√q)(U_n − q^{n−1})`; both fail over
  `𝔽₂` (design E10, confirmed numerically).
- The Hasse–Davenport check of the trivial character was wrong in my first draft; the relation holds for
  every `χ` with Mathlib's convention, and the target is stated for all `χ`.
- Sperber's theorem needs `p > n + 3`; the supplier gap cites Wan for the general case.
- A DOI for Baldassarri resolved to an unrelated paper; the entry is recorded by citation, uncertified.
- XZ §5.2.3 prints the zero spectrum endpoint `q^{2n}α` for every rank; corrected to `αq^j`, `j < n` (E12).

## Adversarial pass

Computations by exact enumeration over small fields (complex arithmetic, tolerance `10⁻⁶`, values are
algebraic integers), exact rational 2-adic valuations, and matrix arithmetic, all in the scratch area.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §11.1(i) `U_n − q = R_{2n+1}`, `ψ = ψ₀∘Tr` | `𝔽₂` (n=1,2,3), `𝔽₄` (n=1,2,3), `𝔽₈` (n=1,2), all `a` | 26 cases equal; e.g. `𝔽₂`: `1 − 2 = −1 = R_{2n+1}(1)` | holds | none |
| §11.1(i) for `ψ₀(Tr(c·))`, `c ≠ 1` | `𝔽₄`, `c = ω, ω²` | identity fails for some `a` | false without trace form | Lean uses `traceChar`; Check added |
| §11.1(ii) `g(U_n − q) = H_{2n+1}(4a)` | `𝔽₃` (n=1,2,3), `𝔽₉` (n=1,2), `𝔽₅`, `𝔽₇` (n=1,2), all `a`; all 8 `c ∈ 𝔽₉^×` | equal with `g = Σρ(y)ψ(−y)`; with `Σρ(y)ψ(y)` fails at `𝔽₃`, `𝔽₇` | holds | Gauss-sum sign fixed in Lean |
| §11.1(iii) convolution | `𝔽₂,𝔽₄,𝔽₈,𝔽₃,𝔽₉,𝔽₅,𝔽₇`, `N = 2,3`; all `c` on `𝔽₉`, `𝔽₄` | 41 cases equal | holds for every nontrivial `ψ` | none |
| XZ (1.2.9.2) printed form | `𝔽₂`, `n = 2`, `a = 1` | LHS `−1`, printed RHS `1/√2` | printed form false | recorded as Check |
| §8.5 boundary count `Σ_{Q°} ψ(W) = S_n + Q^{n−1} − Q` | n=3: `𝔽₂` (a=1), `𝔽₄` (3 values of a), `𝔽₃` (2); n=4: `𝔽₂`, `𝔽₃` (2) | chart sums `3; 5,37,5; 13,4; 7; 13,40` = formula; printed constant gives `7`→`5`, `13`→`7`, `40`→`34` at n=4 | corrected constant holds, printed fails at n=4 | Check added |
| §8.2 orthogonal matrices | `SO₆, SO₈` (n=3,4), `SO₃, SO₅, SO₇` (n=1,2,3) | `X^tJ + JX = 0` for `N, E`; `(N+…E)(e_n−e_{n+1}) = 0` | hold | none |
| §8.2 odd solution coefficients | general `r` | `r^{2n+1}a_r = 2λ^{2n}(2r−1)a_{r−1}` ⇒ `(2r−1)!!(2λ^{2n})^r/(r!)^{2n+1}`; at `λ = 2`, `p = 2` gives XZ's `G` | holds | none |
| §10.2 signed congruence (Lean `signed_dwork_congruence`) | alternating pair of §10.4, n=1,2; s ≤ 3, m ≤ 2, all coefficients up to `2(m+1)2^{s+1}+5` | (b) and (c′) hold with `u(1,1,m) = (−1)^m`; ordinary (c) fails in 6 cases; conclusion holds with 2-adic excess ≥ 2 | holds on instances | none |
| §10.1 sign witness | `B(j) = (−2)^{3j}/(j!)³` | `B(4)/B(2) = 1/27`; `v₂(1/27 − 1) = 1`, `v₂(1/27 + 1) = 2` | (c) fails, (c′) holds with `u = −1` | none |
| §10.3 geometric series | `F = 1/(1−x)` | `f′/f + p x^{p−1}η(x^p) = η` symbolically; `f_{F,4} = (1+x)(1+x²)` | holds | none |
| §10.5 quotient multiplier | `c = q^n/f_{F,q}` | `c′/c = q x^{q−1}η(x^q) − η(x)`; `h f_G = F/G(x^q) = f_F h(x^q)` | holds | none |
| §10.6 trace witness | `𝔽₂`, `a = 1`, all `n` | `T_{2n+1} = −1/2^n = (U_n(1) − 2)/2^n` | consistent | none |
| §0.2 Hasse–Davenport | `𝔽₃→𝔽₉`, `𝔽₅→𝔽₂₅`, `𝔽₇→𝔽₄₉`, trivial `χ` over `𝔽₄` | `i√3 → 3`, `√5 → −5`, `i√7 → 7`; trivial: `−1` both sides | holds; first-draft trivial-character check was wrong | Check rewritten, statement for all `χ` |
| §0.1 normalization | `q = 2, 3`, `a = 1` | `R₂ = 1` (`𝔽₂`), `−1` (`𝔽₃`); normalized `−1/√2`, `1/√3` | `√3 ∉ ℚ₃(μ₃)` needed | none |
| §0.1 half twist | `q = 4`, `d = 2` | `c_4^{−2} = 1/4`, square `1/16 = q^{−2}` | consistent | none |
| §0.3 `GL₂/𝔽₂` kernel | `diag(1+y, 1)` | det `1 + y`; dets of scalar·commutator are squares `1 + w²y²` | Moy–Prasad ≠ commutator kernel | none |
| §4.3 residue relation | `SL₂`, `C₀ = diag(t^{−1}, t)`, `t² = q` | `NC₀` and `qC₀N` both have entry `t` | holds; inverse satisfies the opposite relation | none |
| §4.4 rank one | `A = −a` | `δC = (1−q)aC` ⇒ `C = x^{−(q−1)a}` | agrees with §RD.6.48 | none |
| §4.5 transposition | general | `δC^t + C^tA^t = qA^t(x^q)C^t`; `Ad((2ρ)(√−1))(−N − λ^h xE) = N + (−1)^h λ^h xE` | derived | statement limited to these derivations |
| Rank-one dictionary | `ε = ±1` | `θ′/θ = π(1 − pt^{p−1})` for `d − πdt`; `d + πdt` defect `2π` | consistent with §RD.6.48 | none |
| §6.3 principal decomposition | `SL₃`, `G₂` | `3 + 5 = 8`; printed shift gives `5 + 7 = 12`; `14/6 < 3` | `Sym^{2e_i}` correct | none |
| §6.6 Euler characteristic | `SL₂` adjoint | `h¹ = 1 − 1 − 0 = 0`; `I₀` twice gives `−1` | corrected formula | none |
| §6.5 Gross–Reeder | `SL₂`, `p` odd; `SO₃`, `p = 2` | `D₁ ⊂ μ_p` of order `p`, breaks `0, 1/2`; `p | |W|` at `p = 2` | hypothesis `p ∤ |W|` kept | none |
| §8.3 invariant line | `𝔽₂`, n=3 | `T_{SO₈} = 7/8`, `T_{SO₇} = −1/8 = R₇(1)/8` | difference `1` | none |
| §8.1 character inversion | `𝔽₃`, ranks 2, 3 | `R₂(1) = −1`, `R₂(−1) = 2`; `R₃(1) = −1/2 − (3√3/2)i`, `R₃(−1)` its conjugate | `ψ ↦ ψ^{−1}` is `a ↦ (−1)^r a` | Check rewritten |
| Carlitz identity source | Carlitz (4), p. 35 | `S₁(a)² = q + S₂(a)` = `R₂² − q = R₃` | matches (i) at n=1 | none |
| §11.2 toric slopes | `n = 1, p = 3, d = 2` | degree 6, slopes `0, 1/2, …, 5/2`; quotient slopes `1/2, …, 2n+1/2`, normalized `−n…n` | consistent with §9.2, §11.3 | none |
| §11.3 / `orthogonalSum_ordinary` at n=1 | `p` odd; `p = 2` | `Sym²`: slopes `0,1,2`; `Kl₃`: `0,1,2` | consistent | none |
| Lean context (all declarations) | `#check @name` for all 11 | every binder present (`[DecidableEq F]` in the convolution theorem, `CharZero K`, `IsAdicComplete`, `¬IsUnit 2`, `Fact p.Prime`) | matches README | added `[DecidableEq F]`; defs use `classical` |
| Degenerate `n`, `N` in Lean | `n = 0` in `orthogonalSum` | `2n − 2` truncates; theorems carry `1 ≤ n`, `2 ≤ N` | junk excluded by hypotheses | none |
| Trivial characters | `ψ₀ = 1` | identities false (e.g. `𝔽₂`, `U₁ − 2 = −1` vs `R₃ = 1`) | `ψ₀ ≠ 1`, `ψ ≠ 1` hypotheses kept | none |

## Formatting repair

Two inline code spans in the README were broken across a line break (the definition of `U_n(a)` in
"The orthogonal sums", and the symmetry statement in §7.2, item (ii)). Outside a single line their
subscripts read as LaTeX. Each span now sits on one line, with the mathematics unchanged. A scan of
the README with fenced blocks and inline code spans removed finds no unbalanced backtick, no `_{`,
`^{`, `$` or backslash command, and no bare `x_y` subscript. After the repair, Suggested.lean
re-elaborates with the same 5 `sorry` warnings and nothing else, and the dependency check below still
reports 0 problems.

## Elaboration

`lake env lean packages/KloostermanSheavesAndBesselIsocrystals/Suggested.lean` (run from the content
checkout): no errors; exactly **5** warnings, all `declaration uses 'sorry'` (lines 62, 127, 139, 150,
163). No `TauCeti.*` import is used. A scratch file with `#check @name` for all eleven declarations was
elaborated once and each elaborated type compared with its README statement; the only change was adding
`[DecidableEq F]` to `orthogonalSum_sub_card_eq_convolution` and `classical` inside the sum definitions
(the first elaboration failed on `Fintype Fˣ`).

## Dependency check

```
$ tauceti-roadmap --conf <conf> gate --depcheck packages/KloostermanSheavesAndBesselIsocrystals/README.md --name KloostermanSheavesAndBesselIsocrystals --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 652 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `roadmaps resolve` on the README reports no cross-roadmap citation and
no Lean name found nowhere.

## Ownership and citations

Ownership was checked against main, all 354 open roadmap pull requests (via `roadmaps grep`/`show`) and the
board's design packages. Suppliers cited at their current state: on main ReductiveGroups,
OrthogonalSpinGroups, AffineLieAlgebras, EtaleCohomologyFoundations; at open-PR heads
PadicDifferentialEquationsAndRigidCohomology (#1002), GlobalShtukasAndFunctionFieldLanglands (#1490),
BunGAndNewtonStrata (#1241), MotivesAndAlgebraicCycles (#1313), ReductiveGroupsPartII (#785),
CongruenceSpectralGap (#1504), DeligneWeightsAndPurity (#929), FormalConnectionsOpers (#1056, another
author's new roadmap folder); as board designs (earlier in the merge order, no PR yet)
KloostermanMomentsAndPotentialAutomorphy, PadicDifferentialEquationsAndRigidCohomologyPartII,
SpringerResolutionAndCharacteristicCycles. GlobalShtukasAndFunctionFieldLanglandsPartII (a design earlier
in the order) lists this roadmap as a supplier; this roadmap does not consume it, so there is no cycle on
this side.

## Sources

Read through the sources service (certified): XZ, HNY, FG, Zhu, BD, Miy, GR, LT, PRW, Carlitz, Dwork 1969,
Sperber 1980, V. Lafforgue 2011, D'Addezio, Tsuzuki, Abe, Abe–Caro. Recorded as uncertified (paywalled or
not openly available, cited by locator): Adolphson–Sperber 1989, Wan 1993, Wan 2004, Baldassarri 1982,
Davenport–Hasse 1935, Katz ESDE, Katz "From Clausen to Carlitz". An erroneous first fetch for Lam–Templier
(wrong arXiv number) was removed from the manifest and refetched. No text is missing, so no
`needs-references.toml` is left. No fetched or read text contained instructions.
