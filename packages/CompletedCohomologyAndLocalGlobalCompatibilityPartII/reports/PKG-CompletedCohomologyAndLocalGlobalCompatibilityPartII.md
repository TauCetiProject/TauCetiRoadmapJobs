# Package report: CompletedCohomologyAndLocalGlobalCompatibilityPartII

This round wrote these files:

- `packages/CompletedCohomologyAndLocalGlobalCompatibilityPartII/README.md`
- `packages/CompletedCohomologyAndLocalGlobalCompatibilityPartII/Suggested.lean`
- `packages/CompletedCohomologyAndLocalGlobalCompatibilityPartII/metadata.toml`

It edited `sources.toml` and changed two entries of the `gaps` list in `design/plan.json`. Nothing else in `plan.json` changed: a script compared the file with the gaps list removed, before and after, and found them identical.

The README is the accepted design written out in final form. All 21 targets, every API bullet, Check and worked example, every locator and every `*Needs:*` line are kept. The edits below are corrections or the review's non-blocking notes.

## Headline theorems

| Headline | Status | What it lacks at the pins |
| --- | --- | --- |
| Local faithfulness, §4.2 (BIP Theorem 6.8): Ann_{R□}M∞ = 0 for p∤2d | not statable | universal framed local Galois deformation ring and its arithmetic points; the patched module M∞ with its R∞- and GL_d(F)-actions |
| Crystalline density at every prime, §5.2 (BIPD Corollary 5.2) | not statable | framed deformation ring; crystalline predicate and Hodge–Tate weights; Berthelot generic fibre for the rigid form |
| Fixed-weight potentially crystabelline density, §5.3 (BIP Theorem 6.1) | not statable | as above, plus potentially semistable and Weil–Deligne predicates and local Langlands for GL_d(F) |
| Fixed-weight unramified-induced supercuspidal density, §5.4 (BIP Theorem 6.1) | not statable | as §5.3, plus Weil-group induction and irreducibility of Weil–Deligne representations |
| Benign density at every prime, §6.1 | not statable | as §5.2, plus the benign predicate (crystalline Frobenius eigenvalues, refinements) |
| Prescribed inertial type density, §6.3 | not statable | as §5.3, plus inertial types |
| Minimal-stratum supercuspidal density, §6.5 | not statable | as §5.3, plus simple strata and simple characters of hereditary orders |

The pins have none of these carriers. Searches of pinned Mathlib and Tau Ceti for framed/deformation rings, crystalline or Hodge–Tate notions and patched modules found nothing relevant; the hits were knot-theory "framed" and homology-theoretic "deformation". The pinned Tau Ceti has `TauCeti.completedGroupAlgebra` (`.../CompletedGroupAlgebra/Basic.lean:145`) and `TauCeti.IsCompactModule.completedGroupAlgebraModule` (`.../CompletedGroupAlgebra/Module.lean:344`), but these do not supply the arithmetic carriers.

So `Suggested.lean` is the module docstring, which names all seven headlines and what each lacks, plus the empty namespace. No substitute statement is made. This matches the design's specification of the file and the review that accepted it.

## Corrections made in the README

1. **Gap narrowed: gap:completed-tensor-reduced-equidimensional.** Two suppliers now state most of what this gap asked for.
   - LocalGaloisDeformationRings §F.0.1 states that the completed coefficient product is O-flat, has a dimension formula, has equal dimension 1+Σd_i on every minimal-prime quotient of equidimensional factors, and has its components identified with tuples of components under geometric integrality (citing BIP Lemma 6.3).
   - DeformationAndDerivedPatchingAlgebra §4.6 states the dimension dim A+dim B−1 and the component pairs under reducedness, equidimensionality, O-flatness and geometric integrality.
   - Neither states that the completed tensor is **reduced**. The gap's `needs` sentence is narrowed to reducedness and cites the two sections for the rest.
   - This is changed in `plan.json` (gaps list only), in the DeformationAndDerivedPatchingAlgebra contract, and in the LocalGaloisDeformationRings contract, which now spells out what §F.0.1 supplies. LocalGaloisDeformationRings §F.0.1 was added to the §2.1 *Needs:* line and the Layer 2 Dependencies, and a sentence was added to "Scope and ownership".
2. **New Check in §5.4.** That subsection had only two Checks. The added one: for d=2 and E/F unramified quadratic, ψ∘c≠ψ induces an irreducible representation, while `ψ=χ∘N_{E/F}` induces χ⊕χη. So the irreducibility clause of Σspcd_k is not automatic.
3. **Review F01 (P3) applied.** The IYE Proposition 5.10 locator now says it is stated for trivial ρ̄ (IYE line 224), and that BIPD Theorem 3.3 and the proof of BIPD Theorem 4.2 apply the argument to every ρ̄ (BIPD lines 349–354, 439). This is changed in the gap paragraph, in the `plan.json` gap `detail`, and in the IYE reference. I re-read IYE lines 222–226 and 1010–1026 and BIPD lines 28–34 and 436–441 myself.
4. **Review F02 (P3) applied.** The Conventions now define Zariski density in (Spf R)^rig by the smallest Zariski-closed analytic subset, equivalent on these quasi-Stein spaces to vanishing of global rigid functions (BIPD lines 31–32; IYE Definition 5.8, lines 1012–1016).
5. **Form.**
   - The `mathlib:X` tokens became Mathlib `` `X` ``. The bare Lean names in the §3.1 sketch are now backticked; `Submodule.mem_iInf` was verified at `Mathlib/Algebra/Module/Submodule/Lattice.lean:238`.
   - Duplicated entries were removed from the Dependency lists.
   - "Worked examples" moved after "Downstream consumers", in the upstream order.
   - The design-only section "Headline signatures at the pins" was dropped; its content is the `Suggested.lean` docstring.
   - The title now carries the Part II name.
   - "corrected crystalline-character lift interface" became a description of what PadicHodgeTheory §3.6 supplies. I checked that section: it supplies a crystalline character matching both the residual character and the torsion values, including the unramified factor.
   - Notation: the README prose had 102 TeX-style brace subscripts and superscripts (`_{…}`, `^{…}`) outside code spans. A single-symbol index lost its braces (R□_ρ̄, μ_p∞, G_ℚ_p, O_L′, I_n0, Ann_R∞, μ_2∞). Every compound expression (k_{σ,i}, a_{σ,i}, Σsc_{k,E,m}, |det|^{(1−d)/2}, U^{m+1}(𝔄), Res_{F/ℚ_p}, and so on) now sits in a code span with its notation unchanged. No mathematical content changed, and no brace token is left outside code.

## What the README could not support

Nothing new. The 13 supplier gaps of the accepted design remain, one of them narrowed.

I re-checked each gap against its supplier at the indexed head. None of the gap statements is supplied there, apart from the narrowing above:

- LocalGaloisDeformationRings §1.1: no determinant-torsion component theorem for R□.
- ModularityAndLanglandsExtensions §2.1: no Emerton–Gee crystalline lift.
- DeformationAndDerivedPatchingAlgebra §4.6: geometric integrality appears only as a hypothesis, with no splitting extension.
- PadicMeasuresIwasawaAlgebras §1.7: no projective decomposition.
- AdicSpacesPartIII §R2.9: the functor without the point and component comparison.
- SmoothRepresentationsOfLocalGroups §SR.5.2: maximal distinguished cuspidal types, but not the three finite-coefficient families.
- Parent §5.2a/§5.3: benign loci and support on a union of components of the patched ring, but neither closure on the local framed space nor local benign accumulation.

## Notions moved down from later roadmaps

None. Every supplier is earlier in the merge order or on main (depcheck below).

## Duplication sweep

Each object was searched with `roadmaps grep` over main and all open roadmap heads, and in the pinned libraries:

- BIP and BIPD density and faithfulness;
- EP capture and supercuspidal density;
- DPS Theorem 7.4 and Corollary 7.8 (fixed-centre algebraic density);
- benign points;
- roots of torsion-free characters;
- completed tensor components;
- the Σ point sets.

Removals and narrowing:

- From gap:completed-tensor-reduced-equidimensional, the O-flatness, equidimensionality and dimension clauses. They are now cited to LocalGaloisDeformationRings §F.0.1 and DeformationAndDerivedPatchingAlgebra §4.6 (item 1 above).

Nothing else is stated elsewhere:

- The BIP and BIPD density theorems for general F and d appear in no other roadmap. PadicLocalLanglandsForGL2Qp §3.6a covers d=2 over ℚ_p and is cited as such.
- DPS Theorem 7.4 appears nowhere else. LocallyAnalyticDistributions and PadicLocalLanglandsForGL2Qp cite other DPS results.
- Square roots in PadicLocalLanglandsForGL2Qp §5.8 and LocalGaloisDeformationRings §2.30 cover only roots of characters ≡1 at p∤d. They are not the torsion-free d-th root of §2.2, which holds for every d including p|d.
- Kernel, annihilator and closure facts stay with Mathlib, as in the design.

Ownership against open pull requests was checked through the roadmap index tool, which covers all 354 open heads. The suppliers cited here that are still open pull requests were read at their indexed heads:

- CompletedCohomologyAndLocalGlobalCompatibility, at the head of its open pull request: §§5.1, 5.2, 5.2a, 5.3 confirmed.
- LocalGaloisDeformationRings: §§F.0.1, 1.1, 1.19, 3.1, 3.4, 3.9 confirmed.
- PadicHodgeTheory: §§3.3–3.6 confirmed.
- DeformationAndDerivedPatchingAlgebra: §§1.12, 4.4, 4.6, 4.7 confirmed.
- CompletedCohomologyPartII: §§F.1, F.2, F.4, 3.2 confirmed.
- PadicLocalLanglandsForGL2Qp: §§0.1, 3.6a confirmed.
- SmoothRepresentationsOfLocalGroups: §§SR.2.1, SR.3.1, SR.3.2, SR.5.2 confirmed.
- EndoscopicTransferAndUnitaryTraceComparison: §§10.21, 10.26, 10.30 confirmed.
- ModularityAndLanglandsExtensions: §2.1 confirmed.
- ArithmeticGaloisRepresentations: §1.3 confirmed.

The roadmaps on main were checked the same way: AdicSpacesPartIII §R2.9, ClassFieldTheory §2.6 and Layers 7 and 9, ReductiveGroups Layers 6 and 10B, and PadicMeasuresIwasawaAlgebras Layer 1 and §1.7.

The Mathlib citations were confirmed at the pin `6b7abb3`:

- `Module.annihilator`, `Module.mem_annihilator`, `Module.comap_annihilator` and `Module.annihilator_eq_bot` at `Ideal/Maps.lean` lines 868, 870, 894 and 900;
- `LinearMap.ker` and `LinearMap.mem_ker` at `Submodule/Ker.lean` lines 59–64;
- `FaithfulSMul` at `Action/Faithful.lean:47`;
- `PrimeSpectrum.zeroLocus`, `PrimeSpectrum.vanishingIdeal` and `PrimeSpectrum.zeroLocus_eq_univ_iff` at `Spectrum/Prime/Basic.lean` lines 137, 157 and 302;
- `PrimeSpectrum.zeroLocus_vanishingIdeal_eq_closure` at `Topology.lean:159`.

The Tau Ceti citations were confirmed at the pin `a91d3aa`.

## Adversarial pass

The table covers every statement written or changed this round, the seven headlines, and a recomputation of the main conventions and Checks.

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §5.4 new Check (irreducibility of the induction) | d=2, E/F unramified quadratic, ψ=χ∘N versus ψ∘c≠ψ | Ind(χ∘N)=χ⊗Ind_{W_E}^{W_F}1=χ⊕χη (η unramified quadratic), reducible; for ψ∘c≠ψ Mackey gives End=L, irreducible | Check correct; the reducible case lies in Σprnc_k, not Σspcd_k | added |
| Narrowed gap (reducedness only) | A=B=O[[x]]; O′=O[α], α²=p | O[[x]]⊗̂O[[y]]=O[[x,y]], dim 3=2+2−1, reduced; O′⊗O′ has generic fibre E′×E′ and is reduced and flat, but not a domain (two components) | The dimension and components clauses match DDPA §4.6's own Checks; reducedness is asserted in neither supplier section | needs narrowed |
| Rigid density convention (F02) | {p^a}, a≥1, and {p^{1/a}} in the open unit disc | First set: zeros accumulate at 0 in the closed disc of radius \|p\|, so every vanishing function is 0 and the closure is the whole disc. Second: killed by ∏(1−x^a/p), so dense in neither sense | The two definitions agree on both instances | sentence added |
| IYE locator (F01) | trivial ρ̄ versus the unramified quadratic character over ℚ_5 | IYE line 224 fixes ρ̄ trivial; BIPD line 439 says the IYE proof carries over verbatim; F=ℚ_2, d=1, trivial ρ̄: both texts apply | Locator now matches what each source states | locator corrected |
| Conventions: geometric Artin sign | d=2, F=ℚ_5, ψ=1, u=2 | δ=ε∘Art_geom; ε(Art_arith(u))=u^{-1}, so ε(Art_geom(u))=u gives δ(2)=2; arithmetic gives 1/2; contragredient: (2·f)(m)=f(2^{-1}m)=2f(m) | Check consistent | none |
| r_p twist exponent | d=1, 2; diag(ϖ,1) | (1−d)/2: 0 for d=1, −1/2 for d=2; \|det diag(ϖ,1)\|^{−1/2}=(q^{−1})^{−1/2}=q^{1/2}; exponent +1/2 gives q^{−1/2} | Check consistent | none |
| Weight dualisation πalg | d=2, k=(2,0) and (1,0) | a=(2−1,0)=(1,0), highest weight (−a_2,−a_1)=(0,−1); k=(1,0) gives (0,0); parent dictionary h=(1−b,−a) at λ=(0,−1) gives (2,0) | Consistent with parent §5.2 | none |
| §1.1 d=1 collapse | d=1 | regularity is vacuous; rank one has N=0 and is abelian, so pst = pcris = potentially crystabelline; WD is one-dimensional and induced from F itself | Σspcd_k=Σprnc_k=Σ_k | none |
| §2.1 component Checks | O[[x]]/(x²−ϖ); O[[u,v]]/(uv) | first ≅O[√ϖ], a DVR, one prime; over O[a], a²=ϖ, (x−a)(x+a)=0 and (x−a)≠(x+a) since 2a≠0: two components; second has two components that stay integral | Checks consistent with the geometric-integrality hypothesis | none |
| §2.2 roots, F=ℚ_3, d=2 | ψ(−1)=−1 | torsion of ℚ_3^×^ is {±1}; η(−1)²=η(1)=1≠−1 | Torsion hypothesis necessary | none |
| §2.2 roots, d=p | ψ(γ)=1+p | b^p=1+p over a finite extension; (b)^x converges for x∈ℤ_p since b≡1 mod the maximal ideal | Holds with no p∤2d | none |
| §3.2 induction comparison | K=ℤ_5^×, H=1+5ℤ_5, χ(u)=u; general n, r | [K:H]=4; χ(1+5^a)≠1 for all a, so χ is not smooth; O[[K]] is free of rank n over O[[H]], so both Homs have dimension nr (4 for r=1) | Consistent | none |
| §3.2 reducedness model | H=1, B=O[[x]], M=B/(x²) | M≅O², Ann_B M=(x²), x²=0 in B/(x²), x≠0 | Finiteness does not give reducedness | none |
| §3.3 growth count | principal family; d=1; anisotropic filtration of ℤ_p² | q^{n d(d−1)}·q^{nd}=q^{nd²}=[I:K_{n+1}] up to constants; d=1 gives q^n; coinvariants p^{2n} against index p^{3n}, predicted p^{3n/2} | Checks consistent | none |
| §3.5 central weights | d=2, exponents ±1 | (1,0) has sum 1; (0,−1) has sum −1 and is dominant; (−1,0) is not dominant; det^m has exponent 2m | Consistent | none |
| §5.1 hypotheses | O[[x]]/(x²), O[[x]]/(ϖx), N_i=0 | x is nilpotent and nonzero; in O[[x]]/(ϖx), (ϖ)∩(x) is radical and x↦0 after inverting p; B_i=0 has an empty spectrum | Reducedness and O-flatness are each needed; the zero ring is allowed | none |
| §5.2 at p=2 | d=1, F=ℚ_2, trivial ρ̄; d=2 | μ_{2^∞}(ℚ_2)={±1}; x↦x^n on ℤ_2^×, 1 at 2, reduces to 1 mod 2 and takes the value (−1)^n at −1; d=2 diag(χ_1,χ_0) has det(−1)=−1, diag(χ_2,χ_0) has det(−1)=+1 | Both components are met at a prime dividing 2d | none |
| §6.1 benign | rank 1; rank 2, eigenvalues 1, p, f=1 | rank 1: the eigenvalue conditions are vacuous; rank 2: ratio p=p^f is excluded | Consistent with the parent §5.2a definition | none |
| §6.2 / §6.3 μ-components | μ_{p∞}(F) of order p^a, d=1 | ζ↦σ(ζ)^n runs over all p^a characters of μ as n runs mod p^a | Fixed τ with weights varying meets every component | none |
| §6.4 non-minimal example | F=ℚ_5, f=2, e=6 | α=uπ^v with π^6=5, so ϖ^{−v}α^6 has residue ū^6, which lies in the order-4 subgroup =𝔽_5^× of 𝔽_25^× (order 24); it never generates 𝔽_25 | No minimal element | none |
| §6.4 shallow point | p=3, F=E=ℚ_3(ζ_3) | v(ζ_3−1)=1, so ζ_3∈U^1∖U^2, U^2 is torsion free and m≥1, n≥3; ψ_α is nontrivial on U^n⊂U^2 where the character is trivial | Point in Σsc_{k,E} but in no Σsc_{k,E,m} | none |
| §6.5 tame instance | p=5, d=2, ℚ_5(√5) | e=2, f=1, 5∤4; v(√5)=1, gcd(2,1)=1, residue of 5^{−1}(√5)²=1 | Minimal; tame | none |
| §4.2 reducedness | O[[x]]/(x²) | ⋂ of minimal primes =(x)≠0 | Reducedness of R□ (gap:framed-ring-components) is necessary | none |
| Headlines (Lean context) | n/a | `Suggested.lean` declares nothing, so there is no `variable` block or binder to drop | No context defect possible | none |

**Mechanical `#check` comparison.** `Suggested.lean` has no declarations, so the scratch `#check @name` file would be empty. Nothing was compared and nothing changed.

## Elaboration

Run from the content checkout: `lake env lean <package>/Suggested.lean`. It exited with status 0 and printed no messages at all: **0** `sorry` warnings, no errors and no other output. The file imports only `Mathlib`; no `TauCeti.*` module needed building.

## Dependency check

```text
$ tauceti-roadmap … gate --depcheck packages/CompletedCohomologyAndLocalGlobalCompatibilityPartII/README.md --name CompletedCohomologyAndLocalGlobalCompatibilityPartII --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 652 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. The roadmap is at line 270 of the merge order, directly after its last supplier, ModularityAndLanglandsExtensions.

The other checks:

- `sources check` on `sources.toml`: 0 problems.
- `roadmaps resolve` on the README: "Cross-roadmap citations found nowhere: None. Lean names found nowhere: None."
- The full gate (worktree mode) was not run, because the package is not laid out as a roadmap folder in a worktree.

## Sources

No new fetches were needed: all twelve cited texts are in the cache and were read from there. `sources.toml` changes:

- IYE: locator now "Definition 5.8; Propositions 5.9–5.10 (stated for trivial residual representation, §2.1)", and `cited_for` adds the Conventions.
- BIPD: `cited_for` adds the Conventions.
- HP: locator "Appendix A, Lemmas A.1–A.5", matching the README.

No `needs-references.toml` was written.

No fetched or read text contained instruction-like content.
