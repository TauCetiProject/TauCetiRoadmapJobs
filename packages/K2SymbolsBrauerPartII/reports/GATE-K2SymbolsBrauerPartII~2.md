# Human review response — K2SymbolsBrauerPartII

Commit: `a63a852` (README repairs only; no push).

## H01 (CBirkbeck) — applied

`TauCetiRoadmap/K2SymbolsBrauerPartII/README.md:238` replaces ∂=−Pδ and the negative uniformizer value with ∂=P_up δ_up and P_up δ_up κ_m(π)=+1, preserving the supplied maps; lines 263–264 test degree one and both cup orders separately, and lines 715 and 814 carry the same convention into the Picard and Quillen-boundary diagrams. LefschetzPencilsAndVanishingCycles §0.10’s uniformizer Check specifies +1, while the degree-one left cup factor gives −κ(ū), so no opposite purity orientation is needed.

## H02 (CBirkbeck) — applied

`TauCetiRoadmap/K2SymbolsBrauerPartII/README.md:704` makes γ:μ_ℓ⊗Fˣ→K₂ᶜˡ(F)[ℓ] surjective explicitly by coefficient exactness and §5.0c’s injectivity, line 706 identifies the actual snake-lemma cokernel before replacing its image by root symbols, and line 717 adds §5.0c to Needs. Tate’s Theorem 6.1, p.270 (`tate line 570`), states this global-field result; lines 721–722 test nonzero root symbols of orders 2 and 3 over F₃(t) and Q(μ₃).

## H03 (CBirkbeck) — answered

The shared-carrier prerequisite is real: AlgebraicKTheory A1–A3/A5 supplies the classical carriers consumed by K2SymbolsBrauer’s shared-foundations contract, and KTheoryFiniteLocalFields §3.1 explicitly consumes A5’s Matsumoto presentation; AlgebraicKTheory is absent from main and the supplied index records its open new-roadmap head `e5df75b`. The worker should add AlgebraicKTheory (#1142) before those consumers in the PR dependency/merge-order description and replace the claim of no other-author open prerequisites with the chain AlgebraicKTheory → K2SymbolsBrauer → K2SymbolsBrauerPartII; this job permits no PR-text edit, and the README already records that chain at lines 7–9.

---

**Source evidence.** All four works cited by the roadmap are available in the supplied legal cache; no additional source or missing-reference request was needed. No passage from a mathematical source was copied into the changed files or this report.

| Claim inspected | Exact locator | Consequence for the repair |
| --- | --- | --- |
| Ordered cup and root-symbol coefficient square | Tate, Lemma 3.2 and Diagram 3.3, pp.263–264; `tate line 287`, `tate line 294`, `tate line 334` | The coefficient connecting map equals h_Fγ on the specified source. |
| Primary-torsion comparison and global injectivity | Tate, Theorem 3.5 and corollary, p.265; Theorem 5.4, p.270; `tate line 354`, `tate line 564` | Equality of h_F-images of two global ℓ-torsion elements implies their equality. |
| Root-symbol surjectivity | Tate, Theorem 6.1, p.270; `tate line 570` | Supplies the explicit intermediate global theorem, with no new external prerequisite. |
| Picard cokernel and tame root-symbol value | Tate, Theorem 6.2 and proof, pp.270–271; `tate line 575`, `tate line 588`, `tate line 596`, `tate line 601` | The torsion-source cokernel becomes μ_ℓ⊗Pic(O). |
| Inverse tame normalization in the K-book | Weibel, III.6.3, p.234; `weibel line 13461` | Its uniformizer-first value is positive; convert to the base roadmap’s uniformizer-last tame symbol. |
| Symbol algebra and ordered Galois symbol | Weibel, III.6.9–6.10, pp.240–243; `weibel line 13858`, `weibel line 13950`, `weibel line 13971`, `weibel line 14004` | The residue repair changes neither β nor the algebra/cup order. |
| Artin normalization and transposition | Milne, III.3 Proposition 3.6 and Lemma 3.7, pp.109–110; III.4 Remark 4.5, p.114; `milne line 4957`, `milne line 4962`, `milne line 5140` | Artin-first and ordered-cup coordinates retain opposite signs. |
| All-place law | Milne, V.5 Theorem 5.3 and Example 5.4, p.179; VII.8.1(b), p.221; `milne line 8123`, `milne line 8142`, `milne line 10042` | No change to finite support, real factors or number-field reciprocity. |
| Finite Chern sign and ring Picard kernel | Soulé, §2.2.4.4, pp.53–55; `soule line 1693`, `soule line 1709`, `soule line 1724`, `soule line 1733` | The negative ordered-cup Chern sign and the ring kernel remain separate from the purity normalization. |

**Ownership and citation audit.** The main copy checked is `fe5400174e8f9e8ce96423e5122b6dc4c5acf632`; the supplied open-head index is dated 2026-10-24. Object searches covered the main roadmaps, board packages and indexed open roadmap heads, including the supplied sibling checkouts; the relevant detailed comparisons were K2SymbolsBrauer, KTheoryFiniteLocalFields, ArithmeticKTheory, MotivicEtaleKTheory, FunctionFieldArithmetic and K3BlochGroups. The root-symbol torsion theorem belongs here as an intermediate result of the already-owned adic Tate/global Picard development: K3BlochGroups §6.3 instead concerns multiples of pre-Bloch symbols in an antisymmetric-square kernel, and MotivicEtaleKTheory retains geometric regulator and higher-cycle comparisons. The arbitrary-DVR residue comparison remains here, consuming the existing absolute-purity and inertia owners; no carrier or ownership moved, no later supplier was added, and no Lean declaration reuses another roadmap’s fully qualified name.

| Supplier citations re-resolved | Contract checked |
| --- | --- |
| K2SymbolsBrauer §§0.4, 5.1–5.2, 5.13–5.15, 7.1–7.3, 8.1–8.3, 9.7, 9.11–9.18, 10.7–10.9, 10.32a–10.32c, 11.1–11.3, 11.7–11.8, 12.2–12.3, 12.5 | Shared classical presentation, symbols, signed product and localization, transfers, function-field tame kernel and real sign. |
| LefschetzPencilsAndVanishingCycles §0.10 | Regular noetherian pairs of arbitrary codimension; for a trait the actual support boundary is valuation modulo m, hence +1 on a uniformizer. |
| EtaleCohomologyFoundations §§0.7, F.0.3, F.3a, F.4.1–F.4.2 | Support triangle and its tensor compatibility, integer twists, positive tame-inertia ratio, derived adic realization. |
| SchemeAndStackFoundations §§0.12–0.14, 2.11, 2.15, 3.4 | Henselization, Kummer, field étale/Galois equivalence and Picard/divisor comparison. |
| KTheoryFiniteLocalFields §§1.1, 1.8, 3.0a, 3.1–3.4, 7.3 | Coefficient exactness, early Chern maps, ordered all-field norm-residue comparison, full-root local map/section and completion. |
| ArithmeticKTheory §§5.2, 6.1, 6.3 | Degree-two arithmetic comparisons and finiteness, including ordinary real dyadic H². |
| ArithmeticGaloisDuality §§R02.1.2–R02.1.3, R02.3.2, R02.4.4; SelmerIwasawaCohomology §3.15 | Compact coefficient triangles, global function-field Brauer sequence, arithmetic finiteness/high-degree real restriction and finite/lattice arithmetic-site comparison. |
| GeneralAlgebraicKTheory §§1.7–1.8, Layer 5, §§7.4–7.5 | Stable cofibers, K-spectrum and ordered products. |
| ClassFieldTheory Layers 5–6, 10, 14; QuadraticFormInvariants §§6C, 6E, 7B | Actual invariants/Artin map, number-field Brauer sum, quadratic symbols and Brauer equivalence. |
| ClassicalArithmeticCompletion §§1.14, 1.24–1.25, 1.44, 1.52 | Arithmetic scalar factors and their specified cup/invariant sign comparison and all-place law. |
| AlgebraicKTheory A1–A3/A5 | Transitive stable-matrix/Steinberg carriers, retained with their existing owner. |

The main-branch suppliers were compared with main itself, rather than a progress or revision PR. Open new-roadmap suppliers were read at the supplied indexed heads; their appearance in the dependency evidence does not promote a revision PR to a prerequisite. The citation resolver reported no unresolved cross-roadmap citations or Lean names; its lack of a library-name check was supplemented by inspecting the pinned library files.

**Pinned declarations and acceptance signatures.** Mathlib is `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti is `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, matching the content manifest. In `TauCeti/NumberTheory/HilbertSymbol/Basic.lean:46`, the native body is `if ∃ x y : K, (b : K) = x ^ 2 - a * y ^ 2 then 1 else -1`; it takes units over a field and includes neither a local-field assumption nor a characteristic restriction, so the new conic comparison must itself retain `(2:F)≠0`. The total conic at zero is a separate object, as its definition requires.

The other native contracts were inspected at `Mathlib/RingTheory/RootsOfUnity/PrimitiveRoots.lean:461` and `:516`; `TauCeti/FieldTheory/GaloisCohomology/Kummer.lean:249`, `:277`, `:322` and `:330`; `TauCeti/RepresentationTheory/Homological/ContCohomology/Cup/Product.lean:595` and `:790`; `TauCeti/NumberTheory/ClassFieldTheory/Local/Symbol.lean:165`; `TauCeti/NumberTheory/ClassFieldTheory/Brauer/RootsOfUnity.lean:89`; `TauCeti/NumberTheory/ClassFieldTheory/Brauer/Torsion.lean:58`, `:96` and `:110`; and `TauCeti/Algebra/CrossedProduct/Comparison.lean:267`, `:295` and `TauCeti/Algebra/CrossedProduct/CupProduct.lean:318`. None supplies the missing classical/Milnor K₂ or support-purity carrier needed to state the repaired README targets in the acceptance file, so no stand-in theorem or sorry-defined data was added.

A single scratch file containing all three declarations and `#check @name` for each elaborated successfully after the README repair. The resulting signatures are:

| Declaration | Elaborated domain and conclusion | README agreement / change |
| --- | --- | --- |
| `TauCetiRoadmap.K2SymbolsBrauerPartII.conicSymbol` | `(F : Type u) → [Field F] → F → F → ℤˣ` | §3.3 permits all field elements, all characteristics and arbitrary universe levels; no change. |
| `TauCetiRoadmap.K2SymbolsBrauerPartII.conicSymbol_real_eq_neg_one_iff` | `∀ r s : ℝ, conicSymbol ℝ r s = -1 ↔ r ≤ 0 ∧ s ≤ 0` | §3.3’s total, weak-quadrant criterion; no change. |
| `TauCetiRoadmap.K2SymbolsBrauerPartII.conicSymbol_eq_hilbertSymbol` | `∀ {F : Type u} [Field F], (2:F) ≠ 0 → ∀ r s : Fˣ, conicSymbol F ↑r ↑s = TauCeti.hilbertSymbol r s` | §3.4’s generic field/unit theorem; explicit characteristic hypothesis retained, no lost section binders and no change. |

**Adversarial mathematics pass.** These are computations and countermodels, not proofs of the general targets. Additive cohomology coordinates use a named generator t; multiplicative residues retain their field values. The rows cover the conventions, constructions, identities and theorem statements, including the API statements used by the repairs.

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: quotient versus torsion | A=Z and A=C₉, m=3 | Z/3Z=C₃ but Z[3]=0; C₉/3=C₃ and C₉[3]=3C₉ | Different functors even when orders agree | None |
| Conventions: invertible coefficients | F₃, m=1,2,3; Q₂, m=2 | 1,2 are units in F₃, 3=0 is not; 2 is a unit in Q₂ and 0 in F₂ | Field and residue invertibility differ | None |
| Conventions: integer twists and Galois action | Q, m=3, complex conjugation | Action on weight one is −1, on weight two is (−1)²=1; weight zero is 1 | Abstract cyclicity does not trivialize every twist | None |
| Conventions: Kummer direction | Cubic unramified extension at 7, α³=3 | Frob(α)/α reduces to α⁶=9=2; the inverse reduces to 4 | Positive Kummer ratio fixed | None |
| Conventions: ordered cup | Q₇, m=3, {3,7} and {7,3} | Contracted invariants 1/3 and −1/3 | Reversal changes sign | None |
| Conventions: root bases versus contraction | m=5, ζ→ζ² | Weight-one factor 2; weight-two factor 4; inverse weight-two factor 4; contraction factor 3 | Three operations distinguished | None |
| Conventions: symbol algebra relation | m=3, ζ=2 in F₇, X,Y | YX=2XY; the reversed choice gives YX=4XY | Noncommutative convention distinguished | None |
| Conventions: crossed-product multiplication | Cubic cyclic generator σ, carry i=2,j=1 | u_(σ²)u_σ=b; carry-free i=j=1 gives u_σu_σ=u_(σ²) | Carry and cocycle direction fixed | None |
| Conventions: Artin order and invariant coordinate | Q₇, m=3, {3,7} | e₃(1/3)=1, N{3,7}=ζ², N{7,3}=ζ; 3·(1/3)=0 in Q/Z | Coordinate is not multiplication inside Q/Z | None |
| Conventions: tame and cohomological residues | Q₇, m=3, {3,7}, t=κ₃(3) | Tame=3, ∂h=−t=2t; −κ(tame)=2t | Ordered-cup minus sign survives | H01 preserves |
| Conventions: raw versus product-normalized θ₂ | ε=−1, x={3,7} | θ₂♮x=[3]·[7]; raw inverse of that product is −x; Chern invariants −1/3 and +1/3 respectively | Two distinct signs retained | None |
| §1.1 coefficient bridge and Kummer class | m=1; real −1 at m=2 | m=1 class=0; real Kummer(−1) is the nonzero C₂ character in both models | Zero and nonzero cases agree | None |
| §1.1 ordered-cup dictionary | R, m=2, {-1,-1}; {-1,2} | Hamilton invariant=1/2 on both sides; κ₂(2)=0 gives 0 on both sides | Not the zero dictionary | None |
| §1.1 Steinberg and power slots | R, a=−1, 1−a=2; slot 1 | κ₂(−1)∪κ₂(2)=0; κ_m(1)=0 | Relations use actual Kummer classes | None |
| §1.1 restriction and inseparable transfer | F₂(t)→F₂(s), t=s², m=3 | res κ(t)=2κ(s); cor κ(s)=κ(t); cor res=2, not 1 | Degree multiplier retained | None |
| §1.2 weight-zero trivialization | m=5, roots ζ and ζ²; m=1 | 1 maps to 1 for both roots; in Z/1, 1=0 maps to 0 | Correct unit object | None |
| §1.2 weight-one basis | m=5, exponent 2; m=2, exponent 1 | 2 maps to ζ²; 1 maps to −1 at m=2 | Matches primitive-root power maps | None |
| §1.2 tensor coherence | m=5, weights 1,1 and 1,−1 | ζ⊗ζ is the weight-two basis; evaluation t*(t)=1 | Dual direction determined | None |
| §1.2 negative-weight basis | m=5, ζ→ζ² | Dual factor=3; 2·3=1 modulo 5 | Unrescaled dual would evaluate to 2 | None |
| §1.3 root contraction | m=5, ζ²⊗ζ³ | c gives ζ⁶=ζ; pointwise multiplication gives ζ⁵=1 | Wrong pairing excluded | None |
| §1.3 zero slots and bilinearity | m=5, additive-zero root 1; m=1 | c(1⊗ζ)=1=c(ζ⊗1); unique zero-module map at m=1 | Constant/nonbilinear model excluded | None |
| §1.3 equivariance | Chosen root in F, g∈G_F, ζ²⊗ζ³ | Both g(c(tensor)) and c(g tensor) equal ζ | Fixed-root hypothesis used | None |
| §1.3 tensor uniqueness and native pairing | m=2, tensor (−1)⊗(−1) | Both specified pairings return −1, while the zero pairing returns 1 | Pure-tensor values fix the map | None |
| §1.4 Brauer symbol definition | R, m=2, {-1,-1} and {-1,1} | β values Hamilton and 0; invariants 1/2 and 0 | Uses Kummer inclusion and specified comparison | None |
| §1.4 torsion and algebraic Brauer export | Hamilton, m=2; m=1 | 2[H]=0; comparison sends [H] to invariant 1/2; Br(F)[1]=0 | Torsion image, nonzero transport | None |
| §1.4 uniqueness on symbols | Q₇ cubic generator x={3,7} | Specified β(x) has invariant 1/3; zero map has 0 and negative map has 2/3 | Generator value rules out ambiguity | None |
| §1.5 all-weight root change | m=5, u=2, weights 0,1,2,−1 | Multipliers 1,2,4,3; 2·3=1 | Weights and evaluation coherent | None |
| §1.5 Brauer root change | m=3, ζ→ζ², invariant 1/3 | u⁻¹=2; new invariant=2/3=−1/3 | Root coordinate changes, scalar symbol does not | None |
| §1.5 field naturality, identity and composition | R→C; identity; conjugation twice | Hamilton restricts to 0; identity preserves 1/2; conjugation²(ζ)=ζ | Correct transported root, including zero restriction | None |
| §1.6 Galois residue construction | C[[t]], m=3; replace t by 2t | ∂κ₃(t)=1; ∂κ₃(2t)=1+0=1 | Uniformizer independence, positive degree one | H01 |
| §1.6 actual purity comparison | C[[t]], m=3 | P_up δ_up κ₃(t)=1=∂κ₃(t); old required value −1=2 | Old specifications contradict; repaired equality holds | H01 |
| §1.6 cup action on supplied boundary | Q₇, m=3, t=κ₃(3) | P_up δ_up(κ₃(3)∪κ₃(7))=2t=∂cup; reversed cup=t on both sides | Left-factor degree gives the minus sign | H01 |
| §1.6 residue dictionary on every valuation pattern | a=uπⁿ,b=wπᵈ; (n,d)=(0,0),(0,1),(1,0),(1,1) | Tame values 1,ū,w̄⁻¹,−ū/w̄; residues 0,−κū,κw̄,κ(−1)−κū+κw̄; each equals −κ(tame) since 2κ(−1)=0 | Unit, ramified and diagonal terms agree | H01 preserves |
| §1.6 diagonal ramified pair | F₃[t]_(t), m=2, {t,t} | Tame=2=−1; ∂cup=κ₂(2)=−κ₂(2)≠0 | Omitting (−1)ⁿᵈ gives 0 incorrectly | None |
| §1.6 coefficient naturality | m=6→3 on residue coordinate 5 | Both coefficient paths give 5 mod 3=2 | Correct reduction multiplier | None |
| §1.6 henselization | F₃[t]_(t)→its henselization, m=2 | Residue field remains F₃, v(t)=1 remains 1, κ₂(2) remains nonzero | Construction preserves ramified witness | None |
| §1.6 ramified restriction | t=s², m=3, unit u with κū=t₀ | ∂res cup=−2t₀; e·res∂cup=2(−t₀) | Multiplier e=2 required | None |
| §1.6 finite transfer | Unramified quadratic extension of Q₇, unit 3 | Residue norm=3²=2; −κ₃(2)=−2κ₃(3); an extra degree gives −4κ₃(3) | No extra ramification/degree factor | None |
| §1.6 excluded wild residue formula | Q₂,m=2,{-1,-1}; m=1 | Tame=1 but Hilbert=−1; at m=1 both residue groups=0 | Residue invertibility cannot be dropped | None |
| §2.1 carry multiplication and associativity | F₇, m=2,ζ=6,a=3,b=5; m=3,ζ=2,a=3,b=5 | All 64 and 729 basis triples give equal coefficients and indices; 0 associativity failures | Two nontrivial finite realizations | None |
| §2.1 basis and unit | m=2 and 4; a is a full m-th power | Dimensions 4 and 16; e₀₀eᵢⱼ=eᵢⱼ on either side | Radical field degree does not replace m | None |
| §2.1 generator powers and inverse | m=3, X³=a,Y³=b | X·(a⁻¹X²)=1; Y·(b⁻¹Y²)=1 | Nonzero a,b justify inverses | None |
| §2.1 universal mapping property | m=2, X=diag(1,−1), Y=[[0,b],[1,0]] | X²=I,Y²=bI,YX=−XY; monomial images are I,X,Y,XY | Relations determine every basis image | None |
| §2.1 scalar extension laws | R→C, m=2; identity extension | 1⊗eᵢⱼ maps to eᵢⱼ; dimensions 4=4; identity sends every eᵢⱼ to itself | Basis and maps, not just ranks | None |
| §2.1 degree-one and zero-index boundaries | m=1 and m=0 | A₁=F has dimension 1; index 1∉Fin 1; m=0 gives no positive-degree construction | Stated convention avoids out-of-range generator | None |
| §2.2 splitting representation | m=2,α²=a | X=diag(α,−α),Y=[[0,b],[1,0]]; YX=−XY,X²=aI,Y²=bI | Correct wrap and commutation | None |
| §2.2 full eigenvalues and nonzero denominators | F₇,m=3,α=1,ζ=2 | Eigenvalues 1,4,2; differences 4,6,2 are nonzero modulo 7 | Interpolation denominators justified | None |
| §2.2 splitting and central simplicity | a=1, arbitrary b; R,a=b=−1→C | First algebra is Mat_m(F), center F, dimension m²; Hamilton is division over R and Mat₂(C) over C | Splitting extension hypothesis matters | None |
| §2.2 incorrect weak splitting criterion | Mat₂(D), D quaternion division, u=diag(1,−1) | u⁴=1, minpoly degree 2, ambient degree 4; division part D remains | Power-one condition alone insufficient | None |
| §2.2 further scalar extension | R⊂C, m=2,α=i; identity C→C | Generator matrices remain diag(i,−i),[[0,b],[1,0]] | Specified α transported | None |
| §2.3 radical degree and coefficient c | m=4,a=c²,c nonsquare,α²=c | d=2,s=2,αᵈ=c∈F,cˢ=a; d·s=4 | Proper-degree case retained | None |
| §2.3 factorization and idempotents | Same m=4 example | T⁴−c²=(T²−c)(T²+c); 2 orthogonal idempotents sum to 1; Y swaps them | Reducible polynomial is essential case | None |
| §2.3 corner algebra and matrix equivalence | d=2,s=2,m=4 | Corner dimension d²=4; Mat₂(corner) dimension 4·4=16=m²; (Y²)²=b, Y²X=−XY² | Degree and generator relations agree | None |
| §2.3 corner inclusion | e=diag(1,0) in Mat₂(corner) | Corner unit maps to diag(1,0), ambient unit=diag(1,1) | Multiplicative linear inclusion is not unital | None |
| §2.3 extremal d and Morita class | d=1; d=m | Mat_m(F) has Brauer class 0; s=1 gives Mat₁(A)=A and c=a | Both directions of degree degeneration retained | None |
| §2.4 algebra/cup comparison | Q₇,m=3,{3,7} | Algebra and cup invariants 1/3=1/3; opposite algebra gives 2/3 | Specified Brauer equivalence required | None |
| §2.4 explicit cochain identity | m=3,γ³=b, g,h have i=2,j=1 and carry 1 | δf=b·ζ^(j(g)i(h)); choosing j(g)=1,i(h)=1 gives bζ=d·ζ | Cocycle sign agrees with negative flip | None |
| §2.4 proper-degree cochain and corner | m=4,d=2,s=2, i(g)=i(h)=2 | Degree-four carry floor(4/4)=1 equals degree-two carry floor(2/2)=1 | Same b-cocycle, unchanged by matrix factor | None |
| §2.4 equal-characteristic cubic control | F₇((t)),ζ=2,a=2,b=t | Frob(α)/α=α⁶=4=ζ²; invariant 2/3, N{2,t}=2,N{t,2}=4 | Local conventions agree beyond Q₇ | None |
| §3.1 coefficient power of full norm-residue map | w=6,m=3, generator ζ | Power map ζ→ζ²; primary projection ζ→ζ⁴ | These are distinct maps | None |
| §3.1 quadratic/wild norm values | Q₂ {-1,-1}; Q₃ {3,-1} | Both N=−1; first tame=1, second unramified norm obstruction v(3)=1 odd | Wild value is not a tame quotient | None |
| §3.1 tame odd-prime formula and unit slot | Q₇,m=2,{7,3}; m=1 | Legendre(3)=−1; inversion has same quadratic value; all m=1 outputs=1 | Cubic controls still needed to determine sign | None |
| §3.2 full-root section | Q₂,m=2,ζ=a=−1 | N{−1,−1}=−1; twice the class=0, so exact order 2; N∘s fixes −1 | Nonzero section value fixed | None |
| §3.2 primitive pairing value and well-definedness | m=6, value ζ²; full-root exponent test | ord(ζ²)=3≠6; if t⁶=ζᵉ and all roots are μ₆, then t⁶=1 and 6 divides e | Nonidentity value does not suffice | None |
| §3.2 section versus divisible kernel | Group model C₂⊕C₂→C₂ | First-factor section exists; kernel C₂ has no half of its nonzero element | Section alone proves no divisibility | None |
| §3.3 conic definition and exact two signs | R,(0,0),(1,−1); F₂,(0,1) | Equation values 0≠1; witness (1,0) gives 1; F₂ witness (0,1) gives 1; signs −1,+1,+1 | Total definition handles zero and char 2 | None |
| §3.3 symmetry | R,(0,1) and (1,0) | Both signs=1; witnesses (0,1) and (1,0) swap | Defined equation is symmetric | None |
| §3.3 unit and Steinberg witnesses | Any F,(1,s),(r,1−r) | 1·1²+s·0²=1; r·1²+(1−r)·1²=1 | Includes r=0,1 | None |
| §3.3 norm criterion, ordinary directions | Q,r=2,s=−1 | Norm witness (1,1):1²−2·1²=−1; conic witness (1,1):2−1=1 | Both equations hold | None |
| §3.3 norm criterion, exceptional v=0 | Q,r=1,s=2 | Conic (1,0); split norm (3/2,1/2):9/4−1/4=2 | Division by v avoided | None |
| §3.3 norm criterion, exceptional x=0 | Q,r=1,s=−1 | Norm (0,1); conic (1,0):1−0=1 | Division by x avoided | None |
| §3.3 total real criterion | (0,0),(−1,−1),(0,1),(1,−1) | Signs −1,−1,+1,+1; weak-quadrant predicate true,true,false,false | Both implications include boundary zero | None |
| §3.3 arbitrary-field bilinearity counterexample | Q,r=3,7,21,s=−1 | All signs=−1; primitive equation rA²=B²+C² forces B=C=0 mod 3 or 7, then A=0; product (−1)(−1)=+1 | Local hypothesis cannot be dropped | None |
| §3.3 characteristic-two norm counterexample | F₂(t),r=1,s=t | Conic witness (1,0) gives +1; norm form x²−y²=(x+y)² cannot equal t, giving −1 | h2 is necessary for the norm comparison | None |
| §3.4 conic/Hilbert headline on actual carriers | R,r=s=−1; Q,r=1,s=2; Q₂,r=s=−1 | Both signs −1,+1,−1 respectively; split case includes both exceptional-coordinate routes | General field statement matches norm-equation carrier | None |
| §3.4 real and complex K₂ homomorphisms | Real {-1,-1},{1,-1}; complex {-1,-1} | Values −1,+1,+1; a real symbol plus its negative has value (−1)²=1 | Supplied real map and symbol uniqueness agree | None |
| §3.4 unit-only Hilbert domain | Total conic at (0,0) | Conic=−1; no r∈Fˣ has r=0 | No extension of Hilbert factorization to zero claimed | None |
| §3.5 invariant formula and transpose | Q₇,m=3,{3,7} | Invariant=1/3, Artin-first value ζ², transpose ζ | Universal negative exponent tested | None |
| §3.5 root independence | m=3,ζ→ζ², coordinate 1→2 | Old scalar ζ^(−1)=ζ²; new scalar (ζ²)^(−2)=ζ² | Root and invariant changes cancel | None |
| §3.5 m=1,2 and normalized torsion coordinate | Invariants 0 at m=1; 1/2 at m=2 | Outputs 1 and −1; e₂(1/2)=1 while 2·(1/2)=0 | Degenerate/undetectable sign cases retained | None |
| §4.1 common root group and completion transport | Q(μ₃), two places over 7 | ζ reduces to 2 or 4; inverse completion-root map returns ζ from either chosen lift | Raw residues cannot be multiplied as global roots | None |
| §4.1 real/complex and identity/sum API | Q,m=1,2,x={-1,-1}; complex place | Real values 1,−1; complex value 1; λ(0)=1,λ(x−x)=1 | Real quadratic sign absent at m=1 | None |
| §4.1 symbol-value agreement | Q,m=2,{-1,-1} | Finite factor at 2 and real factor both −1, matching scalar factors; odd factors=1 | Specified maps agree on nonzero symbols | None |
| §4.2 support and invariant support | Q,m=2,{-1,-1}; m=1 | Supports both {2,∞}; at m=1 both ∅ | Dyadic and real places necessary | None |
| §4.2 addition of supports | y=−x for Hamilton class | support(x+y)=∅; support(x)∪support(y)={2,∞} | Inclusion, not equality | None |
| §4.3 all-place product and sum | Q,m=2,Hamilton; m=1 | (−1)(−1)=1; 1/2+1/2=0 in Q/Z; m=1 gives 1 and 0 | All-place equivalence passes | None |
| §4.3 negative-coordinate product/sum equivalence | Q(μ₃),x={3,7}, single chosen v over 7 | Partial product ζ²; partial invariant sum 1/3; ζ^(−e₃(1/3))=ζ², whereas positive sign gives ζ | All-place law alone would miss inversion | None |
| §5.0a adic Tate symbol and nonzero value | R,ℓ=2; C,ℓ=2; slot 1 | h{-1,-1}=1 in C₂ over R, 0 over C; h{a,1}=0 | Actual continuous map, not arbitrary inverse-limit lift | None |
| §5.0a Steinberg transfer construction | R,ℓ=2,{-1,2}; complex extension degree 2 | Finite and continuous Steinberg cup=0; transfer of zero=0; 2·real Hamilton class=0 | Transfer construction consistent with torsion | None |
| §5.0a all-exponent reduction | R,ℓ=2,r=1,2 | Nonzero continuous C₂ class reduces to nonzero class at mod 2 and mod 4 | Real class not lost at higher powers | None |
| §5.0a restriction, norm, continuous residue | F₂(t)→F₂(s),ℓ=3; Q₇,ℓ=3,{3,7} | cor res=2 on every finite reduction; Q₇ residue=−κ₃(3) at r=1 | Same finite signs and degree factors | H01 propagated |
| §5.0a root map and coefficient connecting square | R,ℓ=2,(-1)⊗(-1) | γ gives {-1,-1}; hγ gives 1∈C₂; coefficient δ of its nonzero H¹ class gives 1 | Left square is not dispensable | None |
| §5.0b divisible quotient | Model C_(ℓ∞)⊕C_ℓ→C_ℓ | Kernel=C_(ℓ∞), quotient=C_ℓ; source element (0,1) maps to 1; divisible summand maps to 0 | Whole primary group need not inject | None |
| §5.0b integral kernel and cokernel | R,ℓ=2; separably closed F | Real torsion C₂ maps identically, cokernel 0; separably closed target 0, quotient by maximal divisibility 0 | Does not assert integral K₂=0 | None |
| §5.0c global torsion and absence of divisible subgroups | F₃(t), degree-one residue summands | Kernel at F₃[t]=0; each degree-one summand F₃ˣ=C₂, 2 kills its elements; divisible image in each finite coordinate=0 | Torsion alone would not exclude Prüfer groups | None |
| §5.0c primary adic identification and size | Q,ℓ=2 | At every odd p residue quotient F_pˣ/(F_pˣ)²=C₂; direct sum has infinitely many nonzero coordinates available | Torsion/finite coefficients do not imply finite group | None |
| §5.0d root-symbol surjectivity | F₃(t),ℓ=2,γ((-1)⊗t) | 2γ=0; t-adic tame value 2≠1 forces γ≠0; h(x−γy)=0 gives x−γy=0 by §5.0c | Explicit nonzero quadratic root symbol and injectivity step | H02 added |
| §5.0d cubic root-symbol control | Q(μ₃),ℓ=3,γ(ζ⊗7),ζ mod v=2 | 3γ=0; tame=2 of order 3; P_upδ_up hγ=−κ₃(2)=2κ₃(2), inverse symbol gives tame 4 and residue κ₃(2) | Zero and inverse maps excluded | H02 added, H01 consistent |
| §5.0d coefficient exactness used for surjectivity | R,ℓ=2 coefficient row | H²_cont[2]=C₂; im δ=C₂; h(im γ)=C₂ | Equality supplies y; primary injectivity supplies x=γy | H02 explicit |
| §5.0d root reduction and tame divisor square | Cubic place over 7,ζ→2,v(a)=0,1,2 | Both ∂ᴹγ(ζ⊗a) and reduced ζ^v(a) give 1,2,4 | Full root source matches residue torsion | H02 explicit |
| §5.0d snake cokernel and Picard identification | Model Pic=C₉,ℓ=3,g generator | μ₃⊗Pic=C₃; ζ⊗g≠0 but ζ⊗3g=3(ζ⊗g)=0 | Image must use all K₂[ℓ], not selected torsion classes | H02 explicit |
| §5.0d Picard exact sequence | Q,S={2,∞},ℓ=2; F₃(t),S={∞} | Picard terms 0,0; middles C₂,0; targets {(0,0),(1,1)},0 | Number/function-field and one-place cases agree | None |
| §5.0d positive local coordinate | Q₇,m=3,{3,7} | ζ^e=ζ; Artin-first inverse (ζ²)⁻¹=ζ | Picard target has positive-cup convention | H01 preserves |
| §5.0d two-place function-field case | F₃(t),S={0,∞},ℓ=2 | {-1,t} maps to (1,1) additively, sum=0; Pic=0,K₂(O)/2=C₂ | Not the one-place zero sequence | None |
| §5.0d Quillen/purity residue compatibility | Q₇,m=3,{3,7},t=κ₃(3) | Tame=3, det B_Qθ₂♮=5; κ₃(5)=2t=−t=P_upδ_up h | Imported positive purity matches actual Quillen boundary | H01 propagated |
| §5.0d connecting injection sign | Exact model 0→3Z→Z→C₃→0, reduce by 3 | Connecting class of 1 is 3 mod 9; negating residue map gives −3=6 mod 9 | Negative tame boundary negates connecting injection | H01 explicit |
| §5.0d S-enlargement and real coordinates | Q,S={2,∞}→{2,3,∞},ℓ=2,Hamilton | Old coordinate (1,1) maps to (1,0,1); at added 3 residue 0 | Zero insertion and real term retained | H01 preserves |
| §5.0e continuous H³ and finite H³ | Trivial C₂-action on Z₂ and Z/2ʳ,r=1,2,3 | Continuous H³=ker(2:Z₂→Z₂)=0; finite H³=C₂; generators 2 mod 4,4 mod 8,8 mod 16 all reduce to 0 | Inverse limit is zero, not finite-level vanishing | None |
| §5.0e coefficient-reduction isomorphism | Z[1/2],ℓ=2,r=1,2; Z[1/3],ℓ=3 | H²_cont/2ʳ=C₂=finite H²; at ℓ=3 both groups 0 | All exponents and real dyadic class retained | None |
| §5.0e odd-twist countermodel | Sign C₂-action on Z₂(1) | H³=Z₂/2=C₂ versus 0 for even twist | Weight two is essential | None |
| §5.0e finite arithmetic map and composition | Z[1/2],generator x, r=2→1; add primes 3 then 5 | arith₂(x)=1∈C₂ reduces to arith₁(x)=1; residues at 3,5 are (0,0) on either path | Coefficient and localization maps compatible | None |
| §5.1 local Tate dictionary | Q₇,ℓ=3; Q₂,ℓ=2; R,C,ℓ=2 | Q₇ invariant 1/3; dyadic and real {-1,-1} nonzero; complex quotient and target 0 | No good-prime/archimedean narrowing | None |
| §5.1 equal-characteristic domain | F₂((t)),ℓ=3 and ℓ=2 | At ℓ=3, μ₃(F)=1 and finite degree-two quotient=0; at ℓ=2 coefficient equals 0 in F | Invertibility exclusion is exact | None |
| §5.2 global completion dictionary | Q,m=2,{-1,-1} at R,Q₂,Q₃ | K₂ symbol and restricted cup have invariants 1/2,1/2,0 on both paths | Actual completion maps agree | None |
| §5.2 adic quotient versus global identification | General model C_(ℓ∞)⊕C_ℓ; global F₃(t) | General kernel C_(ℓ∞); global divisible kernel 0; degree-one C₂ summands survive at ℓ=2 | Global theorem uses §5.0c, not a new completion | None |
| §5.3 ring comparisons and generic dictionary | Q,S={2,∞},ℓ=2,r=1,2 | Both ring groups C₂; generator maps to nonzero H² and to real Hamilton class 1/2 | Number-field scope, real row and θ₂♮ retained | None |
| §5.3 actual boundary square | Q₇,m=3,[3]·[7] | θ₂♮ inverse={3,7}; det B_Q=5; P_upδ_up h=κ₃(5)=−κ₃(3); former opposite-sign claim gives +κ₃(3) | Repaired imported-map equality | H01 |
| §5.3 Picard column and failure of quotient injectivity | Model 3Z⊂Z,mod 3; Pic/ℓ=C_ℓ | Inclusion sends 3 mod 9 to 0 mod 3; Picard tensor class maps generically to 0 while remaining nonzero | Integral injection does not descend to quotient injection | H01/H02 preserved |
| §5.3 two-step localization | Q,Hamilton, added primes 3 then 5; cubic local control | Both added tame values=1 and residues=0 on either path; at 7,{3,7} has residue −κ₃(3) | Zero and nonzero sign witnesses both used | H01 |
| §5.3 weight-one Kummer sequence | Spec F; Pic(O)=C₉,ℓ=3 | Field Pic=0; Pic(O)/3=C₃ contributes nonzero kernel in ring H² | Field argument cannot delete Picard term | None |
| §5.4 finite spectrum coefficients | F₅,m=6 | Integral K₂=0; K₁[6]=μ₆=C₂; finite K₂=C₂, Bockstein sends generator to −1; CRT components nonzero mod 2,zero mod 3 | Finite K₂ differs from integral quotient | None |
| §5.4 exact image and m=1 | F₅,m=6; arbitrary F,m=1 | Integral image=0=kernel of Bockstein isomorphism; cofiber(id)=0 | Factored reduction injects, integral reduction need not | None |
| §5.5 Chern product coefficient | i=j=1 | −(1!)/(0!0!)=−1; external and internal ordered products have same coefficient | No factorial inverted modulo m | None |
| §5.5 comparison on integral reduction | Q₇,m=3,{3,7}; coordinate cup=1 mod 6 | Chern invariant −1/3 versus cup +1/3; mod 6 value −1=5, reductions 1 mod 2 and 2 mod 3 | Cubic sign and CRT agree | None |
| §5.5 even correction and Bockstein image | Two integral K₁ classes reduced modulo 2 | Both Bocksteins 0; correction term 0·0=0 | No product on arbitrary finite classes inferred | None |
| §5.5 raw-map identity | ε=−1; replace θ₂ by −θ₂ | Raw coefficient −ε=+1; after replacement ε=+1 gives −1; θ₂♮ and its −h formula unchanged | Adapter sign cannot be chosen independently | None |
| §5.5 m=1 and extra finite quotient | m=1; F₅,m=6 | Both Chern sides=0 at m=1; F₅ finite K₂ has a nonzero class with Bockstein −1 outside integral image | Target not extended to arbitrary finite lifts | None |

The exact fields, unit conditions and characteristic restrictions in the two Lean headline statements remain explicit binders. Zero rings are excluded by `Field`, and a field is not an input to the DVR constructions; m=0 is outside the positive-coefficient scope. Nonabelian groups S₃ and Q₈ do not instantiate the abelian K₂, Picard, root or cohomology-group inputs; the noncommutative algebra tests instead use the actual matrix and quaternion carriers. The square-zero and nonregular cases are outside the regular-pair purity contract; no claim of purity for them was introduced.

**Build and gate outcomes.**

`lake build TauCetiRoadmap.K2SymbolsBrauerPartII.Suggested` exited 0:

```text
⚠ [8983/8983] Built TauCetiRoadmap.K2SymbolsBrauerPartII.Suggested (2.3s)
warning: TauCetiRoadmap/K2SymbolsBrauerPartII/Suggested.lean:39:8: declaration uses `sorry`
warning: TauCetiRoadmap/K2SymbolsBrauerPartII/Suggested.lean:46:8: declaration uses `sorry`
Build completed successfully (8983 jobs).
```

All three signature checks exited 0, with the same two expected admitted-theorem warnings. The dependency check exited 0 and emitted exactly:

```text
depcheck: 33 roadmaps, 306 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The first full gate reported only the uncommitted README (`dirty=1`); after commit `a63a852`, the prescribed full gate exited 0 and emitted:

```text
gate K2SymbolsBrauerPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 dirty=0 outside-folder=0 source-material=0 OK
```
