# FIX-PKG-LocalLanglandsCorrespondenceForG2~5

The review is `REV-PKG-LocalLanglandsCorrespondenceForG2~4`, with two findings: F01 (P2) and F02 (P3). I checked both against the supplier's current head, the CG text and the package itself, and both are correct. Files changed: `packages/LocalLanglandsCorrespondenceForG2/README.md`, `Suggested.lean` (one docstring sentence; no declaration changed), `sources.toml` (CG entry only: locator and `cited_for`, same key and sha). `design/plan.json` is unchanged, because no new supplier gap is needed. `metadata.toml` is unchanged.

## F01 (P2) — applied

**Verified.** ExceptionalThetaCorrespondencesForG2 §0.6 (*Exceptional inclusions of complex dual groups*, at its open head) lists two restrictions in its API: the seven-module restricts to SL₃ as 1⊕3⊕3∨, and the spin eight-module restricts to G₂ as 1⊕7. These use the same inclusions, the same coefficient field and a weight-comparison proof route. §0.1 of this package stated the same two identities as its own targets, with a highest-weight route. That was duplicate ownership. The transport of parameters along algebraic dual-group homomorphisms is the API of the supplier's §0.7.

**Change.** §0.1 now owns only the Spin₈→Spin₇ restriction (vector → 1⊕q, half-spins → s), with its own route: B₃-torus weights (±½,±½,±½), each once. It uses the supplier's two restrictions (§0.6) and its parameter transport (§0.7), and gets the Weil–Deligne identities as their consequence. The section number is kept.

**Pattern.** The h-branching is now cited as SpinRepresentations Layer 5 at l = 3 (the restriction S⁺⊕S⁻ of the type-B spin module) read through Layer 6 (Spin₆≅SL₄). It is no longer a separate highest-weight proof here. The Scope bullet and the supplier contracts for ExceptionalThetaCorrespondencesForG2 (§§0.6, 0.7, 0.8) and SpinRepresentations (Layers 2, 5, 6) name the imported facts. All numerical Checks are kept. I added one Check that pins the Spin₈ embedding at the centre.

## F02 (P3) — applied

**Verified.** CG Example 1 (CG line 490) has domain μ₄×μ₄. It is not a pair of W_F-parameters for an arbitrary F. Over ℚ₃, F×/F×⁴ has order 8 < 16, so it cannot be pulled back there. CG Prop. 8.4(a) (CG line 1257) shows that no type I unacceptable morphism is discrete. That includes Example 1, whose centralizer has dimension 3.

**Change.** Before: §§0.4, 0.6, 0.7 and 8.2 used the μ₄×μ₄ pair as if it were a pair of local parameters. After: §0.8 adds a local form for every F (CG Prop. 8.3, trivial on SL₂(ℂ), with a polar-decomposition route), and those Checks use it. Two new Checks: ℚ₅ versus ℚ₃, and non-discreteness. §8.2's Check is replaced by a spin-condition Check. The examples are corrected. The CG manifest entry gets the new locators, with the same key.

## Checks

- **Elaboration.** `lake env lean packages/LocalLanglandsCorrespondenceForG2/Suggested.lean`, run from the content checkout, exited 0. Its only output was `declaration uses 'sorry'` at 118:8 (`griess_conjugacy`) and 137:8 (`spin7_not_acceptable`). The lines moved because the module docstring grew. No `TauCeti.*` build was needed.
- **Signatures.** I put `#check @name` for all five declarations into one scratch file and elaborated it once. `octonionAut : Subgroup (TauCeti.Octonion ℂ ≃ₗ[ℂ] TauCeti.Octonion ℂ)`. `octonionRep : {Γ} → [Group Γ] → (Γ →* ↥octonionAut) → Representation ℂ Γ (TauCeti.Octonion ℂ)`. `griess_conjugacy` keeps both `IsSemisimpleRepresentation` hypotheses and the intertwining `∃ e`, with conclusion `∃ g, ∀ γ, ρ' γ = g * ρ γ * g⁻¹`. `sumSquaresSeven : QuadraticForm ℂ (Fin 7 → ℂ)`. `spin7_not_acceptable` is `∃ Γ _ (_ : Finite Γ) r r', (∀ γ, IsConj (r γ) (r' γ)) ∧ ¬∃ g, ∀ γ, r' γ = g * r γ * g⁻¹`. All five agree with their README statements and nothing changed: only one docstring sentence was edited. It now says that the local form of §0.8 is a README statement needing Spin₇-valued parameters, which the pins lack.
- **Dependency check** (the prescribed command), exact output:

  ```text
  depcheck: 236 roadmaps, 2147 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line.
- **`roadmaps resolve`** on the README: no unresolved roadmap citations and no unresolved Lean names.
- **Gate failures listed in the brief:** none were listed.

## Adversarial pass (changed statements)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §0.1 Spin₈→Spin₇ restriction (owned) | B₃ torus; centre −1; wrong embedding through s | D₄ half-spin weights (±½)⁴ with an even number of minus signs. Dropping the 4th coordinate gives each of the 8 vectors (±½,±½,±½) once, which are the weights of s. Vector: ±ε₁,±ε₂,±ε₃,0,0, the weights of 1⊕q. At −1 the traces are 8 (vector) and −8 (half-spin). A lift of s : Spin₇→SO₈ sends −1 to ±ω, which acts by −1 on the vector, so the vector would restrict to s. | True for the stabilizer embedding. Added the centre Check. |
| §0.1 imported v∘j, s∘i | diag(2,3,1/6); identity; a=−1,b=1 | Spectrum {1,2,3,1/6,1/2,1/3,6}, product 1. Spin adds one 1. Dimensions 7 and 8. (X−1)³(X+1)⁴. The wrong model Std⊕Std gives {1,2,3,1/6,2,3,1/6}. | Agrees with supplier §0.6. Now imported. |
| §0.1 h-branching | SL₄ torus diag(t₁..t₄), ∏tᵢ=1; −I ∈ SL₄ | q∘h: 1 and the six tᵢtⱼ (i<j), dimension 7. s∘h: tᵢ and tᵢ⁻¹, dimension 8. At −I: Λ² is trivial, so q-trace 7 = q(−1); Std⊕Std∨ is −I, trace −8 = tr s(−1). | Consistent with s(−1) = −1, q(−1) = 1. Now cited to SpinRepresentations Layers 5–6. |
| §0.1 parameter transport | φ_τ = Sym² (subregular); trivial SL₂ | N rank on 1⊕Sym²⊕Sym² is 0+2+2 = 4. With trivial SL₂, N = 0 on both sides. | Monodromy dρ(N) kept. |
| §0.8 local form (CG Prop. 8.3) | p odd versus p = 2; ℚ₃, ℚ₅ | Hom(W_F,±1) has rank 2 (p odd) or 2+[F:ℚ₂] (ℚ₂: 3), so there are ≥ 3 quadratic extensions and E ≠ E′ always exists. The construction covers p = 2 and 3. | True for every F; no restriction to particular primes. |
| §0.8 ℚ₅ / ℚ₃ Check | F×/F×⁴ | ℚ₅: 5^ℤ×μ₄×(1+5ℤ₅) gives ℤ/4×ℤ/4, order 16, so there is a surjection. ℚ₃: ℤ/4×ℤ/2, order 8 < 16, so there is none. ℚ₂: ℤ/4×ℤ/2×ℤ/4, order 32. | Example-1 pullback works only for some F; the general F uses Prop. 8.3. |
| §0.8 element conjugacy ⇒ equal s-images | Example 1 at g=(0,1) | V eigenvalues {1,−1,i,i}, η(g) = −1. s∘r(g) on V⊕V∨: {1,−1,i,i,1,−1,−i,−i}. s∘(ηr)(g) is the negatives, the same multiset, with trace 0 = 0. | Holds. |
| §0.8 polar-decomposition step | SU(2), p = diag(2,1/2), r = [[0,1],[−1,0]]; r = diag(i,−i) | p r p⁻¹ = [[0,4],[−1/4,0]], column norms 4 and 1/4, not unitary, so p does not conjugate r into the compact group. For r diagonal, p r p⁻¹ = r, matching the forced conclusion u = r. | Uniqueness of U·P gives k⁻¹ηr k = r. Holds. |
| §0.8 non-discreteness Check | Example 1; any type I pair | Example 1 q-image 1⊕2c⊕d⊕d⁻¹⊕e⊕e⁻¹, centralizer dimension 1+1+1 = 3. Type I contains a quadratic character twice (CG Prop. 8.4(a)), so the centralizer has dimension ≥ 1. | Not discrete. Check added; no discrete claim is made anywhere. |
| §0.4 Check (Spin₇ analogue) | local pair φ, ηφ | q∘(ηφ) = q∘φ (η ∈ ker q). s∘(ηφ) ≅ s∘φ (characters equal, finite image). The two are not conjugate (Prop. 8.3 plus the polar step). | Stronger than before and correct. |
| §0.6 / §0.7 Checks | local pair; trivial versus central quadratic | Local pair: one weak class, two classes in Φ(PGSp₆). Trivial versus central: q-traces 7 and 7, s-traces 8 and −8. | Both directions of §0.7 consistent. |
| §8.2 replacement Check | σ = St, φ̃ principal, χ unramified quadratic | Spin images 1⊕Sym⁶ and χ⊗(1⊕Sym⁶), traces at (Frob,1) 8 and −8. Both q-images Sym⁶. | The s-condition selects one of the two weak classes. Valid. |
| Worked example: unacceptable pair | μ₄×μ₄; ℚ₅ pullback | Weights (1,0),(1,2),(0,1),(2,1) sum to (4,4) ≡ 0. η⊗V = {(1,2),(1,0),(0,3),(2,3)}, which is neither V nor V∨ = {(3,0),(3,2),(0,3),(2,3)}. | "Same weak class" is now said only of the ℚ₅ parameters. |

## Ownership and maintainer notes

- **No new supplier gap.** ExceptionalThetaCorrespondencesForG2 §§0.6–0.8 (open new-roadmap PR, earlier in the order), SpinRepresentations Layers 2, 5, 6 (main) and ClassFieldTheory Layer 9 (main; it has `localWeilArtinEquiv` and `weilTransfer`) each state what is now cited. Every edge points to an earlier roadmap or to main.
- **Spin₈→Spin₇ half-spin restriction.** Main has no owner for it: SpinRepresentations Layer 5 states only the B→D direction, and ClassicalGroups Layer 6 on main branches only SO representations. The open revision of RepresentationTheory/ClassicalGroups adds a spin branching to its §6.2 with half-integral rows. That revision is not a dependency. When it merges, §0.1's Spin₈→Spin₇ statement becomes its case λ=(½,½,½,½)→μ=(½,½,½) and should then be cited from there.
- **Ownership against open pull requests** was checked through the overlap snapshot, indexed `roadmaps grep` for half-spin restriction statements, and the closest heads (ExceptionalThetaCorrespondencesForG2, ClassicalGroups revision). No other PR changes this roadmap.
- **Names.** No Lean name changed. No README id was renumbered: §0.1 and §0.8 keep their numbers. No other roadmap's citation is affected.
- **Sources.** No new key and no fetch; CG remains the single key. `needs-references.toml` was not created. The text was read only at the cited CG lines.
