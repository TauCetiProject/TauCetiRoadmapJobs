# PORT-SheafConvolutionOnAbelianVarieties

Branch `roadmap/sheaf-convolution-on-abelian-varieties`, created from main at a0ad405; head commit
b38940e8 (`SheafConvolutionOnAbelianVarieties: roadmap (README, Suggested.lean, metadata)`), the only
commit on the branch, touching only `TauCetiRoadmap/SheafConvolutionOnAbelianVarieties/{README.md,
Suggested.lean, metadata.toml}`.

## Build

`lake build TauCetiRoadmap.SheafConvolutionOnAbelianVarieties.Suggested`, run from the branch worktree:

```text
Build completed successfully (8954 jobs).
```

Exit 0; four warnings, all `declaration uses 'sorry'` (Suggested.lean lines 77, 85, 97, 114: the four
sorry'd theorems). No other warning or notice; the module uses the `module` / `public import Mathlib`
header with `@[expose] public section`, as `TauCetiRoadmap/CoboundaryExpansion/Suggested.lean` on main
does.

## Gate

```text
gate SheafConvolutionOnAbelianVarieties: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

Run with `--order` pointing at the board's merge-order file (the GitHub fetch is rate-limited).

Direction check (`gate --depcheck … --movable`), verbatim:

```text
depcheck: 234 roadmaps, 2042 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.

## Draft pull request body

Perverse sheaves on an abelian variety carry a convolution product, and modulo the sheaves of zero
Euler characteristic that product makes them a Tannakian category whose fibre functor is twisted
cohomology at a generic character. This roadmap builds that theory from the étale and perverse
foundations: generic vanishing by the Fourier–Mellin transform, Simpson's linearity theorems and the
Fourier–Mukai transform of D-modules on an abelian variety (giving the linear structure of the
exceptional character loci), the negligible quotient with its twisted fibre functors and convolution
groups, and the arithmetic–geometric exact sequence of Tannaka groups. It then identifies the connected
derived convolution group of a smooth ample hypersurface: Krämer's microlocal fibre functor and the
clean characteristic-cycle ring reduce the distinguished representation to a minuscule one, the
Hodge–Tate weights of a torsion twist force an exterior-power weight row to be a multiple of a
descent-indexed Eulerian row, and an exact combinatorial classification of such rows (Lawrence–Sawin
Appendix B, with the bespoke Eulerian comparisons it needs) leaves only the classical groups SL, Sp and
SO outside one explicit threefold exception sequence. The last layers convert these groups into
monodromy of families of hypersurfaces: generic simultaneous twists have product monodromy, a
Frobenius-avoidance argument makes this uniform along a Galois orbit of characters, and isogeny
pullbacks give period maps with finite fibres. The end theorems are the ones Lawrence–Sawin use for
the Shafarevich conjecture for hypersurfaces in abelian varieties.

`Suggested.lean` states the headlines that are statable at the pins: the Pell classification of the
exceptional pairs, the surface and threefold exterior-weight classifications and the full
exterior-power Eulerian classification (Lawrence–Sawin Proposition B.1), on the four simple
definitions they need. The perverse, microlocal, Hodge-theoretic and family headlines are not statable
at the pins; the module docstring lists them with the carrier each lacks.

## Suppliers that are still pull requests

EtaleDualityAndPerverseSheaves, MotivesAndAlgebraicCycles, AbelianSchemesAndArithmeticModuli,
AbelianSchemesAndArithmeticModuliPartII, ComplexComparisonPartII, PadicHodgeTheory,
MordellLawrenceVenkatesh, DeligneWeightsAndPurity, ShimuraData, ShimuraVarieties,
JacobianChallengePartII, AlgebraicModuliForArithmeticGeometry, and FiniteGroupInvariants (another
author's open pull request adding a new roadmap folder; see below). SpringerResolutionAndCharacteristicCycles, LieHighestWeightPartII and StableReductionPartII are in the merge order but have no pull request yet; they exist as board designs, and the cited labels (§D, §D/characteristic-cycle, §Y, §H/regular-holonomic; §N2; §MC.4/fine-level-scheme, §MC.6/torelli-finite-fibres) are the headings and target ids of those designs. All other suppliers are on main (EtaleCohomologyFoundations, SchemeAndStackFoundations, DiophantineApproximationAndTranscendence, ReductiveGroups, ClassicalArithmeticCompletion, JacobianChallenge, the sub-roadmaps LieHighestWeight and SpinRepresentations under RepresentationTheory, and Completed/HodgeStructures).

Every cross-roadmap citation was checked against the cited roadmap as it is now (main, the pull-request
head via `roadmaps show`, or the board design): every cited section, layer and target label exists. The
`roadmaps resolve` leads (the three board designs) are resolved as above. Every pinned declaration cited
in the README was found at the pins (Mathlib f6090c7, Tau Ceti 358314d): `Finset.powersetCard`,
`Finset.card_powersetCard`, `Nat.choose`, `DerivedCategory`, the three
`CategoryTheory.ObjectProperty.SerreClassLocalization` declarations, `Equiv.Perm`;
`TauCeti.AffineGroupSchemeCat`, `TauCeti.ReductiveAffineGroupSchemeCat`,
`TauCeti.FiniteTypeAffineGroupSchemeCat`, `TauCeti.geometricallyConnected_of_reductiveAffineGroupSchemeProperty`,
`TauCeti.AlgebraicGeometry.AbelianVariety`, `TauCeti.Tannaka.tensorAutFunctor`,
`TauCeti.Tannaka.fgPointTensorIsoEquiv`, `TauCeti.IsMinuscule`, `TauCeti.isMinuscule_zero`,
`TauCeti.IsMinuscule.finrank_irreducibleQuotient_eq_card_orbit`. Neither Mathlib nor Tau Ceti has
Eulerian numbers or Jordan's theorem at the pins.

## What moved from the Lean to the README

Nothing: the package's `Suggested.lean` already contained only headline statements and the four
definitions they need. One declaration was deleted as a duplicate (next section); nothing else changed
in the Lean beyond the module docstring.

## Supplier replacements and duplication removals

- **Jordan's theorem (package §7.4, `jordan_finite_linear_groups`) deleted.** FiniteGroupInvariants
  §10.5 (open pull request by another author, new roadmap folder) states exactly it:
  `jordanBound`, `jordan_exists_abelian_normal_index_le` (every finite subgroup of `GL (Fin n) F`, F of
  characteristic zero, has an abelian normal subgroup of index at most `jordanBound n`),
  `jordan_exists_abelian_normal_index_le_of_finite_map` (the finite-modulo-scalars form) and
  `finrank_le_jordanBound` (irreducible dimensions bounded by `jordanBound n`), which were the three
  parts of §7.4. The README now has a `### From TauCetiRoadmap.FiniteGroupInvariants` contract, §7.5
  takes J=`jordanBound` N from it, Scope and ownership records the deferral, the Mathlib
  `GeneralLinearGroup`/`Subgroup.index`/`Subgroup.Normal` paragraph and the Breuillard reference (BR)
  were removed because nothing cites them any more, and the Lean docstring names the supplier
  declarations. FiniteGroupInvariants is not in the merge order; the depcheck reports 0 problems with it
  cited.
- Other objects swept (`roadmaps grep` by object over main and all open roadmap pull requests): generic
  vanishing, Fourier–Mukai transforms, Simpson linearity/Laumon–Rothstein, characteristic cycles, Gauss
  maps, Eulerian numbers, Lawrence–Sawin, Krämer, Hodge loci/Cattani–Deligne–Kaplan, perverse sheaves and
  convolution on abelian varieties. The hits are different objects (unitary and Igusa generic vanishing,
  the completed-Poincaré Fourier–Mukai input of AbelianSchemesAndArithmeticModuliPartII §P2.3, Gauss
  maps of projective hypersurfaces in LefschetzPencilsAndVanishingCycles, the general Eulerian theory of
  ClassicalArithmeticCompletion which this roadmap already consumes) and nothing else was removed.
  Ownership against open pull requests was checked only for the pull requests the brief lists with
  paths and for those the `roadmaps grep` index covers.

## Review notes applied

- F01 (LS line for Lemma 3.8 in §4.5): already repaired in the package (LS line 966).
- F02: the g₁=0 case inserted in the §4.6 route, in the reviewer's wording.
- F03: `TauCeti.IsMinuscule`, `TauCeti.isMinuscule_zero` and
  `TauCeti.IsMinuscule.finrank_irreducibleQuotient_eq_card_orbit` cited under `### From Tau Ceti`, and
  "Minuscule is `TauCeti.IsMinuscule`" in the LieHighestWeightPartII contract.

## Upstream-reviewer pass over the README: fixes

- The eighteen `(gap:slug)` labels on the "What X must provide" contracts were process identifiers of the
  board; each is replaced by the contract name that the `*Needs:*` lines already use (for example
  `(gap:holonomic-riemann-hilbert-index)` is now "(the holonomic realization contract)"), so every
  contract referenced in a `*Needs:*` line is findable by that name.
- Thirty-eight standing-hypothesis sentences read "Throughout this subsection, Use …" or were fragments
  ("Throughout this subsection, Geometric Euler characteristic; …"); each is now a sentence.
- §4.3's route referred to "the fifth Check" for the uncountability example, which is the seventh;
  it now says "the genus-two Check below".
- Three process phrasings removed: "the corrected non-strict product bound" (§6.4) and "the corrected
  avoidance theorem" (§8.3) now cite §6.1 and §8.1; "repairs the dimension mismatch in the source period
  proof" (§9.2) now says that n=2 is the case the convolution route of §9.4 does not reach.
- `metadata.toml` is `topic = "math.AG"`, the form of the folders on main.

## Signature check

A scratch file with `#check @name` for all eight declarations elaborated with `lake env lean` from the
branch worktree, exit 0. Every elaborated type equals the one in `signatures.md` (the deleted
`jordan_finite_linear_groups` aside), and each agrees with its README statement: §5.2 (0<a, a≤b, the
Pell equation in ℤ, unique index), §5.6 (1<k, k+1<m, 2k≤m, 1≤d, surface row; m=2k, d=C(2k−1,k), two
adjacent weights with a singleton endpoint), §5.7 (same hypotheses with the threefold row; m=4,k=2,d=1
or a Pell pair with j≥1 and singleton endpoints), §6.6 (2≤n, 1≤d, 1<k, k+1<m, no exponent
normalization; n∈{2,3} and the three alternatives on min(k,m−k)). No section binder was dropped: the
file has no `variable` block. The scratch file also proved by `decide` that `exceptionalPair 1 = (5,20)`,
`exceptionalPair 2 = (20,76)`, `exceptionalDegree 1 = 8855` and `wedgeMultiplicity ![0,0,1,1] 2 1 = 4`.

## Adversarial mathematics pass

Values recomputed exactly (Python, integers and fractions; the Eulerian numbers from the explicit
alternating-sum formula, checked against a brute-force descent count for n≤6).

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| `hasEulerianExteriorWeights` descent count = A(n,q) | n=0..6 all permutations | counts match A(n,q); A(0,0)=1 (one empty permutation, no descent) | holds; n=0 convention as README says |
| §5.1 `wedgeMultiplicity` | 0,0,0,0 k=2 t=0; 0,0,1,1 k=2 t=−1..3; 0,0,1,2 k=2; −1,0,1 k=2; m=0,k=0 | 6; 0,1,4,1,0; 1,2,2,1; 1,1,1; one empty subset | holds; Checks correct |
| §5.1 complement/shift API | 0,0,1,1 (T=2) k=2 vs m−k=2; weights+3, s+6 | row 1,4,1 both ways; W(3,3,4,4;2;6,7,8)=1,4,1 | holds |
| §5.2 Pell sequence | P₀..P₃; brute force a≤b<400 | (1,5),(5,20),(20,76),(76,285); the brute-force solutions are exactly these four; (1,1): 1−4+1=−2≠2; a=b gives −2a²=2a, no positive solution | holds; a≤b hypothesis harmless at equality |
| §5.3 `exceptionalDegree` | j=0,1,2 | D₀=1, D₁=C(25,5)/6=8855, D₂=C(96,20)/6=36030431772522503316=C(94,19), C(96,20)≡0 mod 6 | holds |
| §5.6 surface row | k=2,m=4 (0,0,0,1); k=3,m=6 (five 0, one 1) | rows 3,3 (d=3=C(3,2)) and 10,10 (d=10=C(5,3)); ordered triples would give 60 | holds; if 2k>m no realization exists (complement forces k=m−k), so the normalization costs nothing |
| §5.7 threefold row | 0,0,1,1 k=2; 1[−1]+23[0]+1[1] k=5 | 1,4,1; 8855,35420,8855 = 8855·(1,4,1), total 53130=6·8855 | holds |
| §6.6 classification instances | n=2 (0,0,0,1;k=2), (0⁵,1;k=3); n=3 (P₁ with k=20) | first alternative; second with k₀=3,d=10; third with min(20,5)=5, d=8855 | holds; min(k,m−k) needed as the Check says |
| §6.2 all comparisons | every n in 2..60 on their stated ranges, square roots in floating point with margin inspected | no failure; n=5: 1848<1875, 390<15625, 36>26 (so 9(n−1)≤A₁ needs n≥6), 24<25; n=4: 18>10; n=7: 49.806≤50.000 and 48.98 with 49; n=8: A₁=247 (≤, not <); n=10: 1291680>1026169; n=11: 4121199<4145296, 8355301812<8427392875 | holds with exactly the displayed ranges |
| §6.1 ratios | P₁ histogram k=5 (r=4,t=19); 0,0,1,1 k=2 (r=2,t=0, n=3); surface 5[0]+[1] k=3 (r=3,t=2) | 19/5+1/5=4=A(3,1), product 19/25; five q=2 ratios 0,0,1,0,0 sum 1=A(3,2). For 0,0,1,1: R_a=0, R_b=4, product 0≤h(−1)h(1)=0 non-strict; five ratios 0,0,0,1,0 sum 1. Surface: 0,1 | holds, including the non-strict case when an adjacent value is 0 |
| §6.3 Check | 1[−1]+53[0], k=2 | R_a=52/2=26=A(5,1); q=2 ratio 0≠66 | holds |
| §6.4 n=5 | sum 26, product ≤4 | roots 13∓√165 = 0.155, 25.845; 5+1+52=58<66 | holds |
| §6.5 n=5,6 | ⌈A₁/(2(n−1))⌉ | ⌈13/4⌉=4, ⌈57/10⌉=6; 3A₄/A₁²=3/676; gap r=4: 26·25/2=325>A(5,10)=0 | holds |
| §3.1 rows and signs | n=2,3,4 | χ(Ω^q)=(−1)^(n−1−q)dA(n,q): −d,d; d,−4d,d; −d,11d,−11d,d; N=2,6,24; curve genus 1+d gives χ(O_H)=−d and e_top=−2d | holds (the README's "unsigned row" for n=4 is 1,11,11,1) |
| §3.2, §4.8 | n=2,3,4 | perverse Euler characteristic (−1)^(n−1)e_top=N>0; self-duality sign (−1)^(n−1): + at n=3 (SO), − at n=4 (Sp) | holds |
| §4.7 divisibility | N≡0 mod 6 | 27≡3, 56≡2, 2^r≡1,2 mod 3 | holds |
| §4.3 λ-ring Check | Λₓ+Λᵧ | ½(Λ_{2x}+2Λ_{x+y}+Λ_{2y}−Λ_{2x}−Λ_{2y})=Λ_{x+y} | holds |
| §4.3 SO₃ Check | SL₂→SO₃, Ψ²U | torus e²+e⁻²; on V₄: ε₁+ε₂+ε₃−1 | holds |
| §4.4 Check 6 | x=0,y=a,z=b,t=b−a | x+z=b=y+t | holds |
| §4.6 route with g₁=0 | B₁=0 | Λ_pt has degree 1, so deg Λ₁≤1<2 | the package's sentence was false on this instance; F02 inserted |
| §0.4 elliptic Checks | F[1] on E; δₓ | dimensions 1,2,1 in degrees −1,0,1; S^{±1}={1}, codim 2≥1; FM(δₓ)=R free | holds |
| §0.6 Check | δ₀⊕F_E[1] on E | Hom(δ₀,F_E[1])=H^{−3}(pt)=0 and Hom(F_E[1],δ₀)=Ext^{−1}=0, so End=F⊕F has dimension 2; quotient dimension 1 | holds |
| §1.5 Check 4 | rank-2 irreducible L on E∖0 | χ(j_*L[1])=r−dim L^T; tr[A,B]=2 iff reducible pair, so dim L^T=0 and χ=2 | holds |
| §2.1 Check | Gal quotient S₃, V 2-dimensional | End in C_ar = F; in C_geo = M₂(F), dimension 4 | holds |
| §8.1 Checks | E×E curve (2a,3a); E³ with σ=3 on ℤ/4 | first-axis inverse image Π(E)[2] (4 characters); box 9, bad ≤6; 2+9+5=16≡0, 6+9+5=20≡0, 1−3≡2 mod 4 | holds |
| §8.2 Check | E over ℚ, order-4 point | |GL₂(ℤ/4)|=96, 4⁴−96=160>0, 4³−96<0 so r≥4 | holds |
| §9.2, §9.3 Checks | d=2; ℂ/ℤ[i]; r=2⁶ | deg φ_L=d²=4; Aut={±1,±i}, (3+4i)/5 has minimal polynomial x²−(6/5)x+1; r=64, e=u∘t/64 idempotent | holds |
| §7.5 with Jordan supplied | Q₈ in one coordinate | irreducible dimension ≤2<dim W | holds; example moved to the Layer 7 Examples in supplier terms |
| Vacuity of the Lean hypotheses | d=0; k+1≥m | d=0 forces an all-zero row, impossible since the row sums to C(m,k)>0; k+1<m is 1<k<m−1 | hypotheses consistent, none redundant |

## Unresolved

- FiniteGroupInvariants is an open pull request by another author and is not in the merge order; the
  intake places this roadmap after its suppliers. If that pull request is not merged, §7.4 must return
  here (its text is in the package README at the board head).
- The eighteen supplier contracts ("What X must provide …") remain requests on earlier roadmaps, as the
  accepted review's conditional gaps; none is stated here as a target.
- The published Annals, Selecta and IHÉS versions of LS, BSS and Sch are not collated; locators use the
  arXiv numbering as the References section says.


Pull request: #1809 (roadmap/sheaf-convolution-on-abelian-varieties at b38940e)
