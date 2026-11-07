# Package repair report, round 2

The edited file is `packages/EndoscopicTransferAndUnitaryTraceComparisonPartII/README.md` (five sentences). `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged: no finding touches a Lean statement, a source entry or a supplier gap. All five findings of `REV-PKG-EndoscopicTransferAndUnitaryTraceComparisonPartII` were verified against the sources, the pinned libraries and the cited roadmap heads; all five hold. Four are applied as asked, one (F01) differently.

## F01 (P3) — applied differently

"The pin is 6b7abb3c…. Consume `Matrix.conjTranspose` …" and "The pin is a91d3aaf…. Consume `TauCeti.map_normUnits_unitFiltration` …" → "At the pinned Mathlib, consume …" and "At the pinned Tau Ceti, consume …". No hash is written.

Why differently: the review's exact repair inserts f6090c70 and 358314d4, but the content checkout's `lake-manifest.json` moved again on 2026-11-05 (its last commit) and now pins mathlib 1b1ccf4b088b32fa3f23f2de1127433254a81e1e and TauCeti 2fd255d997f47c0b5d834ee416c7015d55444ce5; the checked-out packages are at those revisions (`rev-parse HEAD` of each). The review's hashes would be wrong on arrival, so the alternative it offers ("at the pinned …", as roadmaps on main do) is taken. Every declaration both contracts name was re-verified at the current pins: `Matrix.conjTranspose` (ConjTranspose.lean line 43), `Matrix.IsHermitian` (Hermitian.lean 45), `isHermitian_mul_conjTranspose_self` (286), `isHermitian_conjTranspose_mul_self` (290), `Matrix.charpoly` (Charpoly/Basic.lean 140), `charpoly_mul_comm` (279, square matrices), `MvPolynomial.hsymm` (Symmetric/Defs.lean 312), `MvPolynomial.bind₁` (Monad.lean 67), `HasStrictFDerivAt.implicitFunction` (Implicit.lean 159); `map_normUnits_unitFiltration` (Norm/Unramified/Basic.lean 126), `mem_normGroup_iff_dvd_normalizedValuation` (158); `HeckeRing/GLn/PolynomialRing/Basic.lean` exists. Nothing else in the two contracts changes. `design/plan.json` keeps its design-time baseline, as the review says.

## F02 (P3) — applied

§0.7 "the integral over the coset space (U(W₁)×U(W₂))/H_X of f(h₁⁻¹Xh₂)" → "the integral over the coset space H_X∖(U(W₁)×U(W₂)) of f(h₁⁻¹Xh₂), which is invariant under left translation by H_X since (t₁,t₂)∈H_X means t₁⁻¹Xt₂=X".

Evidence: §0.1 fixes the action (g₁,g₂)·X=g₁Xg₂⁻¹, so (t₁,t₂)∈H_X iff t₁Xt₂⁻¹=X iff t₁⁻¹Xt₂=X, and (t₁h₁)⁻¹X(t₂h₂)=h₁⁻¹(t₁⁻¹Xt₂)h₂=h₁⁻¹Xh₂: the integrand descends to the left quotient. The review's witness recomputed: rank two, X=diag(1,π), h₁=1, h₂=[[0,1],[1,0]], Y=h₁⁻¹Xh₂=[[0,1],[π,0]], t=diag(u,1)∈U(1)² with u≠1: (h₁t)⁻¹X(h₂t)=t⁻¹Yt=[[0,u⁻¹],[πu,0]]≠Y, so the integrand is not constant on right cosets. Leslie25 line 613–616 (equation (2.3), p. 15) integrates over H_δ\U(W₁)×U(W₂). Pattern search: the only definition of RO is §0.7; §§0.9, 1.3 and 1.5 use RO as defined and name no side; the API bullet "Replacing X by g₁Xg₂⁻¹ … leaves RO unchanged" and the three measure-scaling Checks are side-independent (rank one is abelian) and their values 1, 1/2, 3/2 are unchanged.

## F03 (P3) — applied

Downstream consumers: "GanGrossPrasadUnitaryGroups consumes the local relative comparison through its own supplier contracts …" → "No other roadmap names this roadmap as a supplier. The local Jacquet–Rallis contracts that GanGrossPrasadUnitaryGroups declares on EndoscopicTransferAndUnitaryTraceComparison … ask for objects that gap:jr-local-comparison here also requires of that roadmap, so one supplier serves both; the global geometric and archimedean relative comparisons … do not follow from the lattice theorem. The local results here … are available to a roadmap on unitary Friedberg–Jacquet periods."

Evidence: `roadmaps grep --fixed 'EndoscopicTransferAndUnitaryTraceComparisonPartII'` matches nothing on main or at any open head. GanGrossPrasadUnitaryGroups at its open head declares gap:relative-geometric-comparison, gap:relative-finite-transfer, gap:relative-archimedean-transfer, gap:relative-fundamental-lemma and gap:relative-character-comparison (its README lines 152–160) on EndoscopicTransferAndUnitaryTraceComparison, all for G′ against the unitary groups U_h, the Jacquet–Rallis setting; it never names this roadmap. The sentence "in an open pull request" that the review proposes is omitted as process wording; the content is the same.

## F04 (P3) — applied

Tau Ceti contract: "a unit of the bottom field is a norm exactly when the inertia degree divides its normalized valuation" → "a nonzero element of the bottom field is a norm exactly when …".

Evidence: `mem_normGroup_iff_dvd_normalizedValuation` at the current pin (Norm/Unramified/Basic.lean line 158) is stated for `{x : Kˣ}`, every nonzero element, with `normalizedValuation K x`; on valuation units it would be vacuous. Witness: x=π, inertia degree 2, valuation 1: 2∤1, not a norm, which is what the §0.5 Check "−π has no lift" uses. The sentence after it ("At i=0 the first gives N(O_E^×)=O_F^×") is about the first lemma and is unchanged; §4.1 uses that lemma, not this one, for the unit c.

## F05 (P3) — applied

Conventions: "rank zero enters only as GL_0=U_0={1} at n=1 in the adjacent-rank comparison" → "rank zero enters as GL_0=U_0={1} at n=1 in the adjacent-rank comparison and as the one-point spaces X_0 and Herm(V_0) of §§2.1 and 4.7".

Evidence: §2.1 (README line 411) defines X_0 as one point with H(X_0)=ℂe_0 and has a Check for it; §4.7 (line 722 and the Checks at 734, 743) states Φ_0=Φ_0,0=e_0 with self-density 1 and overlattice count 1; the hermitian-field-classification gap's first Check and E16 also use rank zero. The three rank-zero Checks now agree with the Conventions.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed on each side | Result / change |
|---|---|---|---|
| §0.7 left-coset invariance | rank two, X=diag(1,π), h=(1,w), t=(diag(u,1),diag(u,1)) | left: (th)⁻¹X(th)… for (t₁,t₂)∈H_X gives h₁⁻¹Xh₂ on both representatives; right: t⁻¹Yt=[[0,u⁻¹],[πu,0]]≠Y=[[0,1],[π,0]] | left quotient; F02 applied |
| §0.7 stabilizer condition | (t₁,t₂)=(t,X⁻¹tX), §0.5 inverse map | t₁Xt₂⁻¹=tX(X⁻¹t⁻¹X)=X; t₁⁻¹Xt₂=t⁻¹X X⁻¹tX=X | both forms agree with §0.5 |
| §0.7 Checks | rank one, unit X, f=1_O_E; measures (1,1,2), (2,3,4) | 1; 1/2; 6/4=3/2 (abelian, side irrelevant) | unchanged |
| Tau Ceti norm criterion | x=π (v=1), x=π² (v=2), x=u unit (v=0), f=2 | 2∤1 not a norm; 2∣2 norm (π²=N(π)); 2∣0 norm, agreeing with N(O_E^×)=O_F^× | F04 applied |
| Conventions, rank zero | n=0 in §2.1; n=0 in §4.7; n=1 adjacent-rank | X_0 one point, det(∅)=1, basis {e_0}; Φ_0=e_0, self-density 1, one overlattice; GL_0=U_0={1}, contraction without volume factor | F05 applied |
| Supplier contracts | all eleven named declarations | file:line at mathlib 1b1ccf4b and TauCeti 2fd255d9 as listed under F01 | F01 applied differently |
| Downstream consumers | grep of the roadmap name over main and all open heads | no match; GanGrossPrasad relative gaps are on the base roadmap, G′ against U_h | F03 applied |

## Checks

- Elaboration: `lake env lean` on `Suggested.lean` from the content checkout, exit 0, no output. The file declares nothing (its docstring records the five headlines and the carriers each lacks), so the `#check @name` binder comparison has nothing to run on; nothing changed.
- Dependency gate (`gate --depcheck … --movable`): `depcheck: 241 roadmaps, 2427 edges, 0 problem(s)`. No UPWARD, CYCLE or `moved:` line.
- Gate failures listed in the brief: `latex=1` on §0.7 (packages/EndoscopicTransferAndUnitaryTraceComparisonPartII/README.md). The coset space was written with an ASCII backslash immediately before the opening parenthesis, which the LaTeX detector reads as an inline-math opening delimiter. Repaired by writing the left coset space with the Unicode set-minus sign, `H_X∖(U(W₁)×U(W₂))`; the mathematics is unchanged. The same pattern was searched for in the README, Suggested.lean and this report: the only other occurrence was this report's quotation of the edit, repaired the same way.
- `roadmaps resolve` lead `IntegralHermitianLattice.ofCarrier`: a declaration of GeometryOfNumbersAndQuadraticArithmetic §2.7 at its open head, not a library name; no change.
- Greps after editing: no LaTeX delimiters, no pull-request wording, no machine path, no 40-hex hash in the README.

## For the maintainer

- The content manifest moved on 2026-11-05 to mathlib 1b1ccf4b / TauCeti 2fd255d9, after the review was written against f6090c70 / 358314d4. The README now names no hash; every declaration it consumes exists at the current pins at the lines listed under F01.
- No Lean name changed (the file declares none), no supplier gap changed, and no section was renumbered; nothing another roadmap cites is affected.
- Ownership against open pull requests was checked only through `roadmaps grep` and the sibling heads the brief lists; pull requests that revise existing roadmaps were not read.
- No source was fetched and no `needs-references.toml` was written: all five manifest entries are cached and certified and no finding needed a new text.
