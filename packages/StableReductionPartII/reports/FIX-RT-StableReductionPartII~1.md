# FIX-RT-StableReductionPartII~1

Repair of red-team round 1 on `packages/StableReductionPartII`. There were two reviews: pass a (findings A-F01 to A-F11) and pass b (B-F01 to B-F10). Overlaps are settled once and cross-referenced: A-F01, A-F02 and B-F04 cover Checks; A-F05 and B-F06 cover narrative. Finding sections carry the reviews' own ids: the first run of `F01`–`F11` is pass a (cited in the text as A-Fnn), the second run of `F01`–`F10` is pass b (B-Fnn).

Layer 2 and Layer 4 are renumbered because targets were deleted. Every section number below that is not marked "old" is the new number. The main old→new pairs are:

| Old | New | Old | New | Old | New |
|---|---|---|---|---|---|
| 2.5 | 2.5 | 2.46 | 2.37 | 2.70 | 2.53 |
| 2.71 | 2.54 | 2.160 | 2.112 | 2.186 | 2.123 |
| 2.25 | 2.21 | 2.81 | 2.63 | 2.329 | 2.181 |
| 2.360 | 2.200 | 2.311 | 2.176 | 2.8 | 2.7 |
| 2.7 | 2.6 | 2.398 | 2.213 | 2.400 | 2.214 |
| 2.443/2.444 | 2.231/2.232 | 2.449/2.450/2.452 | 2.233/2.234/2.236 | 2.460/2.467/2.479 | 2.244/2.251/2.262 |
| 2.472 | 2.256 | 4.8 | 4.6 | 4.10 | 4.8 |
| 4.16 | 4.14 | | | | |

## F01 (P3) — applied

Checks rewritten as computed instances in the fixture A=ℤ, p=(2), m=2R:
- §2.5: 1/3↦3 in ℤ/8; 2↦6; 8∈2³ℤ₂ while 4≠0; B₀=0.
- §2.37: 2+3u↦(2,3); over 𝔽₂ with γ=1, u²↦(0,Y); 2Yu≠0 over ℤ/4.
- §2.112: (1+2v+4v²)⊗(1,1/3)↦(1+2v+4v², 3+6v+4v²); level 2 gives (1+2v, 3+2v); the 1/3-action swaps the entries.
- §§2.53, 2.54: the suggested σ-tensor Checks do not apply there, since σ∉Â and those objects carry no tensor. They get coefficient-level Checks instead: f₃(1/3)=3, f₂(1/3)=3 and f₁(1/3)=1; λ₃(5)=5 and 2v≠0=8v; and the non-example m=(u,v), which breaks p⊆ι⁻¹(m).

## F02 (P3) — applied

Verified: additivity gives 3·e₂(1/3)=e₂(1)=1, so e₂(1/3)=3 modulo 4. The clause "which no ℤ-linear evaluation determines" was false.

§2.123 Check 3 now says the value is forced and is a value check only. It adds e₃((1/3)σ)=3+6v+4v² and its reduction 3+2v. The "zero to zero" Check became the n=0 and n=1 values.

## F03 (P2) — applied

Verified: the Hom exchange and positive Ext vanishing for J and D (old §§2.351, 2.361, 2.438, 2.439) are statable at the pin, using `Ext R (ModuleCat R)` in `Mathlib/CategoryTheory/Abelian/Ext.lean`, line 41.

Added to Suggested.lean, with real bodies:
- the predicate `HasUniversalCoefficients A R M`. It says both canonical maps are A-linear equivalences with the stated values on pure tensors, and every positive Ext of M and of M* into R⊗_A N vanishes, for every A-module N.
- the theorem `pointedSection_universalCoefficients`. It states this predicate for the pointed section ideal over every commutative A.

The predicate packages the four README statements: J*⊗N≅Hom(J,R⊗N) is Θ_D, J⊗N≅Hom(J*,R⊗N) is Θ_J, and the two Ext families. Both names are added to §2.236. The docstring's "not statable" item now covers only the coherent-sheaf globalization and the completed-local transfer.

## F04 (P2) — applied differently

Verified: SchemeAndStackFoundations §4.15 `level_structure_cover_ample` already owns the uniform tricanonical equations and the single ample λ_{3d} on the integral cover N_{g,0}(15).

The suggested repair, applying that target "to the finite scheme cover V", does not type-check: the supplier's statement is about N, not an arbitrary V. Repair:
- old §§4.2–4.3 are deleted.
- §4.14 (old 4.16) now takes h:N_{g,0}(15)→M, pulls q*L≅λ^e back to an ample line on N, and descends ampleness along the finite surjection h (tag 0GFB).
- gap:finite-scheme-cover leaves §4.14 but stays in §6.5.
- The rank Checks (15, 11, 4; d=1 gives kernel 0) move into §4.14.
- Scope, How to read and the Layer 4 Dependencies are updated.

## F05 (P3) — applied

- §2.214: the heterogeneous-equality clause → "compare the differential maps after transporting along those identifications".
- §0.5: `StableReductionPartII:key/moduli-curves` → "the stable pointed-curve moduli pseudofunctor of SchemeAndStackFoundations §4.15".

The rest of the narrative is under B-F06.

## F06 (P3) — applied

Verified: mc0-stacks-curves line 2158 is the section tag 0C58, and Lemma 20.1 is tag 0C59 at lines 2165–2170. §2.259 now reads "Lemma 53.20.1, tag 0C59 (mc0-stacks-curves lines 2165–2174)". No other occurrence of 0C58 remains.

## F07 (P2) — applied

Verified: K3SurfacesAndSymplecticBoundedness §6.0b, read at its open head, owns the canonical formula ω_S≅f*(ω_B⊗L⁻¹)⊗O(Σa_tF̄_t) and deg L=−χ−length T, in all characteristics. It does not own χ(O_S)≥0. Changes:
- a new "From TauCetiRoadmap.K3SurfacesAndSymplecticBoundedness" contract and a Scope line.
- gap:surface-low-genus-positivity (README and `design/plan.json`) now asks for χ≥0 and the nefness, using that formula.
- §4.6 cites §6.0b in its route and its Needs.

## F08 (P2) — applied

Verified: AbelianSchemesAndArithmeticModuliPartII §B4.1 (open head; line 129 of the merge order, so earlier than this roadmap) constructs M_g[ℓ] over ℚ(ζ_ℓ), its universal curve, level changes and the quasi-finite Torelli map. Changes:
- a Scope bullet and a supplier contract.
- §4.8: the restriction to ℚ(ζ_N) is identified with that scheme by the unique isomorphism of representing objects.
- §6.12: τ_N restricts to the §B4.1 Torelli map.
- §7.13: the characteristic-zero export is the §B4.1 construction.
- §B4.1 is added to the Needs of all three.

## F09 (P2) — applied

Verified: EnhancedDerivedSheaves §E1.9 `perfect_proper_pushforward` (main) and AlgebraicModuliForArithmeticGeometry §7.2 `single_degree_free_locus` and `universal_functions` supply everything gap:perfect-arbitrary-base asked for. Changes:
- the gap is removed from the README and from the plan `gaps`.
- its uses in §§1.2, 1.4 and 1.9 (routes and Needs lines) now cite these names.
- an EnhancedDerivedSheaves contract is added, and §7.2 is added to the AlgebraicModuliForArithmeticGeometry contract.

## F10 (P1) — applied

Verified: StableReduction main, Layer 8 (lines 576–581) proves only global generation of ω²,ω³ and the vanishing; Layers 2–3 state no very ampleness. Changes:
- new gap:stable-tricanonical-embedding: "What StableReduction must provide": very ampleness of ω³ and H¹(ω³)=0 on every stable curve, Layer 8. It is in the README and in the plan `gaps`.
- §1.2's route uses this gap, and its locator adds dm Theorem 1.2 (dm line 105).
- The same pattern in §1.3 ("parent's m≥3 very-ampleness") is repaired, and both Needs lines gain the gap.

## F11 (P2) — applied

Verified: §2.236 (Ile, Definitions 3.1 and 3.4, Proposition 3.5, Remark 3.6, ile lines 268–365) is a pure module statement. Added:
- `IsStablyReflexive` (§2.233).
- `IsRelativelyStablyReflexive` (§2.234). Its fibre M⊗_Aκ(p) is written as (R⊗_Aκ(p))⊗_R M, because Mathlib has no `Module (A⊗B) (M⊗N)` instance; that is only a def at `RingTheory/TensorProduct/Basic.lean`, line 569.
- `relativelyStablyReflexive_iff_universalCoefficients`, under explicit Noetherian, flat and finite hypotheses.

All three names are in the README.

## F01 (P3) — applied

§7.12: "ModularCurves Layer A–F" → "ModularCurves §§1C–1D, 2D, 4A–4C, 9D–9E". Each of these exists on main, at lines 486, 563, 751, 1063, 1077, 1100, 1949 and 2008.

## F02 (P3) — applied

The duplicate map was reproduced by script: 174 copies, none with an API of its own. Changes:
- 170 copies are deleted, and every link to them is repointed to the earlier construction.
- Four copies that precede their construction (old 2.124, 2.139, 2.157 → 2.173; 2.262 → 2.283) are kept as route lemmas. Their duplicate bullets are dropped from the construction's API instead, since deleting them would create forward references.
- Repeated bullets inside one API list are dropped.
- Near-duplicates deleted: old 2.264, 2.436, 2.437, 2.440, 2.441 and 2.473 (its universal-curve clause is already in 2.472).
- Repairing the pattern found 56 more targets whose statement is a construction plus one API bullet. 41 law-type copies are deleted, among them the "— obj/— hom/— apply" targets. For the 14 substantive theorems kept as targets (exactness, quasi-isomorphisms, Ext vanishing), the bullet is dropped from the construction.

Disputed:
- old 2.161 and 2.480 (now §§2.113, 2.263) are kept. They are milestones cited by §2.246 and §7.12, and 2.480 also asserts properness and smoothness of M̄₁,₁.
- the finite-free special cases (old 2.216/2.254 and 2.377/2.393 of the finite-projective 2.218/2.260 and 2.397/2.411) are kept. They are the finite-free step of the retraction route.

Result: Layer 2 has 266 targets (2.0–2.265), with 0 broken and 0 forward anchors.

## F03 (P3) — applied

The six "Deduction using …" templates were refitted by script against each statement: `IsLimit` laws only where a limit or cone occurs, `TensorProduct.map_*` only with ⊗, `Dual.eval_apply` only with biduals, `mulVecLin_apply` only with Φ/Ψ. 60 locators changed and 89 misfit names were removed. By hand:
- §2.116: 087R (Hom base change) → knudsen2012 Proposition 3.1 with `Module.finitePresentation_of_surjective`.
- §2.172: `IsLimit` laws → `TensorProduct.piScalarRight`.
- §§2.209, 2.214: `isoOfComponents` removed; §2.214 cites `CochainComplex.of` instead.
- the 7 Knudsen II "ambient setup" locators and the 2 "motivation" locators now say what the source supplies.

Disputed: knudsen2012's monic division and κ/λ comparisons do fit A-flatness of J and the coordinate statements (old 2.127, 2.60, 2.61, 2.80, 2.97). Monic division makes R A-free, and J is the kernel of the split surjection R→A.

## F04 (P3) — applied

Checks replaced by computed fixture values (ε(u)=0, ε(v)=u):
- §2.21: P_J(v,u)=0, while the unsigned map gives 2uv.
- §2.63: P_D(u,v)=0, and v·incl−uε has value v² at v.
- §2.46: m(u)=vε, and ε∉im m.
- §2.75: C_D(ev_v)=(v,−u).
- §§2.106, 2.147: classes of 1⊗Ψ(1,0) and 1⊗Φ(0,1); in these two targets the tensorized-cokernel maps are renamed E_J^M and E_D^M.
- §2.107: ψ(η(v))=v, while F↦F(ε) gives u.
- §§2.138, 2.153, 2.181, 2.191, 2.200: σ-projections, the i=r=0 non-example, and N=ℚ₂ (cone limit 0, but R̂[1/2]≠0).
- §2.115: three restating Checks deleted.

Further changes:
- 51 Check and API bullets that repeated the whole setup were trimmed.
- Checks were added to §0.7 (S_sm=S, ∅ and D(t)), §2.244 (k[[u,v]]/(u²+uv); the double line u² excluded), §2.251 (R₀=A[v,y]/(vy²) with its basis; characteristic 2) and §2.262 ((4,4,1), (5,4,2), codimension 4).

## F05 (P3) — applied

- All Lean-projection headings are gone; each was a deleted law-copy.
- Undeclared identifiers are replaced by the objects they name, in 30 rules: for example sectionIdealResolution → "the two-periodic resolution of J", coefficientHom → "coefficient map", sectionResolutionHomIso → "the categorical Hom-cochain comparison".
- §§2.215–2.216: the Lean proof narrative is removed from the statements; Ext is named as backticked `CategoryTheory.Abelian.Ext`.
- The `Module.instIsReflexiveDual` Check now cites the instance in `Mathlib/LinearAlgebra/Dual/Defs.lean`, line 263.

## F06 (P3) — applied

- LV.5 slugs → MordellLawrenceVenkatesh §§5.9, 5.11–5.12, with a new contract.
- FuchsianOrbifolds and GeometricTopology are removed from §4.11; gap:stack-topology-boundary is the input.
- "expansion-flat" → a link to §2.251.
- the "recorded gap", "owner-extension" and "remain open" phrases now name §2.254, §§2.253–2.254, §2.259, gap:formal-proj-completed-cokernel, gap:integral-node-incidence, gap:relative-node-branch-data and gap:integral-deligne-pairing, and those slugs are added to the Needs lines.
- "reread" (8), "parsed HTML" (3), "API/test package" (8), "without yet", "acceptance file" (2), "definitional reduction", "bespoke", "surrogate", "record the chosen structure", "Verify each API" and "arbitrary-base-duality" are deleted or rewritten.

The grep test in the review now returns nothing.

## F07 (P3) — applied

- (a) §2.176: "differs from −3 whenever 6≠0 in A, for example over ℤ".
- (b) the zero-ring sentence of the degree target is corrected.
- (c) §2.7 Check 4: x=y=0 has discriminant 0, so it shows only that exactness is a statement about the quotient.
- (d) the eight C2 boilerplates now say per target whether N is arbitrary (§§2.127, 2.156, 2.166, 2.174) or finite projective (§§2.182, 2.221, 2.230, 2.213, where B uses the finite-projective limit).
- (e) the M-clause is removed in §§2.231–2.232 and, by the same pattern, in the two categorical Ext targets (§§2.219–2.220).
- (f) 6 retract/projective targets now say "N is projective, hence flat".
- (g) §2.1: the determinant is −(γ²−4δ).
- (h) §2.6 names B[[x,y]] and uses the unit to realize every f=xu′+yv′.

## F08 (P3) — applied

The tags 01Q3 and 01VG lived only in old §4.2, which is deleted under A-F04. No tag is cited under mc4-stacks any more.

## F09 (P3) — applied

- The 7 remaining unbackticked Mathlib names in Needs lines are backticked (23 occurrences, each checked at the pin, for example `AdicCompletion.evalₐ` at `RingTheory/AdicCompletion/Algebra.lean`, line 132).
- `CommRing`, `RingHom`, `Matrix` and `TensorProduct` are dropped where a specific declaration is present.
- All Needs duplicates are removed (script: 0), including SchemeAndStackFoundations §0.3 in §2.250.
- Pruned: old 2.18 in §2.33, and old 2.17 in §§2.144 and 2.79.

Disputed: §2.79 does use §2.67, the monic normal form, in its route.

## F10 (P3) — applied

- λₙ is defined in C3.
- The sentence "completed-base module N is arbitrary" is removed from C4 targets without N.
- h is bound in §2.80; R′, ι′, φ in §2.78; p in §§2.49–2.50; K in §2.157.

Disputed:
- no ideal K occurs in the README (the K=(v−t,…) of the witness is the reviewer's own proof), so K is not renamed.
- old 2.459 (§2.243) contains no J, so there is nothing to rename.
- the "arbitrary N" sentence of old 2.302/2.345 is no longer present.

## Checks run

- `lake env lean packages/StableReductionPartII/Suggested.lean`: exit 0, with exactly four warnings "declaration uses `sorry`", at lines 118, 134, 145 and 152. No `TauCeti.*` import, so nothing was built.
- `#check @name` for all 12 declarations in one scratch file, elaborated once. Every type matches its README statement. The three predicates carry A, R, `Algebra A R`, M, `Module A M` and `IsScalarTower A R M`. The criterion carries `IsNoetherianRing A`, `IsNoetherianRing R`, `Module.Flat A R` and `Module.Finite R M`. No binder is lost. The old 7 types are unchanged. N in `HasUniversalCoefficients` ranges over the universe of A, matching the README's common-universe convention.
- Depcheck (as given): `depcheck: 56 roadmaps, 654 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Gate repair, report headings: finding sections now carry the reviews' own ids (`## F01 (P3) — applied`), pass a first, then pass b.
- Gate repair, `tex=5`: three Checks (§§2.138, 2.153 and 2.181, the completed-tensor fixture) had `σ=Σ_{k≥0}2^k v^k∈R̂` and the ρ₃/ρ₂ values outside code spans. These formulas are now code spans. The mathematics is unchanged.
- Gate repair, `tex=2`: the cone-lifting Check with i=r=id still had `σ=Σ_{k≥0}2^k v^k∈R̂` outside a code span, and the §4.14 projectivity statement had the level cover `N=N_{g,0}(15)→M̄_g` outside one. Both are now code spans. The mathematics is unchanged.

## Adversarial pass on new or changed statements

| Statement | Instances | Computed values | Result |
|---|---|---|---|
| `IsStablyReflexive` | ℤ over ℤ; ℤ/2 over ℤ; zero ring | ℤ**=ℤ, Ext>0=0; (ℤ/2)*=0, so η not injective; all zero | true / false / true, as intended |
| `IsRelativelyStablyReflexive` | A=R=ℤ, M=ℤ; M=ℤ/2; A=R=0 | fibres 𝔽_p are reflexive; ℤ/2 is not flat; no maximal ideals, so vacuous | true / false / true |
| `HasUniversalCoefficients` | A=R=ℤ, M=ℤ; M=ℤ/2, N=ℤ | N≅Hom(ℤ,N); β: ℤ/2→Hom(0,ℤ)=0 is not bijective | true / false: agrees with the iff |
| `relativelyStablyReflexive_iff_universalCoefficients` | the rows above; universes | both sides agree; the ∀N in Type u is used only at N=κ(s), A | holds (Ile, Remark 3.6) |
| `pointedSection_universalCoefficients` | A=ℤ, zero parameters, N=ℤ/2; A=0 | ε⊗1↦(v↦u⊗1)≠0; resolutions have A-flat cokernels (R/J=A); all zero | consistent |
| gap:stable-tricanonical-embedding | smooth genus 2; a rational component with 3 special points | deg ω³=6, h⁰=5, embedding in ℙ⁴; ω² globally generated but 2:1; deg ω³=3>0 | correct (dm Theorem 1.2) |
| §4.14 | g=2; constant family | λ ample on N by the supplier; h is finite (proper and quasi-finite); trivial λ on a constant family is not ample | consistent |
| gap:surface-low-genus-positivity | E×ℙ¹; Jacobian K3 | L=O, χ=0; L=O(−2), χ=2 | χ≥0 holds; the formula is imported |
| §4.8 identification | g=2, N=3 over ℚ(ζ₃); N=2 | same functor; −I=I mod 2 | unique isomorphism; N=2 excluded |
| §2.6 | f=x, d=1 (γ=1, δ=0) | u′=1, u=1, μ=1, ν=1; 2x+x+y=… gives coefficient (γ²−4δ)(xu+yv)=x | correct |
| §2.1 route | γ=1, δ=0 | det((2,1),(1,0))=−1=−(1−0) | correct |
| §2.21 Checks | fixture, 𝔽₂ | P_J(v,u)=0; P_J(0,−u)=uv; P_J(u,u)=u²−uv=0 | correct |
| §2.63 Checks | fixture | (u·incl−vε)(u)=0 and (v)=0; (v·incl−uε)(v)=v² | correct |
| §2.218/§2.191 (Q) | fixture | uε=0, vε=m(u), Q≅ℤ; completion ℤ₂ for (2,u,v) and ℤ for (u,v) | correct |
| §2.200 Check 2 | N=ℚ₂ | Qₙ⊗ℚ₂=0; R̂⊗ℚ₂=R̂[1/2]≠0 | correct |
| §2.251 Checks | zero parameters; 𝔽₂ | R₀=A[v,y]/(vy²), R₁=A[x]; vy²=vy | correct |
| §2.262 Checks | F smooth / nodal | (4,4,1), genus 2; (5,4,2), genus 2; 5−1=4 | correct |
| §0.7 Checks | xy=t, base change t↦t² | S_sm=D(t), and its pullback D(t²)=D(t) | correct |

## Ownership and citations

These sections were read at their current copies:
- K3SurfacesAndSymplecticBoundedness and AbelianSchemesAndArithmeticModuliPartII, at the open-pull-request checkouts the brief lists.
- SchemeAndStackFoundations, StableReduction, EnhancedDerivedSheaves and ModularCurves, on main.
- AlgebraicModuliForArithmeticGeometry and MordellLawrenceVenkatesh, through `roadmaps show`.

All cited suppliers are earlier in the merge order. The new Lean names do not occur in any sibling `Suggested.lean`; the stably-reflexive predicates are owned here (no roadmap states them, by `roadmaps grep`).

## For the maintainer

- Layer 2 and Layer 4 are renumbered: Layer 2 now runs 2.0–2.265, and old 4.4–4.16 became 4.2–4.14. No other roadmap or package cites these section numbers; the design READMEs cite plan ids only.
- Plan `gaps`: `perfect-arbitrary-base` is removed, `stable-tricanonical-embedding` (StableReduction, Layer 8) is added, and `surface-low-genus-positivity` is narrowed. The new gap asks StableReduction, a roadmap on main, for very ampleness of ω³.
- JacobianChallengePartII's text says this roadmap builds M_g[ℓ]. The characteristic-zero construction is now AbelianSchemesAndArithmeticModuliPartII §B4.1, and this roadmap extends it integrally.
- The 12 Lean names are listed above. No previously exported name changed.
- No suspicious instruction was found in the reviews.
