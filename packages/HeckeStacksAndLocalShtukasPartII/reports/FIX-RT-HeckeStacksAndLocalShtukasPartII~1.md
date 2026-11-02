# Repair report: red-team round 1 (passes a and b)

Pass a (review `r1a`) has findings F01–F09; their sections come first. Pass b (review `r1b`) has findings F01–F07; their sections follow. Pass a's F01 and pass b's F01 make the same claim and share one repair; each has its own section.

## F01 (P2) — applied

Pass a, F01.

Old: `Suggested.lean` had no declarations, and its docstring said that every §§2.4–2.5 headline was unstatable. New: Layer 2 of `Suggested.lean` defines `residueBasis`, `semiModuleJump`, `ExtendedSemiModule` (every clause of vie06 Def. 3.1/3.4), `chartIndices` and `IsCyclic`. It states `chartIndices_bound` (vie06 Thm 5.3) and `exists_isCyclic_chartIndices_eq` (Lemma 3.3 with Prop. 5.2). The README §§2.1, 2.2 and 2.5, "How to read" and the Mathlib contract now name these declarations.

## F02 (P2) — applied

§2.4 changes from "for every occurring extended semi-module" to "for every extended semi-module for μ, with S_(A,φ) not assumed nonempty". It adds that U is nonempty and that every type therefore occurs, which is what vie06 line 266 says. §2.5 changes from "with X_μ(b) nonempty" to "X_μ(b)_0 ≠ ∅ iff Σμ_i=m, then dim=…". Nonemptiness comes from the cyclic chart, and the converse from the volume argument at vie06 line 82. The §3.8 proof order now uses these charts for the top strata. A new Check covers h=3, m=4.

## F03 (P2) — applied

§3.2 drops "with nonempty source". It now compares the components for every label α with κ̃(w)=κ̃(b)+(σ−1)α, unconditionally. This is an isomorphism when char k ∤ |π₁(G_ad)| and a universal homeomorphism in general (ghn15 Cor. 2.2.2 with ghnerr 0.0.1). Such an α exists iff κ_G(w)=κ_G(b). The section adds the transfer "X^G ≠ ∅ iff κ matches and X^ad ≠ ∅", with a route that ends in BunGAndNewtonStrata §1.11. §8.1 now uses this transfer and lists §3.2 in its Needs. New Checks cover SL₂ and G_m.

## F04 (P1) — applied

The `gap:finite-coxeter-basic-class` contract changes from "an irreducible extended affine root datum" to "a semisimple datum whose irreducible components are permuted transitively by σ, including the reduction to one component with σ^d". The change is in both the README and the plan's `gaps`. he14 Prop. 11.7 assumes only that G is simple (he14 line 1289), so the locator still holds. I added the Res_(E/F)PGL₂ datum as a §7.4 Check after checking it: J={s₀,s₀} is maximal proper σ-stable, W_J≅C₂×C₂, and c=(s₀,1).

## F05 (P2) — applied

"M-maximal" is now defined, following ham15 lines 168–188. Σ(μ)={λ : dom_G(λ)≤_ℤμ}, and Σ(μ)^(M-max) is the set of maximal elements of its M-dominant part under ≤_M. The definition is used in `gap:levi-intersection-dimension` in both the README and the plan, and in §3.4. A GL₂/T Check shows that all three elements are T-maximal, which gives d=1 at μ_M=0.

## F06 (P3) — applied

I added three computed Checks to §1.4, using split affine A₁ with w=s₀s₁s₀, v=s₁ and u=s₁s₀:
- w⇒v holds, with difference 1 against a required 1.
- v⇒w fails at the translation class.
- w⇒u holds, and u⇒w fails at b=1.

I recomputed the values: ℓη(w)=ℓη(v)=1 is forced by the §3.9 bound 2≤(3+ℓη)/2, and ℓη(u)=0 because t^(−α∨)=s·t^(α∨)·s.

## F07 (P3) — applied

The convention Check now says that the basic GL₂ witness detects the use of absolute ranks (it gives 1/2) but not the Newton sign, because 〈ρ,(1/2,1/2)〉=0. A second Check takes μ=ν=(1,0) with b=diag(ϖ,1): the correct sign gives 0 and the reversed sign gives 1.

## F08 (P3) — applied

The §0.5 Check changes from "infinite discrete set" to "ℤ^r, dimension 0; infinite for r>0, a single point for r=0".

## F09 (P2) — applied

The scope section now says that the κ-labelled ambient component comparisons of §3.2 and the P-alcove image comparisons of §7.5 are owned inputs. It excludes only the classification of components, the centralizer orbits and their comparison with integral specialization. "None is a dimension-theorem input" now reads "None of these excluded items…".

## F01 (P2) — applied differently

Pass b, F01. The repair is the one described in pass a's F01 section above. Why it was applied differently: pass b's `ncard_V_of_isCyclic` asserts equality for every cyclic extended semi-module, and that is false. Take (h,m)=(4,5) with type (0,2,0,3). The basis is {−2,0,3,5} and V={(3,4),(5,6),(5,8)}, so 2|V|=6<8, a strict inequality. I state equality only for the cyclic module of type μ, as an existence statement. This counterexample is now a README Check.

## F02 (P3) — applied

The SR.1.5 line changes from "iwahori-matsumoto, for the split presentation over ℤ[v,v⁻¹] with q=v²" to "the generic algebra over ℤ[v,v⁻¹] with q=v² stated with bernstein-presentation, and iwahori-matsumoto for v↦q^(1/2)". I checked this against SmoothRepresentationsOfLocalGroups SR.1.5 at its open head (show-lines 1534–1553).

## F03 (P3) — applied

The RG2.1 targets are now named: apartment, echelonnage-root-system, affine-roots-and-filtrations, algebraic-fundamental-group and kottwitz-homomorphism. All of them sit inside RG2.1.2–2.1.5 at the head of ReductiveGroupsPartII. echelonnage-root-system is added to the §0.3 Needs. §3.2 also cites kottwitz-homomorphism.

## F04 (P3) — applied

The §4.3 Needs line is split into one line for the cell/ADLV comparison and one for the generic-class dimension. The comparison line adds BunGAndNewtonStrata §1.10 straight-weyl-classification and gap:straight-finite-parabolic, since the straight representative is needed for mv20 Thm 3.10 and Cor. 3.11.

## F05 (P3) — applied

"minimal in its left W₀-coset" becomes "minimal in W₀·t^λy (its coset in W₀\W̃, he21's ^S W̃)" in both places (Conventions and §0.2), following he21 lines 167–168 and 199–200.

## F06 (P3) — applied

ham17 Corollary 2.7 is on PDF p. 6, not p. 5. The page-6 marker is at ham17 line 240 and the corollary at line 260. I fixed this in both `sources.toml` and the README references.

## F07 (P3) — applied

The he21 `cited_for` list now includes "§0.4" and "§0.5".

## Checks run

- **Elaboration:** `lake env lean packages/HeckeStacksAndLocalShtukasPartII/Suggested.lean` exits 0. The only output is the two expected `declaration uses 'sorry'` warnings, at lines 118 (`chartIndices_bound`) and 128 (`exists_isCyclic_chartIndices_eq`). There is no `set_option`, the only import is `import Mathlib`, and there is no sorry'd data.
- **`#check` comparison:** I put `#check @name` for all seven declarations in one scratch file. The elaborated types match the README statements, and every binder is explicit in its own signature (the only section `variable`s are `{m h μ}`, which the types mention). Nothing needed changing.
- **Non-vacuity:** in the same scratch file, a sorry-free proof shows that `ExtendedSemiModule 1 1 ![1]` is inhabited (A=ℕ, φ(a)=a+1). It is not added to the roadmap, because it would be padding.
- **Dependency check:** the output is `depcheck: 56 roadmaps, 646 edges, 0 problem(s)`, with no UPWARD, CYCLE or moved line.
- **Citations:** `roadmaps resolve` reports one lead, "RootSystemsPartII RS2.1: no roadmap … on main or in an open pull request". This was already there and is not new. RootSystemsPartII is an accepted board design package, and its gaps were settled earlier as maintainer ownership. All Lean names resolve.

## Adversarial pass (changed or added statements)

| Statement | Instances | Values | Result |
|---|---|---|---|
| `chartIndices_bound` | (2,1,(0,1)); (3,4,(0,0,4)); (5,4,(0,0,0,2,2)) noncyclic; every cyclic type for (m,h) ∈ {(4,3),(5,3),(7,3),(5,4),(7,4),(4,5),(7,5),(9,5),(11,4),(7,6)} | 0≤0; 6≤6; 8≤8 (V={(4,6),(4,7),(5,6),(5,7)}); no case with 2V>2d | holds |
| equality for every cyclic module (pass b F01's version) | (4,5) type (0,2,0,3) | 6 vs 8 | false, so not stated |
| `exists_…_eq` | every increasing μ in the sweep above | 2V=2d in every case | holds; ν≼μ holds by strict partial sums (coprimality) |
| degenerate inputs | m=0 and h=1 forces A=ℕ, φ(a)=a, V=∅: 0≤0. h=0 contradicts `hsum`/coprimality | — | hypotheses kept from the source |
| `ExtendedSemiModule` | ∅ (fails `nonempty`; has no h sequences); A=ℕ with φ≡0 (fails `φ_add_h`) | — | excluded |
| §2.5 nonemptiness | GL₂, m=1, μ=(0,1) and μ=(1,1) | nonempty with dim 0; Σ=2≠1 gives empty | holds |
| §3.2 transfer | SL₂ with b=1; G_m with b=ϖ; GL₂→PGL₂ | adjoint dim 2, transferred; no α solves 0=1, empty; 0 and 2 both go to 0 | holds |
| finite-coxeter gap | affine A₁; Res PGL₂ | s₁ vs s₀ (dependence on the input); (s₀,1) has length 1 | holds |
| Levi equality locus | GL₂/T, μ=(1,−1); M=G | d=1=〈ρ,μ〉; 0=0 | holds |
| §1.4 Checks | A₁ with w, v, u | 2−1≥1; 1−0≥1; X_u(1)=∅ | holds |
| Newton-sign Check | μ=ν=(1,0) | 0 vs 1 | discriminates |

## For the maintainer

- `Suggested.lean` now declares seven names under `TauCetiRoadmap.HeckeStacksAndLocalShtukasPartII`. No other roadmap cites them.
- Two supplier gap contracts became more general: `finite-coxeter-basic-class` (RootSystemsPartII) and `levi-intersection-dimension` (GeometricSatakeAndFusion).
- Ownership: the extended-semi-module combinatorics is owned here. `roadmaps grep` finds no other roadmap stating Viehmann's semi-modules.
- No sources were fetched and no `needs-references.toml` entry was needed. Everything used is already in the cache.
