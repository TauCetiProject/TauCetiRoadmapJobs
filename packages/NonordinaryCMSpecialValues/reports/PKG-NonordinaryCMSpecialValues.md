# PKG-NonordinaryCMSpecialValues

Deliverables: `packages/NonordinaryCMSpecialValues/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml`, and the top-level `gaps` list of `packages/NonordinaryCMSpecialValues/design/plan.json` (nothing else in it changed; the diff touches only that key).

The README was written from `design/plan.json`, which carries the accepted review's corrections; the older `design/README.md` predates them. No `design/review.json` exists, so the review's notes were taken from `plan.json`'s `review` block, and all were applied:

- the auxiliary root-number ratio includes the different;
- the twisted root number uses the local Fröhlich–Queyrut theorem;
- Rohrlich's lattice count is a target derived from the subspace theorem;
- Galois stability of vanishing goes through the CM newform and the coefficient-embedding comparison;
- the field of definition of the values comes from Kato 15.9;
- Greenberg's locators were corrected.

## Headline theorems

| Headline | Layer | Status |
| --- | --- | --- |
| Parity dichotomy in the `p`-anticyclotomic family (forced zeros of one parity, almost-all nonvanishing of the other; Jia + Greenberg/Fröhlich–Queyrut) | 1, 6 | stated: `centralValue_parity_dichotomy` |
| Rohrlich's vanishing count `M(q, q^c) = 0`, `c < 1/2` | 6 | stated: `rohrlichCount_eq_zero` |
| Rohrlich's power-saving count `M(q, q^d) < q^s` | 6 | stated: `rohrlichCount_lt` |
| BKO unit theorem: almost all `Ω⁻¹L_f(φ̄ν,1)` are `p`-units; nontrivial unit witness | 5 | not statable: no period lattice of a CM curve with a Néron differential, no algebraicity/`p`-adic avatar of the normalised value |
| Finis's theorem in weight one (split and nonsplit valuation primes) | 4 | not statable: periods as above; Finis's local invariants `μ_ℓ`, `b_ℓ` need local root numbers |
| Kato's reciprocity law for CM characters (Prop. 15.9); integral BKO class and (3.4) | 2 | not statable: no continuous Galois cohomology with `T_φ^∨(1)` coefficients, Bloch–Kato `exp*` or `per_ψ` |
| CM Lubin–Tate comparison at `π = −p`; torsion/ring-class disjointness; semilocal splitting | 3 | not statable: no Lubin–Tate formal modules, CM torsion fields or ring class fields at the pins |
| Root-number formulas `W(φν)=W(φ)`, `W(φνχ)=(−1)^c W(φν)`, `W(φ)=(2/D)` | 1 | not statable: no global/local root numbers of Hecke characters (the dichotomy sidesteps this with an existential sign, which is determined because both parities occur infinitely often) |
| Jia's Galois-average limit `→ 2L(1,κ_R)` | 6 | not statable: no `Aut(ℂ/K)`-action on algebraic Hecke characters |

## Sources and what the README could not support

This round restores the package that was parked because two texts were unreadable. Both are now held by the operator and are in the sources cache, recorded in `sources.toml` as `certified` / `operator-local`: BKO21 and ROHRLICH-NOTES. Every locator taken from them was re-checked against the texts, and five BKO locators were wrong:

| README place | Old locator | Text | New locator |
| --- | --- | --- | --- |
| §3.5 (π-division field, Lubin–Tate parameter `−p`) | BKO §2.0.1, p.946 | p.946 is the introduction; the Lubin–Tate group for `π = −p` and `Φ_n` are set up in the unnumbered §2, p.947 (BKO21 lines 227–233); the identification of `F` with `Ê` is on p.953 (BKO21 lines 470–472) | BKO §2, p.947 and §3.0.2, p.953 |
| §5.7 (scalar/tensor kernels) | BKO §2.0.3, pp.948–949 | §2 has no numbered subsections; `δ_χ` is defined on p.949 (BKO21 lines 287–299) | BKO §2, pp.948–949, and §3.0.2, pp.953–954 |
| §1.3 (conductor-parity sign) | proof of Proposition 3.3(3), pp.953–954 | the whole proof is on p.953 (BKO21 lines 481–488) | p.953 |
| §1.4 (forced zeros) | Proposition 3.3(3) and its proof, pp.953–954 | as above | p.953 |
| §6.4 (nonvanishing of the correct-sign values) | BKO §6, p.964 | p.964 is the bibliography; the interpolation of `L(φχ, 1)` for `χ ∈ Ξ^ε` and "`L_p(χ) ≠ 0` iff `L(φχ, 1) ≠ 0`" are in §6.0.1, p.961 (BKO21 lines 823–844) | BKO §6.0.1, p.961 |

The reference-list entry and the manifest locator now read: §2, pp.947–949; §3.0.2, pp.951–953, (3.3)–(3.7), Proposition 3.3; §3.0.3, Theorem 3.4 and its proof, (3.8)–(3.9), pp.953–954; §6.0.1, p.961.

These BKO locators were confirmed as they stand:
- (3.3) on p.951 (BKO21 line 390), with `l ≥ 5` split and prime to `h_K f`;
- `W(φν) = W(φ)` for `ν ∈ X_l`, p.951 (lines 393–395);
- the Néron differential and the lattice `ΩO_K` after a conjugate-curve step, p.951 (lines 404–407);
- `γ = per_φ(ω)/Ω`, p.951 (line 415);
- (3.4) and (3.5) on p.952 (lines 423–434);
- `M_{n,m}` and the composite on pp.952–953 (lines 435–466), where one letter `m` is used for the order exponent, the layer and (on p.954, line 507) the conductor exponent. README §0.6 separates them;
- Proposition 3.3 and (3.6)–(3.7) on p.953;
- `W(φ) = +1` from `(2/D) = +1` in the proof of Theorem 3.4, p.953 (line 495);
- (3.9) and Finis's invariants vanishing, p.954 (lines 501–507).

Rohrlich's notes were confirmed:
- Proposition 1.5 on printed p.14 (ROHRLICH-NOTES line 666);
- §5.1 with (2.39)–(2.43) on pp.34–35 (lines 1593–1651);
- §5.2 with (2.44)–(2.49) on pp.35–36 (lines 1652–1728). The archimedean factor is `i⁻¹ = −i` for `χ_∞(z) = z⁻¹` (line 1661), and the ramified factor is `i^δ (2/q) ∏_{r≠q} (q/r)` (line 1701). These match README §1.1.

The pdftotext extraction of BKO drops overlines: (3.2) reads "φ(a) = φ(a)" in the extraction (BKO21 line 386). The README keeps `φ̄` in the reciprocity law and the unit theorem, as the accepted review read it on the page images of BKO p.952 and Kato p.258. Through `L(φ̄ν, s) = L(φν⁻¹, s)` for anticyclotomic `ν` (§0.1), the families agree in either reading, so no statement depends on it.

No text is missing, and `needs-references.toml` is not written. As before:
- Kato's 1999 explicit reciprocity law is cited only in the form Kato 2004 applies it (pp.258–259);
- Boxall's theorem is cited only in the form Finis uses it (FINIS06 line 1587).

## Notions moved down, and ownership

No roadmap that I can read and that comes earlier in the merge order owns the following, so this roadmap now owns them:

- **Kato's theta function, its CM refinement, canonical CM pairs and standard elliptic units** (Layer 2, §§2.1–2.3). The design imported these from "CMAllPrimeMainConjectures", which exists nowhere: not on main, not in the open pull requests, not on the board. The board design of ModularIwasawaMainConjecturesPartII (merge order 353, later) routes its CM continuations to that same nonexistent roadmap. KatoEulerSystems (an open pull request, merge order 317) works with Siegel units on modular curves and does not construct CM elliptic units; PadicFamilies §4.0.3 does not either. The README no longer names KatoEulerSystems as a consumer. EulerSystemsAndKolyvaginSystems states that constructing elliptic units is outside it.
- **The elliptic zeta element, Kato's realisation `V(ψ)`, `S(ψ)`, `per_ψ`, the height-one explicit reciprocity law as applied, and Kato's Proposition 15.9** (§§2.3–2.6). ModularSymbolsPadicLFunctions puts Kato's modular explicit reciprocity in KatoEulerSystems, which comes later in the merge order (317) than this roadmap (306) and treats only the modular case.
- **Finis's divisibility theorem in weight one, with its theta-function proof and the Boxall input** (Layer 4). The design imported it from "AutomorphicPadicLFunctions L3h", which exists nowhere. AutomorphicPadicLFunctionsPartII (later in the merge order) does not state Finis's theorem and excludes the inert direction. A case-sensitive search for "Finis" finds only Finis–Lapid–Müller in GL2AutomorphicRepresentationsAndTransfer.
- **The integral BKO class** (design gap G1, §2.7) is now a target here, with the reviewed route on the projected component.

Ownership was checked against main (a0ad405), every open roadmap pull request (`roadmaps grep`, index of 2026-11-04) and the board packages, searching by object: elliptic units, theta functions, Proposition 15.9, Finis, Rohrlich, Jia, Fröhlich–Queyrut/Queyrut, Burungale. This round's new matches:
- AnticyclotomicLocalUnits, CMRankZeroConverse and AutomorphicPadicLFunctionsPartII (open pull requests) consume this roadmap.
- ArtinRepresentations (open pull request, not earlier in the merge order) states the global Fröhlich–Queyrut theorem for orthogonal Artin representations, not the local character statement, so `gap:al-local-frohlich-queyrut` stays with AutomorphicLFunctionsAndLocalFactors AL.1.
- KatoEulerSystems cites Rohrlich's 1984 theorem for cyclotomic twists of modular forms, not the anticyclotomic lattice count.

No match is a duplicate.

## Duplication removals and supplier rewiring

Nothing this roadmap states is stated elsewhere. Against the design, the changes are:

- **Supplier names.** The design's nonexistent suppliers ("CMAllPrimeMainConjectures CZ.0/CZ.1/CZ.5", "AutomorphicPadicLFunctions L3/L3h") are replaced by ownership here, or by real sections:
  - the CM newform comes from GL2AutomorphicRepresentationsAndTransfer R17.4.16 and ComplexMultiplicationAndExplicitReciprocity §4.2 `cmInductionComparison`;
  - the design's atlas node ids (CM.1, CM.4, AL.1, AL.5, LT.2, LT.4, SIC L0, PHR L1, DT.2, ModularSymbols L4) are cited by their real sections and declarations, all verified at the heads.
- **Requests dropped.**
  - PadicHodgeRegulators §1.11 already supplies semilocal Bloch–Kato maps, so the design's request R15 is cited, not requested. The CM de Rham line belongs to §2.4 here.
  - Design gap G6 (ramified coefficients) is a non-claim, not a supplier gap. It stays as one sentence in §5.7.
- **Supplier gaps declared** in `plan.json` and in the supplier contracts:
  - `gap:al-local-frohlich-queyrut`: AutomorphicLFunctionsAndLocalFactors, AL.1, "Local epsilon factors and Gauss sums".
  - `gap:sic-character-twist`: SelmerIwasawaCohomology §3.7, which treats only the cyclotomic twist.
- **Library objects reused, not redefined:**
  - Tau Ceti: `HeckeCharacter`, `finiteConductor`, `conductorExponent`, `finiteComponent`, `idealCharacter`, `idealsPrimeTo`, `IsCongrOne`, `toPrincipalIdeal`.
  - Mathlib: `NumberField.classNumber`, `IsCMField.complexConj`, `MonoidAlgebra.lift_single`, `Subalgebra.linearDisjoint_iff_injective`, `DirichletCharacter.LFunction_apply_one_ne_zero`. All were checked at the pin, with file and line.

## Corrections to the design

- **Parity dichotomy generality.** It needs only `p` odd and inert, `φ` unramified at `p`, and `ν` anticyclotomic of odd order unramified at `p`. Neither `p ∤ h_K` nor `p ≥ 5` is needed: the parity uses only conductor exponents, and Jia's theorem holds for every `P`. README §6.5 and the Lean statement match this generality.
- **Finis's prime roles.** Finis's Theorem 1.1 has the split prime as the tower prime and the odd valuation prime `ℓ` different from it (FINIS06 lines 101–122). Layers 4–5 apply it with the tower prime `l` and the valuation prime `p`, as the design intended. The weight-one theorem covers split `ℓ` as well.
- **Rohrlich's Proposition 2.** It holds for every `1/2 < d < 3/5` and `5d/2 − 1 < s < 1/2` (ROHRLICH84 lines 896–900); `d = 11/20`, `s = 7/16` is one example. The Lean statement quantifies over all such pairs.
- **Agboola–Howard.** Proposition 3.1 concerns elliptic units. The parity formula and the nonvanishing are in its proof (AH05 lines 141–152), and the citation now says so.
- **Naming.** The manifest key for Jia's paper is `JIA24`, with a version note for arXiv v1.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 rational-principal law `φ((n)) = κ_K(n)n` | `y²=x³−x`, `K=Q(i)`, `n=7` | `κ(7)=−1`, `φ((7))=−7`; the wrong sign `+7` fails | holds | wrong-sign Check added |
| §0.1 type `(1,0)` from `φ((x))=ι(x)` | `φ⁻¹`, norm character `N` | `φ⁻¹((x))=ι(x)⁻¹`; `N((x))=xx̄` | both excluded | Checks |
| §0.2 conductor `c=n+1` | `Q(√−7)`, `p=5` | ring class group order `6·5^{m−1}` (24/4); order 5 first at `5²` | holds | Check |
| §0.2 trivial character | `χ=1` | `c=0`, not `1` | holds | Check |
| §0.3 Euler factor at `s=1` | `φ` of `y²=x³−x` at `(7)` | `(1+1/7)⁻¹=7/8`; wrong sign `7/6` | holds | Check |
| §0.3 deleted `p`-factor | `χ=1` | `1+1/p`, `v_p=−1` | nonvanishing transfers, valuation does not | Check |
| §0.3 `HasCentralValue` vacuity | no continuation | `z≠0` clause demands existence | non-vacuous | Check |
| §0.4 period scaling | `ω ↦ 2ω`, `ω ↦ pω` | `A ↦ A/2`; `pω` not Néron | holds | Checks |
| §0.4 nonprincipal lattice | `Q(√−5)`, `a=(2,1+√−5)` | `a` is not `ΩO_K` | conjugate-curve step needed | Check |
| §0.5 auxiliary prime | `Q(√−7)`, `p=5`; `l=23, 11, 13` | `23` splits, `23≡3 mod 5`; `11≡1 mod 5`; `(−7/13)=−1` | holds | Checks; a garbled computation fixed |
| §0.6 order vs conductor | `r=1` | layer degree `l`, conductor `l²` | holds | Check |
| §1.1 canonical sign | `D=7`, `D=11` | `(2/7)=+1`; `(2/11)=−1` (2 inert) | split hypothesis needed | Check |
| §1.2 odd order needed | genus character | `ν(f𝔡_K)` can be `−1` | hypothesis used | Check replaced |
| §1.3 parity | `c=0,2,3,4` | signs `+,+,−,+` × `W(φν)` | holds; trivial `χ` separate | Checks |
| §1.4 forced zero | `W(φν)=+1`: `c=2`, `c=3` | no zero at `c=2`, zero at `c=3` | holds | Check |
| §2.1 theta divisor | `a=(c)`, `N(a)=5` in `Z[i]` | degree `c²−c²=0`; `5−5=0`; `(0)−E[a]` has degree `−4` | holds | Check |
| §2.1 norm invariance pins the root of unity | `ζθ` | `N_b(ζθ)=ζ^{b²}N_b(θ)` | excludes `ζ≠1` | Check |
| §2.2 injectivity hypothesis | `Z[i]`, `f=(3)`; `f=(2)` | `(Z[i]/3)×` has order 8, injective; `±1` collide mod 2 | holds | Check fixed |
| §2.4 dual/Tate Frobenius | good prime `a` | `N(a)/φ(a)`, absolute value `N(a)^{1/2}` | holds; omitting the twist fails | Check |
| §2.5 independence of `ω` | `ω ↦ uω` | factors `u^{−r}` and `u^r` cancel | holds | Check added; an unverified scaling claim removed |
| §2.6 `χ=1` deleted factor | `r=1` | `1+1/p` | holds | Check |
| §2.6 smoothing factor | `a=(α)`, `r=1` | `αᾱ−α=α(ᾱ−1)` | holds | Check |
| §2.7 unit smoothing | `α≡2 mod p` vs `α≡1 mod p` | `2(2−1)=2` (unit) vs `0` | choice needed | Check |
| §3.1 `Φ_0≠Φ` | `p=5` | `[Φ_0:Φ]=24` | holds | Check |
| §3.4 inert Frobenius | `y²=x³−x` at `7` | `−7`, `(1+7T)²` | holds | Check |
| §3.5 Lubin–Tate parameter | LT.4 with `s=±1` | `a_{p²}=−2p ↔ s=−1`, `π=−p`; degree `(p−1)p^n` divides `(p²−1)p^{2n}` | holds | Checks |
| §4.1 `μ_ℓ` | `ζ_ℓ` values | `v_ℓ(ζ_ℓ−1)=1/(ℓ−1)`; prime-to-`ℓ` values give 0 | holds | Check |
| §4.2 Yang constant | `Q(√−7)` | `w_K²√D/(4πh_K)=√7/π` | computed | Check |
| §4.6 inequality exception | `Q(√−3)`, `ℓ=3` | `ℓ | w_K=6` | exception kept | Check |
| §5.1 central shift | prime of norm `Q` | `φ̄ν/Q` at `s=0` equals `φ̄ν` at `s=1` | holds | Check |
| §5.3 `l`-factors | `ν≠1` vs `ν=1` | `1` vs `(1−φ̄(λ)/l)` | holds | Check |
| §5.7 ramified coefficients | `U=F≠Φ` | `a⊗1−1⊗a ↦ 0` | injectivity fails, as stated | Check |
| §6.1 rational direction | `P={p}`, `(a,b)∈Z²` | `|ub−va|≥q` against `≤(|a|+|b|)q^d` | `M=0` for large `q` | Check |
| §6.1 misprinted modulus `Z_p` | box of side `q^c` | count `≍ q^{2c}` | part (1) fails | Check |
| §6.1 `c≤0` and empty `P` | | only `(0,0)`, excluded; empty `P`: only `q=1` | `M=0` / vacuous | Check |
| §6.1 example `(d,s)` | `11/20`, `7/16` | `5d/2−1=3/8<7/16<1/2` | admissible | Check |
| §6.2 support factor | `Q(√−7)`, support `{5}` | limit `2L(1,κ_K)·6/5` | holds | Check |
| §6.5 Lean dichotomy, sign `ε` | wrong `ε` | both clauses fail, since both parities are infinite | `ε` determined | Check |
| §6.5 `p=3`, `p=2` | `Q(√−7)` | `(−7/3)=−1`, so 3 is inert and applies; `p=2` excluded (even orders) | holds | Check |
| §6.5 context | `#check @` | every hypothesis (`IsCMField`, `IsQuadraticExtension`, `Fact p.Prime`, `p≠2`, `hv`, `hφ`, `hφv`, `hν`, `hνodd`, `hνac`, `hνv`, `ϖ`, `hϖ`) present in the elaborated type | holds | none |
| Rohrlich Lean context | `#check @` | algebraicity, not-both-zero, `c<1/2` / `d,s` ranges, `P`-supported `q` all present | holds | none |
| §1.1 canonical sign, against ROHRLICH-NOTES | `D=7` (one prime `≡3 mod 4`, `t=1`) | `i^{t−1}(2/7)·(empty product)=+1`; line 1726: `i^{t−1}(−1)^{t(t−1)/2}=(−1)^{(t²−1)/2}=1` for odd `t` | `W=(2/D)` holds; the archimedean factor is `i⁻¹`, so a `+i` convention would give `−(2/D)` | none (Check already present) |
| §1.3 parity, against BKO p.953 | `χ` of conductor `p^{n+1}`, `n=1` (order `p`, `c=2`) and `n=2` (`c=3`) | BKO: `W(φνχ)=(−1)^{n+1}W(φ)`: `+W`, `−W`; README: `(−1)^c W`: `+W`, `−W` | the conventions agree (`c=n+1`) | locator narrowed to p.953 |
| §3.5 Lubin–Tate parameter, against BKO p.947 | `π=−p`, `n=0` | `Φ_0=Φ(F[π])`, `[Φ_0:Φ]=|(O/π)×|=p²−1=24` at `p=5` | holds | locator moved to §2, p.947 |
| §6.4 BKO family | `L(φ̄νχ,1)` against BKO's `L(φχ,1)` (§6.0.1), with `ν=1` | `L(φ̄χ,s)=L(φχ⁻¹,s)`, and `χ↦χ⁻¹` preserves order and conductor, so the same parity class | the nonvanishing transfers | locator moved to §6.0.1, p.961 |
| §0.3 Euler factor orientation (Lean `eulerFactor`) | Tau Ceti `idealCharacter_apply_prime` (Ideal.lean:155) | the ideal value at `v` is `finiteComponent v u` for any uniformizer `u`, not its inverse; the inverse would give `|η(v)|=N(v)^{−1/2}` and centre `s=0` | `eulerFactor` matches the primitive `L(η,s)` | none |

## Binder check

This round I again put `#check @name` for all ten declarations in one scratch file (the file's text followed by the ten `#check`s) and elaborated it once. Each elaborated type matched its README statement:

- the definitions carry only `Field`, `NumberField` and, where the conjugation is used, `IsCMField`;
- the theorems carry all their hypotheses explicitly;
- no section variable was lost.

Nothing changed as a result.

## Elaboration

`lake env lean packages/NonordinaryCMSpecialValues/Suggested.lean` was run from the content repository. The object files of `TauCeti.NumberTheory.NumberField.Global.HeckeCharacter.Ideal` and `…HeckeCharacter.FiniteComponent` were already present at the pin, so no build was needed. The file now opens with the `module` header, as the pinned Tau Ceti modules do, so Lean no longer warns that `Mathlib` is designed for the module system. The imports are unchanged: plain (non-`public`) `import` lines, a single `import Mathlib` followed by the two `TauCeti.*` modules. With no `public section`, every declaration is private to the module, so the plain imports are enough for its statements. Nothing else in the file changed. Output: exactly 3 warnings, `declaration uses 'sorry'`, at lines 127, 137 and 163 (`rohrlichCount_eq_zero`, `rohrlichCount_lt`, `centralValue_parity_dichotomy`). There are no errors and no other messages. The file has no `set_option` and no sorry'd data. It has one local instance with a real body (`Fact (p : ℕ).Prime` for `p : Nat.Primes`).

## Dependency check

```text
moved: NonordinaryCMSpecialValues moved in the merge order from #305 to #323, right after its last supplier LubinTateFormalModulesAndQuasiCanonicalLifts; checked as moved (the worker moves it there when it submits)
depcheck: 209 roadmaps, 1727 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line.

The `moved:` line is there because the merge order now puts LubinTateFormalModulesAndQuasiCanonicalLifts (a board design, line 324 of `ORDER.txt`) after this roadmap (line 306). This roadmap cites its LT.2 and LT.4 in §§3.1 and 3.5 for the division fields and the Honda–Lubin–Tate comparison. Per the brief, a `moved:` line is not a defect. The move keeps this roadmap ahead of its consumer AnticyclotomicLocalUnits (line 326).

Positions of the other suppliers in `ORDER.txt`:
- SelmerIwasawaCohomology 51
- AutomorphicLFunctionsAndLocalFactors 79
- GL2AutomorphicRepresentationsAndTransfer 87
- ModularSymbolsPadicLFunctions 106
- ComplexMultiplicationAndExplicitReciprocity 152
- PadicHodgeRegulators 305

The roadmaps cited "on main" are on main, in `TauCetiRoadmap/` or `Completed/`: ClassFieldTheory, GlobalNumberFields, Chebotarev, LocalFieldsRamification, ArithmeticDirichletSeries, EllipticCurves, DiophantineApproximationAndTranscendence.

`roadmaps resolve` on the README reports no unresolved cross-roadmap citation and no unresolved Lean name. Lean names outside TauCetiRoadmap were checked at the pins (the binder check and `idealCharacter_apply_prime` above).

## Suspicious text

None found in the inputs.
