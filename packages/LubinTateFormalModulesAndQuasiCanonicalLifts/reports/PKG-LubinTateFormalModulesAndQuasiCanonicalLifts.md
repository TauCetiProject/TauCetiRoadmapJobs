# PKG-LubinTateFormalModulesAndQuasiCanonicalLifts

Deliverables: `packages/LubinTateFormalModulesAndQuasiCanonicalLifts/README.md`, `Suggested.lean`,
`metadata.toml` (`topic = "math.NT"`, as on main), `sources.toml`. `design/plan.json` is unchanged:
its `gaps` list stays empty, because every input the package uses is stated by its supplier (checked
below).

Inputs. The accepted review is the `review` block of `design/plan.json` (status `accepted`); there
was no separate `design/review.json` and the `reports/` folder was empty. The review's seven node
corrections (formal-hom API, the `ℚ(i)` tangent test, the `FormalGroup.Point` versus evaluated-point
test, the explicit Eisenstein tower in primitive-division, the scope note on H70 Theorem 9, the
boundary-test status of the ramified Honda example, the Galois-closure construction of the formal
trace) are carried into the README.

## Headline theorems

| Headline | Status |
| --- | --- |
| Lubin–Tate theorem: a Lubin–Tate series is an endomorphism of a unique formal group law, which is commutative (LT65 Thm 1) | stated: `exists_formalGroup_of_isLubinTateSeries` |
| Lubin–Tate interpolation of homomorphisms `[a]_(f,g)` (LT65 Lemma 1, arity one) | stated: `existsUnique_lubinTate_intertwiner` |
| Degree `(q−1)q^(m−1)` and splitting of the Lubin–Tate division fields (LT65 Thm 2) | stated (Lubin–Tate polynomial form): `finrank_adjoin_primitive_lubinTate_root` |
| Norm group `π^ℤ × U(K,m)` of the division fields under the arithmetic Artin map (LT65 Thm 3, corollary) | stated against `TauCeti.ClassFieldTheory.artinMap`: `artinMap_fixes_lubinTate_roots_iff` |
| Formal group of an elliptic curve over `W(𝔽_(p²))` with `a_(p²) = 2sp` is Lubin–Tate for `sp` (H70 Thm 9 / BKO21 Lemma 5.1, corrected sign) | stated: `exists_lubinTate_endomorphism_formalGroup` |
| Unit formula `χ_π(Art(π^r u)) = u⁻¹`, `Gal(K_π/K) ≅ O_K^×`, Tate-module freeness | not statable: no carrier of points of a general formal group over maximal ideals of finite extensions (Mathlib `FormalGroup.Point` is power-series valued; Tau Ceti's evaluated points are Weierstrass-only), so `[a]_f(t)` cannot be formed |
| Universal finite-height deformation over `B[[t₁,…,t_(h−1)]]` (LT66, VZ07) | not statable: no formal-group homomorphisms/isomorphisms at the pins, hence no marked deformation functor |
| Honda functional-equation integrality and type `p − sT²` | not statable: no Frobenius-skew power-series ring `O_σ[[T]]` |
| Quasi-canonical classification, fields of moduli = ring class fields, degrees, modulus is a uniformizer (G86, Y95) | not statable: no lattice-quotient formal modules, markings or fields of moduli |
| BKO tower comparisons and the trace-compatible square | not statable: need quasi-canonical fields and formal traces on evaluated points |

The file contains only these five theorems and the two predicates `IsLubinTateSeries`,
`IsLubinTatePolynomial` (real bodies on Mathlib carriers). No sorry'd data, no `set_option`, one
`import Mathlib` plus three Tau Ceti modules that exist at the pin
(`TauCeti.AlgebraicGeometry.EllipticCurve.FormalGroup.Basic`,
`TauCeti.NumberTheory.ClassFieldTheory.Local.ArtinMap`,
`TauCeti.NumberTheory.LocalField.UnitFiltration.Basic`).

## Elaboration

`lake env lean <Suggested.lean>` from the content checkout, after `lake build` of the three Tau Ceti
modules (their object files were missing): exit 0, exactly **5** warnings `declaration uses
'sorry'` (lines 76, 90, 111, 126, 148), no other message.

`#check @name` for all seven declarations was elaborated in one scratch file and compared with the
README statements: every hypothesis is in each declaration's own signature (`[IsDomain O]
[IsDiscreteValuationRing O] [Finite (IsLocalRing.ResidueField O)]` and `Irreducible π` in Layer 1;
`[IsNonarchimedeanLocalField K] [CharZero K]` in Layer 2). Nothing changed as a result. A scratch
`rfl` check confirmed that the `Algebra 𝒪[K] (AlgebraicClosure K)` instance used by `aeval` is
`AlgebraicClosure.instAlgebra`, i.e. the composite through `K`.

The gate was also run locally on a scratch copy of the folder: every counter is 0
(`readme-ids-missing=0`, `imports=0`, `sorry-data=0`, `latex=0`, `depcheck=0`, `metadata=0`, …);
the only failure was `git`, because the scratch copy was not a git worktree.

## Dependency check

```
depcheck: 56 roadmaps, 642 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. Suppliers: BordismFormalGroups, EllipticCurves, ModularCurves,
ClassFieldTheory, LocalFieldsRamification (main) and FiniteFlatGroupsAndIntegralPadicHodgeTheory
(merge order 52, this roadmap 53). `roadmaps resolve` reports no cross-roadmap citation and no Lean
name found nowhere; library names were additionally checked with one `#check` file at the pins
(Mathlib `6b7abb3`, Tau Ceti `a91d3aa`), all found.

## Duplication sweep (removals and narrowed targets)

- **LT.0/formal-hom deleted.** Homomorphisms, isomorphisms, strict isomorphisms, inverse series and
  base change are BordismFormalGroups §F1 (main); `FormalLieGroup.Hom`/`End` with ring structure and
  `FormalLieGroup.ofFormalGroup` are FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.12. Cited in
  Scope and the supplier contracts; its Checks moved to §0.1.
- **LT.0/formal-log deleted.** The normalized logarithm/exponential over `ℚ`-algebras with
  uniqueness, base change and coordinate change is BordismFormalGroups §F1; the elliptic instance is
  EllipticCurves Layer 1. Only `ℓ∘[a] = aℓ` and `ℓ_G∘φ = c·ℓ_F` remain, as API of §0.1.
- **LT.0/adic-points narrowed.** The evaluated point carrier is BordismFormalGroups §F1 and
  `FormalLieGroup.Points` (§R07.1.12); §0.2 keeps the `A`-module structure, Galois action and the
  Tau Ceti elliptic comparisons.
- **LT.3 (coefficient algebra, cocycles, universal deformation) kept as variants.** BordismFormalGroups
  §F1 owns the Lazard ring and symmetric cocycle lemma, §F5 the universal deformation ring of a
  formal group over a perfect field; §§3.2–3.6 differ by the `O_K`-action, arbitrary residue field and
  specified coefficient ring, and say so.
- **LT.2 torsion/Tate module kept as variants** of `BarsottiTate.equivFormalLieGroup` and
  `BarsottiTate.tateModule` (π-adic with `O_K`-action).
- **LT.5 lattice quotient narrowed.** The underlying `p`-divisible quotient and its Tate-lattice
  sequence are `BarsottiTate.quotientFiniteFlatSubgroup` (§R07.1.20a); schematic closure is
  `schematicClosure_flat` (§R07.1.20). §5.2 keeps the formal `O₀`-module structure, the Serre-product
  coordinate and the Frobenius-twisted marking.
- No other overlap found: ClassFieldTheory (main and both open revisions) explicitly excludes
  Lubin–Tate theory; ColemanPowerSeries excludes general Lubin–Tate interpolation; LocalFieldsRamification
  has no formal groups.

## Ownership against open work

Searched by object (Lubin–Tate, formal `O`-module, Honda, quasi-canonical, canonical lift, Krasner)
with `roadmaps grep` over main and all open roadmap pull requests, and in the board's packages.
Later roadmaps that restate parts of this material (they come after this roadmap in the merge order,
so this roadmap is the owner): GrossZagierAndArithmeticHeights §7.2 (constructs quasi-canonical
lifts), EndoscopicTransferAndUnitaryTraceComparison §12 (formal `O_E`-module deformations with
Drinfeld level), VectorBundlesAndIsocrystals VB3 (`G_LT`), FunctionFieldArithmetic §4.1 (cites
the design's *formal-hom* target, now BordismFormalGroups §F1). They are listed under Downstream
consumers. No declaration of `Suggested.lean` reuses a qualified name of another roadmap.

Consumer gap answered: AnticyclotomicLocalUnits declares `gap:formal-point-completion-realization`
on this roadmap (realize `Φ` and its finite extensions as height-one completions of number fields,
transporting the elliptic model and Tau Ceti's formal-point homomorphism compatibly with inclusions).
This is not stated by any supplier (ArithmeticGaloisDuality §R02.4.6 uses Krasner plus weak
approximation only inside a proof sketch), so it is the new target **§0.4**, with API and Checks.

## Corrections to the design

1. **Pins.** The design read Mathlib `082e2d3`/Tau Ceti `f790474`; the package is written against the
   actual pins `6b7abb3`/`a91d3aa`. `PowerSeries.subst_substInvOfIsUnit_left` (design name) is cited
   as `PowerSeries.substInvOfIsUnit`, `PowerSeries.subst_substInv_left`, `PowerSeries.subst_substInv_right`,
   which exist at the pin.
2. **Layer 1 generality.** The design fixed `K/ℚ_p`. LT65's coefficient induction needs only a
   discrete valuation ring with finite residue field and an irreducible `π` (no completeness, any
   characteristic); README and Lean are stated at that generality. Layer 2 stays in characteristic
   zero as designed (FunctionFieldArithmetic §4.1 adds equal characteristic).
3. **Layer 4 generality.** The design imposed `p ≥ 5` on the unramified Honda comparison and the
   elliptic comparison. Honda's (F)/(F1) results carry no restriction on `p` (H70, conditions at
   source lines 309 and 508; Theorem 4 at line 607; Lemma 4.2 at line 738), and the Lubin–Tate
   structure follows from §1.3 recognition once `[sp]` reduces to `X^q`. §§4.3–4.4 and the Lean
   statement hold for every prime; `p ≥ 5` remains only in the BKO layers 7.3–9.
4. **Source erratum kept, rephrased timelessly** inside §4.3: BKO21 Lemma 5.1(ii) prints type
   `p + sT²`/parameter `−sp`; correct is `p − sT²`/`sp` (checked again: `(p+T²)⋆ℓ_(−1) = pX`,
   `(p−T²)⋆ℓ₁ = pX`).
5. **Consumers.** UnitaryKudlaRapoportCycles (design) is not a roadmap anywhere and is dropped;
   FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII does not consume this roadmap; added the verified
   consumers NonordinaryCMSpecialValues and ComplexMultiplicationAndExplicitReciprocityPartII.
6. Several Checks were recomputed and corrected while writing (e.g. the reduction of `[1+p]` on
   `𝔾̂_m` is `X + X^p + X^(p+1)`, not `X + X^p`; the infinite-height rigidity counterexample is `εX^q`,
   not `εX^p`; the type-sign test uses `j = 2`, since at `j = 1` the value `−2` lies in `2ℤ_2`; the
   inward neighbour line is the image of `p⁻¹T`).
7. Notions moved down from later roadmaps: none needed.

## What the README could not support

Nothing of the design was dropped except the duplicated targets above. Statements resting on LT65
cite it by locator only (paywalled, recorded `uncertified`); the review had verified those
locators. The claim in §7.5 that `[−p]_(H_1)` fails the congruence modulo `p` (design acceptance
text) was not verified and was replaced by the computed statement (residual hypothesis holds; the
base is ramified and `−p` is not a uniformizer).

## Sources

Fetched through the service: LT66, VZ07, Y95 (Numdam), G86 (GDZ, OCR), H70 (J-STAGE,
`publisher-open`), H68 (Osaka institutional repository). BKO21: the delivery URL now redirects to an
expiring storage host outside every licence class; recorded `certified/institutional` from the
service's cached copy (sha256 `77ff3290…`, fetched 2026-10-23 from CaltechAUTHORS), as the
AnticyclotomicLocalUnits package does. LT65: only JSTOR (paywalled) — recorded `uncertified` with
DOI and locators. `needs-references.toml` is not needed (both entries the service wrote were settled
as above, and the file was removed). Spot checks: G86 Proposition 5.3 (G86 lines 204–235), Y95
Theorem 1 and Propositions 1–2 (Y95 lines 186–215), Proposition 4 (Y95 lines 305–321).

No fetched or read text contained instructions; nothing suspicious to report.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `IsLubinTateSeries` | `ℤ_p`, `π=p`: `(1+X)^p−1`; `pX`; `πX+X^q+X^(q+1)`; `W(𝔽_(p²))`: `−pX+X^(p²)` vs `π=p` | const 0, lin `p`, red `X^p` ✓; red `0 ≠ X^p` ✗; red `X^q+X^(q+1)` ✗; lin `−p ≠ p` ✗ | definition discriminates | none |
| `IsLubinTatePolynomial` | `πX+X^q`; non-monic `πX+X^q+πX^(q+1)` | monic deg `q` ✓; deg `q+1` ✗ (would add roots outside `𝔪`) | monic/degree needed | none |
| `exists_formalGroup_of_isLubinTateSeries` | `f=(1+X)^p−1`; additive law; `π = ϖ²` (not irreducible); residue `𝔽_(p²)` with `q=p` | `F=X+Y+XY` ✓; `X+Y` has only linear endos in char 0 ✗; division by `π−π^r` fails when error only `ϖ`-divisible; `ā^p ≠ ā` | `Irreducible π` and `q = #k` both needed; uniqueness among all formal group laws holds (LT65 uniqueness has no assoc./comm. input) | none |
| `existsUnique_lubinTate_intertwiner` | `a=0`, `a=1,f=g`; `f=πX+X^q`, `g=f+πX²` | `φ=0`; `φ=X`; `c(π−π²)=π ⇒ c=(1−π)⁻¹` (also for `q=2`) | holds | Check added |
| `finrank_adjoin_primitive_lubinTate_root` | `ℚ_2`, `f=2X+X²`, `m=1,2`; `ℚ_p`, `(1+X)^p−1`; `m=1`, `t=0` | deg `1=q−1`; `X²+2X+2` deg `2`; `(p−1)p^(m−1)`; `t=0` excluded by `f^{∘0}(t)≠0` | holds; `1≤m` and primitivity needed | none |
| `artinMap_fixes_lubinTate_roots_iff` | `m=0`; `ℚ_p`, cyclotomic; `x=π`; `π′=uπ` | `U(K,0)=O^×` so RHS `=Kˣ`, LHS trivially true; `p^ℤ(1+p^mℤ_p)` (local Kronecker–Weber); `π∈⟨ϖ⟩` fixes; `Art(π)` acts on `K_(π′)` by `u` ≠ 1 if `u≢1` | holds for both Artin normalizations (unit formula is the sign test, not statable) | none |
| `exists_lubinTate_endomorphism_formalGroup` | `p=2`, `y²+y=x³`: `Δ=−27`; `s=+1` extremal Hasse; ordinary reduction | `#E(𝔽₂)=3`, `a₂=0`, `#E(𝔽₄)=9 ⇒ s=−1`; `#=(p−1)²`; `[±p]` height 1, leading `X^p ≠ X^(p²)` | holds for every prime (char poly `(T−sp)²`, no nilpotents); not vacuous | `p≥5` dropped vs design |
| §0.1 height under restriction | `F/F₀` degree `n`, `O_F`-height `h` | leading degree `q_F^(he)=q₀^(fhe)=q₀^(nh)` | `nh` | none |
| §0.1 tangent condition | `A=R=ℚ(i)`, `[a]=āX` | lin coeff at `i`: `−i ≠ i` | excluded | Check (review) |
| §0.2 point addition | `𝔾_m`, `x=y=p` | `2p+p²` | ✓ | none |
| §0.3 analytic log | `x=ζ_p−1` | `log ζ_p=0`, `x≠0` | no injectivity claimed | none |
| §0.4 number-field models | `ℚ_p(√u)` odd `p`; `ℚ_2(i)` vs `X²+3` | inert ⇒ completion `L`; split ⇒ `ℚ_p`; `ℚ_2(√−3)` unramified ≠ `ℚ_2(i)` | Krasner bound essential | new target |
| §1.4 comparison | `f=πX+X^q`, `g=f+πX²` | `c=(1−π)⁻¹ ≠ 0` | strict, not `X` | Check corrected |
| §2.1 torsion ranks | `m=0`; `𝔾̂_m`, `m=1`; `W(𝔽_(p²))`, `π=−p`; additive | rank `1`; `p`; `p²` at `π`-level 1 and `p`-height 2; `[π]=0` not finite | finite height needed | none |
| §2.5 unit formula orientation | `ℚ_p`, cyclotomic | `χ_cyc(Art(u))=u⁻¹` = ClassFieldTheory §2.6 | arithmetic convention consistent | none |
| §2.6 twist | `Art(π′)=Art(u)Art(π)` | `χ_π=u⁻¹`, `η_u=u` ⇒ `1`; with `η_u⁻¹`: `u⁻²` | `η_u`, not inverse | none |
| §3.1 strict vs marked | `[1+p]` on `𝔾̂_m` | red `X+X^p+X^(p+1) ≠ X` | strict, not marked | value corrected |
| §3.4 rigidity | infinite height, `k[ε]` | `εX^q` commutes with `āX` (`ā^q=ā`), reduction 0 | finite height needed | value corrected |
| §3.5 tangent dimension | `h=1`; elliptic `h=2`; `W(𝔽_(p²))` LT restricted to `ℤ_p` | `0`; `1`; `1` over `ℤ_p` vs `0` over `O` | `h−1` | none |
| §4.1 type sign | `ℓ_(−1)=Σ(−p)^(−j)X^(p^(2j))` | `(p+T²)⋆ℓ=pX`; `(p−T²)`: coeff `2/p` at `j=2` | type `p+T²` | `j` corrected |
| §4.2 integrality | `X+X²/p` | `XY` coeff `−2/p` | logarithm alone insufficient | none |
| §4.2 `𝔾_m` type | `p·log(1+X)−log(1+X^p)=log(1+pB)` | `v(p^n/n)≥1` | type `p−T` | none |
| §4.3 sign | `s=±1` | `pℓ_s−sℓ_s(X^(p²))=pX` | `p−sT²`, parameter `sp` | erratum kept |
| §5.2 Serre product | `𝔾_m` | `X−_G c=(X−c)/(1+c)` | unit factor | none |
| §5.4 orientation | `L_1`, `a` generator of order `q₀+1` | `aL ∼ a⁻¹L` iff `a²∈O_1^×`: false for `q₀+1≥3` | inverse visible on marked classes only | Check rewritten |
| §6.3 orders vs lattices | cubic, `O=O₀+ϖ₀O_F` | length `O_F/ϖ₀O_F = 3 ≠ 2·1` ⇒ not Gorenstein, `O^∨` not free | order alone insufficient for `n=3` | Check made concrete |
| §6.4 units | `s=0` | `1+O_F ∋ 0` | `s≥1` needed | none |
| §7.1 degrees | unram `s=1,2`; ram `s=1`; `s=0` | `q₀+1`; `(q₀+1)q₀`; `q₀`; `(q₀+1)/q₀ ∉ ℤ` | formulas only for `s≥1` | none |
| §7.3/7.4 BKO degrees | `p=5` | `[Ψ′_s:Φ]=6,30,150`; tame order `p+1=6` | ✓ | none |
| §7.5 ramified example | `O_(Ψ′_1)` | `e=p+1`, `v(−p)=p+1`; index `[O:ℤ_p+pO]=p` | (F1)/§1.3 fail | claim rephrased |
| §7.6 neighbours | `L_s`, `s≥1` | inward `p⁻¹L_(s−1)`, index `p`; `p+1` lines | ✓ | line corrected |
| §8.1 degrees | `p=5` | `[Φ₀:Φ]=24`, `[Φ₁:Φ]=24·25` | ✓ | none |
| §8.4 rectangle | `s=1` | `[Ψ′_1Ψ_1:Φ]=(p+1)p=[Ψ′_2:Φ]`; subgroup `μ_(p−1)(1+pℤ_p)(1+p^(n+1)O)·Δ′` | ✓ | none |
| §8.5 signs | `n=0` | `[p]w₁=w₀`; `[−p]w₁=[−1]w₀` | ✓ | none |
| §9.1 multiplicative trace | `ℚ_p(√p)`, `x=√p` | `N(1+√p)=1−p`, `1+Tr=1` | formal ≠ field trace | none |
| §9.2 section | `p+1` | `p∤p+1` ⇒ unit | `[(p+1)⁻¹]` integral | none |
| §9.3 square | `s=0` | `[Ψ′_2:Ψ₁][Ψ₁:Φ]=(p+1)p=[Ψ′_2:Ψ′_1][Ψ′_1:Φ]` | both composites are the trace `Ψ′_2→Φ` | none |
