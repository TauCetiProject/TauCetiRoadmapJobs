# PKG-HodgeClassesForJacquetLanglands

Deliverables: `packages/HodgeClassesForJacquetLanglands/README.md` (2,290 lines, eleven layers, 75
targets), `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml`, and the top-level
`gaps` list of `design/plan.json` (nothing else in that file changed; verified by comparing every other
key with the original).

## Inputs

- The accepted design `design/README.md` and `design/plan.json` were read in full. There is no
  `design/review.json` and `reports/` was empty; the accepted review is the `review` object embedded in
  `plan.json` (status accepted, 2026-10-19, 71 node verdicts). Its corrections are all reflected: the
  norm-subgroup hypotheses, the Borel reordering `(1,3,2,4)` of the weight map, the doubling data
  quantifiers (existence of nonzero holomorphic local data, no holomorphy for all data), the projected
  harmonic-restriction diagram, the conjugated backward candidate `θ(Π̄′)`, the restored unitarity and
  irreducibility hypotheses, the `(10.7)`/`(10.8)` locator, and the narrowing of E4 to a missing
  justification.
- The pins in `lake-manifest.json` are Mathlib `6b7abb3c` and Tau Ceti `a91d3aaf`, newer than the
  design's baseline (`082e2d37`, `f7904748`). Every library citation was rechecked at the new pins
  (below).
- Ownership against open pull requests was checked with `roadmaps grep` over all 354 open roadmap pull
  requests at their heads and main (index of 2026-10-26), and supplier sections were read at the heads
  given by `roadmaps show`.

## Headline theorems

| Headline theorem | Status |
| --- | --- |
| Existence and uniqueness of the conjugate-linear exterior operator `L` on `⋀²U` (IP23 §5.2) | stated: `existsUnique_isExteriorStar` (with the predicate `IsExteriorStar`) |
| `L ∘ L = vol(H, d_U)` for Hermitian `H` (IP23 Proposition 5.3) | stated: `IsExteriorStar.comp_self` |
| Similitude equivariance `L ∘ ⋀²g = (ν²/det g)(⋀²g ∘ L)` (IP23 (5.10), proof of Proposition 5.6) | stated: `IsExteriorStar.map_similitude` |
| Exceptional isogeny `GSU_E(U) → GU_B(⋀²U)°` with kernel `μ₂`, and `PGU_E(U) ≃ PGU_B(⋀²U)°` (Propositions 5.6–5.7) as algebraic-group statements | not statable: affine group schemes of unitary similitudes, identity components and central quotients are absent at the pins |
| Hodge class realizing Jacquet–Langlands (Theorem 3.2(i), Theorem 12.4(i)) | not statable: quaternionic Shimura varieties, their cohomology with automorphic coefficients and its Hodge structure, cuspidal automorphic representations and global JL are absent |
| Conditional all-`ℓ` Galois statement (Theorem 3.2(ii), Theorem 12.4(ii)) | not statable: additionally lacks étale cohomology of canonical models with `ℓ`-adic coefficients and the Kottwitz hypothesis |
| Rational weight-two correspondence (Theorem 1) | not statable: same carriers |
| Simultaneous nonvanishing (Proposition 10.1), near-equivalence rigidity (Proposition 9.5), purity (Proposition 11.6, Corollary 11.7) | not statable: global theta lifts, automorphic forms on similitude groups, relative Lie algebra cohomology of Shimura varieties and Hodge decompositions are absent |
| Restriction formulas for harmonic Schwartz forms (Propositions 8.1–8.2) | not statable: Fock model of the real Weil representation and Schwartz-valued relative cochains with harmonic coefficients are absent |
| Triviality of geometric unipotent extensions (Remark 11.10) | not statable: continuous Galois cohomology with `ℚ_ℓ` coefficients and the de Rham condition are absent |

The rational determinant descent (§10.6) is an algebra lemma on free polynomial variables and is not a
headline; it stays in the README with `MvPolynomial.funext` as its input. The design's Suggested file
(coordinate helpers for JL.1, JL.3, JL.8 and a matrix descent lemma) was not carried over: those were
computations mirroring README Checks.

## What the README could not support from suppliers (gaps declared in `plan.json`)

| Gap | Supplier, section | Needed by |
| --- | --- | --- |
| `compact-matsushima` | ArithmeticLocallySymmetricSpaces §ALS.5b.4 (takes `FrankeInput` as a hypothesis even for anisotropic groups) | §§0.2, 8.5, 10.4 |
| `vhs-hodge-decomposition` | ComplexKahlerGeometry §K6.1 (constant coefficients only) | §0.2 |
| `quaternion-ramification-classification` | ClassFieldTheory Layer 10 (no quaternion classification or embedding criterion stated anywhere) | §§0.4, 10.2 |
| `norm-subgroup-restriction` | GL2AutomorphicRepresentationsAndTransfer §R17.3 (no restriction to `H_N^+`, `H_∞^+`) | §§8.1, 10.1 |
| `quaternionic-doubling-residue` | MetaplecticAutomorphicForms §§6.4, 6.10a–6.12 (doubling stated for orthogonal, symplectic, unitary, metaplectic data only) | §§6.3, 6.4 |
| `quaternionic-shimizu-lift` | MetaplecticAutomorphicForms §§5.6, 6.15 (no global `B^× → GSO(B₁ ⊗ B₂)` lift) | §6.2 |
| `derham-local-system-cohomology` | PadicHodgeTheory §8.1 (constant coefficients only; no subquotient statement) | §§0.2, 9.4 |

The design's four gaps were proposals for Part II roadmaps that do not exist and would come after this
roadmap in the merge order; they are replaced by the gaps above on earlier suppliers, by citations of
sections that already state the material, or by moved-down targets.

## Notions moved down from later roadmaps

ModularityAndLanglandsExtensions (#269 in the order), AutomorphicGaloisRepresentations (#185),
PadicHodgeRegulators (#215), HilbertModularVarietiesAndShimuraCurves (#177) and AutomorphicBundles
(#235) come after this roadmap (#168). None is cited as a supplier.

- Realizations of compact Shimura cohomology with automorphic coefficient systems (Betti, Hodge,
  `ℓ`-adic, comparison, isotypic parts) and pullback/normalized trace along morphisms of data: moved
  down from AutomorphicBundles §§B2.4–B2.7 and the proposed quaternionic Part II of
  HilbertModularVarietiesAndShimuraCurves into §§0.2–0.3, at the generality of IP23 §2.2 (compact
  abelian-type data, coefficients factoring through `G/Z_s`).
- The Hodge-type criterion for coefficient cohomology of compact unitary similitude Shimura
  varieties (the Zucker criterion applied in IP23 pp. 87–88): moved down into §8.6 (natural owner
  AutomorphicBundles).
- `H¹_g(K, ℚ_ℓ) = H¹_ur(K, ℚ_ℓ)` (PadicHodgeRegulators §1.1 owns `H¹_g`): moved down into §9.3.
- The partial Asai `L`-function and its pole (GanGrossPrasadUnitaryGroups, later): used only through
  its Euler-product factorization inside §8.1.
- Arthur classification and Adams–Johnson packets (ModularityAndLanglandsExtensions Layer 3): the
  dependency is removed rather than moved. Degree selection §8.5 uses the route of IP23 Remark 11.5
  (near-equivalence rigidity §6.5 plus the archimedean theta lifts of MetaplecticAutomorphicForms
  §3.35), which IP23 states avoids the classification; §8.2 keeps the Vogan–Zuckerman cohomology of the
  three modules without identifying them with an Arthur packet; §8.1 states the formal parameter
  `σ_E ⊠ Sym¹` through unramified components.
- Galois representations of Hilbert modular forms (AutomorphicGaloisRepresentations §§3.1, 3.10): the
  dependency is removed. In degree `2d` only the lowest graded line of Kottwitz's prediction enters
  (IP23 p. 93), and it involves only the determinant, i.e. the central character of `σ_E` through class
  field theory. §9.2 now defines the hypothesis `K_{2d}(Π)` as the degree-`2d` prediction and proves
  that the line is `ℚ_ℓ(−d)`.

## Duplication removals and changed citations

- JL.3 archimedean theta module: the identification of the real theta lifts is
  MetaplecticAutomorphicForms §3.35 (`theta_realDiscreteSeries`); removed here, §3.5 keeps only the
  relative Lie algebra cohomology dimensions.
- The design's requests to MetaplecticAutomorphicForms MP.3 (archimedean theta, quaternionic Howe
  uniqueness, Morita): already stated at §§3.35, 3.34, 3.7, 3.33; cited.
- The splittings of IP23 Appendix A (Proposition A.1 and the see-saw compatibility): stated by
  MetaplecticAutomorphicForms §§3.23–3.28, 3.30–3.33; cited, not restated.
- The unramified quaternionic lift (IP23 Lemma 9.4): MetaplecticAutomorphicForms §3.36; cited.
- The compatible-realization category `M_k^L` and `HT` (design gap "Compatible-realization category"):
  MotivesAndAlgebraicCycles §7.15 states exactly this; cited, gap dropped.
- Vogan–Zuckerman modules and their Hermitian bidegree formula (AF.4 request): AutomorphicFormsOnReductiveGroups
  §5.4; cited.
- Matsushima's formula: ArithmeticLocallySymmetricSpaces §ALS.5b.4 (plus gap for the unconditional
  compact case).
- Harmonic tensors: RepresentationTheory/SchurWeyl Layer 9 `harmonicTensors` on main and
  GeometryOfNumbersAndQuadraticArithmetic §4.3; §4.1 is kept as the arbitrary-signature symmetric
  variant with an undivided pairing (one clause in the README says how it differs).
- `Spin₆ ≃ SL₄` over `ℂ`: RepresentationTheory/SpinRepresentations Layer 6; cited as the geometric
  input of §1.7.
- Mathlib's `exteriorPower.wedgePairing`, `exteriorPower.hodgeStar` and
  `LinearMap.BilinForm.exteriorPower` (new at the pin): the operator `L` is the conjugate-linear analogue
  of the bilinear Hodge star in degree `(2,2)`; for `σ = id` the square law is the identity Mathlib's
  `HodgeStar.lean` lists without proof. The Lean statements use these carriers directly.
- Tau Ceti `TauCeti.QuaternionAlgebra.normMulEquiv`, `tensorAlgEquivTensorMatrix` and
  `TauCeti.BrauerGroup.quaternionClass_mul` are at the pin (they were "newer than the baseline" in the
  design); cited directly.
- GeometryOfNumbersAndQuadraticArithmetic "GN.2/signed-hermitian-space": no such section; its §2.9 is
  local and in odd residue characteristic only. Layer 1 uses Mathlib's sesquilinear maps instead; the
  quaternion embedding criterion it was asked for is not stated there and became
  `gap:quaternion-ramification-classification` on ClassFieldTheory.
- `mathlib:MvPolynomial.IsHomogeneous.eq_zero_of_forall_eval_eq_zero` does not exist at the pin; the
  descent uses `MvPolynomial.funext` (`Mathlib/Algebra/MvPolynomial/Funext.lean`).
- The Fock comparison (design request to MP.2) has no owner: MetaplecticAutomorphicForms has
  Schrödinger models but no Fock model. This roadmap owns §4.2 because it is its first consumer and the
  comparison is restricted to polynomial-times-Gaussian vectors with the conventions of IP23 (8.2).
  Likewise no roadmap states Kudla–Millson/Funke–Millson Schwartz forms (no match anywhere), the
  Hermitian exterior construction (OrthogonalSpinGroups excludes Hermitian and unitary groups) or the
  quaternionic theta identities of IP23 §§9–10; these are owned here.

## Other corrections to the design

- Equation locator for the intertwining identity is IP23 (5.10), not (5.7)–(5.8).
- §1.3–1.4 generality: existence and uniqueness of `L` hold for every sesquilinear form and every ring
  endomorphism `σ`; the square law needs only Hermitian symmetry (not nondegeneracy; the volume is then
  zero), and fails for a non-symmetric bilinear form (computed below). README and Lean state this
  generality.
- §7.9 Check: the weights outside `Σ` are `−k_v` and `−1`, summing to `−(k_v+1)`.
- §0.6 Check recomputed with both weight pairs.
- §3.3 Check recomputed (`y = (1,1,i,i)` gives `(1,1,−1)`).
- §7.7: finite order of `η` is derived (continuity plus compactness), not assumed; IP23 Lemma 10.5 does
  not state it.
- The source notes E1–E8 are kept as a timeless "Notes on the source" section.

## Elaboration

`lake env lean packages/HodgeClassesForJacquetLanglands/Suggested.lean` (from the content checkout):
exactly **3** warnings `declaration uses 'sorry'` (lines 70, 81, 95), no other messages, exit 0.

Mechanical signature check: a scratch file with `#check @IsExteriorStar`,
`#check @existsUnique_isExteriorStar`, `#check @IsExteriorStar.comp_self`,
`#check @IsExteriorStar.map_similitude` was elaborated. Every binder (`Field E`, `Module E U`,
`FiniteDimensional E U`, `σ`, `H`, `vol`, `hkl`, the Hermitian hypothesis `hH`, the similitude
hypothesis `hg`) appears in each declaration's own signature; no section variable is used, so nothing
changed. The elaborated types agree with README §§1.3, 1.4 and 1.7.

Library names: every Mathlib name in the README was `#check`ed at the pin with no error. Tau Ceti
object files are not built on this host, so the Tau Ceti names (`TauCeti.Hodge.HodgeStructureOn`,
`.tateTwist`, `.internalHom`, `exteriorPower.map_top_eq_det_smul`, `exteriorPower.topEquiv`,
`TauCeti.QuaternionAlgebra.normMulEquiv`, `.rescaleJEquiv`, `.tensorAlgEquivTensorMatrix`,
`TauCeti.BrauerGroup.quaternionClass_mul`, `TauCeti.symPowerRep`) were verified in the pinned source
with their namespaces. `roadmaps resolve` reports no unresolved cross-roadmap citation and no unresolved
roadmap Lean name.

## Dependency check

```
tauceti-roadmap … gate --depcheck packages/HodgeClassesForJacquetLanglands/README.md --name HodgeClassesForJacquetLanglands --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 660 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.

## Sources

`sources.toml` records one work, IP23, fetched from the publisher's open-access copy (CC BY 4.0,
recorded `publisher-open`, certified) with its arXiv id; locators are to the printed pages, which
agree with the PDF pages. The arXiv v2 text was also fetched: its theorem numbering agrees, its pages
do not. Zucker's 1981 paper (the Hodge-type criterion) could not be located in a legal open copy; it is
not cited, and §8.6 cites the criterion where IP23 states and applies it (pp. 87–88). No
`needs-references.toml` request is outstanding. No fetched text contained instructions.

## Adversarial pass

Exact computations were done with a small Gaussian-rational script (in the job's scratch) for Layer 1
and Layer 2, and by hand for the rest; every value below was computed.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Tate twist convention | `tate 0`, `V(d)` for `V` of weight `d` | type of `ℚ(1)` is `(−1,−1)`; weight of `V₁⊗V₂(d)` is `d+d−2d = 0` | holds | none |
| Theta conjugation convention | `f ↦ if` | `θ_IP(if) = iθ_IP(f)`, `θ_MP(if) = −iθ_MP(f)` | conventions differ by conjugation | stated `θ_MP(f̄)` |
| Orientation `d_U(e₁₂₃₄) = −1` | diag form, `d = ±1` | `L(e₁₂) = −a₁a₂e₃₄` (d=−1) vs `+a₁a₂e₃₄` (d=+1); `L²` unchanged | holds | none |
| 0.1 Hodge data | `k_v = 2`, `k_v = 3`, `d = 0`, `d = n` | `τ_k = Sym⁰ ⊗ Nrd⁰`; exponent `−1/2` not integral; `d=0` accepted, `d=n` violates `d<n` | holds | Check reworded |
| 0.2 realizations | trivial `ρ`; definite `B`; `dim π_f^K = r` | `H⁰ = L^{Sh_K}`, `H^{>0} = 0`; summand is `r` copies | holds | new (moved down) |
| 0.3 pullback/trace | level change `K₁ ⊂ K₂`; normal `K₁′` of index `m` | `[K₂:K₁]·vol K₁/vol K₂ = 1`; raw trace ×`m`, volume ×`1/m` | holds | new (moved down) |
| 0.4 division reduction | `F` real quadratic, ram `{∞₂,𝔭}`, `{∞₂,𝔮}` | real invariants `1/2+1/2 = 0`; `B` ramified at `{𝔭,𝔮}` | holds | none |
| 0.5 multiplicity spaces | `d = 0, 1`; `d=1, n=2` | ranks `1, 2`; `2^d = 2` vs `2^n = 4` | holds | degree `d` (IP23 prints `2d`) |
| 0.6 sign lines | `k=(2,2)`; `k=(2,4)` | types `(2,0),(1,1),(1,1),(0,2)`; `(3,−1),(2,0),(0,2),(−1,3)` | holds | none |
| 0.7 correspondence | diagonal; weights | identity; weight `0` | holds | none |
| 1.1 volume | `diag(1,1,1,1)`, `d=−1`; `diag(1,2,1,−5)`, `d=−1,−2`; rank-1 and rank-2 Hermitian | `1`; `−10 → −5/2`; `0`, `0` | holds | degenerate case added |
| 1.2 determinant norm | 4 random similitudes over `ℚ(i)` | `N(det g) = ν⁴`: `2825761 = 2825761`, `160000 = 160000`, `28561 = 28561` | holds | none |
| 1.3 exterior operator | six basis images from the defining identity; `σ(i) = −i`; `d ↦ −d` | images match IP23 p. 29; `L(e₁₂i) = −L(e₁₂)i`; `L ↦ −L` | holds | generality: any sesquilinear `H` |
| 1.4 square law (`IsExteriorStar.comp_self`) | 4 random non-diagonal Hermitian over `ℚ(i)`; degenerate; `σ = id` symmetric; `σ = id` non-symmetric | `vol = 3479/17, 540, 182, 439/9` and `L²=vol` on all basis vectors and non-real multiples; `vol = 0` holds; `287/9` holds; non-symmetric **fails** | holds under Hermitian hypothesis | hypothesis minimal (no nondegeneracy); negative control recorded |
| 1.5 skew identities | random Hermitian, `J = −164/5`, 20 pairs; plane `diag(a₁,a₂)` | both identities exact; plane `b(L₁e₁,e₂) = −ia₁a₂ = −b(L₁e₂,e₁)` | holds | Check rewritten with values |
| 1.6 quaternionic form | random `x,y` and quaternions | module axiom, `⟨xβ,yγ⟩ = β*⟨x,y⟩γ`, `⟨y,x⟩ = −⟨x,y⟩*` all exact; `j`-term on the right **fails** sesquilinearity | holds | negative control added |
| 1.7 isogeny (`IsExteriorStar.map_similitude`) | 4 random similitudes; conjugated factor; scalar `t`; `g = −1`; `H = 0` | identity exact with `ν²/det g`, fails with `σ(ν²/det g)`; `ν=t², det=t⁴`; `⋀²(−1) = 1`; both sides `0` | holds | locator (5.10) |
| 1.8 projective isomorphism | random similitude; `g ↦ gα`, `α = 2−i` | `N(ν²/det g) = 1`; `β = 1+c` gives `β/σ(β) = c`; ratio `(σα/α)²`; `βα⁻²` works | holds | none |
| 2.1 planes | `β=(1+2i)+j·i`, `α=2−i`, `J=−3`; `(t,t)`; `β = 1` | multiplier `8/5 = Nrd/N`; det `24/25+32i/25 = Nrd·α⁻²`; trivial; `N(α)⁻¹ = 1/5` | holds | Check with values |
| 2.2 two-plane decomposition | `diag(1,−J₁,1,−J₂)` | `L(e₁₂) = J₁e₃₄`, `L(e₃₄) = J₂e₁₂`: diagonal lines exchanged | holds | none |
| 2.3 block isogeny dimensions | dimension count | `5+5−1−1 = 8`, `7+2−1 = 8` | holds | Check corrected |
| 2.4 projective block | `g = ([b₁,α₁],[b₂,α₂])` | `det(g₁)α₁α₂ = Nrd(b₁)α₁⁻¹α₂`; `(t,t⁻¹)` acts by `1`, `(t,t)` by `t²` | holds | none |
| 2.5 block groups | `(t,t⁻¹)`; `α` on `W₀` | multiplier `t²t⁻² = 1`; `N(α)` | holds | none |
| 2.6 tensor model | `J₁ = −2`, `J₂ = 5` | images `e₂₄, −2e₁₄, 5e₂₃, −10e₁₃`; `L² = −10 = J₁J₂`; form `diag(1,2,−5,−10)` | holds | none |
| 2.7 three-plus-one | orthogonal basis, `U₄ = ⟨e₄⟩` | `L(e₁₄) = −a₁a₄e₂₃` etc.: `Wj = ⋀²U₃` | holds | none |
| 2.8 group diagram | both composites on `([b₁,α₁],[b₂,α₂])` | both `[[b₁,b₂], Nrd(b₁)α₁⁻¹α₂]` | holds | none |
| 3.1 signatures | split and compact places | `(2,2)+(2,0) = (4,2)`, `(0,4)+(0,2) = (0,6)` | holds | none |
| 3.2 split torus | `(z,z,Nz)`; `t₁=t₂=1` | `(N(z)²,N(z)²,N(z)²)`; `(1,ν,ν)` | holds | none |
| 3.3 real torus | `y = (1,1,1,−1)`, `(1,1,i,i)`, `y₁ ↦ −y₁` | `(−1,−1,−1)`; `(1,1,−1)`; common sign | holds | Check corrected |
| 3.4 weight map | all even-sum `l ∈ [−4,4]³`, all sum-zero `k ∈ [−3,3]⁴`; `(2,0,0)`, `(0,0,2)`, `(1,0,0)`; `k=2,4,6` | bijection exact; `(1,−1,1,−1)`, `(1,1,−1,−1)`, `(1/2,…)` excluded; reordered `(0,0,0,0)`, `(1,1,−1,−1)`, `(2,2,−2,−2)` | holds | none |
| 3.5 theta-module cohomology | `k = 2`; Poincaré polynomial | `1 + 2t² + t⁴`; total `4` | holds | identification removed (MP §3.35) |
| 4.1 harmonics | `⟨v²,w²⟩`; `V = ℝ²` | `2⟨v,w⟩²`; `ℋ² = ⟨e₁²−e₂², e₁e₂⟩`, `(e₁+ie₂)² ∈ ℋ²` | holds | none |
| 4.2 Fock | `Bᴺφ₀`, `A²φ₀`, negative coordinates | `Bᴺφ₀ = 2ᴺwᴺφ₀` (since `(∂₁+i∂₂)w = 0`); `A²φ₀ = (4x²−π⁻¹)φ₀`; sign `(−1)ᴺ` | holds; reproduces `(4πi)^{−(ℓ+2)}` of 8.1 | Checks with values |
| 4.3 Schwartz forms | `(4,2)`, `ℓ=0`; `(0,6)`, `ℓ=0` | weights `0+3 = 3`, `−0−3 = −3` | holds | none |
| 4.4 harmonic restriction | `e₁²` in signature `(2,2)` | `C(q) = 4`, projection `e₁² − q/4` | holds | Check with value |
| 4.5 noncompact restriction | `α = (1,1),(2,2),(1,2),(2,1)` | coefficients `+1, −1, εi, εi`: sum `(z₁+εiz₂)²` | holds | false Check (`ω^{−ε}` gives 0) removed |
| 4.6 compact restriction | `ℓ = 0, 1` | `φ₀`; `−(x₁+εix₂)φ₀` | holds | none |
| 5.1 Shimura diagram | dimensions | `2d`, `4d` | holds | none |
| 5.2 component torus | kernel of `Z → T` | `t² = 1`, `α = 1`: `([−1,1],1)` | holds | none |
| 5.3 component class | `j(s)`; representatives | `η((s·s)⁻¹s) = η(s⁻¹) = 1`; `(t₁s,t₂s⁻¹)` same product | holds | none |
| 5.4 coefficients | `k = 4`; odd `ℓ` | `(1,1,−1,−1)`; `ν^{−ℓ/2}` non-algebraic | holds | none |
| 6.1 toric lift | central character; `χ = 1` | `η|ξ_E`; `L(s,χ)` pole | holds | none |
| 6.2 product lift | `(t,t⁻¹)` on `σ₁⊠σ₂` | `ω₁(t)ω₂(t)⁻¹` | holds | Shimizu input is a gap |
| 6.3 doubling point | `s = 3/2` | `b/a = ζ(4)ζ(6)ζ(8)/(ζ(3)ζ(1)ζ(−1))`; pole from `ζ^S(1)` | holds | none |
| 6.4 backward lift | anisotropy | `O(0,6)` at a real place excludes split tori | holds | none |
| 6.5 near equivalence | unramified parameters | MP §3.36 formula reproduced | holds | none |
| 7.1 theta data | inert place, odd valuation | `Nrd(h_v) ∉ N(E_v^×)` | holds | non-example made concrete |
| 7.2 theta class | `m = 3` | `ξ_E³ = ξ_E` cancels `ξ_E` | holds | none |
| 7.3 projection | `η = 1` | central invariants | holds | none |
| 7.4 see-saw | equation numbers | `(10.7)`, p. 72 | holds | none |
| 7.5 sign vectors | even exponents | `ε^{k_v} = 1` | holds | none |
| 7.6 norm support | unramified place | every unit a norm | holds | none |
| 7.7 auxiliary character | `χ_v` of order 2; `x ∈ 𝔸^×` | `χ_v² = 1` rejected; `x/σ(x) = 1` | holds | finite order derived |
| 7.8 toric vector | Gaussian; `m = 2` | value `1`; weights `±1 = ±m/2` | holds | none |
| 7.9 triple-product type | weights | `k_v+1`; `−k_v−1` | holds | Check corrected |
| 7.10 simultaneous nonvanishing | `n = 2` | `2² = 4` sign vectors | holds | none |
| 8.1 theta parameter | dihedral `σ` | `σ_E = χ ⊞ χ^σ` | holds | stated without Arthur classification |
| 8.2 three modules | `k = 2` | dims `1;1,2,1;1` | holds | packet identification dropped |
| 8.3 negative similitude | `δ²` | `1` | holds | none |
| 8.4 Hecke space | rational eigencharacter | orbit size `1` | holds | none |
| 8.5 degree selection | local degrees | each `≥ 2`, total `2d` forces `2` | holds | single route (Remark 11.5) |
| 8.6 Hodge-type criterion | `(1,1)`, `(0,4)`, `(3,3)` | `α⁻² ⇒ k′ = k_v−1`; `k′ = 0`; weights `2k_v−2`, `2k_v`, `2k_v+2` | holds | new (moved down) |
| 8.7 Hodge table | all six rows, `k = 4` | `(0,2k),(k−1,k−1),(k,k),(k,k),(k+1,k+1),(2k,0)`; `(3,3) → (1,1)` | holds | none |
| 8.8 purity | `d = 2` | type `(2,2)` | holds | none |
| 9.1 Kottwitz representation | `d = 1`, `d = 0` | dims `6`, `1` | holds | none |
| 9.2 lowest line | graded pieces | `V² = \|·\|^{−3}`, `V⁰ = \|·\|^{−2} ⊕ …`, `V^{−2} = \|·\|^{−1}`; `(V^{−2})^{⊗d}\|·\|^d = 1` | holds | hypothesis restated in degree `2d` |
| 9.3 de Rham characters | `log χ`; unramified `Frob ↦ 1` | ramified, not de Rham; crystalline | holds | new (moved down) |
| 9.4 unipotent splitting | `k = ℚ`; mod `ℓ` | class number `1`; `Hom(Cl, 𝔽_ℓ) ≠ 0` when `ℓ \| h` | holds over `ℚ_ℓ` | none |
| 9.5 trivial Galois action | twist | `ℚ_ℓ(−d)(d) = ℚ_ℓ` | holds | none |
| 10.1 auxiliary form | `k_v = 2` | weight `3` | holds | none |
| 10.2 CM field | `δ < 0` at real places | `E` totally imaginary | holds | none |
| 10.3 restriction map | `c = 0` | `0` | holds | none |
| 10.4 invertibility | `d = 1` | two diagonal entries | holds | none |
| 10.5 invariant parameters | `η = 1` | `c_η = 1 ∈ W_ℚ` | holds | none |
| 10.6 rational descent | average of `(i)` over `ℚ(i)/ℚ`; `d = 0` | `(i + (−i))/2 = 0`; degree `2⁰ = 1` | holds | `MvPolynomial.funext` |
| 10.7 main Hodge | `d = 0` | rank one, type `(0,0)` | holds | none |
| 10.8 conditional HT | one prime only | not equivariant at the others | holds | none |
| 10.9 weight two | `d = 1` | class in `H²(X₁×X₂,ℚ)(1)` | holds | none |
| `existsUnique_isExteriorStar` | arbitrary `σ` (including non-involutive) | existence by the universal property for the `σ`-twisted target; uniqueness on pure wedges | holds | none |
