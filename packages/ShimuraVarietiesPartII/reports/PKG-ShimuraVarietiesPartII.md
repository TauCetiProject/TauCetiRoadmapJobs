# PKG-ShimuraVarietiesPartII

Package written from the accepted design (`packages/ShimuraVarietiesPartII/design/README.md`, `design/plan.json`, review `design/review.json` and `reports/REV-DESIGN-ShimuraVarietiesPartII~3.md`). Deliverables: `packages/ShimuraVarietiesPartII/README.md`, `Suggested.lean`, `metadata.toml`, `sources.toml`, and the top-level `gaps` list of `design/plan.json`.

## Headline theorems

None of them can be stated at the pins (Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a, Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039). The `Suggested.lean` docstring names each one and the carrier it lacks.

| Headline | README | Status | Missing carrier |
|---|---|---|---|
| Common rational Frobenius class, KZ Theorem 5.1.4 | §7.6 | not statable | integral Shimura models and special fibres, G(Q_ℓ)-valued tower local systems, conjugacy quotient Conj(G). Tau Ceti has reductive groups as Hopf algebras (`TauCeti.reductiveCommHopfAlgProperty`, TauCeti/Algebra/AlgebraicGroup/Reductive/Basic.lean:70) but no conjugation coaction or invariant quotient |
| Integral models of abelian type, KPZ Theorem 7.2.21 | §3.8 | not statable | abelian-type Shimura data, Bruhat–Tits parahoric group schemes, integral models, local models |
| Ordinary special lifts, KZ Theorem 4.4.6 | §5.9 | not statable | integral models, μ-ordinary locus, tensor quasi-isogeny group I_x |
| Rational ordinary Frobenius, KZ Corollary 4.4.13 | §5.10 | not statable | ordinary locus and ℓ-adic realizations of points |
| Tate comparison, HT Corollary 2.1.9 | §4.13 | not statable | canonical Hodge tensors, I_x, finite-period crystalline centralizer |
| Density of the ordinary locus, HT Corollary 1.3.16 (with existence of the ordinary class) | §4.7 | not statable | B(G), universal G-isocrystal on a Shimura special fibre, Newton strata (Mathlib's `WittVector.Isocrystal` is pointwise, with no G-structure) |
| Same-field curves, KZ Corollary 5.2.7 | §6.3 | not statable | integral models and Kottwitz–Rapoport strata |

So `Suggested.lean` contains only the module docstring and the namespace `TauCetiRoadmap.ShimuraVarietiesPartII`. It has no declarations, no `TauCeti.*` import and no `set_option`.

**Elaboration.** I ran `lake env lean <abs path>/Suggested.lean` from the content checkout, at the pinned toolchain and manifest. It exited 0 with **0 `sorry` warnings and no other messages** (the output was empty). I elaborated it twice, once before and once after a docstring edit, with the same result.

**`#check` comparison.** There are no declarations, so there was nothing to put in a `#check @name` scratch file and no elaborated types to compare. No binders were lost because there are none.

## Changes from the design (corrections and applied notes)

- **F01** (P3): gap:compact-quotient-borel now cites "K17 Corollary 2.1.7, p.31" in both the README and plan.json.
- **F02** (P3): gap:rg3-conj-prime-centralizer-dimension now points at RG3.0/orthogonal-outer-action. It is reworded as a centralizer-dimension statement about the existing Out′/Conj′/Aut′.
- **F03** (P3): the definition of an R-smooth reductive group (KPZ §2.1.4, p.10) is added to Conventions.
- **F04** (P3): §1.1 (pointwise Hodge comparison) and §1.2 (adapted branches) are swapped, so no forward reference remains inside Layer 1.
- The ten repeated copies of the "corrected Hodge setup" block are replaced by one named standing hypothesis in Conventions, with (D) and (E). Each target says which of them it assumes.
- Wording fixes:
  - §1.8's proof sketch credited KPZ, but the locator is HT Lemma 1.3.6; it now says HT.
  - §7.6 now says what level K^p is used (any level, through the stack of §0.2) and what K_p is.
  - §1.6 now says "geometric point of the special fibre" instead of the ambiguous "geometric special point".
- Process and catalogue language is removed: "supplier request", "source gate", "node", "requested input", "contract", target ids SV2.k/… (now §k.n), and the "Acceptance-test scope" section (folded into Scope and ownership).
- `Suggested.lean` docstring: a first draft said the pins have no reductive groups. That is false for Tau Ceti, which has `reductiveCommHopfAlgProperty`. The README contracts and docstring now say so.

## Supplier gaps: changes to `design/plan.json` `gaps`

The design listed 34 gaps. 13 of them are already stated, as targets of the cited supplier, at the copies this brief gives (board packages, or open PR heads). A gap is for something the supplier does not yet state, so these 13 are dropped from `gaps`. They are cited directly in the README's supplier contracts and *Needs:* lines.

| Dropped gap | Already stated by |
|---|---|
| ffg-very-good | FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.2/very-good and TD.2/tensor-family-independence |
| ffg-versal | FFGPartII TD.4/versal-adapted |
| ffg-integral-tensors | FFGPartII TD.4/integral-tensor-frame and TD.4/crystalline-tensor-integrality |
| ffg-nonexceptional | FFGPartII TD.3/nonexceptional-embedding |
| ffg-exceptional | FFGPartII TD.3/D-central-cover and TD.3/A-central-cover |
| ffg-polarized-chain | FFGPartII TD.3/polarized-chain |
| ffg-ordinary-lift | FFGPartII TD.6/ordinary-adapted-lift and TD.6/sigma-centralizer-action (lift of all of J_b(Q_p)) |
| same-field-schubert-curves | GeometricSatakeAndFusionPartII LM.5/same-field-curve |
| rg3-conjugacy-quotient | ReductiveGroupsPartIII RG3.0/conjugacy-quotient |
| rg3-character-separation | ReductiveGroupsPartIII RG3.0/character-separation |
| rg3-faithful-quotient-finite | ReductiveGroupsPartIII RG3.0/faithful-quotient-finite and RG3.1/finite-fibre-algebraicity |
| rg3-degree-one-residue-descent | ReductiveGroupsPartIII RG3.1/degree-one-residue-descent |
| rg3-elliptic-maximal-torus | ReductiveGroupsPartIII RG3.2/elliptic-maximal-torus |

Two gaps are narrowed to what the supplier does not state:

- **gap:local-models**: GSPartII already states the canonical normal local model and its reduced special fibre (LM.3, LM.7). The gap now asks only for integrality of the very-special special fibre and smoothness of the extremal stratum, ramified groups included (KZ Theorem 4.4.4 and its proof, p.43; §5.2.1, p.49).
- **gap:rg3-cyclic-torus-and-neatness**: RG3.3 already gives connected cyclic closures. The gap now asks only for stabilization of Z_G(γⁿ)° and its comparison with the torus centralizer (HT §§2.1.5–2.1.7, pp.22–24).

The other 19 gaps are kept with unchanged content: open-curve-companions, integral-local-shimura, general-connected-reduction, cr-crystalline-parallel-transport, cr-isocrystal-tensor-descent, noot-coarse-comparison, finite-field-bertini, rational-stack-presentation, component-specialization, hodge-cover-refinement, multiplier-exact-sequences, matched-fibre-product-centre, fundamental-invariant-form, rg3-r-smooth-tori, rg3-r-smooth-abelian-type, rg3-stabilizer-closed-immersion, rg3-conj-prime-centralizer-dimension (F02), compact-quotient-borel (F01), arbitrary-dvr-good-reduction. That makes 21 gaps in total, each stated in its supplier's subsection under `## Exact supplier contracts`. Nothing else in plan.json changed; I checked this mechanically by comparing the file without `gaps` before and after.

Every `gaps` entry also carries a `slug` field equal to its `id` without the `gap:` prefix (for example `slug = "local-models"` for `gap:local-models`), so that each `gap:<slug>` the README names resolves to a declared entry with `needs`, `supplier` and `section`.

For the review's conditional-acceptance list: the 13 dropped gaps no longer need to be announced, because the suppliers already state them.

## Duplication sweep and ownership

I searched by object, not by name: Kisin–Zhou ℓ-independence, Kisin–Pappas(-Zhou) integral models, Kottwitz–Rapoport strata, μ-ordinary loci, Honda–Tate for Shimura varieties, normalization of the Hodge closure. The searches covered `roadmaps grep` (main and the 354 open PR heads), the board packages, and the pinned Mathlib and Tau Ceti.

- **No target of the design is stated elsewhere, so no target was deleted.**
- Related objects owned elsewhere, which this roadmap imports rather than restates:
  - B(G) and the ordinary class: BunGAndNewtonStrata §§1.22–1.29.
  - PEL Newton strata: IgusaVarieties IG.0/IG.2; ours live on normalized Hodge-type models.
  - Twists by torsors: AbelianSchemes §§A6.28–A6.29.
  - Frobenius semisimplicity: AbelianSchemes §A6.21.
  - Conj(G): RG3.0.
- ReductiveGroupsPartIII RG3.5/common-frobenius-class is KZ Theorem 6.2.7, the statement for abelian varieties over number fields. It is not our §7.6, which is KZ Theorem 5.1.4 for points of Shimura special fibres. RG3.5 consumes the geometric theorem. Scope and ownership records that nothing of RG3.5 is used here.
- **Ownership note for a maintainer:** RG3 sits at #238 in the merge order, before this roadmap, yet its RG3.5 cites KZ Theorem 5.1.4 as an input. That is a direction problem inside RG3, not here.
- Library objects checked at the pins and cited with file:line: `WittVector.Isocrystal` (Mathlib/RingTheory/WittVector/Isocrystal.lean:113), `TauCeti.AlgebraicGeometry.AbelianVariety` (Basic.lean:95), `…AbelianVariety.End` (End/Basic.lean:83), `Matrix.transpose_mul_J_mul_eq_det_smul` (SymplecticMultiplier.lean:76), `TauCeti.reductiveCommHopfAlgProperty` (Reductive/Basic.lean:70). Mathlib has nothing on reductive group schemes, parahorics or Shimura varieties; a grep for those terms found only Lie-algebra semisimplicity files.
- No declaration of `Suggested.lean` reuses the qualified name of another roadmap's declaration, since there are none.

**Ownership against open work.** The sibling checkouts named in the brief were searched through `roadmaps grep`, which covers all open PR heads. Board-package suppliers were read from their design READMEs: FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII, GeometricSatakeAndFusionPartII, ReductiveGroupsPartIII, HeckeStacksAndLocalShtukasPartII.

## Notions moved down

None.

GeometricSatakeAndFusionPartII is listed after this roadmap (#306) and is cited for local models (LM.1, LM.3, LM.5, LM.7). The design already depended on it through gaps. The depcheck treats this as a movable order, with no consumer of this roadmap coming earlier: it prints a `moved:` line and reports no UPWARD or CYCLE line.

I chose this over moving the local-model theory down into this roadmap, because that would restate GSPartII's whole LM.3–LM.7 and LM.5. If the maintainer prefers this roadmap to stay at #252, those GSPartII targets would have to move down instead.

## Citations

- I checked every cross-roadmap section cited in the README against the copies the brief gives, by section heading in each supplier's README: ShimuraVarieties, PELModuli, AbelianSchemesAndArithmeticModuli, AlgebraicModuliForArithmeticGeometry, ArithmeticGaloisRepresentations, AutomorphicBundles, BunGAndNewtonStrata, FiniteFlatGroupsAndIntegralPadicHodgeTheory, GeometricSatakeAndFusion, HeckeStacksAndLocalShtukas, MotivesAndAlgebraicCycles, PadicHodgeTheory, PadicDifferentialEquationsAndRigidCohomology, ReductiveGroupsPartII, SchemeAndStackFoundations (main), ShimuraData, NeronModelsAndSemistableAbelianVarieties, IgusaVarietiesAndTorsionConcentration, CrystallineCohomology, GlobalShtukasAndFunctionFieldLanglands, ShimuraCompactifications (each at its open head). The three board packages (FFGPartII, GSPartII, RG3) were read from their design READMEs. Every cited section exists.
- `roadmaps resolve` on the final README reports a single lead: "ReductiveGroupsPartIII RG3.0: no roadmap ReductiveGroupsPartIII on main or in an open pull request". This is a false positive. ReductiveGroupsPartIII is a board package (`packages/ReductiveGroupsPartIII/design/README.md`), at #238 in the merge order, so it is an allowed supplier. The resolver only searches main and PR heads.
- Source locators I introduced, checked against the cached texts:
  - KZ Theorem 4.4.4: KZ line 1887, p.43.
  - KZ §5.2.1, KR strata and smooth extremal stratum: KZ lines 2150–2162, p.49.
  - KZ Theorem 5.1.4: KZ line 2104, p.48.
  - HT §2.1.7, the finite-period group and connectedness for divisible m: HT lines 1048–1078, pp.23–24.
  - KPZ §2.1.4: as quoted in review F03.

## Sources

I fetched no new source; all five works are cited by locator within the texts the manifest already records. `sources.toml` changes only in `cited_for`, which now lists README sections instead of design stage ids. No `needs-references.toml` was written, because nothing was missing.

## Adversarial pass

There is one row per statement, with the computed values. Conventions come first, then the layers in README order.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| H₁/H¹ Hodge and Frobenius convention | elliptic E/F₅, y²=x³+x | affine counts 1,0,1,1,0 → #E=4, trace 2; H¹ poly T²−2T+5, det 5; tower roots 1/α,1/β: sum 2/5, product 1/5 → T²−(2/5)T+1/5; c⁻¹-twist multiplies roots by 5 → T²−2T+5 | consistent | none |
| Group norm N_r vs r-th power | ζ of order 24 in W(F₂₅), r=2, p=5 | ζσ(ζ)=ζ¹⁺⁵=ζ⁶; δ²=ζ²; ζ⁶≠ζ² since 24∤4 | norm ≠ power, as claimed | none |
| Base change F₅→F₂₅ | same E | trace α²+β²=2²−2·5=−6, det 25; tower T²+(6/25)T+1/25 | consistent with §7.2 Check 3 and the Examples | none |
| Conj(G) rational points vs classes | SL₂(R), rotations ±π/2 | both trace 0; the conjugator g with gJg⁻¹=−J has det g<0 | same quotient point, not SL₂(R)-conjugate | none |
| R-smooth group (F03) | split torus G_m; G=GL_n | G_m: its Néron lft model has smooth closure → R-smooth; GL_n: centralizer of maximal Q̆_p-split torus = diagonal torus, R-smooth | definition is sensible on both | added |
| §0.1 integral Hodge data | GL₂ hyperspecial; E⁸ Zarhin | normalization is the identity on a smooth curve; (E×E∨)⁴ has dim 2·4=8 versus 2 for E×E∨ | Checks hold | none |
| §0.2 integral stack | K₁^p=K^p; −1 at non-neat level | quotient by trivial group = S_K; −1 ∈ inertia | holds | none |
| §0.3 prime-to-p tower | Y(9)→Y(3), p≠3 | [K(3):K(9)]=|ker GL₂(Z/9)→GL₂(Z/3)|=3⁴=81; −1∉K(3) since −1≢1 mod 3, so centre acts trivially and the degree is 81 | Example correct | none |
| §0.4 étale tensors | E/F₅; product A₁×A₂ | multipliers 1/5 on H₁, 5 on H¹; off-diagonal map moves the projection idempotent e₁ to a non-idempotent of the frame | holds | none |
| §0.5 lift independence | two lifts on different normalization branches over one Siegel point | the theorem is scoped to lifts of one normalization point; a branch change is excluded by hypothesis | no false claim | none |
| §0.6 crystalline functor; H ⊂ stabilizer | constant ordinary elliptic family; trivial rank-2 isocrystal | geometric monodromy 1, det D=1(−1) has slope 1 → H has a G_m slope quotient; trivial isocrystal: H=1 while stabilizer GL₂ | H≠G in general, as stated | none |
| §1.1 integral frames | GL₂ hyperspecial, ordinary E | D slopes (0,1); filtration by μ_h⁻¹ with Fil¹ of rank 1 | holds | moved before §1.2 (F04) |
| §1.2 adapted branches | GL₂ with empty cutting family | very good everywhere; R_G is the full deformation ring Z̆_p[[t]] (dim 1 relative) | holds | none |
| §1.3 tensor separation | same Siegel point, tensors not identified | hypothesis fails → no conclusion; converse direction not claimed | holds | none |
| §1.4 local-model diagram, relative dimension | GL₂ hyperspecial; GU(1,1) | GL₂: dim S̃ = 1+4 = 5, dim M_loc = 1 → relative dim 4 = dim GL₂; the q-invariant model gives 0 ≠ 4 | holds | hypotheses now named |
| §1.5 ordinary henselization | k′=F_q, connected frame group | Lang gives an F_q-frame, image in M_loc(F_q); disconnected Z/2 fibre: H¹(F_q,Z/2)=Z/2, may lack a point | statement needs G^fix=G°, which it has | none |
| §1.6 strict comparison | Γ₀(p) point | k[[u,v]]/(uv) strict-henselian model; no F_q-rational y is claimed | holds | wording |
| §1.7 canonical model | A¹_Zp versus its blow-up at (p,t) | generic fibres both A¹_Qp; special fibres have 1 versus 2 components | generic isomorphism alone is not enough; Check correct | none |
| §1.8 pro-level DVR bijection | finite-level point with bad reduction | excluded: the statement is for the limit over K^p | holds | proof attribution KPZ→HT |
| §1.9 very-special integrality | Iwahori GL₂ crossing; hyperspecial | Iwahori: uv=0 has 2 components, not integral; hyperspecial: smooth | statement restricted to very special level, as needed | none |
| §2.1 strongly acceptable triple | GU(1,1), K split at p; GSp_{2g} | GU(1,1): Z^c = U(1) ⊃ μ₂, U(1)_Qp ≅ G_m induced → acceptable; GSp_{2g}: Z^c=μ₂, finite, not a torus → fails | both Checks hold | none |
| §2.2 reflex splitting | v₂ splitting at one place only | the statement needs all places over p; a single place is a non-example | holds | none |
| §2.3 non-exceptional cover | split type A; PGL_m(D) with p | ind D | first allowed, second excluded by hypothesis | holds | Check reworded |
| §2.4 exceptional cover | D^H with split CM norm-one torus; wild type A | D^H: coinvariants of a split torus are free; wild type A: no torsion-free claim | holds | API reworded |
| §2.5 general cover | two simple factors with multipliers 2 and 3 | block diag(2,1)⊕diag(3,1) fixes no single c | common-multiplier fibre product needed, as stated | none |
| §2.6 torsion-free, not torsion | coinvariants 0; Z/2 | 0 is torsion-free (allowed); Z/2 is not | holds; KZ v2 misprint recorded in References | none |
| §3.1 A_int groups | torus G | derived completion trivial; A(G)=G(A_f)/closure Z(Q) can be nontrivial | Check holds | φ(γ)⁻¹ notation |
| §3.2 reflex units | trivial cover, unramified data | inertia at p acts trivially on π₀ | holds | none |
| §3.3 connected cover | G^fix=G° | the cover is the identity | holds | none |
| §3.4 twisting action, transported level | γ=diag(ℓ,1), K_ℓ=GL₂(Z_ℓ) | γ[[a,b],[c,d]]γ⁻¹=[[a,ℓb],[c/ℓ,d]]; contains [[1,0],[ℓ⁻¹,1]] ∉ K_ℓ | level is γK^pγ⁻¹, not K^p | none |
| §3.5 component extension | identity derived cover | identity extension map; kernel A_int° | holds | none |
| §3.6 conjugate-level gluing | Iwahori I, j=diag(p,1) | j[[a,b],[c,d]]j⁻¹=[[a,pb],[c/p,d]]; c=p gives lower-left entry 1, which is not in pZ_p | jIj⁻¹≠I, the correction is needed | none |
| §3.7 free kernel | trivial Δ (G=G₂) | free trivially | holds | wording |
| §3.8 abelian-type models | Hodge-type G₂ (cover = identity) | recovers the Layer 0/1 models | holds | none |
| §3.9 adjoint diagram | CM torus | G_ad=1, M_loc is a point, π=id, relative dim 0 | holds | none |
| §3.10 strong adjoint diagram | GU(1,1) Shimura curve | dim G_ad=3, dim S̃_ad=1+3=4; dim G=dim U(1,1)+1=5, full frame space 6 | Check holds | none |
| §4.1 Newton class | ordinary/supersingular E; torus | slopes (0,1) / (1/2,1/2) in D; torus κ = image of μ_h⁻¹ | holds | notation μ_h⁻¹ |
| §4.2 admissibility | GL₂: b of slopes (0,1) with κ=+1 in the tower | tower requires κ=−1; κ=+1 fails | both conditions needed, as stated | none |
| §4.3 Newton strata | B(GL₂,{μ_h⁻¹}); B(PGL₂) | ordinary tower (0,−1) and basic (−½,−½) both have κ=−1; PGL₂ basic classes κ=0,1 ∈ Z/2 with ν=0 | Checks hold | none |
| §4.4 closure containment | modular curve | supersingular points lie in the closure of the ordinary locus: (½,½) ≤ (0,1) in the dominance order | only containment is claimed | remark reworded |
| §4.5 nonemptiness | GL₂, basic class | elliptic torus from imaginary quadratic K inert at p gives a supersingular CM point | holds | none |
| §4.6 μ-ordinary locus | quaternion division group over Q_p | putative ordinary slopes (0,−1) shift to (½,−½), violating the isocrystal denominator constraint → no ordinary class | the existence hypothesis is needed | API reworded |
| §4.7 density | modular curve | ordinary locus is open and dense; supersingular points are finite | holds | none |
| §4.8 I_x | supersingular E | I=B×_{p,∞}, rank 2; quasi-isogeny p⁻¹·1 ∈ I(Q) \ Aut | holds | none |
| §4.9 realizations, norm | δ_D=[[0,−1],[5,0]] over F₅ | δ_D²=−5·1; δ_D^{-T}=[[0,−1],[1/5,0]], square −1/5; char poly T²+5 → centralizer Q₅(√−5)^×, while J_δ = D× | Check holds | none |
| §4.10 Rosati compactness | supersingular E | H^×/R^× ≅ SO(3), compact; H^× itself is not | "modulo scalars" is needed | none |
| §4.11 Hecke-orbit tensor detection | GL₂ hyperspecial, g₂=−g₁ | x·g₁=x·g₂ via −1 ∈ I_x(Z_(p)) | same class, as stated; converse not claimed | none |
| §4.12 full rank | supersingular E | rank I=2=rank GL₂ | holds | remark reworded |
| §4.13 Tate comparison | ordinary E over F_p | I = K^× for K=Q(π), I_{Q_ℓ}=Z(γ_ℓ)=torus | holds; no use of §7.6 | remark reworded |
| §5.1 integral datum maps | identity map | identity on models | holds | supplier wording |
| §5.2 matched multiplier | diag(2,1), diag(3,1) | multipliers 2, 3; the block sum scales the two summands by different factors | Check holds | none |
| §5.3 matched integral comparison | G₁=G₂, identity | G₃ = G (diagonal) | holds | wording |
| §5.4 Siegel map | the defining embedding itself | the map is the given one | holds | none |
| §5.5 product of abelian fibres | identity matched datum | A₃ = A×A with projection tensors | holds | none |
| §5.6 exact sequences | C_i trivial | I_{x₃} ≅ I_{x_i} | holds | none |
| §5.7 ordinary ⇒ very good | hyperspecial GL₂ | ordinary points are smooth on M_loc=P¹ | holds | none |
| §5.8 Hodge special lift | ordinary E | Serre–Tate canonical lift with CM by K | holds | supplier wording |
| §5.9 strong special lift | GU(1,1) ordinary point | lift exists via the matched datum | holds | none |
| §5.10 rational Frobenius | ordinary E/F₅, trace 2 | γ₀ with char poly T²−(2/5)T+1/5 (tower); elliptic over R since 2²−4·5<0 | holds | none |
| §6.1 KR strata | GU(1,1) hyperspecial | 1 KR stratum versus 2 Newton strata | Check holds | none |
| §6.2 rational lift | x ∈ S(F_q), connected fibre | Lang gives an F_q-point | holds | none |
| §6.3 same-field curves | marked point of degree m>1; constant map | both fail the conditions, as Checks | holds | proof sketch cites LM.5 |
| §7.1 tower local systems | trivial representation | constant sheaf, Frobenius 1 | holds | none |
| §7.2 Frobenius point | g=diag(1,1/5) | det(T−g)=T²−(6/5)T+1/5 | Check holds | none |
| §7.3 unit eigenvalues | det of H¹ of E/F₅ | det = 5, a unit away from 5 but of weight 2, not finite order | handled by a constant twist, as stated | none |
| §7.4 representation-wise independence | E/F₅ at ℓ=2,3 | both give T²−2T+5 (on H¹) | holds | companion wording |
| §7.5 algebraic common class | G_m ⊂ GL₂ via t↦diag(t,t⁻¹) | faithful char poly identifies 2 and 1/2; the identity character separates them | all characters needed, as stated | none |
| §7.6 rational common class | E/F₅ in the GL₂ tower | quotient point (trace, det) = (2/5, 1/5) ∈ Conj(GL₂)(Q) | exists and is unique: Conj(G)(Q)→Conj(G)(Q_ℓ) is injective | level and K_p made explicit |

**Generality.** README and Lean agree: Lean states nothing, and the README carries every generality, with p>2 throughout as in the sources.

**Vacuity.** No statement is quantified over unrelated data.

## Dependency check

```
moved: ShimuraVarietiesPartII moved in the merge order from #252 to #305, right after its last supplier GeometricSatakeAndFusionPartII; checked as moved (the worker moves it there when it submits)
depcheck: 56 roadmaps, 665 edges, 0 problem(s)
```

There is no UPWARD and no CYCLE line. The `moved:` line comes from the GeometricSatakeAndFusionPartII citation discussed under "Notions moved down".

## What the README could not support

The 21 kept gaps are supplier obligations, and the README names each one in its supplier's subsection. Nothing is left unplanned.

## Untrusted text

No suspicious instructions were found in the review reports, the supplier READMEs or the source texts.
