# Review of OcneanuRigidity (pull request #2316 at b188ea1)

**Verdict:** needs changes

## R01 (P2) — The comparison θ points the wrong way for its trace factor

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:238–241: "its mate gives `ᘁT ≅ Tᘁ`. `θ : coinduction F ≅ induction F` is `(doubleDualTrace a_T)⁻¹ •` the image of that mate"; Check at 266–267.

**Claim:** The left mate of `a_T` goes `Tᘁ ⟶ ᘁT` and scales with `a_T`. So the formula describes `θ.inv`. Read as `θ.hom : ᘁT ⟶ Tᘁ`, the map depends on the choice of `a_T`, and 1.7 fails.

**Witness:** Take Vec, `T = k`, `a = 3·can`. The left mate `Tᘁ ⟶ ᘁT` is `3`, so its inverse `ᘁT ⟶ Tᘁ` is `1/3`. Then `θ.hom = (1/3)(1/3) = 1/9`, but `1` for `a = 𝟙`. The 1.7 composite becomes `9`, not `normGlobalDim Vec = 1`.

**Repair:** In 1.6, replace the formula with: "with left mate `ᘁa_T.hom : Tᘁ ⟶ ᘁT`, `θ.inv` is `(doubleDualTrace a_T.hom)⁻¹ • F.map (ᘁa_T.hom)` on the `T`-summand, so `θ.hom` is `doubleDualTrace a_T.hom • F.map (ᘁa_T.hom)⁻¹`". Change the Check to: "Vec, `a = 3·can`: mate `3`, trace `3`, `θ.inv = 1`; putting `(doubleDualTrace)⁻¹` on `θ.hom` instead gives `1/9`."

## R02 (P2) — Layer 6 drops the nontriviality hypothesis of its supplier

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:435, 456–470: "Fix … `P : FSymbols R N`"; "extracting from `Model Q` returns `Q`"; "equivalent … if and only if `Q' = h • Q.reindex τ`".

**Claim:** 6.3 and 6.4 are stated over every commutative ring `R`. Over the zero ring both are false. PresentationsOfMonoidalCategories 2.2, 2.3 and 3.2 (head of #2308) assume `[Nontrivial R]` for exactly these statements.

**Witness:** Take `R = 0`, `ι = {u}` and `Nm = δ` on `κ = Fin 1` and `κ' = Fin 2`. Both models are trivial, hence equivalent by a module functor, but no `τ : Fin 1 ≃ Fin 2` exists. Extraction gives `finrank₀ = 0 ≠ 1`.

**Repair:** Change line 435 to: "Fix fusion rules `N` on `ι` with unit `u`, a commutative ring `R`, `P : FSymbols R N` and a `Fintype` index `κ`. 6.3 and 6.4 assume `[Nontrivial R]`, as PresentationsOfMonoidalCategories 2.2 and 3.2 do; 6.5–6.8 assume that `P` satisfies the rigidity criterion of its Layer 5, since they use `Xᘁ`." Add the `R = 0` instance as a Check of 6.4.

## R03 (P2) — A statable finiteness headline is absent from Suggested.lean

**Location:** TauCetiRoadmap/OcneanuRigidity/Suggested.lean:22–24: "`FSymbols`, `RSymbols`, `Model P` … about which formal rigidity and the finiteness of fusion and module categories are stated."

**Claim:** The finiteness of fusion categories with given fusion rules (README 8.1, in the characteristic-zero form of 9.1) needs no `FSymbols`. It is statable on native carriers, just as `finite_braidedCategory` is.

**Witness:** A scratch copy of the statement below, using `fusionCoeff` (GrothendieckRing.lean:240), elaborates at the pin under `lake env lean` with only a `sorry` warning. A module-category analogue with `MonoidalLeftAction` and `Functor.LeftLinear` also elaborates.

**Repair:** Add this theorem and remove "and the finiteness of fusion … categories" from the docstring:

```lean
/-- **Finitely many fusion categories with given fusion rules** (Layer 8.1, characteristic-zero
form of 9.1; Etingof–Nikshych–Ostrik, *On fusion categories*, Theorem 2.28). -/
theorem finite_fusionCategories_of_fusionRules (k : Type w) [Field k] [IsAlgClosed k]
    [CharZero k] {ι : Type} (N : ι → ι → ι → ℕ) {I : Type*} (C : I → Type u)
    [∀ i, Category.{v} (C i)] [∀ i, MonoidalCategory (C i)] [∀ i, RigidCategory (C i)]
    [∀ i, Abelian (C i)] [∀ i, MonoidalPreadditive (C i)] [∀ i, Linear k (C i)]
    [∀ i, MonoidalLinear k (C i)] [∀ i, IsFiniteSemisimpleCategory (C i)]
    [∀ i (X Y : C i), FiniteDimensional k (X ⟶ Y)] [∀ i, Simple (𝟙_ (C i))]
    [∀ i, Fintype (SimpleClasses (C i))] (e : ∀ i, SimpleClasses (C i) ≃ ι)
    (he : ∀ i (S T U : SimpleClasses (C i)), fusionCoeff k S T U = N (e i S) (e i T) (e i U)) :
    ∃ s : Finset I, ∀ i, ∃ j ∈ s, ∃ E : C i ≌ C j,
      Nonempty E.functor.Monoidal ∧ ∃ _ : E.functor.Additive, E.functor.Linear k := sorry
```

Add `import TauCeti.CategoryTheory.Semisimple.GrothendieckRing`. Then either state 8.3 and 8.4 in the same form, or name in the docstring the carrier each one lacks.

## R04 (P3) — Gate failure: TeX syntax outside code spans

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:84–86 (a code span that runs across a line break) and 279–280 ("`Comonad.resolution G X : SimplicialObject.Augmented` / `𝒵`").

**Claim:** The broken code spans leave `_{`, `^{` and `∑_{` outside code. The gate fails `tex`.

**Witness:** gate.md reports `tex (11)` at lines 85, 86 and 280, and the overall result is `FAIL`.

**Repair:** Put the differential in an indented code block on its own lines:

        δf_{X₀…Xₙ} = (F X₀ ◁ f_{X₁…Xₙ}) ∘ (β^X_{X₀} ▷ …) + ∑_{i=1}^{n} (−1)^i f_{X₀,…,X_{i−1}⊗X_i,…,Xₙ}
                     + (−1)^{n+1} (… ◁ β^Y_{Xₙ}) ∘ (f_{X₀…X_{n−1}} ▷ F Xₙ)

Join lines 279–280 so that `Comonad.resolution G X : SimplicialObject.Augmented 𝒵` is one code span.

## R05 (P3) — Gate failure: no target subsections; layers lack Examples and Dependencies

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:3 "## Summary"; 166 "**0.1 Tensor powers of a functor.**", and every other `**k.n …**` paragraph; the "**Checks.**" blocks at the end of each layer.

**Claim:** The README has no `### k.n` subsections, no `### Examples` and no `### Dependencies`, and opens with a heading instead of a `**Summary.**` paragraph. Round 1's R14 is only partly repaired.

**Witness:** gate.md: "line 164: layered README states no targets". The README has 3 `###` headings, all under supplier contracts, and 0 `### Examples` or `### Dependencies` headings.

**Repair:** Turn each `**k.n Title.**` paragraph into a `### k.n Title` heading, and move its Check bullets under it as `**Checks.**`. End each layer with `### Examples` (the worked instances) and `### Dependencies` (the union of the layer's *Needs:* lines). Replace `## Summary` with a `**Summary.**` paragraph.

## R06 (P3) — Suggested.lean carries a stand-in definition and a catalogue docstring

**Location:** TauCetiRoadmap/OcneanuRigidity/Suggested.lean:36–54 (`RelHalfBraidingData`); 8–12: "suggest Lean forms for particular milestones, so that contributors and reviewers converge on names".

**Claim:** No headline uses `RelHalfBraidingData`. It drops the tensorator law of README 1.1, takes a plain functor `F : C ⥤ D` (no monoidal structure on `F`), and its name is not in the README. The docstring describes an API catalogue instead of an acceptance test.

**Witness:** `#check @RelHalfBraidingData` at the pin gives `{C : Type u_2} → [Category C] → {D : Type u_2} → [Category D] → [MonoidalCategory D] → C ⥤ D → D → Type`. `RelHalfBraidingData` occurs 0 times in README.md.

**Repair:** Delete lines 36–54. Replace lines 8–12 with: "The roadmap is `README.md`; this file is not the roadmap. It states the roadmap's headline theorems against the pinned Mathlib and Tau Ceti, each with `sorry`."

## R07 (P3) — Characteristic-zero sources cited for any-characteristic statements

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:350–351 (4.1), 401 (5.5), 476 (6.6), 569 (8.1), 583 (8.4), 591 (8.6), 13–14 ("finitely many indecomposable ones ([ENO] Corollary 2.35)"), 407 (5.6).

**Claim:** These targets hold over any algebraically closed field when the global dimension is nonzero. The cited results are stated in characteristic zero. EGNO 9.1.8 covers categories and functors only, not braidings, module categories or characteristic p. ENO 2.35 does not state the count of indecomposables. ENO Remark 2.33 states finiteness of braidings, not their formal rigidity.

**Witness:** EGNO line 13848 (Chapter 9 assumes characteristic 0); GHS line 959 (§3.5, characteristic 0); ENO line 1967 (§9.1 extends Theorems 2.27, 2.28, 2.31 and Corollary 2.35 to nondegenerate categories); ENO line 437; ENO line 423.

**Repair:** Add "[ENO] §9.1, p. 43; [GHS] Remark 3.19, p. 26; [EGNO] §9.16, p. 320" to 4.1, 5.5, 6.6, 8.1 and 8.4. Make 8.6 read "([EGNO] Corollary 9.1.8, p. 277, for categories in characteristic zero; braidings, module categories and characteristic `p` follow by 7.5)". Make the Summary bullet read "([ENO] Corollary 2.35; [EGNO] Corollary 9.1.6(ii), p. 277)". For 5.6, write "finiteness: [ENO] Remark 2.33; the formal statement follows from 4.2". Cite [GHS] Corollary 3.12 (p. 18) at 3.2 and [GHS] Lemma 2.5 (p. 7) at 2.2.

## R08 (P3) — Supplier names that do not exist where they are cited

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:143–144, 152, 458 ("`IsSplitSimpleBasis`"), 358 and 397 ("`Center.ofBraided Y`"), 246 and 377 ("`squaredNorm S`").

**Claim:** `TauCeti.isConstructible_orbit`, `TauCeti.isLocallyClosed_orbit`, `TauCeti.IsConstructible.dense_interior` and `IsSplitSimpleBasis` do not exist under those names. `Center.ofBraided` is a functor, not an object map. PivotalSpherical 6.1 defines `squaredNorm a` for `a : X ≅ Xᘁᘁ`, not for an object.

**Witness:** At the pin: `TauCeti.SchemeAction.isConstructible_orbit` (GroupAction/LocallyClosed.lean:55) and `Topology.IsConstructible.dense_interior` (Constructible/Basic.lean:37). `IsSplitSimpleBasis` has 0 hits anywhere; #2311 3.3 defines `IsSplitSimpleFamily`. Mathlib: `ofBraided : C ⥤ Center C` (Monoidal/Center.lean:382).

**Repair:** Rename these to `TauCeti.SchemeAction.isConstructible_orbit`, `TauCeti.SchemeAction.isLocallyClosed_orbit`, `Topology.IsConstructible.dense_interior` and `IsSplitSimpleFamily R T` (PivotalSpherical 3.3). Write `(Center.ofBraided C).obj Y`, and `squaredNorm a_S` for some `a_S : S ≅ Sᘁᘁ`.

## R09 (P3) — Sign-character Checks fail in characteristic 2

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:106–108 ("`δ⁰(1)` at the generator is `1 − (−1) = 2`") and 259–261 ("`Hom` between the two is `0`, since an intertwiner satisfies `f = −f`").

**Claim:** Layer 1 allows any characteristic, and `Vec(C₂)` is fusion in characteristic 2. There the sign and trivial half-braidings coincide. The 1.1 Check also calls `(−1)(−1)` the character of "their" tensor product, but trivial ⊗ sign has character `−1`.

**Witness:** Over the algebraic closure of `𝔽₂`, `−1 = 1`. So `δ⁰(1) = 1 − 1 = 0`, and `Hom` between the two objects is `k`, not `0`.

**Repair:** Begin both Checks with "Over `ℂ`". In 1.1, write "the sign object tensored with itself has character `(−1)(−1) = +1`; tensored with the trivial one, `−1`".

## R10 (P3) — Definitions have fewer than three discriminating Checks

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:303–307 (2.1, 2.4), 341 (3.1), 199–200 (0.4), 497 (6.2), 557–558 (7.2).

**Claim:** Each of these definitions has one Check. The Checks for 2.1, 2.4 and 3.1 use `G = 𝟭` or the trivial group, where every face is `𝟙` and every sign cancels, so a misplaced face or a wrong sign would still pass. Round 1's R12 is only partly repaired.

**Witness:** With the free–forgetful comonad `k[C₂] ⊗ −` on `Rep C₂`, `d₀(g ⊗ g) = e` and `d₁(g ⊗ g) = g`. A resolution with the two positions swapped passes the `G = 𝟭` Check.

**Repair:** Give each definition three Checks. For 2.1, add the `k[C₂] ⊗ −` faces above, with `dim G^{n+1} k = 2^{n+1}`. For 3.1, add: "for `C₃` with `γ(1,2) = 1`, `δγ(1,1,1) = 1` and `δγ(1,2,1) = −1`; a differential with the opposite sign gives `−1` and `+1`." Add similar computed Checks for 0.4, 2.4, 6.2 and 7.2.

## R11 (P3) — Downstream consumers lists a supplier

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:622–624: "CategoricalOperatorAlgebras CA6: the comparison 1.3"; "PresentationsOfMonoidalCategories-based computations".

**Claim:** CA6 supplies 1.3 and does not consume it, so this entry reverses the supply direction. The first bullet names no roadmap, and PresentationsOfMonoidalCategories is a supplier of this roadmap.

**Witness:** README.md:221–222: "*Needs:* 1.1; CategoricalOperatorAlgebras CA6". "OcneanuRigidity" occurs 0 times in CategoricalOperatorAlgebras/README.md on main.

**Repair:** Delete both bullets. List only roadmaps that cite this one by section; if there are none, the section has no items.

## R12 (P3) — Needs lines omit inputs or list unused ones

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:577 (8.2 "*Needs:* 5.6, 7.4"), 586 (8.4 "*Needs:* 6.3, 6.4, 6.6, 6.7, 7.3"), 399 (5.4 "*Needs:* 3.1, 4.2").

**Claim:** 8.2 and 8.4 apply 7.4 and 7.3 to the rings and gauge schemes of 7.1 and 7.2, which they do not list. 5.4 lists the vanishing theorem 4.2, which its dictionary does not use, and omits `idEquiv` (1.2), which its coefficient object does use.

**Witness:** 8.1 (line 573) lists 7.2 for the same use of 7.3. In 5.4, the coefficient object is `idEquiv.inverse (Center.ofBraided …)`.

**Repair:** Change these to "8.2 *Needs:* 5.6, 7.1, 7.4." "8.4 *Needs:* 6.3, 6.4, 6.6, 6.7, 7.1, 7.2, 7.3." "5.4 *Needs:* 1.2, 3.1."

## R13 (P3) — The description mentions a Radford layer the head does not have

**Location:** scratch/pull-request.md, the description's last paragraph: "I chose the scope and the inclusion of the Radford layer; Claude … read the sources (ENO 2005, ENO 2004, EGNO, GHS)".

**Claim:** The head has no Radford layer, and it does not cite ENO 2004. The prose also omits two suppliers: PresentationsOfMonoidalCategories and CategoricalOperatorAlgebras CA6.

**Witness:** README.md:49 lists the Radford isomorphism as owned by PivotalSpherical (6.4 to 6.8), and "Radford" occurs nowhere else. README.md:151–156 lists both suppliers.

**Repair:** Change the sentence to: "I chose the scope; the Radford isomorphism and the pivotalization are PivotalSpherical 6.7–6.8 (#2311). Claude … read the sources (ENO 2005, EGNO, GHS)". Add to the route paragraph: "It also consumes PresentationsOfMonoidalCategories Layers 0–6 and CategoricalOperatorAlgebras CA6 (for the comparison 1.3)."

## Verified sound

| Statement | Instance | Computed left | Computed right | Result |
| --- | --- | --- | --- | --- |
| Round-1 R01 (gauge sign), 5.2 | `C₃`, `γ(1,2)=1`, `ℂ[ε]`, gauge `F′ = G_L F G_R⁻¹` (#2308) | `F′/F = 1 − ε δγ` on all 27 triples | `θ = −δγ`, as README 5.2 now states | repaired |
| Round-1 R02 (no Lean file) | Suggested.lean present | elaborates; only a `sorry` warning | 2 declarations | repaired; R03, R06 |
| Round-1 R03 (resolution supplier) | 2.1 `Comonad.resolution` | owned here | Mathlib supplies only `ExtraDegeneracy`, `homotopyEquiv` (ExtraDegeneracy.lean:412) | repaired |
| Round-1 R04 (false pinned APIs) | `endAlgEquivOfSimple`, induction, `C_k` | Schur.lean; PivotalSpherical 11.1; SchemeAndStackFoundations §4.2 (main :6347) | all resolve | repaired; new drift R08 |
| Round-1 R05 (char 2 counts) | 8.1, 8.2 Checks over `𝔽̄₂` | one class, not separable; one braiding | README 599–603 | repaired |
| Round-1 R06 (two owners of pivot-free dims) | `squaredNorm`, `normGlobalDim`, `I` | PivotalSpherical 6.1, 6.2, 6.9, 11.1, 11.2 at #2311 | cited, not restated | repaired |
| Round-1 R07 (CA6 direction) | 1.3 | CA6 owns the unitary centre; 1.3 *Needs* CA6 | Downstream still lists CA6 | repaired in body; R11 |
| Round-1 R08–R11 | `mapExactPairing`, self-bidual, Deligne, `κ=∅` | cited at pin; Deligne moved to #2311 6.4; 6.8 says "nonzero" | — | repaired |
| Round-1 R12–R14 | Checks, locators, shape | Checks per layer; 22 locators added; *Needs* per target | still < 3 Checks; char-0 locators; no `###` | partly; R05, R07, R10 |
| Round-1 R15 (PR text) | reuse sentence | rewritten; matches head | Radford sentence stale | partly; R13 |
| DY differential, GHS (3.11) | `F=𝟭 Vec`, scalar cochains | `δⁿ = Σ_{i=0}^{n+1}(−1)^i`: 0, 1, 0 | Check: `δ⁰=0, δ¹=id, δ²=0` | agrees |
| `δ⁰` with sign coefficients | `Vec(C₂)` over ℂ / over `𝔽̄₂` | `1−(−1)=2` / `1−1=0` | Check says 2, field unstated | R09 |
| Comonad cochains | `G=𝟭`, `X=Y=k` | `H⁰=k`, `H¹=H²=0` | differentials 0, 1, 0 | agrees |
| 0.2 linearity control | Frobenius twist `Φ(λ)=λ^p` vs `𝟭` | naturality `λc = λ^p c` ⇒ `c=0` | product of components is `k` | Check sound |
| 0.3 tensor order | `Vec²`, swap, `Ψ(V,W)=(V,0)` | `Ψ⋙Φ (k,0) = (0,k)` | `Φ⋙Ψ (k,0) = (0,0)` | agrees |
| 1.4 right adjoint | `F: Vec(C₂)→Vec` forgetful | `RelCenter F ≃ Rep C₂`; coinduced `dim 2` | `⨁_g F δ_g ⊗ k ⊗ F δ_{g⁻¹}`: dim 2 | agrees |
| 1.4 degenerate `F` | unit inclusion `Vec → Vec(C₂)` | `RelCenter F ≃ D` | induction `V = V` | agrees |
| 1.6 θ | Vec, `a = 3·can` | left mate `Tᘁ→ᘁT` = 3 | stated `θ.hom` = 1/9 vs 1 at `a=𝟙` | R01 |
| 1.7 averaging, EGNO Lemma 9.3.1 / Thm 9.3.2 | `FDRep ℂ S₃`, `Z=𝟙`; Vec with literal θ | `1+1+4 = 6`; Vec: 9 | `|S₃| = 6`; `normGlobalDim Vec = 1` | agrees after R01 |
| 1.8, GHS Def 2.4 | `Vec(Q₈)`, char 3; `Vec(C₂)`, char 2 | `8≡2`, `2·2≡1`; `G𝟙 = k[C₂]`, `1+g ↦ 0` | section / no section | agrees |
| 2.5, GHS Prop 2.12 and Thm 5.1 | Sweedler `B₁`, `n=2` | `binom(2,2) = 1` | Check `dim H² = 1` | agrees |
| 3.3, GHS Remark 3.7 | `Vec(C₃)`, char 3, `θ(gⁱ)=i` | `δθ(g,g) = 1−2+1 = 0` | `θ(g³) = 3 = 0` | agrees |
| 3.3 inner derivations | action of `Vec(C₂)` on `Vec²`, `f=(1,0)` | `swap∘f − f∘swap = (−1,1)` | `≠ 0` | agrees |
| 3.4, GHS Thm 3.11 | `Vec(C₂)`, trivial coefficients | DY: `2ⁿ` = 1, 2, 4 | `Hom(Gⁿ⁺¹𝟙, 𝟙)`: 1, 2, 4 | agrees |
| 4.1 headline, ENO 2.27, GHS 3.18 | `Vec(S₃)`/ℂ; `Vec(C₃)`/`𝔽̄₂` | `H¹=H²=0`; `Hom(C₃,𝔽̄₂)=0` | separable (dim 6; 3≠0 in 𝔽₂) | agrees; R07 |
| 4.3, EGNO Ex. 7.22.5 (p. 184) | `Vec(ℤ/p)`, char `p` | `H¹ = Hom(ℤ/p,k) = k` | `normGlobalDim = p = 0` | agrees |
| 5.1 | Fibonacci `s_τ=φ⁻¹`; Yang–Lee `−φ` | `φ²`, `(5+√5)/2` | `φ⁻²`, `(5−√5)/2` | agrees |
| 5.5, ENO 2.28 / EGNO 9.1.4 | `ℤ/2`, `k[ε]`, `F=1+cε` | pentagon: `2c = 0` | char≠2: `c=0`; char 2: free `c` | agrees |
| 5.6, 5.7 | `R=±1+bε`; `ℂ⟦t⟧`, `R≡1` | `R²=1±2bε` ⇒ `b=0`; `(R−1)(R+1)=0` | constant lift; `R=1` | agrees |
| 6.3, 6.4 | `R=0`, `κ=Fin 1` vs `Fin 2` | trivial categories, equivalent | no bijection; `finrank₀ = 0 ≠ 1` | R02 |
| 6.4 triangle gauge | `Vec` on `Vec`, `h=c` | `M′ = c·1·c⁻² = c⁻¹` | triangle forces `c=1` | agrees |
| 6.7 bounds | regular `C₂`, `K=2` | `M_Σ² = 2M_Σ`; entries ≤ 2 | row support 2 ≤ `K²` = 4 | agrees |
| 7.1, 7.2 | `C₂` | `ℤ[x,y]/(xy−1,x²−1)`; char 2: `1+1=0` | `ℤ[x,x⁻¹]/(x²−1)`; separable locus empty | agrees |
| 7.3, EGNO proof of 9.1.4 | `𝔾_a` on `𝔸¹`; trivial `G` on `Spec K[ε]/ε²` | kernel of `x↦t` is 0; lift `ε↦ε` | 1 orbit = 1 component; hypothesis fails | agrees |
| 8.1 headline | `ℤ/2` over ℂ | `F¹¹¹ = ±1`: 2 classes | family statement elaborates at the pin | R03 |
| 8.2 headline `finite_braidedCategory` | `Vec(C₂)`, `F=1` | `R¹¹ = ±1`: 2 braidings | `infer_instance` and `simp` fail | not padding |
| 8.3, 8.4, 8.5 | `ℤ/2`/ℂ; `Vec`; `Vec(C₂)` | 4 braided classes; `Vec^r`; ranks 2, 1 | finite; 1 per rank; ≤ `K²` = 4 | agrees |
| 8.6, EGNO Cor. 9.1.8 | semion | `F=−1`, `R=i ∈ ℚ̄` | EGNO 9.1.8 is char 0 only (line 13848) | R07 |
| 9.1 | `ℤ/2` over ℂ | `normGlobalDim = 2` | `Hⁿ=0`; 2 × 2 structures | agrees |

- Source locators checked against the text: 32 in total. GHS 15: Defs 2.4, 3.1–3.3, (3.7), (3.9), (3.11), (3.12), (3.14), Prop 2.12, Remark 3.7, Thm 3.11, Lemma 3.17, Cor 3.18, Thm 5.1. ENO2005 8: Thms 2.27, 2.28, 2.31, Remarks 2.29 and 2.33, Cor 2.35, §9.1, Remark 9.2. EGNO 9: Ex. 7.4.10 (p. 137), Ex. 7.22.5, Ch. 9 preamble, 9.1.3, 9.1.4, 9.1.6, 9.1.8, 9.3.1–9.3.2, §9.16. All page numbers match except the characteristic qualifiers in R07.
- Library declarations opened at the pin: Semisimple/Basic.lean:56, :177; Simple/Classes.lean:52; Semisimple/GrothendieckRing.lean:240; Semisimple/Rigid.lean:89; Rigid/DualFunctor.lean:325; Pivotal/GlobalDim.lean:58; Pivotal/Character.lean:239 (assumes `CharZero`, `PivotalCategory`); Rigid/Functor.lean:86; Center/Abelian.lean:62; Center/Rigid.lean:382; Center/Pivotal.lean:113; GeneralLinear/Coordinate/HopfAlgebra.lean:452; GeneralLinear/Scheme.lean:98; GroupAction/LocallyClosed.lean:55, :177; Constructible/Basic.lean:37. Mathlib: Action/Basic.lean:120, Action/End.lean:50, Action/LinearFunctor.lean:156, Pi/Basic.lean:179, Monad/Adjunction.lean:65, ExtraDegeneracy.lean:412, AlternatingFaceMapComplex.lean:343, Filtration.lean:432, Chevalley.lean:42, Jacobson/Ring.lean:681, Nullstellensatz.lean:171, Monoidal/Center.lean:382, Monoidal/End.lean:45. No cosimplicial extra degeneracy exists at the pin, so 2.3 is owned here.
- Cross-roadmap citations resolved: PivotalSpherical at the #2311 head (3.3, 6.1, 6.2, 6.7, 6.8, 6.9, 11.1, 11.2); PresentationsOfMonoidalCategories at the #2308 head (0.1, 0.2, 1.1, 1.2, 2.1–2.4, 3.1, 3.2, 5.1, 5.2, Layer 6, gauge and `s_a` conventions); SchemeAndStackFoundations §4.2 on main (:6347); CategoricalOperatorAlgebras CA6 on main (:1208, :1266).
- Gate at b188ea1: `FAIL` (tex 11, target-ids 1; every other check 0). Nothing changed outside the folder.
- Dependency check: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; no UPWARD or CYCLE line.
- Elaboration: `lake env lean` on Suggested.lean gives one `sorry` warning. `#check @` on both declarations: `finite_braidedCategory` keeps every fusion binder, while `RelHalfBraidingData` lost `[MonoidalCategory C]` (R06). Scratch statements for 8.1 and for module categories elaborate. Nothing was changed in the pull request.
- Ownership: searched by object (Davydov–Yetter, relative centre, comonad cohomology, module symbols, orbit finiteness, formal rigidity) on main and in 471 open heads. No other owner was found; this roadmap owns them.

Overlap check: read PresentationsOfMonoidalCategories (#2308), PivotalSpherical (main and #2311), CategoricalOperatorAlgebras (main) and TemperleyLieb (main). F- and R-symbols, models, gauges and classification are owned by PresentationsOfMonoidalCategories. Squared norms, `normGlobalDim`, the absolute induction and its averaging identity, nonvanishing and `IsSplitSimpleFamily` are owned by PivotalSpherical (#2311). The unitary relative centre is owned by CategoricalOperatorAlgebras CA6. TemperleyLieb shares nothing.

Source independence: 37 passages compared with 3 sources (32 locators plus 5 passages of prose: 1.1, 1.8, 3.3, 6.8 and the Summary), with no shared wording beyond forced statements. The largest share is GHS, 15 of 42 bracketed locators. Contents compared with GHS (lines 22–44): independent. Layer 1 (the centre) precedes Layer 2 (comonads), whereas GHS runs §2 → §3.2 → §3.3, and Layers 0 and 5–9 have no GHS counterpart.

## Not verifiable

- [BB] §§1, 4: recorded as uncertified (paywalled) and not read.
- The worker's seeded sample was empty, because the gate found no targets. The table covers every locator-bearing target instead.
- The published pagination of GHS (Adv. Math.) and ENO (Ann. of Math.) was not compared with the arXiv versions read (1910.06094v2, math/0203060v11).
- The 1.7 summand identity in a non-pivotal fusion category was checked only on `Vec`, `FDRep ℂ S₃`, `Vec(Q₈)` and `Vec(C₂)`.

## Source issues

- none

## For the human reviewers

- Every PivotalSpherical id this roadmap cites (3.3, 6.1, 6.2, 6.9, 11.1, 11.2) exists only at the head of #2311, the same author's revision. PivotalSpherical on main has no numbered targets and no pivot-free `normGlobalDim`.
- PresentationsOfMonoidalCategories (#2308, a new roadmap and a supplier here) is absent from the merge-order file. The dependency check reported no problem.
