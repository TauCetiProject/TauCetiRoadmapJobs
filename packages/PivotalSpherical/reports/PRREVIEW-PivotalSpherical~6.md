# Review of PivotalSpherical (pull request #2311 at 5c2c18e)

**Verdict:** accepted

No finding. Incremental re-review of the 29 lines changed since `cb9ee7c`.

## Previous findings

- R01 — repaired: README 288: “named `normGlobalDim C a` ([ENO] Definition 2.2, preprint p. 4; [EGNO] Definition 7.21.3, p. 179)”. The description's “a locator or an explicit statement that the target is a deduction” now holds for 6.2.
- R02 — repaired: README 412–417: “by `TauCeti.pivotalIsoApp_eq_drinfeldIso` and `FDRep.drinfeldIso_hom_hom_hom_hom`, the rotation on `𝟙 ⟶ V ⊗ V = (V ⊗ V)^G` is the swap … `Representation.isProj_averageMap`”; the *Needs:* lists the same three and drops `FDRep.trace_eq_smul`.
- R03 — repaired: README 447–449: “For finite `G` over an algebraically closed field of characteristic zero it is [DGNO] Proposition 2.3(iii), preprint p. 7; for every `G` and `R` it is a deduction from the three facts just listed.”
- R04 — repaired: README 559–564: “11.3 gives finite semisimplicity, `CategoryTheory.Center.instFiniteDimensionalHom` gives the finite-dimensional Hom spaces, and Schur's lemma over `k` (`TauCeti.endAlgEquivOfSimple`) gives the scalar endomorphisms”; both are in the *Needs:*.
- R05 — repaired: README 180–182: “*Needs:* Tau Ceti `TauCeti.leftTrace_smul`, `TauCeti.rightTrace_smul`, `TauCeti.leftDim_eq_leftTrace`, `TauCeti.rightDim_eq_rightTrace`, `TauCeti.leftTrace_tensorHom_eq_comp`.”
- R06 — repaired: README 387–388: “which forces `e = 1`; so monoidality alone does not determine the Radford isomorphism.”

## Verified sound

| Statement | Instances | One side | Other side | Result | Change |
|---|---|---|---|---|---|
| 2.1 change of pivotal structure (*Needs:*) | `Vecℤ/ℚ`, `X = δ₁`, `P` canonical, `Q` the twist by `2ⁿ` | `leftDim_P = 1 = leftTrace_Q(2•𝟙) = 2·½`; `rightDim_P = 1 = rightTrace_Q(½•𝟙) = ½·2` | `leftDim_Q ≫ rightDim_Q = ½·2 = 1` | products agree, `1 = 1`; route is `Trace.lean:377, 385` as used at `Simple.lean:102` | — |
| 6.2 locator | `Vec(C₂)/ℂ`, `a = (1,1)`; characteristic `2` | `1 + 1 = 2`; `0` | eno 179 (p. 4) and egno 8946 (p. 179): sum of squared norms of simples | agree | — |
| 6.7 Example (reworded) | `Vec(C₃)/ℂ`, pivot `ζ₃` | `j ≫ jᘁᘁ` has component `ζ₃²`, monoidal | characterization forces `e = 1` | `ζ₃² ≠ 1`: two monoidal candidates, one excluded; sentence true | — |
| 7.1 deduction (Lean 205–207) | `Q₈`, 2-dimensional; `C₃`, `χ ≠ 1`; `C₂`, sign | `(2+2−2·6)/8 = −1`; `(1+ζ²+ζ⁴)/3 = 0`; `(1+1)/2 = 1` | swap on `(V⊗V)^G`: invariant in `Λ²`, `−1`; `(V⊗V)^G = 0`, `0`; `Sym²`, `1` | agree; `tr(swap∘(ρ(g)⊗ρ(g))) = tr(ρ(g)²)` averaged | — |
| 8.2 locator | `G = C₂` over `ℂ`; `G = ℤ` over `ℚ` | `Aut_⊗(𝟭) = {±1}`; `ℚˣ` | DGNO 2.3(iii): `Hom(U_C, kˣ) = Hom(C₂, ℂˣ) = {±1}`; infinitely many simples, outside DGNO | cited only where it applies | — |
| 11.5 deduction | `Z(Vec(C₂))/ℂ` | 4 simples, each `End = ℂ`, Hom spaces of dimension `≤ 1`; twists `1,1,1,−1`, all self-dual | 10.1's hypotheses: finite semisimple (11.3), finite-dimensional Hom, scalar simples | each hypothesis has its named source; `θ_{X*} = θ_X` | — |

Rows for statements the diff does not touch stand as in the previous review, of `cb9ee7c`.

- Source locators checked against the text: 3 (eno 179, page marker 4 at eno 147; egno 8946, page header 179 at egno 8916; dgno 313–317, page header 7 at dgno 270, standing hypothesis at dgno 268).
- Library declarations opened at the pins: `TauCeti/CategoryTheory/Monoidal/Pivotal/Trace.lean:377, 385`; `Pivotal/Simple.lean:99–109`; `Pivotal/Symmetric.lean:65`; `TauCeti/RepresentationTheory/FDRep/Pivotal.lean:55`; `Monoidal/Center/Preadditive.lean:225`; `Preadditive/Schur.lean:58, 66`; Mathlib `RepresentationTheory/Invariants.lean:141`. All seven names the diff adds exist there.
- Cross-roadmap citations: the diff adds none; the resolver lists none missing (its four Lean-name leads are this roadmap's own declarations in `Suggested.lean`).
- Gate at `5c2c18e` (rerun): OK, every check `0`; no file changed outside the folder; `Suggested.lean` is unchanged since `cb9ee7c`.
- Elaboration: `Suggested.lean` gives 19 `sorry` warnings and nothing else.
- Dependency check: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; no UPWARD or CYCLE line.
- The pull request's title and description read against this head: no sentence contradicted; the diff changes no section, headline, declaration or supplier that they describe.
- Remark: the *Needs:* of 11.5 (README 563–564) writes “Tau Ceti” twice in one list; the list is unambiguous.

Overlap check: read PresentationsOfMonoidalCategories, OcneanuRigidity, CategoricalOperatorAlgebras, QuantumGroups, TemperleyLieb; `squaredNorm`, `normGlobalDim`, the Radford isomorphism and the pivotalization are owned by PivotalSpherical and cited by OcneanuRigidity; nothing has two owners.

Source independence: changed passages only; 3 passages compared with 3 sources (eno, egno, dgno), none shared beyond a dozen-word standard definition; largest share egno, 16 of 32 bracketed citations; contents not compared again, since the diff adds, removes and reorders no layer.

## Not verifiable

- `freyd-yetter`: settled as uncertified; no changed passage cites it.

## Source issues

- none

## For the human reviewers

- none
