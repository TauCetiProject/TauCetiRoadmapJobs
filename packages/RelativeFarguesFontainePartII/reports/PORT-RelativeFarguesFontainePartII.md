# PORT-RelativeFarguesFontainePartII

Branch `roadmap/relative-fargues-fontaine-part-ii`, head commit `c3b08bcb` (one commit on top of main `156df567`), message `RelativeFarguesFontainePartII: roadmap (README, Suggested.lean, metadata)`. Files: `TauCetiRoadmap/RelativeFarguesFontainePartII/{README.md,Suggested.lean,metadata.toml}`; nothing outside the folder changed.

## Build

`lake build TauCetiRoadmap.RelativeFarguesFontainePartII.Suggested`:

```text
⚠ [8954/8954] Built TauCetiRoadmap.RelativeFarguesFontainePartII.Suggested (12s)
Build completed successfully (8954 jobs).
```

Warnings: 3, all `declaration uses 'sorry'` (lines 65, 87, 102, the three headline theorems). No Lake module-system notice on the roadmap's own file (header `module` / `public import Mathlib` / `@[expose] public section`, the CoboundaryExpansion form).

## Gate

```text
gate RelativeFarguesFontainePartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

Run with `--order` on the board's merge-order file (the GitHub fetch is avoided). `roadmaps resolve` on the ported README: no cross-roadmap citation and no Lean name found nowhere.

## Dependency direction

```text
depcheck: 230 roadmaps, 2140 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. The package README as received also passed (229 roadmaps, 2122 edges, 0 problems); the extra roadmap and edges are the new RelativeFarguesFontaine citations.

## Draft pull request body

This roadmap develops the classical holomorphic function theory of the relative Fargues–Fontaine annuli over an arbitrary perfect complete rank-one field F of characteristic p and an arbitrary local coefficient field E, on the carriers supplied by VectorBundlesAndIsocrystals and RelativeFarguesFontaine: Gauss norms and their Legendre-transform Newton polygons, boundary extension and the Newton criterion for units, primitive equations of every degree with their marked untilts, weighted zeros and locally finite divisors over a general F by quantitative Galois descent, closed ideals, the half-open Bézout theorem and meromorphic functions, Frobenius orbit products and the finite-jet fundamental exact sequence, the Dedekind charts Be_t with their class group Hom_cont(G_F,E×), degree-one generation and the weighted schematic curve, the period interval site with its Fréchet–Stein and effective gluing theory, finite étale annular extensions and effective continuous descent, Frobenius lines, positive-line presentations of the curve, and Runge approximation recovering the adic curve from the schematic charts and their radial norms. It closes with the arithmetic examples that separate the carriers: a nonprincipal ideal of B⁺, Kedlaya–Temkin's strict endomorphism of a completed algebraic closure of k((t)) and their untilt of ℂ_p^♭ not topologically isomorphic to ℂ_p, the weakly closed primes of W_OE(O_F), and the valued automorphism-extension theorem for the Mal'cev–Neumann field 𝔽̄_p((t^ℚ)). `Suggested.lean` states the three headline theorems statable at the pins (the strict Laurent-closure endomorphism, the exotic untilt of ℂ_[p] through `PreTilt`, and the Hahn-field automorphism rescaling `HahnSeries.order`), with one proved instance making the tilt of `𝓞_ℂ_[p]` a ring; the module docstring lists the seventeen headlines whose carriers (ramified interval rings, period eigenspaces, the curve) do not exist at the pins.

Models used: Claude Fable 5.1 for the port, the checks below and the adversarial pass.

## Dependencies that are still pull requests or board designs

Cited suppliers not on main: VectorBundlesAndIsocrystals, RelativeFarguesFontaine, PadicDifferentialEquationsAndRigidCohomology, FiniteFlatGroupsAndIntegralPadicHodgeTheory, CrystallineCohomology, DerivedDeRhamCohomology, LocallyAnalyticDistributions, PadicHodgeTheory (all open pull requests, read at their heads through `roadmaps show`); PadicLocalLanglandsForGL2Qp (named in Scope and §8.4 as the owner of the distribution-algebra Fréchet–Stein specialization, no `*Needs:*` edge); LubinTateFormalModulesAndQuasiCanonicalLifts (a board design without a pull request; its design README carries the cited LT.0 "Normalized formal logarithm", LT.1 "Lubin–Tate formal module" and LT.2 "Formal-module Tate module" subsections). On main or completed: PerfectoidSpaces, OptimalTransport, SchemeAndStackFoundations, AdicEtaleGeometry, AdicSpaces, AdicSpacesPartIII, NewtonPolygons, AlgebraicVectorBundles. Every cited section heading was found in the cited roadmap at its head or on main (list in the scratch worklist): PDE RD.0.18–RD.0.24, RD.0.29, RD.0.51, RD.0.52, RD.0.54; FFG R07.2.28a; CC CR.1.1; DDR PD.1, PD.2, PD.4–PD.7 (there is no PD.3 at the head, so the package's range §§PD.1–PD.7 was rewritten as §§PD.1–PD.2 and PD.4–PD.7 in the CrystallineCohomology contract and the §1.13 Needs line); LAD 0.0 and 0.2; PHT 1.2–1.4; AEG A4.2a; SSF 0.3 and 1.23; OT Layer 5; NP 0.1–0.6 and 2.1–2.3; AdicSpaces 6.1–6.4; AdicSpacesPartIII R3.2 with the four named results; PerfectoidSpaces P1.19–P1.22, P3.7, P3.11–P3.12; VBI Layer 0–5 subsection titles as cited; RFF 0.11–0.14.

## Lean

Nothing moved from the Lean file to the README: the package file already stated only the three headline theorems. Changes to `Suggested.lean`:

- header `module` / `public import Mathlib` / `@[expose] public section` (the package had `public section` without `@[expose]`); a scratch importer sees all four declarations;
- new `instance fact_not_isUnit_natCast_padicComplexInt : Fact (¬ IsUnit ((p : ℕ) : 𝓞_ℂ_[p]))`, proved from `PadicComplex.valuation_p` (value `1/p`) and `PadicComplexInt.integers`; the instance hypothesis `[Fact (¬ IsUnit ((p : ℕ) : 𝓞_ℂ_[p]))]` of `exists_untilt_padicComplex_not_continuouslyIsomorphic` is dropped, since Mathlib at the pin has no such instance and the statement should not assume a provable fact;
- the docstring of `exists_strict_laurentClosure_endomorphism` names KT16 Theorem 1.2.

Signature check: `#check @name` for all four declarations from a scratch file importing the module (`scratch/probe/out-sig.txt`). Each elaborated type keeps every binder: `p`, `Fact (Nat.Prime p)`, `Field k`, `CharP k p`, `NormedField K`, `Algebra (LaurentSeries k) K`, `IsAlgClosure (LaurentSeries k) K` and the norm–valuation iff for §11.2; `Fact (Nat.Prime p)` only for §11.3 (the non-unit class is now the instance, and the class for K's valuation ring is inside the existential); `Fact (Nat.Prime p)`, `0 < x.order`, `0 < y.order` for §11.5. They agree with the README statements of §§11.2, 11.3 and 11.5; the only change from the package's `signatures.md` is the removed instance hypothesis.

## README changes

- **Line locators.** All 115 `<source> line N` tokens dropped (`; FF17 line N.)`, `(FF17 line 4742)` in §2.12, `FF17 line 459.` in §11.5, `FF17 line 14599; ST02 … line 293` in §8.4); theorem and page locators kept. Mathlib and Tau Ceti file line numbers in the supplier contracts kept, as on main.
- **Gap contracts** rendered as "What X must provide (the … contract):" with the slug → name map: `positive-degree-two-obstruction` → the degree-two obstruction contract; `perfectoid-quantitative-cochains` → the quantitative cochain contract; `crystalline-pro-final-radius` → the pro-final-radius contract; `lubin-tate-all-local-fields` → the all-local-field Lubin–Tate contract; `closed-infimal-convolution` → the closed infimal-convolution contract; `finite-group-free-scheme-quotient` → the scheme-torsor contract (the name §10.3 already used). The §11.6 `*Needs:*` tag became "the degree-two obstruction contract". No `gap:` remains.
- **Review notes.** F01 (Layer 5 subsection name), F02 (endpoint 0 in §§9.1, 9.3), F03 (Mathlib lines 228 and 278) were already applied in the package. F04: no SGA 1 citation remains in §10.3 (the package routes the torsor step through the SchemeAndStackFoundations contract), so no References entry is needed. F05 applied here: the two duplicate π bullets of §2.5 deleted, the combined bullet kept.
- **Typo** `|z_i↦0` → `|z_i|→0` (§3.5 twice, Layer 3 Examples).

## Supplier replacements and duplication removals

- **RelativeFarguesFontaine is a supplier, not a consumer.** The merge order lists RelativeFarguesFontaine at position 117 and this roadmap at 328; the package (and its round-2 fix report, written when the order had them at 140/143) treated RelativeFarguesFontaine as later and claimed it as a downstream consumer. At its head, RelativeFarguesFontaine §0.11 (Q-twisted Witt vectors), §0.12 (Q-Teichmüller lift, with the perfect-residue limit formula), §0.13 (weak coefficient topology equals each interior Gauss-norm topology) and §0.14 (weak Lubin–Tate lift `[x]_LT`) plan exactly the objects of the package's §0.1 second block, §0.3 weak-topology clause and §2.10 second block, all for coefficient fields of characteristic zero (the package's own locators, FF17 Prop. 1.2.7, Def. 1.4.10–Rem. 1.4.12, Lemma 1.2.9). Changes: a `### From TauCetiRoadmap.RelativeFarguesFontaine` contract; §0.1 now cites §§0.11–0.12 in mixed characteristic and keeps only the equal-characteristic Q-Teichmüller lift on perfect S (W_OE(S)=S[[π]], the same contraction argument, no ghost comparison; FF17 §1.2 assumes E of characteristic zero, so this variant is unsourced beyond the limit formula and is stated with its own proof), with new API and four computed Checks; §0.3 imports §0.13 and proves only the endpoint topologies and completeness, with a new endpoint-1 Check (π^n); §2.10 cites §0.14 in mixed characteristic and keeps the equal-characteristic weak lift, whose Checks now use the additive Lubin–Tate law `Q=πX+X^q` (the multiplicative law is not Lubin–Tate over 𝔽_q((π)), since `(1+X)^q−1=X^q`); `*Needs:*` lines of §§0.1, 0.3, 2.1, 2.3, 2.10 and the Layer 0 and Layer 2 Dependencies cite RelativeFarguesFontaine; Scope paragraphs 1 and 4 rewritten; Downstream consumers no longer names RelativeFarguesFontaine, AdmissiblePairsAndPadicHodgeStructures, PadicHodgeRegulators or PeriodsAndSpecialValues (all earlier in the merge order, none cites this roadmap: `roadmaps grep RelativeFarguesFontainePartII` finds no match anywhere) and describes the consumers by kind.
- **Fréchet–Stein.** PadicLocalLanglandsForGL2Qp §0.1 (earlier in the order) owns the distribution algebra D(H,L) as a Fréchet–Stein algebra with its coadmissible modules; OverconvergentAutomorphicForms' scope says the same. §8.4 is the general interface over an arbitrary complete nontrivially valued K and arbitrary Fréchet–Stein algebra (ST02 §3); Scope and §8.4 now say that the D(H,L) specialization is consumed, not restated. No `*Needs:*` edge added (the specialization is not an input of the general theorem).
- **Duplication sweep by object** (`roadmaps grep`, main and 450 open heads): Kedlaya–Temkin's endomorphism and exotic untilt: no other roadmap states them (hits on "Temkin" are resolution and Berkovich material); maximally complete fields: DiamondSixOperations cites Poonen Lemma 4 and Theorem 1 only, PadicDifferentialEquationsAndRigidCohomology mentions Hahn–Mal'cev–Neumann fields inside Kedlaya's slope-filtration route; neither states the embedding or automorphism-extension theorem, so §11.5 stays here. Weierstrass products, Runge, Fargues–Fontaine curve hits are the known suppliers (VectorBundlesAndIsocrystals, RelativeFarguesFontaine, PrismaticCohomologyPartIII's absolute curve consumed through VBI) or unrelated (complex analysis). Mathlib at the pin has no maximal-completeness or Kaplansky theorem under `HahnSeries`, and no instance `Fact (¬ IsUnit (p : 𝓞_ℂ_[p]))` (hence the new instance). All other cited Mathlib and Tau Ceti declarations opened at the pins (mathlib `f6090c709`, TauCeti `358314d4a`): every file and line in the contracts is exact.

## Other README fixes from the reviewer's read

- §10.8: "isolate its dominant Teichmüller term" was unspecific; the route now follows FF17 Prop. 7.9.1: replace t by π^n t so that ρ₂^(q/(q−1))<|ε|<ρ₁^(1/(q−1)), fix α with ρ₂^(q/(q−1))α^(−2)<|ε|<α²ρ₁^(1/(q−1)), and then L(x)=[x](1+u(x)) with |u(x)|_ρ≤α on I because the index ±1 terms are bounded by ρ|x|^(−(q−1)/q) and |x|^(q−1)/ρ (checked: the index-one condition is |x|>(ρ/α)^(q/(q−1)), implied by FF's bound since q/(q−1)≤2; the index-minus-one condition is |x|<(αρ)^(1/(q−1)), implied since 1/(q−1)≤2). Without this the approximant "whose dominant term is π/[b]" is only correct when the index-zero term dominates.
- The Mathlib contract for §11.3 names the new instance and its two inputs with their pin lines (162, 257).

## Adversarial pass

Rows recomputed by me (values on both sides); "pass" means the statement, Check or convention holds on the instance. The round-2 review's table covered every section; these rows are my own recomputations, concentrated on the Lean statements, the edited passages and the conventions.

| Statement | Instances | Values | Result / change |
|---|---|---|---|
| Conventions, Frobenius on ideals | (π−[a])↦(π−[a^q]), q=2, radius 1/4 | next radius (1/4)²=1/16 | pass |
| §0.2 N_k bounds | x=[a]+[b]π, y=[c] | (xy)_1=bc; RHS max(|ac|,|bc|) equal; π·[c]: N_1=|c|^q≤|c| | pass |
| §0.2 Frobenius scaling | q=2, v(a)=3, x=[a]π², r=2 | v_2(φx)=6+4=10; 2·v_1(x)=2(3+2)=10 | pass |
| §0.3 endpoint 1 (new Check) | π^n | |π^n|_1=1 for all n; |π^n|_ρ=ρ^n→0 | endpoint topology ≠ weak topology; Check added |
| §0.4 transform | [a]π^n; π−[a], v(a)=s | v_F(a)+nr (r≥0), −∞ (r<0); min(r,s) | pass |
| §0.5 Jensen | slopes 2,5 | v_1=2, v_3=5, v_6=7 | pass |
| §0.9 rank-two valuations | f=π[a], v(a)=−r at I={q^(−r)} | right (0,1), left (0,−1); f⁻¹ reversed; f, f⁻¹ power-bounded | neither valuation ≤1 on B_I°; pass |
| §0.1 equal-char lift (new) | q=2, Q=X²+πX, a=1 | Q(1)=1+π, Q(1+π)=1+π²+π+π²=1+π (char 2) | [1]_Q=1+π, constant 1 excluded; Check added |
| §0.1 equal-char lift (new) | q=3, Q=X³+πX, a=1 | Q_1=1+π, Q_2=1+π+π²+π³, Q_3≡1+π+π² mod π³ | Check added |
| §0.1 additivity (new API) | Q=X^q+cπX | Q_n additive; (a+b)^(q^(−n))=a^(q^(−n))+b^(q^(−n)) | lift additive for additive Q |
| §0.1 perfectness (new Check) | S=𝔽_q[T], a=T | no q-th root of T | construction undefined; negative control |
| §1.7 | T^(1/p), π at ρ=q^(−r) | q^(−1/p); q^(−r) | pass |
| §1.8 | q=2, r=2 | ρ̌=2^(−1/2); ‖X‖²=1/2=|T|_ρ; ‖π‖²=1/4=|π|_ρ | pass |
| §1.9 ramified carries | p=2, e=2 | faces (0,1),(2,1/2),(4,1/4), slopes 1/4, 1/8, length 2; Σ_m e(p−1)/(e p^m)=1=v_F(t) | pass |
| §1.11 criterion | q=2, ρ=1/2 | |π⁻¹|=2; |T₀|=1/2 at γ₀=1; π^(−n²)T^n terms 2^(n²−n)→∞ out; π^(−n)T^n terms 1, v_π=−n unbounded out; T^(1−p^(−n)) terms >1/q, in A; π^nT^(−n) terms (qρ)^n, in iff ρ<1/q | pass |
| §1.12 bivector growth | n=−m, v=q^(2m); v=m² | q^(−m)v=q^m→∞; q^(−m)m²→0 | pass |
| §1.13 | z=[a]^p/p, p=2, ρ=1/2 | v_2((2n)!/2^n)=n−s_2(n)=0,1,1,3; 1−z=(p−[a^p])/p vanishes at radius ρ^p=1/4 | B_cris,ρ⁺⊄B; pass |
| §2.8 | y_a=(π−a), y_b=(π−b), equal char | θ_(y_a)(π−b)=a−b, δ=v_F(a−b) | pass |
| §2.10 Banach norm | q=2, v(ε)=4 | ‖ε‖=1/4; πε=ε², v=8, ‖‖=1/8=q⁻¹·1/4 | pass |
| §2.10 cyclotomic | p=2, Q=2X+X² | u_ε=2+[ε^(1/2)]_Q=1+[(1+ε)^(1/2)]; two summands | pass |
| §2.10 reduction | u_ε mod π | (ε^(1/q))^(q−1)=ε^(1−1/q); v_(y_ε)(π)=(1−1/q)v(ε) | pass |
| §2.10 equal-char lift (new Check) | q=2, Q=πX+X², v(t)=1 | Q(t^(1/2))=πt^(1/2)+t; Q_2(t^(1/4))=t+πt^(1/2)+π²(t^(1/2)+t^(1/4)) | [t]_LT≡t+πt^(1/2) mod π²; Check added |
| §2.10 multiplicative law (new Check) | E=𝔽_q((π)) | (1+X)^q−1=X^q≢πX mod X² | not Lubin–Tate; Check added |
| §2.11 | ε₂=ε₁^q | v(ε₁−aε₂)=v(ε₁) for all a∈O_E× | proximity finite; pass |
| §4.6 | d=2, |a₀|=q⁻⁶ | ‖y‖=q⁻³; polygon (0,6)–(2,0), slope 3 | pass |
| §4.8 | s=2⁻⁸, ρ=1/4 | max(√s,s/ρ)=max(1/16,1/64)=1/16; ρ^(−d)√s=1/4 (d=1), 2^(196) (d=100) | pass |
| §6.4 | q=2, b=1+Σ[t^(2^(−i))]π^i, ρ=1/2 | v_1(φ^k(b)−1)=min_i(2^(k−i)+i)=k+1; (k+1)/2^k→0 | pass; no exponential rate |
| §6.5 | q=2, v(a)=1, b=π−[a] | backward radii 2^(−1/2), 2^(−1/4),…; forward 1/2, 1/4, 1/16 | pass |
| §6.6 | d=1, q=2, ‖y‖=1/2 | radii 2^(−2^n); (1/4,1/2] contains one | degree 1; pass |
| §10.1 | ρ₂=1/2, q=2 | [1/4,1/2]⊇[ρ₂^q,ρ₂]=[1/4,1/2] | faithfully flat condition 1/4≤1/4; pass |
| §10.6 | Φ(e)=[c]⁻¹e | deg=−v_π([c]⁻¹)=0; fixed line [w]e with w^(q−1)=c; q=3, F=perf. 𝔽₃((t))^, c=t: t^(1/2)∉F (value group ℤ[1/3]) | class of order 2; pass |
| §10.8 dominant term (edit) | ratio of index ±1 terms to index 0 | ρ|x|^(−(q−1)/q), |x|^(q−1)/ρ; FF bounds imply both ≤α since q/(q−1)≤2 and 1/(q−1)≤2 | route made precise |
| §11.2 Lean | identity map; norm hypothesis | identity is continuous and fixes k but surjective, so not a witness; multiplicative norm order-equivalent to v on k((t)) is |·|_t^s and extends uniquely to the algebraic K | statement matches KT16 Thm 1.2 (k-linear continuous, not an isomorphism) |
| §11.3 Lean | 0<v(p)<1 | v(p)>0 forces p≠0, so char 0; v(p)<1 gives residue char p; K=ℂ_p^♭ (v(p)=0) excluded | pass |
| §11.3 instance | p=2,3 | v(p)=1/p=1/2,1/3<1; units of 𝓞 have v=1 | `¬IsUnit p` proved; hypothesis dropped |
| §11.5 Lean | z=0; z=C c; x=t, y=t² | order 0 both sides; order 0 fixed; s=2, order(σ t^(1/2))=1 | junk value consistent; pass |
| §11.5 route | σ=σ′∘τ_s | τ_s: t^γ↦t^(sγ) scales order by s, fixes constants; σ′ order-preserving with σ′(τ_s x)=y by Poonen Thm 2 (verified at p. 10) plus maximal completeness | pass |
| §11.1 | β_j↓√2 | v(h mod p)≤β_j ∀j and ≥√2 ⇒ =√2∉ℚ | pass |
| Worked example 1 | slopes 2,5 | derivatives 2,1,0 on r<2, 2<r<5, r>5 | pass |

Source checks made for this port: KT16 Theorem 1.2 (p. 1, k-linear continuous homomorphism not an isomorphism), Poonen93 Theorem 2 (p. 10, relative embedding into a Mal'cev–Neumann field with divisible value group and algebraically closed residue field), FF17 §1.2 opening ("on suppose E de caractéristique zéro"), FF17 §2 opening (E|ℚ_p assumed, equal characteristic left unformalized there), FF17 Prop. 7.9.1 proof (the ε and α bounds above), FF17 line after Lemma 1.2.3 (the diagonal Δ with ghosts (F^n x)).

## Unresolved

- RelativeFarguesFontaine's "Ramified coefficient inputs" contract says that VectorBundlesAndIsocrystals Layer 0 supplies the Witt truncations and the coefficient diagonal; VectorBundlesAndIsocrystals' Layer 0 text at its head does not state either. §0.1 keeps both as targets here (as the accepted review found); the maintainer may prefer to move them into VectorBundlesAndIsocrystals, which both consumers would then cite.
- The round-2 fix report's maintainer note asked RelativeFarguesFontaine to cite this roadmap's §0.1 for the Q-twisted comparison; with the current merge order the direction is the reverse and this port imports from RelativeFarguesFontaine. RelativeFarguesFontaine needs no change.
- The equal-characteristic Q-Teichmüller and weak Lubin–Tate lifts (§§0.1, 2.10) extend FF17's characteristic-zero statements; they are stated with their own proofs and cite FF17 only for the limit formula.
- LubinTateFormalModulesAndQuasiCanonicalLifts is a board design, not a pull request; its all-local-field contract remains a declared gap, as in the accepted review.
- Ownership was checked against main, the open heads reachable through `roadmaps grep`/`roadmaps show` and the sibling checkouts named in the brief; nothing beyond those was searched.
- `metadata.toml` is the package's `topic = "math.NT"`, in the form of the folders on main.

No suspicious instructions were found in any fetched or read text.


Pull request: #1825 (roadmap/relative-fargues-fontaine-part-ii at c3b08bc)
