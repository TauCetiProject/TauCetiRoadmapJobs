# Review of RelativeJacobiansAndIntegralCurveModels (pull request #1232 at 25f1d2d)

**Verdict:** needs changes

## R01 (P2) — State the two-chart cohomology headline on the existing carriers

**Location:** `TauCetiRoadmap/RelativeJacobiansAndIntegralCurveModels/Suggested.lean:17`, and `README.md:172` in the same folder. The docstring groups §§0.3–0.6 under the missing “marked projective-line/function-field construction”.

**Claim:** This does not prevent stating §0.5. That theorem concerns an arbitrary scheme, two affine opens with affine intersection, and a quasi-coherent module. It does not use the normalization construction. The headline is absent from the acceptance test.

**Witness:** `TauCeti/AlgebraicGeometry/Cohomology/MayerVietoris.lean:80` supplies the actual connecting map; lines 98 and 112 supply its signed sequence and exactness. A native-carrier cokernel signature, including the connecting-map equation, elaborates at these pins.

**Repair:** Add the real restriction-difference definition and the canonical cokernel theorem, with the README's affine and quasi-coherence hypotheses. Retain the scalar/naturality comparisons promised by §0.5 using the existing module-cohomology API; correct the docstring's exclusion. Do not substitute an arbitrary isomorphism. The following core signature was elaborated in a scratch copy with only its expected `sorry` warning:

```lean
import Mathlib
import TauCeti.AlgebraicGeometry.Cohomology.MayerVietoris
open CategoryTheory Limits AlgebraicGeometry
open TauCeti.AlgebraicGeometry.Scheme.Modules
noncomputable section
universe u
namespace ReviewProbe
def differential {X : Scheme.{u}} (M : X.Modules) (U V : X.Opens) :=
  biprod.desc (cohomologyOnRes M 0 (inf_le_left : U ⊓ V ≤ U))
    (-cohomologyOnRes M 0 (inf_le_right : U ⊓ V ≤ V))
theorem twoChart {X : Scheme.{u}} (M : X.Modules) [M.IsQuasicoherent]
    (U V : X.Opens) (hU : IsAffineOpen U) (hV : IsAffineOpen V)
    (hInter : IsAffineOpen (U ⊓ V)) :
    ∃ e : cokernel (differential M U V) ≅ cohomologyOn M 1 (U ⊔ V),
      cokernel.π (differential M U V) ≫ e.hom =
        mayerVietorisδ M U V 0 1 rfl := by
  sorry
end ReviewProbe
```

This is a statability witness, not a proof or a proposed replacement for all the scalar comparisons. On the standard cover of `P¹`, `O(−2)` gives cokernel `R·t⁻¹`, agreeing with `H¹`; it distinguishes this acceptance theorem from an erroneous vanishing statement. On equal restrictions `(1,1)`, the differential gives `0`, whereas the wrong plus sign gives `2` over `ℤ`.

## R02 (P3) — Point the Stein-factorization dependency to its actual supplier section

**Location:** `TauCetiRoadmap/RelativeJacobiansAndIntegralCurveModels/README.md:571`: “SchemeAndStackFoundations §§2.22 and 3.6 for Brauer cohomology, Stein factorization and invertible-sheaf descent”. The supplier table at line 69 also omits §4.9.

**Claim:** The cited sections do not supply Stein factorization. This is a misplaced locator, not an unowned mathematical prerequisite.

**Witness:** On main, `TauCetiRoadmap/SchemeAndStackFoundations/README.md:4905` begins the curve Picard-torsor section. Its §4.9 starts at line 5448; `stein_factorization` is stated at line 5472 for proper morphisms of noetherian schemes.

**Repair:** Add §4.9 to the supplier contract and cite it for the Stein factorizations used in §§3.2–3.2a. Retain §§2.22 and 3.6 for their actual contracts. The proper curve over a DVR, and its proper generic curve over a field, meet the noetherian hypotheses of §4.9, so this repair supplies precisely the factorization used in the Brauer argument.

## R03 (P3) — Replace undeclared API name catalogues with mathematical API bullets

**Location:** `TauCetiRoadmap/RelativeJacobiansAndIntegralCurveModels/README.md:176`, with the same issue at lines 340, 458, 515, 730 and 774. For example: “The API gives `d_first`, `d_second`, `d_diagonalRestriction`, `kernelIso`, `cokernelIso`”.

**Claim:** These are names of this roadmap's proposed declarations, but they are absent from `Suggested.lean`. API lists are required to state their laws in prose, with a code name only for a declaration actually kept in the acceptance test. A catalogue also leaves several operation signatures implicit.

**Witness:** The Lean file has exactly seven declarations: six headline theorems and `reductionHom`. None of the five quoted names is declared there. The manual check exposes this despite the passing name scanner.

**Repair:** Turn each catalogue into prose API bullets giving domain, codomain, hypotheses and equation. For §0.5, say that the first inclusion followed by the differential is restriction, and the second is negative restriction. Keep names only for genuinely retained headline declarations. Do not fill `Suggested.lean` with the missing API lemmas. Apply the same code-name rule to proposed definitions and targets elsewhere in the prose. The resulting laws evaluate to `1` and `−1` on the two unit inputs and to `0` on `(1,1)`, preserving the discriminating Check.

## R04 (P3) — Add the Lean layer section comments

**Location:** `TauCetiRoadmap/RelativeJacobiansAndIntegralCurveModels/Suggested.lean:40`, `:74` and `:84`.

**Claim:** Targets from Layers 0, 3 and 4 occur without the required `/-! ## Layer k: ... -/` section comments.

**Witness:** The seven declarations occur in that order, but the file has no layer section comment. The ordinary `section Reduction` does not identify the README layer.

**Repair:** Insert Layer 0, Layer 3 and Layer 4 section comments before their respective declarations, using the README titles. No signatures or proofs need changing. The resulting order is `0,0,0,3,4,4,4` for the existing declarations and matches the README.

## Verified sound

The whole folder was read: 30 numbered target subsections, all their Checks, six layer example/dependency sections, the worked examples, and all seven Lean declarations. The review read the repository's normative README and CONTRIBUTING and compared the shape with AlgebraicCurves, StableReduction and JacobianChallenge on main. No PR file was edited. The head matches the requested commit; the diff outside this roadmap folder is empty.

The worker's gate passes, including its targeted build. Independent `lake env lean` elaboration of the original file also succeeds, with precisely the six expected `sorry` warnings. A scratch file checked all seven fully elaborated signatures: no required section binder disappeared, and the retained theorem signatures agree with their prose. In particular, finite type is expressed by local finite type plus quasi-compactness; the mixed-characteristic bound includes primality, `CharZero R`, residue characteristic and the normalized valuation equation. `reductionHom` correctly has the wider noncommutative group-object signature needed by its definition.

Each of the six admitted theorems was probed with single-tactic `simp`, `rfl` and `infer_instance` alternatives; none closed. Searches and inspection of the pinned libraries found no single existing lemma proving any of these six statements. No padding finding is raised. The separate two-chart probe establishes R01's statability claim, not truth by elaboration.

Gate result:

```text
gate RelativeJacobiansAndIntegralCurveModels: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The required dependency check was run, with this output:

```text
depcheck: 205 roadmaps, 1467 edges, 0 problem(s)
```

Every `*Needs:*` line was read. There is no UPWARD or CYCLE result, no declared gap, and no new circular ownership found. In particular, the intersection estimates used to prove finite type precede their component-group interpretation; the interpretation is not an input to itself. The general quotient is not made a prerequisite for its supplier's abstract Néron existence theorem.

**Adversarial computations.** The following 77 rows record actual instances or formal numerical tests, the computed values, and the resulting action. Formal intersection data are labelled as such; they are not asserted to be realizable fibres. `0` for a group means the trivial group. These tests cover every numbered target, the sampled claims, the headline results and the mathematical statements touched by the findings; they are checks of the claims, not substitutes for their general proofs.

| Statement | Instances and computed values on the two sides | Result / change |
|---|---|---|
| Standing domain and size conventions | The zero ring has `0=1` and fails the domain/DVR assumptions; a field base has dimension `0` and no trait special fibre. Finite residue fields have `q≥2`, so `q=1` is not admitted | No zero-ring, empty-trait or fictitious finite-field value is used |
| 0.1 marked model and model morphisms | `P¹_R` with identity marking: generic composite `id ∘ id = id`; scaling by `π` gives a different marking and no marked integral inverse | Retain the marking, not just the total space |
| 0.1 properness and generic density | `P¹_R` is proper locally and globally; `A¹_R` has generic point `1/π` with no integral section; `R[t] → K[t]` has kernel `0` | Proper/nonproper and density controls agree |
| 0.2 proper sections; Lean line 42 | `[π:1]` and `[1:π]` extend to those same projective coordinates, specializing to `[0:1]` and `[1:0]`; on a field base the extension is the original point | Existence and uniqueness have the correct range |
| 0.2 regular sections; Lean line 52 | In `xy=π`, section valuations satisfy `v(x)+v(y)=1`, so one is `0`; in `xy=π²`, `(π,π)` has valuations `(1,1)` and hits the singular node | Regularity excludes the negative control |
| 0.3 normalized rational charts | `F=K(t)`: closures are `R[t]`, `R[t⁻¹]`, `R[t,t⁻¹]`; localizing either chart gives the third | Both localization comparisons agree |
| 0.3 two universal properties | `t=u²`: normalization is `P¹_u`; integral intermediate `P¹_t` receives a degree-2 map. A rational square root of `t` would have valuation `1/2`, so the reverse map over `P¹_t` does not exist | Arrows and function-field marking are correct |
| 0.3 inseparability and constants | `t=u^p` in characteristic `p`: field degree `p`, separable degree `1`, closure `k[u]`; separable quadratic constants split into `2` components over a splitting field | No false smoothness or invented field of fractions |
| 0.3 integral coordinate changes | `t↦πt` reduces to the constant `0` on the finite chart; its inverse uses `π⁻¹`. A matrix in `GL₂(R)` has unit determinant and an integral inverse | Marked coordinate-independence has the right restriction |
| 0.3 modular comparison | At prime level `11`, the comparison preserves the same `j∈Q(Y)` and has generic field map `id`; if constants split into two fields, the normalization has two corresponding components | Does not infer irreducibility from the supplier |
| 0.4 dimension and flatness | `P¹_K` has dimension `1`; `P¹_R` for a DVR has dimension `2`; `R[t]` has scalar torsion `0` | Values equal `dim S+1`, and the Dedekind flatness input applies |
| 0.4 constants; Lean line 64 | `Q(t)/Q` gives `Γ=Z`; `Q(√2)(t)/Q` gives `Γ=Z[√2]`. In the first case `t` is neither global nor integral over `Z`; `1/2` is neither | Both directions of the integral-closure equality pass |
| 0.5 ordered differential; R01/R03 | Over `Z`, `d(1,0)=1`, `d(0,1)=−1`, `d(1,1)=0`; plus-sign substitute gives `2` on `(1,1)` | Retain minus sign; add the native headline and prose laws |
| 0.5 kernel/cokernel | On `P¹`, for `n=−2,−1,0,1,2`, ranks of `H⁰(O(n))` are `0,0,1,2,3`, ranks of `H¹` are `1,0,0,0,0`; the Laurent quotient gives those same ranks | Canonical cokernel is not uniformly zero |
| 0.5 nonproper cover and flat base change | On `A²_k−{0}`, `x⁻¹y⁻¹` belongs to neither summand and has nonzero quotient class; extension `R→R'` sends the generator of `H¹(O(−2))=R` to the generator of `R'` | Affine-cover and scalar witnesses agree |
| 0.6 overlap quotient | For `P¹`, every Laurent monomial lies in one chart, so quotient `0`; the smooth elliptic example has generic and integral free ranks `1` | Does not kill genus-one cohomology |
| 0.6 fibre jumps and Tor | For `H¹=R^r⊕R/(π^m)`, `m>0`, generic rank is `r`, special-fibre dimension is `r+1`, and `Tor₁=k`; for torsion `0`, the added dimension is `0` | Flatness iff torsion-free agrees in both cases |
| 0.6 constant-field genus convention | `P¹_{K'}` as a K-curve with `[K':K]=2`: `(h⁰,h¹,χ)=(2,0,2)`; `1−χ=−1` differs from `h¹=0` | Correctly avoids calling both quantities genus |
| 1.1 multiplicity and total degree | A doubled line has `(d,e,δ)=(2,1,2)`; `O(1)` has partial degree `1` and total degree `2=2·1` | Multiplicity factor is necessary |
| 1.1 geometric multiplicity | A reduced purely inseparable constant extension of degree `p` has `d=1,e=p,δ=p`; `O(1)` has degree `p`, divisible by `e` | Geometric length and ordinary length are distinct |
| 1.1 total zero versus identity | On two rational components, multidegree `(−1,1)` has total `0` but is outside `Pic⁰`; `(0,0)` is inside. The geometric degree lattice has rank `2` | Both directions of componentwise-zero criterion pass |
| 1.1 degree components on disconnected tests | Degrees `(0,1)` on `Spec k ⊔ Spec k` belong to no single constant-degree piece; degrees `(0,0)` belong to degree `0` | Locally constant degree is not a single global integer |
| 1.2 quasi-sections and obstruction | A double component has quasi-section rank `2`, not `1`; an obstruction of order `2` is killed by rank `2`. Ranks `2,3` give gcd `1` and `−2+3=1` | Norm/Bézout route uses exactly the stated gcd |
| 1.2 strict-local qualification | A nonsplit conic over `ℝ` has component multiplicity `1` but divisor index `2`; after separable closure its index is `1` | Strict henselian hypotheses exclude the naive converse |
| 1.3 rigidificator | One section on `P¹_R` gives functions `R→R`, kernel `0`; one point on only one component of `P¹⊔P¹` gives `R²→R`, kernel `R`; empty rigidification gives `R→0` | Universal injectivity discriminates the intended object |
| 1.3 unit exact sequence | Two disjoint sections on a connected family give `G_m²/G_m≅G_m`; one gives `G_m/G_m=0` | Does not discard the rigidification kernel |
| 1.3 function corepresenter | `Hom_A(A/(ε),M)={m:εm=0}`; for `M=A`, this is `Ann(ε)`, not a free rank-one copy of `A` | Finite presentation is not local freeness |
| 1.4 rigidified versus unrigidified representability | For `P¹`, `Pic⁰=0`; rigidifying at two points adds a `G_m` fibre of dimension `1`. Curve obstruction group `H²(O)=0` | Forgetful smoothness and relative dimension are consistent |
| 1.5 section normalization | Restriction of `L⊗f*e*L⁻¹` to e is `e*L⊗e*L⁻¹=O` | The normalization kills the base line |
| 1.5 elliptic universal bundle | Along either axis the four factors contribute `N⊗N⁻¹⊗N⁻¹⊗N=O`; omitting the base factor leaves `N⁻¹` | Both axes fix the normalization |
| 1.6 fixed-rank Cartier loci | Rank `0` gives the empty divisor, hence one parameter point; rank `1` on a smooth relative curve gives the curve. The node's maximal ideal has two generators and is not Cartier | Correct zero/rank-one and singular negative controls |
| 1.6 infinitesimal and characteristic 2 | `A[u]/(u²−ε)`, `A=k[ε]/ε²`, is free on `1,u`, rank `2`, including characteristic `2`; derivative `2u=0` in that characteristic | Finite flat divisors need not be étale |
| 1.7 complete-linear-system fibre | On `P¹`, `h⁰(O(r))=r+1`, so the quotient-line projectivization has dimension `r`; for degree-g nonspecial bundles, Riemann–Roch gives `h⁰=1`, fibre `P⁰` | Projectivization and open-immersion statements agree |
| 1.7 reducible fibre and pointed target | Section `(1,0)` on a disconnected reduced fibre is nonzero but a zero divisor; on a reducible connected curve, `D−re` can have partial degrees `(r,−r)` | Geometric integrality and the degree-zero/identity distinction are used |
| 1.7 arbitrary test-base corepresenter | In the stated square-zero ring, `A/(ε)` has one relation; `Ann(x₁)=(ε,x₁,x₂,…)` has infinitely many generators, so `(x₁)` is not finitely presented | Finite presentation is retained without a coherence overclaim |
| 1.8 quotient bridges | `G/1=G`, `G/G=1`; in characteristic `p`, `G_m/μ_p≅G_m` via pth power, with kernel of scheme rank `p` but one geometric point | fppf quotient handles nonreduced subgroups |
| 2.1 smooth pointed families | On `P¹`, `H⁰=R`, `H¹=0`, and section degree `1` is ample; on a smooth elliptic curve, `(h⁰,h¹)=(1,1)` | Universal functions and ampleness are not genus-zero only |
| 2.2 relative Jacobian and actual classes | Genus `0` gives `J=0` and tangent dimension `0`; an elliptic curve gives `J=E` and tangent dimension `1` over dual numbers | No artificial positive-genus restriction on this comparison |
| 2.3 Galois descent | For a pointed elliptic curve, `[P−O]` maps to P and conjugation sends both to `σP`; a real nonsplit conic has `Pic(C)=2Z⊂Pic(C_C)^G=Z`, cokernel `Z/2` | Section split is essential; the conic tests full Picard obstruction, not a false degree-zero counterexample |
| 2.4 good reduction | If two sections coincide mod π, `O(P−Q)` restricts to `O`, degree `0`; `[2]P` restricts to `[2]P_s` | Bundle restriction and group specialization commute |
| 3.1 generic unit closure and separated quotient | On the blow-up of `P¹`, vertical classes modulo the whole fibre are `Z`, whereas `Q=0`; using full Picard would leave generic degree group `Z` | E and total-degree-zero P are both necessary |
| 3.1 nonhomomorphic separated target | On a smooth elliptic family, `Q=P`; translation by a nonzero a sends `0↦a≠0` but factors as the same translation | Universal property is genuinely broader than group homomorphisms |
| 3.1 flat trait base change | `xy=π` becomes `xy=(π')²` at ramification index `2`; the generic quotient comparison remains the same, while node tangent dimension becomes `3` on a surface of dimension `2` | No ramified Néron-base-change assertion is inferred |
| 3.2 normal-model criterion | Multiplicities `2,3` have gcd `1`; a lone multiplicity `2` has gcd `2`. A regular section meets a multiplicity-one smooth component | Criterion accepts the first and pointed cases, excludes the second |
| 3.2 Stein factorization; R02 | A normal proper curve with constants K has finite factor `Spec K`; with purely inseparable constants K' it has factor `Spec K'` of degree `[K':K]` | Correct supplier §4.9 covers both noetherian examples |
| 3.2a Brauer vanishing; Lean line 76 | `Br(k((t)))=0` for algebraically closed k; `Br(Q_p)=Q/Z` contains an element of order `2`. The extension `k((t))⊂k((t^(1/p)))` still gives Brauer group `0` | The residue-field hypothesis and fraction-field distinction survive |
| 3.2a actual bundles | A rational point makes the obstruction map `0` by pullback splitting; algebraically closed residue makes its target `0`. With gcd `δ=2`, norm realization alone only gives `2ξ` | The stronger generic realization input is not replaced by the norm multiple |
| 3.3 full Néron comparison | For split `I₂`, `N⁰_s=G_m` and `Φ=Z/2`; for good elliptic reduction `Φ=0` and `Q` is the abelian model | Full Q cannot be replaced by its identity component |
| 3.3 finite-type estimate | For a two-component fibre, intersection rank is `1=2−1`; for one component it is `0=1−1`, with component quotient `0` | Finiteness calculation agrees in the boundary case |
| 3.4 rational singularities | Resolving a normal node adds chains of rational curves with `H¹=0`, giving `R¹r_*O=0`; an elliptic exceptional curve has `h¹=1`, exhibiting the obstruction | Keeps the rational-singularity condition, not mere normality |
| 3.5 global gluing | No bad places gives the abelian model itself; two bad places give two local models, with transition `id` on their shared marked generic fibre and cocycle `id·id=id` | Finite gluing uses markings and Néron uniqueness |
| 4.1 reductionHom; Lean line 91 | For `G_m`, units reduce to units and `red(ab)=red(a)red(b)`; the constant `S₃` gives the identity on all six elements, although multiplication is noncommutative | Definition correctly needs a group object, not commutativity |
| 4.1 henselian versus nonhenselian surjectivity | `μ₃(Z_(7))={1}`, while `μ₃(F₇)={1,2,4}`; over the henselization all three simple roots lift | Smoothness alone does not assert surjectivity over the original DVR |
| 4.1 full component quotient | Split `I₂` gives two components versus one identity component; a nontrivial component torsor need not have a rational point | Rational components require the stated torsor/H¹ condition |
| 4.2 p-primary kernel; Lean line 102 | Over `Z₂`, `−1` has order `2=2¹` and reduces to `1`; the identity has order `1=p⁰`; at residue exponent `1`, every asserted order is `1^m=1` | Characteristic-zero residue and p=2 boundaries agree |
| 4.2 infinite-order exclusion | In `G_m(Z_p)`, an infinite-order principal unit has `orderOf=0`, whereas `p^m>0`; it fails `IsOfFinOrder` | No total-function junk value enters the theorem |
| 4.2 finite closure route | The cyclic subgroup of order n has n generic sections; their scheme-theoretic image has generic rank n and is finite, with no scalar torsion | Uses the section-union argument before finite-flat uniqueness |
| 4.2 small ramification; Lean line 112 | For `Z₃`, `e=1<2`; for `Z₂`, `1<1` is false. Over `Z_p[ζ_p]`, `e=p−1` and `ζ_p` has order p but reduction `1` | Strict inequality excludes the counterexample at equality |
| 4.3 good-prime bound | For the stated elliptic curve, `#E(F₂)=5` and `#E(F₃)=5`; its rational cusp class has order `5`, so both prime-to-p bounds give `5∣5` | Good-prime counts agree |
| 4.3 bad-prime full-fibre bound | Split Tate reduction with component order `5` over residue `F₃` has full count `(3−1)·5=10`; a component torsion point of order `5` does not divide identity count `2`, but divides `10` | Full special fibre is necessary |
| 4.4 intersection and β | Blow-up matrix `[−1,1;1,−1]` has kernel Q·`(1,1)`, rank `1`, `βα=0`; its image equals `ker(a₁+a₂)` | Component quotient `0`, as claimed |
| 4.4 Smith presentation | Split `I₂` matrix `[−2,2;2,−2]` has nonzero Smith factor `2`; minors have gcd `2`; class `(1,−1)` has order `2` | Lattice and component orders agree |
| 4.4 negative vertical correction | For `c=(−1,0)`, `αc=(2,−2)`; corrected degree is `(2,−2)−(2,−2)=(0,0)`, whereas a plus sign gives `(4,−4)` | Correction sign is fixed |
| 4.4 imperfect normalization (formal data) | `e=(1,2)`, `d=(1,1)` give `α=[−2,2;1,−1]`, `β=(1,2)`, `βα=(0,0)`; `β(−2,1)=0`, but `β(−2,2)=2` | Dividing rows by e is essential |
| 4.4 transpose control (same formal data) | With the transposed α, `(1,2)αᵀ=(2,−1)≠(0,0)` | Column-vector convention is fixed across the maps |
| 4.4 one-component and correction ambiguity | `I={1}` gives `ker(δ·)=0`, empty-minor determinant `1`, component order `1`; adding the whole fibre to a correction changes its line bundle by `O(div π)=O` | Empty minors and pointed independence agree |
| 4.4 Galois invariants | For cyclic component group `Z/3` with Frobenius `a↦−a`, fixed subgroup is `0` because `2a=0` forces `a=0`; split action fixes all `3` classes | Rational components use invariants, not the full geometric group |
| 4.4 Greenberg levels | Over `k[[t]]`, `Gr₁(A¹)=A¹`, `Gr₂(A¹)=A²`; `G_m(k[t]/t²)` consists of `a+bt` with `a≠0`, kernel `1+bt≅G_a` | Includes the nonreduced test ring and excludes nonunits |
| 4.4 mixed-characteristic ring space | In `W₂(k)`, `p≠0` but `p²=0`; a k-algebra structure would require `p=0` | Ordinary k-algebra Weil restriction is correctly rejected |
| 4.4 identity-point lifting | For identity `G_m→G_m`, component quotient is `0` and identity-point map is onto. For pth power over a mixed-characteristic DVR, not every principal unit is a pth power | The surjectivity-on-R-points hypothesis prevents the false variant |
| 5.1 regular-model existence | `P¹_R` is already regular, so zero blow-ups suffice; on a field base the curve has dimension `1`, not `2` | Excellent-surface resolution is used only in its surface range |
| 5.1 finite bad set | A dense open of a noetherian Dedekind scheme has a zero-dimensional closed complement with finitely many points; for an everywhere-smooth model the complement has `0` points | No implicit infinite gluing or canonical model choice |
| 5.2 assembled specialization | Blow-up of `P¹` gives both generic Jacobian and component group `0`; split `I₂` sends `(1,−1)` to class `1∈Z/2`, while its double permits correction to zero | Assembled maps retain component information |
| Worked example: invariants | For `Y²+Y=X³−X²−10X−20`, computed `c₄=496`, `c₆=20008`, `Δ=−161051=−11⁵`; `496³−20008²=1728·(−161051)` | Discriminant and bad prime agree |
| Worked example: order | Starting at `(5,5)`: `2P=(16,−61)`, `3P=(16,60)`, `4P=(5,−6)`, `5P=O` | Exact order `5`, not merely a divisor of 5 |
| Worked example: bad reduction | Mod 11 the node is `(5,5)`; tangent cone `v²−3u²` splits since `5²=3`. Ten nonsingular points and five components give full Néron count `50` | Split multiplicative calculation agrees |
| Form checks R03/R04 | Existing declaration count is `7`; the five quoted proposed API names contribute `0` declarations. Existing layer labels count `0`, versus three represented layers `0,3,4` | Apply the two prose/section-comment repairs |

**Headline coverage.** The end results are: marked normalization and its finite proper flat model (§§0.3–0.4); canonical two-chart cohomology and fibre-jump formulas (§§0.5–0.6); rigidified and cohomologically flat Picard representability, universal families, symmetric powers and Abel fibres (§§1.3–1.7); relative-Jacobian/actual-class/Galois and good-reduction comparisons (Layer 2); the separated quotient, normal-model criterion, strict-local Brauer realization, full Raynaud comparison, rational-singularity criterion and global gluing (Layer 3); arbitrary-group torsion reduction, global torsion bounds, geometric components and vertical correction (Layer 4); global regular-model existence and the assembled specialization theorem (Layer 5). Section extension and regular-section smoothness (§0.2) are also substantial retained acceptance statements.

Six of these signatures are present. The docstring names the missing Picard, algebraic-space, Jacobian, Néron, marked-chart and excellence interfaces for the others; no empty predicate or sorry-defined object is used instead. The independent §0.5 theorem is the exception identified in R01. No weakened scalar-only replacement for the component or Jacobian theorems appears in the Lean file.

**Pinned-library audit.** The following declarations and their surrounding hypotheses were opened, rather than inferred from their names. Paths here are relative to the named library. Searches were by object as well as by proposed declaration name.

| Pinned file and line | Object inspected and boundary retained |
|---|---|
| `Mathlib/AlgebraicGeometry/Normalization.lean:122`, `:215`, `:372` | `normalization`, `normalizationObjIso`, `normalizationDesc`: relative integral closure and direction to an integral intermediate factorization; not automatic normality for arbitrary source algebras |
| `Mathlib/RingTheory/Localization/Integral.lean:448` | `IsLocalization.Away.integralClosure`: localization of integral closure |
| `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:300` | `smoothLocus`: local formal smoothness, with the finite-presentation hypotheses used by the roadmap |
| `Mathlib/Algebra/BrauerGroup/Defs.lean:99` | Native field Brauer group; no replacement by an arbitrary cohomology predicate |
| `Mathlib/RingTheory/DiscreteValuationRing/Basic.lean:402` | `addVal`, uniformizer normalization, and `addVal 0=⊤` at line 417 |
| `TauCeti/AlgebraicGeometry/Fibers.lean:43` | `genericFiber`, with `genericFiberι` at line 49 |
| `TauCeti/AlgebraicGeometry/Curves/StableReduction/Model/Basic.lean:44` | `Model` carries flatness, local finite presentation, quasi-compactness, quasi-separatedness and a generic marking; properness is separate |
| `TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:108` | `cohomologyOn` and restriction at line 113 use actual module sheaf cohomology |
| `TauCeti/AlgebraicGeometry/Cohomology/MayerVietoris.lean:80` | Connecting map; signed sequence at 98, exactness at 112, degree-at-least-two affine-cover vanishing at 185 |
| `TauCeti/AlgebraicGeometry/Cohomology/Module/Basic.lean:74` | Scalar action on cohomology and linear coefficient maps at 92; `Module/Base.lean:45` supplies the base-scalar version |
| `TauCeti/AlgebraicGeometry/LineBundle/Rigidified/Basic.lean:74` | Rigidification goes `s*L ≅ O`; the README deliberately uses its inverse |
| `TauCeti/AlgebraicGeometry/PicardFunctor/Rigidified.lean:66` | Actual section-rigidified bundle classes and pullback; no arbitrary finite-flat-rigidificator representability theorem |
| `TauCeti/AlgebraicGeometry/WeilDivisor/Scheme/PicZero.lean:88` | `picZero`, `map_picZero` at 126 and `classGroupPicZeroAddEquivPicZero` at 151; actual classes rather than all rational points of a Picard sheaf |
| `TauCeti/AlgebraicGeometry/EffectiveCartierDivisor/Relative.lean:63` | Effective Cartier plus flatness of the divisor over the base; arbitrary-pullback comparison at 183 |
| `TauCeti/AlgebraicGeometry/Curves/StableReduction/Picard/Basic.lean:267` | Numerical total degree and degree at 294; its supplied weights cannot silently be identified with geometric eᵢ |
| `TauCeti/Algebra/AlgebraicGroup/ConstantGroup/Scheme.lean:66` | Finite constant group scheme, including nonabelian groups |
| `TauCeti/Algebra/AlgebraicGroup/DiagonalizableGroup/Scheme/Points.lean:126` | Native scheme-point multiplicative equivalence |
| `TauCeti/Algebra/BrauerGroup/Trivial.lean:238` | Algebraically closed field Brauer vanishing, and finite-field case at 247; neither is the fraction-field theorem in this roadmap |
| `TauCeti/Algebra/CrossedProduct/Comparison.lean:267` | `brauerCohomologyEquiv`, the field comparison already supplied |

The audit resolves 19 file groups in this table. The searches did not identify an existing generic Néron-model predicate, a represented relative Jacobian/Picard identity-component interface, or an excellence predicate that would make the omitted geometric headline signatures native at these pins.

**Ownership and supplier resolution.** Object searches used `roadmaps grep` and `roadmaps show`, the main checkout, the supplied open heads and the board packages. Existing-roadmap revisions were not used to override main. The following contracts were resolved against their actual sections:

- AlgebraicCurves Layers 2 and 12: field integral closures, normal proper curves and places; the Dedekind global model here is additional. Main Layer 12 begins around line 1480.
- JacobianChallenge Layers A–F, especially A–C at lines 111–217: field divisors/Picard/cohomology and fixed-field symmetric powers. StableReduction Layers 2–5, including the intersection and local resolution interfaces at lines 529–576. The global Dedekind modification is an additional result here.
- AlgebraicVectorBundles L1A–L1B, main lines 269–305: relative Spec and the symmetric-algebra specialization. These are consumed, not reconstructed.
- ModularCurves 0A–0B and Layer 10, main line 2103 onward: Cartier/rank inputs and the exact prime-level normalization range. The new comparison does not assert that every coarse curve is integral.
- JacobianChallengePartII §§0.1–0.3 and 1.1–1.3: relative degrees, positive-genus smooth projective Picard/Jacobian families, base change and Abel maps. The genus-zero and integral-model comparisons here differ from those contracts.
- AlgebraicModuliForArithmeticGeometry §2.1 and §§7.3, 7.6.1–7.6.1a, 7.9: Hilbert/Quot input, infinitesimal Picard lifting, the relative Picard sheaf, section split, degree-one criterion and scheme-component criterion. The general rigidificator and multiplicity-gcd criteria are additional.
- ComplexComparisonPartII §§C3.2d.2–d.4 and C3.2f.1–f.2: universal-global-functions representability, separatedness for integral fibres, Brauer obstruction and identity components. Universal-global-functions hypotheses are not silently dropped when invoking those suppliers.
- SchemeAndStackFoundations §0.9, §§1.1–1.6, 1.13–1.17, 2.22, 3.5–3.7, 4.1, 4.6, 4.11–4.14: spreading, algebraic spaces, descent, norm, Brauer, Picard and modification foundations. Its §4.9 Stein result exists but must be cited correctly (R02).
- ReductiveGroupsPartII RG2.3.1 and RG2.3.7: scheme quotients, Lang's theorem and affine local-field jets. The arbitrary complete-DVR/group-space extension is explicitly owned here; it is not falsely attributed to the local-field supplier.
- AbelianSchemesAndArithmeticModuli A0.1 and A1–A2: abelian schemes and their normalized duality objects. The curve × Picard normalization does not duplicate the J × J polarization convention.
- NeronModelsAndSemistableAbelianVarieties §§1.1–1.10, 2.1–2.2, 3.8–3.9 and 4.7: mapping property, global existence, components, semistable comparison and algebraically closed residue/gcd-one component formula. Imperfect-residue normalization and the permitted gcd-greater-than-one case remain additional here.
- FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.1.2, R07.1.20 and R07.1.30: étaleness, closure inside a finite flat ambient group and strict small-ramification full faithfulness. The separate section-union proof handles the nonfinite ambient group in §4.2.
- ClassFieldTheory Layer 5, main line 920 onward: the local Brauer invariant for the `Br(Q_p)≠0` boundary. HeightsRationalPointsAndObstructions §1.18 has the good-reduction number-field torsion application, not the arbitrary-DVR and bad-prime theorem owned here.

These are 15 named roadmap owners/boundaries. Searches of the supplied open work also found FunctionFieldArithmetic explicitly consuming the rigidificator/relative-Picard construction, and HyperellipticCurves using its own field two-chart setting. Neither supplies the arbitrary-fibre Dedekind comparison planned here. No duplicate fully qualified name among the seven declarations was found, and no later roadmap was adopted as a supplier.

**Seeded source sample.** All 15 requested targets were checked at the stated theorem/tag and printed page; there are no additional locators labelled unverified in the README. Three cited works were retrieved legally through the sources service: BLR from the institutional archive, Stacks from the project, and Parson from the Stanford author-hosted notes. The BLR scan has interleaved two-page OCR: formulas and hypotheses were also read on the page images, not accepted from garbled OCR. `blr line N` below refers to the review's combined numbered extraction; printed page numbers identify the original location. The Stacks line citations also identify their chapter because the single source key has several chapter extractions.

| Sampled target | Source text inspected | Result of locator/hypothesis comparison |
|---|---|---|
| 0.3 normalization | stacks line 6245 and line 6260, Morphisms, tags 035H/035I, Definition 29.54.3 and Lemma 29.54.4, printed pp. 136–137; curves line 99, tag 0BY1, Theorem 53.2.6 | Integral intermediate factorizations receive the normalization map. Normal-source factorization is the separate integral-closedness argument. The generic field-curve comparison retains finite generation and transcendence degree one. |
| 0.4 finiteness, models, constants | stacks line 6419, Morphisms, tag 0AVK in cited §29.54; algebra line 20761, tag 032L; more-algebra line 2445, tag 0AUW; varieties line 4034, tag 0C45 | Nagata and finite-separable alternatives are correctly distinguished; Dedekind torsion-free flatness and normal one-dimensional regularity apply. Constants use proper coherent finiteness and integral closedness, as the README explains. |
| 1.1 multiplicities/degrees | blr line 2616, line 2644, line 2702, line 2777 and line 2803: §9.1 Definition 3, Lemma 4, Proposition 5, Corollary 8, pp. 239–242; §9.2 Corollaries 13–14, p. 251 | `δᵢ=dᵢeᵢ`, weighted total degree, eᵢ-divisibility, geometric partial-degree identity criterion and finite-index degree lattice match. |
| 1.2 quasi-sections/realization | blr line 2696, line 2736, line 2755, line 2766 and line 2732: §9.1 Lemma 7, Corollaries 9–10, Proposition 11 and Corollary 12, pp. 240–243 | Strict henselian base, geometric multiplicities, finite-flat rank, flat T under ordinary global functions, and the gcd multiple are all retained. The arbitrary-T version uses universal global functions explicitly. |
| 1.7 Abel fibres | blr line 2523, line 2847 and line 2901: §8.2 Proposition 7 and proof, pp. 214–215; §9.3 Lemmas 4–5, pp. 255–256 | The proof uses the finitely presented corepresenter and invertible quotients, hence the dual of locally free `f_*L`. The full projectivization uses geometrically integral fibres; the reduced-connected degree-g open has the separate stated hypotheses. |
| 2.3 actual classes/descent | blr line 1717: §8.1 Proposition 4, pp. 204–205; blr line 2620 and line 2650: §9.1 Theorem 1 and Proposition 2, pp. 238–239 | Section split kills the obstruction; degree is Euler degree. Galois descent is separately justified through the represented Jacobian and actual bundles, not by taking invariants of a quotient without obstruction control. |
| 3.1 separated quotient | blr line 3129 and following three proof cases, pp. 266–267; line 3232, Lemma 8, pp. 269–270; line 3367, proof of §9.6 Theorem 1, p. 275 | Normal geometrically irreducible generic fibre, arbitrary unrepresented Picard case and locally finite-type quotient match. The proof explicitly permits flat trait extensions; this is not a ramified Néron base-change theorem. |
| 3.2 normal-model criterion | blr line 2320 and line 2330: §9.4 Theorem 2 and Corollary 3, pp. 259–260; line 3001 and line 3033, proof pp. 262–263 | Normality, ordinary global functions and geometric multiplicity gcd one are retained. The proof supplies cohomological flatness and the identity comparison before invoking the Néron conclusion. Supplier locator repair is R02. |
| 3.2a Brauer/generic bundles | blr line 1707: §8.1 case (b), p. 203; line 3068: §9.5 Lemma 2 and proof, p. 265 | Henselian DVR with algebraically closed residue field is exactly the fraction-field vanishing case. The proof treats the finite purely inseparable constant field and extends line bundles using regularity. |
| 3.3 full Raynaud comparison | blr line 3144: §9.5 Theorem 4 and Remark 5, p. 267; line 3178 and line 3319, finiteness proof pp. 268–273 | Perfect residue field OR étale quasi-section is the correct alternative. Gcd one is used for the identity-Picard comparison, not imposed on the whole quotient theorem. |
| 3.5 global gluing | blr line 489, line 497, line 516, line 658 and line 675: §1.2 Propositions 3–4/Lemma 5, pp. 13–14; §1.4 Proposition 1/Theorem 3, pp. 18–20 | Finite presentation for spreading, a dense good open, finite complement and marked local Néron models provide the advertised global theorem. |
| 4.2 torsion kernel | blr line 2395 and line 2424: §7.5 condition (*) and Lemma 5, p. 187; Examples 7–8, pp. 189–190, also read on the scan | Lemma 5 itself is finite-flat generic-fibre uniqueness, not directly a torsion-reduction theorem. The roadmap supplies the needed finite section-union closure argument, and imports invertible-order étaleness. The strict ramification boundary matches the examples. |
| 4.3 global bounds | Same §7.5 lemma, and blr line 497/675 for local/global Néron models | Bounds are derived from §4.2 on the full special fibre, with the separate Lang/component-torsor argument for counting. They are not attributed to an unproved identity-component bound. |
| 4.4 component lattice/correction | blr line 3266, line 3285, line 3329, line 3384, line 3403 and line 3475: §9.5 Lemmas 9–11, pp. 270–273; §9.6 Theorem 1, Lemma 2 and Corollary 3, pp. 274–277 | Modified intersection rows, β-weights, hypothesis alternative, identity-point lifting and Smith formula match. The Greenberg proof includes the finite-level/Mittag–Leffler step. Vertical correction is the stated tensor identity with a minus sign. |
| 5.1 excellent-base regular models | stacks line 1880, Resolve, tag 0BGP, Theorem 54.14.5, printed p. 42; proof through line 1908 | The theorem is for a two-dimensional integral noetherian scheme with finite normalization, finite singular locus and normal completed local rings. Excellence supplies those hypotheses here; the separate field-base case is one-dimensional. |

Additional checks included Stacks affine acyclicity/Čech comparison (01XB/01XD), ampleness and projectivity (0B5X/0D2S/0B45), proper spreading (081F), and the Hilbert algebraic-space statement (0D01). BLR §8.3 Theorem 1/Remark 2, p. 223, and §8.4 Proposition 2, p. 232, support the separation of cohomological-flatness representability from curve formal smoothness. The printed §9.7 Theorem 1/Corollary 2, pp. 286–287, match the rational-singularity criterion; Proposition 3, p. 288, has the stated exclusions at 2 and 3. Parson Proposition 8.2 and the following discussion were checked at parson line 688 and lines 708–712; the worked arithmetic was recomputed independently. The typo recorded below is not copied into this roadmap.

Legal source locations: [BLR institutional scan, part 1](https://archive.math.arizona.edu/cais/scans/BLR-Neron_Models/neron1.pdf), [part 4](https://archive.math.arizona.edu/cais/scans/BLR-Neron_Models/neron4.pdf), [part 5](https://archive.math.arizona.edu/cais/scans/BLR-Neron_Models/neron5.pdf); [Stacks normalization](https://stacks.math.columbia.edu/tag/035H), [Stacks resolution](https://stacks.math.columbia.edu/tag/0BGP); [Parson's notes](https://math.stanford.edu/~conrad/vigregroup/vigre03/moduli.pdf).


## Not verifiable

None of the 15 seeded source targets remains inaccessible or uncertified. No missing-text request is pending. Source certification is the seeded sample and the additional locators explicitly listed above; it is not a claim to have independently certified every reference cited by every supplier. The unformalized Picard/Néron constructions themselves remain roadmap targets, so their future Lean implementations and proofs were not tested.

## Source issues

- **Misprint** in parson at §8.1, paragraph following Proposition 8.2, printed p. 15: the source says the order-five component group is at 5; it should be at 11; affects a stated result.
