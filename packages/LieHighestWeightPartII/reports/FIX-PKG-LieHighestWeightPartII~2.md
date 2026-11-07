# FIX-PKG-LieHighestWeightPartII~2

Repair round for the findings of `REV-PKG-LieHighestWeightPartII` on `packages/LieHighestWeightPartII`. Files changed: `README.md`, `Suggested.lean`, `sources.toml`. `metadata.toml` and `design/plan.json` are unchanged (no supplier gap was needed: every missing prerequisite has an owner at the pins or on main, or is now a target here).

## REV-PKG-LieHighestWeightPartII/F01 (P2) — applied

Verified at the pin: `TauCeti/RepresentationTheory/Spin/Polarization/TypeD/Representation.lean` line 96 defines `typeDSpinPlusLieRep` with domain `LieAlgebra.Orthogonal.typeD ι K`, and Mathlib's `typeDEquivSo'` (`Mathlib/Algebra/Lie/Classical.lean` line 290) with `soIndefiniteEquiv` (line 224) even give the isomorphism with `so` that the old docstring said was missing. Old: docstring listed half-spin separation as not statable → new: `exists_innerAut_of_finrank_weightFiltration_typeD` on `typeD ι K`, hypotheses equal filtrations on `ι ⊕ ι → K` and on `TauCeti.spinPlus Q P` (instances by `letI … compLieHom`, `Invertible 2` from `CharZero`), conclusion `Int`-conjugacy with no Jordan-type proviso. No finiteness instance is carried: `finrank` is already the true dimension since `W` has the finite basis `b` (the docstring and README §2.4 say so). README §2.4 states it on the split carrier, with a Check; the `so` docstring points to it; the Mathlib and Tau Ceti contracts list the carriers.

## REV-PKG-LieHighestWeightPartII/F02 (P2) — applied

Verified: `reductiveCommHopfAlgProperty`/`semisimpleCommHopfAlgProperty`, `IsSemisimplePoint` (quantified over `FGComoduleCat.{u,v,u}`), `Comodule.basePointsRepresentation`, `FiniteTypeCommHopfAlgCat` and `WithConv` points all exist at the pins. Old: docstring claimed the carriers were missing → new: three real-bodied definitions, `weightPattern` (finrank of the sum of eigenspaces at modulus `√q^i`), `IsGeometricPoint`, `IsPositiveRealPart` (acts by `|μ|` on each `μ`-eigenspace of `s` on every finite comodule), and the headline `exists_conj_positiveRealPart_of_weightPattern_eq` for `H` with `TauCeti.semisimpleCommHopfAlgProperty ℂ H`, semisimple `q`-geometric points with equal patterns, concluding `g * r * g⁻¹ = r'`. Existence of `r(s)` stays README §5.4. README Conventions and §§5.3–5.5 name the carriers and the Lean declarations; new Checks record why semisimplicity and `q`-geometricity are not removable.

## REV-PKG-LieHighestWeightPartII/F03 (P2) — applied

Verified: `TauCetiRoadmap/NilpotentOrbits/README.md` line 13 fixes `ℂ`; its Lean (`Suggested.lean` lines 120–133) has only Jacobson–Morozov and the transverse complement over `K`. Old: §0.3 and §3.1 imported `[L_0, e] = L_2` and the `{0, 1, 2}` bound from N2.2 → new: §0.3 proves `ad e : L_0 ↠ L_2` over `K` from the `V(n)` decomposition (with the general surjectivity/injectivity of `ρ(e) : M_j → M_(j+2)`, locator DG line 151), §1.3 carries it as an API bullet, §3.1 proves the label bound by the reviewer's argument (SOM line 373, DG line 87). N2.2 is cited as the `ℂ` comparison only, in Scope, the contract, and the `*Needs:*` lines of §0.3, §3.1 and the Layer dependencies.

## REV-PKG-LieHighestWeightPartII/F04 (P2) — applied differently

Verified: LieHighestWeight Layer 7 never names `so`, `sp` or `typeD`. But owners of the pieces exist: ReductiveGroups Layer 9A on main (lines 1405–1445) builds the folded matrix models `sp`, `typeB`, `typeD` with matrix root bases, Killing nondegeneracy and simplicity; Tau Ceti `TauCeti.TypeDStd.isKilling_typeD`/`isSimple_typeD` (`TauCeti/Algebra/Lie/Orthogonal/TypeD/Killing.lean` lines 286, 329, `n ≥ 4`); Mathlib `typeDEquivSo'`, `typeBEquivSo'`, `soIndefiniteEquiv`, `Matrix.reindexLieEquiv`; LieHighestWeight Layer 9 for `sl`. So instead of a gap, a new target §2.0 assembles them: the four classical families are Killing with the diagonal split Cartan and root systems `A_r, C_r, B_r, D_r`, hence an abstract simple algebra of classical type (rank ranges of `TauCeti.DynkinType.Valid`) is its matrix model, and the matrix groups are connected semisimple (Tau Ceti `SpecialOrthogonal`/`Symplectic` reductivity). Locators: new source KIR (Kirillov's notes, author page, certified), Appendix C lines 4760, 4835, 4888, 4958 and Theorem 6.33 line 2919. Four Checks (`so(3) ≅ sl₂`, `sp(2) = sl₂`, `so(4) ≅ sl₂ × sl₂`, `so(5) ≅ sp(4)`, `so(6) ≅ sl₄`, dimensions). §2.4 and §4.1 now cite §2.0; the old Layer 7 claim is gone from §2.4.

## REV-PKG-LieHighestWeightPartII/F05 (P3) — applied

Verified: RootSystems Layer 4 gives uniqueness up to `W` over `ℝ`; LieHighestWeight Layer 7 (lines 1005–1066) owns Chevalley restriction and that `Int(L)` fixes the `L`-invariant polynomials. §3.1 route now: `Int(L)`-conjugate elements of `H` agree on all `L`-invariant polynomials, whose restrictions are all `W`-invariants (Chevalley), and `W`-invariants separate `W`-orbits (product of translates of a separating polynomial); dominant representatives then coincide. The `ℝ`-form is applied to the real span of the coroots, which contains every neutral element. Contract and `*Needs:*` updated.

## REV-PKG-LieHighestWeightPartII/F06 (P3) — applied

Verified: LieHighestWeight Layer 9 (lines 1432–1460) is `gl_n`/`HasCentralRadical`. §3.1 now uses the direct argument: a Cartan subalgebra `H'` of `L_0 = ker(ad h)` (Mathlib `LieAlgebra.exists_isCartanSubalgebra_engel`, `Mathlib/Algebra/Lie/CartanExists.lean` line 374, `K` infinite) contains the central `h` and is self-normalising in `L` by the eigenspace argument, so it is a Cartan subalgebra of `L` containing `h`, conjugate to `H` by Layer 7. Layer 9 dropped from §3.1 and the Layer 3 dependencies; the contract's Layer 9 entry now describes what §2.0 uses (`sl_n`).

## REV-PKG-LieHighestWeightPartII/F07 (P3) — applied

Verified: LieHighestWeight Layer 8 (lines 1197–1226) is where the exceptional Serre algebras are shown Killing of their type. §3.4 route, `*Needs:*`, Layer 3 dependencies, the Scope bullet and the contract cite Layer 8; the Lean docstring now says the finiteness and Killing hypotheses hold by Layer 8, on which the proof depends, and are harmless; hypotheses unchanged.

## REV-PKG-LieHighestWeightPartII/F08 (P3) — applied

Verified: ReductiveGroups Layer 7 (lines 627–690) has Bruhat, the rank-one maps `n_α(a)` and positive-root generation of `U⁺`; Layer 6 (466–480) has central isogenies without the points statement. §0.2 now spells the route: Bruhat decomposition, `n_w` as products of `n_α(1)`, `T` generated by `α∨(c) = n_α(c) n_α(1)⁻¹` because for semisimple `G` the centre `⋂ ker α` is finite (Layer 6), so coroots span `Y(T) ⊗ ℚ` (Layer 7 root datum) and the torus homomorphism `∏ G_m → T` has closed connected image of full dimension; refers to the `SL₂` Check for the factorisation. The isogeny sentence is now a remark with the standard surjectivity fact stated. Contract wording for Layers 6 and 7 corrected.

## REV-PKG-LieHighestWeightPartII/F09 (P3) — applied differently

Verified: LieHighestWeight Layer 6 (lines 858–866) defines minuscule as "weights form one Weyl orbit", so "ω_r is minuscule" in that sense cannot be derived from `⟨ω_r, α∨⟩ ∈ {0, ±1}` without a further unowned implication. Instead §2.3 reads the weights off the pinned exterior model: `S⁺ = ⋀^even W` with the Cartan action `typeDSpinLieRep_apply_cartan_exteriorBasis` (sign vector of `S`), the character `formalCharacter_typeDSpinLieRep`, irreducibility `isIrreducible_typeDSpinPlusLieRep`, and the highest vector `isHighestWeightVector_typeDSpinPlusLieRep_exteriorBasis_univ_of_even` of weight `ω_r` (even `r ≥ 4`; `r = 2` by hand in `so(4)`), so `S⁺ ≅ L(ω_r)` by Layer 4 with the even sign vectors as weights. The reviewer's computation `⟨ω_r, (±ε_i ± ε_j)∨⟩ = ½(±1 ± 1)` is a new Check, with the non-example `2ω_r`. A second new Check: the full spinor module `S⁺ ⊕ S⁻` does not separate the very even classes (top index `A` for both).

## REV-PKG-LieHighestWeightPartII/F10 (P3) — applied differently

Verified: NoncompactQuantumSymmetry (open) README line 776 states `Ad(G)=Int(𝔤)=Aut(𝔤)₀` in its Layer 3; TwistedAutomorphicDescents (open) cites this roadmap's design names `N0`/`N2` with gaps `rational-nilpotent-orbits` and `classical-dominance`. Scope now names NoncompactQuantumSymmetry Layer 3 as the owner of the analytic statement (kept-variant note) and says that nilpotent orbits as varieties, their closure order and the dominance order of partitions are NilpotentOrbits N0.3, N2.4, N4. Differently from the suggestion: rational forms are not attributed to NilpotentOrbits, whose README treats no rational orbits (grep "rational" finds only unrelated uses); the Scope says neither roadmap treats them. The depcheck reports no edge to NoncompactQuantumSymmetry from the Scope mention.

## REV-PKG-LieHighestWeightPartII/F11 (P3) — applied

Module docstring: one sentence that the half-integrality test (CH Lemma 6.30, README §5.2) is a corollary of LieHighestWeight Layer 3 and stays a README target.

## REV-PKG-LieHighestWeightPartII/F12 (P3) — applied

`sources.toml`, entry `SOM`: `licence_class = "author-page"` → `"institutional"`; nothing else in the entry changed.

## Checks

- **Elaboration.** `lake env lean` on `packages/LieHighestWeightPartII/Suggested.lean` from the content checkout: exactly eight `declaration uses 'sorry'` warnings (lines 85, 102, 116, 133, 155, 185, 205, 252), exit code 0. Imports: `public import Mathlib` plus five existing `TauCeti.*` modules (object files present; no build needed). No `set_option`, no `lemma`, no sorry'd data.
- **Signatures.** A scratch copy with `#check @name` for all 14 declarations elaborated (exit 0); the output is kept in the job scratch as `signatures-new.md`. Compared with the README: every statement carries `[IsAlgClosed K] [CharZero K]` where the README says `K`; the `typeD` theorem carries `P`, `b`, `hline` and both filtration hypotheses in its own signature; the Layer 5 theorem carries `1 < q`, the semisimplicity property, both `IsSemisimplePoint`, both `IsGeometricPoint`, the pattern equality and both positive-real-part hypotheses. No section binder was lost (the file uses no section `variable`s).
- **Dependency check** (verbatim): `depcheck: 232 roadmaps, 2199 edges, 0 problem(s)`. No UPWARD, CYCLE or `moved:` line.
- **Resolver** (`roadmaps resolve`): "Cross-roadmap citations found nowhere: None. Lean names found nowhere: None." Tau Ceti names were checked by hand at the pin (namespaces `TauCeti.SpinPolarizationData`, `TauCeti.TypeDStd`, `TauCeti.SpecialOrthogonal`, `TauCeti.Symplectic`, `TauCeti.HopfAlgebra`, `TauCeti.Comodule`, `TauCeti` confirmed by `grep ^namespace` in each cited file).
- **README ↔ Lean.** Each of the 14 Lean names appears in the README; every own backticked name in the README is declared; the remaining backticked tokens are mathematical notation (`L_0`, `h_I`, `C_T`, …). All Mathlib names are fully qualified.
- **Sources.** No `needs-references.toml` was written: every cited text was read. New key `KIR` fetched through the service (author page, certified), with `authors`, `title`, `year`, locator and a `version_note` added by hand.
- **Style.** No LaTeX delimiters, process words, pull-request numbers or machine paths in README, Lean or manifest. New section `2.0` inserted before `2.1` so that no existing section number changed.

## Adversarial pass on new and changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `exists_innerAut_of_finrank_weightFiltration_typeD` | `ι = ∅`; `ι = Fin 1`; `ι = Fin 2`, triples `(t,0)`, `(0,t)`, diagonal; `Fin 4`, `(4,4)`; full spinor instead of `S⁺` | `typeD ∅ = 0`, `typeD (Fin 1)` abelian ⇒ only zero triple, `φ = 1`; `S⁺` of `so(4)` is `V(1)` of one factor: `(t,0)` jumps at `±1`, `(0,t)` trivial, separated while `V(1)⊠V(1)` has weights `±1` twice for both; `(4,4)`: `a = (3,3,1,1)`, top indices `4`, `3`; full spinor: top index `A = 4` for both (odd vector `½(1,1,1,−1)` lies in `S⁻`) | holds; wrong model excluded by using one parity summand | Check added in §2.3 and §2.4 |
| `IsSl2TripleOrZero` on `typeD` with `hspin` finrank | `S⁺` infinite-dimensional? | `W` has finite basis `b`, `dim S⁺ = 2^(r−1)` (`r ≥ 1`), `1` for `r = 0` | finrank is the true dimension | none |
| `weightPattern q A i` | zero space; identity on `V`; `diag(√q, 1/√q)`; Jordan block `J₂(√q)`; `q = 1` | `0`; `dim V` at `i = 0` only (since `q > 1`); `1` at `±1`; `J₂`: eigenspace dimension `1` at `i = 1`, generalized would give `2`; `q = 1`: every `i` gives modulus `1` | holds at semisimple points; non-semisimple undercount recorded | Check added §5.3 |
| `IsGeometricPoint q s` | `diag(2,1/2)` with `q = 4`, `q = 3`; `diag(i,−i)` | `2 = √4^1` yes; `2 ≠ √3^i` for all `i`; `|i| = 1 = √q^0` yes | matches the Conventions | Check added §5.3 |
| `IsPositiveRealPart s r` | `s = diag(z, z⁻¹)`, `r = diag(|z|, |z|⁻¹)`; `r = s` with `z = i`; unipotent `s`, `r = s` and `r = 1` | `|z|` on the `z`-eigenline ✓; `r = s`: acts by `i ≠ |i| = 1` ✗; unipotent: `1`-eigenspace = fixed vectors, both act as `1`, predicate satisfied by two non-conjugate points | determines `r` only for semisimple `s` | Check added §5.4; semisimplicity hypotheses kept |
| `exists_conj_positiveRealPart_of_weightPattern_eq` | `H = ℂ`; `SL₂` with `diag(2,1/2)` vs `diag(5,1/5)` at `q = 3`; unipotent `s` vs `1`; `diag(q^½ e^{iθ}, …)` | trivial group: `g = 1`; patterns all zero except multiplicity of `1` (equal) but `r = diag(2,1/2)`, `r' = diag(5,1/5)` not conjugate ⇒ geometric hypothesis needed; unipotent: patterns equal, `r = s` not conjugate to `1` ⇒ semisimplicity needed; `θ`-family: one pattern, `r = diag(q^½, q^−½)` | holds with all hypotheses; each removal refuted | Checks added §5.3, §5.5 |
| §2.0 classical types | `r = 1, 2, 3, 4`; `so(2)`, `so(1)`, `so(0)` | `so(3)`: 3-dim, roots `±ε₁`; `sp(2)`: `±2ε₁`; `so(4)`: roots `±ε₁±ε₂` = two orthogonal `A_1`; `so(5)`/`sp(4)`: 8 roots, dim 10; `so(6)`/`sl₄`: 12 roots, dim 15; `r = 4`: `28, 36, 36 = 4 + 24, 4 + 32, 4 + 32`; `so(2)` abelian, lower zero | holds; `Valid` ranges `B ≥ 2`, `C ≥ 3`, `D ≥ 4` confirmed at the pin | §2.0 added |
| §0.3 `ad e : L_0 ↠ L_2`; `ρ(e) : M_j → M_(j+2)` | zero triple; `V(0)`, `V(1)`, `V(2)`; `j = −1, 0, 1` | zero: both sides `0`; `V(1)`: `M_0 = 0`, `M_2 = 0`; `V(2)`: `e v_0 = c v_2`, `c ≠ 0`; `j = −1`: `e : M_(−1) → M_1` bijective on `V(1)`; `j = 1` on `V(1)`: `M_1 → M_3 = 0` surjective | surjective for `j ≥ −1`, injective for `j ≤ −1` | stated §0.3, bullet §1.3 |
| §3.1 label bound | `sl₂`, `h = H`, `α(h) = 2`; `sl₃` regular `(2,2)`; hypothetical `α(h) = 3` | `β = α` branch gives `2`; `(2,2)` profile fine; `x_{−α}` of weight `−3` killed by `e` contradicts weight `≥ 0` of `ker e` | holds | §3.1 rewritten |
| §3.1 uniqueness via invariants | `W = S₂` on `H = K` of `sl₂`, `h = H`, `−H`; two distinct orbits `{1,−1}`, `{2,−2}` | invariant `x²` takes `1` vs `4`, separates; dominant representatives `H` and `2H` differ | holds | route added |
| §0.2 generation | `SL₂`; `PGL₂`; abelian `L` | `diag(c,c⁻¹) = w(c)w(1)⁻¹`, `w(c) = x(c)y(−c⁻¹)x(c)`; `PGL₂`: coroot `α∨ : c ↦ diag(c,1)` generates the torus `G_m`; abelian `L` excluded (not semisimple: centre infinite) | holds | route spelled |
| §2.3 weights of `S⁺` from the exterior model | `r = 2`, `S = ∅, {1,2}`; `r = 4`, `S = {1,2,3,4}` | weights `½(−1,−1)`, `½(1,1)` (even signs); top vector weight `½(1,1,1,1) = ω₄` | agrees with `L(ω_r)` weights | §2.3 rewritten |
| minuscule Check | all roots of `D_r`; `2ω_r` | `½(±1±1) ∈ {−1,0,1}`; `⟨2ω_r,(ε₁+ε₂)∨⟩ = 2`, weight `(0,0,1,…,1)` not in `W(1,…,1)` | holds | Check added |

## Worker-reported problem: module header

- Problem: `lake build` warned that `Suggested.lean` imports `Mathlib` without `module`. Change: the file now starts with `module`, then `public import Mathlib` and the five `public import TauCeti.*` lines, and `@[expose] public section` precedes `universe u v` and the namespace. Nothing else in the file changed (declarations shifted by four lines). Re-elaborated with `lake env lean`: exit code 0, the same eight `sorry` warnings and no other output. README, manifest and plan untouched.

## Notes for the maintainer

- New Lean names: `exists_innerAut_of_finrank_weightFiltration_typeD`, `weightPattern`, `IsGeometricPoint`, `IsPositiveRealPart`, `exists_conj_positiveRealPart_of_weightPattern_eq`. No name was removed or renamed. New README section §2.0; no other section number changed.
- The old module docstring's claim that the pin has no Lie algebra isomorphism between `typeD` and `so` was false (`typeDEquivSo'` with `soIndefiniteEquiv`); the README's Mathlib contract now records both.
- TwistedAutomorphicDescents (open) still cites this roadmap's design-stage names `N0`/`N2` and declares gaps `rational-nilpotent-orbits` and `classical-dominance` against it; the Scope now says the closure/dominance order is NilpotentOrbits N2.4/N4 and that rational forms are treated by neither roadmap, so that consumer should repoint or re-declare its gaps. Not actionable here.
- CH Proposition 10.2 is stated for the complex dual group, which is connected reductive; the README keeps the earlier round's "connected semisimple" and the Lean uses `TauCeti.semisimpleCommHopfAlgProperty`. The theorem is true for connected reductive groups by the same route (ReductiveGroupsPartIII RG3.0 is for connected reductive groups); widening was not a finding and was not done.
- Ownership against open pull requests whose files the brief does not provide was not checked beyond the `roadmaps grep` index; the classical-type target §2.0 was searched for by object (`Orthogonal.so`, `Symplectic.sp`, `typeD` in READMEs): ReductiveGroups Layer 9A and SpinRepresentations are the only owners of pieces, both cited.
- New source `KIR` (Kirillov's lecture notes, author page). `SOM` licence class is now `institutional`.
