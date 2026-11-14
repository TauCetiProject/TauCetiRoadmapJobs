# ArithmeticKTheoryPartII repair report

## R01 (P2) — applied

Gap `classical-symplectic-plus` deleted (README contract and plan `gaps`). §1.1 now states the instance itself. Odd-rank alternating determinants vanish, and AbelianSchemesAndArithmeticModuli §A5.4(1) gives every object ≅ hᵍ, h=H(ℤ). So (hⁿ) is cofinal, translations are faithful and π₀=ℕ. StableHomotopyKTheory §4.18 then gives ℤ×BSp∞(ℤ)⁺. A new law covers naturality for the forgetful and hyperbolic functors, and a new Check was added. Consumers in §§4.3, 8.4 and Layers 1, 4, 8 now cite §1.1.

Disposition note. This finding re-raises REV~3/F01, which the previous repair marked not actionable for a procedural reason only. That earlier report's own evidence table confirmed the mathematics. Rule 3a covers findings that no edit of this package can settle. This one is settled entirely inside this package, by deleting our own over-asking contract and citing existing owners, so it is applied on the mathematics. The maintainer may still overrule it.

## R02 (P2) — applied

Gap `skew-integer-splitting` deleted (README and plan). The HermitianKTheoryOfPoincareCategories contract and Scope now cite §§0.5, 4.11, 6.6, 8.1, 8.3, not "Layers 4–6". §8.1 at (ℤ,−ℤ) is the fibre sequence K(ℤ)_(hC₂)→KSp(ℤ)→τ≥0L^gs with the unscaled hyperbolic first map, and §8.3 is its splitting after inverting 2. The §1.1 law now derives the normalization H, (1/2)c_B. §3.4's proof route and Needs, and the Layer 1 and Layer 3 Dependencies, cite §§8.1, 8.3.

## R03 (P2) — applied differently

The ChromaticHomotopyTheory contract is replaced by BordismFormalGroups F6.3 (on main) and GeneralAlgebraicKTheoryPartII §§4.1–4.3, 4.20. Every ChromaticHomotopyTheory citation is replaced: Scope, the contract and its gap, the §1.2 and §3.6 texts, and the Needs or Dependencies of §§1.2, 3.6, 4.4, 7.1 and Layers 1, 3, 4, 7. The gap is **deleted, not narrowed**. Reason: F6.3 (main README lines 993–999) already proves that a power of any v₁ self-map has degree 2a(p−1). It also proves vᵃ=wᵇ for two self-maps and that maps between type-one spectra are intertwined by equal-degree powers, which is the reduction compatibility. The exact degree 2pⁿ⁻¹(p−1) is not needed. §1.2 now takes any period m divisible by 2pⁿ⁻¹(p−1), obtained by iterating pⁿ⁻¹ times. A new law says χ^(m/2)≡1 mod q. The q=25 Example was adjusted.

## R04 (P3) — applied

EH.5 / EH.6 / G7 → EtaleHomotopyTypes Layers 5–6, with sections where one statement is meant:
- §5.2 Betti realization and §5.3a smooth descent (§4.2 Needs, §4.3 Needs, Layer 4 Dependencies, the §4.2 Check);
- §§6.6–6.9 for completion, the zigzag and automorphism naturality (§4.4 text, route and Needs, Layer 4 Dependencies).

Scope, the contract and the plan's gap section ("Layers 5–6") were updated. "G7" is deleted.

## R05 (P3) — applied

"ComplexMultiplicationAndExplicitReciprocity §1.3" → "§1.2" at all six places: Scope, the contract, the §2.2 Needs, Layer 2 Dependencies, the §5.1 Needs and Layer 5 Dependencies. The plan gap `cm-arbitrary-automorphism` section → "§§1.2, 2.1–2.2". At that roadmap's head, §1.2 is "Serre tensor, Lie and period comparisons" and contains `cmSerreTensor`. The gap itself is still needed.

## R06 (P3) — applied

At the GeneralAlgebraicKTheory contract and §7.6's Needs, `finiteFieldKGroups` → "§13.8c’s finite-field calculation" / "(the finite-field calculation of §13.8c)". The name occurs only in GeometryOfNumbersAndQuadraticArithmetic §6.10 as an alias. GeneralAlgebraicKTheory §13.8c states K₀=ℤ, K₂ᵢ=0 and K₂ᵢ₋₁≅ℤ/(qⁱ−1) in prose.

## R07 (P3) — applied

"pp. 29/22/60/38/44/50" → "p. 29/22/60/38/44/50" in §§3.1, 3.6, 4.2, 5.3, 7.7 and 8.3. Each was confirmed as one page by its FGV page marker: lines 1285, 962, 2754, 1720, 2016 and 2289 open pp. 29, 22, 60, 38, 44 and 50. The cited lines 1294, 989, 2773, 1735, 2036 and 2295 lie before the next marker. The multi-page "pp." lists in §§1.2, 3.5, 4.4 and 6.3 are correct and unchanged.

## Checks

- **Elaboration.** `lake env lean packages/ArithmeticKTheoryPartII/Suggested.lean`, run from the content checkout, exits 0. Its only output is `declaration uses 'sorry'` at 52:8 and 95:8. `Suggested.lean` is unchanged and has no `TauCeti.*` import.
- **Binder check.** A scratch file with `#check @` for all four declarations (`exists_split_prime_with_signs`, `conjugateFractionalIdeal`, `IsSkewCMLine`, `exists_cm_lines_with_ideal_product`) elaborated once. Every binder is present: p, n, primality, p≠2, 0<n, the Field, NumberField, IsCyclotomicExtension and IsCMField instances, ε, Φ with its one-per-pair hypothesis, and L≠0. They match README §§2.3–2.4. No change was made.
- **Dependency check.** Output, exit 0:

```text
depcheck: 223 roadmaps, 1983 edges, 0 problem(s)
```

  It printed no UPWARD, CYCLE or moved line. Every supplier now cited is before this roadmap (position 340): StableHomotopyKTheory 17, AbelianSchemesAndArithmeticModuli 42, HermitianKTheoryOfPoincareCategories 63, EtaleHomotopyTypes 239 and GeneralAlgebraicKTheoryPartII 336. BordismFormalGroups is on main. ChromaticHomotopyTheory (338) is no longer cited.
- **Citation resolver.** Checked against main and 424 open heads: no cross-roadmap citation and no Lean name found nowhere.
- **Gaps.** A script compared the README's "What X must provide (gap:…)" lines with the plan's `gaps`. There are 14 slugs, and supplier and `needs` agree exactly. No `gap:` slug in the README is missing from the plan.
- **Plan splice.** Only the `gaps` array changed; a JSON round-trip compared every other top-level key and found them unchanged. Node statements in the plan were not edited and still carry the old identifiers; only `gaps` is editable here.
- **Text checks.** No machine path, LaTeX delimiter or brace was added. No `needs-references.toml` was needed: every new citation is a supplier roadmap section, and FGV, borel1974 and charney1987 are unchanged.
- **Gate failures.** None were listed.

## Computed adversarial record

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §1.1 even rank | all 3×3 alternating matrices with entries in −2..2 | det set {0} | odd rank impossible for unimodular | stated in §1.1 |
| §1.1 unimodular ⇒ hᵍ | [[0,2],[−2,0]]; [[0,1],[−1,0]] | det 4, divisor 2 (not an object); det 1, divisors (1) | A5.4(1) with (d₁⋯d_g)²=1 forces dᵢ=1 | new Check |
| §1.1 hyperbolic form | P=ℤ, ω((x,ξ),(y,η))=η(x)−ξ(y) | matrix [[0,1],[−1,0]]; ω(v,v)=0 | h=H(ℤ) | stated |
| §1.1 hyperbolic on automorphisms | A=−1; A=[[1,1],[0,1]] | diag(−1,−1); MᵀJM=J true | lands in Sp | new Check |
| §1.1 faithful translations | f,f′∈Aut(hᵍ) | f⊥id_h=f′⊥id_h ⇒ restriction gives f=f′ | §4.18 hypothesis holds | stated |
| §1.1 component maps | r=0..3 | hyperbolic r↦r; forget g↦2g; c_B H: 0,2,4,6 = (1+ψ⁻¹)[ℤʳ] | consistent with law 3 | new law |
| §1.1 symmetric control | diag(1,−1), J=⟨1⟩⊥⟨−1⟩ | self-pairing 1; §4.27 components ℤ² | §4.27 not the alternating case | contract sentence |
| §1.1 skew = alternating over ℤ | b skew | 2b(x,x)=0 ⇒ b(x,x)=0 (ℤ torsion-free); over 𝔽₂ the line [1] is skew with b(1,1)=1 | §8.1 groupoid at (ℤ,−ℤ) equals S | stated |
| §1.1 splitting law | degree 0, q odd | K₀(ℤ)_(C₂)=ℤ→KSp₀=ℤ, 1↦h; c_B H(1)=2; (1/2)·2=1; skew W₀=0 | hyp split by (1/2)c_B | law 3 extended |
| GeometryOfNumbers contract: skew L-groups | n=0..7, both shift directions n±2 | L^s_n(ℤ;−ℤ)[1/2]=ℤ[1/2] at n=2,6, else 0 (identical for n+2 and n−2) | matches FGV's −1Wₙ (FGV line 907) | stated |
| §3.4 degree 2 via §8.3 | q odd | K₂(ℤ;ℤ/q)=0 (K₂=ℤ/2, K₁[q]=0); W₂⊗ℤ/q=ℤ/q; π₂(ku)⁻=ℤ/q | KSp₂(ℤ;ℤ/q)=ℤ/q both ways | route updated |
| §3.4 degree 0 via §8.3 | q odd | K₀⁺/q=ℤ/q, W₀=0; π₀(ku)⁻=0 | ℤ/q both ways | none |
| §1.2 period law | q=3, 9, 27, 5, 25, 7 | least m: 4, 12, 36, 8, 40, 12; m/2 mod φ(q)=0; χ^(m/2)≡1 for all units; m≡0 mod 4 | twist preserved, k shifts by m/4 | new law |
| §1.2 negative control | q=25, m=8 | 2⁴=16≢1 mod 25 | a period of 8 would change the twist mod 25 | law excludes it |
| §1.2 existence | n=1; n≥2 | Adams map 2p−2 (F6.3); some power has degree 2a(p−1), then a pⁿ⁻¹-th power | no exact-degree input needed | gap deleted |
| §7.5 Check vs new §1.2 | q=5, k=0 vs k=2 | twist −1≡3 mod 4; degrees −2 and 6 differ by 8 | consistent with admissible m=8 | none |
| §3.6 K(1) comparison | type-one V=S/pⁿ | L_T(1)(X∧V)=X∧v⁻¹V (smashing L₁^f, V p-torsion), ⟨T(1)⟩=⟨K(1)⟩ | inputs: F6.3 and GAKT-II §4.20 | citation updated |
| R04 sections | EtaleHomotopyTypes at head | §5.2 Betti realization, §5.3a smooth descent, §6.6 graded completion, §6.7 zigzag, §6.9 "Field-automorphism naturality of discrete points" | all exist | updated |
| R05 section | ComplexMultiplicationAndExplicitReciprocity at head | §1.1, §1.2 only in Layer 1; §1.2 defines `cmSerreTensor` | §1.2 | updated |
| R06 name | GeneralAlgebraicKTheory README and Lean at head | 0 occurrences; GeometryOfNumbersAndQuadraticArithmetic §6.10 alias | prose citation | updated |
| R07 pages | FGV markers | 1285→p.29, 962→p.22, 2754→p.60, 1720→p.38, 2016→p.44, 2289→p.50 | single pages | updated |
| Gap set | README vs plan | 14 = 14; symmetric difference ∅ | consistent | 3 slugs removed |

## Sources, ownership and maintainer notes

- **Pins and checkouts.** Supplier text was read at the current heads: StableHomotopyKTheory, AbelianSchemesAndArithmeticModuli, HermitianKTheoryOfPoincareCategories, GeometryOfNumbersAndQuadraticArithmetic, ChromaticHomotopyTheory, GeneralAlgebraicKTheory(PartII), EtaleHomotopyTypes and ComplexMultiplicationAndExplicitReciprocity at their open pull-request heads, and BordismFormalGroups on main (755cb11). Pinned Mathlib and Tau Ceti are unchanged and no library claim was added.
- **Ownership.** I searched main and the open heads by object (`BSp∞`, `Sp∞(ℤ)` plus construction, symplectic K-theory, `KSp(`). Nothing else states the integral symplectic plus identification or its naturality. This roadmap therefore owns that instance in §1.1, built from StableHomotopyKTheory §4.18 and AbelianSchemesAndArithmeticModuli §A5.4.
- **Other roadmaps.** Three supplier requests are withdrawn: StableHomotopyKTheory (`classical-symplectic-plus`), GeometryOfNumbersAndQuadraticArithmetic (`skew-integer-splitting`) and ChromaticHomotopyTheory (`compatible-v1-towers`). None of them should add these sections for this roadmap.
- **Suppliers.** The new supplier edges are BordismFormalGroups (main) and GeneralAlgebraicKTheoryPartII (an open roadmap folder, position 336). HermitianKTheoryOfPoincareCategories is now cited by section in Needs lines.
- **Names.** No Lean name changed, and no name other roadmaps cite was touched.
- **Untrusted text.** Nothing suspicious was found in the review or the supplier texts.
