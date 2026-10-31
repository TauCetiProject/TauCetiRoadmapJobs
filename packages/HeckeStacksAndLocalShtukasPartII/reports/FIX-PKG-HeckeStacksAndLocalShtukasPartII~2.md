# Repair report

The eleven findings were verified individually. The manifest pins were confirmed as Mathlib 6b7abb3 and Tau Ceti a91d3aa. Changes are confined to the permitted package files and this report. The mathematical witnesses below are computations, not an assertion of independent acceptance.

## F01 (P1) — applied

Unconditional λ_w^♭♭≤_ℤλ → the defining integral lower bound, equality in σ-coinvariants, and an upper bound conditional on ρ_J∨+η_J∨∈Q∨. Added both twisted A₂ controls; recomputed §§5.2, 6.3 and 8.2 and made §8.4 use the lower bound directly. Evidence: he21 line 347 and he21 line 531; the computed coroot differences appear below.

## F02 (P1) — applied

The A₁ reflection labelled nonshrunken → shrunken, retaining its dimension-one calculation at q=2. Added the nonshrunken split A₂ Coxeter seed of dimension two. Evidence: he15 line 1464 fixes the critical strip; (s₁s₂)⁻¹α₂=α₁ keeps the A₂ image in that strip. The earlier report is outside this edit scope; this report supersedes its erroneous A₁ computation.

## F03 (P2) — applied

Unspecified Hecke basis and degree → T_w=v^(−ℓw)U_w, q=v², T_s²=(v−v⁻¹)T_s+1 and degree in z=v−v⁻¹. Updated the SR.1.5 contract, cocenter gap, plan and §1.3 Check together. Evidence: he14 line 315, he14 line 336 and he14 line 777; SR.1.5 iwahori-matsumoto supplies the unnormalized quadratic relation.

## F04 (P2) — applied

Unqualified Newton closure transfer → equal-characteristic closure and equidimensionality. Saturation and numerical dimension equality hold for every supported local field via §1.3. Updated §§4.2–4.3 to distinguish geometric generic strata from the numerically transported greatest class, keeping §§7.6 and 8.2 valid. Evidence: mv20 line 150, mv20 line 423, mv20 line 458 and he15 line 1373.

## F05 (P2) — applied differently

Compound gaps → separate quantified contracts; GS0 already supplies the flag geometry. Replaced unspecified linearization by the all-characteristic unipotent filtration. Distinguished transported support on extensions from ordinary Coxeter support, and allowed the minimal Coxeter representative to depend on its input. Recorded local ownership of §§0.3, 5.2 and 8.4; retained external root-theory requirements as explicit gaps.

## F06 (P3) — applied

Descriptive supplier references → precise gap slugs. Sections 1.3 and 7.4 name the normalized cocenter gap; §3.3 names superbasic classification; §7.3 names BunGAndNewtonStrata §1.45. Sections 1.1–1.2, 5.1–5.2 and 8.4 and their layer dependencies use the split contracts. Evidence: the supplier heads contain SR.1.5 iwahori-matsumoto and §1.45 general-levi-newton-comparison, but no superbasic classification or twisted cocenter.

## F07 (P3) — applied

Basic specialization with a strict λ-gap → the basic shrunken theorem without that gap, using the strict-gap theorem and the finite-quotient case. Deleted the minuscule warning and added w₀ in split A₂: λ=0, dimension three. Updated the headline description and Lean docstring. Evidence: ghn15 line 119, he15 line 1482 and he15 line 1552.

## F08 (P3) — applied

Length-only convention comparison → explicit λ↦−λ and Φ⁺↦−Φ⁺ transport, with GL₂ representatives and arithmetic invariants. The two-term witnesses give κ=±1 and ±2, with the corresponding dominant Newton points. Verified against ReductiveGroupsPartII RG2.4 dominant-coinvariant-cocharacters and its newton_translation_split_sign Check; recomputed the §4.1 component test.

## F09 (P3) — applied

Implicit subgroup invariance and parabolic factorization → named pinned APIs in the supplier contracts and Needs of §§0.1 and 5.2. The split root-sign gap excludes the supplied minimal-coset factorization. Evidence: Mathlib/GroupTheory/DoubleCoset.lean:51 and TauCeti/GroupTheory/Coxeter/Parabolic.lean:101, :233, :280 and :330, read at the manifest pins.

## F10 (P3) — applied

Private extraction pointers → public theorem/section/page locators throughout the README. Replaced HSD6 by §6.3, repaired the flag-model sentence, stated the exact/bounded notation directly, and joined §0.4’s API list. The hn14 and cocenter contract locators are public as well. Extraction line locators remain only as evidence in this report, as required by the brief.

## F11 (P3) — applied

Reduction locator PDF pp. 7–9 → pp. 6–10; §4.3 now cites mv20 Lemma 3.2, arXiv v3, PDF p. 5. Corrected the manifest locators and cited-for lists, including the newly explicit supplier inputs. Evidence: gh10 line 224, gh10 line 395 and mv20 line 266.

## Supplier contracts and ownership

The top-level gaps list and README have fourteen matching supplier contracts. No other part of design/plan.json changed, including its historical source and review records.

| Former contract | Replacement |
|---|---|
| twisted-redmin-demazure | demazure-product; twisted-redmin; straight-finite-parabolic; finite-coxeter-basic-class; parabolic-root-length |
| newton-cell-purity | newton-poset-length; newton-cell-strong-purity; newton-cell-greatest; newton-cell-adlv-dimension |
| general-flag-geometry | GS0 parahoric-ind-projectivity, equal-characteristic-schubert-models, flag-incidence-correspondences and flag-convolution-fibres; local graph pullbacks remain §§0.5 and 6.1 |
| unipotent-linearization | Same slug, now a smooth M-stable filtration with equivariant additive Lie quotients, compatible with σ and unramified base change |
| twisted-affine-cocenter | Same slug, with the quadratic relation, rescaling and polynomial variable fixed |
| dominant-subtraction | Same slug, with the feasible set, least element, ordinary-difference case, iteration and dominant-orbit comparison explicit |

The remaining superbasic-classification and levi-intersection-dimension gaps retain their mathematical content. RootSystemsPartII RS2.1 is only the integral-order supplier. Its design’s “Independent continuation briefs” assigns the affine extensions to an unadopted continuation proposal; this package neither creates that roadmap nor claims RS2.1 supplies those extensions. Resolving that supplier ownership is not actionable in this package and requires a maintainer decision. The exact requests remain recorded against the named earlier supplier, with sections explicitly marked as required extensions. Sections 0.3, 5.2 and 8.4 remain owned here.

The split contracts were read against gh10 line 219 and gh10 line 414; hn14 line 398 and hn14 line 434; he14 line 304, he14 line 369 and he14 line 1289; ghkr06 line 910; mv20 line 378 and mv20 line 434; and vie14 line 768. Viehmann’s own setup requires a reductive O_F-model (vie14 line 27); the contract therefore also cites the general quasi-split setting of mv20 line 191 and its generic-class assertion at mv20 line 247, together with he21’s closure comparison at he21 line 286. The new ham17 source was fetched legally through the source service, under its single manifest key. Its arXiv v3 numbering is Definition 2.1(3), PDF p. 4, and Corollary 2.7, PDF p. 5, rather than the published “Proposition 1” cited by mv20. Its definition clarifies topological strong purity (ham17 line 182); the assertion about equal-characteristic loop cells is taken from mv20 line 438, not inferred from Hamacher’s different coefficient setting.

Two qualifications prevent new defects in the suggested split. For a length-zero automorphism τ, support is transported: supp of the Coxeter factor of (xτ)*(yυ) is supp x∪τ(supp y). A plain union on the extension is false. Also the finite-Coxeter contract quantifies its minimal representative after fixing the input. In affine A₁ with τ=1, μ=0 gives the minimal reflection s₁ and μ=α∨ gives the other minimal reflection s₀; simple length-nonincreasing conjugations cannot identify these two length-one words. Their basic B(G)-class agrees, which is all §7.4 needs.

Ownership searches used the roadmap service over main and the indexed open heads, and object searches over board packages and both pinned libraries: affine Deligne–Lusztig loci, relative Frobenius, shrunken chambers, class polynomials, Demazure multiplication, twisted Red-Min, superbasic classes, unipotent filtrations and Newton purity. Open-head ownership was checked through those supplied tools. GS0 supplies the generic flag geometry, the pinned Coxeter API supplies minimal-coset factorization, and the other missing inputs are recorded as gaps rather than duplicate local constructions. GS0’s own reference to a Demazure product in RG2.4 does not establish that missing supplier contract; gap:demazure-product records the actual requirement.

Cross-roadmap citations were checked against content main 7bd35ba and the indexed open heads, including ReductiveGroupsPartII, SmoothRepresentationsOfLocalGroups, BunGAndNewtonStrata, GeometricSatakeAndFusion, TraceFormula and the contextual HS0–HS4 base roadmap. Main’s RootSystems Layers 3, 4 and 6 and SchemeAndStackFoundations §§0.7, 0.9, 0.23–0.26 and Layer 1 were read directly. Three main-roadmap shape examples were read: RootSystems, SchemeAndStackFoundations and AdicEtaleGeometry. The base roadmap and the component, integral and Kottwitz continuations are context/consumers, never proof suppliers.

## Adversarial mathematics pass

This table records the values computed for the definitions, conventions, theorem statements and changed supplier contracts. The rational A₂ coordinates use α₁∨=2ω₁∨−ω₂∨ and α₂∨=−ω₁∨+2ω₂∨. The small semi-module and root-coordinate computations were independently evaluated in scratch; no computational algorithm was added to the roadmap.

| Statement | Instances tried | Computed values on the two sides | Result | Change |
|---|---|---|---|---|
| Local-field and coefficient conventions | q=2,3; q=1 | 2=2¹ and 3=3¹ admitted; 1 is no p^f with f≥1; ℓ≠p permits ℓ=2 when p=3 | Consistent | None |
| Apartment, normal form and virtual sign | A₁, s t^(nα∨), n=0,1,2 | Images (0,1),(2,3),(4,5); lengths 1,3,5; η-length 1; d=1,2,3 | Consistent | Corrected the rank-one seed label |
| Split-rank defect | GL₂, basic slopes (1/2,1/2) | rank_F G−rank_F J_b=2−1=1; pairing 1/2 minus defect/2=0 | Consistent | None |
| Frobenius convention | H²_c(A¹), q=2,3 | Geometric traces 2,3; arithmetic traces 1/2,1/3; H¹_c=0 | Inverse actions distinguished | None |
| Leading-index volume | h=2, A=ℕ and 1+ℕ | Basis sums 1 and 3; determinant components 0 and 1 | Consistent | None |
| Ordered norm convention | d=3, b₀=1,b₁=U,b₂=V | UV=[[2,1],[1,1]], VU=[[1,1],[1,2]]; modulo 2 they are [[0,1],[1,1]] and [[1,1],[1,0]] | Opposite cycle fails | None |
| Imported double-coset definition and invariance | S₃, I=〈(12)〉, r=(13), i=(12) | iri=(23); IrI=I(iri)I has four elements; I is not normal | Both invariances hold | Cite native equality theorem |
| Imported parabolic and minimal representative | S₃, J={s₁}, w=w₀; J=S; J=∅ | w₀=(s₁s₂)s₁ with lengths 3=2+1; full J gives 3=0+3; empty J gives 3=3+0 | Coset direction and uniqueness retained | Cite pinned factorization |
| Translation-sign transport | diag(ϖ,1) and its inverse | Local labels (1,0),(−1,0); RG labels reversed; κ=1,−1; ν=(1,0),(0,−1) | Length alone cannot detect inversion | Add arithmetic witness |
| Translation-sign transport, second term | diag(ϖ²,1) and its inverse | κ=2,−2; ν=(2,0),(0,−2); translation lengths both 2 | Arithmetic data detect the sign | Add second term |
| §0.1 representative and quotient | S₃, b=(12), g=(123); g(12) | g⁻¹bg=(13), (g(12))⁻¹b(g(12))=(23); both belong to the same four-element double coset | Descent without normality | Add native Needs |
| §0.1 degenerate loci | H=1; I=H; I=1,σ=id,b=1 | One coset/one point; one coset/one point; H if w=1 and ∅ if w≠1 | Correct extremes | None |
| §0.2 virtual dimension | GL₂, t^(1,0) ordinary; s t^(1,0) basic | (1+0)/2−1/2=0; (2+1−1)/2−0=1 | Consistent | None |
| §0.2 η and difference identity | A₂ node swap, x=s₁,y=s₂ | η=s₁s₁=1 of length 0; wrong yx=s₂s₁ has length 2 and changes d by 1; equal b terms cancel in d_w−d_v | Twist is essential | None |
| §0.3 shrunken strips | A₁ base, reflected base, boundary | (−1,0) rejected; (0,1) accepted; α=0,−1 are not removed | Source and definition agree | Fix §7.4 |
| §0.3 independent numerical bound | A₂, λ=6ω₁∨ | λ=(4,2) in coroot coordinates; λ−2ρ∨=(2,0); 〈α₂,λ〉=0 | Large bound does not imply shrunkenness | None |
| §0.4 exact versus bounded | GL₂, b=1, μ=(1,−1) | Identity has position 0≤_ℤμ with difference α∨, but 0≠μ | Exact stratum differs from union | Direct notation sentence |
| §0.4 torus obstruction | G_m, b=ϖ, μ=0 | κ=1≠0; exact and bounded loci ∅; numerical expression 0 | κ cannot be discarded | None |
| §0.4 test domain | k[ε]/ε²; zero algebra | ε≠0 and ε^p=0 for p≥2; Spec(0)=∅ has one sheaf section | Nonperfect algebra excluded; empty-scheme convention retained | None |
| §0.4 parahoric forgetting | GL₂, finite s versus 1 over a fixed standard lattice | s maps to position 0; fibres P¹ minus q+1 points of dimension 1 and q+1 fixed flags of dimension 0 | Forgetting is not an isomorphism | None |
| §0.5 realization and dimensions | (A¹)^perf; split-torus zero locus; mismatch | Dimensions 1,0,−∞; Y×A² adds 2 before and after perfection | No finite-type assertion for perfection | Precise imported flag models |
| §0.6 framing and κ | S₃ b=(12),h=(123); GL₂ diagonal torus | hbh⁻¹=(23); (hg)⁻¹b′hg=g⁻¹bg; torus κ=(1,0),(0,1) both map to group κ=1 | Directions and all-class index correct | None |
| §1.1 minimal geometry | GL₂ t^(1,0); A₁ s | ℓ−〈ν,2ρ〉=1−1=0 and 1−0=1; incompatible κ gives −∞ | Consistent | Name Red-Min and decomposition gaps |
| §1.2 reduction recurrence | s₀s₁s₀,b=1; both branches empty | Endpoints s₁s₀ and s₁ give −∞ and 1; 1+max=2; 1+max(−∞,−∞)=−∞ | Empty convention essential | Correct pages |
| §1.3 normalized algebra | Simple s; s₀s₁s₀ | T_s²=zT_s+1; T_w≡zT_(s₁s₀)+T_s₁; basic coefficient degree 0, dimension 2 | Correct normalization | Fix contract, gap and Check |
| §1.3 wrong normalization control | Unnormalized coefficient q=v² | Inserting v-degree gives (3+1+2)/2=3; inserting q-degree gives 5/2, against actual 2 | Both substitutions fail | Add negative control |
| §1.3 minimal and zero polynomials | Minimal w in O; zero coefficient | f=1, degree 0 gives ℓw−〈ν,2ρ〉; f=0 contributes −∞ | No degree assigned to zero | None |
| §1.4 dimension advantage | Identity; composition with length-sum differences 2 and 1 | Identity requires 0≥0; composition gives 2/2+1/2=3/2; an empty right locus imposes zero conditions | Relation is a preorder | None |
| §2.1 semi-module and type | (h,m)=(2,1), A=ℕ; A=∅; evens | B={0,1}, sum 1, cycle 0→1→0 gives type (0,1); empty B has size 0≠2; 0+1 not even | Nonemptiness and coprimality matter | None |
| §2.2 extended and cyclic semi-module | φ(a)=floor((a+1)/2) on ℕ | Values 0,1,1,2,2,3; φ(a+2)=φ(a)+1; max n with a+1−2n≥0 is φ(a); V=∅ | Cyclic bound attained | None |
| §2.2 wrong models | Constant φ=0; finite φ(−1) | φ(2)=0<φ(0)+1=1; φ(−1) finite while −1∉A | Growth and support exclude them | None |
| §2.3 lattice and central shifts | h=2,m=1; replace b by ϖb | ϖ^(−n)bσ(e_a)=e_(a+1−2n); maximum floor((a+1)/2); replacing m by 3 adds 1 to φ | Model determines φ | None |
| §2.4 chart dimension | Cyclic bases {0,1}, {−1,2}, {−3,1,5} | V=∅, {(2,3)}, {(5,6),(5,7),(5,10)}; dimensions 0,1,3 | Finite-pair count agrees | None |
| §2.5 superbasic formula | (h,m,μ)=(2,1,(0,1)), (2,1,(−1,2)), (3,4,(0,0,4)) | Pairing minus defect/2: 1/2−1/2=0, 3/2−1/2=1, 4−1=3 | Same chart dimensions | None |
| §3.1 Lang correction | GL₂ ν_M=(2,0),(0,2); N=1 | Root sums min(2,0)=0, min(−2,0)=−2; pairings 0,−2; empty sum 0 | Root slopes fix the sign | Precise filtration input |
| §3.1 additive Lang, p=2 | u²−u | Two roots 0,1; derivative −1=1; dimension shift at slope 0 is 0 | Small characteristic retained | None |
| §3.1 imported filtration | GL₃ upper unipotent, p=2,3 | N/N[2]=G_a², N[2]=U₁₃=G_a; [1+E₁₂,1+E₂₃]=1+E₁₃≠1 in both characteristics | Whole-group additive law is wrong | Replace vague linearization |
| §3.2 component comparison | GL₂→PGL₂; G adjoint | ℤ→ℤ/2 sends 0 and 2 to 0; adjoint case is identity | Componentwise does not mean globally injective | None |
| §3.3 superbasic reduction | GL₂ shifts m=1,2; h=1 | gcd(1,2)=1, defect 1, component 1 mod 2; gcd(2,2)=2 excludes m=2; h=1 has defect 0 | Classification is a separate supplier gap | Add explicit gap Needs |
| §3.3 anisotropy criterion | Ordinary and slope-1/2 GL₂ | J_b/Z(G) has split rank 1 and 0 respectively | Ordinary class rejected | None |
| §3.4 Levi fibres | M=G; GL₂,M=T,b=1,μ=(1,−1),μ_M=0 | Identity correction 0; torus dimension 0 plus d=1 plus Newton corrections 0 gives 1 | Intersection term essential | None |
| §3.5 framed iterated locus | d=1; GL₂ two bounds (1,0) | Endpoint equation is the single bσ equation; total bound is (2,0), not (1,0) | Framing and order retained | None |
| §3.6 norm and defects | d=1,2,3; Res GL₂ basic | Norm b, b₀σb₁, b₀σb₁σ²b₂; restricted split ranks 2 and 1 give defect 1, not 3 | No degree multiplier | None |
| §3.7 convolution | GL₂, (1,0)+(1,0) | Endpoint (2,0): fibre dim 0; endpoint (1,1): P¹ dim 1=〈ρ,(1,−1)〉 | Exact endpoints essential | None |
| §3.8 spherical dimensions | GL₂ basic μ=(1,0); b=1,μ=(1,−1); determinant mismatch | Dimensions 0 and 1; mismatch empty with rational expression 1/2 | Formula restricted to nonempty loci | None |
| §3.9 upper bound | GL₂ translation ordinary; affine A₁ length-three reflection | Actual/virtual 0=1/2−1/2 and 2=(3+1)/2 | Correct negative Newton sign | None |
| §4.1 Newton criterion | GL₂ λ=(1,0), ν=(1/2,1/2) or (2,−1) | Differences (1/2,−1/2) and (−1,1); first dominant, second not; κ=1 in both | Both κ and Newton bound required | Sign bridge checked |
| §4.2 generic class and closure | τ; t^(1,0); abstract occurring set {0,2} | Greatest classes τ and ν=(1,0); greatest 2 in {0,2} does not supply missing 1 | Greatestness is not saturation | Distinguish geometric and numerical claims |
| §4.3 generic dimension | GL₂ t^(1,0); A₁ s | Codim 0; ℓ−〈ν,2ρ〉=1−1=0 and 1−0=1 | Same values under numerical transfer | Add mv20 Lemma 3.2 |
| §4.4 cordiality | 1; GL₂ t^(1,0); s t^(1,0); A₁ s | ℓ−ℓη versus 〈ν,2ρ〉−def: 0=0, 1=1, 1=1, 0=0 | Generic equality fixed | None |
| §4.5 mutual advantage | D_w=3,D_v=2,d_w=4,d_v=3 | Normalized values 3−4=2−3=−1; both implications give the same occurrence set | Mutual, not single, implication needed | None |
| §4.6 saturation and dimensions | GL₂ s t^(1,0), ordinary and basic | Ordinary (2+1)/2−1/2=1; basic (2+1−1)/2=1; interval length (1+1)/2=1 | Numerical assertions transfer | Correct characteristic scope |
| §4.6 equal-characteristic closures | Same GL₂ cell; torus | Generic codim 0, basic codim 2−0−1=1; generic closure has two strata, basic closure one; torus interval/closure one | No mixed-characteristic closure inferred | Restrict topological claims |
| §4.7 translation family | GL₂ x=s,λ=(1,0); A₁ x=s,λ=0 | Generic ν=(1,0), 2−1=1; finite case 1−1=0 and I∩IsI=∅ although I lies in its closure | Closure versus subset distinguished | None |
| §5.1 correction and lower bound | Unitary A₂, λ=(1,1),y=s₁ | ρ_J∨=η_J∨=(1,0); flat=(1,0); flat−(λ−ρ_J∨−η_J∨)=(2,−1)=α₁∨ | Lower bound holds | Replace false upper bound |
| §5.1 σ-coinvariants | Same input | λ−flat=ω₂∨=(α₁∨+2α₂∨)/3 is nonintegral; (ℤ/3)/(σ−1)=0 since σ=−1 | Integral order differs from coinvariants | Add control |
| §5.1 minuscule control | Unitary A₂, λ=ω₁∨,y=s₁ | flat=ω₂∨; λ−flat=(α₁∨−α₂∨)/3; lower difference=α₁∨+α₂∨ | Even rational upper bound fails | Recomputed added Check |
| §5.1 split and lattice controls | A₁ λ=2ω∨ or ω∨,y=s; y=1 | Flats 0 and ω∨; upper differences α∨ and 0; y=1 gives flat=λ; ω∨∉ℤα∨ | Conditional upper bound holds; original lattice not automatic | State conditional bound |
| §5.1 descent orientation | A₂ y=s₁s₂,σ swaps | Left descents {s₁}, right descents {s₂}; dom(−σ⁻¹ω₁∨)=ω₁∨, wrong untwisted value ω₂∨ | Both choices detected | Retain discriminating Checks |
| §5.2 split factorization | A₁ x=y=s,λ=2ω∨ | β=γ=2ω∨; w₁=s t^ω∨ length 2; w₂=t^ω∨s length 0; product t^(−2ω∨), length 2 | Ordinary product preserved | Add native APIs |
| §5.2 twisted factorization | Unitary A₂ input above | J′={s₁},x′=s₂,z=s₁,y′=1; β=γ=ω₁∨=flat; translations ω₂∨+(−ω₁∨+ω₂∨)=α₂∨; lengths 2+2=4; a=s₂*s₂=s₂ | Twisted correction propagates correctly | Add recomputed Check |
| §6.1 endpoint fibres | u=1; u=v=s | First map identifies X_v(b); ordinary fibre A¹ dim 1=(1+1−0)/2; Demazure fibre G_m dim 1=1+1−1 | Both bounds correct | Import GS0 explicitly |
| §6.1 rotation | Finite A₂ σ swaps, u=s₁,v=s₂ | Rotated label vσ(u)=s₂s₂=1, while vu=s₂s₁ has length 2 | σ cannot be dropped | None |
| §6.2 five chains | A₁ x=y=s; unitary A₂ | Split A=1,B=t^ω∨s; twisted A=s₁,B=t^ω₁∨s₁; endpoints retain σ(a),σ(t^γ) | Ordinary and Demazure stages distinct | None |
| §6.3 dimension differences | Split and twisted examples | Split N₁=N₂=0 and d_w−d_target=0; twisted N₁=(1+2−3)/2=0,N₂=1+1−1=1 and d_w−d_target=(6−4)/2=1 | Both correspondence totals agree | Recomputed against F01 |
| §6.4 cordial reduction | Same examples | Split γ=2ω∨≥0=flat, a=1; twisted γ=ω₁∨=flat, a=s₂, full σ-support; target dimensions differ by 0 and 1 | No shrunken target assumption needed | None |
| §7.1 P-alcove formula | J=S; GL₂ pure translation with J=∅,x=1 | N_J=1 makes inclusion 1⊂1; torus Weyl condition is t^λ; conjugation by t^λ raises upper-root valuation by 〈α,λ〉 | Conjugator and root direction consistent | None |
| §7.2 Levi obstruction | GL₂ torus, b ordinary | Two Levi κ values (1,0),(0,1), both over group κ=1; matching (1,0) selects one | All classes before κ restriction | None |
| §7.3 strict support obstruction | A₁ t^(nα∨),n≥1 | η=1, ν_b=0 gives gap nα∨>0 and empty locus; b=t^(nα∨) gives gap 0 and dimension 0 | Strictness needed here | Cite §1.45 |
| §7.4 A₁ seed | γ=0,a=s,q=2 | P¹ minus three rational points, e.g. [ζ:1] over 𝔽₄ remains; dimension 1; α-range (0,1) | Nonempty and shrunken | Correct false label |
| §7.4 nonshrunken seed | A₂ γ=0,a=s₁s₂ | Inverse sends α₂ to α₁; α₂-range (−1,0); full support; classical DL dimension 2=(2+2)/2 | Genuine nonshrunken example | Add boundary Check |
| §7.5 quotient relation | G_m,q=2,ζ³=1,ζ≠1 | (ζ,ζ) maps to ζ²σ(ζ)⁻¹=1; untwisted (ζ,1) maps to ζ²≠1 | Twisted quotient necessary | None |
| §7.5 Levi index and identity | GL₂ torus; J=S | Two B(M) classes reduce to one matching κ class; J=S gives identity map | Surjectivity not mistaken for injectivity | None |
| §7.6 basic interval | GL₂ a=s,γ=(1,0) | κ=1; basic ν=(1/2,1/2)≤ordinary ν=(1,0); both dimensions 1 | General numerical saturation suffices | Scope corrected through §4.6 |
| §8.1 nonemptiness criterion | A₁ s t^(nα∨) versus t^(nα∨),b=1 | Same κ and λ; supports {s} versus ∅; nonempty versus empty | Both directions distinguished | None |
| §8.2 dimension | A₁ n=1,2; unitary A₂ witness | Dimensions 2,3; twisted λ-average=ρ∨, flat-average=ρ∨/2, κ=0, d=(4+2)/2=3 | False integral upper bound unnecessary | Add twisted Check |
| §8.3 basic theorem without gap | A₂ w=w₀,b=1 | λ=0, strict gap 0; κ=0, η-length 3 and full support; positive-root ranges (0,1); dimension (3+3)/2=3 | Gap-free theorem includes missing case | Strengthen specialization |
| §8.4 sufficient range | A₁ λ=α∨; A₂ λ=6ω₁∨; twisted correction | A₁ λ−2ρ∨=0 and dim 2; A₂ difference 2α₁∨ but α₂-strip unchanged; twisted 2ρ∨−2ω₁∨=2ω₂∨=(2α₁∨+4α₂∨)/3 | Rational averaged bound is the needed one | Use defining lower bound |
| gap:demazure-product | A₁ s*s; A₂ u=σ,v=s₁ | s*s=s, lengths 1=1+0; σ*s₁=s₂σ, support {s₂} rather than {s₁} | Transported support law required | Split and qualify gap |
| gap:twisted-redmin | Affine A₁ length-three word; twisted finite A₂ s₁ | 3→1 under s₀-conjugation; s₁→s₂ under σ-twisted s₁-conjugation, both length 1 | True twisted minima retained | Split gap |
| gap:straight-finite-parabolic | A₁ s; t^α∨ | s=u·1 with J={s},ν=0; translation 1·t^α∨ with J=∅,ℓ=2=〈α∨,2ρ〉 | Finite and straight factors separated | Split gap |
| gap:finite-coxeter-basic-class | A₁ τ=1,μ=0,α∨ | Minimal outputs s₁ and s₀, both length 1 and ν=0, κ=0 | Output may depend on input | Avoid uniform-representative claim |
| gap:parabolic-root-length | A₂ w=w₀,y=s₁s₂; w=1,y=s₁ | First gives ℓ(wy)=1=3−2; second lacks the sign hypothesis and gives 1≠−1 | Quantified sign condition needed | Separate supplied coset theorem |
| gap:dominant-subtraction | A₁ λ=0,μ=ω∨; λ=2ω∨,μ=ω∨; iterated pair | Least values ω∨ and ω∨; (2ω∨−_domω∨)−_domω∨=0=2ω∨−_dom2ω∨ | Congruence and iteration preserved | Explicit feasible-set contract |
| gap:newton-poset-length | GL₂ κ=1 basic≤ordinary; equal endpoints | (1+1−0)/2=1; (0+def−def)/2=0 | Exact chain lengths | Split gap |
| gap:newton-cell-strong-purity | GL₂ cordial cell; component lying entirely in lower locus | Nonempty lower intersection codim 1; contained component gives codim 0, both ≤1 | Topological notion does not force codim exactly 1 | State quantified notion |
| gap:newton-cell-greatest | A₁ simple cell and closure | Generic ν=0,κ=0 on both IsI and I∪IsI | Same greatest class | Split equal-characteristic input |
| gap:newton-cell-adlv-dimension | GL₂ cordial cell, ordinary/basic | 2−1−0=1; 2−0−1=1; Newton codimensions 0 and 1 | Comparison independent of saturation | Split gap |
| gap:levi-intersection-dimension | GL₂ M=T,μ=(1,−1),μ_M=0; M=G | d=1=〈ρ,μ〉; M=G gives 0=〈ρ,2μ〉−〈2ρ,μ〉 | Existing contract consistent | None |

## Validation outcomes

- Suggested.lean elaboration, run from the content checkout against its manifest pins: exit 0, no diagnostics. The file has only `import Mathlib`, one module docstring and its namespace. No Tau Ceti import required an object-file build; no build process remains running.
- Mechanical binder audit: enumerated every local declaration; there are zero definitions, instances and theorems. The generated scratch audit therefore has an empty list of `#check @name` commands; elaborating that scratch file also exited 0 with no diagnostics. No binder changed. No elementary substitute or Check declaration was added.
- The headline docstring now distinguishes general numerical saturation/dimensions from equal-characteristic closures/equidimensionality, and names the basic theorem without a strict Newton gap. Pinned object searches found no ADLV, affine Grassmannian, Kottwitz or cordial geometric carrier; unrelated Iwahori-name hits concern braid representations. The geometric headlines remain unstatable, so the empty declaration list is intentional.
- Dependency direction, with the required name, order and movable flags: exit 0, exact output:

    depcheck: 48 roadmaps, 543 edges, 0 problem(s)

  There is no UPWARD, CYCLE or moved line.
- Citation resolution against main 7bd35ba and 352 indexed open heads: exit 0. Its one cross-roadmap lead is RootSystemsPartII RS2.1, absent from main/open heads but present as the board design and in the merge order. This is not evidence that its affine extensions exist; the gaps expressly record their absence. No unknown local Lean name was reported. The resolver says it did not inspect external pinned declarations, so those were opened manually at the supplied pins.
- Plan/README audit: fourteen gap slugs, needs texts and suppliers match exactly; every gap reference is declared. Removing the top-level gaps values from the old and new JSON leaves identical objects; the actual edit preserved all bytes outside that value.
- Source audit: fifteen manifest keys, all unique; every cited source has a legally cached certified text. The new ham17 fetch succeeded; there is no missing-source request. Existing source keys and service provenance were preserved. Public locators and cited-for lists were updated rather than introducing version-duplicate keys.
- Style and scope: `git diff --check` exited 0. No machine paths, private source-line pointers, design-stage target IDs, LaTeX delimiters, unknown local Lean names, forbidden Lean commands or obsolete gap references occur in the edited README or Lean file. Metadata was unchanged. No external file, merge-order entry, issue or pull-request text was edited; no commit was made.
- No separate gate failures were listed in the brief. The citation lead is addressed above; the mathematical and style findings are handled individually in F01–F11.

## Maintainer consequences

No Lean declaration was added, renamed or deleted. Consumers of §4.6 may use its numerical conclusions in either characteristic; its closure and equidimensionality clauses now explicitly require equal characteristic. Section 8.3 is stronger, covering all basic shrunken inputs without the strict gap. The general flag carriers are imported from GS0, while this package retains its graph-pullback comparisons. Consumers of supplier-gap slugs should use the mapping above. The remaining root-supplier ownership decision cannot be made by an edit of this package.
