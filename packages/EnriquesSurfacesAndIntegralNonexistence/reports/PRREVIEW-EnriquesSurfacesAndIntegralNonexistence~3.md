# Review of EnriquesSurfacesAndIntegralNonexistence (pull request #1488 at 4cf6a98)

**Verdict:** needs changes

This is an incremental re-review of the 64 lines changed since 7cee31c (35 insertions, 29 deletions in `README.md` and `Suggested.lean`). The changes are mathematically correct. The repointed local-field and genus-one suppliers resolve, the E₈ carrier swap keeps every statement true, and the restated discriminant headlines are equivalent to the former ones. Two P3 locator and pin defects remain, and both were introduced by this round's edits. Neither is blocking.

## R01 (P3) — The `IntegralLattice` structure locator now points into its docstring

**Location.** `TauCetiRoadmap/EnriquesSurfacesAndIntegralNonexistence/README.md:52`: "the structure fields are carrier, form, lattice spanning/finiteness, symmetry and integrality, with no nondegeneracy field (TauCeti/LinearAlgebra/IntegralLattice/Basic.lean line 61)".

**Claim.** This round changed the locator from line 63 to line 61, on the stated ground that the structure had moved. It has not moved. At both the stated Tau Ceti pin and the branch pin, line 61 is a docstring line about `le_dual`. The structure keyword is on line 63 and the fields are on lines 64–75, so line 61 does not support "no nondegeneracy field".

**Witness.** At Tau Ceti 2fd255d and at a91d3aa, `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean` line 61 reads "The field `le_dual` says exactly that the form takes integer values…" and line 63 reads `structure IntegralLattice where`.

**Repair.** Restore "line 63", or cite "lines 63–75" for the field list. Tested: `git show <pin>:TauCeti/LinearAlgebra/IntegralLattice/Basic.lean | sed -n 63p` prints `structure IntegralLattice where` at both 2fd255d and a91d3aa.

## R02 (P3) — The stated pins are not this branch's pins, so the gate built against a Tau Ceti where README:54's targets are absent

**Location.** `README.md:44` "Use Mathlib at `1b1ccf4b…`"; `README.md:52` "At Tau Ceti `2fd255d9…`"; `README.md:54` "`IntegralLattice.checkerboardPlusLattice 8` of `RootLattice/TypeD/Plus.lean`"; `Suggested.lean:14–16` "The pins are Mathlib 1b1ccf4b… and Tau Ceti 2fd255d9…".

**Claim.** The README and the module docstring now name main's pins. This branch's `lake-manifest.json` still pins Mathlib 6b7abb3 and Tau Ceti a91d3aa, which it inherits from its merge base ae2562c. So the gate's targeted build, and every check against "the pins", ran at revisions the README does not claim. At those revisions README:54 cites one declaration and two files that do not exist. No check has elaborated `Suggested.lean` at the stated pins and their toolchain.

**Witness.** At a91d3aa there is no `checkerboardPlusLattice`, no `RootLattice/TypeE/Basic.lean` and no `RootLattice/TypeD/Plus.lean`, and `typeE₈IsometryD8Plus` targets `d8PlusLattice`. Main eaf17b1's manifest pins 1b1ccf4 and 2fd255d with Lean v4.36.0-rc2; the branch uses v4.35.0-rc3.

**Repair.** Rebase the branch onto main (eaf17b1 or later). No file in the folder changes. Then rerun the gate, so that its targeted build runs at the pins the README states. Do not instead revert the text to a91d3aa: `d8PlusLattice` and `RootLattice/D8Plus/Basic.lean` no longer exist at main's pin, so the old text would break at merge.

Tested by reading at 2fd255d:
- Every module `Suggested.lean` imports exists: `Discriminant/Group`, `Examples`, `RootLattice/D8Plus/Isometry`, `Orthogonal/Sum` and `Scaling`.
- `D8Plus/Isometry.lean` lines 9–10 publicly import `TypeD.Plus` and `TypeE.Basic`.
- Every name the file uses exists:
  - Tau Ceti: `typeE₈RootLattice` (`TypeE/Basic.lean:676`), `hyperbolicPlane` (`Examples.lean:88`), `orthogonalSum` (`Orthogonal/Sum.lean:94`), the negation instance (`Scaling.lean:263`), `ofGramMatrix` (`Basic.lean:281`, same binders), `integralForm` (`Basic.lean:167`), `DiscriminantGroup` (`Discriminant/Group.lean:109`).
  - Mathlib at 1b1ccf4: `Matrix.IsSymm.ext`, `Pi.basisFun`, `Monoid.exponent`.

At the branch pin the file elaborates, with four `sorry` warnings and nothing else.

## Previous findings

- none: the previous report (at 7cee31c) raised no findings and accepted the folder.

That report recorded the three findings of [r1] as repaired, and this head keeps them repaired:
- README:73 still names WeilConjectures §§7.12–7.14.
- No isotropic-cardinality declaration has returned to `Suggested.lean`.
- The LLR reference still cites NeronModelsAndSemistableAbelianVarietiesPartII §3.11 (README:1941).

The two discriminant headlines were restated because of the gate's statement-hygiene rule, from `Nonempty (… ≃+ ZMod 2 × ZMod 2)` to `Nat.card … = 4 ∧ AddMonoid.exponent … = 2`. This is the same mathematics that [r1] kept as headlines (computed below). It does not reintroduce the fixed-value checks that [r1]'s R02 removed.

## Verified sound

**Scope.** I read every passage the diff changes:
- README:19–20 and :44–75;
- §0.4 Needs (README:144);
- §1.26 (README:604 and :635);
- §3.6 Needs, §3.8 Needs, §3.9 and the Layer 3 dependencies (README:1027, :1063, :1071–1073, :1139);
- §4.1 Needs and §4.2 (README:1181 and :1189);
- §6.2 and §6.3 (README:1591–1596 and :1616);
- `Suggested.lean`: the imports, docstring, carrier and two conclusions.

I also read the passages that cite or depend on these: §3.7, §4.4 and the remaining §6.0b citations at README:1083 and :1191. The outside-folder diff is empty, and the folder contains only `README.md`, `Suggested.lean` and `metadata.toml`.

**Gate, dependency direction and elaboration.** I reran the gate with the brief's command at this head. Its output:

~~~text
gate EnriquesSurfacesAndIntegralNonexistence: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
~~~

The dependency check (`gate --depcheck … --movable`) printed:

~~~text
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
~~~

It printed no UPWARD, CYCLE or `moved:` line.

`lake env lean` on `Suggested.lean` from the worktree, at the branch pin, gave four `declaration uses sorry` warnings (lines 51, 69, 117 and 123) and nothing else. A scratch copy with `#check @name` for all ten declarations elaborated each type:
- `positive_cone_decomposition` keeps h²>0, d²>0 and d·h>0 and its six-part conclusion;
- `dyadic_square_classes` keeps `x ≠ 0` and `∃!` over `Fin 2 × Fin 2 × Fin 2`;
- both discriminant theorems are `Nat.card … = 4 ∧ AddMonoid.exponent … = 2`.

No binder was lost (the file has no `variable` block), and each type matches its README statement. The one-tactic probe (`rfl`, `simp`, `simp [def]`, `norm_num [def, Gram]`, `infer_instance`) closed 0 of 12 attempts.

**Cross-roadmap citations resolved (6).**
- K3SurfacesAndSymplecticBoundedness §6.0b at the head of its open pull request (`TauCetiRoadmap/K3SurfacesAndSymplecticBoundedness/README.md:777–853`, scope line 15). It consumes NeronModelsAndSemistableAbelianVarietiesPartII for the carrier, the canonical formula, the Hodge-line degree and the Jacobian. It owns the root quotients and the Jacobian comparisons: no multiple fibres, invertible R¹j_*O and χ(O_X)=χ(O_J), quasielliptic case included. This matches README:20, :74 and :75.
- NeronModelsAndSemistableAbelianVarietiesPartII at its head (`roadmaps show`; README line numbers exclude the banner):
  - §2.1 at line 3784 includes field extension;
  - §4.1 at line 8893 gives `deg L⁻¹=χ(O_S)+length(T)`, with the Check L≅O(−1) for a rational Jacobian;
  - §4.2 at line 8926 is the Hodge-line degree;
  - §4.17 at line 9353 is the relatively minimal regular Jacobian with its zero section.
- IntegralLattices on main: `TauCetiRoadmap/IntegralLattices/README.md:1641` (Layer 6) and :1643 (6A). The overlaps lead "only an open revision defines IntegralLattices Layer 6" is therefore a false positive, as the repair report also found.
- LocalFieldsRamification is `Completed/LocalFieldsRamification` on main. Its README records the completed Tau Ceti audit, so "proved in the pinned Tau Ceti library" is accurate.
- The citation resolver found no unresolved cross-roadmap citation or Lean name. Its library check was unavailable, so I opened the library names below by hand.

**Pinned declarations opened at both revisions (a91d3aa / 2fd255d, 27 names).** All paths are under `TauCeti/`.

| Area | Declarations and locations | What I confirmed |
| --- | --- | --- |
| Integral lattices | `IntegralLattice` at `LinearAlgebra/IntegralLattice/Basic.lean:63`/`:63`; `CoeSort` at `:83`; `ofGramMatrix` at `:261`/`:281` | — |
| E₈ carrier | `typeE₈RootLattice` at `…/RootLattice/TypeE.lean:659` / `…/RootLattice/TypeE/Basic.lean:676` | Built with `ofGramMatrix (Pi.basisFun ℚ (Fin 8)) (CartanMatrix.E 8)` |
| E₈ isometry | `typeE₈IsometryD8Plus` at `…/D8Plus/Isometry.lean:298`/`:292` | Target `d8PlusLattice` at a91d3aa and `checkerboardPlusLattice 8 (by decide)` at 2fd255d |
| Other lattice API | `checkerboardPlusLattice` (`…/TypeD/Plus.lean:160`, 2fd255d only); `hyperbolicPlane`; `orthogonalSum`; `InvolutiveNeg`; `DiscriminantGroup` (`…/Discriminant/Group.lean:109`/`:109`) | — |
| Discriminant group | `natCard_discriminantGroup_ofGramMatrix` (`…/Discriminant/Cardinality.lean:102`); `exponent_discriminantGroup_dvd_level` (`…/Level.lean:131`) | The first is a simp lemma with a `det ≠ 0` side condition |
| Unit filtration and squares | `unitFiltration` (`NumberTheory/LocalField/UnitFiltration/Basic.lean:99`/`:104`); `card_squareClasses` (`…/PowerSubgroup/Basic.lean:414`/`:390`, value `4 * Nat.card 𝓀[K] ^ natCastValuation K 2 h2`); `unitFiltration_le_range_powMonoidHom_two_iff` (`…/Squares.lean:271`/`:263`, iff `2·v(2)+1 ≤ n`) | Values and hypotheses match README:58 |
| Unramified extensions | `IsUnramified` (`…/Unramified/Basic.lean:113`/`:115`); `isUnramified_iff_etale` (`:275`/`:277`); `existsUnique_isUnramified_finrank_eq` (`…/Unramified/Existence.lean:386`/`:386`) | — |
| Dyadic square classes | `card_squareClasses_padic_two` (`…/SquareClass.lean:128`/`:128`, value 8); `card_unitSquareClasses_padic_two` (`…/UnitSquareClasses.lean:203`); `Padic.not_isSquare_five` (`…/Padic.lean:181`/`:283`, root `Padic` namespace); `exists_eq_neg_one_pow_mul_five_pow_mul_sq` and `isSquare_coe_iff_mem_unitsPrincipal_three` (`NumberTheory/Padics/SerreSigns.lean:194, 219`/`:232, 249`); `unramifiedQuadraticPoly = X^2+X+1` (`…/WorkedExamples/UnramifiedQuadratic.lean:53`) | — |
| Mathlib at 1b1ccf4 | `Matrix.IsSymm.ext` (`Mathlib/LinearAlgebra/Matrix/Symmetric.lean:47`), `Monoid.exponent` (`Mathlib/GroupTheory/Exponent.lean:72`), `Pi.basisFun` (`Mathlib/LinearAlgebra/StdBasis.lean:120`), `hensels_lemma` (`Mathlib/NumberTheory/Padics/Hensel.lean:460`) | — |

**Ownership and duplication.** The changed passages add no construction: every new citation is a pinned declaration or a supplier section. I searched Tau Ceti at both revisions, the `Suggested.lean` files on main and the K3, EnriquesSurfaces and IntegralLattices heads for a U⊕E₈(−1) declaration. Only this roadmap's `enriquesNumericalLattice` declares one; an IntegralLattices docstring mentions the K3 lattice, which is a different lattice. Ownership was checked against the open pull requests whose checkouts the brief supplies; others were not checked.

**Sources freshly checked for the changed passages.** None of the fifteen seeded-sample targets is itself changed. §3.7 was recomputed because it sits between the changed §3.6 and §3.8. §4.4 was confirmed not to depend on the changed §6.0b split.
- SCH23 Proposition 5.5 (pp. 15–16), lines 659–702, for §§3.7–3.9. The global-to-dyadic matching is correctly labelled as an added comparison: the source's proof works over W(F₂^sep) via Hensel.
- SCH23 Proposition 6.2 (p. 19), lines 829–839, for §4.2. The source reduces to an algebraically closed field and cites a rationality theorem; the README's χ/Leray/canonical-formula route expands that step.
- SCH23 lines 1856–1859 (p. 42) and 1929–1932 (p. 43): invariant factors (2,2), discriminant group "elementary abelian of order four". This is exactly the new order-and-exponent form.
- Lang1983 lines 757–762, Theorems 4.1–4.2, for §1.26. The hypotheses are unchanged by the carrier swap.

**Headlines.** The headline families and the docstring's list of non-statable ones are unchanged. The four statable headlines are present: the positive-cone decomposition, the dyadic classes and the two discriminant groups. No stand-in was added.

**Adversarial table.** 19 fresh rows cover every changed statement, convention and locator; 115 rows are carried from [r2] for statements the diff leaves untouched, and these cover all fifteen sample targets and the remaining headlines. Count checks are consistency checks, not proofs.

| Statement | Instances tried | Computed values on the two sides | Result; change |
| --- | --- | --- | --- |
| `enriquesNumericalLattice` (README:54, §1.26, §0.4 Needs; Suggested.lean:44–46) | Mathlib `CartanMatrix.E 8` negated, plus U; leading minors | E₈ leading minors 2,4,6,5,4,3,2,1 and det 1 (positive definite); det(U⊕E₈(−1))=(−1)·1=−1; diagonal 0,0,−2⁸ (even); signature (1,9) | Same even unimodular (1,9) lattice as the former D₈⁺ model, via `typeE₈IsometryD8Plus`; no change |
| `positive_cone_decomposition` on the new carrier | h=d=e+f; h=e+f, d=2e+f+r₁; h=e+f, d=3e+3f+r₁+r₂ with adjacent roots (r₁·r₂=1); control d=−(e+f) | (h²,d²,d·h)=(2,2,2): split e,f, squares 0,0, pairings 1,1. (2,2,3): split e, e+f+r₁, squares 0,0, pairings 1,2. (2,16,6): split e, 2e+3f+r₁+r₂, squares 0,10, pairings 1,5. Control: d·h=−2 violates the hypothesis | Holds in all three; hypotheses match Lang1983 Theorem 4.2, line 760; the statement is isometry-invariant, so the carrier swap keeps its truth value |
| `firstLattice_discriminant_group` (now order and exponent) | Exact inverse of `firstGram`; Smith form; the 2¹⁰ dual combinations; rank-one control [−4] | det −4; inverse denominators {1,2}, so 2N₁⁻¹ is integral and N₁⁻¹ is not; Smith 1⁸,2,2; 4 classes, half-norms 0,0,0,1/2. Control [−4]: order 4, exponent 4 | True. Order 4 with exponent 2 forces (ℤ/2)², so it is equivalent to the former `≃+` form; matches SCH23 lines 1858–1859 |
| `secondLattice_discriminant_group` | Exact inverse of `secondGram` (D₈(−1)⊕U) | det (4)·(−1)=−4; inverse denominators {1,2}; Smith 1⁸,2,2; 4 classes, half-norms 0,0,0,1/2 | True; matches SCH23 lines 1931–1932 |
| New §6.2 Check (exponent and [−4] control) | N₁ and [−4] | 2N₁⁻¹ integral → every class has order ≤2; [−4]: dual (1/4)ℤ, quotient ℤ/4, order 4, exponent 4 | The Check is correct and separates the two order-four groups |
| One-tactic probe on the four admitted theorems | `rfl`, `simp`, `simp [firstLattice]`/`[secondLattice]`, `norm_num [lattice, Gram]`, `infer_instance` | 0 of 12 attempts closed. `simp [firstLattice]` leaves both conjuncts: `natCard_discriminantGroup_ofGramMatrix` needs `det ≠ 0`, and no lemma gives the exponent | Not padding; it is the same content as the headline [r1] retained |
| LocalFieldsRamification contract (README:19, :58) | ℚ₂ and ℚ₃ in `card_squareClasses` and `unitFiltration_le_range_powMonoidHom_two_iff` | ℚ₂: 4·2¹=8, equal to `card_squareClasses_padic_two`; ℚ₃: 4·3⁰=4. Depth 2v(2)+1: ℚ₂ gives 3, and U(ℚ₂,2) contains 5, which is not a square (`Padic.not_isSquare_five`), while 1+8ℤ₂ consists of squares; ℚ₃ gives 1 | The prose matches the pinned statements at both revisions |
| §3.6 Needs (dyadic representatives) | All 8 triples | 1,5,2,10,−1,−5,−2,−10: eight distinct classes = `card_squareClasses_padic_two` | Supplier names resolve at both revisions |
| §3.8 Needs | ℚ₂ˣ/(ℚ₂ˣ)² | Group of order 8; the difference of two covers is one element of it, and its class 5 has order 2 | Consistent |
| §3.9 unramified model and twist | z²−z−1 versus z²−2 over ℤ₂; X²+X+1; c=(−1)^e2^a5^b | Discriminants 5 (unit: étale) versus 8 (ramified); 5·(−3)=−15≡1 mod 16, so the same quadratic extension. c·(−1)^e2^a=4^a5^b∈{1,5} mod squares; among 1,−1,2,−2 only 1 lies in {1,5} mod squares (−1≡7 mod 8; ±2 odd valuation), so u is unique | `isUnramified_iff_etale` and `existsUnique_isUnramified_finrank_eq` at f=2 apply; [3.6] correctly added to Needs |
| §3.7 global twist (sample; adjacent to changed §§3.6, 3.8) | All 8 triples | r·u=1,5,4,20,1,5,4,20; 5^b(2^a)² gives the same list | Freshly recomputed; unchanged |
| Layer 3 dependencies; WeilConjectures §§7.13–7.14 | q=2,4 | 1+10·2+4=25; 1+10·4+16=57 | The only change is that the local-field supplier is now cited by its declarations; consistent |
| §4.1 Needs: field change by NeronModelsAndSemistableAbelianVarietiesPartII §2.1 | k versus k̄; E×P¹ | Néron Part II §2.1 says field extension gives the base-changed fibration; the K3 §6.0b invariance runs only between algebraically closed fields | The repointed supplier is correct |
| §4.2 rewritten route | χ(O_J)=1, T=0; inverted-L control | deg L=−χ−length T=−1 ⇒ R¹j_*O=O(−1); ω=j*(O(−2)⊗O(1))=O(−F); h⁰(ω²)=h⁰(O(−2F))=0; h¹(O_J)=h¹(ℙ¹,O)+h⁰(O(−1))=0. Inverted L: R¹=O(1) with h⁰=2 and ω=O(−3F) | Agrees with the Néron Part II §4.1 Check (rational Jacobian: L≅O(−1)) and the K3 §6.0b Check (χ=2: O(−2), ω=O) |
| Split between K3 §6.0b and Néron Part II (README:20, :74, :75) | Supplier text at the heads | K3 §6.0b covers no multiple Jacobian fibres, invertible R¹j_*O and χ(O_X)=χ(O_J), quasielliptic case included, and consumes Néron Part II §§2.1, 4.1–4.2, 4.17 | Matches both suppliers; no dual ownership |
| §0.4 Needs: IntegralLattices 6A | Signature (1,9) | k=(9−1)/8=1, so the even case gives U¹⊕E₈(−1)¹ | Main defines 6A (IntegralLattices README:1643); the overlap lead is a false positive |
| Tau Ceti locators (README:52, :54) | `Basic.lean`, `TypeE`, `D8Plus`, `TypeD` at a91d3aa and 2fd255d | Structure at line 63 at both (line 61 is docstring); `typeE₈RootLattice` at `TypeE.lean:659` / `TypeE/Basic.lean:676`; `checkerboardPlusLattice` only at 2fd255d (`TypeD/Plus.lean:160`) | R01 and R02 |
| Pins (README:44, :52; Suggested.lean:15–16) | Branch manifest versus main manifest | Branch: Mathlib 6b7abb3, Tau Ceti a91d3aa, Lean v4.35.0-rc3; stated and main eaf17b1: 1b1ccf4, 2fd255d, v4.36.0-rc2 | R02 |
| Lean form after the edit | 10 `#check @name`; imports at both revisions | 10 types, 0 lost binders (no `variable` block); 4 `sorry` warnings and nothing else; `D8Plus.Isometry` exists at both revisions and publicly imports `TypeE` (a91d3aa) or `TypeE.Basic` (2fd255d) | Elaborates at the branch pin; no padding or stand-in added |
| Scope, conventions, supplier §7.12; downstream paragraph | Classical and nonclassical characteristic-two surfaces; K3 and abelian controls | χ(O)=1−0+0=1 or 1−1+1=1; K3 χ=2 and abelian χ=0 fail; b₂=ρ=10 in both Enriques cases | Correct supplier section; no classical-only narrowing; carried from [r2] |
| 0.2 Pic^τ | μ₂, α₂, constant ℤ/2 in characteristic two | Lengths 2,2,2 versus geometric point counts 1,1,2 | Rechecked after supplier repair; carried from [r2] |
| 0.3 coherent invariants | Classical and nonclassical characteristic-two cases | (h¹,h²)=(0,0),(1,1); both give 2(h¹−h²)=0=b₁ and χ=1 | Nonclassical case retained; carried from [r2] |
| 1.1 half-fibre | Smooth 2E, double IV*, zero divisor | 2E=2E; central coefficient 2·3=6 versus twice reduced support 2; twice zero 0≠2E | Supplier edit preserves multiplicities; carried from [r2] |
| 1.2 curves and two-sections | Root, conjugate pair, degree-four curve | p_a=1−2/2=0; conjugate union has square −2 but two geometric components; R·F=2 gives R·2F=4≠2 | Geometric integrality and degree conditions unchanged; carried from [r2] |
| 1.3 canonical-type fibration | Primitive D and 2D | D²=(2D)²=0; coefficient gcd 1 versus 2; same pencil, multiplicities 1 versus 2 | Full and half fibres remain distinct; carried from [r2] |
| 2.1 family | Constant family over k[ε]/ε²; P² | Fibre dimension 2 in both; Enriques b₂=10 versus P² b₂=1; ε²=0 changes the base, not the geometric fibre | Nonreduced bases retained; carried from [r2] |
| 2.3 relative invariants | R=k[ε]/ε²; R[t]/t² versus R[t]/(t²,εt) | Special-fibre lengths 2 in both; total lengths 4 versus 3; coherent pairs (0,0),(1,1) both give 0=2(h¹−h²) | Flatness contract still required; carried from [r2] |
| 3.2 numerical constancy and count | Residue p=2,3; extension F₄ | 1+10·2+4=25; 1+10·3+9=40; 1+10·4+16=57 | Repaired citation supplies these without full Picard constancy; carried from [r2] |
| 3.3 local projectivity | Z₂ and Z₃; section splitting | 25>0 and 40>0; s* f*=id gives obstruction-map kernel 0; an open containing the closed point of Spec R is all Spec R | Section and Noetherian local hypotheses retained; carried from [r2] |
| 4.4 and repaired LLR reference | Simple versus double torsor fibre; split I₂ over F₂ | Simple multiplicities 1=1; double torsor versus Jacobian 2≠1; on each I₂ component, 3−2=1 smooth rational point remains | Residue-field isomorphism stays in §4.4; supplier §3.11 compares geometric type; carried from [r2] |
| 4.10 auxiliary count | I₁, nonsplit I₁, I₂, nonsplit I₂, additive r=7; II*+E₄+I₁ | Counts 2,4,4,6,15; 19+4+2=25=1+20+4 | Num-only total precedes Jacobian Picard constancy; carried from [r2] |
| 5.2 quasielliptic component sum | Three rational base points; component triples | 10=2+Σ(r−1)=Σr−1, hence Σr=11; 9+1+1=11, 8+2+1=11, 7+2+2=11 | Rank normalization retained; carried from [r2] |
| 6.4 affected generic Picard quotient | L=T and degree 2m; either index-two lattice | T−(T·F)T=0; degree(L−mT)=2m−2m=0; index √4=2; Pic⁰ order 2 versus infinite Pic⁰⊕ℤ | Deleted Lean cardinality statements are not prerequisites; carried from [r2] |
| SCH23 Corollary 7.2 field-subscript control | Projective plane over F₄ | 1+1·4+4²=21=#P²(F₄); the descended P² has 7 F₂-points, not 21 | Source subscript misprint; roadmap uses F_q correctly; carried from [r2] |
| Conventions: full/half fibre | R·F=1; F·F′=1 | R·2F=2·1=2; (2F)·(2F′)=4·1=4 | Consistent; none; carried from [r2] ([r1]) |
| Conventions: signs and Frobenius | U basis e,f; a root; q=2,4 | e²=f²=0, e·f=1, (e+f)²=2; root²=−2; untwisted eigenvalues 2,4 versus twisted 1,1 | Consistent; none; carried from [r2] ([r1]) |
| Numerical-descent contract | Split/nonsplit quadric; α₂ over k[ε]/ε² | Split rank 2 versus nonsplit invariant rank 1; α₂ coordinate k-length 4 versus geometric point count 1 | Hypotheses distinguish the cases; carried from [r2] ([r1]) |
| Picard-flatness contract | Classical/nonclassical Enriques | b₁=0=2(0−0)=2(1−1); nonflat test below has length 3≠4 | Consistent conditional contract; carried from [r2] ([r1]) |
| Finite-local-group contract | α₂ over W₂(k); ramified π²=2 | Unramified Oort–Tate a,b∈(2) gives ab=0≠2; ramified a=b=π gives ab=2 | W₂ obstruction does not exclude ramified lifts; carried from [r2] ([r1]) |
| One-obstruction contract | k[[t₁,…,t₁₂]]; W[[t₁,…,t₁₂]]/(2−t₁²) | Both regular dimension 12; first has 2=0 and is not W-flat, second has 2=t₁²≠0 and is W-flat | Independent characteristic-zero premise matters; carried from [r2] ([r1]) |
| Differential obstruction contract | Classical exceptional versus supersingular | ord(ω)=2 versus 1; classical h⁰(L)=h⁰(Lω)=1 | Supersingular case correctly excluded from this input; carried from [r2] ([r1]) |
| Fontaine contract | K3 and ℙ² over characteristic zero | h²(O_K3)=1 versus required off-diagonal 0; h²(O_ℙ²)=0 | Correct obstruction, conditional on settled source; carried from [r2] ([r1]) |
| 1.4 half-fibre iff | F; 2F; 0 | Squares 0,0,0; primitive flags 1,0,0 and nonzero flags 1,1,0 | Both directions use all stated conditions; carried from [r2] ([r1]) |
| 1.5 reflection | C²=−2, D·C=−1 | (D−C)·C=1; (D−C)²=D²−2(−1)−2=D² | Reflection sign correct; carried from [r2] ([r1]) |
| 1.6 genus-one existence | U basis isotropic vector | e²=0 and divisibility gcd(1,0)=1; zero vector divisibility 0 | Numerical input consistent; geometric existence separately sourced; carried from [r2] ([r1]) |
| 1.7 multiple fibres | 2F versus candidate 3F | Primitive multiplicity gcd 2 versus 3; 2F has even intersection with every divisor | The target excludes multiplicity 3; carried from [r2] ([r1]) |
| 1.8 integral two-section | Square −2 and square 0 | Adjunction arithmetic genera 0 and 1; degree against 2F is 2 in both | Neither branch is suppressed; carried from [r2] ([r1]) |
| 1.9 classical criteria | Classical; nonclassical char 2 | (ordω,h¹,number of tame doubles)=(2,0,2); nonclassical ordω=1,h¹=1 | Correct direction and characteristic split; carried from [r2] ([r1]) |
| 1.10 canonical bundle | Distinct tame half-fibres F₁,F₂ | 2(F₁−F₂) linearly 0; numerical class 0; canonical order 2 rather than 1 | Numerical zero is not line-bundle zero; carried from [r2] ([r1]) |
| 1.11 tame types | E₂/E₄ and E₁/E₃/E₅ over F₂; semistable fibre | Traces 3−n are odd for n=2,4 and even for n=1,3,5; two tame positions exclude semistable/supersingular candidates | Consistent; carried from [r2] ([r1]) |
| 1.12 ordinary type | μ₂ versus constant ℤ/2 | Lengths 2=2; points 1≠2; dual μ₂↦ℤ/2 | Scheme condition discriminates; carried from [r2] ([r1]) |
| 1.13 classical type | Constant ℤ/2 versus μ₂ | Points 2≠1; canonical order 2≠1; dual ℤ/2↦μ₂ | Consistent; carried from [r2] ([r1]) |
| 1.14 supersingular type | α₂ versus μ₂ | Both have one point; α₂ coproduct t⊗1+1⊗t versus μ₂ extra t⊗t; α₂ self-dual | Point count alone correctly insufficient; carried from [r2] ([r1]) |
| 1.15 local canonical cover | Integral degree-two torsor versus trivial product torsor | Generic degree 2; radicial geometric fibre point count 1; trivial μ₂/α₂ torsor has nonzero nilpotent t with t²=0 | Integrality excludes trivial wrong model; carried from [r2] ([r1]) |
| 1.16 cover cohomology | K3-like cohomology | h⁰−h¹+h²=1−0+1=2 | Correct Euler characteristic; carried from [r2] ([r1]) |
| 1.17 conductrix | C≠0, B=2C; reduced tree; C=0 | C²=−2, B²=−8, χ(O_B)=4; exceptional h¹=1 gives h⁰=5; reduced tree h¹=0; empty divisor h¹=0 | Thickened divisor essential; carried from [r2] ([r1]) |
| 1.17a differential sequence | C²=−2 versus C=0 | length(W)=12+(2C)²=4 versus 12; h⁰(O_Y(2C))=1 is not h⁰(O_2C)=5 | Corrected source notation used; carried from [r2] ([r1]) |
| 1.18 exceptional iff | Special double IV*/III*/II*; ordinary | Exceptional flag 1 with special double fibre; ordinary Pic^τ=μ₂ gives exceptional flag 0 | The iff uses a rational two-section, not merely a type label; carried from [r2] ([r1]) |
| 1.19 quasielliptic restriction | III*, II*, each multiplicity 1 and 2 | Four type/multiplicity pairs all give exceptional=1 by ESB3.16; none satisfies nonexceptional=1 | Sample consistent; carried from [r2] ([r1]) |
| 1.20 special multiple restriction | Rational R with R·F=1 | R·2F=2; special-double criterion forces exceptional=1, contradicting premise 0 | Consistent; carried from [r2] ([r1]) |
| 1.21 extra-special E₈ | T₂,₃,₇ versus affine E₈ alone | Arms 1,2,6 give 1+1+2+6=10 vertices and 9 edges; affine E₈ alone has 9 vertices | Full-graph condition discriminates; carried from [r2] ([r1]) |
| 1.22 E₈ implies exceptional | Full T₂,₃,₇ | Ten-vertex graph satisfies ESB4.3; resulting exceptional flag 1 rather than 0 | Sample consistent; carried from [r2] ([r1]) |
| 1.23 partner theorem | Nonexceptional half-fibre; unique-pencil E₈ | Partner F·F′=1 versus same pencil F²=0; full intersections 4 versus 0 | Exception retained; carried from [r2] ([r1]) |
| 1.24 partner pencil | Characteristic-two nonexceptional pair | Half intersection 1 gives full intersection 4 | Consistent; carried from [r2] ([r1]) |
| 1.25 distinct pencils | F′=F; partner; hypothetical half intersection 2 | Full products 0,4,8 respectively; equality 4 iff half product 1 | Distinctness excludes zero; both directions tested; carried from [r2] ([r1]) |
| 1.26 effective/two-section application | T²>0, generic degree 2 | Two positive horizontal degrees would sum at least 4>2; exactly one remains horizontal; degree after vertical subtraction is 2−0=2 | Generic class, not just degree, preserved by vertical restriction; carried from [r2] ([r1]) |
| 2.2 relative Picard | Connected proper geometric fibre | H⁰(O)=k has dimension 1; pullback of constants is k→k, identity | Universal-functions premise retained; carried from [r2] ([r1]) |
| 2.4 canonical torsor | Canonical inclusion versus trivial torsor; empty base | Edge classes inclusion Pic^τ→Pic versus 0; nonempty Pic^τ has rank 2, so inclusion≠0; over empty base both maps uniquely coincide | Correct edge-class definition; carried from [r2] ([r1]) |
| 2.5 five-term obstruction | Section s of f | s*f*=id, so kernel f* on H² is 0; exactness gives obstruction 0 | Map directions correct; carried from [r2] ([r1]) |
| 2.6 injective pullback | Injective H² map | ker f*=0, hence image obstruction=0 | No arbitrary surjectivity of edge map assumed; carried from [r2] ([r1]) |
| 2.7 section criterion | Identity f=s=id | f*s*=id; canonical obstruction maps to 0 and was 0 | Consistent; carried from [r2] ([r1]) |
| 2.8 étale Pic torsion | Order-two ω, Pic(base)=0 | O⊕ω⁻¹ has rank 1+1=2; multiplication uses ω⁻²≅O | Existence uses trivialization of the square; carried from [r2] ([r1]) |
| 2.9 twisting | Trivial twist; twice a μ₂-class | Twist by 1 leaves class unchanged; [a]+[a]=[a²]=0; [5]≠0 over ℚ₂ | Free transitive action, not a canonical choice of origin; carried from [r2] ([r1]) |
| 2.10 constant/split Picard | ℝ-action e₁↦e₁+τ; split α₂ extension | Action squared e₁↦e₁+2τ=e₁; any lift e₁+cτ changes by τ≠0; α₂ geometric torsion points 1 versus constant ℤ/2 points 2 | Constant Num does not imply split or constant full Picard; carried from [r2] ([r1]) |
| 2.11 canonical covers | Units modulo squares with trivial Pic(base) | Unit 1 gives identity twist; 5 is nontrivial over ℚ₂; a² gives trivial class | Kummer domain and obstruction separated; carried from [r2] ([r1]) |
| 2.12 canonical order | Full constant Picard; α₂ case | Nonzero torsion class has order 2; α₂ has one geometric point and ω order 1, so fails full constancy | Sample consistent; carried from [r2] ([r1]) |
| 2.13 numerical descent | Two lifts differing by ω | Both map to same Num class; kernel has 2 elements over geometric classical field | Uniqueness is modulo ω; carried from [r2] ([r1]) |
| 2.14 nodal descent | Split rational curve over F₂ | P¹(F₂) has 3 points; conic Brauer obstruction 0 | Finite-field form is split; carried from [r2] ([r1]) |
| 2.15 fibration descent | Conic base over F₂ | Br(F₂)=0; descended base P¹ has 3 rational points | Rational base justified; carried from [r2] ([r1]) |
| 2.16 double-fibre descent | Classical fibration over F₂ | Exactly 2 tame double fibres among 3 rational base points; remaining count 1 | Multiplicity and base rationality retained; carried from [r2] ([r1]) |
| 2.17 residue-field existence | Descent of one geometric pencil | One descended pencil; its base has 3 rational points, not a selected section of the surface | No false section conclusion; carried from [r2] ([r1]) |
| 2.18 finite-field descent | F₂ and F₄ | Pic=0, Br=0 in both; P¹ point counts 3 and 5 | Sample does not specialize away the general field statement; carried from [r2] ([r1]) |
| 3.4 μ₂ branch | Pic^τ=μ₂ over ℤ₂ | Cartier dual is étale ℤ/2, degree 2 | Correct dual, not μ₂ as covering group; carried from [r2] ([r1]) |
| 3.5 four global twists | ℤ[1/2] units | ±2^n modulo squares gives {1,−1,2,−2}, cardinality 4 | All four retained; carried from [r2] ([r1]) |
| 3.7 global twist | Triples (000),(001),(010),(011),(100),(101),(110),(111) | r·u=1,5,4,20,1,5,4,20 respectively; 5^b(2^a)² gives exactly the same list | All eight products agree; carried from [r2] ([r1]) |
| 3.10 K3 cover | Étale degree 2 | χ upstairs=2·1=2, connected h⁰=1 and ω=O give h²=1, h¹=0 | Correct K3 invariants; carried from [r2] ([r1]) |
| 3.10a fundamental group | Ordinary/char≠2; classical/supersingular char2 | Orders 2 versus 1; connected étale degree d satisfies d=χ(cover)≤2 | Local canonical cover is not an étale generator; carried from [r2] ([r1]) |
| 3.11 local models | Class 5 model; odd primes | z²−z−1 mod2=z²+z+1 has values 1,1 at 0,1 and derivative 1; degree2 étale; 2 is a unit at every odd prime | Unramified residual twist extends; sample consistent; carried from [r2] ([r1]) |
| 3.12 extension splitting | Rank n=0,1,10 | Zero obstruction for each of n basis lifts gives 0,1,10 choices of lifts to make; extension rank remains n | Uses vanishing of ℤ/2 torsors, not merely constant quotient; carried from [r2] ([r1]) |
| 3.13 full Picard over ℤ | Two Oort–Tate possibilities | μ₂ branch would give K3 h²(O)=1 versus Fontaine 0; surviving ℤ/2 has two geometric points | Correct conditional contradiction; carried from [r2] ([r1]) |
| 4.5 nonrational fibres | Closed point degree 2 | Reducible flag 1 would force residue degree 1; degree 2 therefore permits only irreducible geometric fibre | Correct contrapositive; carried from [r2] ([r1]) |
| 4.6 no I₀* | Central component with four outer attachments over F₂ | Four distinct required rational points versus #P¹(F₂)=3 | 4>3 contradiction; carried from [r2] ([r1]) |
| 4.7 graph descent | Nonsplit I₁ and I₂ | Rational point counts 4,6 versus split 2,4; component labels unchanged while conjugate branches differ | Graph descent does not imply split nodes; carried from [r2] ([r1]) |
| 4.8 at most one excluded tame type | Three rational base points, two tame doubles | 3−2=1 possible semistable/supersingular position | Correct bound; carried from [r2] ([r1]) |
| 4.9 Mordell–Weil descent | Generic line bundle of degree 2; geometric Tsen | Subtracting one two-section gives degree 2−2=0; Br(k̄(t))=0 used, not Br(F₂(t)) | Domain retained; carried from [r2] ([r1]) |
| 4.11 Jacobian Picard | ρ=10,q=2 | Auxiliary total 25=1+10·2+2² | Correct maximal-count input; carried from [r2] ([r1]) |
| 5.1 fourteen elliptic rows | All fourteen displayed rows in order | Totals 19+4+2,19+2+4,17+4+4,17+2+6,17+4+4,15+3+7,15+5+5,19+4+2,13+4+8,13+5+7,16+4+5,15+4+6,17+4+4,15+4+6; all 25 | Necessary counts agree; completeness remains supplier theorem; carried from [r2] ([r1]) |
| 5.3 four quasielliptic rows | Six allowed symbols | 9+1+1=11 twice with distinct symbols; 8+2+1=11; 7+2+2=11; 7+2+1=10 fails | Exactly four symbol triples; carried from [r2] ([r1]) |
| 5.4 forced doubles | Additional IV*+E₄+Ĩ₂ | Ĩ₂ cannot be tame double; two remaining positions = two required doubles | Added nonsplit branch retained; carried from [r2] ([r1]) |
| 5.5 simple III* | III*+E₄+I₂; III*+E₂+Ĩ₂; III*+E₄+E₄ | First two reserve one simple semistable slot and force III* double; last has two smooth double slots | One simple-III* candidate remains; carried from [r2] ([r1]) |
| 5.6 forbidden rational bisection | R·F=1, R²=−2 | R·2F=2; special-double criterion gives exceptional=1 versus premise 0 | Consistent; carried from [r2] ([r1]) |
| 5.7 three new exclusions | Three added Jacobian rows | Counts 15+4+6=25,17+4+4=25,15+4+6=25 | Counts do NOT exclude them; new proof target correctly explicit; carried from [r2] ([r1]) |
| 5.8 F₂ partner | Descended F,F′ | Intersection remains 1 after extension; full intersection 4 | Correct descent invariant; carried from [r2] ([r1]) |
| 5.9 I₈ elimination | I₈+E₄+III candidate | Points 16+4+5=25; root rank 7 | Count alone insufficient; graph/partner proof retained; carried from [r2] ([r1]) |
| 5.10 II* elimination | II*+E₄+I₁; II*+II+II | Counts 19+4+2=25 and 19+3+3=25; E₈ root rank 8 | Uses exceptionality/partner geometry, not count alone; carried from [r2] ([r1]) |
| 5.11 no double I₄* | I₄*+E₄+E₂; quasielliptic version | Counts 19+4+2=25 and 19+3+3=25; primitive central coefficients doubled 2→4 | Multiplicity remains a separate restriction; carried from [r2] ([r1]) |
| 5.12 IV* elimination | IV*+E₃+IV; IV*+E₅+III | 15+3+7=25;15+5+5=25; smooth E₄ in extra row has 4 points, not the other half-fibre type | New row correctly handled in §5.7; carried from [r2] ([r1]) |
| 5.13 IV elimination | D₅ and A₂ components in same fibre branch | Required additional incidence lower bound 3 versus available 2 | 3>2 contradicts the branch; carried from [r2] ([r1]) |
| 5.14 residual list | Fourteen elliptic plus four quasielliptic | 18 candidates minus 9 elliptic and 1 quasielliptic removals =8; 5 elliptic+3 quasielliptic | Requires both classification obligations; carried from [r2] ([r1]) |
| 5.15 residual multiplicities | I₁*, I₄*, semistable | Multiplicities 2,1,1 respectively | Matches tame exclusions and §5.11; carried from [r2] ([r1]) |
| 6.1 firstGram/firstLattice | e₁,e₁/2,e₁+e₂,−2e₁; entries | Norms −2,−1/2,−2,−8; e₁/2 outside ℤ-span; entries (8,3)=1,(8,9)=1,(9,9)=0 | Native carrier excludes rational wrong model; carried from [r2] ([r1]) |
| 6.1 secondGram/secondLattice | Same vectors; fork and U entries | Same four norms; (8,3)=0,(8,8)=0,(8,9)=1,(5,6)=(5,7)=1 | Distinguishes the two matrices; carried from [r2] ([r1]) |
| 6.5 generating two-section | Nontrivial coset in group of order2 | [R̃]≠0, 2[R̃]=0; degree2 retained; self-intersection possibilities −2,0 | Coset-preserving refinement stated; carried from [r2] ([r1]) |
| 6.6 spinor incidences | Four cross-tip pairs versus same-end pair | Cross-tip q=0; {0,1} and {7,8} vector-class q=1/2; weighted degree2 in each | Even overlattice excludes wrong pair; carried from [r2] ([r1]) |
| 6.7 square-zero calculation | C₈*+nR*+F*, n=0,1,2 | Square −2−2+2·2+2n=2n gives 0,2,4; square0 iff n=0 | Sign and factor2 agree; carried from [r2] ([r1]) |
| 6.8 first forbidden graph | Smooth locus of chosen half-fibre | Required distinct rational points ≥3 versus available2 | 3>2 contradiction; carried from [r2] ([r1]) |
| 6.9 opposite-tip argument | Remaining cross-tip orbit | Weighted degree 1+1=2; same spinor q=0; forbidden completion reached without using §6.12 | No local dependency cycle; carried from [r2] ([r1]) |
| 6.10 second forbidden graph | R·C₀=2,R·C₂=1 | Full fibre incidence 2+2·1=4; paired half-fibres intersection1 | Both spinor branches retained; carried from [r2] ([r1]) |
| 6.11 I₄* incidences | Weights (1,1,2,2,2,2,2,1,1) | Degree2 vectors: 4 doubled tips+6 tip pairs+5 internal=15; orbit sizes 1,2,2,2,4,4 sum15 | Six orbits confirmed; carried from [r2] ([r1]) |
| 6.12 no I₄* | Elliptic and quasielliptic I₄* candidates | Two type triples, six incidence orbits each; all use the preceding exclusions; raw counts still25 | No count-only shortcut; carried from [r2] ([r1]) |
| 7.1 no multiple III* | Primitive auxiliary D and C₆ | D·C₆=1; full fibre 2D gives2; two remaining III slots contain exactly one additional double fibre | Parity retained; not both additional fibres declared simple; carried from [r2] ([r1]) |
| 7.2 III* incidences | Weights (1,2,2,3,4,3,2,1) | Degree2 vectors 2 doubled tips+1 tip pair+3 weight2 entries=6; reversal orbit sizes1,1,2,2 | Four cases independently confirmed; carried from [r2] ([r1]) |
| 7.3 no simple III* | C₂ and double-terminal branches | Required full-fibre intersection ≥8 versus4; terminal construction gives2 versus minimum4 | Both contradictions use full fibres; carried from [r2] ([r1]) |
| 7.4 restricted configurations | I₁*+I₄; I₂*+III+III | Root ranks 5+3=8 and6+1+1=8; partner construction produces IV*/I₀*/I₄ outside the two allowed patterns | No characteristic-two lemma applied universally; carried from [r2] ([r1]) |
| 8.1 tangent cohomology | (0,10,0);(1,12,1) | χ=0−10+0=−10;1−12+1=−10; also −c₂+2χ(O)=−12+2=−10 | Source sign error not propagated; carried from [r2] ([r1]) |
| 8.2 supersingular W₂ obstruction | Pic^τ=α₂ | a,b≡0 mod2 gives ab=0 in W₂, whereas rank-two lift needs ab=2≠0 | Correct nonlifting check; carried from [r2] ([r1]) |
| 8.3 lifting iff | Ordinary/nonexceptional classical versus exceptional/supersingular | Obstruction h²Θ=0 versus1; ω orders1 or2 distinguished; exceptional h⁰(L)=h⁰(Lω)=1 | Separate α₂ and differential routes; carried from [r2] ([r1]) |
| 8.3a ramified characteristic-zero lift | V with π²=2 | 2=π², ramification2; quotient V/(π²) has 2=0 whereas W₂(k) has 2≠0 | Ramified lifting does not contradict W₂ nonlifting; carried from [r2] ([r1]) |
| 8.4 miniversal ring | Smooth case; regular ramified hypersurface | dim W[[t₁,…,t₁₀]]=11; dim W[[t₁,…,t₁₂]]/(2−t₁²)=12; e=1 versus2 | Dimension and ramification equivalences consistent; carried from [r2] ([r1]) |
| 8.5 modulo-four obstruction | ℤ/4→W₂(F̄₂) | 2≠0, 2²=0 on both; reduction is a scheme, so nilpotent thickening is a scheme | Algebraic-space scope preserved; carried from [r2] ([r1]) |
| 8.6 finite-field endpoint | Residual eight cases | Remove2 I₄*+4 III* cases from8, leaving2 forbidden universal patterns | Conditional proof chain closes after both classification obligations; carried from [r2] ([r1]) |
| 8.7 integral endpoint | Hypothetical ℤ family reduced mod4 and mod2 | Full Picard constancy=1; exceptional flag forced0; §8.6 excludes their conjunction | No exclusion of prime2 or weakening to schemes; carried from [r2] ([r1]) |
| SCH23 rank-two group-law control | a=1,b=2,f=g=1 over ℤ | Printed plus law gives4 with4²=16≠4; minus law gives0 with0²=0 | Sign misprint; supplier uses the minus sign; carried from [r2] ([r1]) |
| DI21 proof control | W₂(k)[t]/t² and W₂(k)[t]/(t²−2), characteristic two | Both free rank2 with reduction k[t]/t²; lifted t squares are 0 versus2≠0; in the second ring a lift a+bt of t has a∈2W₂, b a unit, and square 2b²≠0 | Scheme-lift uniqueness step is false; see Source issues; carried from [r2] ([r1]) |

## Not verifiable

- No elaboration was run at the stated pins (Mathlib 1b1ccf4, Tau Ceti 2fd255d). The brief allows Lean only from this worktree, whose manifest pins a91d3aa. That build was checked by reading only (see R02).
- CDL2021, BM1977 and Fontaine remain settled as waived, and CD89 and LLR04 as uncertified. No locator that depends on them changed, and no text was requested.
- Untouched statements and locators outside the changed dependency paths were not re-read this round; their evidence and limits are those of [r2] and [r1].
- The fourteen-case completeness and the three extra configuration exclusions remain explicit proof obligations. The six declared supplier gaps are unchanged.

## Source issues

- none

[r1]: packages/EnriquesSurfacesAndIntegralNonexistence/reports/PRREVIEW-EnriquesSurfacesAndIntegralNonexistence~1.md
[r2]: packages/EnriquesSurfacesAndIntegralNonexistence/reports/PRREVIEW-EnriquesSurfacesAndIntegralNonexistence~2.md
