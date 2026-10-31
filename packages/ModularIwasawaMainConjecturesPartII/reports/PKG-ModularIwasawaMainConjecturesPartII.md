# PKG-ModularIwasawaMainConjecturesPartII

Deliverables: `packages/ModularIwasawaMainConjecturesPartII/README.md` (857 lines), `Suggested.lean`, `metadata.toml`, `sources.toml`; `design/plan.json` (top-level `gaps` only).

## Corrections to the design

1. **The design's owner does not exist.** The accepted design is an import-only routing index. It routes stages CZ.0–CZ.6 (Burungale–Tian, Rubin/Johnson-Leung–Kings, CGLS) to "CMAllPrimeMainConjectures" and IC.0–IC.6 (Burungale–Kobayashi–Ota) to InertAnticyclotomicCMMainConjecture. CMAllPrimeMainConjectures exists in no roadmap on main, in no open roadmap pull request, in no board package and not in the merge order. `roadmaps grep` finds no match, and the board has no package of that name. Its content exists only in the operator's research blueprint (`research/blueprint/packets/CMAllPrimeMainConjectures.json`), which the design hashes. I read it as the design's content.
   - Because no owner exists, this roadmap is the owner of the CZ material. The README writes it out as Layers 0–8, in my own words, with every target, Check and worked example of the CZ nodes kept, except the duplicates listed below.
   - The IC material is owned by InertAnticyclotomicCMMainConjecture (merge order #219). It is cited in Scope and not restated.
2. **Earlier roadmaps cite the nonexistent owner.** These board packages cite CMAllPrimeMainConjectures as the owner of elliptic units, Rubin's Theorem 4.1 or BT Theorem 2.6:
   - NonordinaryCMSpecialValues (#216);
   - InertAnticyclotomicCMMainConjecture (#219), whose G2 imports Rubin's Theorem 4.1(ii) from "CZ.2";
   - CMRankZeroConverse (#298), whose GAP-CM asks for BT Theorem 2.6.
   
   They should re-cite this roadmap: §2.4 (elliptic units), §4.8 (Rubin's Theorem 4.1 and the classical form) and §8.6 (BT Theorem 2.6). For #216 and #219 that is an upward reference once this roadmap moves to #263 (see the dependency check). The ownership is coherent only if those two packages state the material they need themselves, or move after this roadmap. Alternatively the elliptic-unit layers (0–4) could split into a separate earlier Part. I did not edit those packages.
3. **Supplier citations replaced.** The packet cites "AutomorphicPadicLFunctions L0/L3/L3h" and "AnalyticNumberTheory AN.4", which are neither on main nor in open pull requests. They are replaced by:
   - AutomorphicPadicLFunctionsPartII §§3.3–3.4 (Eisenstein–Kronecker series) and §8.5 (Katz's measure);
   - LFunctions Layer 7 (nonvanishing on `Re s = 1`), an open new-roadmap pull request by another author.
   
   The Katz functional equation, which the packet requested from "AutomorphicPadicLFunctions L3", is stated by no supplier. It is now a target here (§5.5), sourced from Kriz, Theorem 27.
4. **Packet gaps closed or narrowed.**
   - General-weight CM induction (packet gap 2) is now a target (§7.2): Chebotarev with Brauer–Nesbitt on the supplied newform realization.
   - Ray-tower rank one (gap 7) is proved here from the finite-level Euler characteristic (§1.7).
   - The "unread" two-variable Coleman map and Katz identification (gaps 5, 9) now rest on Yager's thesis (legal ANU copy, Theorem 1 and Chapters 3–8) and Rubin 1991, Remark (1), which records the general case. CGLS attribute the anticyclotomic projection to it.
   - Ribet's self-twist theorem (gap 3) is cited through Kato 15.10 and is used only for the converse direction (a) ⇒ (b) of §7.1, which no other target needs.
   - The p = 2 Tamagawa input (gap 0) is cited at JLK Theorem 2.6, which states it for every p on the basis of Itakura's preprint. Itakura's text was not read.
5. **Mathematical corrections kept from the design.**
   - BT Theorem 2.1 is corrected with the Euler factors `ξ(ℤ_p[[G/D_𝔩]])` (§§6.2–6.3).
   - The equality descent (§8.5) is supplied where Kato §15 gives only an inequality.
   - The contained case `K ⊂ ℚ(μ_{p^∞})` is included (§7.6).
   - Kato's isogeny-norm law carries the coprimality hypothesis (§2.2).
6. **New corrections made in this pass.** See the adversarial table.
   - §5.4 no longer asserts μ = 0. Hida's theorem has no supplier and its text was not read; the CGLS μ clause is recorded in Scope as not a theorem here.
   - §5.4 now requires `p ∤ h_K`, Rubin's condition `p ∤ [K₀ : K]`, where the design left `p ∣ h_K` as a gap.

## Headline theorems

None is statable at the pins, so `Suggested.lean` declares nothing; its docstring lists each one with what it lacks.

| Headline | Status | What is missing at the pins |
| --- | --- | --- |
| Kato's main conjecture for every CM newform and every p (BT Thm 2.6; §8.6) | not statable | Galois representation of `HeckeRing.GL2.Newform`; Kato's Iwasawa cohomology with `j_*` coefficients; Kato's zeta morphism and `Z(f)` |
| Rational equivariant main conjecture with Euler factors (BT Thm 2.1 corrected; §6.2) | not statable | ray class fields as number fields (only `TauCeti.GlobalNumberFields.RayClassGroup` exists); tower `p`-unit and class-group limits; elliptic units (need CM curves with level structure) |
| Johnson-Leung–Kings main conjecture at every prime (§4.5) | not statable | arithmetic Iwasawa cohomology over the `ℤ_p²`-extension; Knudsen–Mumford determinants over the two-variable algebra; elliptic zeta element |
| Rubin's Theorem 4.1 and its all-prime classical form (§4.8) | not statable | local/global/elliptic unit limits and `𝔭`-ramified Galois groups over abelian towers of `K` |
| Katz form at split primes and anticyclotomic `θ`-components (§§5.3–5.4) | not statable | Katz's measure, the Coleman map, the modules above |

## Duplication removals

These targets of the design are deleted and cited instead:

- **CM case of Kato's Theorem 12.4** (H² torsion, H¹ free of rank one; packet `CZ.5/cm-h2-torsion`). Cited to KatoEulerSystems §4.4 (rationalIwasawaStructure, CM included, contained case 15.14) and PadicFamilies §4.0.3.
- **Rational Z(f) divisibility for CM forms** (packet `CZ.6/cm-kato-divisibility`). Cited to PadicFamilies §4.0.3 and KatoEulerSystems §7.2. It is in any case implied by §8.6.
- **Nonvanishing of cyclotomic twists** (Jacquet–Shalika, Rohrlich; packet `CZ.5/cm-twist-nonvanishing`). Cited to KatoEulerSystems §4.2.
- **Integer-indexed theta unit `cθ`.** Cited to PadicFamilies §4.0.1. The ideal-indexed `aθ_E` stays (§2.2), differing in its index and isogeny law.
- **Eisenstein–Kronecker series and their continuation.** Cited to AutomorphicPadicLFunctionsPartII §§3.3–3.4. The theta identities (3.8.1)–(3.8.2) stay (§2.1).
- **Katz's two-variable measure.** Cited to AutomorphicPadicLFunctionsPartII §8.5.
- **Generic carriers.** Iwasawa algebras of `ℤ_p^d × Δ`, twists, Iwasawa cohomology, Shapiro, control and the `j_*` comparison are cited to SelmerIwasawaCohomology §§3.0–3.3, 3.7, 3.15. The S-unit Kummer identification is cited to SelmerIwasawaCohomology §0.9.
- **Characteristic ideals, pseudo-null modules, determinants.** Cited to PadicMeasuresIwasawaAlgebras §§4.1, 4.6, 5.1. The completed group algebra is `TauCeti.completedGroupAlgebra`.
- **Euler system carrier, twisting, Rubin's `ℤ_p^d` theorems.** Cited to EulerSystemsAndKolyvaginSystems §§2.2, 2.5, 8.1, 8.2, 8.6, 8.7, 8.14, 8.25, 8.37.
- **Weak Leopoldt in cyclotomic towers.** Cited to IntegralIwasawaTheory §2.6 (`cyclotomic_weakLeopoldt`, every K and p).
- **Kato's main conjecture formulation, `H^i(T_K)`, the rational form `KMC_ℚ`.** Cited to ModularIwasawaMainConjectures §§0.1, 0.6, 0.7.
- **The whole IC branch** (BKO Theorems 6.1–6.2, signed Selmer groups, Rubin's signed L-function). Cited to InertAnticyclotomicCMMainConjecture.

## Supplier gap declared

`gap:height-one-explicit-reciprocity` on PadicHodgeRegulators §1.4: Kato's generalized explicit reciprocity law in relative height one, used in §3.3. PadicHodgeRegulators has the dual exponential (§1.4) but no form of Kato's generalized explicit reciprocity law; PadicFamilies §4.0.2 proves only the modular (height-two, big local field) case. It is recorded in `design/plan.json` `gaps` and in the README under "From PadicHodgeRegulators".

## Ownership against open work

- Checked by object with `roadmaps grep`, against main and all 354 open roadmap pull requests, for:
  - elliptic units, Johnson-Leung, Yager, de Shalit, the Katz measure, two-variable main conjectures, CGLS, the Kronecker limit formula;
  - imaginary quadratic main conjectures, theta functions and Siegel units, Beilinson–Kato elements, explicit reciprocity laws;
  - Tamagawa number conjectures at s = 0, Hida's μ theorem, nonvanishing on `Re s = 1`.
- The board packages read for ownership were AnticyclotomicLocalUnits, NonordinaryCMSpecialValues, InertAnticyclotomicCMMainConjecture, CMRankZeroConverse, ModularIwasawaMainConjectures and KatoEulerSystems. KatoEulerSystems was read at its board head 0ff66a0 via the board index.
- No roadmap states the elliptic-unit Iwasawa theory of imaginary quadratic fields. PeriodsAndSpecialValues begins at `j ≥ 2`, so the s = 0 Tamagawa case is owned here.
- No declaration of `Suggested.lean` reuses a name of another roadmap (it declares none).

## Citations

- `roadmaps resolve` reports one lead: "KatoEulerSystems §5.1: no roadmap on main or in an open pull request". This is a true statement about main and the PRs, not a defect. KatoEulerSystems is a board package (merge order #262), and §§3.3, 4.2, 4.4, 5.1, 5.3, 7.2 were checked at its board head 0ff66a0.
- All other cross-roadmap section numbers were checked against main or the open-PR heads.
- All backticked Lean names exist:
  - Mathlib names were elaborated with `#check` at the pin: `ClassGroup`, `Module.length`, `IsLocalization.AtPrime`, `Ideal.height`, `NumberField.Units.regulator`, `NumberField.Units.regulator_ne_zero`, `NumberField.Units.torsion`, `NumberField.IsTotallyComplex`, `IsCyclotomicExtension`, `cyclotomicCharacter`, `PowerSeries`, `MvPowerSeries`.
  - Tau Ceti names were checked in the pinned source rather than elaborated, because their object files are not built and they are not imports of `Suggested.lean`: `TauCeti.completedGroupAlgebra`, `TauCeti.GlobalNumberFields.Modulus`, `TauCeti.GlobalNumberFields.RayClassGroup`, `TauCeti.GlobalNumberFields.HeckeCharacter`, `HeckeRing.GL2.Newform`.

## Sources

All texts were read through the sources service from legal hosts:

| Key | Text | Host |
| --- | --- | --- |
| BT | arXiv v2 | arXiv |
| Kato | Astérisque 295 | Numdam |
| JLK | arXiv v2 | arXiv |
| Rubin91 | Inventiones scan, OCR | GDZ |
| CGLS | arXiv v2 | arXiv |
| HuberKings | arXiv v2 | arXiv |
| Kriz | arXiv v1 | arXiv |
| Yager | PhD thesis | ANU Open Research, institutional |

`sources check` reports 0 problems. de Shalit's book and the published Yager article are not cited. No text is missing, so no `needs-references.toml` was left. Locators were checked against the extractions, for example:

- BT lines 136–145 and 152–153 (Thm 2.1), and 208–218 (Thm 2.6);
- JLK lines 1010–1024 (Thm 5.2) and 1075–1089 (Thm 5.7);
- Rubin91 lines 545–571 (Thm 4.1 and Remarks);
- CGLS lines 394–418 (Thm 1.2.2) and 836 ((2.11));
- Kriz lines 1034–1064 (Thm 27);
- Yager line 201 (Thm 1).

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 torsion `Δ` | `ℚ(i)` with p=2 f=1; p=5 f=1; p=2 f=(3) | `ℤ_2[i]^×/μ_4 ≅ ℤ_2²`, Δ=1; `(μ_4×ℤ_5)²/μ_4`, Δ≅ℤ/4; `(μ_4×C_8)/diag μ_4` cyclic of order 8 (element (1,g) has order 8) | holds | none |
| §0.1 "reduced iff p∤#Δ" | `ℤ_2[x]/(x²−1)` | `(x−1)(x+1)` has no nilpotents; the ring is reduced, local, not a domain | **false** as written | replaced by "product of normal domains iff p∤#Δ"; `O[Δ]` always reduced |
| §0.2 normalization after inverting p | Δ=ℤ/2, p=2 | `ℤ_2[Δ][1/2] ≅ ℚ_2×ℚ_2`; `ℤ_2[Δ]` local with max ideal (x−1,2) | holds only after inverting p | Check states it |
| §1.1 semilinear twist direction | χ(g)=−1 | φ(gx)=−gφ(x); opposite convention agrees iff χ(g)²=1 | holds | removed the false "(so p odd)" |
| §1.2 p-units vs units | ℚ(i), p=5, base layer | `O_K[1/5]^×⊗ℤ_5 ≅ ℤ_5²` (2±i), `O_K^×⊗ℤ_5 = 0` | holds | replaced a vague check |
| §1.5 Euler-factor sequence | ℚ(i), p=5, f=(3) | `I_(3)` = image of `𝔽_9^×`, order 8; no prime of f above p ⇒ sum nonempty | design-era text said order 2: **wrong** | corrected to 8 in the Check and the worked example |
| §1.7 rank | Tate Euler characteristic, `K′` totally complex | `Σ(−1)^i rk H^i(ℤ_p(1)) = −r₂(K′) = −[K′:K]`, so rk H¹−rk H² = 1 after normalizing | holds, p=2 included (no real places) | none |
| §2.2 uniqueness of `aθ` | u a cube root of unity | `u^{2²−1}=u³=1`, `u^{3²−1}=u⁸=u²≠1`; gcd(3,8)=1 ⇒ u=1 | holds | none |
| §2.2 isogeny norm | q: E→E/E[a], deg N(a) | push-forward of N(a)(0)−E[a] = N(a)(0)−N(a)(0) = 0 | unrestricted law false | coprimality kept |
| §2.3 canonical pair | ℚ(i): f=(3), (1+i), (1+i)³ | `#𝔽_9^×/4 = 2`; `(O/(1+i))^× = 1` (no injection); `#(O/(1+i)³)^× = 4`, i−1 and −2 not ≡ 0 mod (1+i)³ ⇒ injective, `K(f)=K` | holds | none |
| §2.4 auxiliary relation | a=(5), b=(7) in ℚ(i) | N=25 (split), N=49 (inert) | holds | none |
| §2.5 Kronecker factor | χ(a)=i, a=(5) | N(a)−χ(a)⁻¹ = 25+i ≠ 25−i | detects inverse | Check reworded |
| §2.6 auxiliary ideal J | κ(σ_a)=N(a) | R/J ≅ ℤ_p of dimension 1 in 3-dim R ⇒ codim 2 | holds | none |
| §3.1 Frobenius eigenvalue | ℚ(i), r=1, 𝔮=(2+i) | `|ψ(𝔮)| = 5^{1/2}`, eigenvalue `ψ(𝔮)⁻¹` of abs `5^{−1/2}` | holds | none |
| §3.2 auxiliary factor `N(a)−ψ(a)χ(a)⁻¹` | r=2, a=(c), c∈ℤ, c≡1 mod cond | ψ(a)=c²=N(a) ⇒ factor 0 at χ=1 | design-era text implicitly assumed invertible: **gap** | invertibility hypothesis added, with existence: r≠2 by absolute value `N^{r/2}≠N`; r=2 via split primes (π/π̄ not a root of unity) |
| §4.2 s=0 class number formula | F=K=ℚ(i) | unit rank 0, so `ζ_K(0) = −hR/w = −1/4` (value, not derivative) | earlier draft said `~ −s/4`: **wrong** | corrected |
| §4.5 all-prime claim | ℚ(i) at p=2; ℚ(√−3) at p=2,3 | Rubin's `p∤#μ(H)` excludes these (μ_4, μ_6); JLK line 1023–1024 says "all primes with no exceptions" | holds by JLK | none |
| §4.7 inert non-torsion | Rubin Remark 2 | Rubin91 lines 566–567 | holds | none |
| §5.4 freeness step | local units at v vs condition at v̄ | condition is at v̄; the freeness claim concerned v | unsupported | route rewritten through §5.3 in one variable (Rubin's setting allows rank one) |
| §5.4 μ=0 | Hida's theorem | no supplier, text unread | input not admissible | μ clause removed; Scope records it |
| §5.4 `p∤h_K` | Rubin's p∤[K₀:K] with K₀=K_θH | [H:K]=h_K | needed | hypothesis added |
| §5.5 involution and λ | ι(T) | `(1+T)⁻¹−1 = −T(1+T)⁻¹`, so λ(ι f)=λ(f); `(χ̌)ˇ=χ`; anticyclotomic part of χ̌ is η⁻¹ | holds | garbled check replaced |
| §5.5 W a unit on the line | tame Gauss sums at v∤p | χ_v(π_v^{−e}) is a group element times a fixed Gauss sum of abs `N(v)^{e/2}`, prime to p | unit | justification added |
| §6.3(c) printed form fails | ℚ(i), p=5, f=(3) | trivial component sees 1−Frob_(3)⁻¹, Frob of infinite order in G/I | holds | none |
| §7.1 level formula | 32.2.a.a; 27.2.a.a; 11.2.a.a | 4·8=32; 3·9=27; −11≡5 mod 8 ⇒ 2 inert, a_2=−2≠0 | holds | none |
| §7.6 contained case | ℚ(i) p=2; ℚ(√−3) p=3; ℚ(√−7) p=7; ℚ(i) p=5 | ζ_8+ζ_8³ = i√2; 7≡3 mod 4; 5≡1 mod 4 | holds | none |
| §7.7 length lemma | A=ℤ_p[[T]]: M=A/(T), a=p; M=A/(p), a=p | `M/pM=𝔽_p`, M[p]=0, RHS `[A/(T,p)]=[𝔽_p]`; second violates the hypothesis and M/pM ∉ C | holds | none |
| §8.3 killing Euler terms | g∈I_𝔩, q′⊂q, p∉q | g−ζ∈q′, ζ−1∈q ⇒ ζ=1; `χ_T(g)⁻¹−1≠0` as ψ ramified at 𝔩 | holds | none |
| §8.5 equality descent | regular local A, a=x, M=A/(y); M=A/(x) | lengths 1=1; A/(x) has dimension one, not in C | holds | garbled check replaced |
| §8.7 central specialization | k=2, p odd | σ_c↦c⁻¹, quotient O_λ of char 0 ⇒ p∉kernel; restriction to μ_{p−1} is ω⁻¹ | holds | garbled check replaced |
| Context (Lean) | `Suggested.lean` | no declarations, hence no `variable` binders to lose | n/a | `#check` of declarations: none to check |

## Elaboration

`lake env lean packages/ModularIwasawaMainConjecturesPartII/Suggested.lean`, run from the content checkout, gave exit code 0, 0 `sorry` warnings and no other messages. No `TauCeti.*` import is used.

## Dependency check

```text
moved: ModularIwasawaMainConjecturesPartII moved in the merge order from #219 to #263, right after its last supplier ModularIwasawaMainConjectures (KatoEulerSystems also came after it); checked as moved (the worker moves it there when it submits)
depcheck: 56 roadmaps, 656 edges, 0 problem(s)
```

There are no UPWARD or CYCLE lines. The move to after ModularIwasawaMainConjectures (Part I) is expected: the endpoint consumes Part I §§0.6–0.7 and KatoEulerSystems §5.1. See correction 2 for its effect on the earlier packages that expect this material.

## Not supported, or untrusted

- No passage in any input contained instructions. The packet's "proposal" to retire this alias is a planning note, not acted on beyond the ownership decision above.
- The README makes no claim at primes containing `p` for the Kato equality, the integral `Ω`-form, or the integral refinement of BT Theorem 2.6.
