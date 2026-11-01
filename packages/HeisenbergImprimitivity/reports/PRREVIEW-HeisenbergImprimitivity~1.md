# Review of HeisenbergImprimitivity (pull request #1149 at 18b9874)
Folder: `TauCetiRoadmap/HilbertModules/HeisenbergImprimitivity/`

**Verdict:** needs changes

The mathematics of the README is sound wherever it is explicit: I recomputed every displayed convention, the four-vector identity, the Poisson normalisation, the positivity kernel, the trace and dimension formulas, and the whole two-torus dictionary, and found no false statement (table under *Verified sound*). The blocking defects are structural: the two algebras the whole roadmap is about are consumed from sections that do not exist on main (R01), and `Suggested.lean` states no headline theorem at all although two deep ones are statable at the pins (R02). The README is also not in TauCetiRoadmap form (no layers, no `*Needs:*` lines, no Checks, no locators), which is why the dependency check found nothing to check.

## R01 (P1) — The twisted group C*-algebras are consumed from sections that do not exist on main

**Location.** `TauCetiRoadmap/HilbertModules/HeisenbergImprimitivity/README.md` lines 25–31 ("D1.CentralTwists, D1.TwistedBorel and D2.CentralTwists own the twisted L¹/full/reduced completions"), line 71 ("Consume D1.CentralTwists' arbitrary-LCA strongly continuous Schrödinger family"), lines 167–168 ("OperatorAlgebraDynamics D1.CentralTwists' scalar twisted full algebra `C*(L,c)`"), lines 178–180 (D1.TwistedBorel sector comparison, D2.CentralTwists amenability).

**Claim.** `B=C*(D,β)`, `A=C*(E,conj β)`, the Schrödinger family π, the full = reduced comparison and the central-circle weight sector are supplied by OperatorAlgebraDynamics.

**Witness.** OperatorAlgebraDynamics on main (`TauCetiRoadmap/OperatorAlgebraDynamics/README.md`, main fa41b37) has no section named CentralTwists or TwistedBorel. Its D1 (lines 85–120) is the crossed product `(f*g)(s)=∫ f(r) α_r(g(r⁻¹s))` for an action α; the words "2-cocycle", "multiplier cocycle", "Schrödinger" and "Heisenberg" do not occur in it. The three cited headings exist only at the head of pull request #1137 (`### D1.CentralTwists` line 155, `### D1.TwistedBorel` line 404, `### D2.CentralTwists` line 579), which revises an existing roadmap and is therefore never a dependency: OperatorAlgebraDynamics must be cited as it is on main. So the twisted algebras `C*(L,c)` of a discrete abelian group, the twisted full = reduced theorem, the Schrödinger family on L²(M) and the circle-extension sector are unowned prerequisites, and every layer H3–H6 rests on them.

**Repair.** Move the notion down. In H3 make the scalar twisted algebra of a discrete abelian group L with a normalised circle-valued 2-cocycle c a target of this roadmap: the ℓ¹ algebra with the displayed product and involution, its universal C*-completion, the regular representation on ℓ²(L), the coefficient-at-zero faithful trace, the gauge action of L̂, and full = reduced via the amenable central extension `K=𝕋×_c L` that the README already sketches (lines 182–189). In H1 make the strongly continuous Schrödinger family on L²(M) for the finite-type M a target, with the cocycle and adjoint laws (lines 74–75). Cite OperatorAlgebraDynamics (main) D1 only for the integrated form of a covariant pair and D2 only for the untwisted regular representation and the amenability statements it actually has (lines 143–197). Delete every citation of D1.CentralTwists, D1.TwistedBorel and D2.CentralTwists. Tested on the refuting instance: with this ownership, the grep of main for the twisted algebra finds this roadmap's H3 and nothing dangles.

## R02 (P2) — No headline theorem is stated, and the docstring does not say which are not statable

**Location.** `TauCetiRoadmap/HilbertModules/HeisenbergImprimitivity/Suggested.lean` lines 12–19 (module docstring) and the five sorried theorems at lines 49, 55, 83, 88, 97.

**Claim.** The file is the roadmap's acceptance test.

**Witness.** The headline theorems of the README are: the lattice Poisson summation with covolume (lines 135–140), the four-vector transform identity (lines 146–151), the operator fundamental identity (lines 153–158), C*-positivity and compatibility of the two pairings (H3), the Morita equivalence `B≃K_A(𝓔)` (H4), fullness (H4), smooth finite frames (H5), the trace formula `Tr_𝓔(L_b)=c_E τ_B(b)` and `dim_A𝓔=1/c_D` (H5, H6). None is in the file. The sorried declarations are `summable_synthesis`, `synthesis_injective` (basic properties of the carrier), `schrodinger_mul` and `cocycle_identity` (the displayed cocycle law, README lines 74–75) and `commuting_iff` (README line 78–79): elaborated types confirmed by `#check` in a scratch copy. The Morita, fullness, frame and trace headlines are not statable at the pins (no twisted group C*-algebra in Mathlib 6b7abb3c nor in Tau Ceti a91d3aa: grep of `Mathlib/Analysis/CStarAlgebra` and `TauCeti/` for a cocycle-twisted group algebra finds none), and the docstring does not say so. But two headlines are statable with native carriers:

- Poisson summation for a full lattice `Pℤ^(2k)⊂ℝ^(2k)` with the symplectic transform `(F_sF)(e)=∫F(x)e(xᵀJe)dx` and the factor `1/|det P|`, for `F : SchwartzMap (EuclideanSpace ℝ (Fin (2k))) ℂ` and `P : Matrix (Fin (2k)) (Fin (2k)) ℝ` invertible. Mathlib's Poisson summation is one-dimensional only (`Mathlib/Analysis/Fourier/PoissonSummation.lean` lines 99, 191, 216: `Real.tsum_eq_tsum_fourier`, `…_of_rpow_decay`, `SchwartzMap.tsum_eq_tsum_fourier`, all for ℤ⊂ℝ).
- The fundamental identity on ℝ^k: for `ξ η ζ : SchwartzMap (EuclideanSpace ℝ (Fin k)) ℂ` and `D=Pℤ^(2k)` with annihilator `J⁻¹P^(-T)ℤ^(2k)`, `∑' d, ⟨π_dη,ξ⟩ π_dζ = (1/|det P|) ∑' e, ⟨η,π_eζ⟩ π_e*ξ` pointwise, with `π_(m,v)ξ(t)=e(v·t)ξ(t+m)` written out (`Complex.exp`, `inner`, `MeasureTheory.integral` over volume). Every carrier exists at the pin.

**Repair.** State these two with `sorry` (they are exactly the deep results H2 is built to reach), keep `SchwartzBruhat` only if a stated headline needs it (the two above do not), and rewrite the module docstring to the required form "<title>: target signatures", naming the Morita equivalence, fullness, smooth-frame existence and the trace formula as not statable because the twisted group C*-algebra `C*(L,c)` and the Hilbert-module completion of S(M) do not exist at the pins. Tested: the Poisson statement elaborates with `tsum` over `Fin (2k) → ℤ`, `Matrix.det`, `Matrix.mulVec` and `SchwartzMap` at the pin (all present in `Mathlib`; no new definition is needed).

## R03 (P3) — Gate: imports

**Location.** `Suggested.lean` lines 5–10.

**Witness.** Gate `imports=1 mathlib-subimports=3 no-import-mathlib=1`: three `import Mathlib.<submodule>` lines and no `import Mathlib`. The three `TauCeti.*` imports are unused: no declaration of `TauCeti.PontryaginDual` (DualEval line 23), `TauCeti.fourierPontryaginDual`/`fourierAddChar` (AddCircle lines 109–142) or `SchwartzMap.dense_hasCompactSupport` (Cutoff line 211) occurs in the file.

**Repair.** Replace lines 5–10 by the single line `import Mathlib`. The file then elaborates unchanged (`PontryaginDual`, `SchwartzMap.seminorm`, `fourier`, `CStarModule`, `SchwartzMap.tsum_eq_tsum_fourier` are all in `Mathlib`; checked by the `#check` probe).

## R04 (P3) — Gate: metadata

**Location.** Folder `TauCetiRoadmap/HilbertModules/HeisenbergImprimitivity/`.

**Witness.** Gate `metadata=1`: no `metadata.toml`. The repository README ("Filing a roadmap") says a sub-roadmap has none and inherits its parent's topic, but the parent `TauCetiRoadmap/HilbertModules/` does not exist on main (it is pull request #861), so there is no topic to inherit and the gate fails. The parent links at README lines 18 (`../README.md`) also dangle on main.

**Repair.** Nothing inside this folder fixes it; the gate passes only once the parent folder with its `metadata.toml` (topic math.OA) is on main. Record the dependency as the parent roadmap by name, not by pull-request number (see R08).

## R05 (P3) — The README is not in TauCetiRoadmap form: no layers, no `*Needs:*`, no Checks, no locators

**Location.** `README.md`, whole file: headings are `## H1.` … `## H6.` and `## References and native design`.

**Witness.** There is no `## Scope and ownership`, `## Conventions`, `## Exact supplier contracts`, `## How to read the build`, no `## Layer k` with `### k.n` subsections, no `### Examples`/`### Dependencies`, no `## Downstream consumers`, no `## References`. The string `*Needs:*` does not occur; `**Checks.**` does not occur; not one theorem carries a theorem-number locator (Rieffel and Austad–Enstad are cited at lines 397–403 as whole papers). Because there are no `*Needs:*` lines the dependency check extracted no edge from this README; its "0 problem(s)" is vacuous, not evidence. Compare `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md` on main for the shape.

**Repair.** Rewrite in the standard shape. Locators to use, all verified in the cached texts: Rieffel 1988 Lemma 2.3 (matrix coefficient in S(G); rieffel88 line 385), Lemma 2.10 (orthogonality, formal dimension one; line 553), Proposition 2.11 (the four-vector/Poisson identity; line 574), Proposition 2.12 (compatibility; line 594), Proposition 2.13 (positivity; line 607), Theorem 2.15 (equivalence bimodule; line 644), the covolume normalisation (lines 798–825) and Theorem 3.4 (`τ_A([V])=|G/D^⊥|`; line 838); Austad–Enstad 2020 Proposition 3.5 (induced trace; austad-enstad20 line 661), Proposition 3.7 (localisation embeds into L² with `‖η‖₂≤s(Δ)^(1/2)‖η‖_E`; lines 693–700), Theorem 3.10 (Bessel bound; line 765). Each definition needs its API bullets and at least three discriminating Checks; the computed instances in the table below (rectangular lattice, finite F with D=0 and D=G, ℤ^p with D=M×{0}, the θ=0 failure) are ready-made Checks.

## R06 (P3) — Supplier drift: NoncompactQuantumSymmetry has no M1.ProjectiveExtensions

**Location.** `README.md` line 32.

**Witness.** At the head of pull request #1015 (777a2fe), Layer M1 contains M1.Core, M1.BorelRealization (line 1009) and M1.MeasuredTensor (line 1088). The multiplier/circle-extension interface is `### P.3 Locally continuous multipliers and topological extensions` (line 314).

**Repair.** Cite "NoncompactQuantumSymmetry P.3" or drop the sentence: it describes what a supplier section uses, and that supplier section is itself removed by R01.

## R07 (P3) — Padding and form in `Suggested.lean`

**Location.** `Suggested.lean` lines 25, 83–100, 102–123, 127–140.

**Witness.**
- `right_inner_action` (line 128) is closed by `simp` in the file itself and restates `CStarModule.inner_op_smul_right` (`Mathlib/Analysis/CStarAlgebra/Module/Defs.lean` line 78) through `unop`.
- `real_poisson` (line 137) is `SchwartzMap.tsum_eq_tsum_fourier` verbatim (`PoissonSummation.lean` line 216).
- `schrodinger_mul`, `cocycle_identity` restate the displayed convention of README lines 74–75; `commuting_iff` mirrors README line 78–79. They are API lemmas of a definition, not headlines (one-tactic probes with `simp` plus the evaluation lemmas did not close them at the pin, so they are not trivial, but they belong in the README as API bullets).
- `finiteLeft`, `finiteRight`, `rightCoefficient`, `leftCoefficient`, `symplecticFourier`, `symplecticAnnihilator` (lines 93–123) are definitions no stated theorem uses.
- Namespace is `HilbertModules.HeisenbergImprimitivity` (line 25); nested roadmaps on main use `TauCetiRoadmap.RepresentationTheory.<Name>` (for example `TauCetiRoadmap/RepresentationTheory/SchurWeyl/Suggested.lean`).

**Repair.** Delete `right_inner_action` and `real_poisson` from `Suggested.lean` (the README keeps both facts as supplier contracts). Delete the API lemmas and unused definitions, keeping only what the headlines of R02 need. Rename the namespace to `TauCetiRoadmap.HilbertModules.HeisenbergImprimitivity`. Use `/-! ## Layer k -/` section comments once the README has layers.

## R08 (P3) — Process text and pull-request references

**Location.** `README.md` lines 8–9 ("This is a child of HilbertModules, under math.OA; it has no separate metadata.toml"), lines 405–412 (a Zulip thread, Mathlib pull-request numbers #43046 and #37350, "Suggested.lean prototypes native carriers"); `Suggested.lean` lines 13–18 ("These are suggested forms", "when built").

**Witness.** These describe the filing process and the state of other work, not mathematics; the brief's house style forbids process narrative and pull-request numbers in README and docstrings.

**Repair.** Delete lines 8–9 (the parent relation belongs in `## Scope and ownership` as "child of HilbertModules"). In the references name the Mathlib material by what it is (the density of compactly supported functions in Schwartz space, the test-function-to-Schwartz map) without numbers, and move the design remark on `CStarModule Aᵐᵒᵖ` into `## Conventions`. Replace the module docstring by the required form (R02).

## R09 (P3) — Scope narrower than the source without a stated deferral

**Location.** `README.md` lines 11–16 and 203–204 ("The two-inner-product compatibility and imprimitivity assertions below use E=D^⊥ and D a lattice").

**Witness.** Rieffel's Theorem 2.15 (rieffel88 line 644) gives the equivalence bimodule for every closed subgroup D of G with suitably normalised Haar measures, and Austad–Enstad's Propositions 3.5–3.7 (austad-enstad20 lines 661, 693) are for closed cocompact Δ. The README restricts the imprimitivity theorem to lattices with no Scope sentence saying who owns the closed-subgroup case (Rieffel's §2 proofs are written for elementary groups, line 383, so the finite-type restriction on M is justified; the lattice restriction on D is not discussed).

**Repair.** Either add the closed-subgroup variant to H4 as a target (Haar on D arbitrary, Plancherel measure on D^⊥ chosen so that Poisson holds, which rieffel88 lines 520–530 make explicit), or state in `## Scope and ownership` that this roadmap covers lattices and name the owner of the general case.

## R10 (P3) — Unused hypothesis and wider carrier in the Lean

**Location.** `Suggested.lean` lines 33–37, 49, 55.

**Witness.** `[Finite F]` is not needed: `summable_synthesis` needs only the `rapid` bound at `N=q+1`, `r=s=0` (`|a_n(x)|≤C/(1+Σ|n_j|)^(q+1)` is summable over `ℤ^q`), and `synthesis_injective` is coefficient extraction, both independent of F. The structure takes any type `F` while the README requires a finite abelian group (line 4).

**Repair.** Drop `[Finite F]` from both theorems, or, if the carrier is kept for a headline, put `[AddCommGroup F] [Finite F]` on the structure so that Lean and README generalities agree.

## Verified sound

**Gate.** Read `gate.md` at 18b9874: build passes (`build=0`), text scanners pass except imports/mathlib-subimports/no-import-mathlib/metadata (R03, R04). Dependency check run as instructed:

```
depcheck: 205 roadmaps, 1432 edges, 0 problem(s)
```

No UPWARD or CYCLE line; but see R05: the README contributes no edge. Merge order: HeisenbergImprimitivity is last (line 368); HilbertModules (10), VonNeumannAlgebras (4), AlgebraicKTheory (11), NoncompactQuantumSymmetry (138) precede it; NoncommutativeGeometry, OperatorAlgebraDynamics, BanachAlgebras are on main; SmoothBanachRepresentations (#1145, same author, new folder) is not in the order and would be placed as a supplier of this roadmap.

**Elaboration.** `lake env lean` on a scratch copy of `Suggested.lean` with `#check @name` for all 25 declarations: every elaborated type matches the README's formulas (`schrodinger x ξ t = χ(t)ξ(t+m)`, `cocycle x y = ψ(m)`, `commutator = β(x,y)·conj β(y,x)`, `rightCoefficient = ⟨ξ,π_eη⟩`, `leftCoefficient = c·⟨π_dη,ξ⟩`, `symplecticFourier = ∫F(x)σ(x,e)`); only `sorry` warnings. `CStarModule` at the pin is `CStarModule (A E) … [SMul A E]` with `inner x (a • y) = a * inner x y` (Defs.lean lines 72–81), so a right A-module is `CStarModule Aᵐᵒᵖ E` as the README (line 236) and HilbertModules H1 (#861 line 145) say.

**Library declarations opened at the pins.** `SchwartzMap.seminorm 𝕜 k n` (Seminorm, order (k,n) = (power, derivative)); `SchwartzMap.tsum_eq_tsum_fourier` (PoissonSummation.lean 216); `Real.tsum_eq_tsum_fourier` (99); `PontryaginDual` (Topology/Algebra/PontryaginDual.lean 37); `fourier : ℤ → C(AddCircle T, ℂ)`; `mFourier` on `UnitAddTorus` (AddCircleMulti.lean 49); `Mathlib/Analysis/Fourier/FiniteAbelian/Orthogonality.lean` exists; Tau Ceti `TauCeti.PontryaginDual.continuous_coe_eval_const` (DualEval 29), `TauCeti.fourierPontryaginDual` (AddCircle 126), `SchwartzMap.dense_hasCompactSupport` (Cutoff 211).

**Cross-roadmap citations resolved.** HilbertModules #861 (c3a41ca): H1 completions line 123, H2 finite Parseval frame criterion lines 223–238, H3 induced representations and Rieffel correspondence lines 284–320; its README line 116 names this child. VonNeumannAlgebras #889 (dee8088): V11.DoubleDualEmbedding/UnitizationCharacters/FourierUniqueness, inversion, Plancherel, biduality at lines 3159–3250. BanachAlgebras main A7: Haar integration line 877, A7.RegularL2 line 935. NoncommutativeGeometry main N6 line 475 (`U₂U₁=exp(2πiθ)U₁U₂`), N7 line 530 (`(ξU₁)(s)=ξ(s+θ)`, `(ξU₂)(s)=exp(2πis)ξ(s)`, 0<θ<1 module, Powers–Rieffel projection). AlgebraicKTheory #1142 A0 line 21, A7 line 126. SmoothBanachRepresentations #1145 (9d2bdf0) SB2 line 64, SB8 line 157 (inverse closure, star). NoncompactQuantumSymmetry #1015: M1.ProjectiveExtensions absent (R06). OperatorAlgebraDynamics: cited sections absent on main (R01).

**Ownership.** `roadmaps grep` for Heisenberg module, Schwartz–Bruhat, Poisson summation, Rieffel/Powers–Rieffel over main and the open heads: Schwartz–Bruhat spaces of adeles and local fields are owned by ArithmeticGaloisRepresentations §2.7 and AutomorphicLFunctionsAndLocalFactors AL.0.3 (different objects from S(ℝ^k×ℤ^p×𝕋^q×F)); the Powers–Rieffel projection is owned by NoncommutativeGeometry N7 and OperatorKTheory #866, which this roadmap compares with rather than restates; the parent's `TorusLineTargets.lean`/`TorusFiniteRankTargets.lean` (#861) state line-bundle and finite-rank torus modules on covariant functions of ℝ², not the Heisenberg module. GeometryOfNumbersAndQuadraticArithmetic (#851) mentions a one-dimensional Poisson Check (its files are not in this brief: ownership of lattice Poisson against it was not checked). No second owner of the lattice Heisenberg bimodule was found.

**Sources.** rieffel88 (Cambridge Core open PDF, 82 pages) and austad-enstad20 (arXiv 1904.10826, 24 pages) fetched and read; the README's description of Austad–Enstad's conventions is right (`(T_xξ)(t)=ξ(t−x)`, left-module `•⟨ξ,η⟩`, Feichtinger space S₀(G): lines 314–317, 703–709). The README flags no locator as unverified and has no numbered locators to sample (R05); the worker's seeded sample of 15 targets is therefore the headline statements, covered by the table.

**Adversarial table.** Inner product linear in the second slot; `e(t)=exp(2πit)`; `π_(m,χ)ξ(t)=χ(t)ξ(t+m)`; `β(x,y)=ψ_y(m_x)`; `σ(x,y)=β(x,y)·conj β(y,x)`.

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| `π_xπ_y=β(x,y)π_(x+y)` (H1 line 75) | x=(m,χ), y=(n,ψ), any M | LHS: χ(t)ψ(t+m)ξ(t+m+n) = ψ(m)·(χψ)(t)ξ(t+m+n); RHS: ψ(m)·π_(x+y) | equal | none |
| `π_x*=conj β(x,−x)π_(−x)` | same | β(x,−x)=conj χ(m); RHS: χ(m)conj χ(t)ξ(t−m)=conj χ(t−m)ξ(t−m) = adjoint of π_x | equal | none |
| commute iff σ=1 (`commuting_iff`) | d,e arbitrary; trivial M | π_dπ_e* = conj σ(d,e)·π_e*π_d; trivial M: both sides 1 | true both directions | none |
| `cocycle_identity` | x,y,z | LHS χ_y(x₁)χ_z(x₁+y₁); RHS χ_z(y₁)(χ_yχ_z)(x₁) | equal | none |
| four-vector identity (H2 lines 149–151) | general M, e=(n,ψ) | ∫_G F(x)σ(x,e)dx: the M̂-integral gives δ(s−t−n), leaving ∫∫ conj η(t+m)ξ(t)conj ω(t+n)ζ(t+n+m)ψ(m); ⟨η,π_eζ⟩⟨ω,π_e*ξ⟩ expands to the same with u=t+m | equal, plus sign correct | none |
| Poisson with `1/c_D` (lines 138–139) | lattice D, periodisation on G/D of mass c_D | Fourier inversion on compact G/D with Haar of mass c_D gives `P(0)=(1/c_D)Σ_e F̂(e)`; sign of σ immaterial as D^⊥=−D^⊥ | equal | none |
| fundamental identity (line 157) ⇒ compatibility (line 218) | Poisson applied to F above | `Σ_d⟨π_dη,ξ⟩π_dζ=(1/c_D)Σ_e⟨η,π_eζ⟩π_e*ξ`; times c_D gives `{}_B⟨ξ,η⟩ζ=ξ⟨η,ζ⟩_A` | consistent | none |
| right action is an action of `C*(E,conj β)` | δ_e,δ_f | (ξδ_e)δ_f=π_f*π_e*ξ=conj β(e,f)π_(e+f)*ξ; δ_e*_cδ_f=c(e,f)δ_(e+f) ⇒ c=conj β | consistent | none |
| `⟨ξ,ηa⟩_A=⟨ξ,η⟩_A a` | a=δ_f | left: conj β(f,−f)β(e,−f)=conj ψ_f(n_e−n_f); right: conj β(e−f,f)=conj ψ_f(n_e−n_f) | equal | none |
| `⟨ξ,η⟩_A*=⟨η,ξ⟩_A` | involution formula line 172 | conj⟨ξ,π_(−e)η⟩·β(−e,e); π_(−e)=β(e,−e)π_e*; β(−e,e)conj β(e,−e)=1 | equal | none |
| positivity kernel (line 208) | x,y∈E | a(x−y)conj β(x−y,y) vs ⟨π_x*ξ,π_y*ξ⟩=a(x−y)conj β(y,−y)β(x,−y)=a(x−y)conj ψ_y(n_x−n_y) | equal | none |
| traces (lines 214–215) | ξ | ⟨ξ,ξ⟩_A(0)=‖ξ‖₂²; {}_B⟨ξ,ξ⟩(0)=c_D‖ξ‖₂² | equal | none |
| `‖ξ‖₂≤‖ξ‖_A` (line 231) | τ_A a state | ‖ξ‖₂²=τ_A(⟨ξ,ξ⟩_A)≤‖⟨ξ,ξ⟩_A‖ ; AE (26) gives s(Δ)^(1/2) in their normalisation | consistent | none |
| fullness by gauge averaging (lines 240–246) | b={}_B⟨ξ,ξ⟩≠0 | π_xπ_dπ_x*=σ(x,d)π_d realises every character of D (H1); average = τ_B(b)·1 = c_D‖ξ‖₂²·1 ∈ ideal | argument sound | none |
| trace formula (lines 279–280) | Parseval frame, b={}_B⟨ξ,η⟩ | Σ_jθ_(ξ_j,ξ_j)=1 ⇒ Σ_j{}_B⟨ξ_j,ξ_j⟩=1_B ⇒ c_DΣ‖ξ_j‖²=1; Tr(L_b)=Σ_jτ_A(⟨η,ξ_j⟩⟨ξ_j,ξ⟩)=⟨η,ξ⟩=c_E·c_D⟨η,ξ⟩ | equal | none |
| rescaling (lines 60–61, 286–287) | μ↦rμ | ⟨ξ,η⟩_A scales by r; vectors scaled by r^(−1/2) restore it; phase Haar r·r⁻¹ fixed | consistent | none |
| rephasing (lines 292–296) | u cochain | π'_xπ'_y=(u(x)u(y)/u(x+y))β π'_(x+y); right coefficient ×u(e), left ×conj u(d)=u(d)⁻¹ | consistent | none |
| Fourier exchange (line 304) | x=(m,χ) | F₊π_xξ(ψ)=conj χ(m)conj ψ(m)F₊ξ(χ+ψ); π'_(χ,ev_(−m))F₊ξ(ψ)=conj ψ(m)F₊ξ(ψ+χ) | equal | none |
| rectangular lattice (lines 312–314) | D=Aℤ^k×Bℤ^k | σ=e(w·m−v·n); D^⊥=B^(−T)ℤ^k×A^(−T)ℤ^k; c_D=|det A det B|; dim=1/c_D (rieffel88 Thm 3.4) | equal | none |
| general `Pℤ^(2k)` (lines 315–318) | J=[[0,I],[−I,0]] | σ(x,y)=e(xᵀJy); D^⊥=J⁻¹P^(−T)ℤ^(2k); c_D=|det P|, c_E=1/|det P| (det J=1) | equal | none |
| M=ℤ^p, D=M×{0} (line 321) | p=1 | D^⊥={(n,ψ):ψ=1}=D; c_D=1; B=C(𝕋) | equal | none |
| M=𝕋^q, D={0}×M̂ (line 322) | q=1 | σ((0,χ_k),(t,ψ))=conj e(kt)=1 ∀k ⇔ t=0; D^⊥=D | equal | none |
| finite F (lines 325–328) | D=0; D=G; |F|=2 | mass |F|; c_D=|F|/|D|; |D||E|=|F|²; dim=|D|/|F|: D=0 gives 1/|F| (row module over M_|F|), D=G gives |F| (column module over ℂ) | equal | none |
| ℝ×ℤ/q embedding (lines 335–341) | a,b,c,d; q=1 | β=e(br·an)e(dr·cn/q)=e((ab+cd/q)nr); fundamental domain [0,|a|)×ℤ/q×[0,|b|)×(ℤ/q)^ of mass q|ab|; q=1 gives |ab| | equal | none |
| real-line model (lines 348–356) | θ≠0 | conj β=e(θnr); σ=1 ⇔ l∈ℤ, vθ∈ℤ; c_E=|θ|, c_D=1/|θ|; (ξδ_(m,n))(r)=e((r−nθ)m)ξ(r−nθ) | equal | none |
| NCG dictionary (lines 359–360) | δ_(1,0), δ_(0,1) | δ_(1,0)=U₂, δ_(0,1)=U₁⁻¹; δ_(0,1)δ_(1,0)=e(θ)δ_(1,0)δ_(0,1) ⇔ U₂U₁=e(θ)U₁U₂, NCG N6's relation | consistent | none |
| left generators (lines 367–368) | T,Z | TZT*=e(1/θ)Z ⇒ ZT=e(−1/θ)TZ: parameter −1/θ in NCG's convention | consistent | none |
| single window (lines 371–376) | ρ bump, θ<l<1 | Σ_n|ξ(r−nθ)|²=1 and disjoint integer translates ⇒ {}_B⟨ξ,ξ⟩=1_B ⇒ p=⟨ξ,ξ⟩_A, τ(p)=∫|ξ|²=θ=c_E | consistent | none |
| q translated δ-windows (lines 377–378) | θ=qδ | Σ_iΣ_n|ξ₀(r−iδ−nqδ)|²=Σ_k|ξ₀(r−kδ)|²=1; trace qδ=θ | consistent | none |
| θ=0 failure (lines 381–384) | ξ=η≠0 | φ not injective; ⟨ξ,ξ⟩_A(0,n)=‖ξ‖² constant in n, not c₀ | failure correctly stated | none |
| `integerWeight`, `synthesis` degenerate | p=q=0, k=0 | weight 1; empty product 1; SchwartzMap on a point = ℂ | well-defined | none |
| `summable_synthesis`, `synthesis_injective` | N=q+1, r=s=0 | |a_n(x)|≤C(1+Σ|n_j|)^(−q−1), summable on ℤ^q; coefficients recovered by orthogonality of `fourier` | true; `[Finite F]` unused | R10 |
| `right_inner_action`, `real_poisson` | — | closed by `simp`/`exact` of a pinned lemma | padding | R07 |

## Not verifiable

- Ownership of lattice Poisson summation against GeometryOfNumbersAndQuadraticArithmetic (#851): the brief does not give its files; `roadmaps grep` shows only a one-dimensional Check (`L=ℤ⊂ℝ`).
- The published JFAA version of Austad–Enstad (DOI 10.1007/s00041-020-09729-7) is paywalled; locators above are to arXiv 1904.10826v2, whose numbering the roadmap should cite or reconcile.

## Source issues

- none
