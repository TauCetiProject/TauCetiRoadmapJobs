# PELModuliPartII repair report

## REV-PKG-PELModuliPartII~4/F01 (P2) — applied

Discreteness plus freeness ⇒ Zariski local isomorphism → two quotient theorems with distinct hypotheses. §9.2 retains the theorem assuming (ii), constructs the profinitely separated discrete quotient as a formal algebraic space and étale torsor, and computes the intersecting-component Check. §9.5 proves representability through Θ. Its API, dependencies and Layer 9 Examples agree. No reverse dependency was added.

## REV-PKG-PELModuliPartII~4/F02 (P3) — applied

§4.4: LL22 Remark 2.68, p. 43 → p. 44. §5.7: HLSY23 §2.1, p. 11 → p. 10. The related sign citation in §5.5 now pinpoints HLSY23 §2.2, p. 11. Howard19 and RSZ21 citations and all mathematical hypotheses remain. The existing manifest entries record the corrected locators; no work receives a second key.

## Source verification and mathematical resolution

Both claims were verified independently against the supplied legal extractions.

| Claim | Evidence | Consequence |
| --- | --- | --- |
| Discreteness supplies local finiteness | RZ96 lines 2349–2352, Proposition 2.34, printed p. 64 | Only finitely many group elements can carry a bounded open into itself. |
| Torsion-freeness removes fixed points | RZ96 lines 2380–2385, Corollary 2.35, printed p. 65 | This supplies freeness, without the disjoint Zariski neighbourhoods of (ii). |
| Separation is an additional quotient hypothesis | RZ96 lines 2406–2411, Proposition 2.37, printed p. 66 | The theorem requires separation in the profinite topology and concludes formal algebraic-space representability. |
| Étale construction of that quotient | RZ96 lines 2412–2425 and 2432–2445, printed pp. 66–67 | Finite-index subgroups separate the finitely many relevant translates; finite free quotients give étale charts. Freeness gives the torsor identity. |
| Arithmetic hypotheses | RZ96 lines 8835–8862, proof of Theorem 6.23, printed pp. 289–290 | Discreteness and sufficiently small tame level give the groups used by Proposition 2.37. The README also supplies the missing profinite-separation argument by reduction of a faithful tame lattice realization modulo ℓ powers. |
| Scheme representability uses Θ | RZ96 lines 8862–8875, printed p. 290 | The source first constructs the algebraic space, then uses the quasi-finite uniformization map for scheme representability. Formal étaleness and properness on the reduced loci enter the isomorphism argument; they are not inferred from freeness. |
| Completed basic component | RZ96 lines 8965–8976, Theorem 6.30, printed p. 293 | A selected framing uniformizes Z′, open and closed in Z. The Hasse hypothesis identifies Z′ with Z. |
| Rank-three geometry | LZ22 lines 451–485, §§2.5–2.7, printed p. 12 | The type-three closed strata are irreducible curves; their intersection is the type-one stratum of the sum lattice, a point. |
| Absolute exotic comparison | LL22 lines 2203–2215 | Printed page 44 begins at line 2203, and Remark 2.68 is at lines 2214–2215. The ramified ground-field extension is not supplied by that remark. |
| Relative Krämer representability | HLSY23 lines 427–450 | The strict-relative definition and representability paragraph are on printed p. 10; p. 11 starts at line 454. |
| Krämer framing signs | HLSY23 lines 468–474 | The sign and odd/even distinction occur in §2.2 on printed p. 11; §5.5 now cites that passage directly. |
| Separate Krämer regularity input | Howard19 lines 245–255; RSZ21 lines 1716–1746, Theorem 6.7 and Remark 6.8, printed pp. 32–33 | The relative-dimension and natural-coefficient hypotheses are unchanged by the page corrections. |

No new source was needed. All 17 source records have legal cached texts and certified status. No missing-reference request was created. The LZ22 entry adds §§2.5–2.7 and §9.2 to its locators and uses; the RZ96 entry pinpoints the proof on pp. 289–290.

The first quotient theorem is a gluing theorem under explicit (i)–(ii). The second is the RZ quotient theorem for a framed space and a discrete, torsion-free, profinitely separated subgroup of its quasi-isogeny group. It therefore also covers the cyclic local example without asserting that this cyclic group is a global CM arithmetic subgroup. For arithmetic groups, reduction of a faithful ℓ-adic lattice realization modulo ℓ^r supplies finite quotients separating every nonidentity element. Under freeness, the relation is Γ×𝔐≅𝔐×_Q𝔐; étale local triviality gives the étale torsor. This does not imply a Zariski local isomorphism.

The route in §9.5 constructs Θ on the quotient sheaf, compares infinitesimal functors, and proves full faithfulness and essential surjectivity on the indicated completion. A sheaf isomorphism to that formal scheme gives representability. The alternative source route uses Θ to establish quasi-finite representability first. Neither route assumes the conclusion of §9.5 inside §9.2. The §9.5 Needs line explicitly includes the completed integral models and formal-completion supplier; §9.2 uses §9.1 for faithful arithmetic realizations.

The repaired pattern was searched throughout README, Suggested.lean and the manifest. The only freeness-to-Zariski-local inference was in §9.2 and its use in §9.5. Both API bullets, the level-map qualification, and Layer 9 Examples were reconciled. Consumers §§9.6–9.10 use the completed uniformization theorem of §9.5 and keep their statements. The page pattern also prompted the precise §5.5 locator above; no mathematical restriction was changed there.

## Computed adversarial pass

The table records concrete controls for all 75 numbered targets, the standing conventions, and each separate repaired assertion. These computations test hypotheses, normalizations, definitions and compatibility; they are not proofs of the deep roadmap theorems. Unchanged targets receive controls without edits. Local p>2, n>0, finite mixed-characteristic fields and nonzero coefficient DVRs exclude p=2, q=1, equal characteristic, inseparable quadratic extensions and zero coefficient rings from those local statements. They do not restrict the all-prime CM theorem. No Lean declaration or total-function encoding introduces additional junk inputs.

| Statement | Instances tried | Computed values / comparison | Result and change |
| --- | --- | --- | --- |
| Local fields and bases | p=3; ramified L/K with u²=3; k[ε]/ε² | q≥3; ū=−u; ε≠0 but ε²=0 | Local hypotheses and nonreduced bases retained. |
| Heights and relative dual convention | [K:ℚ_p]=2, n=1,3 | (relative height, absolute height, dimension)=(2,4,1),(6,12,3); rank-one Cartier dual dimension 3, relative dual dimension 1 | Carriers remain distinct. |
| Hermitian transpose convention | u²=3; h(x,y)=xȳ; skew form uxȳ | h(u,1)=u; H(u,1)=−u; diagonal norms 1=1; skew H(1,1)=u versus conjugation-only −u | Transposition preserves determinant/duals, not off-diagonal values. |
| Natural coefficient DVR | uv=ϖ; then ϖ=t² | Total dimension/embedding dimension 2/2 becomes 2/3 | Ramified extensions do not preserve the asserted regularity. |
| §0.1 strictness, duals, windows | O=ℤ_p; Lubin–Tate height one; twisted √p-action | Multiplicative (rank P,rank P/Q)=(1,1); étale (1,0); twisted Lie scalar −√p≠√p | Nilpotence and biformality have separate roles; height-one relative dual has dimension 0. |
| §0.2 formal representability | n=1; [K:ℚ_p]=2; n=2 | Structured tangent dimension 0 versus unstructured 1(4−1)=3; n=2 completed ring has one parameter | EL ambient, relative polarization and formal topology retained. |
| §0.3 principal hermitian module | n=3,[K:ℚ_p]=2; n=1 | Heights 6 and 12, dimension 3; Lie character a versus ā | Height and signature conventions agree. |
| §0.4 relative comparison | K₀=K; degree-two extension; signatures (1,0),(1,1),(1,2) | C=id in first case; (height,dimension)=(4,2)→relative (2,1) in degree two; μ-ordinary slopes (½,½), (0,0,1,1), (0,0,½,½,1,1) | Supersingular domain excludes the last two, retains rank one. |
| §0.5 framing equivariance | Noncentral g=diag(3,1/3) and off-diagonal h | ghg⁻¹ scales upper-right entry by 9, whereas h leaves it 1 | Framing identification must be retained. |
| §0.6 local Grassmannian | (r,s)=(0,2),(1,2); nonzero 2×2 Jordan block J | Tangent ranks 0,2; J²=0 and charpoly J=T² but J≠0 | Structural-action equation excludes the larger special fibre. |
| §0.7 signature conjugation | n=1,2 | (1,0)↔(0,1); twice conjugating gives (1,0); wrong source at n=2 adds (1,1)+(1,0)=(2,1) | Both source and target must be conjugated. |
| §1.1 exact framed functor | Heights 0 and 2; multipliers 1 and 2 | (height,multiplier)=(0,1) accepted; (2,1),(0,2) rejected | Exact marking and polarization both matter. |
| §1.2 smoothness | n=1,2,3 | Tangent dimensions 0,1,2 equal n−1 | Rank-one boundary and relative dimension agree. |
| §1.3 canonical CM source | Source and conjugate source | Both relative height 2, dimension 1; Lie characters a,ā; double conjugation a | Unique framed lift uses the chosen character. |
| §1.4 rank raising | n=1,2 | (1,0)+(0,1)=(1,1); (1,1)+(0,1)=(1,2); wrong sums (2,0),(2,1) | Product factor fixed correctly. |
| §1.5 special Hom and action | n=2; norm-one scalar −1; noncommuting matrices g,h | L-rank 2 versus relative height 4; (−1)bar(−1)=1; (gh)ρ=g(hρ) | Correct pairing rank and left action. |
| §1.6 diagonal graph | n=2,3,4 | Relative dimensions (0,1),(1,3),(2,5); arithmetic dimensions (1,2),(2,4),(3,6) | Only arithmetic dimensions have ratio one half. |
| §2.1 almost self-dual functor | q=3; principal polarization | Kernel orders 9 versus 1 | Principal object fails; killed-by-ϖ remains independent. |
| §2.2 semistable reduction | uv=ϖ and uv=t² | Dimension/embedding dimension 2/2 versus 2/3; special fibre has two branches | Natural coefficient restriction retained. |
| §2.3 split Hom complement | Norms of e and x₀ at ϖ=3 | h(x₀,x₀)=3 versus unit-vector norm 1 | The extension uses the valuation-one vector. |
| §2.4 auxiliary isogeny | n=2,q=3 | 9·9=81=(deg α)² gives deg α=9; 27²=729 fails; signatures (1,1)+(0,1)=(1,2) | Degree and signature agree. |
| §2.5 generic projections | q=3 | π₁ degree q+1=4 versus α degree q²=9 | Projection and isogeny degrees differ. |
| §3.1 exotic category | n=2,q=3; zero Lie operator | Height/dimension 4/2; exotic kernel 9 versus principal kernel 1; zero operator rank 0 fails spin | Wedge/determinant do not replace spin. |
| §3.2 symmetric principal factor | n=2,q=3 | σi(u) kernel 3²=9; σi(u²) kernel 3⁴=81 | One power of u is fixed by the kernel law. |
| §3.3 exotic framed space | Framing heights 0,2 and multipliers 1,2 | (0,1) accepted; (2,1),(0,2) fail separate laws | Exact height and polarization retained. |
| §3.4 exotic smoothness | n=2; base O_L versus O_K | Relative dimension 1; special ring k[[t]] versus k[u]/u²[[t]], with nilradical 0 versus (u) | Smoothness uses O_L. |
| §3.5 principal ramified source | Rank one,q=3 | Relative height/dimension 2/1; principal kernel 1 versus putative exotic kernel 3 | Rank-one source is separate. |
| §3.6 exotic Hom normalization | u²=3; normalized value h=1 | Unnormalized value 3, L-rank n versus height 2n | u⁻² cannot be omitted. |
| §3.7 components and strata | n=2; n=4 with types 4,2 | Component count 2; n=2 reduced dimension 0 versus formal relative dimension 1; full strata two ℙ¹ or two points, fixed-sign strata one ℙ¹ or one point | Full-stratum disconnectedness retained. |
| §4.1 absolute category | f=2,n=2 | Absolute height/dimension 8/4 versus relative 4/2; one distinguished and one banal block | Banal block is required. |
| §4.2 integral contraction | f=1; rational map p on a rank-one lattice | Empty contraction is identity; p is rationally invertible but integral cokernel has length 1 | Integral isomorphism is stronger than rational invertibility. |
| §4.3 relative functor | f=1,μ=1; f=2 | Empty product 1, pairing multiplier 1; height 4n→2n | Identity boundary and height conversion agree. |
| §4.4 exotic equivalence | f=1; ramified degree-two K | Unit/counit identity; ramified degree two has residue degree 1, not two unramified embedding blocks | Unramified hypothesis retained; locator p.44. |
| §4.5 principal source contraction | f=2 | Absolute source 4/2→relative 2/1; principal kernel remains 1 | Source is not even-rank exotic data. |
| §4.6 formal-space and Hom comparison | f=1 with identity framing | Maps are identity; a rational scalar u⁻¹ has valuation −1 on both corresponding lattices | Framing choices and integrality are tracked. |
| §5.1 Krämer filtration | n=3 | Subbundle/quotient ranks 2/1; wrong ranks 1/2 | Conjugate versus structural labels discriminate. |
| §5.2 source generator | u²=3,e integral | Norms h(e,e)=1; h(ue,ue)=−3, valuations 0 and 1 | Rational basis alone cannot normalize a principal source by a unit. |
| §5.3 Krämer arrows | Unit 2 versus nonunit u at p=3 | Unit multiplier valuation 0; u valuation 1; principal kernel 1 versus exotic kernel 3ⁿ | Unit-polarization law retained. |
| §5.4 trace and τ convention | Formal trace terms A=0,B=1 | Tr(u⁻¹δ(A+uB))=2δ; division by 2δ returns 1, division by δ returns 2 | Factor 2 and τ=ΠV⁻¹ retained. |
| §5.5 framing signs | Unit c of nontrivial norm class, n=2,3 | det(cH)=c²det H or c³det H; χ(c)²=1, χ(c)³=−1 | Odd/even distinction retained; pinpoint citation §2.2,p.11. |
| §5.6 crossing charts | n=2, x²=−1, p=3 versus p=2 | Two geometric roots; gradient 2x≠0 at p=3, zero at p=2; yz=u | Odd-prime crossing computation holds. |
| §5.7 regularity | n=2,3 over natural DVR | Relative dimensions 1,2; total dimensions 2,3; rank-two crossing embedding dimension 2 | Hypotheses unchanged; representability locator p.10. |
| §5.8 Krämer special Hom | n=2; source rescaling c=2 | L-rank 2 versus isocrystal rank 4; h→h/2 | Similarity factor recorded. |
| §5.9 evaluation comparison | e versus ue, u²=3 | Comparison norm factors 1 and −3 | Unit normalization works only for an integral generator. |
| §6.1 fake Drinfeld group | Scalars z=2 and g with c(g)=4 | c(z⁻¹g)=4/4=1; inverse sends (2,u) to (2,2u) | Fibre-product law and inverse agree. |
| §6.2 admissible CM type | Inert ground field ℚ_p(√p) with unramified quadratic extension | Pulled-back type has two embeddings with the same unramified label; mixed type has counts 1,1 on the two labels | The second type fails pullback from the unramified subfield. |
| §6.3 CM product comparison | Arrow multipliers (1,1) and (1,2) | Common scalar exists in first pair, not in second; two CM classes give two labelled fibres | Exact CM and common-scalar conventions remain separate. |
| §6.4 coefficient extension | Unramified degrees 2,3 over F_u | Compositum degree lcm(2,3)=6 and ramification index 1 | All local reflex contributions must be unramified. |
| §6.5 annihilator equation | Empty embedding set; Jordan block J | Empty product Q=1 forces Lie summand 0; J²=0, charpoly T², J≠0 | Annihilation is independent of multiplicity data. |
| §6.6 all-prime CM theorem | a=1,2,1/2 over ℤ; c=1+√2; dual numbers | Dual lattices Λ,½Λ,2Λ; last contradicts integrality. c²=3+2√2,c⁴=17+12√2; correct arrow pulls λ back to λc². Quotient x↦−εc has polynomial T+εc | Integral ideal and exact arrows retained; all-prime statement unchanged. |
| §6.7 lattice type | Inert unramified place,q=3, defect length one | Residue field of L has 9 elements, so kernel order 9 versus self-dual order 1 | Hermitian and alternating duals remain distinct. |
| §6.8 adjusted sign | Split algebra; opposite-CM exponent 1; n=3,r=1 positive-CM | Norm quotient trivial at split place; sign (−1)¹=−1; positive exponent n−r=2 gives +1 | Source CM convention is essential. |
| §7.1 localized moduli | F⁺=ℚ(√3),F=F⁺(i),p=3 | Ground ramification index 2; −1=2 nonsquare in 𝔽₃, hence CM extension inert unramified quadratic | Ground ramification alone does not force inversion. |
| §7.2 smoothness and product comparison | n=2,3; same ramified ground field | Local dimensions 1,2; product order discriminant divisible by 3 although CM local type is unramified | Bad-prime comparison gap remains necessary. |
| §7.3 semi-global model | a prime to p; q=3 | Local CM polarization kernel 1; almost self-dual target kernel 9 | Both factors and other-place clauses retained. |
| §7.4 exotic global model | n=2,f=2 | A factor height/dimension 8/4; CM A₀ factor 4/2 | Exotic conditions belong to A. |
| §7.5 global Krämer enhancement | n=3 | Global subbundle rank 2 structural; local rank 2 conjugate after relabelling; quotient rank 1 | Conjugation transports labels consistently. |
| §7.6 local-model diagram | n=3,torsor dimension d; uv=t² | Both smooth-chart dimensions 2+d; quotient dimension 2. Crossing dimension/embedding dimension 2/3 | Full smooth stabilizer gap retained. |
| §7.7 exotic global geometry | n=2,f=2; F⁺=ℚ,n=4 | Moduli relative dimension 1 versus abelian dimension 4; rational trace form rank 8 and indefinite | Compact hypothesis cannot be dropped from projectivity. |
| §7.8 wedge/Krämer comparison | n=2,ϖ=u² | Wedge uv=t² has dimension/embedding dimension 2/3; Krämer yz=u has 2/2 | Natural reflex coefficient fields give different regularity. |
| §7.9 local types | Self-dual versus defect one at q=3 | Polarization kernel orders 1 and 9; both relative dimensions n−1 | Ramified coefficient extension gives flatness, not the claimed regularity. |
| §7.10 integral gluing | Almost self-dual chart after e=1 or 2 | uv=t versus uv=t² has embedding dimension 2 versus 3, total dimension 2 in both | Local coefficient restrictions remain in the gluing theorem. |
| §8.1 neat smooth moduli | N=1,3; multipliers (1,2) | Dimensions 0,2; common scalar equation 1=2 fails; N=3 period Hom has rank 3 before correction versus required line rank 1 | Both neat levels and corrected period line retained. |
| §8.2 neat almost self-dual moduli | N=1,p=3 | Relative dimension 0; kernel order 9 versus principal 1 | Zero-dimensional boundary has no crossing. |
| §8.3 local equations | N=1,2; ramified e=2 | W(k) has dimension/embedding dimension 1/1; crossing has 2/2; ramified crossing 2/3 | Semistability is over unramified coefficients. |
| §8.4 generic comparison | N=2; two CM classes | Indefinite signature (1,1) differs from definite (2,0); defect-one quotient order p² versus self-dual 1; class count 2 | Uniformization datum and CM factor retained. |
| §8.5 level and Hecke maps | Identity and noncommuting g,h | η∘1=η; (η∘g)∘h=η∘(gh); gh≠hg for diagonal/unipotent matrices | Order and tame-level qualifications retained. |
| §8.6 global isogeny | q=3 | (deg α_v₀)²=9·9=81, so deg α_v₀=9; degree 3 would give 9≠81 | Away-p degree factors are not discarded. |
| §8.7 tangent and properness | N=1,2,3 | Tangent ranks 0,1,2=1·(N−1); CM tangent rank 0. Split signature-(1,1) form diag(1,−1) has isotropic vector (1,1), norm 0 | Projectivity retains anisotropy/properness. |
| §9.1 basic rational comparison | Supersingular versus ordinary elliptic curve; opposite CM actions | Supersingular Hom dimensions 4=4; ordinary End dimension 2 versus Tate End 4; opposite CM geometric Hom 0 versus ℓ-adic dimension 2, p-slopes 0 and 1 | Common-slope hypothesis is indispensable. |
| §9.2 first quotient theorem | Γ=1; empty formal scheme; ℤ translating copies | One sheet; empty×Γ=empty; U∩mU=∅ for every m≠0 in one copy | Explicit (ii) gives Zariski local isomorphism; no free-action substitute. |
| §9.2 nonabelian control | S₃ acts by left translation on six copies; H=⟨(12)⟩ | Stabilizer order 1; quotient has one copy; H quotient has three copies | Gluing and level degree do not require commutativity or normality. |
| §9.2 dual lattices | H rows (0,1,0),(1,0,0),(0,0,3) | det H=−3; exponent vectors Λ₊=(1,0,0),Λ₋=(0,1,0),Σ=(0,0,0); dual exponents (0,−1,−1),(−1,0,−1),(0,0,−1); lengths 3,3,1 | All satisfy 3Λ♯⊆Λ⊆Λ♯; added README Check. |
| §9.2 strata | Types 3,3,1 | Dimensions 1,1,0; Σ=Λ₊+Λ₋; C₊∩C₋=V(Σ) has one point | Added intersecting-component witness. |
| §9.2 isometry and discreteness | g=diag(3,1/3,1), powers m=0,1,2 | g*Hg=H exactly; gΛ₋=Λ₊; valuations (0,0,0),(1,−1,0),(2,−2,0) | Infinite cyclic, discrete and torsion-free. |
| §9.2 profinite separation | m=1,2 in faithful tame ℓ=2 realization | 3−1=2≠0 mod 4; 3²−1=8≠0 mod 16. Generally g^m maps nontrivially to ℤ/(abs(m)+1) for m≠0 | Residual finiteness verified, added to hypotheses and route. |
| §9.2 failure of (ii) | Any open U through x=C₊∩C₋ | η₊,η₋∈U and gη₋=η₊, hence η₊∈U∩gU; intersection nonempty versus (ii)'s empty set | Freeness does not give disjoint neighbourhoods. |
| §9.2 torsor relation | Free orbit; ineffective {±1} | Free relation has one γ for each related pair; ineffective action has two γ for the same pair, but sheaf quotient map has degree 1 | Étale torsor assertion requires freeness; stack remembers the order-two stabilizer. |
| §9.2 finite level | mℤ⊂ℤ,m=1,2 | Quotient cover degrees 1,2 | API restricts to sufficiently small tame levels. |
| §9.3 nearby datum | Switch invariants at distinguished real and finite places | Two signs multiply (−1)·(−1)=1; only one switch would multiply product by −1 | Global invariant product and framing choice retained. |
| §9.4 full local product | One versus two CM p-cosets; no other p-place | Discrete factor cardinalities 1 or 2; empty other-place product has cardinality 1 | CM factor cannot be erased by connectedness of N. |
| §9.5 Θ and framing | g=diag(3,1/3); two framing classes | gg⁻¹=id; g²=diag(9,1/9)≠id; one chosen class covers 1 of 2 | Θ uses quotient sheaf; scheme representability is its consequence. |
| §9.5 deformation comparison | Spec k→Spec(k[ε]/ε²) | One geometric point on each side; cotangent/tangent dimensions 0 versus 1; ε maps to 0 | Added nilpotent-base Check; geometric points alone do not prove uniformization. |
| §9.5 CM factor and arithmetic route | Two CM quotient classes; intersecting-component control | Two labelled fibres versus one after deleting class factor; η₊∈U∩gU remains | APIs keep all factors and obtain representability through Θ, without (ii). |
| §9.6 exotic uniformization | n=2; val_u(ϖ)=1 or 0 | val(u²/ϖ)=0 or 1; dual lattice Λ or (u²/ϖ)⁻¹Λ | Relative/global forms agree up to the stated unit. |
| §9.7 inert uniformization | n=1 principal case; ramified ground field | Relative distinguished dimension 0; degree-two ground field still has relative height 2, absolute height 4 | Principal comparison does not extend the almost self-dual theorem's ground-field range. |
| §9.8 CM partition | Two CM classes | Completion has two labelled fibres; a chosen fibre contributes one | Product and fibrewise statements agree. |
| §9.9 Krämer completion | n=2, unramified coefficient extension | Subbundle/quotient ranks 1/1; yz=u has dimension/embedding dimension 2/2 | Filtration comparison uses Θ, not regularity to construct Θ. |
| §9.10 mixed completion | q=3 | Local α degree 9; generic π₁ degree 4; π₂ exceptional centre dimension 0 | Generic comparison and integral resolution remain different assertions. |

The matrix and lattice exponent calculations were also recomputed using exact rational arithmetic. The resulting g*Hg was exactly H; dual lengths were 3,3,1 and all three vertex inclusions held. The repaired sections retain at least three discriminating Checks. No scalar inverse is used without a nonzero field element, and the new finite-index level control explicitly has m≥1. Ranks zero and one were considered only where the statements admit them. The empty quotient causes no exception. The nonreduced test detects a comparison that is bijective only on geometric points.

## Ownership, supplier and pin checks

Shape comparators were read on content main: `TauCetiRoadmap/SchemeAndStackFoundations/README.md` and `TauCetiRoadmap/ReductiveGroupsPartII/README.md`. The existing mathematical layers and numbering were preserved.

Ownership was searched by object in main and the open heads using `roadmaps grep` and `roadmaps show`, and in the board packages using `rg`. Searches for formal algebraic spaces and discrete quotients found no second owner of this framed quotient theorem. SchemeAndStackFoundations Layer 1 owns algebraic spaces, finite quotient/descent foundations and torsors; AdicSpacesPartIII Layer F0 owns formal schemes and completions. §9.2 owns their application to framed spaces and arithmetic quasi-isogeny actions. This repairs an existing target, without creating another foundational carrier or supplier target.

The scopes of the five closest heads were read: IgusaVarietiesAndTorsionConcentration, HilbertModularVarietiesAndShimuraCurves, SelmerIwasawaCohomologyPartII, PELModuli, and FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII. Igusa §0.27 supplies the unstructured framed functor and its stated unramified PEL specialization; it does not supply this quotient theorem. PELModuli supplies its good-prime moduli and displays; the extension here keeps its boundary. The Hilbert/quaternionic specializations, tensor-display continuation, and downstream incidence/cycle geometry do not own this quotient construction. No head changes this roadmap or drops its cited ids according to the supplied overlap inventory. No ownership against an unavailable pull-request file is asserted.

Every cross-roadmap section in Exact supplier contracts was matched to its heading in the supplied main/head copies. The downstream Selmer sections were also matched. In particular:

- AbelianSchemesAndArithmeticModuli §§A4.8–A4.9 give polarized effectivity and Serre–Tate over nilpotent thickenings, with complete local bases treated as formal systems before algebraization.
- AdicSpacesPartIII Layer F0, especially F0.5, supplies completion along a closed subset; §R2.9 supplies the named generic-fibre setting.
- SchemeAndStackFoundations Layer 1 supplies algebraic spaces and torsors, with formal carriers coming from AdicSpacesPartIII.
- IgusaVarietiesAndTorsionConcentration §§0.27,0.31 have the advertised framed and split-level scopes.
- GeometryOfNumbersAndQuadraticArithmetic §§2.7,2.9 retain their conjugate-first convention, transported by the README's transpose law.
- The three pre-existing projectivity/stabilizer/local-global contracts and the display contract remain explicit gaps. No new supplier gap or merge-order decision is needed for either finding.

The pins read from the content manifest are Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e` and Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`; content main is `ff8fb0c5acbd1ab7e74063d3b494346d44b63634`. Relevant native declarations were opened at those pins, not on newer versions:

| Declaration | Repository-relative file and line | Scope |
| --- | --- | --- |
| LinearMap.charpoly; charpoly_monic; charpoly_natDegree | `Mathlib/LinearAlgebra/Charpoly/Basic.lean:44`, `:72`, `:76` | Finite free endomorphisms; degree equality retains StrongRankCondition. |
| Matrix.charpoly | `Mathlib/LinearAlgebra/Matrix/Charpoly/Basic.lean:140` | Matrix characteristic polynomial; no zero-operator consequence from T². |
| Module.Grassmannian | `Mathlib/RingTheory/Grassmannian.lean:66` | Finite projective quotient of fixed rank; no representing scheme in the definition. |
| WittVector; WittVector.Isocrystal | `Mathlib/RingTheory/WittVector/Defs.lean:52`; `Mathlib/RingTheory/WittVector/Isocrystal.lean:112` | The latter is an abstract module with semilinear Frobenius automorphism; it does not give abelian-variety Dieudonné realization. |
| IsRegularLocalRing | `Mathlib/RingTheory/RegularLocalRing/Defs.lean:52` | Local noetherian ring and embedding-dimension equality. |
| Scheme; Flat; Smooth; SmoothOfRelativeDimension | `Mathlib/AlgebraicGeometry/Scheme.lean:40`; `Mathlib/AlgebraicGeometry/Morphisms/Flat.lean:42`; `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:59`, `:127` | Scheme morphisms; these do not supply a category of formal schemes. |
| TauCeti.AlgebraicGeometry.AbelianVariety | `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95` | Field parameter, proper geometrically integral group scheme, not an abelian scheme with PEL structure over a base. |
| TauCeti.FormalScheme.Spf.carrier; structureSheaf | `TauCeti/AlgebraicGeometry/FormalScheme/Spf/Carrier.lean:73`; `TauCeti/AlgebraicGeometry/FormalScheme/Spf/StructureSheaf.lean:262` | Open primes and affine structure sheaf for an adic ideal, not formal schemes and their discrete quotients. |

Object searches at the pins found no formal-scheme category, structured p-divisible-group carrier, formal algebraic-space quotient, or abelian-scheme Dieudonné realization supplying the changed targets. The empty acceptance file therefore remains correct: the uniformization headlines still lack their native carriers. No added theorem, renamed declaration, sorry'd data, weakened substitute, or padding is needed.

## Required checks and exact outcomes

- Prescribed elaboration of `packages/PELModuliPartII/Suggested.lean`, run from the content checkout: **exit 0; stdout empty; stderr empty; no warnings**. There is only `import Mathlib`; no Tau Ceti object-file build was needed. No Lean process remains running.
- Mechanical declaration/signature audit: **0 named declarations, 0 required `#check @name` probes**. There are no elaborated signatures or section binders to compare; the module/README headline inventory and missing-carrier explanation agree. No signature changed. No scratch declaration was invented to pad this audit.
- Dependency check, with the prescribed name, order, movable and content arguments: **exit 0**, exact output:

```text
depcheck: 236 roadmaps, 2145 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. §9.2 has no dependency on §9.5.

- Citation resolution after edits: **exit 0**; “Cross-roadmap citations found nowhere: None”; “Lean names found nowhere: None”. The tool also reported: “Lean names outside TauCetiRoadmap were not checked: no pinned Lake packages on this host.” This limitation was addressed by opening the supplied pinned files directly, as recorded above; the resolver's notice was not treated as evidence of a missing declaration.
- `git diff --check`: **exit 0; no output**. Metadata and sources TOML parse successfully; the source manifest has 17 entries and retains schema `tauceti-roadmap-sources/v1`.
- Formatting gate failure `tex=1`: replaced the unformatted fibre-product subscript expression in the §9.2 route with prose naming the same fibre product and its identification with Γ_g×𝔐. The mathematical assertion is unchanged. No gate workaround, tool change or order change was made.

Only `packages/PELModuliPartII/README.md`, `packages/PELModuliPartII/sources.toml` and this report changed. `Suggested.lean`, metadata and the design plan are unchanged. No section id or Lean name cited by another roadmap was removed or renamed. The uniformization end theorem and downstream interfaces are unchanged; only the quotient construction and its proof dependencies were corrected. No commit, push, pull-request edit or external message was made.
