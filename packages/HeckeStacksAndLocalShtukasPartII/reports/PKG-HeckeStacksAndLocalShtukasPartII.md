# Package report: HeckeStacksAndLocalShtukasPartII

The package contains the nine-layer roadmap in packages/HeckeStacksAndLocalShtukasPartII/README.md, the acceptance-test boundary in Suggested.lean, metadata.toml and the source manifest. All 48 accepted mathematical targets are accounted for: 47 local subsections and the generic minimal-reduction theorem in the RootSystemsPartII supplier contract. All 86 accepted API facts and all 71 construction Checks are retained as prose; the explicit proper-Levi map and the necessary parahoric variant add eight API facts. Additional negative controls and numerical examples are included. Every layer has Examples and Dependencies. There are no new public Lean declarations.

The supplied design/review.json and the reports directory contained no review file. The accepted review embedded in design/plan.json was read, including all 48 per-target notes. Its corrections were incorporated and verified against the accessible source versions. No separate absent review was inferred. Only the top-level gaps value of design/plan.json changed; a comparison against the saved input confirms that every other parsed value is identical. The original eight broad gates are represented by eight precise supplier gaps, while ADLV-specific bounded models, perfect chart morphisms, trace applications, basic seeds and component descent are actual local targets. No merge-order file or content-repository file was edited.

## Headline theorems and statement boundary

The headline list was saved before writing Suggested.lean. Each entry below is **not statable at the pins**; none is replaced by a weaker theorem.

| Headline | README location | Missing carrier or interface |
|---|---|---|
| Minimal twisted-class nonemptiness and dimension | §1.1 | Affine flag moduli and geometric ADLV locus. |
| Deligne–Lusztig reduction and dimension recurrence | §1.2 | Geometric ADLVs, universal-homeomorphism and fibration diagrams. |
| ADLV dimension equals class-polynomial degree | §1.3 | Geometric ADLVs and integral twisted affine-Hecke cocenter. |
| Extended-semi-module chart and superbasic GL dimension | §§2.4–2.5 | Lattice-moduli strata and their reduced/perfect realizations. |
| Twisted Lang and Levi-retraction dimension comparison | §§3.1, 3.4 | Admissible loop spaces, normalized dimensions and retraction strata. |
| Restriction of scalars versus iterated loci | §3.6 | Torsor Grassmannians and framed iterated Frobenius-graph loci. |
| Exact, bounded and iterated spherical dimensions | §3.8 | Those geometric moduli and their dimensions. |
| Spherical nonemptiness criterion | §4.1 | Spherical ADLVs and the general reductive-group Kottwitz-set interface. |
| Virtual dimension upper bound | §3.9 | Affine ADLV geometry with normal-form and Newton-invariant interface. |
| Greatest generic Newton class and its dimension | §§4.2–4.3 | Newton-stratified Iwahori cells and geometric comparison. |
| Cordial saturation, closure and equidimensionality | §4.6 | Newton-stratified cells, completions and purity. |
| Translation-family generic class and cordiality | §4.7 | Those same geometric generic-class carriers. |
| Two-correspondence reduction to a cordial family | §6.4 | Bounded flag incidence, Frobenius pullbacks and fibre dimensions. |
| P-alcove obstruction and non-shrunken basic seed | §§7.2–7.4 | Group and Levi ADLVs, basic classes and integral κ maps. |
| Proper-Levi image comparison over all matching classes | §7.5 | Group and Levi ADLV geometry and its twisted-product comparison. |
| Shrunken nonemptiness and dimension theorem | §§8.1–8.2 | ADLVs, affine apartment, Iwahori–Weyl data and original-group Newton invariants. |
| Basic shrunken specialization | §8.3 | Same carriers and original-lattice comparison. |
| Large-translation shrunken specialization | §8.4 | Same carriers and dominant-subtraction interface. |

Suggested.lean contains the required single import Mathlib, one module docstring, the namespace TauCetiRoadmap.HeckeStacksAndLocalShtukasPartII, and no definitions or assertions. Elementary subgroup quotients can express the point condition but cannot state any geometric headline in this list. Semi-module predicates can be encoded, but do not state the chart-dimension theorem. No theorem on free scalar variables, arbitrary predicates or supplied geometric spaces was substituted.

## Pin and ownership audit

The content repository was read at main commit 6bddefdcbcd5caf9728b94bc5cec4dc2975d86b9. Its manifest and actual package HEADs agree: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The design's older Mathlib pin was not reused. Style readings were TauCetiRoadmap/AdicSpaces/README.md, TauCetiRoadmap/ReductiveGroups/README.md and Completed/EffectiveBounds/README.md, with the nested RootSystems roadmap also read for ownership.

The roadmap service's indexed open heads and main were searched by object, including ADLVs, superbasic classes, cordiality, shrunken chambers, extended semi-modules, class polynomials, Demazure products, relative-position incidence and normal forms. The board packages and both pinned source trees were searched too. This includes the named open roadmap folders in the brief through the service's main/head corpus. Revision-only work was not adopted as a new dependency; SchemeAndStackFoundations and RootSystems were read on main. The new ReductiveGroupsPartII, BunGAndNewtonStrata, GeometricSatakeAndFusion, SmoothRepresentationsOfLocalGroups, HeckeStacksAndLocalShtukas and TraceFormula folders were read at their indexed heads.

RootSystemsPartII is supplied as an earlier board package: its design RS2.1 states integral-order and the finite-folding scope. The resolver reports no main/open folder under that name; this is a repository-index limitation, not a claim that the board design already states affine Red-Min or Demazure. The missing affine results are explicit supplier gaps in its RS2.1 direction. The resolver also says it did not inspect pins on its own host; the pinned filesystem checks below were performed directly.

The ADLV-specific objects are owned here because the base Hecke roadmap constructs diamonds, Hecke functors and cohomology, while the Satake roadmap constructs the ambient flag/modification geometry. Neither defines the relative-Frobenius reduced/perfect loci, superbasic lattice strata, their dimension comparison, or the shrunken theorem. The component, integral and Kottwitz continuations retain their accepted ownership boundaries and routed inventories in the unchanged plan. No theorem or construction from them is consumed backwards.

### Duplication removals and imports

| Object removed from local ownership | Supplier and exact boundary |
|---|---|
| Double-coset set and factor membership | Mathlib/GroupTheory/DoubleCoset.lean:37, DoubleCoset.doubleCoset; line 44, DoubleCoset.mem_doubleCoset. |
| Nonnormal left-coset relation and criterion | Mathlib/GroupTheory/Coset/Defs.lean:66, QuotientGroup.leftRel; line 71, QuotientGroup.leftRel_apply. |
| Left subgroup invariance of double-coset membership | TauCeti/GroupTheory/DoubleCoset/Basic.lean:100, DoubleCoset.mul_mem_doubleCoset_iff. |
| Finite-set carrier for residue bases | Mathlib/Data/Finset/Defs.lean:75, Finset; it is not the semi-module object. |
| Apartments, parahorics, Iwahori–Weyl extension, normal form, lengths and simple-cell multiplication | ReductiveGroupsPartII RG2.1, RG2.3, RG2.4; dominant-normal-form and translation-length-formula. |
| Generic twisted minimal reduction, Demazure and lattice subtraction | RootSystems Layers 3–4, 6; RootSystemsPartII RS2.1 and its explicit extension gaps. HSD1/minimal-reduction is a supplier statement, not a local duplicate. |
| B(G), Newton order, integral κ, split-rank defect, centralizers, straight classes, averages, products and norm | BunGAndNewtonStrata §§0.5–0.6, 1.7–1.15, 1.21, 1.27, 1.30, 1.43, 1.45. |
| Superbasic classification and generic purity inputs | BunGAndNewtonStrata §1.18 and §1.21 extension gaps; local geometric applications remain here. |
| Ambient perfect flags/Grassmannians, generic incidence and ordinary/Demazure fibre bounds | GeometricSatakeAndFusion GS0, perfect-model-and-etale-comparison, flag-incidence-correspondences, flag-convolution-fibres. |
| Spherical geometric semismallness | GeometricSatakeAndFusion GS2, rational-special-fibre-convolution; only the ADLV pullback and top attainment are local. |
| Generic semi-infinite geometry | GeometricSatakeAndFusion GS1, semi-infinite-affineness; the general-Levi extension is a gap. |
| General finite-type dimension, perfection, limits and descent | SchemeAndStackFoundations §§0.7, 0.9, 0.23–0.26 and Layer 1; bounded ADLV diagram compatibility is local. |
| Generic trace theorem | TraceFormula Layer 11; the separated perfect-space application is local §3.1. |
| Integral Hecke algebra and twisted cocenter | SmoothRepresentationsOfLocalGroups SR.1.5 and its explicit cocenter extension gap; dimension equals degree is local. |

No geometric target was removed merely because a set of cosets can be stated. No Suggested.lean declaration duplicates another roadmap's fully qualified name. The search found Hilbert class polynomials and Chevalley–Demazure terminology, which are different mathematical objects and not owners of the affine-Hecke cocenter or Demazure monoid used here.

At the Mathlib pin, WittVector.Isocrystal in Mathlib/RingTheory/WittVector/Isocrystal.lean:113 is a module over the Witt fraction field with a Frobenius-semilinear equivalence; it does not impose finite dimension in its class definition and does not construct a reductive-group Kottwitz set or a moduli locus. AlgebraicGeometry.Scheme in Mathlib/AlgebraicGeometry/Scheme.lean:40 is the native locally ringed-space scheme carrier, not an affine flag or ADLV constructor. Searches for ADLV, affine flag/Grassmannian geometry, extended semi-modules and twisted cocenters in both pins found no corresponding geometric carrier. These are statements about the searched pins, not about future libraries.

### Direction and notions from later roadmaps

The merge order places HeckeStacksAndLocalShtukas immediately after this package. Its HS0–HS4 objects are therefore described only as the base direction's ownership boundary and as downstream context. No supplier row or Needs paragraph consumes them. No local dimension proof requires their diamonds or cohomology. The geometric relative-Frobenius loci needed here are owned here rather than obtained from a later component/integral comparison. There is consequently no additional construction moved down from those later continuations. The arithmetic dimension theorem consumes only the earlier ambient geometry, not a later specialization theorem.

The readable ReductiveGroupsPartII head contains no η declaration or geometric cordiality promise: its translation-length-formula is at README lines 6105–6126 and dominant-normal-form at 6128–6141. The design's assertion of a supplied cordiality theorem at an older locator was not supported. η is defined mathematically in §0.2 and family cordiality is proved in §4.7 from local generic geometry and the supplied length identities. This is a correction of attribution and ownership, preserving the accepted mathematics.

## Source audit and corrections

All 14 works are certified in sources.toml. Every fetch used the source service. Initial Cambridge/Annals classification failures were resolved with the verified publisher-open class; the original keys were reused. The institutional server timed out for the Milićević–Viehmann and Hamacher copies; legal arXiv versions were fetched under mv20 and ham15. There are no unresolved missing-reference entries. No extracted source text was copied into the repository.

The README cites source IDs with extraction line numbers and theorem/section/page locators. Its Hamacher locators use arXiv:1312.0486v2, not unread published pagination; the source manifest retains the published DOI and explains the title/page difference. Its Milićević–Viehmann locators use arXiv:1902.02415v3: Definition 3.14 is on PDF page 8, and Theorem 3.16/Corollary 3.17 on pages 8–9. HN14 Theorem 5.3 is the class-polynomial statement on PDF pages 25–26, not the straight–finite-parabolic input; Proposition 2.7 and Theorem 2.9/Corollary 2.10 supply that input. The ordinary cocenter basis is HN14 Theorem 6.7 on PDF page 29; the required σ-twisted integral extension is not inferred merely by dropping the ordinary/twisted distinction, and remains the explicit supplier contract with He14 §2.

The anisotropic classification used inside ckv15 Lemma 3.1.1 cites an additional classification theorem (ckv15 line 945); its proof remains part of the named supplier classification contract, not a locally verified classification proof. Likewise mv20 lines 434–443 invoke the Newton-poset length and strong purity package, and he14 line 1294 invokes the finite-Coxeter basic-class reduction. These are explicit supplier proof inputs, not invisible citations assumed to close the development. No source paragraph was treated as an instruction.

| Issue corrected or retained from the accepted review | Evidence and concrete control | Package treatment |
|---|---|---|
| Nonempty qualifier for spherical dimension | zhu17 line 2123; GL₂ with b=1, μ=(1,0): κ values 0 and 1, expression 1/2, dimension −∞. | State the formula on nonempty exact/bounded loci. |
| Exact endpoint in convolution | zhu17 line 2287; two GL₂ minuscule bounds: top fibre dimension 0, central lower fibre dimension 1. | Stratify exact endpoints and prove top attainment. |
| P-alcove conjugator | he21 line 503; A₂ correct translation (2,2), wrong-conjugator translation (0,−2). | Use x and retain σ(x). |
| Coroots and nonnegative cone coefficients | he21 line 307; equal inputs give difference 0, not strictly positive coordinates. | Integral coroot cone and its coset retained. |
| Infinite component argument | he21 line 443; split torus b=1 has component set ℤ and dimension 0. | Bounded generic-point fibre argument in §§0.5, 6.3. |
| Basic seed without shrunkenness | he21 line 518; γ=0,a=s has dimension 1 but its base alcove is critical. | Finite Lang case plus corrected twisted cocenter argument. |
| Full coweight lattice | he21 line 347; in simply connected A₁, ω∨=α∨/2 is not in ℤα∨. | Auxiliary P∨ construction plus original-κ descent. |
| Componentwise adjoint comparison | ghnerr line 16; ℤ→ℤ/2 identifies 0 and 2. | Retain characteristic hypothesis and fixed component. |
| All Levi classes in a nonbasic fibre | ghnerr line 58; GL₂ torus pairs (1,0) and (0,1) have the same group κ=1. | Quantify over the whole B(M) fibre. |
| Twisted support and induction indices | he14 line 1244; under the A₂ swap, ordinary support {s₁} has σ-support {s₁,s₂}. | Correct support, finite factor and shifted reflection throughout supplier/local seed route. |
| Framing base | zhu17 line 2113; a b over L does not act on an unextended O_F framing. | Frame over O_L and perfect k-algebras. |
| Embedding cycle in the norm | zhu17 line 2226; degree three requires second factor σ(b₁), not σ(b₂). | Use τ_i=σ^(−i)τ₀ consistently. |
| Levi fibre corrections | ham15 line 193; GL₂ μ=(1,−1), μ_M=0, b=1 gives 0+1=1. | Retain d and both Newton corrections in the maximum. |
| Equivariance restriction direction | zhu17 Appendix A.3.5(ii), p. 481: restriction follows J→J/J₁. | It belongs to the other equivariant-sheaf owner; no such API or reversed arrow is introduced here. |
| Center in superbasic criterion | Ordinary GL₂ has J_b=G_m²: modulo its own center it is trivial, but J_b/Z(G)=G_m has split rank 1. | Specify anisotropy modulo Z(G), preventing a false ordinary-class criterion. |
| Domain of divisibility maximum | For nonnegative Hodge μ, bσ(M)⊂M, so n=0 is feasible on A(M). | Restrict the maximum to that lattice locus; off A use −∞. |
| Proper-Levi continuation was not an exact theorem | ghn15 line 409 gives surjectivity and strict-case injectivity of a concrete twisted-product map. | State that map, its quotient action, its fibres and the union over all matching Levi classes in §7.5. |

The final empty-set pass adds a nonempty-admissible-Y hypothesis specifically to the Lang dimension difference: for Y=∅, both dimensions are −∞ and their difference is undefined, although surjectivity and inverse-image admissibility still hold. The parahoric relative-Frobenius variant in §0.4 is necessary to give §4.1 its special-maximal-parahoric carrier; the hyperspecial dimension theorem retains exactly its accepted scope. The comparison (A¹)^perf→A¹ uses the actual direction of the natural perfection map.

## Adversarial mathematics pass

The table tests statements, not their eventual formal proofs. Every target and API fact has a row with concrete values, along with the 71 accepted construction Checks and the standing conventions. A matching numerical case is a consistency test; it does not discharge a geometric supplier gap. Typeclasses and section binders in Suggested.lean are audited separately below.

| Statement | Instances tried | Computed values on the two sides or positive/negative controls | Result | Change |
|---|---|---|---|---|
| §0.1 — Affine Deligne–Lusztig points | S₃; cyclic C₂; trivial group | g=(123),b=(12): g⁻¹bg=(13)≠(12); C₂ with σ=id has r_b(g)=b; trivial quotient/locus cardinalities 1=1 | Consistent on these instances | Keep nonnormal quotient and noncommutative control. |
| §0.2 — Virtual dimension | GL₂ ordinary/basic; A₁; twisted A₂ | ordinary: (1+0)/2−1/2=0; basic: (2+1−1)/2=1; A₁: (1+1)/2=1; twisted η length 0 versus wrong length 2 | Consistent on these instances | Define η locally; rational arithmetic. |
| §0.3 — Shrunken Weyl chambers | A₁ strips and endpoints; A₂ wall translation | −1/2 is removed, 1/2 and −3/2 are retained; 0 and −1 retained; λ−2ρ∨=(2,0), α₂(λ)=0 | Consistent on these instances | Use associated reduced affine root system and open strips. |
| the RootSystemsPartII Red-Min supplier contract — Reduction to minimal twisted length | Affine A₁; finite A₂; identity | s₀(s₀s₁s₀)s₀=s₁ has length 1<3; in S₃ simple reflections have class minimum 1; identity minimum 0 | Consistent on these instances | Import full Red-Min through supplier contract. |
| §2.1 — Normalized semi-modules and their types | h=1; h=2,m=1; empty and even subsets | h=1 normalized A=ℕ; h=2 B={0,1}, sum 1, type (0,1); empty cardinality 0≠2; even subset fails +1 | Consistent on these instances | Retain nonemptiness and coprimality. |
| §5.1 — Double-flat coweight | Adjoint and simply connected A₁; twisted A₂ | λ=2ω∨,y=s gives 0; λ=ω∨ gives ω∨, not clipped 0; ω∨∉ℤα∨; −σ⁻¹ω₁∨=−ω₂∨ | Consistent on these instances | Preserve coroot coset and original lattice. |
| §7.1 — Levi-compatible P-alcove elements | Full Levi; noncommuting A₂; diagram swap | J=S gives N=1 and vacuous inclusion; correct A₂ translation (2,2), wrong conjugator (0,−2); σ(s₁)=s₂≠s₁ | Consistent on these instances | Retain correct conjugator and right σ. |
| §3.1 — Unipotent loop geometry in the Levi reduction | Upper N in GL₂; N=1; p=2 | root slopes 2,−2 give min values 0,−2 and ρ-pairings 0,−2; empty root sum 0; u²−u has roots 0,1 and derivative 1 | Consistent on these instances | Precise linearization/replacement supplier gap. |
| §0.4 — Exact and bounded spherical loci | G_m mismatch; GL₂ lower stratum; dual numbers | κ 1≠0 gives geometric empty; identity relative position 0≠(1,−1); εᵖ=0≠ε in dual numbers | Consistent on these instances | Exact and bounded separated; perfect base domain explicit. |
| §2.2 — Extended semi-modules | h=2,m=1; constant function; off-support value | φ(0)=0,φ(1)=1,φ(2)=1; growth 1=0+1; constant 0 fails 0≥1; φ(−1)=−∞; V=∅ | Consistent on these instances | Support and sequence laws retained. |
| §5.2 — Parabolic factorization data and invariant ledger | x=y=s,λ=2ω∨; y=1; simple Demazure product | w₁=s t^ω∨ length 2,w₂=t^ω∨s length 0; product t^(−2ω∨), length 2; y=1 gives γ=λ; s*s=s≠s·s=1 | Consistent on these instances | Keep two products distinct. |
| §0.5 — Geometric realization and dimension of ADLVs | Affine-line perfection; torus; empty; A²→A¹ | dimensions 1=1 after perfection; torus component set ℤ with dimension 0; dim∅=−∞; 2=1+1 | Consistent on these instances | No global finite-component assumption. |
| §2.3 — Superbasic GLₕ lattice stratification | Standard lattice; index shift; central shift; noncoprime | A=ℕ,φ=floor((a+1)/2); basis sums 1→3 give component 0→1; central b-shift adds 1 to φ; gcd(2,2)=2≠1 | Consistent on these instances | Maximum only on nonnegative Hodge locus. |
| §3.5 — Iterated spherical affine Deligne–Lusztig loci | d=1; torus two steps; noncommuting GL₂ matrices | one step has 0 intermediate parameters; torus endpoint μ₁+μ₂ and fibre dimension 0; UV=[[2,1],[1,1]]≠VU=[[1,1],[1,2]] | Consistent on these instances | Framing and modification order explicit. |
| §4.1 — Spherical nonemptiness and Newton upper bounds | G_m mismatch; GL₂ basic and high slope | G_m κ 1≠0 is empty; GL₂ ν=(1/2,1/2)≤(1,0), κ=1=1; ν=(2,−1) violates dominance | Consistent on these instances | Keep integral κ and Newton comparison separately. |
| §0.6 — Change of framing, centralizers and Kottwitz obstruction | S₃; identity transport; GL₂ diagonal torus | h=(123),b=(12) gives hbh⁻¹=(23); r_(b′)(hg)=r_b(g); h=1 identity; torus (1,0)≠(0,1) but group κ=1=1 | Consistent on these instances | Map direction and all Levi classes explicit. |
| §1.1 — Minimal-length affine Deligne–Lusztig loci | Straight GL₂ translation; A₁ finite reflection | translation dim=1−1=0; finite reflection dim=1−0=1; wrong κ term gives −∞ | Consistent on these instances | Nonempty-class hypothesis retained. |
| §1.2 — Deligne–Lusztig reduction and dimension recurrence | A₁ length-three word; both branches empty | s₀s₁s₀: 1+max(−∞,1)=2; both empty: 1+max(−∞,−∞)=−∞ | Consistent on these instances | Zero-dimensional emptiness rejected. |
| §2.4 — Dimensions of superbasic lattice charts | h=2,m=1 minuscule; affine line | V=∅ gives A⁰ and dimension 0; affine-line perfection retains dimension 1 | Consistent on these instances | Morphism/model comparison required, not set bijection. |
| §3.4 — Spherical Levi fibres and dimension reduction | M=G; GL₂ torus Levi | identity: d=0, corrections 0, source dim=target dim; μ=(1,−1),μ_M=0,b=1: 0+1+0−0=1 | Consistent on these instances | Retain d and both corrections; b basic in M. |
| §3.6 — Unramified norm and iterated-locus comparison | Degrees 1,2,3; basic GL₂ restriction | degree 1 identity; degree 2 UV≠VU; degree 3 second factor σ(b₁)≠σ(b₂) in general; defect 1=1 without degree factor | Consistent on these instances | Inverse cycle and ordered product. |
| §3.7 — Convolution bounds on exact endpoint strata | Two GL₂ minuscule bounds | endpoint (2,0): fibre dim 0≤0; endpoint (1,1): P¹ dimension 1=〈ρ,(1,−1)〉 | Consistent on these instances | Use exact endpoints. |
| §4.2 — Generic Newton class of an Iwahori cell | Length zero; translation; wrong κ | τ gives [b_τ]=[τ]; t^(1,0) gives ν=(1,0); κ=0 class excluded from κ=1 cell | Consistent on these instances | Greatestness separate from saturation. |
| §6.1 — Frobenius endpoint correspondences | Identity step; simple square; A₂ order | u=1 implies h=g,z=v; u=v=s gives ordinary A¹ and Demazure G_m, dimensions 1,1; s₁s₂≠s₂s₁ | Consistent on these instances | Keep intermediate flag and Frobenius rotation. |
| §1.3 — Class polynomials detect dimension and nonemptiness | Minimal class; length-three A₁ basic locus; zero polynomial | minimal: (ℓw+ℓw+0)/2−〈ν,2ρ〉=ℓw−〈ν,2ρ〉; length-three: (3+1+0)/2=2; deg0=−∞ | Consistent on these instances | No guessed polynomial coefficient; degree parity controlled. |
| §1.4 — Universal dimension advantage | Equal lengths; empty right; transitive differences | ℓw=ℓv,η lengths 0,2: 0≥−1; empty right imposes 0 conditions; rational differences 2+3=5 | Consistent on these instances | Never subtract −∞ from −∞. |
| §2.5 — The superbasic GLₕ dimension formula | h=1; h=2; h=3,m=4; central shift | h=1 value 0; h=2 μ=(0,1):1/2−1/2=0; μ=(−1,2):3/2−1/2=1; h=3 μ=(0,0,4):4−1=3 | Consistent on these instances | Increasing/descending convention conversion explicit. |
| §3.2 — Componentwise adjoint reduction | GL₂→PGL₂; adjoint identity; characteristic boundary | components 0 and 2 both map to 0 mod2; adjoint identity maps each component to itself; p=2 divides ∣π₁(PGL₂)∣=2 | Consistent on these instances | Initial characteristic hypothesis retained; transfer target explicit. |
| §6.2 — The two chain-space comparisons | Rank-one factorization; identity steps; twisted last step | A=1,B=t^ω∨s length0,γ=2ω∨; X₂→X₃ and X₄→X₅ have lower bounds 0; last labels σ(a),σ(t^γ) | Consistent on these instances | All five spaces and map domains retained. |
| §7.2 — The Levi Kottwitz obstruction | GL₂ nonbasic torus fibre; J=S | Levi κ set contains (1,0) and (0,1), group κ=1; full Levi reduces to κ(w)≠κ(b) | Consistent on these instances | Do not collapse to a singleton fibre. |
| §3.3 — Reduction of superbasic adjoint factors | GL₂ ordinary/basic; h=1 boundary | ordinary J_b/Z(G)=G_m has split rank1; basic quotient has split rank0; h=1 is not adjoint F-simple | Consistent on these instances | Specify original center in classification criterion. |
| §4.3 — Dimension at the generic class | GL₂ ordinary translation; finite A₁ | length/Newton terms 1−1=0 and 1−0=1 | Consistent on these instances | Cell codimension normalization retained. |
| §6.3 — Dimension inequality for the chain spaces | Rank-one factorization; simple-square fibres | N₁=(0+2−2)/2=0,N₂=0; simple bounds (1+1−0)/2=1 and 1+1−1=1 | Consistent on these instances | No extra half in Demazure bound. |
| §7.3 — Proper finite support forces emptiness | A₁ translation, basic versus ordinary class | η=1 so support∅; b=1 strict gap nα∨ gives empty; b=t^(nα∨) zero gap gives nonempty dimension0 | Consistent on these instances | Strict gap cannot be weakened. |
| §7.4 — Basic nonemptiness seed without shrunkenness | γ=0,a=s; a=1 positive translation; q=2 | P¹ minus P¹(𝔽_q) nonempty dimension1; base alcove critical; pure positive translation has empty basic locus | Consistent on these instances | Seed has no shrunken hypothesis. |
| §7.5 — Scope of the proper-Levi continuation | Full Levi; two Levi classes; strict versus general map | J=S quotient map identity; nonbasic GL₂ fibre contains 2 classes; general fibre may have cardinality >1 | Consistent on these instances | Specify twisted-product surjection and strict-case injectivity. |
| §3.8 — Dimension of spherical and iterated loci | GL₂ basic, coroot, mismatch; torus | minuscule basic:0; μ=(1,−1),b=1:1; mismatched minuscule expression1/2 versus −∞; matched torus:0 | Consistent on these instances | Nonemptiness and top attainment explicit. |
| §4.4 — Cordial elements | Identity; finite A₁; GL₂ translation | 1:0=0; s:1−1=0; t^(1,0):1−0=1−0 | Consistent on these instances | Only generic-class equality defines cordiality. |
| §6.4 — Reduction from a shrunken alcove to a cordial family | x=y=s,λ=2ω∨ | γ=2ω∨,a=1,support∅⊇∅,virtual difference0; reduced target not given a full-support seed | Consistent on these instances | Family cordiality supplied locally by §4.7. |
| §3.9 — The virtual dimension upper bound | GL₂ ordinary translation; finite A₁; empty | 0≤(1+0)/2−1/2=0; 1≤(1+1)/2=1; −∞≤each finite d | Consistent on these instances | Negative Newton sign retained. |
| §4.5 — Cordiality under mutual dimension advantage | w=v; two finite normalized differences | identity differences0=0; dimensions3,2 and virtual4,3 give −1=−1 | Consistent on these instances | Mutual implication required. |
| §4.6 — Cordial saturation and dimensions | GL₂ s t^(1,0); torus | generic ordinary d=3/2−1/2=1; basic d=(3−1)/2=1; torus fixed κ interval singleton, dim0 | Consistent on these instances | Seed required; purity is a supplier input. |
| §4.7 — Generic class of x t^λ and the dominant family | GL₂ x=s,λ=(1,0); λ=0 finite reflection | 2−1=1=〈ν,2ρ〉−0; λ=0 gives1−1=0; identity cell and simple cell disjoint but closure contains identity | Consistent on these instances | Prove geometric cordiality here, correct supplier attribution. |
| §7.6 — From a basic seed to the required Newton class | GL₂ basic-to-ordinary interval; wrong κ | κ=1,ν_basic≤ν_ord; both dimensions1; κ=0 excluded | Consistent on these instances | Use same integral component. |
| §8.1 — Nonemptiness for shrunken affine Deligne–Lusztig varieties | PGL₂ reflected and pure translations, n=1,2 | reflected η=s and κ equal: nonempty; pure η=1: empty; alcoves (2,3),(4,5) shrunken | Consistent on these instances | Retain support, strict gap and shrunkenness independently. |
| §8.2 — Virtual dimension in the shrunken range | PGL₂ n=1,2 | (3+1)/2=2 and (5+1)/2=3; defect0,Newton0 | Consistent on these instances | No formula for empty locus. |
| §8.3 — The basic specialization | PGL₂ basic; minuscule subtraction | basic ν=0 gives n+1; minuscule λ=ω∨ has λ^♭♭=ω∨, so λ−λ^♭♭=0 | Consistent on these instances | Retain strict gap and lattice comparison. |
| §8.4 — A usable large-translation range | A₁ threshold; A₂ wall counterexample | A₁ λ=2ρ∨=α∨ gives dim2; A₂ λ−2ρ∨=2α₁∨≥0 but α₂(λ)=0 | Consistent on these instances | Large bound does not replace shrunkenness. |
| §0.1 API: relativeFrobenius | S₃, b=(12),g=(123) | r_b(g)=(13), not (12) | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.1 API: points | I=H and I=1 | top quotient/locus cardinality1; trivial level with w≠1 cardinality0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.1 API: mem_points_mk | C₂,σ=id,I=1 | b=w: both membership propositions True; b≠w: both False | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.1 API: relativeFrobenius_mul | C₂,g=i=b=nonidentity | r_b(gi)=b=i⁻¹r_b(g)i | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.1 API: points_doubleCoset | S₃,I=H | all double cosets H, all point loci singleton | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.2 API: virtualDimension | GL₂ ordinary/basic | values0 and1 from the two scalar formulas | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.2 API: virtualDimension_class | S₃ framing identity; GL₂ slopes | conjugate representatives have the same ν,def; d=1=1 in the basic test | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.2 API: virtualDimension_difference | A₁ w=s,v=1,b=1 | d_s−d_1=1−0=(1+1−0−0)/2=1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.2 API: virtualDimension_basic | Basic GL₂ slope1/2 | 〈(1/2,1/2),(1/2,−1/2)〉=0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.2 API: virtualDimension_product | Product of two A₁ simple data | d_product=2=1+1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.3 API: criticalStrip | A₁ root values | −1/2 in strip=True; 0 and−1 in strip=False | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.3 API: shrunkenChambers | A₁ complement | components(−∞,−1] and[0,∞) | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.3 API: isShrunken | A₁ alcoves | (−1,0):False; (0,1):True | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.3 API: shrunken_sigma | A₂ node swap | values(1/2,−3/2) swap to(−3/2,1/2), both outside strips | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.3 API: shrunken_chamber_transport | Coordinate reversal with chamber reversal | alcoves(−1,0) and(0,1) exchange as do their critical-strip conventions | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.1 API: SemiModule | h=2,m=1 | ℕ:nonempty=True, lower bound0, +1/+2 stable; evens:+1 stable=False | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.1 API: residueBasis | ℕ,1+ℕ | bases{0,1} and{1,2}, both cardinality2 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.1 API: normalize | h=2 shifted ℕ | basis sum3 normalizes by−1 to sum1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.1 API: type | h=2,m=1 | b cycle0→1→0 and type(0,1), sum1=m | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.1 API: reconstruct | B={0,1},h=2 | B+2ℕ=ℕ; residue0 and1 both present | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.1 API: leftDescentSet | A₂,y=s₁s₂ | left descent{s₁},right descent{s₂} | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.1 API: parabolicRhoCoweight | A₁,J={s} | ρ_J∨=ω∨; J=∅ gives0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.1 API: etaJCoweight | Twisted A₂,J={s₁} | dominant orbit of−ω₂∨ isω₁∨; wrong untwisted givesω₂∨ | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.1 API: doubleFlat | A₁ λ=2ω∨ andω∨ | double-flat values0 andω∨ | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.1 API: doubleFlat_dominant_le | A₁ λ=2ω∨ | 0 dominant=True; λ−0=α∨ is an integral positive coroot | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.1 API: doubleFlat_lattice | Simply connected A₁ | ω∨=α∨/2∉ℤα∨;2ω∨=α∨∈ℤα∨ | Consistent on these instances | Prose API; no extra Lean declaration. |
| §7.1 API: isPAlcove | J=S | W̃_J=W̃,N=1; both defining clauses True | Consistent on these instances | Prose API; no extra Lean declaration. |
| §7.1 API: pAlcove_rootCriterion | w=1 in a proper parabolic | root subgroup intersection equals itself: both inequality and inclusion True | Consistent on these instances | Prose API; no extra Lean declaration. |
| §7.1 API: pAlcove_full | J=S | N=1; subgroup inclusion1⊂1=True | Consistent on these instances | Prose API; no extra Lean declaration. |
| §7.1 API: pAlcove_transport | Noncommuting A₂ | correct translation(2,2),wrong conjugator(0,−2) | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.4 API: boundedLocus | G_m,μ=0 | b=1:all valuation cosets; b=ϖ:0 geometric points | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.4 API: exactLocus | GL₂ identity lattice,μ=(1,−1) | exact membershipFalse; bounded membershipTrue | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.4 API: boundedLocus_points | GL₂ identity lattice | relative position0 appears in lower-stratum union, not exactμ | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.4 API: exact_into_bounded | μ=0 and b=1 | factor map from exact to bound is identity | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.4 API: bounded_monotone | GL₂ 0≤_ℤ(1,−1) | identity belongs to both bounds:True⇒True | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.2 API: ExtendedSemiModule | h=2,m=1,A=ℕ | φ(−1)=−∞;φ(0)=0;φ(1)=1;φ(2)=1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.2 API: cyclic | Same cyclic object | φ(a)=floor((a+1)/2)=upper bound on A | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.2 API: finite_types | μ=(0,1) | one normalized A=ℕ and one φ, so number of types1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.2 API: from_lattice | Standard lattice | leading supportℕ and φ values0,1,1 agree | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.2 API: valuation_pairs | Same cyclic object | V=∅, cardinality0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.2 API: factorData | A₁,x=y=s,λ=2ω∨ | J={s},J′=∅,x′=z=y′=1,γ=2ω∨,a=1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.2 API: factorData_product | Same data | w₁w₂=t^(−2ω∨); lengths2+0=2 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.2 API: factorData_gamma_bound | Same data | γ−λ^♭♭=2ω∨=α∨≥_ℤ0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.2 API: factorData_support | Same data | η=ss=1 and a=1; supports∅⊇∅ | Consistent on these instances | Prose API; no extra Lean declaration. |
| §5.2 API: factorData_kottwitz | Adjoint A₁ | κ(w)=0=κ(a t^(2ω∨)) mod2 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.5 API: pointRealization | Trivial group; G_m mismatch | realized point set cardinality1; mismatch cardinality0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.5 API: bounded_exhaustion | Split torus b=1 | bounded finite subsets exhaust valuation setℤ; each dimension0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.5 API: dimension_empty | Empty mismatch | dimension−∞, not0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.5 API: dimension_perfection | A¹ perfection | dimension1=dimension of A¹ | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.5 API: dimension_universalHomeomorphism | Frobenius A¹→A¹ | source and target dimensions1=1 even in characteristic2 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.5 API: bounded_fibre_lower_bound | A²→A¹ | source dimension2=target dimension1+fibre dimension1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.3 API: leadingIndices | h=2,m=1 standard lattice | A=ℕ, minimum0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.3 API: divisibilityFunction | Same lattice | φ(0)=0,φ(1)=1,φ(2)=1; φ(−1)=−∞ | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.3 API: stratum | Minuscule type(0,1) | V=∅; stratum point dimension0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.3 API: stratum_points | Same standard point | assigned(A,φ) equals prescribed pair, membershipTrue | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.3 API: finite_partition | Fixed determinant0,μ=(0,1) | one extended type, disjoint partition has1 stratum | Consistent on these instances | Prose API; no extra Lean declaration. |
| §2.3 API: shift_component | Index shift by1 | basis sums1→3; determinant0→1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §3.5 API: iteratedLocus | G_m,two zero bounds,b=1 | both steps identity, endpoint0; no intermediate parameter | Consistent on these instances | Prose API; no extra Lean declaration. |
| §3.5 API: iteratedLocus_graph | Same chain | framing equationβ·1·1=σ(β); endpoint condition is r_b(β)=1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §3.5 API: forget_intermediates | Same chain | forgetful fibre point, dimension0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §3.5 API: one_step | d=1 | intermediate count0; chain locus equals one-step locus | Consistent on these instances | Prose API; no extra Lean declaration. |
| §3.5 API: exact_endpoint | Two GL₂ minuscule bounds | exact endpoints(2,0) fibre0 and(1,1) fibre1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §4.2 API: cellNewtonSet | Length-zero τ | cell Newton set singleton{[τ]} | Consistent on these instances | Prose API; no extra Lean declaration. |
| §4.2 API: genericClass | GL₂ dominant t^(1,0) | greatest class slopes(1,0),def0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §4.2 API: genericClass_greatest | GL₂ acceptable slopes | (1/2,1/2)≤(1,0) with κ1=1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §4.2 API: genericClass_closure | Finite A₁ simple cell closure | open cell and its closure have same generic ν0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §4.2 API: genericClass_points | Same simple cell | X_s(1) has dimension1 and is nonempty | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.1 API: frobeniusEndpointCorrespondence | u=1 | intermediate h=g, endpointz=v | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.1 API: frobeniusEndpointProjection | u=v=s | ordinary fibreA¹→endpoint1 and Demazure fibreG_m→endpoints | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.1 API: endpoint_points | u=1 | all three position equations reduce to inv(g,bσg)=v | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.1 API: frobeniusPullback | b=1,σ=id finite group | graph pairs(g,g); all endpoint equations impose the diagonal | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.1 API: rotate_chain | General r_b word | r_b(bσg)=σ(g)⁻¹σ(b)σ²(g)=σ(r_b(g)) | Consistent on these instances | Prose API; no extra Lean declaration. |
| §1.4 API: dimensionAdvantage | w=v | every finite difference0≥0; empty-right condition vacuous | Consistent on these instances | Prose API; no extra Lean declaration. |
| §1.4 API: advantage_iff_virtual | Empty right | extended normalized comparison is z≥−∞ for every z | Consistent on these instances | Prose API; no extra Lean declaration. |
| §1.4 API: advantage_refl_trans | Successive finite differences | 2+3=5 for endpoint comparison; w=w gives0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §1.4 API: advantage_reduction | Equal ℓw=ℓv,η lengths0,2 | dimension difference0≥(0−2)/2=−1 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.2 API: chainSpaces | A₁ rank-one factorization | A=1,B length0,γ=2ω∨; all zero-step restrictions match | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.2 API: firstRestriction | Identity-step restriction | allowed endpoint equalityTrue, complementFalse; inclusion not a surjection onto a nonmatching endpoint | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.2 API: firstForgetful | Same rank-one data | forgetting g₂ leaves unique zero-length step, fibre dimension0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.2 API: secondRestriction | a=1 rank-one data | endpointσ(a)=1 requires g₁=g₄ | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.2 API: secondForgetful | Same data | forgetting g₃ has lower fibre boundN₂=0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §6.2 API: terminalComparison | σ=id rank-one datum | terminal labels a,t^γ; endpointa t^γ, dimension difference0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §4.4 API: isCordial | Finite A₁ reflection | 1−1=0=〈ν,2ρ〉−def | Consistent on these instances | Prose API; no extra Lean declaration. |
| §4.4 API: cordial_iff_virtual_generic | Same object | generic dimension1=virtual dimension(1+1)/2 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §4.4 API: cordial_reduction_transport | Identity reduction | generic class[1] and ηlength0 unchanged; cordial equality0=0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §4.4 API: cordial_imported_translation | GL₂ s t^(1,0) | lengths2−1=1,Newton pairing1,def0 | Consistent on these instances | Prose API; no extra Lean declaration. |
| §0.1 Check: commutative_identity | For commutative H and σ=id, X_I(w,b) is all of H/I iff b∈IwI, and otherwise empty. | C₂: r_b(g)=b; b∈IwI gives all 2 cosets, mismatch gives0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.1 Check: trivial_level | For I={1}, σ=id and b=1, the locus is all of H exactly when w=1; for w≠1 it is empty. | I=1,b=1: w=1 gives∣H∣, w≠1 gives0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.1 Check: top_level | For I=H the unique left coset belongs to the locus for every b,w. | I=H: quotient size1 and locus size1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.1 Check: noncommutative_change | In S₃ with I={1}, σ=id, b=(12), the class of g=(123) belongs to the locus labelled g⁻¹bg=(13), and not to the locus labelled b. | S₃: conjugate(12) by(123) gives(13), not(12) | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.2 Check: rank_one_identity | For split adjoint A₁, b=1 and w=s, ℓw=ℓη=1 and d_w(1)=1. | (1+1−0)/2−0=1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.2 Check: ordinary_translation | For split GL₂, λ=(1,0), w=t^λ and b=t^λ, the length 1 and pairing 1/2 give d=0. | (1+0−0)/2−1/2=0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.2 Check: basic_GL2 | For GL₂ with slope-1/2 basic b, def=1. At w=s t^(1,0), lengths 2 and 1 give d=1. | (2+1−1)/2−0=1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.2 Check: twisted_factor | For type A₂ with σ swapping s₁,s₂ and x=s₁,y=s₂, η=σ⁻¹(s₂)s₁=1; replacing σ⁻¹(y) by y gives length 2 and changes d by 1. | η=s₁s₁=1,length0; wrong s₂s₁,length2; virtual difference1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.3 Check: A1_strip | In A₁ a test alcove whose α-values lie in (−1,0) is rejected. | −1/2 in(−1,0):True | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.3 Check: A1_outside | Alcoves with α-values wholly in (0,1) or in (−2,−1) lie outside the A₁ critical strip. | 1/2 and−3/2 outside(−1,0):True | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.3 Check: wall_endpoints | The boundary hyperplanes with α=0 or α=−1 are not removed; replacing the open strip by a closed one is a wrong definition. | 0 and−1 lie on boundary, removed=False | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.3 Check: independent_bound | In split adjoint A₂ take ν=0 and λ=6ω₁∨=4α₁∨+2α₂∨. Then λ≥_ℤ2ρ∨, but 〈α₂,λ〉=0, so t^λ preserves the base alcove’s α₂-critical strip and is not shrunken. | λ−2ρ∨=(2,0)≥0 but α₂(λ)=0; shrunken=False | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.1 Check: rank_one | For h=1,m≥1 the normalized semi-module is ℕ. | h=1 normalized basis{0}; A=ℕ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.1 Check: coprime_small | For h=2,m=1, A=ℕ has B={0,1}, normalized sum 1, and type (0,1). | B={0,1},sum1,type(0,1) | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.1 Check: stability_failure | The even nonnegative integers fail stability under m=1 and are not a semi-module for (m,h)=(1,2). | even0+1=1 not even; stabilityFalse | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.1 Check: translation | A=1+ℕ has basis sum 3 for h=2; its normalization is ℕ, not A itself. | {1,2} sum3; translate−1 gives{0,1} sum1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.1 Check: empty_exclusion | The empty subset is bounded below and stable under both additions, but is not a semi-module and has no h-element residue basis. | empty residue basis cardinality0≠h=2 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §5.1 Check: no_descents | For y=1, J=∅, both correction coweights vanish and λ^♭♭=λ. | J=∅,ρ=η_J=0; λ^♭♭=λ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §5.1 Check: A1_adj | In adjoint A₁ with y=s and λ=2ω∨, ρ_J∨=η_J∨=ω∨, so λ^♭♭=0. | λ=2ω∨,correctionsω∨+ω∨; result0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §5.1 Check: A1_lattice | For simply connected A₁, ω∨=α∨/2 is not an original cocharacter; the intermediate subtraction is not silently evaluated in Y=ℤα∨. | ω∨=α∨/2∉ℤα∨ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §5.1 Check: twisted_J | For A₂ with σ swapping the simple nodes and J={s₁}, the input −σ⁻¹ω₁∨ is −ω₂∨, not −ω₁∨. | −σ⁻¹ω₁∨=−ω₂∨≠−ω₁∨ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §5.1 Check: left_descent_A2 | For y=s₁s₂ in A₂, the left descent set is {s₁}, while the right descent set is {s₂}. The input ρ_J∨ must use ω₁∨. | left{s₁}≠right{s₂} for y=s₁s₂ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §7.1 Check: full_Levi | J=S gives the full group and no unipotent obstruction. | J=S,N=1; unipotent conditionTrue | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §7.1 Check: proper_support | For J= supp_σ(η_σ(w)) in the shrunken setting, x⁻¹wσ(x)=t^λσ(η_σ(w)) lies in W̃_J. | x⁻¹wσ(x)=t^λ yσ(x)=t^λσ(η) | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §7.1 Check: wrong_conjugator | Replacing x by σ⁻¹(y) does not give that identity in general; a noncommuting A₂ normal form must fail this substitution. | x=s₁,y=s₂,λ=(2,2): wrong conjugator gives(0,−2) | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §7.1 Check: twisted_right | For a diagram automorphism, x⁻¹w x and x⁻¹wσ(x) differ and only the latter defines the condition. | x=s₁,σ swaps nodes: right factorss₁≠s₂ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.4 Check: torus_mismatch | For G=G_m, μ=0 and b=ϖ, both loci are empty since valuation is 1, although the numerical dimension expression is 0. | G_m valuationκ1≠0; dim−∞ versus expression0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.4 Check: strict_union | For GL₂, b=1 and μ=(1,−1), the identity point lies in X_0(1)⊂X_≤μ(1) but not in X_μ(1). | identity position0≤_ℤ(1,−1) but0≠(1,−1) | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.4 Check: central_bound | For a torus, the dominance interval has one element, so the exact and bounded loci coincide. | torus interval{μ},cardinality1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.4 Check: base_category | For k of characteristic p, the k-algebra k[ε]/(ε²) is not perfect, because its nonzero ε has ε^p=0; it is outside the mixed-characteristic perfect functor’s domain. | ε≠0,εᵖ=0; Frobenius injective=False | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.2 Check: cyclic_small | For A=ℕ,h=2,m=1, φ(a)=⌊(a+1)/2⌋ on A and −∞ elsewhere gives type (0,1). | φ on0,1,2 is0,1,1; initials0,1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.2 Check: growth_failure | The constant function 0 on A fails φ(a+h)≥φ(a)+1. | constantφ0:0≥0+1 isFalse | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.2 Check: outside_failure | Giving a finite value at −1 for A=ℕ violates the support condition. | φ(−1) finite gives support outsideℕ,False | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.2 Check: finite_pairs_small | For the cyclic small example the set V is empty, so its chart dimension is 0. | V=∅,cardinality0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §5.2 Check: empty_J | For y=1 the correction ρ_J∨ is zero, β=λ and γ=λ. | J=∅;β=λ,γ=λ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §5.2 Check: rank_one_product | In split adjoint A₁ take x=y=s and λ=2ω∨. Then J={s}, J′=∅, x′=z=y′=1, β=γ=2ω∨, w₁=s t^ω∨ and w₂=t^ω∨s. Their product is s t^(2ω∨)s=t^(−2ω∨), and the lengths are 2+0=2. | w₁w₂=t^(−2ω∨),lengths2+0=2 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §5.2 Check: Demazure_idempotent | For a simple reflection s, s*s=s, whereas s·s=1; support must be computed from the former. | s*s=s versus s·s=1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §5.2 Check: torsion_guard | Equality after mapping to P∨ coinvariants cannot be used as equality of original integral κ when the map has a kernel. | mapℤ→ℤ/2 sends0,2 to0; equality downstairs does not identify0,2 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.5 Check: affine_line_perfection | The perfection of A¹ has dimension 1 even though it is not finite type. | A¹ and perfection both dimension1; perfection not finite type | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.5 Check: infinite_components | For a split torus with b=1, μ=0, the spherical locus is an infinite discrete set of dimension 0; no global finite-component axiom is allowed. | torus component setℤ infinite,dim0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.5 Check: empty_dimension | An empty torus mismatch has dimension −∞, not 0. | empty dimension−∞≠0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §0.5 Check: relative_fibres | A product Y×Aⁿ→Y on finite-type models has dimension dim Y+n, including after perfection. | Y=A¹,n=1:2=1+1 before/after perfection | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.3 Check: standard_lattice | For h=2,m=1, the standard lattice has A=ℕ and φ(a)=⌊(a+1)/2⌋. | A=ℕ;φ0=0,φ1=1,φ2=1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.3 Check: shift_volume | Shifting leading indices by 1 changes ΣB by h and the determinant component by one. | basis sum1→3 differs byh=2; determinant0→1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.3 Check: central_shift | Replacing b by ϖb and μ by μ+(1,…,1) preserves A and adds 1 to φ on A. | b→ϖb:φ0=0→1,φ1=1→2 on sameA | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §2.3 Check: noncoprime_exclusion | The shift with h=2,m=2 is not covered by the superbasic chart theorem. | gcd(2,2)=2≠1; simple slope criterionFalse | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §3.5 Check: one_step | d=1 gives the original bound, with no extra intermediate parameter. | d=1,intermediate count0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §3.5 Check: central_chain | For a torus the only possible endpoint is Σμ and the convolution fibre is a point. | G_m endpointΣμ and fibrepoint,dim0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §3.5 Check: order | Interchanging noncommuting modification matrices changes the chain product; no commutative product convention is allowed. | UV=[[2,1],[1,1]]≠VU=[[1,1],[1,2]] | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §3.5 Check: exact_vs_closed | For GL₂ a smaller endpoint λ<Σμ is not assigned the top-endpoint fibre dimension 0. | GL₂ lower central endpoint fibreP¹,dim1≠top0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §3.5 Check: degree_three_cycle | For a degree-3 unramified restriction, (σb)_τ₀=σ(b_(σ⁻¹τ₀)); use τ₁=σ⁻¹τ₀. The opposite cycle fails even though degrees 1 and 2 cannot detect it. | degree3: second factorσ(b₁),notσ(b₂) | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §4.2 Check: length_zero | For a length-zero element τ, the cell has generic class [τ]. | length0 τ:generic[τ] | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §4.2 Check: ordinary_translation | For dominant λ the cell t^λ has generic class [t^λ]. | t^(1,0):genericν=(1,0),def0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §4.2 Check: Kottwitz_component | A class with different κ cannot enter B(G)_w even if its Newton vector is smaller. | κ0≠κ1 so membershipFalse | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §4.2 Check: not_downward_closed | Greatestness alone must not produce all lower classes; saturation is a separate cordial theorem. | abstract occurring set{0,2} has greatest2 but missing1; greatestness does not imply interval saturation | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §6.1 Check: identity_step | When u=1, h=g and z=v, forgetting h identifies the Frobenius pullback with X_v(b). | u=1 givesh=g andz=v | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §6.1 Check: simple_square | For u=v=s, a fixed ordinary endpoint of position 1 has intermediate-flag fibre A¹, while a fixed Demazure endpoint of position s has fibre G_m. Both have dimension 1. The same fibres occur over existing endpoints after the bσ pullback. | ordinaryA¹,DemazureG_m; dimensions1=1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §6.1 Check: noncommuting_steps | For u=s₁,v=s₂ in A₂ the product endpoint s₁s₂ cannot be replaced by s₂s₁. | A₂ s₁s₂≠s₂s₁ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §6.1 Check: Frobenius_rotation | Rotating u,v changes the final label from uv to vσ(u), not vu in a twisted datum. | σ swaps nodes,u=s₁,v=1: vσ(u)=s₂≠s₁=vu | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §1.4 Check: reflexivity | Every w has advantage over itself, including when all tested loci are empty. | w=w gives difference0≥0; empty-right has0 obligations | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §1.4 Check: empty_right | A class with X_v empty imposes no condition; it must not force X_w empty. | right empty means normalized value−∞; any left value≥−∞ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §1.4 Check: eta_direction | If ℓw=ℓv and dimensions agree, ℓηw≤ℓηv is the direction that permits w⇒v. | ηlength0≤2 gives RHS−1≤dimension difference0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §1.4 Check: transitive | If w⇒v⇒u and X_u(b) is nonempty, add the two rational length differences to obtain w⇒u. | differences2+3=5 and virtual differences add to5 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §6.2 Check: identity_factors | With y=1 the unnecessary zero-length steps collapse to identity correspondences. | y=1 givesρ_J∨=0 andB=1; zero step unique | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §6.2 Check: first_endpoint | The first fibre uses the ordinary product B·σ(w₁), conjugated to the stated endpoint, so its bound carries 1/2. | ordinarysimple square lower bound(1+1−0)/2=1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §6.2 Check: second_endpoint | The second fibre uses σ⁻¹(A)*(x′y′)=a, so its bound has no factor 1/2. | Demazuresimple square lower bound1+1−1=1 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §6.2 Check: twisted_terminal | The terminal chain has σ(a),σ(t^γ); removing these σ symbols before the Frobenius comparison gives the wrong locus. | σ(a),σ(t^γ) are actual labels; σ swap sends nodes₁↔₂ | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §4.4 Check: identity | For w=1 and b_w=1 both sides are 0. | identity lengths0,0;Newton0,def0,so0=0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §4.4 Check: ordinary_translation | For a dominant translation in split GL₂, ℓ(t^(1,0))=1, η=1, ν=(1,0), def=0, so it is cordial. | GL₂ translation1−0=1−0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §4.4 Check: finite_simple | For w=s in split adjoint A₁ the generic class is basic and ℓs−ℓη=0, so it is cordial. | finiteA₁ s:1−1=0−0 | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| §4.4 Check: generic_only | Equality at one nongeneric b does not establish cordiality without the generic-class theorem. | two scalar pairs(D,d)=(1,1),(0,1) give defects0,−1; equality atone class does not determine another | Consistent on these instances | Accepted Check retained; evaluated as shown. |
| Residue fields and branch scope | p=2,3; q=1; tame/wild | q=2,3 satisfy p^f; q=1 has no f≥1; p=2 excluded only from the initial PGL₂ component proof since2∣2 | Consistent on these instances | General transfer target retains all residue characteristics. |
| Universe and degenerate objects | Trivial group; h=0; zero algebra | trivial group gives1 coset; h=0 violatesh≥1; Spec0 empty and sheaf value singleton | Consistent on these instances | No size or nonempty-test loophole. |
| Integral versus rational dominance | Adjoint A₁,coroot2 inℤ | 0≤_ℚ1 True;0≤_ℤ1 False;0≤_ℤ2 True | Consistent on these instances | Retain coroot coset. |
| Defect convention | GL₂ ordinary/basic | ordinary ranks2−2=0;basic2−1=1; absolute ranks would give0 in both | Consistent on these instances | Use F-split ranks. |
| Frobenius trace convention | A¹ over𝔽_q,ℓ≠p | H²_c trace geometricq,arithmeticq⁻¹;H¹_c trace0 | Consistent on these instances | Trace transfer has same two-term witness. |
| Dimension arithmetic | Empty and point | dimempty−∞;dimpoint0;−∞+1=−∞;−∞−(−∞) unused | Consistent on these instances | No total-function junk value for subtraction. |
| Nonreduced test algebra | k[ε]/ε², p=2,3 | ε²=0 in p2 andε³=0 in p3; Frobenius has nonzero kernel | Consistent on these instances | Outside perfect mixed-characteristic domain. |
| Index and divisibility domain | h=1,2; outsideA; Hodge nonnegative | h1 residue basis1 element; h2 basis2; φoffA=−∞; n0 feasible becausebσM⊂M | Consistent on these instances | No maximum of an empty feasible set. |
| Proper-Levi map action | j∈I_M | (ij)(j⁻¹mσj)σ(ij)⁻¹=imσ(i)⁻¹ | Consistent on these instances | Explicit quotient action and well-defined map. |
| Root strip normalization | A₁ and multipliable relative roots | affine reduced root strips endpoints−1,0;−1/2 removed,0 retained | Consistent on these instances | Use associated reduced affine root system, not an arbitrary rescaling. |
| Cardinality and noncompactness | G_m(L)/O_L× | valuation map givesℤ,infinite; source not globally quasi-compact | Consistent on these instances | Bounded models and local generic points. |
| Ordered norm supplier witness | Degree3,three independent components | Nm=b₀σb₁σ²b₂; inverse cycle fixesτ₁=σ⁻¹τ₀ | Consistent on these instances | Same convention in supplier contract and §3.6. |
| API binder scope | No own Lean declarations | 0 declarations;0 dropped hypotheses; native #check types elaborated | Consistent on these instances | No data wrappers or erased standing binders. |
| Cordiality supplier attribution | GL₂ s t^(1,0) | RG length data2,1 imply2−1=1 after local genericν=(1,0),def0 | Consistent on these instances | Cordiality proof local, not an absent supplier theorem. |

| §7.5 API source and target | J=S, w arbitrary | I_M=I; quotient I×^I(IẇI) maps onto IẇI | Consistent on these instances | Explicit quotient action and both carriers. |
| §7.5 API representative invariance | G_m,q=2,ζ∈𝔽₄× of order3 | (1,1) and(ζ,ζ) both map1; incorrect untwisted pair(ζ,1) mapsζ²≠1 | Consistent on these instances | σ(j) retained in the quotient action. |
| §7.5 API surjectivity | Full Levi | [1,m] maps to m for everym∈IẇI | Consistent on these instances | Concrete quotient-map theorem. |
| §7.5 API strict-case fibres | Full Levi, no unipotent roots | strict condition vacuous; each target has1 quotient class | Consistent on these instances | Injectivity only under stated strict condition. |
| §7.5 API fibre conjugacy and Levi index | GL₂ ordinary torus fibre | B(M) fibre has(1,0),(0,1); requiredκ_M=(1,0) selects1 class | Consistent on these instances | Keep all candidates before κ filtering. |
| §0.4 API parahoric-to-Iwahori comparison | P=I | positionz=w; same condition g⁻¹bσg∈IẇI | Consistent on these instances | Parahoric carrier variant stated. |
| §0.4 API hyperspecial specialization | G_m, P=K=I | valuation0 matchesμ0; valuation1 mismatch gives0 geometric points | Consistent on these instances | Matches accepted spherical carrier. |
| §0.4 API level-forgetting morphism | GL₂,I⊂K,w=s andw=1 | both images have position0; over stable lattice fibres have dimension1 and cardinalityq+1 respectively | Consistent on these instances | Forgetting level is not claimed an isomorphism. |
| §3.1 empty admissible target | Y=∅ | f_m⁻¹(∅)=∅; dimensions−∞ and−∞, difference undefined | Consistent on these instances | Require Y nonempty only for dimension subtraction. |
| §2.4 direction of perfection map | Natural map(A¹)^perf→A¹ | source and target dimensions1=1; reverse canonical map is not asserted | Consistent on these instances | Correct source and target. |
| Degree-three norm two-term witness | b₀=1,b₁=U,b₂=V,σ fixes entries | inverse cycle UV=[[2,1],[1,1]]; opposite cycle VU=[[1,1],[1,2]]; still unequal in𝔽₂ | Consistent on these instances | Same cycle convention in contract and geometric comparison. |

Audit table: 230 rows, including 48 accepted targets, 86 accepted API facts, 71 accepted construction Checks, 14 convention/interface controls and 11 rows for the additional map APIs and final corrections. The added README Checks and worked examples use the same calculations; the class-polynomial, norm, strip, defect and Frobenius witnesses are repeated in the layers that consume them.

## Elaboration and binder audit

From the content repository, the prescribed lake env lean command on packages/HeckeStacksAndLocalShtukasPartII/Suggested.lean completed with exit status 0. Exact count of sorry warnings: **0**. Other compiler messages: **none**. The file has zero theorem, definition, instance, opaque, structure or class declarations, so it has zero admitted assertions and no sorry'd data. No TauCeti module is imported by the acceptance test; no targeted TauCeti build was needed. No forbidden Lean command or option was used.

A single scratch file was also elaborated with #check @ for the native declarations DoubleCoset.doubleCoset, DoubleCoset.mem_doubleCoset, QuotientGroup.leftRel, QuotientGroup.leftRel_apply, Finset, WittVector.Isocrystal and AlgebraicGeometry.Scheme. It completed with exit status 0 and no warnings. These elaborated types agree with the supplier descriptions. The required #check audit for every own declaration is empty because there are no own declarations; no standing typeclass or finiteness hypothesis could disappear. The type audit caused no signature change.

## Dependency check

The prescribed depcheck with the package name, ORDER.txt and --movable returned exit status 0. Its complete output was:

```text
depcheck: 34 roadmaps, 305 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The merge-order file was not changed. The citation resolver found no missing Lean names. Its RootSystemsPartII finding is resolved against the explicitly supplied earlier board design and its gaps, as described above; the pins were checked directly rather than relying on its host's library-index message.
