# Repair report: finite flat groups and integral p-adic Hodge theory, Part II

## F01 (P1) — applied

Implicit supplier translation labels → t_here^λ=t_RG^(−λ), Adm_here(μ)=Adm_RG(dom(−μ)), with Frobenius, Bruhat order and length transported on the same elements. Updated the exact contract, Layer 6 convention, §§6.0–6.1 and their Checks; §§6.2–6.6 inherit that convention. Positive Kottwitz and Hodge normalizations are preserved. Added G_m, GL₂, nontrivial Frobenius and trivial-group controls.

## F02 (P2) — applied

New normal-section supplier gap → the existing FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.27 bounded-function theorem, with the Spf R specialization in the exact contract. Deleted only that top-level gap entry. Updated §2.6, the Layer 2 dependency summary and §3.5’s Needs. Retained Witt-coordinate division and added s=1 alongside the ramified x/p control. Extended the existing deJong95 locator.

## F03 (P2) — applied

Ambient Lie(G)-valued connection → ambient Lie(GL(D))-valued connection and a separate Lie(G)-valued pullback on R_G. Updated §§5.10–5.12, retaining Frobenius stability after rationalization. Recomputed the two-term counterexample, horizontal tensor and ideal (h)=(t). The restricted connection supplies σ_a|A_G=s_a⊗1; corrected the resulting quotient arrow to A′_G→A_G and retained the tangent argument for equality.

## Evidence and mathematical verification

All three findings concern mathematical interfaces, and all three are correct. The review's suggested repairs require no change of scope or additional supplier target.

| Finding | Evidence read | Conclusion |
| --- | --- | --- |
| F01 | `TauCetiRoadmap/ReductiveGroupsPartII/README.md`, §RG2.4.3, lines 5994–6021 and 6141–6164, at new-roadmap head 1383569 | The supplier labels the element of Kottwitz class −λ by λ; its split representative is λ(p)⁻¹. The endpoint set for this package's positive μ is consequently the supplier endpoint set for −μ. |
| F01 | KZ25 line 336, Lemma 2.1.7; KZ25 line 369, Lemma 2.1.9; KZ25 lines 389–390, admissible endpoints; KZ25 lines 526–544, Proposition 2.3.3 and proof; KZ25 lines 1133–1176, ordinary application | The source's ordinary normalization uses positive Frobenius multipliers. Its Hodge local model has inverse cocharacter, while σ⁻¹(b) has the positive admissible index. These are separate inversions. |
| F02 | `TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheory/README.md`, §R07.2.27, lines 4030–4038 and 4074–4099, at new-roadmap head 34f4657 | FS_O permits formal variables and maximal-ideal topologies. Its bounded-function target includes the isomorphism and its injectivity; it covers the removed contract. |
| F02 | deJong95 lines 2831–2838, 2952–2967 and 2988–3016; KP18 lines 2176–2184 | Spf R belongs to FS_O: its reduction is a finite residue extension, flatness is assumed, and a normal complete Noetherian local ring gives the formally normal affine formal scheme. Rational s is analytic; finite-extension rigid points are the continuous local O-maps to O_K. Boundedness is exactly integrality at those maps. The Witt-coordinate application remains this package's work. |
| F03 | Kisin17 lines 4253–4258, Errata E.1, p.96 | The Frobenius-conjugation stability correction concerns the iteration, and the Lie(G) assertion explicitly concerns the connection on R_G. No ambient Lie(G) assertion follows. |
| F03 | Kisin17 lines 4263–4274, Errata E.2 and Lemma E.3, p.96 | The transported tensors become constant after restriction to A_G. This gives a closed inclusion of formal spectra and a quotient map A′_G→A_G. The source then uses regularity and the dual-number tangent calculation to obtain equality. |

The adapter relabels elements; it does not apply inversion to all affine Weyl elements or claim that negation preserves the old labelled Bruhat order. The base alcove, parahorics, actual Frobenius and actual Bruhat relations remain the supplier's. In particular the endpoints t_RG^(−uμ) equal t_here^(uμ), including their torsion classes. Dominantization changes only the finite Weyl orbit used to specify the supplier's admissible set.

For the connection example put E=E₂₁ and write N=nE. Since E²=0, horizontality reduces to n+1=t^(p−1)n(tᵖ). The series n=−Σ_(r≥0)t^(pʳ−1) satisfies this identity coefficient by coefficient. With h=Σ_(r≥0)t^(pʳ)/pʳ, one has h′=−n and h=t+h(tᵖ)/p. Therefore E₁₁+hE is horizontal and Frobenius invariant, starts at E₁₁, and preserves Re₁ exactly when h=0. Its coefficient of t is 1, so h/t is a unit in K₀[[t]] and the closed ideal is exactly (t), including on nonreduced formal test algebras. This also verifies that no integral convergence of h is being asserted: h belongs to the rational formal completion.

## Computed adversarial pass

The following rows record substitutions and computed values, rather than claiming that finite examples prove the general theorems. The full numbered-target list is retained, with additional rows for the changed contracts, conventions and connection assertions. The final column records the result and any change. Unless a boundary is explicitly tested, p>2 and all hypotheses of the named target remain in force. W=W(k), ε²=0, and E_ij denotes a matrix unit. A retained row means no edit was needed for that computation.

| Statement | Instances tried | Values on the two sides | Result; change |
| --- | --- | --- | --- |
| Standing prime and coefficient conventions | p=3, p=2, a field of characteristic p | 3>2; 2>2 is false; p=0 in the field prevents a mixed-characteristic DVR | Required exclusions retained. |
| Height, dimension and Hodge quotient | (h,d)=(0,0),(1,0),(1,1),(2,1) | Submodule/quotient ranks (0,0),(0,1),(1,0),(1,1); each sums to h | Retained; no truncated-subtraction interpretation. |
| Cartier dual and twist −1 | Étale and multiplicative lines | F=1,p; linear dual gives 1,p⁻¹; twist −1 gives p,1 | Retained. |
| Inverse Hodge/local-model convention | Ordered ordinary pair | μ₀(z)=diag(z⁻¹,1); σ(μ₀⁻¹)(p)=diag(p,1); Fil¹=ke₁ | Retained; separate from affine translation labels. |
| Mixed-tensor variance | c=1+εE₂₁; tensors id,E₁₁ | c id c⁻¹=id; cE₁₁c⁻¹=E₁₁+εE₂₁ | Retained; inverse dual is necessary. |
| First-order coefficient quotient | p=aπ_E² | Quotients O_E/(π_E²) and O_E/(π_E)=k; π_E≠0 and π_E=0 respectively | Retained; both ends use the same further quotient. |
| Contravariant right action | g=[[1,1],[0,1]], h=[[1,0],[1,1]] | gh=[[2,1],[1,1]], hg=[[1,1],[1,2]]; T(q_h∘q_g)=(gh)ᵗ | Retained; noncommutative control. |
| Positive Kottwitz and dual lattice | g=1,p,p⁻¹ | L,pL,p⁻¹L have κ=0,1,−1; duals T,p⁻¹T,pT | Retained; rational nonunits remain allowed. |
| §0.1 Zink coefficients | R=k; square-zero ε; R=W(k) | Kernel of reduction is 0 for k; constant nonzero ε coordinates do not tend to 0, finite support does; no characteristic-p section into W(k) | Retained. |
| §0.2 perfect-ring Dieudonné category | R=F_p, F=1,p; R=F_p×F_p | V=p,1 and FV=p; component ranks (0,1) remain projective | Retained; no global free-rank condition. |
| §0.3 p-frame and strict map | I=(p), φ(u)=uᵖ; unit-rescaled φ₁ | φ₁(pu)=uᵖ, pφ₁(pu)=puᵖ=φ(pu); a nontrivial rescaling changes φ₁ | Retained. |
| §0.4 logarithmic coordinates | b=0; b=kε; x=ε,y=−ε | Î_B⊕0=Î_B; φ₁([ε]_log)=0; [ε]+[−ε]=0 | Retained. |
| §0.5 height-one interface | M=Z_p, F=p or 1; M=0 | V=pF⁻¹=1 or p; FV=p in both; unique zero maps on 0 | Retained. |
| §0.6 normal pair | d=0,h; h=2,d=1 | M₁=IM,M; e₁↦e₂ has lower-left entry 1∉I | Retained; zero ring gives zero quotient. |
| §0.7 relative frame | Identity thickening; k[ε]→k | Relative ideal equals absolute ideal; added logarithmic ε has φ₁=0 | Retained. |
| §0.8 tilde module and map | Upper-right b=1; lower-left C=Vε | Tilde coefficients pφ(1)=p and φ₁(Vε)=ε | Retained; neither missing p nor undivided Frobenius works. |
| §0.9 strict base change | Identity map; two successive quotient maps | Coordinate blocks remain (φ(A),pφ(B),φ₁(C),φ(D)); iterated and direct coefficients coincide | Retained; filtration uses extended image. |
| §0.10 map j | Rank one, d=0,1; reduction modulo p | j=p,1; p:W→W becomes 0:k→k with nonzero source | Retained; image identification needs p-torsion-freeness. |
| §0.11 contravariant display | Étale, multiplicative and their sum | (Φ,M₁)=(σ,pM),(pσ,M); sum has (h,d)=(2,1) | Retained. |
| §0.12 display base change | R→R/m³→R/m²; identity | Both reductions give Ψ modulo m²; identity gives Ψ | Retained. |
| §0.13 group/display anti-equivalence | Zero group; ordinary product | Modules 0 and W²; (F,V)=((p,1),(1,p)) componentwise | Retained; duality exchanges components. |
| §1.1 marked filtration ring | (h,d)=(1,0),(1,1),(2,1) | d(h−d)=0,0,1; rings O_F,O_F,O_F[[t]] | Retained. |
| §1.2 enlarged ideal factorization | I=I′; three nested ideals | Comparison 1; composite 1·1=1 in a fixed normal decomposition | Retained. |
| §1.3 canonical c | Constant pair; graph Vε | c=1 and 1+εE₂₁; diag(1,p)c loses ε after p=0 | Retained; commuting square does not determine c. |
| §1.4 rational section | Constant family; A=O_K | Section is residual identity; lattice element pⁿ is in pⁿŴ(A), while 1 is absent for n>0 | Retained; localization ideal (p)=1 is not the lattice topology. |
| §1.5 first-order constancy | c=1+εE₂₁, Ψ₀=1 | Ψ=c⁻¹=1−εE₂₁ gives Ψc=1; Ψ=1 instead gives c≠1 | Retained. |
| §1.6 tensor-preserving rational section | Constant id tensor; lattices W and pW | id maps to id; W[1/p]=pW[1/p] but W≠pW | Retained; rational preservation does not identify lattices. |
| §1.7 crystalline deformation | Dual-number PD thickening, h=2,d=1 | Lifts of ke₁ are graphs e₁+aεe₂, a∈k; identity thickening has one specified lift | Retained. |
| §1.8 universal rigid display | Height one; ordinary height two | Tangent parameter counts 0 and 1; rigid equation Ψc=Ψ₀ | Retained. |
| §2.0 rational centralizer | G_m,b=p; GL₂,b=diag(p,1); trivial group | J_b(Q_p)=Q_p×; GL₂ off-diagonal valuation equations v(x)+1=v(x) force x=0; trivial J={1} | Retained. |
| §2.1 integral tensor datum | Empty family; E₁₁; dual evaluation | Fixers GL₂ and diagonal torus; evaluation id remains id | Retained; full fixer is scheme-theoretic. |
| §2.2 filtration lattice | Fil¹=0,D,We₁ | Lattices E𝔖^h,𝔖^h,𝔖e₁⊕E𝔖e₂ | Retained; replacing E by p has a different u=π quotient. |
| §2.3 completed local-model ring | GL₂,d=1; ramified reflex DVR | Ring O_Ĕ[[t]], filtration span(e₁+te₂); p=aπ_E² retains ramification index 2 | Retained. |
| §2.4 filtration tensor torsor | Empty family; diagonal projector and split filtration | T=GL_h; E₁₁ preserves 𝔖e₁⊕E𝔖e₂ and supplies its diagonal frame | Retained; purity/component hypotheses retained. |
| §2.5 tilde comparison | E=u−p, u↦[π] | w₀(φ(E([π])))=πᵖ−p=p(π^(p−1)−1); quotient by p is a unit and the original is not | Retained. |
| §2.6 integral tensor division | f=p,1; s=x/p,1 | f/p=1 or 1/p∉O_K; at π²=p, v(π/p)=−1, while v(1)=0 and norm=1 | Import Part I bounded functions; revised Check. |
| §2.7 first-order horizontality | t=id,E₁₁; c=1+εE₂₁ | Transport id=id; transport E₁₁=E₁₁+εE₂₁≠E₁₁ | Retained. |
| §2.8 parahoric display | GL₂; rationalization modulo p | Ordinary display of (h,d)=(2,1); coefficient ε in c survives although diag(1,p)c has lost it | Retained; Ψ is integral torsor data. |
| §2.9 adapted deformation | Empty tensors; multiplicative line | No tensor equations; Fil¹=D, F=pσ and weight 1 | Retained; rational-only frames do not satisfy integral type. |
| §2.10 very-goodness | Empty family; c failing E₁₁ | GL condition has no tensor equations; commutator εE₂₁≠0 rejects torus compatibility | Retained. |
| §2.11 cutting-family independence | Diagonal torus; E₁₁ and E₂₂=1−E₁₁ | cE₁₁=E₁₁c implies cE₂₂=E₂₂c; failure for one gives opposite failure for the other | Retained. |
| §2.12 unramified descent | W(F_p)→W(F_p²); error εE₂₁ | Zero error stays 0; nonzero ε stays nonzero under faithful scalar extension | Retained. |
| §2.13 chain representation | One lattice; Λ_i=p^(−i)W² | Total module Λ; Λ_i∨=Λ_(−i), so inverse-index pair has dual index −i | Retained. |
| §3.1 curve lattice | Constant rank-one filtrations 0,1 | Curve lattices pS,S; quotient ranks 1,0 | Retained. |
| §3.2 endomorphism naturality | id; projection E₁₁ on split pair | Induced tilde maps id and E₁₁; c commuting with the pair projection gives commutator 0 | Retained. |
| §3.3 curvewise c | Constant curve; split curve preserving a projection | First jet 0 has c=1; compatible block transport has [c,E₁₁]=0 | Retained; no assertion every tangent lifts. |
| §3.4 product | Two G_m weight-one lines | Product fixer diagonal G_m², two rank-one flag points, tangent dimensions 0+0=0 | Retained; no diagonal-unrelated-sum assertion. |
| §3.5 neutral closure | Hyperbolic GO₂, torus and swap matrix | Torus det=similitude ab; swap det=−1, similitude 1; quotient by neutral component has two classes | Retained geometry; replaced normal-section Needs by Part I. |
| §3.6 summand descent | Two equal rank-one blocks | Projection diag(1,0) cuts tilde module into ranks 1+1; first-block c is 1 | Retained. |
| §3.7 curve-spanned tangents | Smooth GL₂ flag chart at 0 | t↦u has derivative 1 spanning k; t↦u² has derivative 0 and alone does not span | Retained. |
| §3.8 endomorphism criterion | Projector E₁₁ in GL₂ | Centralizer is diagonal torus; preserving projector forces lower-left and upper-right entries 0 | Retained. |
| §3.9 arithmetic curves | O_K with π²=p, map t↦π | Relative cotangent modulo π² has nonzero class π; map t↦π² has zero first jet | Retained; requires the actual tangent-span hypothesis. |
| §3.10 isomorphic copies | Rank-one representation repeated r=1,2 | c=1 and diag(1,1); total ranks 1,2 and same tensor compatibility | Retained. |
| §3.11 standard wild type A | m=1,D=K; index(D)=p | Split chain O_K; wild p-index satisfies p∣ind(D), excluded by NE but included in this standard-representation theorem | Retained; no good-prime shortcut. |
| §3.12 chain segment | Λ_i=p^(−i)W, periods r and 2r | Multiplication by p identifies repeated lattices; ranks r and 2r differ but projection/inclusion composites on old segment equal 1 | Retained. |
| §3.13 nonexceptional existence | Split GL₂ with p=3; wild p-index factor | π₁(SL₂)=0 has order 1 prime to 3; wild factor gives p∣ind(D) and fails NE | Retained exact hypotheses. |
| §3.14 Dᴴ PEL pairing | Quaternion i²=−1,j²=3; split alternating plane | Balanced i⊗1 and 1⊗i both pair to Trd(−1)=−2; wrong order gives +2 and −2; split reversed values 1,−1 | Retained. |
| §3.15 type-A enlargement | D=K,m=1; Λ_i=p^(−i)We | Pairing ((1,0),(0,1))=−1, reverse 1; inverse-index pair p^(−i)W² has dual p^iW²; same-index terms are incomparable | Retained. |
| §3.16 trace/different duality | π²=p,δ=2π; M=πO_L e⊕O_L f | M^Γ=pZ_pe⊕Z_pf; both dual formulas give Z_pe⊕p⁻¹Z_pf; omitting δ⁻¹ gives Z_p² | Retained. |
| §3.17 Dᴴ scalar enlargement | Scalar pair a,b; l∈L⊂D; s=0 | Similitude ab; l(xd)=(lx)d; s=0 gives zero, nonfaithful representation | Retained s≥1 and balanced scalar hypotheses. |
| §4.1 punctured exactness | Cokernel W[[u]]/(p,u) | Restriction to D(p) and D(u) is 0, although closed-point module is k≠0 | Retained; no whole-disc exactness inference. |
| §4.2 Kottwitz kernel | Rank-one crystalline character, k algebraically closed | Image in Z_p× has valuation 0; element p has valuation 1 and cannot be an integral Galois image | Retained. |
| §4.3 tensor frame | GL₁ lattice; disconnected fixer | Free rank-one module has frame 1; two component classes do not become a connected torsor by forgetting the quotient | Retained. |
| §4.4 integral comparison tensors | Étale, multiplicative; evaluation tensor | L=Z_p,Z_p(−1); F=1,p; tensor id specializes to id | Retained variance. |
| §4.5 filtration lift | Ordinary split pair; ramified field of definition | Fil¹=O_K e₁ reduces to ke₁; a coordinate requiring π∉K₀ cannot define a K₀-cocharacter in that frame | Retained field-of-definition condition. |
| §4.6 rigid tensor section | Empty tensors; c=1+εE₂₁ | Ψ=Ψ₀c⁻¹ gives Ψc=Ψ₀; if torus tensors are fixed but c is not, this Ψ is outside the torus | Retained very-goodness hypothesis. |
| §4.7 Hoff comparison | Split constant pair; incompatible projector c | c=1 preserves all tensors; [1+εE₂₁,E₁₁]=εE₂₁≠0 fails both formulations | Retained inverse weight convention. |
| §4.8 marked DVR tangent | R_E=O_K[[t]], ξ(t)=0 | Lifts t↦aε correspond to a∈O_K; sum a+b gives sum of tangent classes | Retained. |
| §4.9 interpolation | Endpoint values a,b with b−a∈πO_K | f(T)=a+(b−a)T/π gives f(0)=a,f(π)=b; (0,1) has residue mismatch and is excluded | Retained. |
| §4.10 four tangent conditions | GL₂ without tensors; diagonal torus | Tangent ranks dim(GL₂/P)=1 and dim(T/T)=0; multiplying ε by pⁿ is injective over O_K | Retained; equal rank alone does not imply integral surjectivity. |
| §4.11 adapted factorization | R_E=W[[t]],R_G=W,t↦0 or π | First map kills ideal (t); second sends it to π≠0 and fails torus adaptedness | Retained. |
| §4.12 versal quotient | GL₂ full flags; diagonal torus | Rings W[[t]] and W; factorization means arbitrary t or t=0 respectively | Retained (A)–(C). |
| §4.13 marked parahoric universal object | t↦ε; T^m in O_K[[T]] | ε≠0 is killed by every map to a reduced DVR; T^m∈(T^n) iff m≥n, so intersection is 0 | Retained reduced lifting and separatedness route. |
| §4.14 integral étale recognition | Evaluation tensor; lattice changed by p | Identity retains integral fixer GL; pL≠L although pL[1/p]=L[1/p] | Retained integral-type requirement. |
| §5.1 hyperspecial frame | G_m over finite residue; zero rank | Lang obstruction 0 for connected G_m; rank-zero frame is unique | Retained residue and connectedness hypotheses. |
| §5.2 relative envelope and filtration | R=W; x=[p♭]−p; standard period t | θ(x)=0; θ(φx)=pᵖ−p≠0; θ(p)=p≠0; φ(t)=pt | Retained distinction J versus Fil¹. |
| §5.3 toral weak admissibility | Rank one with μ_T=z^(−m), δ=p^m; wrong jump 0,m=1 | Correct inverse filtration has t_H=t_N=m; wrong one has 0≠1 | Retained centralizer and average condition. |
| §5.4 hyperspecial adaptedness | Multiplicative group; empty tensors | T_p∨=Z_p(−1), crystalline F=p; no tensor equations in the empty case | Retained PD ring S distinct from 𝔖. |
| §5.5 relative p-divisible comparison | Étale, multiplicative, zero, ordinary product | Comparison factors 1,t,0 and diag(t,1); θ(t)=0 excludes a unit; after t inversion factors are invertible | Retained. |
| §5.6 one-sided Hodge normal form | b=diag(p,1),μ₀=(−1,0) | b=1·p^υ₀ with υ₀=(1,0); swapping basis changes kernel ke₁ to ke₂ | Retained marking condition. |
| §5.7 explicit lift | Rank one with E(0)=ap | c=p/E(0)=a⁻¹ and Frobenius E(u)/a; specialization p; omitting unit correction gives ap | Retained. |
| §5.8 connection integrality after twist | Constant g=1; denominator p^(−r) in a derivative | Constant lattice has connection coefficient 0; σⁿ gives differential factor pⁿ, so valuation n−r≥0 for n≥r | Retained sufficiently-large-n clause. |
| §5.9 framed Dieudonné datum | b=1,p,diag(p,1) | Kernels modulo p are 0,k,ke₁; σ⁻¹(b⁻¹)pD=pD,D,We₁⊕pWe₂ | Retained. |
| §5.10 horizontal locus | Origin; no tensors; torus two-term deformation | Ideal evaluates to 0 at origin; empty ideal 0 gives A; torus ideal (h)=(t) gives A/(t)=K₀ | Repaired ambient/restricted distinction. |
| §5.11 locus equality | Diagonal torus; G=GL₂ without tensors | Both rings K₀ with tangent dimension 0; both K₀[[t]] with tangent dimension 1 | Repaired restriction and quotient arrow; full theorem retained. |
| §5.12 formally smooth quotient | G_m and GL₂ ordinary Hodge type | Relative dimensions 0 and 1; rings W and W[[t]] | Repaired connection route in its consumer. |
| §5.13 étale tensor family | Constant id; disconnected two-point base | Integral id stays id on connected component; second component can instead carry p⁻¹id, absent from its lattice | Retained connectedness. |
| §5.14 hyperspecial recognition | Étale and multiplicative lines | Linear-dual Tate objects Z_p and Z_p(−1) compare with F=1 and p respectively | Retained integral tensor type. |
| §5.15 geometric realization tensors | Product of étale and multiplicative factors | Local comparison diag(1,t) on Tate factors; induced endomorphism id maps to id before and after specialization | Retained given-model/global-extension hypotheses. |
| §5.16 dual-lattice specialization | g=1,p,ph with h∈Z_p× | Output lattices W,pW,pW; κ=0,1,1, with dual Tate lattices T,p⁻¹T,p⁻¹T | Retained. |
| §5.17 isogenous adapted lift | Reference filtration; pD₀ | g=1 has original lattice; g=p changes lattice, while g⁻¹bσ(g)=b | Retained rational, possibly nonunit, g. |
| §5.18 specialization invariants | G_m,b=p,g=p | g⁻¹bσ(g)=p satisfies Hodge bound; κ(g₀)=κ(g)=1 | Retained. |
| §5.19 central quotient | G=H=G_m,f=id; g=p | Both quotient cosets are pW with valuation 1; changing representative by W× leaves same coset | Retained common-frame qualification. |
| §6.0 ordinary normalization | G_m,μ=1; GL₂,μ=(1,0); supersingular | Adapted κ=1 and slopes 1 or (1,0); unadapted κ=−1; supersingular slopes (1/2,1/2)≠(1,0) | Repaired translation/admissible labels. |
| §6.1 ordinary tensor datum | b=diag(p,1) with σ(p)=p | b=σ(ṫ_here^(1,0)); σ⁻¹(b⁻¹)pD=diag(1,p)D and Fil¹=ke₁ | Revised Check; full marked datum retained. |
| §6.2 central Levi filtration | M=G_m²,λ=(1,0) | All diag(a,b) preserve span(e₁); torus flag variety is one point | Retained; positive adapted normalization is inherited. |
| §6.3 central Breuil–Kisin construction | E=u−p,ordinary pair | F=𝔖e₁⊕E𝔖e₂, Θ=diag(1,−E⁻¹), c_E=−E; product Frobenius diag(−E,1), residual diag(p,1) | Retained; computes Θ on its actual source lattice. |
| §6.4 ordinary existence | Étale, multiplicative and product | Frobenius multipliers 1,−E and diag(−E,1); residual 1,p and diag(p,1) | Retained; no very-goodness assumption added. |
| §6.5 rational centralizer action | Ordinary height two, scalar p,p⁻¹ | p gives quasi-isogeny height 2; inverse has height −2 and is no integral automorphism | Retained isogeny-category action. |
| §6.6 specified nonordinary Levi | G=M; missing prescribed filtration | Forgetful map is identity when groups agree; ordinary slopes (1,0) and supersingular slopes (1/2,1/2) differ | Retained existence and compatibility hypotheses, without extrapolating ordinary normalization. |
| Adapter: admissible endpoints, order and length | GL₂,μ=(1,0) | dom(−μ)=(0,−1); endpoint t_RG^(−1,0)=diag(p,1); both length 1, squared length 2=2·1 | New convention verified on the same elements. |
| Adapter: Frobenius | Unramified rank-two torus,σ swaps coordinates | σ(1,0)=(0,1); product valuations (1,0)+(0,1)=(1,1); averaged slopes (1/2,1/2), lengths 0=2·0 | New nontrivial-Frobenius Check. |
| Adapter: rank zero and torsion | Trivial group,μ=0; torsion λ of order 2 | Adm={1},κ=ℓ=0; −λ=λ retains its nonzero order-two class | Identity and torsion are not lost by relabelling. |
| Imported bounded functions | R=Z_p[[x]],s=1,x/p; O-flatness | Norm of 1 is 1; v_K(π/p)=1−2=−1; for R=F_p the generic fibre is empty and injectivity would fail | New specialization retains flatness and normality. |
| Ambient connection form | F=(1+tE₂₁)diag(p,1),t=0 | dF=pE₂₁dt; N(0)F(0)=−pE₂₁dt; sum 0; [N(0),E₁₁]=−E₂₁ | New ambient assertion excludes false Lie(G) claim. |
| Connection-series identity | p=3, terms through t⁹; p=5, through t²⁵ | For p=3 both horizontality sides are −3t²−3t⁸; for p=5 both are −5t⁴−5t²⁴; omitted terms have higher degree | Exact rational-coefficient calculation agrees. |
| Horizontal tensor and its value | p=3 and 5 | h=t+t³/3+t⁹/9+… or t+t⁵/5+t²⁵/25+…; h′+n=0 and h(0)=0 | Initial tensor E₁₁ and horizontality determine the computed section. |
| Tensor Fil⁰ condition on thickening | t↦ε with ε²=0; t↦0 | h(ε)=ε≠0, h(0)=0; E₁₁+hE₂₁ sends e₁ to e₁+he₂ | New Check detects nonreduced directions as well as points. |
| Restricted connection and map direction | A_G=A/(t) | dt↦0, Ndt↦0, σ restricted to A_G equals E₁₁; A/(h)→A/(t) is the identity after (h)=(t) | New restriction and corrected quotient direction. |
| Frobenius stability in rational Lie algebra | b=diag(p,1),h=E₂₁ | bhb⁻¹=p⁻¹E₂₁ is in Lie(GL₂)(K₀), generally absent from the integral lattice; restricted torus diagonal coefficients are stable | Explicitly rationalized the iteration's stability statement. |
| Empty tensors and zero module in repaired loci | G=GL₂; rank-zero module | Ambient N∈Lie(GL₂), ideal 0 and A′_G=A_G=A; zero module has connection 0 and unique section | Repaired statements retain their degenerate cases. |

The exact-series computations were also evaluated with rational coefficients for p=3 and p=5. The general coefficient recurrences above explain the infinite identities; no denominator pʳ is inverted in an integral coefficient ring. The unchanged worked examples were recomputed using the same graph c, paired-chain indexing, dual Tate convention and multipliers (−E,1). In particular the Layer 6 Examples and Worked examples now instantiate t_here^(1,0), not the supplier's t_RG^(1,0).

## Ownership, citations and pins

The ownership searches used the supplied `roadmaps grep` interface across main and the indexed open roadmap heads, with object queries for bounded formal functions, crystalline connections and horizontal tensors, ordinary σ-straight translations, tensor-adapted deformations, Zink rings and Dieudonné displays. Board-package searches used the same objects. The bounded-functions owner is Part I; affine Weyl combinatorics remains ReductiveGroupsPartII. Generic crystalline coefficient connections remain CrystallineCohomology §CR.7.1 and crystalline Dieudonné evaluation remains AbelianSchemesAndArithmeticModuli §A4.CR.7.2. This package owns their tensor-deformation applications and the adapted-locus comparison, rather than a second generic connection carrier.

PELModuli §M2.15 explicitly uses W(R) and its formal/nilpotent display range. The Drinfeld deformation target in `TauCetiRoadmap/EndoscopicTransferAndUnitaryTraceComparison/README.md`, line 4353, is a special O_D-linear moduli application, not the complete tensor-display library. The available `packages/GeometricSatakeAndFusionPartII/design/README.md` distinguishes its scheme/tangent geometry from displays and very-good embeddings. The available `packages/LubinTateFormalModulesAndQuasiCanonicalLifts/design/README.md` has the formal-module and LT.0–LT.6 directions cited by the scope boundary. Its package README is not available through the indexed roadmap-show interface; no new dependency or claim about an unavailable target was introduced. Ownership against indexed open roadmap pull requests was checked through the supplied interface; no independent search for other heads was made.

Every cross-roadmap citation was re-resolved. Existing roadmaps were read on main e9512ca; new-roadmap suppliers were read at the indexed heads listed below. The sections are supplier plans, not assertions that their constructions exist in a pinned Lean library.

| Supplier | Version and sections read | Resolution |
| --- | --- | --- |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory | 34f4657; R07.1.6–1.8, 1.22; 2.10–2.12, 2.27; 3.2–3.3; 4.1, 4.13, 4.16–4.21, 4.25 | Carrier, variance, bounded functions and comparison contracts resolve. R07.4.20’s finite-Q_p limitation remains covered by the existing perfect-residue gap. |
| AbelianSchemesAndArithmeticModuli | 71ecc01; A4.CR.7.2, lines 2060–2184 | Crystal, twist and marked GM deformation contracts resolve. |
| CrystallineCohomology | 013a921; CR.1 and CR.7.1, lines 11178–11277 | Coefficient and connection contracts resolve. |
| DerivedDeRhamCohomology | 83d00dd; PD.7, lines 2740–2880 | Both `Crystalline.fontaineEnvelope_initial` and `Crystalline.fontaineEnvelope_periodPDEnvelope` are present at lines 2767 and 2850. The two initial resolver leads are supplier targets, not missing pinned declarations. |
| PadicPeriodRings | 8839b29; §§3, 4.1, 4.3 | Absolute envelope, structures and fundamental identity resolve; relative constants remain the declared extension. |
| SchemeAndStackFoundations | main; §§0.6, 1.15, 2.3, 4.1–4.4, 4.7–4.8, 4.12 | General formal/torsor/deformation contracts resolve; the remaining more specific gaps are unchanged. The bounded-function contract now belongs to Part I. |
| ModularCurves | main; §0G, lines 427–443 | Relative Grassmannian charts, gluing and universal quotient are planned there; fixed free modules are the relevant application. |
| ReductiveGroupsPartII | 1383569; RG2.1.5, 2.2.4, 2.3.3, 2.3.5, 2.3.7, 2.4.3 | All named sections resolve. Its inverse-Kottwitz translation convention is explicitly adapted here. |
| GeometricSatakeAndFusion | 0652974; GS0, lines 825–851 and 947–966 | Witt components and intrinsic local models resolve; four scheme/tangent extensions remain named gaps. |
| VectorBundlesAndIsocrystals | c380d7d; VB0 and VB4, lines 2294–2305 | Finite tensor isocrystals and the scheme tensor–torsor reconstruction resolve. Connected-fibre and component boundaries are retained. |
| PadicHodgeTheory | 4c4f1e8; §5.5, lines 1076–1124 | General perfect-residue admissibility, invariant normalization and period-torsor class resolve. |
| ShimuraVarieties | d377db7; §7.0i, lines 1869–1882 | Absolute Hodge tensors and rational complex families resolve; rational crystalline comparison remains the existing extension. |
| PELModuli | e6a4fe8; §M2.15, lines 2578–2623 | Scope boundary resolves without importing its W(R) construction as the Ŵ(R) comparison. |

The main-branch shapes of `TauCetiRoadmap/ComplexTori/README.md` and `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md` were read. No layer was reorganized or unrelated target rewritten.

The pins in `lake-manifest.json` are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Direct source reads confirmed `WittVector` and the Frobenius/Verschiebung interfaces in the stated Mathlib files; Frobenius is at `Mathlib/RingTheory/WittVector/Frobenius.lean:218`, the perfect-ring equivalence at line 283, and additive Verschiebung at `Mathlib/RingTheory/WittVector/Verschiebung.lean:109`. `Mathlib/RingTheory/WittVector/Isocrystal.lean:113` defines the rational Frobenius-module class without a finite-dimensional field. `Mathlib/RingTheory/DividedPowers/Basic.lean:77` defines divided powers on a specified ideal; the scalar law at line 86 retains membership in that ideal. Searches for the actual p-divisible/display, Zink, parahoric and adapted-deformation carriers found no missing headline that could be stated using a few native definitions. The unrelated model-category `IsVeryGood` predicates do not provide those carriers.

## Required checks and maintainer notes

- Lean: ran the required `lake env lean` invocation on `packages/FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII/Suggested.lean` from the pinned content checkout. Exit 0; empty stdout/stderr; no warnings. No Tau Ceti import occurs, so no targeted module build was needed. No Lean process remains running.
- Signature audit: mechanically enumerated authored declarations in `Suggested.lean`: zero. There are consequently zero `#check @name` signatures and no variable/include binders to compare or repair. No scratch signature declarations or extra elaboration are needed for the empty set. The module's headline/carrier-obstruction documentation and acceptance-test policy remain in agreement; no padding or weakened theorem was added.
- Dependency direction: ran the exact requested depcheck with this package name, README, supplied order and `--movable`. Exit 0. Complete output:

```text
depcheck: 52 roadmaps, 593 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The earlier run also exited 0 and returned `depcheck: 51 roadmaps, 591 edges, 0 problem(s)`; the final output above is the later invocation against the shared board state.

- Citation resolver: exit 0; no unresolved cross-roadmap or Lean-name citation. Its external-library caveat was handled by the direct reads of the pinned files above.
- Plan integrity: JSON comparison against the starting version confirms that only the top-level `gaps` list changes, removing exactly `normal-base-integral-section-detection`. The other 14 entries and every other top-level value are unchanged. All 14 remaining slugs match the README's exact supplier-contract declarations.
- Source manifest: retained the unique deJong95 key and added only Theorem 7.4.1 to its locator. All relevant texts were readable in the supplied legal cache. No new work, duplicate source key or references request was needed. RZ96 remains settled `uncertified`, cited only by its existing locator; it was not requested again.
- There were no separately listed gate failures. The two initial citation leads are resolved above; neither required changing its supplier or inventing a native API.
- `Suggested.lean` and `metadata.toml` are unchanged. No Lean declaration was added, deleted or renamed, so no cited Lean name changes for consumers. Downstream consumers of Layer 6 must interpret its ordinary translations through t_here and its positive κ convention. The removed gap no longer asks SchemeAndStackFoundations to duplicate Part I's theorem.
- Edits are confined to the package README, the one allowed plan gap removal, the source locator and this report. No commit, merge-order change or external write was performed.
