# Review of ChromaticHomotopyTheory (pull request #1643 at 839e6dc)

**Verdict:** needs changes

Three P3 findings, no P1 or P2. The mathematics of the repaired head (the new §4.3 sharp bound, the new §4.4 weak-ring criterion, the re-owned real Bott comparison and the retired contracts) checks out against the sources and the suppliers at their heads; the defects are in the board's gap register, in a library pin, and in the reference list.

## R01 (P3) — The plan's gap register no longer matches the README's declared gaps

**Location:** `packages/ChromaticHomotopyTheory/design/plan.json`, top-level `gaps` (six entries: `p-local-finite-duality`, `spectral-ringed-sites`, `stable-james-splitting`, `weak-ring-finite-postnikov`, `bhls-purity-comparison`, `bhls-bp-redshift`); `TauCetiRoadmap/ChromaticHomotopyTheory/README.md:85`, “What BordismFormalGroups must provide (gap:higher-ambidexterity-norms): F6.5: For every ∞-category C and every m≥−2, construct the canonical Hopkins–Lurie norm”.

**Claim:** The intake announces gaps from the plan's `gaps` list, and a README contract counts as declared only when the plan carries the same slug. At this head the README declares `gap:higher-ambidexterity-norms` (README:85, :363, :393, :444), which the plan does not have, and it no longer declares four slugs the plan still carries: a grep of the README for `gap:` finds only `all-height-morava-realization`, `elliptic-spectral-affineness`, `higher-ambidexterity-norms`, `p-local-finite-duality` and `spectral-ringed-sites`. The plan therefore still asks BordismFormalGroups' job for csy Theorem 5.4.4, which §4.4 now owns here (a second builder of one theorem), asks GeneralAlgebraicKTheoryPartII's job for two statements this README makes Part II targets, asks HomotopySpheres for a splitting no target here uses, and never asks BordismFormalGroups for the norm contract that §4.2 consumes.

**Witness:** the board's `plan.json` was last changed at the package submission commit; the previous review's R01 (its `section` strings “KII.5” and “KII.6”) is likewise untouched. README:85 is the only contract text for the new slug; `packages/ChromaticHomotopyTheory/README.md` is not the file the intake reads for it.

**Repair (board-side, plan.json only; the pull-request folder needs no edit):** delete the entries `stable-james-splitting`, `weak-ring-finite-postnikov`, `bhls-purity-comparison` and `bhls-bp-redshift`; add `{"slug": "higher-ambidexterity-norms", "supplier": "BordismFormalGroups", "section": "F6.5, local group actions and completion comparisons", "needs": <the sentence of README:85 after the colon>}`. The two EllipticCohomology slugs the README consumes (README:117 and :119) are declared, with identical wording, by GeneralAlgebraicKTheoryPartII (`TauCetiRoadmap/GeneralAlgebraicKTheoryPartII/README.md:210` and `:212` at #1742) and stay inherited, as the previous review recorded. The previous R01 is thereby superseded: the two entries it asked to relabel are the ones to delete.

## R02 (P3) — Two Tau Ceti declarations are cited at a pin that does not contain them

**Location:** `TauCetiRoadmap/ChromaticHomotopyTheory/README.md:17`, “Tau Ceti already supplies `WeierstrassCurve.formalGroup` and the Serre class `AddCommGrpCat.isKilledBySomePower`” and “Tau Ceti’s `TauCeti.SymmetricSpectrum` is the point-set category of symmetric spectra”; README:71, “Use `AddCommGrpCat.isKilledBySomePower` from `TauCeti/AlgebraicTopology/SerreClass/PowerTorsion.lean`”; README:111; `TauCetiRoadmap/ChromaticHomotopyTheory/Suggested.lean:9`–12.

**Claim:** The branch's `lake-manifest.json` pins Tau Ceti at `a91d3aaf`. At that revision `TauCeti/AlgebraicTopology/` has no `SerreClass/` directory, and no Lean file in the package mentions `SymmetricSpectrum` or `isKilledBySomePower` (a recursive grep of `.lake/packages/TauCeti/TauCeti` returns nothing). So both “already supplies” claims, the file path at README:71, the §4.3 route step at README:405 and the docstring sentence are unverifiable at the pin the brief names. The gate did not see this because its identifier check covers only this roadmap's own backticked names.

**Witness:** main's `lake-manifest.json` pins Tau Ceti at `2fd255d9`, where both exist exactly as the README describes them: `TauCeti/AlgebraicTopology/SerreClass/PowerTorsion.lean:33`, `def isKilledBySomePower (d : ℕ) : ObjectProperty AddCommGrpCat.{u} := fun M ↦ ∃ n : ℕ, Module.IsTorsionBy ℤ M ((d : ℤ) ^ n)`, with its `IsSerreClass` instance at `:44`; `TauCeti/AlgebraicTopology/Spectra/SymmetricSpectrum.lean:92`, `abbrev SymmetricSpectrum := Mod SymmetricSequence.{0} SymmetricSequence.sphere`, and `Spectra/MappingSpace.lean:46`, “These are point-set constructions; deriving them requires the stable model structure”, which is what the docstring says about it. The author's answer to the human review checked the names at main's pin, not the branch's.

**Repair:** rebase the branch onto current main so that `lake-manifest.json` pins Tau Ceti `2fd255d9` or later (the README and the docstring are then correct as written, and the gate's build re-runs against that pin). If the branch keeps the old pin, remove the `isKilledBySomePower` and `SymmetricSpectrum` claims from README:17, :71, :111, :405 and the docstring, and say in §4.3 that the Serre class of p-power-torsion groups is DGFloer Layer 1 item 4's instance without naming a Lean carrier.

## R03 (P3) — Eight reference entries are cited by no passage

**Location:** `TauCetiRoadmap/ChromaticHomotopyTheory/README.md:503`–504 (kuhn-guide, kuhn-tate), `:507` (cmnn), `:513`–514 (thom, akq), `:520`–522 (miller, mahowald, mahowald-addendum).

**Claim:** The References preamble (README:498) says the keys identify the cited editions, but a grep of README lines 1–495 for each key, in the forms `(key`, `key line` and `; key`, finds zero citations of these eight. Their described uses (telescopic and Bousfield–Kuhn functors, Thom families, the James application, the height-one telescope at 2 and at odd p) belong to GeneralAlgebraicKTheoryPartII §§4.10–4.11, 4.20 and 4.31–4.33 after the moves of the last two repairs. A reader takes them for work this roadmap does.

**Witness:** the same grep finds lmmt 6, hs 6, csy 10, bhls 5, behrens 5, ravenel 3, mm 3, cm-tate 2, hahn 2, hesselholt-ku 2, bhm 1, goerss 1, greenlees-sadofsky 1 and hahn-wilson 1 body citations; the `abs` entry was already removed with the real Bott layer.

**Repair:** delete the eight entries from `## References`. The manifest `sources.toml` is not edited by this; its extra records are harmless.

## Verified sound

### Previous findings, checked first

| Previous finding | Passage at this head | Assessment |
| --- | --- | --- |
| R01 (P3): plan.json gap sections “KII.5”/“KII.6” | `packages/ChromaticHomotopyTheory/design/plan.json` `gaps[4]`, `gaps[5]` unchanged; README:19 now says “all three are targets of Part II, not of the layers below and not of any supplier” | Not repaired, and overtaken: the README retired both slugs, so the plan now carries them without any consumer. Raised as R01 above with the enlarged repair. |
| R02 (P3): owner of the uncompleted KU calculation | README:15, “its §7.2 owns the uncompleted KU Tate coefficients; §4.1 below adds only the completed-input comparison”; README:133, “Consume §7.2's Tate coefficients of KU with trivial C_p-action, uncompleted, in the coordinate x=L−1”; README:349, :359, :444 | Repaired. `TauCetiRoadmap/StableHomotopyKTheoryPartII/README.md:911`–919 at #1733 gives π₀KU^tC_p=ℚ_p(ζ_p) in x=L−1 and ℚ₂ at p=2; §4.1's Euler quotient gives the same two values (rows 23–25 below). |

The author's answer on the board addresses a human reviewer's five points; none of the previous AI findings was marked not actionable, so nothing is re-raised under that rule.

### Gate, dependency direction and Lean

The worker's gate at this head reports every check at 0 and `build=0 OK`; I re-ran the gate command and got the same line (`statement-hygiene=0 … source-material=0 OK`). The dependency check I ran:

```text
depcheck: 239 roadmaps, 2369 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `ORDER.txt` lists ChromaticHomotopyTheory at position 322, directly after GeneralAlgebraicKTheoryPartII (321); every cited supplier is earlier (StableHomotopyKTheory 13, EllipticCohomology 6, RefinedTraceMethods 316, StableHomotopyKTheoryPartII 319) or on main (BordismFormalGroups, GeneralizedCohomology, EnhancedDerivedSheaves, DGFloer, AlgebraicTopology, ModularCurves). The outside-folder diff is empty and the worktree clean. `lake env lean` on `Suggested.lean` exits 0 with no diagnostics: one `import Mathlib`, one module docstring, the namespace, zero declarations. There is nothing to probe for padding, no section variable to lose, no sorry'd data, no `set_option`.

### Headline theorems and Suggested.lean

Headlines in the README: §3.1 generalized Serre filtration with monodromy and strong convergence; §4.1 π₀((KU_p^∧)^tC_p)=ℚ_p(ζ_p) with vanishing T(1)-localization; §4.2 ∞-semiadditivity of Sp_T(n) and of K(n)-local E_n-modules, the dimension formula and the π-finite n-connected comparison; §4.3 the sharp bound m=n+1 in three forms; §4.4 the weak-ring height criterion in four equivalent forms; §5.1 TMF[1/N]→TMF(N) faithful GL₂(ℤ/N)-Galois for every N≥1; and the Part II separation target with its two inputs. The docstring names each and what it lacks. None is statable: Mathlib at `6b7abb3c` has no category of spectra, and Tau Ceti at the branch pin has no `SymmetricSpectrum` at all (at main's pin it is point-set only, with no stable equivalences, `Spectra/MappingSpace.lean:46`). No stand-in, no coefficient identity, no `Prop` placeholder is written. Correct for a file that can state nothing.

### Seeded sources

| Target | Text at its locator | Supports the statement as written? |
| --- | --- | --- |
| 3.1 Generalized Serre filtration | lmmt line 398 (proof of Proposition 2.11(ii), p.10): Serre spectral sequence in T(i)-homology of X→Y with T(i)-acyclic fibres; bhm line 258 (Lemma 3.5, p.6): fibre-sequence comparison of E_*-equivalences via Atiyah–Hirzebruch | Yes, as applications. The filtration itself, its naturality through cellular approximation and the convergence through StableHomotopyKTheory §7.24 (“No connective hypothesis on E is required for this homological, bounded-below filtration theorem”, #1227) are this roadmap's construction. |
| 4.1 Nonzero raw Tate spectra | greenlees-sadofsky line 343 (Corollary 2.4, p.400): Tate of a nonequivariant spectrum under cyclic H as the inverse limit over Thom spectra of −rξ; hesselholt-ku line 1662 (p.844): π_*KU^tC_p=π_*KU((t))/((t+1)^p−1)=π_*KU⊗ℚ_p(μ_p); cm-tate line 129 (Remark 2.8, p.4) | Yes. The completed-input comparison is stated as a proof obligation through the same tower, not as commuting Tate with completion. |
| 4.2 Higher semiadditivity | csy line 682 (Definition 2.1.13, p.17), line 1632 (Definition 3.1.5, p.33), line 1692 (3.1.10, p.34), line 1909 (3.1.18, p.37), line 3445 (Theorem 4.3.10, p.68), line 3639 (Lemma 5.1.7, p.73), line 3655 (Corollary 5.1.9, p.74, quoting Ravenel–Wilson 9.2), line 3753 and 3773 (5.1.15, 5.1.17, pp.76–77), line 3882 (Theorem 5.3.1, p.79), line 3923 and 3930 (5.3.4, 5.3.5, p.80), line 3970 (5.3.7, p.81) | Yes. Theorem 5.3.1 is stated for all n≥0; the README's n≥1 with the rational case separate matches its T(0)=S[1/p] convention. Theorem 5.3.5's hypothesis is π-finite n-connected fibres, as stated. |
| 4.3 Sharp connectivity bound | lmmt line 382 (Proposition 2.11, existential m≥2, p.9) and line 406 (Remark 2.12, p.10: m=n+1 by Postnikov induction, filtered colimits of finite subgroups, and csy Theorem E); csy line 3930 (Theorem 5.3.5, p.80) | Yes. The README's route is Remark 2.12's with csy 5.3.5 in place of csy Theorem E for the finite layers, plus the height-zero Serre-class step lmmt handles by “well-known”. The lower bound K(ℤ/p,n) is bhm line 227's Ravenel–Wilson remark, with rank p−1 from Corollary 5.1.9 at k=n. |
| 4.4 Weak-ring height criterion | csy line 3616 (Definition 5.1.4, p.73), line 3705 (Lemma 5.1.12, p.75), line 3726 (Example 5.1.13(4), p.76), line 3731 (Theorem 5.1.14, p.76), line 4036 (Theorem 5.4.4, p.83: nonzero p-local weak ring, 0≤n<∞, three conditions), line 4060 (Remark 5.4.5, p.84: the Postnikov-section formulation) | Yes, including the j=∞ endpoint in supp(R)⊆{0,…,n} and the fourth condition. |
| 5.1 Full-level Galois extensions | mm line 1757–1766 (Definitions 7.3–7.4, p.37: M_ell(n) over ℤ[1/n], étale, GL₂(ℤ/n)-torsor, affine for n≥3), line 1776 (Example 7.5, p.37: level 2 is a scheme times Bℤ/2), line 1801 (Theorem 7.6, p.38: faithful GL₂(ℤ/nℤ)-Galois, every positive n) | Yes. Stacks at N=1,2 retained, no pairing fixed. |

Also reopened: bhls line 98 (Theorem A: any prime, n+1≥2, all k≥0), line 1596–1601 (Definitions 4.1–4.2, p.37), line 2300 (Theorem 5.4, p.53), line 2876–2913 (Theorem 6.1, Theorem 6.2, Corollary 6.3 and proof, pp.66–67), line 3194–3229 (Theorem 6.25 and proof, pp.73–74); hahn-wilson line 93 (Theorem B, p.3) and line 1422 (Corollary 5.0.2, p.40); hahn line 116 (p.3), line 347 and 356 (Propositions 4.2–4.3, p.8), line 394 (Corollary 4.5.2, p.9); lmmt line 878 (Corollary 4.19 proof, p.21, now GeneralAlgebraicKTheoryPartII §4.30a); the Layer 0–2 locators in hs, ravenel, behrens, goerss and lmmt (printed pages agree with the extraction's page markers; the hs extraction is offset by one page from the printed numbering throughout, as in earlier reviews). In bhls line 2906–2913 the trace step for R^hℤ uses DGM, Theorem 6.2 on R→π₀R and Mitchell only; the T(n+1)-acyclicity of Corollary 6.3's hypothesis enters the other two maps, so the README's fixed-point trace comparison for every connective A is what that proof proves.

### Adversarial values

“Pass” means the computed values agree with the statement on the instances tried; the rows cover the conventions, each sampled target, the two new targets, the contracts and the Part II boundary.

| Statement | Instances | Values on each side | Result |
| --- | --- | --- | --- |
| Homological grading and symmetry | ΣS in degree 1; S¹∧S¹ swap | π₁ΣS=ℤ=π₀S; sign (−1)^(1·1)=−1 | Pass |
| Cofiber conventions | id_S; 0→S | cofib=0; cofib=S | Pass |
| T(0)=S[1/p] versus Hℚ | p=2,q=3; integer 4 | S[1/2]∧S/3=S/3≠0, Hℚ∧S/3=0; 4·(ℤ/2)=0 and (ℤ/4)[1/2]=0 | Pass |
| Cover index | K(A,2), r=2,3 | K(A,2)⟨3⟩=*, τ_≤2K(A,2)=K(A,2); index 2 keeps π₂=A | Pass |
| Multiplicative p-series | p=2,3 | 2X+X²→X²; 3X+3X²+X³→X³ | Pass |
| ψ_(−1) and Δ²⁴ | height 1 odd p; Δ²⁴ | u↦−u, square identity; weight 12·24=288, degree 2·288=576 | Pass |
| Finite p-local sphere | π₀S_(p); q≠p on S/p; ⋁S_(p) | ℤ_(p); q a unit mod p; identity of an infinite wedge meets infinitely many summands | Pass |
| p-local duality and target | D(S/p); D(S_(p)); V=S_(p),X=Hℤ | fib(p)=Σ⁻¹S/p; S_(p); Hom(ℤ_(p),ℤ)=0 versus π₀(DV⊗Hℤ)=ℤ_(p) | Pass |
| Basic localizations | E=0,S,Hℚ on S | 0, S, Hℚ | Pass |
| Geometric height | additive/multiplicative over 𝔽₂ | [2]=0 (height ∞) / X² (height 1) | Pass |
| v-degrees and BP | p=2,3; degree 2 at p=3 | |v₁|=2,4; π₂BP=0, π₂MU_(3)=ℤ_(3) | Pass |
| Morava and connective cofibers | K(0)_2; K(1) at 2; BP⟨1⟩/v₁, k(1)/v₁ | 0; 𝔽₂ in even degrees; π₀=ℤ_(p), 𝔽_p | Pass |
| Type and smash | S_(p),S/p,0 | types 0,1,∞; max(0,1)=1, max(1,∞)=∞ | Pass |
| Nilpotence endpoint | R=H𝔽_p | K(i)∧R=0 all finite i, H𝔽_p∧R≠0, unit not nilpotent | Pass |
| Wrong periodic map | p on S/p | K(1)_*(p)=0, identity nonzero | Pass |
| 3.1 degenerate bases | Y=*; Y=∅; E=0 | E_*(F_+); 0; 0 | Pass |
| 3.1 differentials and cells | d_r at (s,t); one s-cell | (s−r,t+r−1), total −1; Σ^s(E⊗Σ∞_+F) | Pass |
| 3.1 monodromy | reflection torus of S¹, E=Hℤ | 1−(−1)=2: ker 0, coker ℤ/2; H₁=ℤ⊕ℤ/2, H₂=0; trivial transport ℤ², ℤ | Pass |
| 3.1 naturality for a non-cellular map | I, t↦t/2 | filtration 0={0,1}, image {0,1/2}; H₀ map id:ℤ→ℤ | Pass |
| 3.1 periodic coefficients on an infinite base | KU, id of ℂP^∞ | E²_(s,t)=ℤ for s,t even; differentials land in odd total degree, all 0; abutment KU_*(ℂP^∞) | Pass |
| 3.1 bounded-below hypothesis | constant filtration S in all degrees | associated graded 0, colimit S with π₀=ℤ | Pass, negative control |
| 4.1 Euler inversion | p=2 | ((1+z)²−1)/z=2+z, z=−2, ℤ₂[z]/(z+2)[1/z]=ℚ₂ | Pass |
| 4.1 Euler inversion | p=3 | z²+3z+3 Eisenstein (3|3, 3|3, 9∤3); ℚ₃(ζ₃), degree 2 | Pass |
| 4.1 against §7.2 | p=2,3 | #1733 §7.2: ℚ₂ even at p=2, ℚ_p(ζ_p) in x=L−1; same values | Pass |
| 4.1 raw versus localized | KU_p^∧ | K(1)-local (Moore tower: ℤ_p even, 0 odd); L_T(1) Tate=0 by §4.24; raw π₀≠0 | Pass |
| Sphere and Hℤ Tate | trivial C_p on S; trivial C₂ on Hℤ | π₀=ℤ_p, negative 0; ℤ/2 even, 0 odd | Pass |
| Two-point norm (gap) | {a,b}→* | X⊕X→X×X identity matrix; |{a,b}|=2 | Pass |
| Rational BC_p cardinality (gap) | Sp_ℚ, trivial action | norm p on π₀=ℚ; |BC_p|=p⁻¹; norm instead of inverse gives p | Pass |
| Weak 2-ambidexterity fails in Sp (gap) | B²C_p→* | diagonal fibre BC_p; norm on π₀H𝔽_p is p=0; Ĥ^(−k)(C_p;𝔽_p)=𝔽_p all k | Pass |
| Sp_T(0) not 1-semiadditive | p=2, H𝔽₃ | 2 invertible so S[1/2]-local; C₃ norm 3=0 | Pass |
| dim BC_p | n=1,2 | E_n^0[[z]]/[p](z) rank p^n: p, p²; p^(binom(n,1))=p^n | Pass |
| Dimension formula shapes | n=k=2; k>n; n=0 | p^(binom(2,2))=p versus p^(nk)=p⁴; 1; rational ranks p (k=0), 1 (k≥1)=p^(binom(0,k)) | Pass |
| Residue theory on S² | p=2,n=2,k=𝔽₄ | κ₀=k², κ₁=0; dim(E⊕Σ²E)=2; period-6 K(2)_0(S²)=𝔽₂ gives 1 | Pass |
| Evenness hypothesis | X=S¹,*,∅ | κ₁(S¹)=k≠0, dim(E⊕ΣE)=1−1=0; 1; 0 | Pass |
| Connectivity cannot drop | n=1: BC_p versus K(C_p,2) | K(1)-rank p, reduced p−1≠0; rank p^(binom(1,2))=1, reduced 0 | Pass |
| Cardinality invertibility | k≥n≥1 in Sp_T(n) | image p^(binom(n−1,k))=1 for k≥n; csy gives k≥n≥0, README's range is a subset | Pass |
| Bootstrap hypotheses | E_n[−] on Sp_T(n) | 1-semiadditive by §4.24 norm equivalence; supp T(n)={n} and E_n conservative on Sp_K(n) detect units; dims rational nonzero | Pass |
| 4.3 bound at n=1 | K(ℤ/p,2); BC_p | K(1)-rank p^(binom(1,2))=1, reduced 0, ⟨T(1)⟩=⟨K(1)⟩ (§4.20); p-torsion homotopy so S[1/p]-acyclic; BC_p reduced rank p−1 | Pass, bound 2 sharp |
| 4.3 bound at n=2 | K(ℤ/p,3); K(ℤ/p,2) | K(2)-rank p^(binom(2,3))=1 and K(1)-rank 1: reduced 0; K(ℤ/p,2) K(2)-rank p, reduced p−1 | Pass, bound 3 sharp |
| 4.3 height-zero convention | q≠p, K(ℤ/q,n+1) | H̃_(n+1)(;ℤ[1/p])=ℤ/q≠0 (not S[1/p]-acyclic); ⊗ℚ=0; q-torsion so T(i)-acyclic | Pass |
| 4.3 third assertion | Σ^(n+1)H𝔽_p→0; Σ^nH𝔽_p→0 | Ω∞ gives K(ℤ/p,n+1)→*, acyclic; K(ℤ/p,n)→*, not T(n)-equivalence | Pass |
| 4.3 reduction step | X→τ_≤(m−1)X | fibre X⟨m⟩ m-connective; target bounded so positive-height periodic groups 0; π_*[1/p]=0 both sides | Pass |
| 4.3 Postnikov layers | A p-primary torsion; ℤ/p^∞ | finitely generated torsion abelian groups are finite, so A=⋃A_α; K(ℤ/p^∞,n+1)=colim K(ℤ/pʳ,n+1) | Pass |
| 4.3 Serre class | ℤ/4; H₄(K(ℤ/2,2);ℤ) | extension of ℤ/2 by ℤ/2, killed by 2² not 2; ℤ/4 is in the some-power class | Pass |
| 4.3 height zero of layers | K(A_α,k), k≥n+1≥2 | simply connected; stable homotopy p-power torsion; π_*^s[1/p]=0 so S[1/p]⊗Σ∞K=0 | Pass |
| 4.4 weak-ring unit law | Hℚ with μ=0; S with η=id | 1↦0≠1 fails; passes; η⊗η′ and (μ⊗μ′)∘swap give the tensor | Pass |
| 4.4 all four conditions | R=Hℚ, n=0, F(1)=S/p | S/p⊗Hℚ=0; H̃_*(BC_p;ℚ)=0; K(j)⊗Hℚ=0, 1≤j≤∞; rational homology of π-finite spaces is H₀ | Pass |
| 4.4 ∞ endpoint | R=H𝔽_p | K(j)⊗R=0 finite j≥1; K(∞)⊗R≠0; H̃_(n+1)(K(C_p,n+1);𝔽_p)=𝔽_p | Pass, endpoint needed |
| 4.4 telescopes | R=T(i), 1≤i≤n | supp {i}; T(i)⊗Σ∞K(C_p,n+1)=0, agrees with §4.3 layer step | Pass |
| 4.4 Morava K-theory | R=K(n) | supp {n}; F(n+1)⊗K(n)=0; Σ∞K(C_p,n+1)⊗K(n)=0 (k=n+1>n) | Pass |
| 4.4 the sphere | R=S_(p) | supp all; F(n+1)⊗S≠0; H̃_(n+1)(K(C_p,n+1);ℤ)=ℤ/p≠0 | Pass, all fail together |
| 4.4 weak-ring hypothesis | I_(ℚ/ℤ) | supp ∅; F(n+1)⊗I=I(DF(n+1)), π_(−k)=Hom(π_kDF,ℚ/ℤ)≠0 | Pass, negative control |
| 4.4 (3)⇒(1) route | F=DV⊗V | supp(F⊗R)={n+1,…,∞}∩{0,…,n}=∅; weak ring with empty support is 0 | Pass |
| 4.4 (2)⇒(3) route | K(j)⊗R≠0, n<j≤∞ | K(j)-modules R-local; K(j)⊗Σ∞K(C_p,n+1) reduced rank p^(binom(j,n+1))−1≥p−1 (finite j), 𝔽_p (j=∞); L_R kills it | Pass |
| 5.1 trivial group and zero ring | G=1; A=0 | B^h1=A, B⊗_AB=A; all 0 | Pass |
| 5.1 split torsors | C₂, B=A²; S₃, B=A⁶ | A⁴=∏_G B, fixed A; 36=36, fixed A | Pass |
| 5.1 faithfulness independent | A=Hℤ, B=0 | B⊗_AA=0 with A≠0 | Pass |
| 5.1 group orders and stacks | N=1,2,3,5 | 1; (4−1)(4−2)=6=|S₃|; 8·6=48; 24·20=480; −1 fixes E[2] at N=2 | Pass |
| 5.1 bases after 2-localization | N=2,3 | ℤ[1/2]⊗ℤ_(2)=ℚ; ℤ[1/3]⊗ℤ_(2)=ℤ_(2) | Pass |
| 5.1 row action | g upper, h lower unipotent at N=3 | ((P,Q)g)h=(2P+Q,P+Q); ((P,Q)h)g=(P+Q,P+2Q) | Pass |
| 5.1 determinant components | diag(−1,1) | ζ↦ζ⁻¹; |GL₂(𝔽₃)|/|SL₂(𝔽₃)|=48/24 | Pass |
| Supersingular orders (Examples) | p=2,3 | 24·2=48; 12·2=24 | Pass |
| Honda quotient | p=2,h=1; p=3,h=1; h=0 | d=2, 𝔽₄, val z=1/2, val P(u₁)=1/2=2⁻¹; d=6, 𝔽₉, 1/6, 1/3=3⁻¹; h=0 gives val P=1, no decrease | Pass |
| Part II fixed points not connective | p=2,n=2,k=0 | trivial action on π₀BP⟨1⟩=ℤ₂; π₋₁=H¹(ℤ;ℤ₂)=ℤ₂ | Pass |
| Part II fp-type index | ku₂^∧, U=cofib(v₁⁴ on S/2) | 𝔽₂[v₁]/v₁⁴ in degrees 0,2,4,6; S/2⊗ku=𝔽₂[v₁] all even ≥0, so fp-type 1 not 0 | Pass |
| Part II acyclic-ring localization | C=Hℤ_p, n=2; C=E₂ | both sides 0, L_T(2)K(ℤ_p)=0; π₀L_T(1)E₂=p-completed W(𝔽_(p²))((u₁))≠W[[u₁]] | Pass |
| Part II trace for fixed points | bhls Corollary 6.3 proof | DGM, Theorem 6.2 on R→π₀R, Mitchell; acyclicity unused in that step | Pass |
| Part II witness range | bhls Theorem A | any prime, n+1≥2, all k≥0 | Pass |
| Spectral-module contract | affine chart; M=0; M=O | sections 0; unit module | Consistent |

### Supplier and ownership audit

Every citation was resolved at main (`eaf17b1`) or at the open head the brief names.

| Supplier | Resolution |
| --- | --- |
| GeneralAlgebraicKTheoryPartII (#1742 at 7f6a44d) | §4.2 (:670), §4.3 (:694), §4.4 (:710, ring version: T(n)⊗R=0 iff K(n)⊗R=0, distinct from §4.4 here), §4.5 (:726, L_n^(p,f) with S[1/p]), §4.6 (:750), §4.13 (:877, same m-connective convention), §4.14 (:900, no boundedness on E), §4.15 (:917: “there is an integer m≥2 … every admissible m satisfies m≥n+1”), §4.16 (:933), §4.19 (:981), §4.20 (:997), §4.24 (:1068), §4.30a (:1194: ko→KO and A→A⊗_ko KO for every E₁ ko-algebra, n≥1), §4.45 (:1485, Mitchell), §5.2 (:1546), §5.5 (:1608), §6.5 (:1743), §8.6 (:2091), §8.8 (:2125); its gaps on HomotopySpheres (:192) and EllipticCohomology (:204–212). Nothing in it consumes the sharp bound (grep for “n+1)-connective” and “m=n+1” hits only its truncation lemma at :465). Its Downstream paragraph (:2418) still says “Layers 0–6” and “§4.30a supplies the real Bott comparison of its Layer 5”; stale on that side, not a defect of this folder. |
| RefinedTraceMethods (#1493) | §2.6 (:646), §2.9 (:853), §2.10 (:879), §4.9 (:1825), §4.11 (:1948), §4.17 (:2226, Dundas–Goodwillie–McCarthy), §6.8 (:2907, with L_(K(1))X≃(L_(KU)X)^∧_p at :2919). |
| StableHomotopyKTheoryPartII (#1733) | §2.7 (:360, finite-type Segal); §7.2 (:911–919). |
| StableHomotopyKTheory (#1227) | §§2.4–2.7 (:573–609), §3.18 (:1210), §3.21 (:1247), §§7.21–7.27 (:2594–2695); §7.24 states no connective hypothesis on E. |
| DGFloer (main) | Layer 1 item 4 (:659–665): Serre classes, Hurewicz modulo a class for simply connected spaces, and the instance “groups annihilated by some power of d”, with the remark that a fixed power gives no class. Exactly what §4.3 consumes. |
| BordismFormalGroups (main) | F6.2 nilpotence with the height-∞ endpoint (:955–977); F6.3 ⟨K(n)⟩≤⟨T(n)⟩ (:1173) and L_n^f (:1174–1188); F3 Adams splitting (:305); F6.5 finite-group Borel actions, transfer/norm, Tate (:1526–1535, :2395–2440), Kan extensions, K(n)-localization formula (:2536). No higher norm, cardinality or weak ring anywhere in it or in any open head (`roadmaps grep` for “weak ring”, “ambidextr”, “cardinality” hits only this roadmap), so the narrowed contract is minimal and §4.4 has one owner. |
| GeneralizedCohomology (main) | G2.10 (:918), G3.4 (:2602), G3.7 (G3 item 7, :773: compactness of finite cell spectra, the homology filtered-colimit theorem and the finite-CW mapping formula), G3.8/G3.9 (:1660, :2583), G4.5 (:1498), G5.1 (:2556), G5.4 (:315). |
| EllipticCohomology (main) | E6 (:1807–1850): level stacks for Γ(N), Γ₁(N), Γ₀(N) with the level inverted, deck-group descent, the order 48 at level 3; E2 periodic coefficient with |u|=2 (:491–513); E4's degree-576 class (:1478–1480). No Galois extension is stated there. |
| EnhancedDerivedSheaves (main) | E0.4 (:211), E0.5 (:242), E5:presentability.1 (:1597). |
| AlgebraicTopology, ModularCurves (main) | Stages 4, 5, 8 (:499, :849, :1602); §3D (:1043), §4B (:1077), §4C (:1100), §5B (:1313, N≥3 affine `Y_full(N)`), §7E (:1510), §7F (:1551). |

Ownership by object. Spectrum-valued Serre filtration, completed-KU Tate, chromatic higher semiadditivity, the sharp bound, the weak-ring criterion and full-level Galois extensions occur in no roadmap on main and in no open head other than this one (`roadmaps grep` on “generalized Serre”, “ζ_p)”, “(n+1)-connective”, “TMF(N)”). The real Bott comparison now lives only in GeneralAlgebraicKTheoryPartII §4.30a and this roadmap cites it. The stable James splitting is requested from HomotopySpheres only by GeneralAlgebraicKTheoryPartII (:192); HomotopySpheres #1287 states it at :931. One remark for the human approver: GeneralAlgebraicKTheoryPartII's `gap:elliptic-level-three-galois` asks EllipticCohomology E6 for the N=3 extension, and §5.1 here proves every N≥1 from the level stacks without that input (README:11 says so). Today there is one builder of each statement; once EllipticCohomology fulfils that contract, its N=3 extension and §5.1's N=3 instance are the same object with EllipticCohomology earlier in the order. The human reviewer offered this arrangement and the author took it; I record it rather than raise it.

### Declared contracts

| Slug | README | Precision and minimality |
| --- | --- | --- |
| p-local-finite-duality | :77 | Unchanged; integral duality is G5.1, the p-local comparison is the extra. |
| spectral-ringed-sites | :99 | Unchanged. |
| higher-ambidexterity-norms | :85 | Norms of weakly m-ambidextrous maps with base change, composition, the finite-group identification and the cardinality: csy §§2.1–3.1, generic, no chromatic input; BordismFormalGroups F6.5 has the finite-group case only. Declared in the README, missing from the plan (R01). |
| elliptic-spectral-affineness, all-height-morava-realization | :117, :119 | Declared by GeneralAlgebraicKTheoryPartII with identical wording; inherited. |

No gap names supplier `none`; no dependency is written as supplied while citing a missing section. The retired bhls contracts are stated as Part II targets with the same locators; their content was reopened (rows above).

## Not verifiable

- `hesselholt-ku` is cited by the printed report page 844; the cached extraction's page marker is 40, consistent with the report's offset, and the formula is at line 1662 of the extraction. The locator is sound; the printed page itself was not seen.
- The Ravenel–Wilson rank p^(binom(n,k)) was checked where csy line 3660 quotes it, not against Ravenel–Wilson's text.
- This review checks statements, locators, suppliers and concrete instances; it does not supply proofs of the new constructions or of the declared contracts, and the declaration-free Lean file establishes elaboration only.

## Source issues

- **Misprint** in hahn at Proposition 4.3, printed p.8: the source says the Weierstrass quotient is 𝔽_p[[u_h]][z]/(g) with residue field 𝔽_p; it should be 𝔽_(p^(h+1)), the residue field of the Honda theory fixed in its §2; affects a stated result.
- **Misprint** in csy at proof of Corollary 5.3.2, printed p.80: the source names the functor Sp_T(n)→Sp_K(n) as L_T(n); it should be L_K(n); affects the proof.
- **Misprint** in csy at Lemma 5.1.7, printed p.73: the source takes the degree-zero dimension over 𝔽_p for every n≥0; at n=0 the coefficient field is ℚ; affects a stated result.
- **Misprint** in mm at Example 7.5, printed p.37: the source lists (0,1) as a 2-torsion point of y²=x(x−1)(x−λ); it should be (1,0), since (0,1) is not on the curve; affects nothing.
