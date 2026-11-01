# Mathematical repair report

## F01 (P1) — applied

Relative comparison plus constants from CrystallineCohomology → comparison owned in §5.5, constructed by contravariant evaluation and Cartier duality; only ring constants remain as gap:relative-crystalline-constants on PadicPeriodRings §4.3. Updated scope, §§5.2, 5.13 and Layer 5 dependencies. Checks give comparison matrices 1, t and diag(t,1). Evidence: Kisin17 lines 455–462 and 474–476.

## F02 (P1) — applied

Unstated imports → constructions in §§3.15–3.17: trace form, type-A intersection and inverse-indexed chain, different-twisted descent duality, and Dᴴ scalar enlargement. Repointed §3.11 to RG2.2.4; corrected scope and the cutting-tensor contract. Added discriminating Checks. Evidence: KPZ26 lines 2909–2916, 3040–3051, 3070–3080 and 3115–3145; the supplier's RG2.3.5 has only the underlying classical lattices.

## F03 (P2) — applied differently

Absolute interfaces now cite PadicPeriodRings §§3 and 4.1. Section 5.2 constructs relative Frobenius using the completed PD initial property and constructs the PD filtration. Its extension ideal contains p; Fil¹ does not. The proposed argument must distinguish these ideals: θ(φ([p♭]−p))=pᵖ−p≠0. Added absolute-specialization and filtration Checks; updated all period dependencies.

## F04 (P2) — applied differently

Contracts mentioning Ŵ(R) or unnamed local models → independent normal-section detection and local henselian flattening contracts. Added the finite-residue-extension hypothesis to integrality detection. Section 2.6 owns Witt-coordinate division, finite presentation and henselianity, then applies flattening at a closed-fibre point and fpqc descent. Sources: deJong95 lines 2831–2833, 2952–2954; RG71 I.4.1.2, p.27; KP18 lines 2176–2188.

## F05 (P2) — applied differently

Made point detection and separatedness explicit; moved reduced-base display lifting into §4.13. Split local-model geometry into four theorem-specific gaps, and disc extension, component reduction and patching into three gaps. The Hodge contract now supplies only rational absolute-Hodge comparison for a given abelian scheme; §5.15 states the integral-model and tensor inputs explicitly. No supplier construction consumes §4.12.

## F06 (P3) — not actionable in this package: the requested policy decision belongs to the maintainer

The review itself verifies that every headline needs missing carriers. The brief explicitly permits an empty file with those obstructions documented. Kept all 21 headline descriptions and added no weakened signatures or padding. A decision to wait for supplier carriers is outside these files. The pinned object searches and declaration audit below independently support the mathematical assessment.

## F07 (P3) — applied differently

Deleted the compliance-only concluding sentence and replaced all three “Breuil--Kisin” spellings by “Breuil–Kisin.” Kept the sentence identifying README.md as the roadmap because the prescribed module form expressly requires it. Removed “Corrected” from the versal headline as part of F10's naming repair.

## F08 (P3) — applied

Replaced every listed erroneous locator in §§0.12, 1.4–1.5, 2.3, 3.10–3.11, 4.6–4.7, 4.12 and 5.9; also repaired §3.12's repeated 2356 locator and §3.16's nonexistent equation locators. Removed backticks from sources.toml. Distinguished the completed local ring's regular generic locus from the original model's generic flag variety. All corrected extraction locations were opened.

## F09 (P3) — applied

Added the missing gap prerequisites to §§2.1, 3.14–3.15, 3.17, 4.11, 4.13, 5.15 and 6.1. Removed duplicated prerequisites in §§1.7, 2.13, 5.5 and 6.2. Numbered existing preamble targets §§2.0 and 6.0 and updated their consumers. Deleted the unused Tau Ceti contract; its Frobenius theorem does require CharP, as verified at the pin.

## F10 (P3) — applied differently

Replaced process adjectives throughout the README and Lean headline list by mathematical names, (A)–(C), or the canonical relative-frame c. Section 5.14 now states the linear-dual convention without claiming a printing error. Kisin17 lines 284–287 includes duals in mixed tensors. The design ledger's corresponding historical assertions cannot change: only its top-level gaps list is editable.

## F11 (P3) — applied

Added the ownership boundary in scope: PELModuli §M2.15 supplies W(R)-displays and the formal-group BT equivalence in its range; this package owns Ŵ(R)-frame displays and the anti-equivalence for all p-divisible groups. No comparison along Ŵ(R)→W(R) is consumed. Read §M2.15 at its indexed head, including its nilpotence condition and formal-group target.

## F12 (P3) — applied

Perfect F̄_p-algebras → all perfect F_p-algebras in §0.5, matching §0.2. Cited Lau14 Lemma 2.4 for the general setting and identified the other sources as F̄_p instances. Added Checks F=p⇒V=1, F=1⇒V=p, the zero module and a disconnected perfect base with locally varying rank. No Lean signature uses a narrower base.

## F13 (P3) — applied

Section 3.5 now requires goodness only for the neutral closure's embedding, with μ minuscule and automatically factoring through G°. Section 2.4 uses H¹(U,𝒢°)=1 and the separate component step. Updated the route over the neutral closure's local model. Evidence: KPZ26 lines 2663–2672; KP18 lines 2071–2076 and 2127–2138. Retained smoothness and reflex-base conditions.

## Checks and outcomes

- Required elaboration: `lake env lean` on packages/FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII/Suggested.lean, run from the content checkout: exit 0, no output. Its only import is Mathlib; no Tau Ceti object build was needed.
- Mechanical signature audit: the file has zero declarations, definitions and instances; therefore the set of required package `#check @name` statements is empty and no implicit binder can disappear. A separate scratch file elaborated `#check @WittVector`, `@WittVector.frobenius`, `@WittVector.frobeniusEquiv`, `@WittVector.verschiebung`, `@WittVector.Isocrystal` and `@DividedPowers` once: exit 0. Their printed binders match the README. In particular Frobenius equivalence requires CharP and PerfectRing; Verschiebung is additive; DividedPowers is on an explicit ideal. No package signature was changed or added.
- Pins read from lake-manifest.json: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Object searches found no p-divisible-group category, Zink display/frame category, Breuil–Kisin module carrier, parahoric local model, Kottwitz invariant or crystalline Galois representation carrier supporting the 21 headlines. Knot-theoretic weak admissibility and ordinary divisible groups are unrelated hits.
- Native definitions read at the pins: WittVector in Mathlib/RingTheory/WittVector/Defs.lean:52 stores its coefficient function; it does not specify a Zink subring. WittVector.Isocrystal in Mathlib/RingTheory/WittVector/Isocrystal.lean:113 adds a semilinear equivalence to a scalar module, with no finite-dimensionality field. DividedPowers in Mathlib/RingTheory/DividedPowers/Basic.lean:77 has its scalar law at line 86 with ideal membership. The deleted continuity contract was checked at TauCeti/RingTheory/WittVector/Frobenius.lean:60–79 and Complete.lean:205–215; its first theorem has CharP already in the variable block.
- Cross-roadmap resolution: no unresolved roadmap citations and no unresolved roadmap Lean names. The resolver reported that it did not inspect external Lean names on this host; those names were checked directly against the pins or the supplying roadmap. Crystalline.fontaineEnvelope_initial and Crystalline.fontaineEnvelope_periodPDEnvelope are planned by DerivedDeRhamCohomology §PD.7, not claimed pinned declarations.
- Ownership searches used the roadmap index across main and all indexed open heads, plus read-only board packages, by displays, Zink rings, scalar enlargements, different-twisted duals and relative comparison objects. Read SchemeAndStackFoundations and ModularCurves on main, and the cited supplier sections at their indexed new-roadmap heads. Read the available LubinTateFormalModulesAndQuasiCanonicalLifts design boundary LT.0–LT.6; it is not a supplier. No open head was sought outside the provided index. The generic classical lattices remain with ReductiveGroupsPartII; this package owns the added paired constructions because that supplier does not state them. No Lean name duplicates another roadmap.
- Source acquisition: RG71 from GDZ and deJong95 from Numdam were added under single manifest keys with full bibliographic metadata. The normal-section source's correct printed page is 88. RG71 I.4.1.2 was read directly on the legal scan, printed page 27. No source passage was copied. RZ96 remains the settled uncertified locator-only reference. The volume-wide RG71 OCR run was stopped after direct inspection of the required scan page; no source or Lean process remains running. No reference is awaiting operator input.
- The design JSON was compared structurally with its original version after removing the top-level gaps key: equality holds. Each gap has exactly slug, needs, supplier and section, and each matches the README contract.
- Source manifest check: packages/FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII/sources.toml: 0 problem(s), exit 0.
- Formatting gate failure tex=14: replaced all 14 raw TeX occurrences across the relative-constants and local-model supplier contracts, §2.6, §§3.15–3.17 and §5.5 by equivalent prose, Unicode or an existing-style code span. No mathematical hypothesis, target, source locator or Lean signature changed. The worker’s own scan_tex_residue reports 14 → 0; its configured text scanners all report zero findings (exit 0).
- The whole-worktree gate wrapper returned missing-files=2 because it expects TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII rather than the board’s packages layout. The same worker text scanners were therefore run directly on the package files; they pass. The required dependency command was run separately and again produced the exact output below (exit 0).
- Repeated required Lean elaboration after the formatting repair: exit 0, no output; no Tau Ceti object build required. Suggested.lean remains unchanged and still has no declarations to audit with package #check commands.
- `git diff --check`: exit 0, no output. A hash comparison against the saved pre-retry files confirms Suggested.lean, metadata.toml, sources.toml and design/plan.json are unchanged by this formatting repair.

Required dependency check:

```text
depcheck: 50 roadmaps, 586 edges, 0 problem(s)
```

There are no UPWARD or CYCLE lines. Its command used the supplied configuration, README, roadmap name and merge order with `--movable`.

## Computed adversarial mathematics pass

These are mathematical boundary computations, not claimed formal proofs of the deep target theorems. Each numbered target, convention and modified supplier assertion has an explicit witness below. The two-term ordinary display uses multiplicative then étale order. All zero-ring rank statements retain the stated nonzero-ring hypotheses; p=2 is outside this package's displayed p>2 setting, whereas p=3 is included in its wild standard-representation cases.

| Statement | Instances tried | Computed values on the two sides | Result and change |
|---|---|---|---|
| Standing height and dimension conventions | Zero group; height one; ordinary height two | (h,d)=(0,0),(1,0),(1,1),(2,1); quotient ranks 0,1,0,1 | Consistent; no convention change |
| Coefficient and frame conventions | E(u)=u−p; p=aπ_E² | E(0)/p=−1; quotients O_E/(π_E²) and k send π_E to π_E and 0 | Distinct coefficient rings retained |
| Contravariance and Tate twist | Étale and multiplicative lines | (F,Fil¹)=(σ,0),(pσ,D); dual followed by (−1) exchanges multipliers 1,p | Linear dual retained |
| Hodge versus local-model cocharacters | GL₂, F=diag(p,1)σ | μ₀=diag(z⁻¹,1), υ₀=diag(z,1), p^υ₀=diag(p,1) | Inverse convention consistent |
| First-order quotient convention | p=aπ_E² | m²+p=(π_E²), m²+π_E=(π_E) | Both sides of c reduced together |
| Mixed tensor transport | c=1+εE₂₁ | c·id·c⁻¹=id; cE₁₁c⁻¹=E₁₁+εE₂₁ | Dual factor must use inverse dual |
| Kottwitz and lattice action | G_m, g=p | L↦pL, T↦p⁻¹T, κ(p)=1 | Positive valuation preserved |
| Quasi-isogeny composition | Upper and lower unipotents g,h | (gh)ᵗ=[[2,1],[1,1]], (hg)ᵗ=[[1,1],[1,2]] | Right-action order necessary |
| Finite-projective and universe convention | R=F_p×F_p, ranks (0,1) | Fibre ranks 0 and 1, no common rank-one basis | No freeness imposed over perfect rings |
| §0.1 Zink ring | R=k; R=k[ε]/ε² | Kernel 0 over k; finite ε-coordinate tail tends to 0, constant ε-tail does not | Excludes W(R) as wrong model |
| §0.2 perfect-ring classification | F=1,p over F_p; disconnected base | V=p,1 and FV=VF=p; component heights (0,1) | Agrees with §0.5 |
| §0.3 frame | φ₁(pa)=φ(a), a=u | φ₁(pu)=uᵖ, pφ₁(pu)=puᵖ=φ(pu) | Strictness excludes unit rescaling |
| §0.4 logarithmic kernel | b=0; b=(ε), ε²=0 | φ₁(i+[ε])=V⁻¹(i), φ₁([ε])=0; [ε+ε]log=2[ε]log | PD brackets are additive coordinates |
| §0.5 height-one interface | M=Z_p, F=p or 1; M=0 | V=1 or p; on 0 both maps 0 | Broadened to perfect F_p-algebras |
| §0.6 normal pair | d=0,h; rank-two split pair | M₁=IM,M; e₁↦e₂ has lower-left coefficient 1∉I | Boundary ranks correct |
| §0.7 relative frame | Identity thickening; dual numbers | D_{R/R}=D_R; φ₁([ε])=0 on relative kernel | Strict comparison retained |
| §0.8 tilde functor | Upper-right b=1; lower-left Vε | Tilde entries p and ε; identity gives diag(1,1) | Neither missing p nor extra p allowed |
| §0.9 strict base change | Rank-two pair reduced modulo p; identity map | Both tilde modules have basis of size 2; identity comparison matrix 1₂ | Nonflat base change does not replace τ by an image |
| §0.10 Frobenius-pullback map | d=0,1 in rank one | j=p,1; p reduced modulo p is 0 with source k | Injectivity requires p-torsion-freeness |
| §0.11 display | μ_{p∞}⊕Q_p/Z_p | Ψ=1₂, Φ=diag(p,1)σ, Hodge rank 1 | Variance and rank agree |
| §0.12 display base change | R→R/m³→R/m²; identity | Ψ reduces to the same matrix via either composition; identity leaves Ψ | Locators repaired |
| §0.13 group/display comparison | Étale, multiplicative, zero group | (h,d)=(1,0),(1,1),(0,0); arrows reverse | Boundary against PEL formal-only equivalence stated |
| §1.1 marked filtration | (h,d)=(1,0),(1,1),(2,1) | d(h−d)=0,0,1; rings O_F,O_F,O_F[[t]] | Marking retained |
| §1.2 enlarged ideal | I=I′; relative dual-number frame | Comparison 1; ε-filtration disappears in relative pair before τ | Relative factorization consistent |
| §1.3 canonical c | Z=Vε; Z=0 | c=1+εE₂₁; c=1 | Frobenius square alone misses ε coefficient |
| §1.4 rational section | Constant display; p inverted | Section matrix 1; lattice pⁿŴ(A) remains a proper additive neighbourhood | Erratum locator repaired |
| §1.5 first-order constancy | c=1+εE₂₁ | Ψ=Ψ₀(1−εE₂₁) gives Ψc=Ψ₀ | Literal unchanged Ψ generally fails |
| §1.6 rational tensor preservation | Identity and projector in constant display | id↦id, E₁₁↦E₁₁ under section 1₂ | Integral frame assumption retained |
| §1.7 PD deformation | k[ε]/ε²→k; split height two | Hodge lifts ke₁↦span(e₁+aεe₂), parameter a∈k | GM parameter count 1; duplicate needs removed |
| §1.8 universal display | h=2,d=1; h=1 | Tangent ranks 1,0; Ψ₀c⁻¹c=Ψ₀ | Universal marked, rather than unmarked, problem |
| §2.0 rational centralizer | G_m,b=p; GL₂,b=diag(p,1) | σ(g)=g gives Q_p×; off-diagonal slope equations give 0 | Numbered existing target |
| §2.1 tensor datum | Empty tensors; E₁₁ tensor | Fixers GL₂ and diagonal G_m²; id is fixed by all GL₂ | Scheme-theoretic cutting retained |
| §2.2 height-one filtration lattice | Zero, full and split rank-two Fil¹ | E𝔖,𝔖,𝔖e₁⊕E𝔖e₂ | E cannot be replaced by p |
| §2.3 completed model | GL₂, d=1 | R_G=R_E=O_Ĕ[[t]]; universal line span(e₁+te₂) | Generic regular chart distinguished from full flag variety |
| §2.4 filtration tensors | E₁₁ on split lattice; neutral fixer | E₁₁F⊂F; component class 1; H¹(U,𝒢°)={1} yields frame | Neutral vanishing and component step separated |
| §2.5 BK/tilde comparison | L⊕ET; E=u−p, u↦[π] | φ(E([π]))=p·unit; normal block E becomes p | Nonunit divided element retained |
| §2.6 coordinate integrality | f=p,1; x/p at π²=p | f/p=1,1/p; v_K(π/p)=−1 | Added point and division Checks |
| §2.6 flatness/torsor route | Empty tensors; Spec(Z_p/p)→Spec Z_p | T=GL_h flat; pullback to Q_p is empty and flat despite original nonflatness | Only local pointed maps can detect flattening |
| §2.7 horizontal tensors | t=id,E₁₁; c=1+εE₂₁ | Differences 0 and εE₂₁ | Negative ambient test remains explicitly ambient |
| §2.8 parahoric display | GL₂; endomorphism-cut torus | Pair has one Hodge parameter; torus forces off-diagonal Ψ entries 0 | Connected parahoric hypothesis retained |
| §2.9 adaptedness | Empty tensors; multiplicative line | No tensor equations; Fil¹=D for μ_{p∞} | Integral type is additional to rational type |
| §2.10 very-goodness | GL with empty tensors; projector | Tensor equation empty; cE₁₁c⁻¹−E₁₁=εE₂₁ | Goodness alone insufficient |
| §2.11 tensor-family independence | Add evaluation to a cutting family | c(id)c⁻¹=id adds equation 0=0 | Same torsor condition |
| §2.12 unramified coefficients | W(F_p)→W(F_{p²}) | Nonzero ε coefficient remains ε under faithful flat base change | Frobenius acts on coefficients, not as identity |
| §2.13 total chain representation | One lattice; p-scaled segment | tot rank h; multiplication by p is an isomorphism Λ→pΛ | Duplicate needs removed |
| §3.1 curve lattice | Fil¹=span(e₁) modulo p | M_{S,1}=Se₁⊕pSe₂; E₁₁ remains integral | p-frame separated from Eisenstein modification |
| §3.2 invariant endomorphisms | Split projector | t(e₁)=e₁,t(pe₂)=0; tilde t=E₁₁ | Naturality preserves projector |
| §3.3 curvewise c | First jet u↦ε | Graph Vε produces c=1+εE₂₁ on both frame routes | Relative-frame map retained |
| §3.4 product criterion | Two rank-one groups | Product projector equations force block diagonal c; off-diagonal blocks 0 | Product group differs from arbitrary diagonal sum |
| §3.5 neutral closure | GO₂ hyperbolic over odd residue | GO⁺=diag(s,t), multiplier st=det; swap matrix has det/multiplier=−1 | Smooth neutral closure and only its goodness assumed |
| §3.6 summand criterion | Projection diag(1,0) | Commutation forces c₁₂=c₂₁=0; first block remains invertible | Summand transport valid |
| §3.7 formal-curve criterion | xy=0 at origin | Curve derivatives e₁,e₂ span k²; a curve derivative (1,1) would give t²≠0 | Spanning, not individual liftability |
| §3.8 centralizers | t=E₁₁; g=1+εE₂₁ | gt−tg=εE₂₁≠0; diagonal matrices give 0 | Scheme intersection retained |
| §3.9 arithmetic curves | Smooth rank-one chart, t↦π_K | Tangent map sends t to π_K mod π_K², coefficient 1 | Arithmetic tangent detection uses nonstrict comparison |
| §3.10 isomorphic copies | Identity intertwiner and two copies | Transported projector E₁₁ and summand intertwiners have identical matrices | No theorem for unrelated sums added |
| §3.11 wild standard A | D=K; index-three D/Q₃; rank m=1 | Dimension over Q₃ is 9; uniformizer valuation 1/3; centralizer of right D is left D | O_D-chain supplier corrected |
| §3.12 segment independence | Add periodic copy pΛ | Λ→pΛ has relative matrix 1 in corresponding bases; total rank increases h | Very-goodness restricts and extends |
| §3.13 nonexceptional existence | Split GL₂,GSp₂ | Torus centralizer smooth; π₁(SL₂)=0; tangent of P¹ has dimension 1 | Both tangent gaps named |
| §3.14 Dᴴ PEL | Quaternion i²=−1,j²=3; split S₀ | Balanced pairings give −2,−2; reversed φ₀ arguments give +2,−2; S₀(e₁,e₂)=1 | Existing Checks recomputed |
| §3.15 type-A form | D=K,m=1,ξ=(1,−1) | ψ(e,f)=−1,ψ(f,e)=1; ψ(e,e)=0 | Form constructed here |
| §3.15 intersection | (1,diag(1,2)) on K²⊕(K²)∨ | Cross multipliers 1 and 2 differ, hence no common similitude | Cuts out proper subgroup of product |
| §3.15 indexed chain | Λ_i=p^{−i}Z_pe | Correct pair p^{−i}Z_p², dual p^iZ_p²; wrong same-index pair has exponents (−i,i) | At i=0,1 wrong terms incomparable |
| §3.16 different duality | π²=p,p odd,δ=2π | (πO_Le⊕O_Lf)^Γ=pZ_pe⊕Z_pf; both dual formulas give Z_pe⊕p⁻¹Z_pf | Omitting different loses p⁻¹ summand |
| §3.17 Dᴴ enlargement | diag(a,b); left l on D | Similitude ab; l(xd)=(lx)d | Both scalar factors and balanced action constructed here |
| §4.1 punctured exactness | Koszul maps (−u,p) and (p,u) over 𝔖 | Cokernel 𝔖/(p,u); on D(p) or D(u) the last map is surjective | No whole-disc exactness inferred |
| §4.2 Kottwitz of Galois image | Integral rank-one crystalline character | Values in Z_p× have valuation 0, hence κ=0 | Connected-parahoric reduction consistent |
| §4.3 integral tensor frame | Trivial tensor functor; connected torus | Isom torsor has identity section; H¹ over strict henselian base vanishes | Purity kept separate from Tannakian reconstruction |
| §4.4 crystalline/Witt comparison | H=μ_{p∞}, H=Q_p/Z_p | Linear dual Tate periods have F=pσ,σ, Fil jumps 1,0 | Missing (−1) twist would reverse normalization |
| §4.5 Hodge splitting | GL₂ ordinary line, permuted marking | Fil¹=e₁ or e₂; permutation conjugates the two generic cocharacters | Generic conjugacy does not fix an integral marking |
| §4.6 rigid section | c=1+εE₂₁ | Ψ_G=Ψ₀(1−εE₂₁) gives Ψ_Gc=Ψ₀ | Very-goodness needed for this point to lie in G |
| §4.7 Hoff compatibility | Same ordinary first-order graph | Both constructions give lower-left ε in c | Cocharacter inverse translated |
| §4.8 DVR tangent | O_K[ε]/ε², rank-two filtration | Graphs span(e₁+aεe₂), a∈O_K | Tangent identification O_K-linear |
| §4.9 interpolation | Endpoints a,b with b−a=π_Kc | f(T)=a+cT gives f(0)=a,f(π_K)=b; (0,1) has distinct residues | Fibre-product surjectivity only |
| §4.10 tangent criteria | Scalar ε↦pⁿε | Kernel 0 over O_K[ε]; over k[ε] ε maps to 0 | Equal ranks alone not used |
| §4.11 factorization | S=O_K[[T]], ideal (Tⁿ) | T^m∈(Tⁿ) iff m≥n; intersection is 0 | T-adic and p-saturation inputs explicit |
| §4.12 versal adapted theorem | GL₂ versus split-projector torus | Quotient dimensions 1 and 0; adapted maps satisfy respectively no equation or t=0 | (A)–(C) retained |
| §4.13 parahoric universality | k[ε]/ε² lifted from O_Ĕ[[t]] | t↦ε retains nonzero ε; every map of dual numbers to O_K kills ε | Reduced-base lift precedes point detection |
| §4.14 étale recognition | Scalar tensor projector with fixed type | Integral E₁₁ gives rank-one direct summand; p⁻¹E₁₁ is not integral | Integral type not dropped |
| §5.1 hyperspecial frames | Trivial GL₁ torsor; finite k | Frame 1; connected finite-field H¹ class 1 | Residue hypotheses remain on triviality |
| §5.2 cover evaluation | R=W(k); R̂̄=O_C | θ([p♭])=p; θ([p♭]−p)=0 | Uses completed geometric cover |
| §5.2 Frobenius extension | x=[p♭]−p | φ(x)=xᵖ+py∈pA_cris; θφ(x)=pᵖ−p≠0 | PD extension ideal must contain p |
| §5.2 filtration | x∈ker θ; p∈J | θ_cris(x)=0, θ_cris(p)=p; Fil⁰=A, p∉Fil¹ | Larger PD ideal is not Fil¹ |
| §5.2 specialization/Galois | Absolute t and Galois γ | φ(t)=pt; γ(t)=χ(γ)t, so φγ(t)=χ(γ)pt=γφ(t) | Absolute source section corrected |
| §5.3 toral admissibility | Ordinary diagonal torus | Hodge degrees 1,0 equal Newton degrees 1,0 on both lines | Centralizer and average hypotheses necessary |
| §5.4 hyperspecial adaptedness | Ordinary split S-crystal | F=diag(p,1)σ; projector E₁₁ has tensor weight 0 | S and 𝔖 remain distinct |
| §5.5 relative comparison | Étale, multiplicative and zero groups | Matrices 1,t,0; product diag(t,1); inverse diag(t⁻¹,1) after localization | Owned here; integral isomorphism false on multiplicative line |
| §5.6 one-sided factorization | b=diag(p,1) | h=1, p^υ₀=diag(p,1); permuting μ without b changes the line | Chosen lift retained |
| §5.7 explicit lift | E=u−p; E(0)=ap general | Multiplicative multiplier −E gives p at u=0; c_E=E/a gives p | Unit correction indispensable |
| §5.8 connection integrality | Denominator p⁻ʳ, n Frobenius pulls | Differential coefficient gains pⁿ, denominator bound becomes p^{n−r} | Integral once n≥r |
| §5.9 marked crystal | b=1,p,diag(p,1) | Hodge lattices pD,D,We₁⊕pWe₂; Fil ranks 0,1,1 | Fixed marking determines filtration |
| §5.10 horizontal Fil⁰ locus | No tensors; constant id tensor | Coefficient ideal 0; id has Fil⁰ weight 0 | A′_G=A in empty case |
| §5.11 locus equality | GL₂; split-projector torus | A′_G=A_G=K₀[[t]]; projector condition t=0 gives K₀ | Content-based name used |
| §5.12 smooth quotient | GL₂ and diagonal torus | Relative dimensions dim(GL₂/P)=1 and dim(T/T)=0 | Hyperspecial dimensions consistent |
| §5.13 universal étale tensors | Connected base; disjoint two-component base | One frame fixes rank h on connected piece; other component can have different lattice type | Connectedness retained; constants gap named |
| §5.14 recognition | H=μ_{p∞}; identity/evaluation tensors | L=Z_p(−1), D has multiplier p; evaluation transported to 1 | Convention, not alleged printing correction |
| §5.15 geometric realizations | Given ordinary abelian scheme, projector tensor | Étale idempotent E₁₁ maps to de Rham/crystalline E₁₁ with square E₁₁ | Integral model and global extension are explicit inputs |
| §5.16 specialization | G_m, g=1,p,ph with h unit | Crystal lattices W,pW,pW; valuations 0,1,1 | Rational cosets, not integral matrices |
| §5.17 admissible isogenous lift | Reference filtration; p-isogeny | Identity gives D₀; isogenous lattice pD₀ has index p^h | g need not be integral unit |
| §5.18 Hodge/Kottwitz | G_m,b=p,g=p | g₀=p; g₀⁻¹bσ(g₀)=p; κ(g)=κ(g₀)=1 | Component normalization coherent |
| §5.19 central quotient | Identity quotient of G_m | f(g)=f(g₀)=p modulo W× | Common frame condition retained |
| §6.0 ordinary normalization | GL₂ ordinary; supersingular; torus | Slopes (1,0),(1/2,1/2); translation length 1 versus ordinary mismatch; torus length 0 | Numbered target, not new theorem |
| §6.1 ordinary tensor datum | Height-two ordinary and supersingular | Newton Levi T and GL₂ respectively; only first has ν=(1,0) | No very-good hypothesis introduced |
| §6.2 central Levi filtration | λ(z)=diag(z,1) on T | λ commutes with diag(a,b); Hodge summand Ke₁ fixed | Connected-fixer intersection remains gap |
| §6.3 central BK lift | E(0)=ap; E=u−p | c_E=E/a, c_E(0)=p; Frobenius diag(−E,1) in ordinary example | Height-one and residual matrix match |
| §6.4 ordinary existence | μ_{p∞}⊕Q_p/Z_p | Lift has slopes 1,0, same marking, Fil¹ rank 1 | Explicit central route uses no very-goodness |
| §6.5 rational action | Central p and p⁻¹ | Quasi-isogeny heights 2 and −2; neither inverse pair consists of integral units | Isogeny-category action retained |
| §6.6 specified Levi filtration | M=T⊂GL₂ with ordinary line | Extra projector yields tangent rank 0; forgetting it gives G-adapted lift | Nonordinary filtration existence not inferred |
| Normal-section supplier | R=Z_p[[x]], s=x/p, π²=p | v_K(ξs)=1−2=−1, so s∉R detected; s=1 has value 1 everywhere | Finite residue condition explicit |
| Flattening supplier | A=Z_p, X=Spec(A/p), local detector A→A | Flattening ideal (p), image (p)≠0; empty generic pullback does not kill it by a local map | Henselian pointed criterion exact |
| Formal-point/separatedness supplier | Reduced O[[T]]; dual numbers | T↦π_K gives nonzero T; ε maps to 0; ∩(Tⁿ)=0 | Reducedness cannot be omitted |
| Disc purity supplier | Trivial G_m torsor on punctured O[[u]] | Extension is O[[u]] with identity section 1 | Extension separated from component reduction |
| Component-reduction supplier | Γ trivial; Γ=Z/2 with nontrivial field torsor | Trivial class maps to 1; nontrivial class cannot lie in kernel | Exact-sequence hypothesis explicit |
| Disc patching supplier | Trivial torsors with identity overlap | Two trivializations both restrict to 1; glued cocycle 1 | Patching independent of displays |
| Local-model representative supplier | GL₂ minuscule μ=(1,0) | Scheme generic flag P¹; reduced special fibre P¹; local dimension 1 | Distinct gap from immersion |
| Hodge-immersion supplier | Standard GL₂; repeated sum m=2 | Ranks 2→4, filtration rank 1→2, graph entries duplicated | Repeated representation and fixer conditions explicit |
| Schubert tangent supplier | P¹ and origin of xy=0 | Tangent ranks 1 and 2, respectively; two branch directions span 2 | Smooth-curve spanning, not smoothness asserted |
| Local-model tangent supplier | Restriction model with no Dᴴ | Split GL₂ special flag has tangent dimension 1, generated by t↦t | Minimal-stratum/all-point distinction retained |
| Rational absolute-Hodge supplier | Identity tensor of given A/O_K | Étale and de Rham comparisons send id to id; both trace 2g | No integral-model construction required |
| Cutting-tensor supplier | GL₂; endomorphism E₁₁ | Empty equations give GL₂; commutator equations give diagonal torus | Generic contract independent of later constructions |
| Ordinary-Levi supplier | G=GL₂,b=diag(p,1) | M(K₀)∩GL₂(W)=diag(W×,W×)=M(W) | Existing gap retained |

## Maintainer notes

No files outside the authorized package files, this report and scratch work were edited. No commits, pushes or GitHub writes were made. No subagents were used.

The supplier contracts remain declared gaps, not claims that suppliers already contain the requested extensions. The old compound slugs relative-bt-comparison-and-constants, scheme-local-model-geometry and parahoric-disc-purity-and-components were replaced by the explicit slugs in the README and design gaps. No Lean declaration name changed. Existing targets gained subsection locators §2.0 and §6.0; the horizontal-locus target is still §5.11. Consumers must retain the specified full-fixer, residue-field, integral-type and very-goodness hypotheses.

The immutable design ledger still contains the old E08 printing-error interpretation and older target prose outside gaps. The README and Suggested.lean carry the repaired mathematical statements; changing that ledger needs separate authorization.
