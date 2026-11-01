# Repair report: red-team round 1 of FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII

Two reviews were merged: review a (findings F01–F06, headed by their own ids) and review b (its findings F01–F03, headed B01–B03 so that they do not collide with review a's ids). Where they overlap, the overlap is settled once and cross-referenced: F04 and the third bullet of B03 both concern the deJong95 page; F06 and B02 both concern the third Check of §2.10.

## F01 (P2) — applied

§2.0 "For G/K₀ and b∈G(K₀)" → "Let G be a connected reductive group over ℚ_p and b∈G(K₀)", with σ acting through the ℚ_p-structure, as Witt Frobenius on K₀ and trivially on A. A new fourth Check: the conjugated torus uTu⁻¹, with u=[[1,a],[0,1]] and σ(a)≠a, has points [[x,a(y−x)],[0,y]]. Entrywise Frobenius sends [[2,−a],[0,1]] outside this group. Through the model, J_1(ℚ_p)=uT(ℚ_p)u⁻¹. No other "G/K₀" occurs in the README.

## F02 (P1) — applied differently

Verified: PadicHodgeTheory §5.5 (its period-torsor paragraph) assumes K/ℚ̆_p finite, and Wintenberger97 line 31 assumes an algebraically closed residue field. Kisin17 line 242 allows perfect k. No supplier gap is needed. With K̆=K⊗_{K₀}W(k̄)[1/p], which is a field finite over ℚ̆_p, each realization (B_cris⊗D)^{φ=1}∩Fil⁰ has the same underlying ℚ_p-space as over K. So the supplied theorem applies at K̆. This reduction is now stated in the supplier contract (line 110), in Scope and in the §5.17 proof route, and §5.17 has a new Check for k=𝔽₃, K=ℚ₃.

## F03 (P2) — applied

Verified at the pin: `Ideal.iInf_pow_smul_eq_bot_of_le_jacobson` (`Mathlib/RingTheory/Filtration.lean:415`) and `IsLocalization.algebraMap_mem_map_algebraMap_iff` (`Mathlib/RingTheory/Localization/Ideal.lean:76`). The gap now asks only for joint injectivity of the DVR points, in both the README and the plan's `gaps` entry. The "From Mathlib" contract derives ∩ₙ(I+TⁿB)=I and the contraction. It includes the I=(p) non-example. §4.11's prose, its *Needs* line and the SchemeAndStackFoundations paragraph now cite these two declarations.

## F04 (P3) — applied

deJong95 line 2935 is the running head of printed p.89, Proposition 7.3.6 is at line 2952, and its proof ends at line 2984 on p.90. "Proposition 7.3.6, p.88" → "pp.89–90" in the supplier contract, in References and in the `sources.toml` locator. This also settles the third bullet of B03.

## F05 (P3) — applied

Under End(Λ)≅Λ⊗Λ∨ the evaluation tensor is the identity, so the third Check of §2.7 repeated the first. It is replaced by the diagonal torus on ℤ₃² cut out by E₁₁ with μ_y=diag(z,1). There R_G=W(k), a_G=(3) and c=id, so E₁₁ is horizontal. E₂₁ is excluded as an input because conjugation by diag(2,1) scales it by 1/2≢1 mod 3.

## F06 (P3) — applied

In §0.4 the third Check is now B=𝔽₃[x,y]/(x³,y³) with truncated divided powers. The Teichmüller sum [x]+[y] has second coordinate −x²y−xy²≠0, whereas [x+y] has second coordinate 0. In §2.10 the third Check is now the basis-swap transport test: c=id fixes E₁₁ and its transport E₂₂. The negative control was reworded: a marking composed with w does not carry E₁₁ to E₁₁. The suggested text "keeping E₁₁ fails" was imprecise, because wTw⁻¹=T. The all-points warning moved into the definition prose.

## B01 (P2) — applied

Verified: KP18 uses 𝒢°(ℤ_p)=𝒢(ℤ_p)∩ker κ only for 𝒢=𝒢_x (KP18 lines 2430 and 2437), and ReductiveGroupsPartII §RG2.3.3 states it for fixers. The dilatation witness is correct: the image diag(1,χ) has κ=0, but its reduction diag(1,χ̄) is not scalar. §4.2 now draws the 𝒢° conclusion only for a Bruhat–Tits stabilizer 𝒢_z, keeps the ker κ conclusion for every smooth 𝒢, and states the dilatation counterexample. The same pattern was repaired in the Conventions paragraph, which now says what "connected parahoric" presupposes. §4.3 already takes the 𝒢° image as a hypothesis.

## B02 (P3) — applied differently

§2.9's uncomputed second Check is replaced by the computed one: H₀=`μ_{p∞}`⊕ℚ_p/ℤ_p with type E₁₁, and the line K(e₁+te₂) with t∈m_K nonzero is not adapted because E₁₁(e₁+te₂)=e₁. The condition t∈m_K was added so that the line lifts ke₁. For §2.10 the F06 transport test was used. The suggested c=1+εE₂₁ example repeats §2.10's second Check, and it is not the canonical c of a torus datum, whose R_G=W(k) has no ε.

## B03 (P3) — applied

Hoff23 Definition 1.10 is at line 504, on printed p.11: p.10 → p.11. KZ25 §3.4.1 opens at line 1115, on p.25 (the page marker at line 1081 is p.25 and the table of contents at line 28 agrees). Changes: §6.1 pp.26–27 → pp.25–27; §5.9 p.26 → pp.25–26; §6.0 "§3.4.1–3.4.3, pp.7–10 and 26–27" → "25–27". The worked-example citation of KZ25 line 1139 on p.26 is correct and unchanged. The deJong95 page is covered under F04. The KZ25 locators in the plan's nodes cannot be edited in this job.

## Checks

- `lake env lean packages/FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII/Suggested.lean`: exit 0, no output. The file is unchanged, with zero declarations. The `#check @name` binder audit is vacuous because there is no declaration to check.
- Dependency check: `depcheck: 56 roadmaps, 651 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name was reported as found nowhere. The two new Mathlib names were checked by hand at the pin (paths above).

- Gate repair (report headings): review a's findings are headed by their own ids F01–F06; review b's findings F01–F03 are headed B01–B03 to keep the ids distinct.
- Gate repair (TeX-style markup): seven formulas in README prose used brace subscripts or superscripts or a backslash set difference outside code spans. Each now sits in a code span, with its content unchanged: `K̆=K⊗_{K₀}W(k̄)[1/p]` (the PadicHodgeTheory supplier contract and the §5.17 proof sketch), `W(𝔽_{p²})` (the torus Check of §2.0), `(B_cris⊗_{K₀}D)^{φ=1}∩Fil⁰(B_dR⊗_K D_K)` (§5.17 proof sketch), `H¹(Spec𝔖\{(p,u)},𝒢°)=1` and `U=Spec𝔖\{(p,u)}` (§2.4, §4.1 and §4.3). No mathematics changed. Rerun after this repair: dependency check `depcheck: 56 roadmaps, 651 edges, 0 problem(s)`. `Suggested.lean` was not touched, so the earlier elaboration result (exit 0) still holds.

## Adversarial pass on changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| §2.0 σ via ℚ_p-model | uTu⁻¹, b=1; G_m, b=p | entrywise gives −σ(a)≠−a, so it leaves the group; through the model, J=(ℚ_p×)²; G_m gives ℚ_p× | consistent with the other Checks |
| §0.4 Check | p=3, x,y | Witt carry −(x²y+xy²)≠0 versus 0 | discriminates |
| §2.7 Check | torus, E₁₁, E₂₁ | c=id; multiplier 1/2≡2 mod 3 | holds |
| §2.9 Check | t=0; t=π | E₁₁e₁=e₁∈Ke₁; e₁∉K(e₁+πe₂) | holds |
| §2.10 Check | swap w | wE₁₁w⁻¹=E₂₂; wTw⁻¹=T | holds; the wording was fixed accordingly |
| §4.2 | GL₂ hyperspecial; dilatation | both sides GL₂(ℤ_p); diag(1,χ̄) is non-scalar and lies in H₀(𝔽_p) | the stabilizer hypothesis is needed |
| §5.17 base change | k=𝔽₃, K=ℚ₃, G_m | K̆=ℚ̆₃, κ−μ♮=1−1=0 | holds |
| Mathlib ideal steps | ℤ₃[[T]], I=(T²); I=(3) | ∩(T²+Tⁿ)=(T²) and the contraction is (T²); B/(3) has 3-torsion and the contraction is B | as stated |

## Notes for the maintainer

- No Lean names changed. The gap slug `formal-dvr-point-detection` is unchanged, but its `needs` is shorter: SchemeAndStackFoundations §§4.7–4.8 is now asked only for joint injectivity of DVR points.
- The perfect-residue period-torsor comparison is proved inside this roadmap (§5.17) from PadicHodgeTheory §5.5. No new demand is placed on PadicHodgeTheory.
- Ownership: no new construction was introduced that another roadmap could own. The base-change reduction is a step inside §5.17's proof.
- No suspicious instructions were found in the reviews.
