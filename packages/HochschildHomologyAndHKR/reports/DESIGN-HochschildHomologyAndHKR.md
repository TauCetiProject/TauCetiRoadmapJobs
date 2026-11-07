# Design report: HochschildHomologyAndHKR

The design is in `packages/HochschildHomologyAndHKR/design/README.md` (8 layers) and
`packages/HochschildHomologyAndHKR/design/plan.json` (37 targets: 13 definitions or constructions,
24 theorems; one gap). The manifest `packages/HochschildHomologyAndHKR/sources.toml` was updated.
No `needs-references.toml` was written: every cited text is either certified in the cache or
settled as uncertified.

## What the design covers

- Layer 1: the Hochschild simplicial and cosimplicial `k`-modules with bimodule coefficients, the
  chain and cochain complexes as Mathlib alternating (co)face complexes, functoriality, long exact
  sequences, and the `R`-linear structure for commutative `R`.
- Layer 2: normalised chains and cochains and the normalisation theorem over every commutative
  `k`, proved through Mathlib's Dold–Kan normalisation (`PInfty`, `QInfty`, `DegeneraciesVanish`).
- Layer 3: `HH₀`, `HH⁰`, bimodule derivations and `HH¹`, `HH₁(R,R) ≅ Ω¹` for every commutative `R`,
  twisted square-zero extensions and the `HH²` classification of `k`-split square-zero extensions.
- Layer 4: bimodules as `Aᵉ`-modules, the bar resolution, `HH^n ≅ Abelian.Ext^n` and a `Tor` over
  `Aᵉ` defined by left-deriving Tau Ceti's balanced tensor product, with `HH_n ≅ Tor_n`, for
  `k`-projective `A`.
- Layer 5: cup product, Leibniz rule, the graded algebra `HH^•(A,A)`, Yoneda products computed on
  projective resolutions, and the comparison of `∪` with `Abelian.Ext.comp`.
- Layer 6: the sign dictionary with DGAInfinity Layer 8 (cochains and chains of an algebra in
  degree zero), Gerstenhaber's homotopy formula and graded commutativity, and the antisymmetrisation
  and projection of RefinedTraceMethods §1.9 on the classical complex.
- Layer 7: the chain-level duality `C^•(R,M) ≅ Hom_R(C_•(R,R),M)`, the duality lemma for complexes of
  projectives with projective homology, exterior powers of finite projective modules and
  `pairingDual`, polyvector fields, the determinant cocycle, and the cohomological HKR theorem.
- Layer 8: the polynomial case through the Koszul bimodule resolution, unconditionally over every
  `k`.

All six final targets of the brief are planned. Statements left to other roadmaps are listed in
the README's scope section by roadmap and section.

## Scope decisions and mathematical corrections

1. **Smoothness does not imply `k`-projectivity.** The brief states that `Algebra.Smooth k R` makes
   `R` `k`-flat and finitely presented, hence `k`-projective. Finite presentation in
   `Algebra.Smooth` is as an algebra, not as a module, and the implication is false: `ℤ → ℤ[1/2]`
   is étale (smooth of relative dimension zero) and `ℤ[1/2]` is not a projective `ℤ`-module. The
   cohomological HKR theorem is therefore stated with `Module.Projective k R` in addition to
   `Algebra.Smooth k R`. This is the standing hypothesis of HKR62 Theorem 5.1 (HKR62 line 522:
   a `K`-projective commutative `K`-algebra) and is what the route needs: it makes
   `C_n(R,R) = R ⊗_k R^{⊗n}` a projective `R`-module so that HKR62 Lemma 4.1 applies. The `ℤ[1/2]`
   example is a Check (the conclusion holds there; the hypothesis is the route's, not shown to be
   necessary). Removing it would need a different argument and is listed below as a possible
   Part II.
2. **The canonical isomorphism is explicit and multiplicative over every `k`.** HKR62 line 495
   shows that the Ext-product of derivations `ζ₁*⋯ζ_n*` is represented by the product cochain
   `x₀ ζ₁(x₁)⋯ζ_n(x_n) x_{n+1}`, and lines 536–546 deduce that `ζ ↦ ζ*` extends to an algebra
   isomorphism. The design states `Ψ(D₁ ∧ ⋯ ∧ D_n) = [D₁ ∪ ⋯ ∪ D_n]` as an isomorphism of graded
   `R`-algebras over every commutative `k`, which strengthens the brief (it stated the algebra
   isomorphism only for `ℚ ⊆ k`, through `Φ_HKR`). The determinant cocycle class is `n!·Ψ`, and
   this identity holds for every commutative `R` by graded commutativity (§7.5).
3. **Injectivity of the unnormalised map.** The brief asks for injectivity "for `n ≤` the rank of
   `Ω¹` where `Ω¹` is free". The design proves injectivity whenever `Ω¹` is finite projective,
   with no rank condition (for `n` above the rank, `T^n = 0`).
4. **Misdescribed locators in the brief.** HKR62 Theorem 7.1 (line 893) is a resolution of `R` over
   the algebra of differential operators `V_R`, not a Koszul bimodule resolution; it is not cited.
   Ginz05 Proposition 9.4.1 (line 2216) is the formality of `ı*ı_*O_X`, not a statement about
   polynomial algebras; the design cites Ginz05 Lemma 9.3.1 (line 2187) and HKR62 lines 268–279
   (the Koszul resolution inside the proof of Theorem 3.1) instead.
5. **A sign in Ginz05 (6.6.3).** With the coboundary of Ginz05 line 1058, the printed identity at
   line 1368 fails at `p = q = 1`: for `f = g = ∂` on `k[x]`, the left side is `2∂a ∂b` while the
   printed right side is `δ(∂²)(a,b) = −2∂a∂b`. The design uses
   `g ∪ f − (−1)^{pq} f ∪ g = δf ∘ g + (−1)^q (δ(f ∘ g) − f ∘ δg)`, verified by hand at
   `(p,q) = (1,1), (1,0), (0,1), (2,0)` and derived from the brace relation through the dictionary.
6. **`Tor` over `Aᵉ`.** Mathlib's `Tor` (`Mathlib/CategoryTheory/Monoidal/Tor.lean`) needs a
   monoidal category and does not apply to `ModuleCat Aᵉ` for noncommutative `A`. Following
   Mathlib's own `Rep.Tor`, the design defines `Tor^{Aᵉ}_n(M,−)` by left-deriving
   `N ↦ TauCeti.BalancedTensorProduct k Aᵉ M N`.
7. **Ext and Tor need projectivity of `A` over `k`.** The identifications are stated for
   `Module.Projective k A`, where the bar complex is a projective resolution and Mathlib's
   `extMk` and `leftDerived` apply directly. The `k`-flat form of `HH_n ≅ Tor_n` would need a
   lemma computing left derived functors by flat resolutions, which neither library has; it is
   listed as a possible Part II rather than planned here.
8. **The Yoneda comparison is stated up to a universal sign.** §5.3 states that
   `Abelian.Ext.comp (P.extMk f) (Q.extMk g) = s(p,q)·P.extMk (f̃_q ≫ g)` for a strictly commuting
   lift `f̃` and a sign `s(p,q) ∈ {±1}` depending only on `p` and `q`, with `s(p,0) = 1`
   (`CategoryTheory.ProjectiveResolution.extMk_comp_mk₀`). The sign comes from Mathlib's shift
   conventions in `Cocycle.equivHomShift`, which this design did not trace to a closed formula.
   The sign that the bar resolution contributes is computed: the natural lift
   `a₀ f(a₁,…,a_p) ⊗ a_{p+1} ⊗ ⋯` commutes with `b′` only up to `(−1)^p`, so the strict lift carries
   `(−1)^{pi}` and §5.4 reads `θ[f ∪ g] = (−1)^{pq} s(p,q)·Ext.comp(θ[f])(θ[g])`. This is a precise
   statement (existence of a universal sign). Fixing `s` in closed form is part of proving §5.3.
9. **`HH₁(R,R) ≅ Ω¹` on the classical complex** is proved for every commutative `R`, flat or not
   (Ginz05 lines 1914–1926). RefinedTraceMethods §1.9 states `ε₁` on derived chains. The two
   agree for flat `R` through §6.4. The classical complex differs from the derived one for non-flat
   `R` (`𝔽_p` over `ℤ`: classical `HH₂ = 0`, derived `HH₂ = 𝔽_p`), so the variant is not a
   duplicate.
10. **Suppliers trimmed.** DerivedDeRhamCohomology is not a supplier: no statement uses the de Rham
    differential, and `Ω^n` is Mathlib's `⋀[R]^n Ω[R⁄k]` directly. DerivedModuleAlgebra §0.12 is
    not needed either: Mathlib gives `Ω¹` finite presentation
    (`Mathlib/RingTheory/Extension/Cotangent/Basic.lean:521`) and projectivity
    (`Algebra.FormallySmooth.projective_kaehlerDifferential`, `Mathlib/RingTheory/Smooth/Basic.lean:70`).
11. **Consumers.** The brief's consumers (DGAInfinity Layer 8, ZigzagPreprojective Layer 7,
    RefinedTraceMethods §§1.9–1.10, KTheoryFiniteLocalFields §4.0) are all on main or earlier in
    the merge order. Under the single-direction rule they cannot import this roadmap. No later
    roadmap in `merge-order/ORDER.txt` (positions after RefinedTraceMethods, including
    RefinedTraceMethodsPartII) uses Hochschild cohomology. `plan.json` lists no consumers, and the
    README says so.

## Ownership and citations checked

- Main: `TauCetiRoadmap/DGAInfinity/README.md` (Layers 0, 1, 8, read in full for Layer 8 and the
  conventions), `TauCetiRoadmap/DerivedModuleAlgebra/README.md` §0.K.1 and §§0.12–0.14,
  `TauCetiRoadmap/BanachAlgebras/README.md` Layer 6, `TauCetiRoadmap/NoncommutativeGeometry/README.md`
  N1, `TauCetiRoadmap/ZigzagPreprojective/README.md` Layer 7.
- Open pull requests at their heads, through `roadmaps show`: RefinedTraceMethods (§§1.1, 1.9,
  1.10), KTheoryFiniteLocalFields (§4.0), DerivedDeRhamCohomology (Layer 2),
  LanglandsParameterStacks (§1.17).
- `roadmaps grep` over main and all open heads for "Hochschild cohomology", "Hochschild cochain",
  "Hochschild complex", `HH^`, "polyvector", "bar resolution", "Gerstenhaber", "Yoneda product",
  "Yoneda composition", "universal coefficient", "projective homology", "square-zero extension",
  "inner derivation", "Malcev" and "separable algebra". Results: Hochschild objects only in
  DGAInfinity Layer 8 (DG/`A∞`, coefficients in the algebra), BanachAlgebras Layer 6 and
  NoncommutativeGeometry N1 (bounded and scalar variants), KTheoryFiniteLocalFields §4.0 and
  RefinedTraceMethods §1.9 (derived chains, homological HKR), LanglandsParameterStacks §1.17 (uses
  DGAInfinity Layer 8), ZigzagPreprojective Layer 7 (bigraded DG). "polyvector" matches nothing. No
  roadmap owns ungraded complexes with bimodule coefficients, `Ext`/`Tor` over `Aᵉ`, the duality
  lemma, `pairingDual` for finite projective modules, Yoneda products from cocycles on
  resolutions, or the cohomological HKR theorem.
- Board packages: the packages index lists three packages under review (AnalyticNumberTheory,
  LawrenceVenkateshMethod, LogicAndDefinabilityInNumberTheory), none related. Of the board design
  folders, RefinedTraceMethodsPartII was searched for Hochschild cohomology and does not use it.
- General lemmas this roadmap owns because no owner exists: §5.3 (Yoneda product of `extMk`
  classes through a lift), §7.2 (Kronecker bijectivity with projective homology, on top of Tau
  Ceti's universal coefficient sequence), §7.3 (`pairingDual` and projectivity of `⋀^n` for finite
  projective modules), §8.1 (the diagonal of a polynomial ring is a regular embedding). Each is
  stated at the generality its uses need.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere (output
  below). The resolver did not check pinned Lake names on this host. Every backticked Mathlib and
  Tau Ceti name was checked against the pinned sources by a script and by hand; the only names the
  script flagged were the structure field `Algebra.FormallySmooth.projective_kaehlerDifferential`
  (`Mathlib/RingTheory/Smooth/Basic.lean:70`), `CategoryTheory.ProjectiveResolution.extMk_comp_mk₀`
  (`Mathlib/CategoryTheory/Abelian/Projective/Ext.lean:221`),
  `CategoryTheory.ShortComplex.ShortExact.homology_exact₁`
  (`Mathlib/Algebra/Homology/HomologySequence.lean:298`) and `TrivSqZeroExt.algebra'`
  (`Mathlib/Algebra/TrivSqZeroExt/Basic.lean:852`). All exist; the script's pattern missed fields,
  subscripts and primes.
- The README backticks only pinned Mathlib and Tau Ceti names. Planned names of this roadmap
  (namespace `HochschildHKR`) appear only in `plan.json`; none coincides with a declaration name of
  a roadmap that could be read.

### Pinned declaration evidence (Mathlib `f6090c70…`, Tau Ceti `358314d4…`)

- `exteriorPower.pairingDual`, `pairingDual_ιMulti_ιMulti`: `Mathlib/LinearAlgebra/ExteriorPower/Pairing.lean:64,71`
  (value `det(f_j(v_i))`); `exteriorPower.bijective_pairingDual`:
  `Mathlib/LinearAlgebra/ExteriorPower/Basis.lean:181`, under `[Module.Free R M] [Module.Finite R M]`
  only; no `Module.Projective` instance for `⋀[R]^n` exists at the pin.
- `Algebra.Smooth`: `Mathlib/RingTheory/Smooth/Basic.lean:539` (formally smooth and
  `FinitePresentation` as an algebra); `Algebra.Smooth.flat`: `Mathlib/RingTheory/Smooth/Flat.lean:57`.
- `Derivation` requires `CommSemiring A` (`Mathlib/RingTheory/Derivation/Basic.lean:45`; its docstring
  lists bimodule derivations as future work), hence the bimodule derivations of §3.3.
- `KaehlerDifferential.linearMapEquivDerivation`: `Mathlib/RingTheory/Kaehler/Basic.lean:355`.
- `CategoryTheory.ProjectiveResolution.extMk`, `extMk_surjective`, `extMk_eq_zero_iff`,
  `extMk_comp_mk₀`: `Mathlib/CategoryTheory/Abelian/Projective/Ext.lean:134,211,196,221`. The file's
  TODO notes that functoriality in the first variable is missing, so composition of two `extMk`
  classes is §5.3's job.
- `CategoryTheory.Abelian.Ext.eq_zero_of_projective`: `Mathlib/Algebra/Homology/DerivedCategory/Ext/EnoughProjectives.lean:97`.
- `AlgebraicTopology.DoldKan.homotopyEquivNormalizedMooreComplexAlternatingFaceMapComplex`:
  `Mathlib/AlgebraicTopology/DoldKan/HomotopyEquivalence.lean:81`;
  `DegeneraciesVanish`, `degeneraciesVanish_iff_QInfty_f_comp`:
  `Mathlib/AlgebraicTopology/DoldKan/Degeneracies.lean:148,176`;
  `AlgebraicTopology.alternatingCofaceMapComplex`: `Mathlib/AlgebraicTopology/AlternatingFaceMapComplex.lean:344`.
- `TensorProduct.Algebra.module`: `Mathlib/RingTheory/TensorProduct/Basic.lean:569` (not an
  instance); `Module.Projective.tensorProduct`: `Mathlib/Algebra/Module/Projective.lean:239`
  (works for a noncommutative `Semiring R` with `Algebra R₀ R`); `TrivSqZeroExt.algebra'`:
  `Mathlib/Algebra/TrivSqZeroExt/Basic.lean:852`; `ModuleCat.Algebra.instLinear` (scoped):
  `Mathlib/Algebra/Category/ModuleCat/Basic.lean:439`; `ComplexShape.embeddingDownNat`:
  `Mathlib/Algebra/Homology/Embedding/Basic.lean:225`.
- Group-cohomology template: `groupCohomologyIsoExt` and `Rep.Tor`
  (`Mathlib/RepresentationTheory/Homological/GroupCohomology/Basic.lean:203`,
  `.../GroupHomology/Basic.lean:97`), the latter defined because the monoidal `Tor` does not apply.
- Tau Ceti: `TauCeti.BalancedTensorProduct` (`TauCeti/LinearAlgebra/TensorProduct/Balanced/Basic.lean:48`),
  `lid`, `rid` (`.../Unit.lean:45,82`), `outerFactors` (`.../OuterFactors.lean:88`);
  `TauCeti.ChainComplex.kronecker`, `kronecker_surjective_of_isSplitMono`
  (`TauCeti/Algebra/Homology/Kronecker.lean:104,281`); `extToHomology`,
  `exact_extToHomology_kronecker` (`TauCeti/Algebra/Homology/UniversalCoefficient/Basic.lean:122,181`);
  `TauCeti.derivationLieAlgebra`, `TauCeti.innerDerivation` (`TauCeti/Algebra/Lie/Derivation/Basic.lean:118`,
  `z ↦ ⁅z,−⁆`); `TauCeti.AInfinityAlgebra` (`TauCeti/Algebra/Homology/AInfinity/Algebra.lean:65`);
  `CategoryTheory.ProjectiveResolution.extLinearEquiv`, `isoExt_hom_comp_homologyMap`
  (`TauCeti/Algebra/Homology/Ext/ProjectiveResolution.lean:107,65`).
- The pinned Tau Ceti has no Hochschild cochain or brace file (`TauCeti/Algebra/Homology/AInfinity/`
  and `TauCeti/LinearAlgebra/TensorCoalgebra/` were listed). DGAInfinity's STATUS mentions such files
  at a later Tau Ceti. DGAInfinity Layers 0 and 8 are therefore cited by section only.

### Notions moved down

None. Every input is in the pinned libraries, on main, or in a roadmap earlier in the merge order
(DGAInfinity and DerivedModuleAlgebra on main; KTheoryFiniteLocalFields and RefinedTraceMethods at
positions 70 and 312).

### Proposed continuations and gaps

- **Gap `smooth-hkr-antisymmetrisation`** (supplier RefinedTraceMethods, §1.9). RefinedTraceMethods
  §1.9 names `ε_n` and proves `π_n ε_n = n!` and `ε₁` an isomorphism. KTheoryFiniteLocalFields §4.0
  asserts `HH_n(A/k) ≅ Ω^n_{A/k}` for smooth `A` without naming the map. Neither states that `ε_n`
  itself is an isomorphism over every commutative base, and in characteristic `p ≤ n` this does not
  follow from `π_n ε_n = n!`. §6.4(d) and §7.6 use it. Layer 8 proves the polynomial case
  independently.
- **Possible "HochschildHomologyAndHKR, Part II"** (not planned here): `HH_n ≅ Tor_n` for `k`-flat
  `A` through flat resolutions; the cohomological HKR theorem without `k`-projectivity (for
  instance by étale localisation of Hochschild cohomology); Morita invariance of the ungraded
  complexes with bimodule coefficients; the Hodge (λ-) decomposition in characteristic zero.

## Sources read and unavailable sources

- Certified, read in the cache: HKR62 (Theorems 3.1, 5.1, 5.2, 7.1; Lemma 4.1; lines 284–582 in
  full), Ginz05 (§§3.1, 4.2–4.5, 5.1–5.7, 6.6, 8.1, 9.1–9.4), AV20 (lines 40–100, 225–250),
  StacksSmooth (manifest entry; Tags 00T2/00TN as Mathlib's docstring cites them).
- Uncertified, cited by section-level locator only, numbering not verified: Loday98 (§§1.1, 1.3,
  1.5, 3.2, 3.4; Theorem 3.4.4, and Proposition 1.3.16 only as AV20 line 241 cites it), Weibel94
  (§§9.1–9.4, Theorem 9.4.7), CE56 (Chapters IX and XI), Ger63 (§7), Mat86 (§25). Every claim that
  cites one of them also cites a certified source or is proved by the stated route.
- Ger64 was removed from the manifest. The design does not cite it: the deformation reading of
  `HH²(A,A)` is DGAInfinity Layer 8's and is cited by section.
- No suspicious instruction was found in any roadmap, pull-request text or source read.

## Adversarial mathematics pass

Values computed by hand. They check signatures and conventions; they do not prove the general
targets.

| Statement | Instances tried and values computed | Result | Change |
| --- | --- | --- | --- |
| Convention `b` | `A=M=Mat₂(k)`: `b(E₁₂⊗E₂₁)=E₁₂E₂₁−E₂₁E₁₂=E₁₁−E₂₂`; commutative: `ma−am=0`; `A=M=k`: `b_n=Σ_{i=0}^n(−1)^i` = 1 (n even ≥2), 0 (n odd) | consistent with Ginz05 l.973–976 | wrap-around variant `m a_n` recorded as negative Check |
| Convention `δ` | `δm(a)=am−ma`; `δδm(a,b)=a(bm−mb)−(abm−mab)+(am−ma)b=0`; wrong-sign variant gives `2(mab−amb)`, at `m=E₁₁,a=E₁₂,b=E₂₂`: `mab=E₁₂`, `amb=0` → `2E₁₂` | consistent with Ginz05 l.1055–1062 | first draft said `−2E₁₂`; corrected to `2E₁₂` |
| Convention ad/inner sign | Ginz05 l.404 `ad m: a↦ma−am`; l.1081 `a↦am−ma`; Tau Ceti `innerDerivation E₁₁ (E₁₂)=E₁₂`, `δE₁₁(E₁₂)=E₁₂E₁₁−E₁₁E₁₂=−E₁₂` | opposite signs, same image | sign Check in §3.3 |
| Convention `∪` | `(∂_x∪∂_y)(x,y)=1·1=1`; `(∂_y∪∂_x)(x,y)=∂_y(x)∂_x(y)=0` | noncommutative on cochains | — |
| Dictionary `Θ(δf)=(−1)^{n+1}[m,Θf]` | n=0: `m{Θx}(sa)=s(xa)−s(ax)` (Koszul sign `(−1)^{(−1)(−1)}`), `Θx{m}=0`, `Θ(δx)=s(ax−xa)` → −1; n=1: `[m,Θf]=s(f(a)b+af(b))−s(f(ab))=Θ(δf)` → +1; general n from `m{F}`, `F{m}` expansion | holds at n=0,1 and in general | — |
| Dictionary `Θ(f∪g)=(−1)^{p(q−1)}m{Θf,Θg}` | (1,0): moving `Θy` (deg −1) past `sa` (deg −1): `−s(f(a)y)`; (1,1): `(−1)^0=+1` | holds | — |
| Brace = Gerstenhaber composition | sign `(−1)^{|G|·(i−1)·|sa|}=(−1)^{(q−1)(i−1)}` equals Ginz05 (6.6.2) l.1363 | holds | — |
| 1.1 chains | `A=M=k`: HH₀=k, HH_n=0 (n≥1); without `d_n`: `b₁=id`, HH₀=0 | definition discriminates | — |
| 1.2 cochains | `A=M=k`: `δ:C^n→C^{n+1}` multiplication by `Σ_{0}^{n+1}(−1)^i`=1 (n odd), 0 (n even) → HH⁰=k, HH^n=0 | holds | — |
| 1.3 functoriality | identity algebra map: identity on chains `m⊗a↦m⊗a`; composition `ψφ` | holds | — |
| 1.4 long exact sequences | `k`-split case: `Hom_k(A^{⊗n},−)` and `−⊗A^{⊗n}` exact on split sequences; flat/projective `A`: exactness of `−⊗A^{⊗n}` / `Hom(A^{⊗n},−)` | hypotheses sufficient | necessity not claimed |
| 1.5 R-linearity | `b(rm⊗a)=rma−arm=r(ma−am)` (R comm.); for any bimodule (not only symmetric) | holds; the brief's "symmetric" is not needed | scope sentence changed to any bimodule |
| 1.5 Check | `x·` on first algebra factor: `b(1⊗x⊗1)=x⊗1−1⊗x+1⊗x=x⊗1`; `x·b(1⊗1⊗1)=x·(1⊗1)=1⊗x` | incompatible as stated | first draft of the Check miscomputed; replaced |
| 2.1 normalised chains | `b(m⊗1⊗1)=m⊗1−m⊗1+m⊗1=m⊗1`; `A=k`: `Ā=0`; `b(1⊗x⊗x)=x⊗x−1⊗x²+x⊗x` | holds; non-unit span not a subcomplex | — |
| 2.2 normalised cochains | `D(1)=2D(1)⇒D(1)=0`; `δg(1,1)=g(1)−g(1)+g(1)=1` for `g(1)=1` | holds | — |
| 3.1 HH₀ | Mat₂: `[E₁₂,E₂₂]=E₁₂`, `[E₁₂,E₂₁]=E₁₁−E₂₂` span trace zero → HH₀≅k | holds | — |
| 3.2 HH⁰ | Mat₂: `E₁₁E₁₂−E₁₂E₁₁=E₁₂≠0`, centre `k·1` | holds | — |
| 3.3 HH¹ | `k[x]`: `D↦D(x)` bijective; Mat₂: HH¹=0 (separable over every `k`); `id(1)=1≠0` | holds | — |
| 3.4 HH₁≅Ω¹ | `R=k[x]/(x²)`: `Ω¹=R dx/(2x dx)` → dim 2 over 𝔽₂, 1 over ℚ; `𝔽_p/ℤ`: `C_n=𝔽_p`, `b₂=1`, HH₁=0=Ω¹; `b(1⊗a⊗c)=a⊗c−1⊗ac+c⊗a` gives Leibniz | holds without flatness | — |
| 3.5 twisted extension | unit: cocycle at (1,1,a): `f(1,a)−f(1,a)+f(1,a)−f(1,1)a=0`; `(1,−f(1,1))(a,m)=(a,m−f(1,1)a+f(1,a))=(a,m)`; associativity ⇔ `f(a,b)c+f(ab,c)=af(b,c)+f(a,bc)`; coboundary map: `f'=f−δg`; `k[x]/(x²)`, `f(x,x)=1`: `t²=(0,1)`, `t³=(0,ε(x))=0`; `f(x,x²)=1`: `(x³,0)` vs `(x³,1)` | holds | coboundary direction fixed as `f−δg` |
| 3.6 classification | `ℤ/4→𝔽₂` over `ℤ`: `C^n=𝔽₂`, `δ¹=id` → HH²=0 but non-split, not ℤ-split; `k[t]/t³`: section `x↦x+ct²` has square `t²≠0` | `k`-split hypothesis needed | negative Check added |
| 4.1 Aᵉ-action | `(E₁₂⊗op E₂₁)E₂₂=E₁₂E₂₂E₂₁=E₁₁`; `bma=E₂₁E₂₂E₁₂=0` | convention pinned | — |
| 4.2 bar resolution | `(hb′+b′h)(a₁⊗a₂)=1⊗a₁a₂+(a₁⊗a₂−1⊗a₁a₂)`; `(b′h+hμ)(a₀⊗a₁)=a₀⊗a₁`; `A=k`: exact; `h(x⊗1)=1⊗x⊗1≠x⊗1⊗1` | holds; `h` only `k`-linear | degree-zero identity reworded |
| 4.3 Hom(Bar,M)≅C^• | `(φ∘b′)(1⊗a₁⊗⋯⊗a_{n+1}⊗1)=a₁f(a₂..)+Σ(−1)^i f(..a_ia_{i+1}..)+(−1)^{n+1}f(a₁..a_n)a_{n+1}=δf` | no sign | — |
| 4.4 HH≅Ext | `k=ℤ`, `A=ℚ`: `Aᵉ=ℚ`, both sides 0 in positive degrees (ℚ not ℤ-projective; hypothesis sufficient, not necessary) | consistent | — |
| 4.5 Tor | `M⊗_{Aᵉ}(a₀⊗a₁⊗a₂)=a₂ma₀⊗a₁` (Ginz05 l.966); `Tor₀(Mat₂,Mat₂)=k`; left action not a right action: `E₂₁E₁₂=E₂₂` vs `E₁₁` | holds | — |
| 5.1 cup | reversed product `x⋆y=yx` in degree (0,0,0): `(x⋆y)⋆z=z(yx)`, `x⋆(y⋆z)=(zy)x`, equal, so it is associative; Leibniz defect of the reversed product with `x=E₁₁`, `g=id`, `(a,b)=(E₂₁,E₁₂)`: `E₁₂E₂₁E₁₁ − E₁₂E₁₁E₂₁ + E₂₁E₁₂E₁₁ − E₂₁E₁₁E₁₂ = E₁₁ − 0 + 0 − E₂₂` | the drafted "fails associativity" Check was false | Check replaced by the Leibniz defect |
| 5.2 Leibniz | p=q=1: `δ(f∪g)(a,b,c)=af(b)g(c)−f(ab)g(c)+f(a)g(bc)−f(a)g(b)c=(δf∪g−f∪δg)`; p=0: `δ(x∪g)=δx∪g+x∪δg` | holds | — |
| 5.3 Yoneda via lifts | q=0: `extMk_comp_mk₀`, `f̃₀≫g=f≫ḡ` → `s(p,0)=1` | holds where checkable | general sign left universal |
| 5.4 cup=Yoneda | natural lift: `f̃₀∘b′=(−1)^p b′∘f̃₁` (computed: inner terms give `(−1)^p a₀ f a_{p+1}⊗…` by `δf=0`) | strict lift needs `(−1)^{pi}` | statement changed to `(−1)^{pq}s(p,q)` |
| 6.1 cochain comparison | witnesses above; `{f,g}` on C¹ is `fg−gf` | holds | — |
| 6.2 homotopy formula | (1,1) with `f=g=∂`: LHS `2∂a∂b`, RHS `−δ(∂²)=−(a∂²b−∂²(ab)+∂²a b)=2∂a∂b`; (1,0),(0,1),(2,0) direct; Ginz05 (6.6.3) gives `−2∂a∂b` | holds; source misprint | recorded as source issue |
| 6.3 chain comparison | `𝔽_p/ℤ`: classical HH₂=0 vs derived 𝔽_p (RefinedTraceMethods §1.10) | flatness needed | Check added |
| 6.4 antisymmetrisation | `k[x,y]`: `ε₂(dx∧dy)=1⊗x⊗y−1⊗y⊗x`, `π₂ε₂=dx∧dy−dy∧dx=2dx∧dy`; `k[x]/(x²)`: Ω²=0, HH₂ ⊇ `ann(2x)` or all of `R` ≠ 0 | holds | — |
| 7.1 duality | `F∘b(r₀⊗…⊗r_{n+1})=r₀δf(r₁..)`, wrap term `(−1)^{n+1}r_{n+1}r₀f(..)` matches by symmetry; non-symmetric `k` (x acts 1 left, 0 right): `δm(x)=m`, transpose of `b₁=0` | symmetric needed | — |
| 7.2 duality lemma | `ℤ--2-->ℤ`: H¹(Hom)=coker(2)=ℤ/2, Hom(H₁,ℤ)=0; degree 0: `H⁰=Hom(X₀/B₀,M)` | hypothesis needed | — |
| 7.3 pairingDual | `R²`: det(I)=1; retract squares checked on `ιMulti`: `det((f_j∘p)(v_i))=det(f_j(p v_i))`; `R^{(ℕ)}`: infinite-rank form not in image | holds; finiteness needed | — |
| 7.4 polyvectors | `k[x,y]`: `τ₂(∂_x∧∂_y)(dx∧dy)=det(I)=1`; `𝔽₂[x]`: `∂∧∂=0`; `𝔽₂(u)[a]/(a²−u)`: `D(a²−u)=2aD(a)=0`, Der free rank 1, T²=0 | holds | — |
| 7.5 determinant cocycle | `⟨∂_x,∂_y⟩(x,y)=1`, `(y,x)=det[[0,1],[1,0]]=−1`; n=2 multiderivation cocycle: `f(ab,c)=af(b,c)+bf(a,c)`, `f(a,bc)=bf(a,c)+cf(a,b)` → δf=0; char 2: `δ(∂_x∂_y)(a,b)=−(∂_xa∂_yb+∂_ya∂_xb)=⟨∂_x,∂_y⟩(a,b)`; `[⟨D⟩]=n![D₁∪…]` from anticommuting degree-one classes | holds | class identity added for all commutative `R` |
| 7.6 HKR | 𝔽₂[x,y]: pairing `⟨∂_x,∂_y⟩` with ε gives `1−(−1)=2=0`, `∂_x∪∂_y` gives `1−0=1`; `ℤ[1/2]`: `C^n=ℤ[1/2]`, `δ` alternates id/0 → HH^n=0, Der=0; inseparable: Hom of periodic resolution `R--0-->R--2a-->R--0-->…`, HH²=R/(2a)=R≠0, T²=0; `R=k`: all zero; rank: `k[x]`: HH²=Hom(Ω²,R)=0 | holds; both hypotheses exercised | `Module.Projective k R` added (correction 1) |
| 8.1 regular sequence | m=0: kernel 0; m=1: `X−Y` nonzerodivisor in `k[X,Y]`; `k[x]/(x²)`: `(x⊗1−1⊗x)(x⊗1+1⊗x)=x²⊗1−1⊗x²=0` | holds | — |
| 8.2 Koszul resolution | m=1: `0→Rᵉ→Rᵉ→R→0`; `d(e₁∧e₂)=t₁e₂−t₂e₁` (degree −1 derivation sign of §0.K.1) | holds | — |
| 8.3 comparison ι | j=1: `b′(1⊗X_i⊗1)=X_i⊗1−1⊗X_i=t_i`; j=2: `b′(ι(e₁∧e₂))=X₁⊗X₂⊗1+1⊗X₁⊗X₂−X₂⊗X₁⊗1−1⊗X₂⊗X₁`, and `t₁(1⊗X₂⊗1)−t₂(1⊗X₁⊗1)` gives the same four terms | chain map | — |
| 8.4 polynomial basis | `ι*` of `∂_{i₁}∪…∪∂_{i_n}` at `e_J`: `Σ_σ sgn σ Π ∂_{i_l}(X_{j_{σ(l)}})=det(δ_{i_l j_r})=δ_{IJ}` | dual bases | — |
| 8.5 Jacobian | m=2, `(X₁²,X₂)`: `det[[2X₁,0],[0,1]]=2X₁`, normalised `gX₁`; m=1: `g∂`; 𝔽₂: coboundary | holds | — |

Note on the §5.1 Check: the reversed product `(f ⋆ g)(a) = g(a_{p+1},…) f(a₁,…)` is associative
(it is the cup product of `Aᵒᵖ`), so a draft Check claiming that it fails associativity was false.
The README Check now uses the Leibniz defect computed in the table, which does separate the two
products.

### Check-to-target consistency

- §5.1 Checks versus §6.2: `(∂∪∂)(x,x) = 1` and `[∂∪∂] = 0` agree with `∂∪∂ = −δ(∂^{[2]})`,
  `−δ(∂^{[2]})(x,x) = −(x·0 − 1 + 0·x) = 1`.
- §7.5 Checks versus §7.6(3): over `𝔽₂`, `[⟨∂_x,∂_y⟩] = 2Ψ = 0` agrees with
  `⟨∂_x,∂_y⟩ = δ(∂_x∂_y)`.
- §3.4 Checks versus §6.3 Checks: classical `HH₁(𝔽_p/ℤ) = 0 = Ω¹` and classical `HH₂(𝔽_p/ℤ) = 0`;
  the derived `HH₂ = 𝔽_p` is attributed to RefinedTraceMethods §1.10, not to the classical complex.
- §8.4 versus §7.6: for polynomial algebras both give `HH²(k[x,y])` free on `[∂_x∪∂_y]`.

## Mechanical validation

`plan.json` was generated by a script and parsed. It has 8 layers and 37 targets. Every
prerequisite has one of the prefixes `mathlib:`, `tauceti:`, `roadmap:`, `target:` or `gap:`; every
`target:` reference points to an earlier target; every target has a source key and a locator; every
definition has at least three tests; the single `gap:` reference resolves to the gaps entry with
`needs`, `supplier` and `section`. `sources.toml` parses as TOML and has 9 entries.

Citation resolver:

```text
## Cross-roadmap citations found nowhere

None.

## Lean names found nowhere

None.

Lean names outside TauCetiRoadmap were not checked: no pinned Lake packages on this host.
```

Dependency check, with candidate `packages/HochschildHomologyAndHKR/design/README.md` and
`merge-order/ORDER.txt`:

```text
candidate: HochschildHomologyAndHKR is not in the merge order yet; checked as if placed after RefinedTraceMethods (the intake inserts it when its design is accepted)
depcheck: 242 roadmaps, 2365 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. No merge-order file, supplier roadmap, cached source or content
file was edited.
