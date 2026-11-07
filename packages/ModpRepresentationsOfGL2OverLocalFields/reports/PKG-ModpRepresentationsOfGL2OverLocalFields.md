# PKG-ModpRepresentationsOfGL2OverLocalFields — package report

Deliverables: `packages/ModpRepresentationsOfGL2OverLocalFields/README.md` (10 layers, 60 targets),
`Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml` (16 sources), and the
`gaps` list of `design/plan.json` (nothing else in it changed).

Inputs: the accepted design `design/README.md` and `design/plan.json`. There was no
`design/review.json` and `reports/` was empty; the accepting review is the `review` field of
`plan.json` (status accepted, 59 per-target verdicts), and its notes were applied (corrected
baseline kinds, the p > 5 qualification of E1, the K/Z₁ reading of E2, the coinvariant reading in
§8.5, the LMS22 corrigé E5, the central-character step of §1.4, the GK propagation step of §4.7).

## Headline theorems

| Headline | Source | Status |
| --- | --- | --- |
| Coherence: kernels of maps between finitely presented torsion `𝒪_L`-representations of `GL₂(F)/ϖ^ℤ` are finitely presented, every finite `F/ℚ_p` | SHOTTON20 Thm 4.5, Cor 5.2; CDN23 Prop 1.3, Rem 1.4 | stated: `isFinitelyPresented_ker` |
| Finite type ⇒ finitely presented, `GL₂(ℚ_p)/p^ℤ` over `k` | CDN23 Prop 1.20 | stated: `isFinitelyPresented_of_finite` |
| Finite cosocle ⇒ finite length, `GL₂(ℚ_p)/p^ℤ` | CDN23 Thm 1.21 | stated: `isFiniteLength_of_bounded_semisimple_quotients` |
| Finite length ⇔ finite-dimensional smooth dual, `GL₂(ℚ_p)/p^ℤ` | CDN23 Thm 1.24 | stated: `isFiniteLength_iff_finite_smoothDualSpan` |
| Admissible + finitely presented ⇒ finite length, `GL₂(F)`, every `F` | CDN23 Thm 1.26(i) (Hu, Vignéras) | stated: `isFiniteLength_of_admissible_of_finitelyPresented` |
| Subobjects of admissible finitely presented representations are finitely presented | CDN23 Thm 1.26(ii) | stated: `isFinitelyPresented_subrepresentation_of_admissible` |
| Local Gelfand–Kirillov bound `dim_{GL₂(F)} π ≤ f` | BHHMS23 Thm 6.4.7 | not statable: no GK dimension (canonical dimension of the dual over an Iwasawa algebra), no labelled Serre weights `F(λ)`, no `W(ρ̄)` or `D₁(ρ̄)` at the pins |
| Iwahori criterion `dim_I V ≤ f` | BHHMS23 Cor 5.3.5 | not statable: GK dimension; pseudocompact projective truncations `W_{χ,3}` |
| `R/pR ≅ Proj_{K/Z₁}σ/𝔪_{K₁}²`; commutative `End`; relative projectivity | BHHMS23 Cor 7.3.4, Props 7.4.1, 7.4.3 | not statable: Serre weights, pseudocompact projective covers, the gluing lattice |
| Finite-error ordinary counit and Banach approximation, `F ≠ ℚ_p` | CDN23 Prop 1.33, Cor 1.34 | not statable: Emerton's `Ord_B`, smooth parabolic induction |
| No supersingular constituents in `𝒞` for `F ≠ ℚ_p` | CDN23 Lemme 1.29 | not statable: smooth principal series, supersingularity |

The module docstring names each non-statable headline and what it lacks. Definitions kept, all
with real bodies on Mathlib carriers: `IsSmoothRep`, `IsTorsionAdmissible`, `IsFinitelyPresented`
(compact induction is Mathlib's `Representation.ind` along an open compact subgroup),
`smoothDualSpan`, `GL2ModScalar` (`GL (Fin 2) F` modulo the normal closure of the scalar matrices
equal to `ϖ`, quotient topology). Local fields are Mathlib's `IsNonarchimedeanLocalField` with
`CharZero` and `CharP 𝓀[F] p`; the uniformiser is `Irreducible ϖ` in `𝒪[F]`; torsion is implied
by finite presentation.

The `ℚ_p` theorems live in `Type` (because `ℚ_[p] : Type`); the general-`F` theorems in one
universe `u`. Theorem 1.24 is stated for every `p`, as CDN state it; its reverse implication uses an
Ext-finiteness input that the cited DEG text proves only for `p ≥ 5`, registered as
gap:ext1-finite-length-into-compact-induction.

## Elaboration

`lake env lean packages/ModpRepresentationsOfGL2OverLocalFields/Suggested.lean` from the content
checkout: exit 0, exactly **6** warnings `declaration uses 'sorry'` (the six theorems), no other
message. Single `import Mathlib`, no `TauCeti.*` import needed, no `set_option`, no `lemma`.

`#check` comparison: one scratch file with `#check @…` for all 11 declarations was elaborated.
Every elaborated type matched its README statement. Changes made after the check: the first draft
fixed all carriers in one universe, which failed for `ℚ_[p]`; universes were separated. The
redundant hypotheses `IsSmoothRep` and `p`-power torsion were dropped from the coherence and
Layer 2 headlines, since finite presentation implies both (a quotient of a compact induction of a
smooth finite-length module); an unused-variable lint on a torsion predicate was removed by using
Mathlib's `Module.IsTorsion'` and then dropping it.

## Dependency check

```
tauceti-roadmap … gate --depcheck packages/ModpRepresentationsOfGL2OverLocalFields/README.md --name ModpRepresentationsOfGL2OverLocalFields --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 648 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. The roadmap is at line 322 of the merge order; its latest
supplier, PotentialAutomorphyInfrastructure, is at line 257. `roadmaps resolve` on the README:
no cross-roadmap citation and no Lean name found nowhere.

## Supplier gaps (declared in `plan.json` and in the README supplier contracts)

- gap:ext1-finite-length-into-compact-induction — PadicLocalLanglandsForGL2Qp §2.7:
  `Ext¹_{G′}(π, I(σ))` finite-dimensional for finite-length `π`, all `p` (DEG Lemma 4.2.1 covers
  `p ≥ 5`). Replaces the design's open proof obligation and its "R30.6" request.
- gap:barthel-livne-finite-codimension — FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15:
  `(π′)^{I₁}` has finite codimension in `I(σ)^{I₁}` for nonzero `π′ ⊆ I(σ)` (Barthel–Livné Prop 18).

## Corrections to the design

- Supplier labels that exist nowhere were re-pointed to real sections: "R30.2/modp-irreducibles"
  → PadicLocalLanglandsForGL2Qp §2.7; "R30.2/no-correspondence-beyond-qp" → §2.9; "R30.5/blocks"
  → §5.1; "R30.6" → §2.7 (gap); "R03.3" → DeformationAndDerivedPatchingAlgebra §3.4; "R07.5" →
  FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15; "CC.3" → CompletedCohomologyPartII F.1 and
  §§5.5/5.8 and PadicLocalLanglandsForGL2Qp §§0.1, 0.3; NE labels → NE §§0.3, 0.5, 0.7, 0.8,
  0.10–0.11, 0.13, F.1; SR.0/SR.2 → the named SR targets.
- Baseline: the pins are now Tau Ceti `a91d3aa` and Mathlib `6b7abb3`; `TauCeti.completedGroupAlgebra`
  exists at the pin and is cited directly (the design cited ProfiniteProPGroups Layer 9 because it
  was absent at an older pin).
- CDN Théorème 1.21 is an implication (finite cosocle ⇒ finite length), not the "iff with Hom
  finiteness" of the design; restated, with the converse noted as immediate. The cosocle condition
  is rendered as bounded length of semisimple quotients, with a Check proving the equivalence.
- BHHMS Proposition 7.4.1 states commutativity only; the dimension `2^f(f+1)` is located in its
  proof.
- §3.4: BHHMS does not assert that the `2^f` labels of `W(ρ̄)` are distinct; the design's
  "labels distinct in the generic situation" API claim was replaced by "at most `2^f`".
- §4.1: the design's growth API and the canonical-dimension construction are imported (see
  removals); the GK-dimension target keeps the representation-level definition and independence.
- VIGNERAS11 is read in arXiv:0909.4003v1, whose numbering (Props 7–11, Thm 7) differs from the
  published Props 5.5–5.8 cited by CDN; locators use the version read.
- The design's Part II requests to SR, NE, QuiverRepresentations and PadicLocalLanglandsForGL2Qp
  were resolved: what exists is cited (SR.0d.1 injectives, NE §0.5 filtered grade, NE §§0.7–0.8
  Lazard, PAI §3.7 Hecke action); what no roadmap plans is owned here (amalgam coherence §0.5,
  torsion-admissibility ⇔ finite dual §0.1, pseudocompact projective envelopes §4.6, first-order
  injective hulls §5.6, projective lifts over a complete DVR §5.4, central-regular-sequence grade
  shift §4.2, the injection `R¹Ord_B → H¹Ord_B` §2.2, continuous induction §2.6). Only the two gaps
  above remain.

## Notions moved down from later roadmaps

None. Every supplier is earlier in the merge order or on main.

## Duplication sweep (removals, by object)

| Object in the design | Owner found | Action |
| --- | --- | --- |
| Construction of ordinary parts (N₀-invariants, transfer Hecke action, localisation, derived version) | PotentialAutomorphyInfrastructure §3.7 `LocalOrdinaryParts` | Hecke action and derived functor imported; §2.1 keeps only Emerton's right adjoint and adjunction for `GL₂(F)` |
| Grade `j_R(M)`, canonical dimension, finite-index invariance | NoncommutativeAndEquivariantIwasawa §F.1 (re-exported by CompletedCohomologyPartII §5.5) | imported; §4.1 defines only the representation-level dimension |
| Invariant growth `dim V^{U_r} ≍ [U:U_r]^{δ/d}` (design API `gkDimension.growth`) | CompletedCohomologyPartII §5.8 | deleted, cited |
| Filtered/graded grade comparison and Auslander transfer (design NE request) | NE §0.5 | cited |
| p-valuations, saturation, ordered bases, Lazard weighted graded algebra (design NE request) | NE §§0.7–0.8 | cited; §4.3 keeps the explicit Iwahori valuation |
| Lazard exterior cohomology, `dim H¹(K₁/Z₁) = 3f` | NE §0.13 | cited |
| Completed group algebras and compact module actions | Tau Ceti `TauCeti.completedGroupAlgebra`, `completedGroupAlgebraModule` | cited |
| Projective covers over finite-dimensional algebras | Tau Ceti `TauCeti.exists_isProjectiveCover_of_finiteDimensional` | cited |
| Smoothness, admissibility, smooth contragredient, compact induction, Frobenius reciprocity, injectives | SmoothRepresentationsOfLocalGroups SR.0.1–0.4, SR.0d.1, SR.2.1 | cited; Suggested.lean keeps local copies `IsSmoothRep`, `smoothDualSpan` (names differ from SR's) only for elaboration |
| `GL₂(ℚ_p)` torsion admissibility, dual category, envelopes | PadicLocalLanglandsForGL2Qp §§2.1–2.3 | cited; §0.1 keeps the general-`H` notion |
| Serre weights, `I(σ)`, `k̄[T]`, freeness, Barthel–Livné classification | FiniteFlat R07.5.15; PLL §2.7 for `ℚ_p` | cited |
| Fundamental characters | PLL §0.3 | cited (design pointed to LocalFieldsRamification Layer 4) |
| Pontryagin and Schikhof duality | PLL §§0.1, 0.3 | cited |
| Regular sequences, CI, CM | DeformationAndDerivedPatchingAlgebra §3.4; Mathlib `RingTheory.Sequence.IsRegular`, `MvPolynomial.ringKrullDim_of_isNoetherianRing_of_finite` | cited |

Checked and not duplicated: BDJ weight sets for unramified `F` (AlgebraicModularFormsAndSerreWeights
R15.4 has only Serre's `ℚ`-weight recipe), Diamond diagrams, GK dimension of smooth representations,
finitely presented smooth representations, lifting projectives over complete DVRs
(RepresentationTheory/ModularInduction excludes the cde triangle), amalgam coherence. Ownership was
checked against main and all open roadmap pull requests with `roadmaps grep`/`roadmaps show`; no
declaration of Suggested.lean reuses a fully qualified name of another roadmap.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `IsTorsionAdmissible` (§0.1) | `H = 1`, `V = L/𝒪`; `⊕_ℕ k`; `j = 0` | `(L/𝒪)[p^j]` length `je`; `(⊕k)^H[p]` infinite; `j = 0`: kernel of `id` is `0` | admits `L/𝒪`, rejects `⊕k`, `j = 0` harmless | none |
| `IsFinitelyPresented` (§0.3) | `H = 1`; `H = ℚ_p`, `k[ℚ_p/ℤ_p]` | `H=1`: f.p. ⇔ finite length; relation ideal of `k[ℚ_p/ℤ_p]` over `k[ℚ_p]` is generated by `[x]−1, x ∈ ℤ_p`, not f.g. (ℤ_p not f.g.) | smooth f.p. ≠ abstract f.p. | Check added |
| f.p. ⇒ smooth torsion | `c-Ind_U W`, `W` killed by `p^N` | quotient killed by `p^N` vectorwise, stabilisers open | holds | dropped redundant Lean hypotheses |
| `isFinitelyPresented_ker` | `ϖ = 0` (set empty, quotient `G`); `ϖ` unit | `ϖ=0`: `G′ = G`, not covered by Shotton (needs Z-finite) | hypothesis `Irreducible ϖ` needed | Check added |
| same | `T : I(σ) → I(σ)` | `ker T = 0` (free over `k[T]`) | consistent | none |
| `GL2ModScalar` | `ϖ = 0`; central scalar | normal closure of a central element = its cyclic group | as intended | docstring |
| §0.4 third clause | `G′`, `F ≠ ℚ_p`, supersingular quotient of `c-Ind σ` | kernel not f.t. (else quotient f.p., contradicting PLL §2.9) | consistent | Check fixed (design used SL₂) |
| `isFiniteLength_of_bounded_semisimple_quotients` | `V = 0`; `V = I(σ)`; `V = I(1)/(T−1)` | `0`: N=0; `I(σ)`: infinitely many irreducible `P(T)` ⇒ unbounded; `I(1)/(T−1)`: N = 1, length 2 | hypothesis discriminates | statement corrected to implication |
| `isFiniteLength_iff_finite_smoothDualSpan` | trivial char; Steinberg; `I(σ)`; `⊕` Steinberg | dims `1`; `0`; `∞` (finitely supported functionals); `0` but infinite length, not f.t. | consistent; f.t. needed | Check added |
| `isFiniteLength_of_admissible_of_finitelyPresented` | `V = 0`; `χ∘det`; St; `c-Ind σ`; supersingular, `F≠ℚ_p` | lengths 0,1,1; `c-Ind`: `V^{I₁}` infinite-dim (not adm.); supersingular not f.p. | consistent | none |
| Subobject headline | `W = 0`, `W = V` | trivially f.p. | consistent | none |
| `Ord_B` (§2.1) | `χ∘det` over `k` | `t·v = [N₀:tN₀t⁻¹]χ(det t)v = q^m(…) = 0` ⇒ `Ord = 0`; naive action would give `χ⊗χ` | Hecke normalisation pinned | Check added |
| Borel orientation | `Ind_B(χ₁⊗χ₂)` | `= Ind_{B̄}(χ₂⊗χ₁)` ⇒ `Ord = χ₂⊗χ₁` | consistent with unit | none |
| §2.2 | `F = ℚ_p` | Hauseux 4.2.4(i): `H¹Ord ≅ ⊕ U^α⊗(ω⁻¹∘α) ≠ 0` | `F ≠ ℚ_p` needed | Check |
| §2.2 left exactness | `0→χ∘det→Ind(χ⊗χ)→St⊗χ→0` | `0→0→χ⊗χ→Ord(St⊗χ)→0` ⇒ `Ord(St⊗χ) = χ⊗χ` | agrees with CDN 1.30(b) | none |
| §2.5 | `Ind_{B̄}(χ₁⊗χ₂)`, `χ∘det`, `St⊗χ` | counit iso; coker `χ∘det` (dim 1); kernel `χ∘det` | errors finite over `𝒪` | Checks |
| §3.1 depth | `p=17`, `r=3`, `r_0 = 2` | `3<4<14` true; `3<3` false | strictness on `r+1` | none |
| `t_λ` (§3.2) | `f=1,p=17,λ=(5,0),ω=∓1`; `f=2,ω=(1,0)` | `(0,−11)`, `(−1,−10)`; `((6,0),(−1,−10))`; wrong parity reading gives `((−1,−10),(6,0))` | design values confirmed | Check fixed |
| `t_λ(±1)` vs BP12 | `Sym^5`, `p=17` | `Sym^9⊗det^6 = Sym^{p−3−r}⊗det^{r+1}`, `Sym^{11}⊗det^5 = Sym^{p−1−r}⊗det^r` | matches Ext neighbours / principal series | none |
| `W(ρ̄)` (§3.4) | `f=1,s=1,μ−η=(5,0)` | `{Sym^5, Sym^9⊗det^6}` = Serre weights of `ω^6⊕1` | consistent | distinctness claim removed |
| `ω_1` normalisation | geometric vs arithmetic Artin | geometric: `ω_1(Art(u)) = ū` (cyclotomic); arithmetic gives inverse | pinned | Check |
| `ω` on `P` (§4.3) | `u(1)`, `l(p)`, `diag(1+p,(1+p)^{-1})`, `1`; `[u,l]` | `1/2, 1/2, 1, ∞`; `[u,l] = (1+p+p², −p; p², 1−p)`, value `1` | commutator estimate sharp | Check replaced |
| `gr` degrees (§4.4) | general `f`, `f = 1` | `dim gr¹ = 2f`, `dim gr² = 2f²+2f`; `W_{χ,3}`: `1+4f+2f²` = 7 at `f=1`, 6 without `h` | consistent | none |
| `C_J(k)` (§4.5) | `J=∅`, `|J|=1`, `X_iY_j` | dims `0`, `1`; `X_iY_j ≠ 0` | consistent | none |
| §4.7 | `V = C^∞(I/Z₁)` | `Hom(W_{1,3},V)` dim 7 ≠ `Hom(1,V)` dim 1 | hypothesis fails as it must (dim 3f > f) | Check fixed |
| §5.1 multiplicity | `p=5,f=1` | `α` order 4, `α² = α^{−2} ≠ 1`, `e², f²` both weight `α²` | needs `p > 5` | kept (E1) |
| §5.1 orientation | `e_i`, `f_i` | `t e t⁻¹ = α e`; `(1 0; pc 1) ∈ K₁` | `E_{χα,χ}` is `K₁`-trivial | Check rewritten |
| §5.2 digits | `p=7,f=2,j=1+2p` | length `2·3 = 6` vs `j+1 = 16` | consistent | none |
| §5.4 (new) | `Γ = ℤ/p`; prime-to-`p` Γ; `𝒪 = k` | `P̃ = 𝒪[ℤ/p]`, `p` characters each once = `[χ̄:k] = 1`; field case: no lift | Brauer reciprocity witness | new target |
| §5.5 | `f=1` | `[P_σ:σ] = 2`, two rational constituents | consistent | boundary Check corrected (no false "fails" claim) |
| §5.6 | `dim H¹(K₁/Z₁)` | `3f` (uniform, `p>2`) | consistent with §8.6 `(1+3f)dim P_σ` | none |
| §6.1 parity | `f=2, ε=(+1,−1)` | `d_0 = 0, d_1 = 1` ⇒ `B_0` odd, `B_1` even | predecessor index | none |
| §6.2 depth | `f=1, B=3` | `⌊a/2⌋ = 0,0,1,1` for `a=0..3` | floor sum, not rank | Check |
| §6.6 | `f=1` | `W` length `2+2 = 4` | consistent with §6.7 Check | none |
| §6.4/§6.7 example | `f=1,p=17,λ=(8,0),ε=−1` | `t_λ(−1) = (0, 9−p) = (0,−8)` ⇒ `Sym^8⊗det^8` at `p=17` | 7-deep: `7 ≤ 8 ≤ 8` | example kept |
| §7.4 | `w g w⁻¹` for `g = (a b; pc d)` | `(d c; pb a)` | swaps root directions | Check replaced unverifiable one |
| §7.5 | genericity | `2 < r < p−3` ⇒ `p ≥ 7` | `p=5` collision excluded | none |
| §7.6 | `f=1`, `ρ̄ = ind ω₂^{r+1}` | `W(ρ̄) = {Sym^r, Sym^{p−1−r}⊗det^r} = soc_K Π(r,0,1)` | (i) holds, `dim = 1 ≤ 1` | example replaced unverified claims |
| §8.1 brackets | adjoint lattice | `β(e⊗f) = h`, `β(h⊗e) = 2e` | consistent | removed an unverified invariants Check |
| §8.2 | `W = 0` | `V₁° = pV°`, `pV°/p²V° ≅ V°/p` | middle term pinned | none |
| §8.3 ψ | `p=11,r=3`; `r=0`; `r=p−2` | `5, 4, 10`; `0`; `2p = 0` | invertible exactly in range | none |
| §8.4/8.6 rank | general `f` | `rank R = (1+3f)dim P_σ = dim (R/pR)` | consistent | none |
| §9.1 | `f = 1` | `[R/pR:σ] = 2 + (2+0+0) = 4 = 2^f(f+1)` | consistent | Check corrected |
| §9.2/9.3 bounds | `5<r<p−7` | requires `p ≥ 17` | stated | none |

## Sources

All 16 sources are in `sources.toml` (`sources check`: 0 problems). Fifteen were read through the
sources service (arXiv, author pages, the open-access Forum Math. Pi PDF, Durham/EMS via arXiv);
SERRE-LRFG is a paywalled textbook cited by chapter locator and recorded `uncertified`. Locators
checked in the fetched texts: CDN23 Props 1.2–1.3, 1.17, 1.19–1.20, Thms 1.21, 1.24, 1.26,
Lemmes 1.22–1.25, 1.29–1.32, Prop 1.33, Cor 1.34; SHOTTON20 Defs 1.1, 2.3, Prop 4.3, Cor 4.4,
Thms 4.5, 5.1, Cor 5.2; BHHMS23 Prop 2.4.2, Cor 5.3.5, Thm 6.4.7, Cor 7.3.4, Props 7.4.1, 7.4.3;
HAUSEUX Cor 4.2.4; KOHLHAASE17 Prop 3.9; DEG Lemma 4.2.1; VIGNERAS11 arXiv §5. No
`needs-references.toml` remains: every text initially missing (CDN23, SHOTTON20, VIGNERAS11) was
fetched on retry.

## What the README could not support

Nothing is left unstated; the two supplier gaps above are the only inputs not available from
an existing target. Suspicious passages in fetched text: none.
