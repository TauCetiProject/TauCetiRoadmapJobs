# Review of ModularForms (pull request #1706 at a24d49a)
**Verdict:** needs changes

Incremental re-review of the 127 lines changed since 65c1a73: README Summary, Scope, two supplier contracts, the earlier-label table, the new §0.2, Downstream consumers, Worked examples and References, and `etaTransformation` with the module docstring in `Suggested.lean`.

## R01 (P1) — The eta-quotient criterion's proof route has no owned input for its Kronecker character

**Location.** `TauCetiRoadmap/ModularForms/README.md:387–389`: "The proof applies `etaTransformation` to (a bδ; c/δ d)∈SL₂(ℤ) … and evaluates the product of the multipliers with the two congruences." The *Needs:* line at `README.md:405–407` names only η, Δ, the eta product, the Kronecker symbol and character spaces.

**Claim.** By `etaTransformation`, ∏_δ ε(γ_δ)^(r_δ) is an exponential of Σ_δ r_δ·((a+d)δ/(12c) − s(d,c/δ)) − k/2. The two congruences control the first term only. Showing that the product equals ((−1)^k m/d) needs the arithmetic of Dedekind sums: reciprocity, and Rademacher's Jacobi-symbol congruence or, equivalently, the Kronecker-symbol (Rademacher–Knopp) form of ε. §0.2 states none of these. No supplier is named for them, and neither pinned library has a Dedekind sum (grep of Mathlib `NumberTheory/` and all of Tau Ceti). The only open plan of them, HalfIntegralWeightModularForms §3.3, consumes this roadmap and so cannot be cited.

**Witness.** η(z)η(23z) with γ=(14 3; 23 5): both congruence sums are 24. The product of the two multipliers is −1=(−23/5), fixed by s(5,23)=7/46 (12·23·s≡2 mod 8). At d=1 and d=2 the residue is 6 and the product is +1.

**Repair.** Add two targets to §0.2, each with a locator, and name them on the criterion's *Needs:* line:
- Dedekind-sum reciprocity: s(h,c)+s(c,h)=(h²+c²+1)/(12hc)−1/4 for coprime h,c>0.
- The Kronecker form of ε for c>0: ε(γ)=(d/c)·e(((a+d)c−bd(c²−1)−3c)/24) when c is odd, and ε(γ)=(c/d)·e(((a+d)c−bd(c²−1)+3d−3−3cd)/24) when c is even. The symbol is `TauCeti.kroneckerSym`, so (c/d)=(c/|d|) because c>0.

I tested these forms against §0.2's Dedekind-sum form on all 1453 matrices with 1≤c≤29 and |d|≤40, with no mismatch. On the witness, the odd-c form gives (5/23)·e(1/3)·e(2/3)=−1, so the sign sits in the Jacobi symbol, as the criterion needs.

## R02 (P2) — The Dedekind-sum value of the eta multiplier has a second owner

**Location.** `README.md:25–27`: "This roadmap owns … the multiplier at every element with its Dedekind-sum value, and the eta-quotient criterion with its cusp orders (§0.2)." The third clause of `etaTransformation` is at `Suggested.lean:42–51`. Downstream consumers (`README.md:1430–1431`) names QSeriesPartitionsAndMockModularForms only.

**Claim.** HalfIntegralWeightModularForms (#1721 at 1a78fdd) plans the same objects as its own targets:
- §3.3 (README lines 942–962): `eta_smul_eq_dedekind` (its `Suggested.lean:299`), Apostol's Dedekind-sum value for c>0, with `dedekindSum_reciprocity` and the Rademacher–Knopp forms.
- §3.4: Ligozat's cusp-order formula, with the same expression as `README.md:384`.

That roadmap consumes ModularForms Layers 0, 2, 3, 4, 7, 8 and 8G (its README lines 98–105), so it is the consumer. This README does not name it at all, so the object currently has two owners.

**Witness.** Its ν_η(γ)=e((a+d)/(24c)−s(d,c)/2−1/8). Multiplying the exponent by 2πi gives πi((a+d)/(12c)−s(d,c)−1/4), which is exactly §0.2's ε(γ) at `README.md:368`.

**Repair.** Follow the pattern this README already uses for ModularCurvesPartII (`README.md:58–64`):
- In Scope, name HalfIntegralWeightModularForms §3.3 (the Dedekind-sum value, and, once R01 is repaired, reciprocity and the Kronecker form) and §3.4 (the cusp-order formula) as plans of §0.2's objects under the same normalisation.
- State the direction: it consumes Layers 0, 2–4, 7, 8 and 8G, so it takes these from §0.2 and keeps the weight-½ packaging and the half-integral character.
- Add it to Downstream consumers.

## R03 (P3) — The earlier-label table misses two contents that other roadmaps cite

**Location.** `README.md:301–302`: "the other layers and §§10A–10C keep their topics". The Layer 8 row at `README.md:311` reads "Tau Ceti coefficient fields and integrality for k≥2, above; §§8.0–8.1".

**Claim.** There are two gaps.
- **Layer 8 row.** AlgebraicModularFormsAndSerreWeights §2.6 (#928 at 364af81, README lines 354–356) imports from old Layer 8 the integral Hecke algebra's "generators and finiteness". No contract above names that algebra.
- **Layers 5 and 7.** Neither has a row. Old Layer 7, "L-functions", is cited for "Hecke continuation and the functional equation" by EllipticCurveModularity (#1018 at b7c957c, line 1972). HalfIntegralWeightModularForms (#1721 line 101) cites it for the functional equation and root number. Layer 7 now holds only §7.1, the noncuspidal abscissa (`README.md:676–678`). The old Layer 5 anchor, cited at #1018 line 1095, is also renamed.

**Witness.** At the pin the algebra is `TauCeti.heckeTCuspAlgebra` (`TauCeti/NumberTheory/ModularForms/HeckeSlash/Finite.lean:51`), and `TauCeti.heckeTCuspAlgebra_finite` (line 122) proves it finite over ℤ for k≥2. Neither name occurs in the README.

**Repair.**
- Add both declarations to the Tau Ceti contracts and to the Layer 8 row, with "weight one: §8.1".
- Add the row "Layer 5, strong multiplicity one | Tau Ceti fixed-level strong multiplicity one, above; §5.1".
- Add the row "Layer 7, L-functions | Mathlib `ModularForm.L`, Tau Ceti `CuspForm.frickeCompletedL_functional_equation` and `HeckeRing.GL2.Newform.L_eulerProduct_tprod`, above; §7.1".

## Previous findings

- none: the previous report (PRREVIEW-ModularForms~5, at 65c1a73) raised no finding. The two repairs it confirmed still hold at this head: Scope `README.md:58–64` names ModularCurvesPartII and EllipticPeriods with the direction of supply, and the ModularCurves contract `README.md:274–277` reads ℤ[1/N₀]((q)) (no "ℤ((q))" occurs).

## Verified sound

**Gate, build and Lean.**
- My gate rerun at a24d49a reports every check 0 and OK. The outside-folder diff against `origin/main` is empty.
- Dependency check output: `depcheck: 239 roadmaps, 2368 edges, 0 problem(s)`, with no UPWARD, CYCLE or moved line. ModularForms is on main and absent from the merge order. QSeriesPartitionsAndMockModularForms is at line 242 of the merge order.
- `lake env lean TauCetiRoadmap/ModularForms/Suggested.lean` exits 0 with exactly eleven `declaration uses sorry` warnings, at lines 42, 57, 66, 79, 88, 95, 101, 108, 122, 134 and 145. The ten older declarations are unchanged apart from a +19 line shift.
- `#check @TauCetiRoadmap.ModularForms.etaTransformation` (scratch copy) gives the README §0.2 statement verbatim. Its only binder is γ, there is no `variable` block and no section binder is lost. It is unchanged from the worker's signatures file.
- One-tactic probe on `etaTransformation`: `simp` and `norm_num` leave unsolved goals; `rfl` fails (not definitional); `infer_instance` fails (not a class); `exact ⟨1, by simp, fun τ => by simp, fun h => by simp⟩` leaves goals. So it is not padding. The probe of the ten older declarations in the previous report still stands.

**Library declarations opened at the pins (17).**
- Mathlib:
  - `ModularForm.eta` (`DedekindEta.lean:57`, 𝕢 24 z·∏(1−qⁿ⁺¹) on ℂ) and `ModularForm.eta_ne_zero` (`:114`, on `upperHalfPlaneSet`).
  - `ModularForm.discriminant` (`Discriminant.lean:50`, η²⁴), `ModularForm.eta_comp_eq_csqrt_I_inv` (`:136`, (√I)⁻¹•(√·η)), `discriminant_T_invariant` (`:128`), `discriminant_S_invariant` (`:145`), `csqrt_pow_24_eq` (`:58`) and `CuspForm.discriminant` (`:237`).
  - A grep of Mathlib `NumberTheory/` finds no translation law of η and no Dedekind sum, so the contract's "Neither file states …" holds.
- Tau Ceti:
  - `TauCeti.ModularForm.eta_eq_exp_mul_tprod` (`ModularForms/DedekindEta.lean:49`, τ∈ℂ) and `eta_neg_one_div_sq` (`:115`, 0<Im τ).
  - `TauCeti.kroneckerSym` (`LegendreSymbol/KroneckerSymbol.lean:84`, with values at 0, −1 and 2) and `kroneckerSym_mul_left` (`:241`, for nonzero factors, which δ and −1 are).
  - The three bad-prime declarations (`Newforms/BadPrime/Classification.lean:66, 98, 115`), with hypotheses (v=1, c=0), (p∣N, c=v) and (v≥2, c<v). These cases are exhaustive, as the contract says.
  - `mem_modFormCharSpace_iff_nebentypus` (`DiamondOperators.lean:356`): χ is evaluated at d_γ, the convention of §0.2's χ(d).
  - `TauCeti.heckeTCuspAlgebra` and `heckeTCuspAlgebra_finite` (`HeckeSlash/Finite.lean:51, 122`).
  - Tau Ceti has no Dedekind sum, eta transformation or eta quotient (grep).

**Changed passages read in full.** Summary; Scope `README.md:25–28`; the Mathlib eta bullet (112–117); the Tau Ceti bad-prime bullet (196–200) and eta/Kronecker bullet (245–249); the label table (301–314); §0.2 (360–407) with its Examples and Dependencies; Downstream 1430–1431; Worked examples 1442; References 1476–1480; and the `Suggested.lean` docstring and `etaTransformation`.

**Cross-roadmap citations resolved.**
- QSeriesPartitionsAndMockModularForms, read in its sibling checkout at b6c4190 (newer than the index copy 4daf6e0, which still owned the laws).
  - Its §5.2 defines ν_eta as "the constant ε(γ) of ModularForms §0.2", with *Needs:* "TauCetiRoadmap.ModularForms §0.2" (lines 822, 832).
  - It consumes ModularForms Layers 10A and 10B (lines 755, 1326), so the direction is right and `README.md:1430–1431` is accurate at that head.
- The eight dropped anchors listed in the overlap file were each read at the citing line:
  - Layer 0 (#928 lines 230, 621): covered by its table row.
  - Layer 10 (#928 line 230, used there for §10C's carriers): §10C kept.
  - Layer 2 (#1688 line 75): covered by its row.
  - Layer 4 (#928 line 1348, #1018 line 345): covered by its row.
  - Layer 8G (#1018 line 1193): §8.2 `existsUniqueGaloisConjugate`.
  - Layer 5 (#1018 line 1095, cross-level weight-two trivial character): the content is in §5.1, but the row is missing (R03).
  - Layers 7 and 8: R03.
- The citation tool's one lead, `LeanBridge…identifies_lmfdb_1_60_a_orbit` (`README.md:1466`), is on an unchanged line and resolves as in the previous report.

**Ownership search.** I ran `roadmaps grep` over the open index and main for "dedekind sum", "eta transformation", "eta quotient" and "eta multiplier".
- Owners found: QSeriesPartitionsAndMockModularForms §5.2, which now consumes §0.2, and HalfIntegralWeightModularForms §§3.3–3.4 (R02).
- GeometryOfNumbersAndQuadraticArithmetic §4.3 and MetaplecticAutomorphicForms §7.1 own the theta multiplier, which is a different object.
- HabiroNahmSeries and HabiroNumberFields use the eta multiplier through QSeries §5.2.
- No other `Suggested.lean` declares `etaTransformation`.

**Seeded sample.** Of the fifteen sampled targets only "0.2 The eta transformation and eta quotients" is in the diff. Its locators are not legally readable (see below), so its statements were checked by computation (table rows 1–14). The other fourteen are untouched since 65c1a73 and stand as verified in the previous reports.

**Adversarial table.** Rows 1–19 are new, for the changed statements. Rows marked (r5) are carried from PRREVIEW-ModularForms~5 for statements this diff leaves untouched, with the same values.

| Statement | Instances | Values on the two sides | Result; change |
|---|---|---|---|
| 1. §0.2 translation law | Mathlib η at τ+1 | 𝕢 24 (τ+1)=e^(πi/12)·𝕢 24 τ; each 1−e^(2πi(n+1)(τ+1)) is unchanged | retain |
| 2. §0.2 inversion, root choice | τ=i, 2i, −1+i | √(−iτ): 1, √2, 2^(1/4)e^(iπ/8); (√i)⁻¹√τ: 1, √2, 2^(1/4)e^(iπ/8) | agree; retain |
| 3. `etaTransformation` existence | c≠0; c=0 | Δ(γτ)=(cτ+d)¹²Δ(τ) and (√w)²⁴=w¹² (`csqrt_pow_24_eq`); c=0: γ=±Tᵇ, ε=e^(πib/12)·(1 or i⁻¹), so ε²⁴=1 | retain |
| 4. ε formula, numerically | 164 matrices, c∈[−6,7], d∈[−9,9], τ∈{0.13+0.9i, −0.4+0.6i, 0.31+1.7i} | quotient constant in τ, ε²⁴=1, formula equals the quotient at every c>0: 0 failures | retain |
| 5. ε at generators | T, S, −I, (2 1; 1 1) | e^(πi/12); e^(−πi/4), equal to Mathlib's (√i)⁻¹; −i, since √(−1)=i; for (2 1; 1 1) the formula gives exp(πi(3/12−0−1/4))=1, and composing T², S, T gives e^(πi(2−3+1)/12)=1 | retain |
| 6. Check (1 0; n 1) | n=3 | s(1,3)=−1/18+1/9=1/18=(2·1)/36; formula e^(πi(1/18−1/18−1/4))=e^(−3πi/12); without −1/4 it gives 1 | Check correct; retain |
| 7. Lean Dedekind sum vs ((x)) | 1≤r≤c−1 with gcd(d,c)=1; c=1 | c∤dr, so `Int.fract`−1/2=((dr/c)); `Finset.Ioo 0 1`=∅, so s=0 | retain |
| 8. Lean context and generality | binders; branch | γ only; `Complex.sqrt` is principal as in README; "for c>0" in both | retain |
| 9. Eta-quotient law with Kronecker χ | N=23 (1,1); 44 (r₂=r₂₂=1); 11 (2,2); 2 (−8,16); N=4 and 8 with negative exponents, k=3, −1, −5 | f∣_kγ=χ(d)f over c∈Nℤ, \|c\|≤3N, \|d\|≤13, negative d included, 62–118 matrices each: 0 failures | retain |
| 10. χ at −I | d=−1 | f∣_k(−I)=(−1)ᵏf; ((−1)ᵏm/−1)=sign((−1)ᵏm)=(−1)ᵏ | retain |
| 11. Cusp-order formula | η²η(11·)²; η(·)η(23·); η(2·)¹² at N=4, cusp 1/2 | 1 and 1; 1 and 1; (4/24)(4·12/8)=1, and directly f∣γ=−η(2τ)¹² has order 1 | retain |
| 12. Check η(z)η(11z) | T∈Γ₀(11) | f(τ+1)=e^(πi·12/12)f=−f | retain |
| 13. Route of the criterion | η(·)η(23·), γ=(14 3; 23 5) | ε(γ)ε(γ₂₃)=exp(πi(19/276+19/12−7/46−1/2))=−1=(−23/5); at d=1, 2 the product is +1 | R01 |
| 14. Kronecker form (R01 repair) | 1≤c≤29, \|d\|≤40 | 1453 matrices, 0 mismatches against the Dedekind form | repair verified |
| 15. HalfIntegralWeight §3.3 vs §0.2 | normalisation | 2πi(x/(24c)−s/2−1/8)=πi(x/(12c)−s−1/4) with x=a+d | same object; R02 |
| 16. QSeries §5.2 conventions | T, S, −I, (1 0; 1 1) | e^(πi/12), e^(−πi/4), −i, e^(−πi/12); §0.2 at n=1 gives e^(−πi/12) | agree; retain |
| 17. Bad-prime contract | η²η(11·)², p=11 | v=1, c=0: a₁₁²=1·11⁰=1; a₁₁=1 | retain |
| 18. `eta_neg_one_div_sq` contract | τ=i | η(i)²=−i·i·η(i)²=η(i)² | retain |
| 19. Earlier-label table | 8 dropped anchors | 6 resolve; old Layer 7 (continuation, FE) and old Layer 8 (integral algebra) do not | R03 |
| (r5) Scope: conventions agree with ModularCurvesPartII | curve, marked point, frame, multiplier | a₄=−g₂/4, a₆=−g₃/4; 1/N; dt/t=2πi du; (cz+d)⁻¹ in both | retain |
| (r5) EllipticPeriods §2.4 constants | g₂, g₃ | 60·2ζ(4)=4π⁴/3; 140·2ζ(6)=8π⁶/27 | retain |
| (r5) Tate curve over ℤ[1/N₀]((q)) | n=1…5, N₀=5 | a₄=−5q−45q²−140q³−365q⁴−630q⁵; a₆=−q−23q²−154q³−647q⁴−1876q⁵, integral | retain |
| (r5) §10D complex Tate normalisation | q=0 | (2πi)⁻²℘−1/12=−1/(4sin²πu)=t/(1−t)² | retain |
| (r5) Direction of supply | MCP2, EP, AMF | MCP2 cites Layers 2–6, 8, 8G, 10A–10C; depcheck 0 problems | retain |
| (r5) Hecke recurrence | Δ, p=2, 3 | a₂a₃=−6048=a₆; a₂²−2¹¹=−1472=a₄ | retain |
| (r5) Bad prime | η²η(11·)², p=11 | a₁₂₁=1; a unit diamond value would give −10 | retain |
| (r5) Functional-equation sign | level 11 k=2 w=−1; Δ | i²(−1)=1; i¹²=1 | retain |
| (r5) 0.1 constant terms | χ odd mod 3, k=1 | B₁,χ=−1/3; a₀=1/6 | retain |
| (r5) 0.1 corrected E₂ | t=2 | −1−24q−24q² | retain |
| (r5) 1.1 δ and cusp term | Γ₁(5), Δ | widths 1,1,5,5; mass 24; ord 1 | retain |
| (r5) 1.1 irregular order | exponents 1, 3 | 1/2+3/2=2 | retain |
| (r5) 2.1 rank two, p=2 | T(1,2)² | T(1,4)+3T(2,2) | retain |
| (r5) 2.2 degrees | diag(1,p), pI | p+1=3; 1 | retain |
| (r5) 3.1 oldspace | N=11, 22, k=2 | old 0, new 1; old 2, new 0 | retain |
| (r5) 4.1 primitive associate | Δ(z)+cΔ(2z) | a₂=−24+c; conductor 1 | retain |
| (r5) 5.1 controls | Δ at level 2; 2Δ | not new; a₁=2 | retain |
| (r5) 6.1 commutation scalar | χ(2)=i mod 5, k=3 | 4−i≠1+4i | retain |
| (r5) 7.1 abscissa | E₄ | 240ζ(s)ζ(s−3), pole at 4 | retain |
| (r5) 8.0 normalisation | Δ | q−24q²; without 2πi scaled by (2πi)¹² | retain |
| (r5) 8.0 descent | √2Δ; Δ/11 | a₁=√2∉ℚ; 1/11∈ℚ | retain |
| (r5) 8.0 cusp 0 | ζ↦q^(1/N) | Tate point exp(2πiz/N) | retain |
| (r5) 8.0 N=1, M=4 | f(i) | f(i)=i^(−k)f(i); E₆(i)=0 | retain |
| (r5) 8.0 N=2, M=5 | Γ₁(2)∩Γ₁(5) | Γ₁(10) | retain |
| (r5) 8.0 N≤3 descent | pullbacks | agree ⇔ f∣_kγ=f on Γ₁(N) | retain |
| (r5) 8.0 surjectivity | η(z)η(23z), σ | σ(f) is the avatar of σ(φs^k) | retain |
| (r5) 8.1 bounded denominators | Δ/11; fΔ | 11·(Δ/11): a₁=1; q²−25q³ | retain |
| (r5) 8.2 norm factors | √2; 1 | X²−2; (X−1)² | retain |
| (r5) 9.1 Satake | Δ p=2; level 11 p=11 | X²+24X+2048; {1,0} | retain |
| (r5) 9.2 twist level | ψ mod m | conjugate of Γ₁(Nm²) lies in Γ₁(N) | retain |
| (r5) 9.2 depletion | Δ, ψ mod 2 | q+252q³, idempotent | retain |
| (r5) 9.3 Sturm length | Γ₁(13), k=2 | B=28 | retain |
| (r5) 9.3 letters | positions 25, 26 | z, ba | retain |
| (r5) 10A genus | Γ₀(11), Γ₀(2), Γ₁(13), Γ₁(22) | 1; 0; 2; 6 | retain |
| (r5) 10B Riemann–Roch, Hurwitz | ℙ¹; id, z², double cover | χ=deg+1; −2=−2+0, −2=−4+2, 0=−4+4 | retain |
| (r5) 10C dimensions | level 1 k=12; Γ(3) k=3, 1 | 2, 1; 4, 0; 2, 0 | retain |
| (r5) 10C β=μ∗μ | 1, p, p², p³, 6, 12 | 1, −2, 1, 0, 4, −2 | retain |
| (r5) 10C newspace identity | Γ₀(22); Γ₁(22); Γ₁(13) | 0; 4; 2 | retain |
| (r5) 10D lattice–modular, discriminant, j | m=2, 3 | 4π⁴/3, 8π⁶/27; (2π)¹²Δ; j=E₄³/Δ | retain |
| (r5) 10D uniformisation, isomorphisms, moduli | Y=℘′/2; Λ_γz; 1/N | Y²=X³−(g₂/4)X−g₃/4; α=(cz+d)⁻¹; (1−d)/N, c/N∈ℤ | retain |
| (r5) 10D −1, order three, diamond and S, cusps | N∣2; (1,−1;3,−2); γ∈Γ₀(N) | 2/N∈ℤ+ℤz ⇔ N∣2; γ³=I; ζ^d q^(c/N) | retain |
| (r5) 10D degree, function field, sections | Γ₁(13); E₄ at level 4 | d=84; equality of fields; ord_P=4 | retain |
| (r5) 11.1 trace formula | k=12 n=1…5; k=16, 24, 60; k=2 | 1, −24, 252, −1472, 4830; 216, 1080, −449691864; −1, −3 vs 0, 0 | retain k≥4 |
| (r5) Weight-60 example | mod 17, 37, 83 | roots 6, 9, 10; 16, 22, 23; none | retain |
| (r5) `existsCoefficientTwist` | m=1; n=0 | ψ(0)=1, a₀=0 | retain |
| (r5) `crossLevelStrongMultiplicityOne` | k≤0 | no `Newform N k` | retain |
| (r5) `existsUniqueGaloisConjugate` | Δ, σ=id | g=Δ | retain |
| (r5) `newspaceDimension` | k≤0; N=1 | 0=0; β(1)·dim S_k | retain |

## Not verifiable

- **Apostol, *Modular Functions and Dirichlet Series in Number Theory*, Theorems 3.1 and 3.4.** The sources service reports DOI prefix 10.1007 as a paywalled publisher, so the locators are uncertified. I checked the statements by computation instead (rows 2–6). HalfIntegralWeightModularForms §3.3 independently restates Theorem 3.4 with the same constants (row 15).
- **Ono, *The Web of Modularity*, Theorems 1.64–1.65.** The service found no legal copy; the AMS landing page has no licence class. I checked the statements by computation instead (rows 9–11).
- Neither Apostol nor Ono is in the package's `sources.toml`. This review edits no manifest; the intake can record both as uncertified.
- EllipticCurveModularity #1018 (b7c957c) and AlgebraicModularFormsAndSerreWeights #928 (364af81) were read from the open index, not from a sibling checkout. A head newer than the index, as happened for QSeriesPartitionsAndMockModularForms, could move the line numbers in R03.
- The uncertified sources carried from earlier reports (Diamond–Shurman, Miyake, Shimura, Atkin–Li, Forster, Sturm, Silverman) are untouched by the diff.

## Source issues

- none
