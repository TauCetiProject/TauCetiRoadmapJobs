# Repair report: PadicLocalLanglandsForGL2QpPartII

Findings are from `reports/REV-PKG-PadicLocalLanglandsForGL2QpPartII~2.md`. References to numbered sections below mean `packages/PadicLocalLanglandsForGL2QpPartII/README.md`. Mathematical verdicts and computations below were made directly; no helper agents were used.

## R01 (P1) — applied

In §4.5, tensoring X and rational L-spaces over ℚ_p → tensoring over L, including H¹. In §4.7, dO[M] → d(O[M]^G); in §4.12, Ω¹[M] → Ω¹[M]^G. Geometric scalar extension in Layer 4 and §§4.1, 4.13 stays over ℚ_p. Evidence: CDN20 line 824, line 849; CDN23 line 2413. Added quadratic-coefficient and moved-scalar Checks.

## R02 (P2) — applied

In §3.1, smooth finite-dimensional ρ of dimension at least two → smooth absolutely irreducible ρ of dimension at least two for degree vanishing. Unrestricted compact-support smoothness is retained. Added ρ = 1 ⊕ 1 with Hom(ρ,1) = L². Evidence: DLB17 line 783 proves smoothness; the Nrd-action on components is ProetaleCohomologyOfPAdicCurvesAndTowers §7.1.

## R03 (P2) — applied

In §7.2, unspecified determinant twist → Π(Δ_(k+1,ℒ))′_b⊗det^k. The unramified δ_(k+1) remains inside Π. The route now specifies O(s)^ρ ≅ Π(M,s−1)′_b⊗det⁻¹ and dualises the weight-change sequences. Recomputed k = 0, 1, central scalars and the algebraic quotient. Evidence: COLMEZ19POIDS line 230, line 233; DLB17 line 2722.

## R04 (P3) — applied

ND.2/ND.3 → LocallyAnalyticDistributionsPartII §§2.2–2.3; LR.0 → LocallyAnalyticRepresentationsOfLocalGroups §§0.3, 0.5. Radius algebras are assigned to PadicLocalLanglandsForGL2Qp §0.1 through the explicit radius contract. Updated Scope, contracts, all affected Needs and Dependencies in Layers 1–3 and the §3.1 route. Ordered p-valuations, rational radii and the smaller subgroup at p = 2 remain explicit.

## R05 (P1) — not actionable in this package: the missing supplier proof belongs to PadicHodgeTheory §4.4

The false attribution to §4.4 → gap:continuous-galois-tensor-comparison in Exact supplier contracts and the plan's top-level gaps. The §4.5 route explicitly consumes this gap; unit and logχ-extension Checks specify its required behaviour. Supplying the strict continuous-cohomology model and limit theorem requires editing PadicHodgeTheory, outside this package. CDN20 line 849 uses the input; that supplier's §4.4 does not state it.

## R06 (P3) — applied

In §1.4, constant shell values → φ(p^ja) = σ_ax for j ≥ 0 and zero otherwise. Both sides of Γ-equivariance are σ_(ba)x. Support closure is still ℤ_p, with infinitely many shells. Added x = ζ_(p^m), m ≥ 2 at p = 2, to refute the old constant-shell model. Evidence: DLB17 line 1524.

## R07 (P3) — applied

In §3.1, “neighbour” → distance two. The Check computes p·u(p⁻¹) = (p 1; 0 p), elementary divisors 1, p², hence distance 2. The argument that U_i is not G-stable survives, including at p = 2, 3.

## R08 (P3) — applied

In §5.2, finite-length k_L[G′]-modules modulo p → finite-length (O_L/p)[G′]-modules with k_L-valued composition factors. Added the ramified quadratic example O_L/p = O_L/ϖ², with nonzero ϖ·1 and two residual graded pieces. Evidence: CDN23 line 2673; ScholzeFunctorAndModpCohomologyOfTheLubinTateTower §5.4 supplies uniformiser-power coefficients.

## R09 (P3) — applied

In §§3.3, 4.1, “all terms vanish” → zero geometric multiplicity versus nonzero intrinsic representation/period terms outside the hypotheses. At level zero the diagram has no supercuspidal parameter. In §7.4, V = 0 → μ = 0 in an allowed rank-two V: specialisations vanish, while the invariant space retains rank two. The valid V = 0 tests in §§4.4–4.5 remain.

## R10 (P3) — applied

In §0.2, an asserted extra Sp summand → coker(T−1) = 0 at full level zero. The Check solves f_(h+2)−f_h = a_h separately in both parities; finite signed sums also preserve any uniform bound. Nonzero H⁰[Sp] therefore does not imply nonzero cyclic H¹. The level-reading theorem retains its established supercuspidal domain.

## R11 (P2) — applied

Congruence formula at zero → K_D(0) = O_D^×, K_D(n) = 1+ϖ_D^nO_D for n ≥ 1. Updated Conventions, §§0.1–0.2, 3.1, 3.3, 4.12, 5.6 and Layer 7's standing r ≥ 1. Σ₀ is separate. Averaging uses finite order invertible in L; first order p²−1 is distinguished from positive-level p-power orders. Evidence: DLB17 line 115.

## R12 (P3) — applied

The module docstring now includes §7.2's weighted/BGG row, its corrected det^k preimage and missing geometric, differential and period-line carriers. It also identifies §7.3's first-cover specialisation and missing semistable/Hyodo–Kato comparison. No substitute Lean declaration was introduced. The weighted row is DLB17 line 2722; weight change alone does not state its geometry.

## Computed adversarial mathematics pass

Each row records actual values or spaces, including the plausible wrong model. Rows group the definition and its API with the corresponding target. These instance computations test consistency and hypotheses; they are not proofs of the deep theorems. A supplier gap remains a requested theorem, not a proved assumption inferred from its Checks.

| Statement | Instances and computed values on both sides | Result and change |
| --- | --- | --- |
| Coefficients and characteristic | L/ℚ_p finite, p = 2, 3: p ≠ 0 in L and 1/2 ∈ L; O_L/p may have length e(L/ℚ_p), whereas O_L/ϖ has length 1 | Ramification retained; R08 |
| Level convention and §0.1 level API | n = 0: 1+(−1) = 0; K_D(0) excludes it. v_D(p) = 2, so K_D(2) = 1+pO_D. D×/K_D(0) = ℤ, modulo p^ℤ gives ℤ/2 | Piecewise subgroup; R11 |
| First and positive transitions | p = 2, 3: p²−1 = 3, 8. For 1 ≤ n < n′, successive quotients have additive residue-field size p², so order p^(2(n′−n)); n = n′ gives order 1 | Averaging valid in L at every level; R11 |
| Actions, duals, coordinate convention | On z: (u⁺,a⁺,a⁻,u⁻)z = (−1,−z,z,z²); a scalar c on E acts by c⁻¹ on E′. For w, wzw = 1/z | Sign and inverse witnessed |
| Hodge/Tate and Frobenius conventions | D_dR(L(1)) has generator t⁻¹e, filtration index −1; φ = p⁻¹, then shift [1] gives p·p⁻¹ = 1. Unit has φ = 1 and index 0 | Positive Hodge–Tate weights use negative filtration indices |
| §0.1 central sector | χ(p) = 1+p: scalar (1+p)² is 9 at p = 2, 16 at p = 3, both unequal to 1. For Sp⊗δ the scalar is δ(p)² | Geometric multiplicity 0 outside sector; no intrinsic vanishing claim |
| §0.2 evaluation, maps and coefficient extension | X = W⊗ρ with dim ρ = 2: Hom_Ǧ(ρ,X) = W but projector image = W⊗ρ; for ρ′ ≇ ρ the Hom is 0; identity on W induces identity on its multiplicity | Multiplicity differs from isotypic part |
| §0.2 cyclic descent | a_h = 1: choose f_(2m) = f_(2m+1) = m, so f_(h+2)−f_h = 1, including negative m. Supremum of p-adic norms of these integers is 1; general finite sums have norm ≤ sup_h |a_h| | H¹ = coker(T−1) = 0 despite H⁰[Sp] ≠ 0; R10 |
| §0.3 period-line parameter | ℒ = Le₁ and Le₂: Fil⁰ has dimension 1 in each case, with distinct subspaces; Fil⁻¹ dimension 2, Fil¹ dimension 0; C-periods have weights 0 and 1 | Rank two, not a character; unfiltered object does not determine line |
| §0.4 normalisation dictionary | e₁ maps to e₂*⊗(e₁∧e₂); e₂ maps to −e₁*⊗(e₁∧e₂). μ(p) = −1 multiplies φ-eigenvalues by −1 and central character by μ(p)² = 1 | Orthogonal line and determinant factor agree |
| §1.1 differential lattice | ℒ = Le₁: D⁺ = L_n[[t]]e₁ ⊕ tL_n[[t]]e₂; N⁺/D⁺ = L_ne₂. At weight gap 2 the second summand is t²L_n[[t]]e₂, which excludes te₂ | Weight-{0,1} sandwich retained |
| §1.2 polynomial injectivity | Nonzero constant P = 1 has kernel 0; unit trianguline module with ∇e = 0 gives ker ∇ containing Le. Rank zero has kernel 0 | Nontriangulinity excludes the false extension |
| §1.3 P-finiteness and infinite slope | v = 0 gives 0; trivial v ≠ 0 gives trace p^n v and its kth iterate p^(nk)v ≠ 0; a single shell has one valuation coordinate | Infinite slope differs from P-finiteness |
| §1.4 LP, support, Γ-action | φ(p^ja) = σ_ax: φ(bp^ja) = σ_(ba)x = σ_bσ_ax. With x = ζ_4 at p = 2 and a = −1, a constant shell gives i versus −i | Equivariant shell extension; R06 |
| §1.4 local nilpotence and action | t^j(t⁻ʲe) = 0 in D⁻, but t^(j−1)(t⁻ʲe) = t⁻¹e ≠ 0. For two P-elements, exponent b x + b′a x = (b+ab′)x, matching their matrix product | Exponential finite on each value; no uniform t-power bound |
| §1.5 Kirillov and infinitesimal action | (a,b) = (0,1): Casimir ((a−b)²−1)/2 = 0; ∇(∇−1) = t²∂², hence u⁻ = −t∂². Zero vector maps to zero function | Agrees with P-algebraic restriction and derivative signs |
| §1.6 residue pairing | res(t^i·t^j dt) = 1 for i+j = −1, 0 otherwise. Pairing 1 with t⁻¹dt gives 1; pairing t with every t⁻¹L[[t]]dt gives 0 | Orthogonal tN⁺, including weight gap 2, rather than t²N⁺ |
| §1.6 trace normalisation | At consecutive sufficiently large cyclotomic levels, Tr_(L_(n+1)/L_n)(1) = p and p^(−n−1)p = p^−n | Trace-residue scalar independent of level |
| §1.7 duality and fixed vectors | One shell leaves one summand; zero functional gives 0. For tbx ≠ 0, exp(tbx)−1 = tbx times a unit; after tφ = 0, bx = p⁻¹ gives factor ζ_p−1 ≠ 0, equal to −2 at p = 2 | Whole-unipotent fixed vector = 0; trivial representation fails infinite slope |
| §2.1 embedded common dual | Le₁ and Le₂ give different differential lattices but equal images E_π. On the two-chart sheaf, (0,z) with z ≠ 0 has first restriction 0 and second z | Equality is embedded; both restrictions needed to force 0 |
| §2.2 covariance | w: det = −1, wu⁺w = −z²(−d/dz) = z²d/dz; u(b): ∂ maps to ∂−b; aI₂: (a²)⁻¹a² = 1 | Two-sided inverse and signs agree |
| §2.3 irreducibility | At weight 1 and ω = x⁻¹, Π(M,−1)⊗det has central scalar a⁻²a² = 1. Π(V)^an has nonzero smooth π and nonzero quotient, hence is reducible | Headline is about quotient, not Π(V)^an |
| §2.4 weight-change sheaf and sequences | k = 0,1,2: Casimir −1/2,0,3/2. For k = 2, det Δ_(2,ℒ)(p) = p; δ_2(p)² = p⁻¹ makes product 1. For k = 1, product p·p⁻¹ = 1 | Non-étale Δ and unramified correction distinguished |
| §2.4 action normalisation | Centre on Π(M,k) = a^kω(a); quotient Π(M,−k)⊗det^k has scalar a⁻ᵏω(a)a²ᵏ = a^kω(a). k = 1 algebraic part has dimension 2 copies of π, line quotient leaves 1 | Positive action exponent agrees with exact sequences |
| §3.1 local analyticity and Lie action | Evaluation δ_x applied to z gives x; u(b)δ_x applied to z gives x+b, derivative 1, hence not locally constant. On Ω¹′, a⁺ = ∂u⁺ kills the u⁺-kernel | Analytic function dual versus smooth compact-support cohomology |
| §3.1 compact-support degrees | Absolutely irreducible dim ρ ≥ 2: Hom_Ǧ(ρ, character) = 0, giving degrees 0,2 equal to 0. For ρ = 1 ⊕ 1, Hom_Ǧ(ρ,1) = L² ≠ 0 | Added irreducibility; R02 |
| §3.1 tree and p-valued subgroups | p·u(p⁻¹) has determinant p² and a unit entry, so elementary divisors (1,p²) give distance 2 at p = 2,3. G_1 at p = 2 contains −I of order 2; G_2 excludes it | Distance corrected; smaller 2-adic subgroup retained; R04, R07 |
| §3.1 distribution radius input | For H = ℤ_p and p odd, r = p^(−1/p): term T has norm p^(−1/p), term T^p/p norm 1; Frommer closure has rank-p extension D_r. Trivial H gives D_r = U_r = L | Import radius algebra, not duplicate it; R04 |
| §3.1 global-map hypotheses | Zero map has image 0; nonzero scalar c gives image c·im Φ and does not change its dimension. Prescribed local ξ⁻¹ cancels ξ: ξ(p)ξ⁻¹(p) = 1 | Nonzero-map and full-local-character requirements retained |
| §3.2 Kirillov embedding of kernel | t⁻¹e modulo N⁺ transforms by χ(a)⁻¹; at a = −1 its scalar is −1, not 1. Zero restrictions give zero through the injective Kirillov model | Twisted coefficient module retained |
| §3.3 all central characters | p = 7, μ₆: squares have order dividing 3; quadratic ω has order 2, so no square equals ω. χ(p) = 1+p gives geometric multiplicity 0 but invertibly twisted intrinsic quotient ≠ 0 | General-central-character theorem retained; invalid input Check corrected; R09 |
| §3.3 line condition | diag(1,2) sends e₁+e₂ to e₁+2e₂, a different line; scalar matrices preserve every line | Uniqueness applies with line condition |
| §4.1 multiplicity diagram | Positive slope 1/2 gives (B_cris⁺⊗M)^(φ=1) = 0; slope-zero unit has vector 1. Excluded central twist has geometric terms 0, intrinsic (C⊗M_dR)⊗LL′ ≠ 0; n = 0 has no supercuspidal parameter | Domain distinguished from zero intrinsic terms; R09, R11 |
| §4.2 three Steinberg spaces and twists | Constant 1 maps to 0; δ_a−δ_b has total mass 0; δ_a has mass 1. dlog((z−a)/(z−b)) has residues +1,−1. On aI₂, det and Nrd both a² | Quotients and twist directions agree |
| §4.3 partial-operator extension | d = 0 gives unique zero endomorphism; S = 0 admits any diagonal spectrum. d = 2, λ₁ = 1, λ₂ = 2: B = (0 −2; 1 3) has trace 3 and determinant 2, all-positive column gives determinant −2 | Companion signs and invariant-subspace exclusion agree |
| §4.4 period multiplicities | V = 0: both Hom spaces 0; V = L: H_C(V) = F⊗L of L-dimension [F:ℚ_p]. V_(M,ℒ): H_M dimension 1, image the line ℒ | Coefficient algebra L⊗F retained |
| §4.5 tensor and invariant comparison | Quadratic L, V = L, B = L: corrected invariants L⊗_L L = L, dimension 1; old L⊗_ℚ_p L dimension 2. V = 0 gives all terms 0 | Correct base L; R01 |
| §4.5 cohomology supplier, unit | Θ = 0 on L: ker = L, coker = L. Required H¹ generator logχ; tensor B = L² gives dimension 2 on each side | Required behaviour of gap; no inference from Sen finiteness alone; R05 |
| §4.5 cohomology supplier, extension | Θe₂ = e₁, Θe₁ = 0: ker = Le₁, coker = L[e₂]. (g−1)e₂ = logχ(g)e₁. For ℓ_g = logχ(g), z(gh) has e₁ coefficient (ℓ_g+ℓ_h)²/2 = ℓ_g²/2+ℓ_gℓ_h+ℓ_h²/2, matching z(g)+gz(h) | Coboundary removed and surviving class tested, including p = 2; R05 |
| §4.6 rank-two classification | Over ℚ_p, nonnegative integers with sum 1 are (0,1),(1,0). Degree-two F permits (0,0) and (1,1) at its two embeddings, total 2; a character cannot have rank-two irreducible WD quotient | Last classification stays scoped to ℚ_p |
| §4.7 line extension, normalisation and intersection | e ↦ ae and e* ↦ a⁻¹e* give evaluation 1. Le₁∩Le₂ = 0, hence preimage intersection ker quotient = d(O[M]^G). For moved c and ω ≠ 0 rational, g(cω)−cω = (gc−c)ω ≠ 0 | Rational intersection repaired; R01 |
| §4.8 bounded vectors | Trivial orbit {v} bounded; ℤ-action p^n v gives norms p^−n|v| unbounded as n→−∞. Replacing seminorm p_i by i p_i gives values i at fixed v, each bounded separately | Correct quantifiers ∀i∃C_i |
| §4.9 bounded functions and étale comparison | On Ω, u(b)z = z−b gives arbitrarily large norms as |b| grows. Constant 1 bounded in trivial sector, multiplicity 0 in supercuspidal sector. L⊗(O_L/p^k) = 0 | Boundedness and integral-before-rational limit conventions agree |
| §4.10 bounded duals | Unit Π = L gives (Π′)^b = L; St^sm gives completion St^cont and its dual. Zero representation gives 0 on both sides | Finite-length/admissibility hypotheses retained |
| §4.11 occurrence and finite length | Character has multiplicity 0; V_(M,ℒ)⊕V_(M,ℒ′) has dual Banach length 2 for ℒ ≠ ℒ′; nonsplit extension onto V_(M,ℒ) retains nonzero Hom | Quotient condition, not constituent or semisimplicity condition |
| §4.12 differential multiplicity | dim ℒ = 1 gives multiplicity dimension dim JL(M); excluded twist gives 0. The line-preimage row uses rational Ω¹[M]^G, not its C-extension | Rational route repaired; R01 |
| §4.13 Banach étale multiplicity | X⁺_st(M)∩(C⊗ℒ) = V_(M,ℒ), dimension 2; resulting multiplicity dimension 2·dim JL(M). Excluded central twist gives 0 | Geometric row retained |
| §4.14 Galois socle | Absolutely irreducible dim 3 gives 0; permitted rank-two V gives Π(V)′⊗JL(M); δ = 1 gives (St^cont)′, rank-one Galois character | Higher-dimensional vanishing does not exclude character branch |
| §5.1 arithmetic completion | Zero coefficient group gives 0; at fixed k arithmetic classes have open stabilisers; a geometric vector with no open stabiliser is absent from colim_K | Fixed level and order lim_k colim_K retained |
| §5.2 saturation and finite-K pieces | For a nonzero saturated free test lattice O inside L, p·1 lies in pO but 1 does not; pO is not saturated. For ϖ² = p, O/p has basis of two residual graded pieces with ϖ·1 ≠ 0 | Reduction coefficient corrected; R08 |
| §5.3 block multiplicity, dual and evaluation | Wrong block Hom = 0; X = Y⊗JL(M) gives Hom(P_B,Y). For f·e = f∘e, (f·e)(x) = f(ex), so balanced evaluation agrees on both tensors | Right End action and correct continuous dual retained |
| §5.4 completed block evaluation | In distinct test blocks components p^i give finitely many nonzero residues modulo p^k but infinitely many components overall; components 1 give infinitely many residues modulo p | Restricted completion differs from both sum and product |
| §5.5 dual finite generation | O^r/ϖ has dimension r; r = 0 gives 0, r = 1 needs one generator. An absent block has residual Hom dimension 0, hence zero compact dual by Nakayama | Finiteness belongs to O-valued dual |
| §5.6 level and central character | First deck order 3 or 8 at p = 2 or 3, invertible in L. For special δ, central scalar δ(a²) = δ(a)², multiplicity scalar δ(a)^−2 | Order and rational averaging corrected; R11 |
| §6.1 interpolated dual | Empty type ring gives 0. Stable lattices T,pT have the same rationalisation since p is invertible; closed point x gives Π(ρ_x)′ | Integral construction, not fibre-only definition |
| §6.2 special convention | M = Sp in Steinberg block gives Galois factor L of rank 1 and G-factor (St^cont)′; other block gives 0 | Rank-one convention distinct from supercuspidal rank two |
| §6.3 PID rigidity | A = L[T], comparison diag(1,T): at T = 0 rank falls 2→1, producing a proper stable line. DVR has one maximal ideal; nontrivial χ≡1 has same residual character 1 but distinct generic character | Infinite-prime and absolute-irreducibility conditions retained |
| §6.4 type annihilator | N = L[T]/T²: closed fibre at T = 0 killed by T, other fibres 0, yet T·1 ≠ 0 in N. Empty type ring has kernel ideal (1), forcing m = 0 | Whole-module annihilation distinct from fibre statement |
| §6.5 typed structure | R = L gives Ř = L and m_B(Π(ρ_x)′)⊗ρ_x. (rℓ)(s) = ℓ(rs) gives (r₁(r₂ℓ))(s) = ℓ(r₂r₁s), equal to ((r₁r₂)ℓ)(s) | Coefficient dual and joint action fixed; local freeness remains explicit target |
| §6.6 factorisation | Closed permitted point gives Π(ρ_x)′⊗ρ_x⊗JL(M); special unit gives (St^cont)′⊗1⊗1. Components p^i have finite support modulo each p^k | Arithmetic completion, p > 3, and restricted sum retained |
| §7.1 weight action | k = 0 factor 1; aI₂ factor a⁻ᵏ. For u(b),w: (1−0z)(0−1·(z−b)) = b−z, the left-column factor for u(b)w | Cocycle follows gg′ order |
| §7.2 BGG row and preimage | k = 0 gives d and det⁰ = 1. k = 1 gives (u⁺)² = d²/dz²; central p⁻³p⁴ = p on middle, p⁻¹p² = p on preimage, but untwisted dual p⁻¹ | Explicit det^k; R03 |
| §7.2 algebraic quotient and route | For diag(a,b), (Sym¹)∨⊗det has weights a⁻¹ab = b and b⁻¹ab = a. O(k+2)det^(k+1) becomes Π(M,k+1)′det^k; dual algebraic quotient becomes π′⊗M_dR*⊗Sym^k | Dual sequence and BGG quotient agree; R03 |
| §7.3 first cover and scalar rigidity | p = 2 gives y′³ = z−z² with z-derivative 1 mod 2; p = 3 gives two factors of degree 4. diag(1,c) fixes 0,∞ and sends 1 to c, so fixes all three iff c = 1 | Model and three-line condition retained |
| §7.4 Iwasawa invariants | Allowed rank-two V and μ = 0: every integral specialisation 0, in exponential image; whole invariant space has rank 2, not 0. For unit representation outside family, H¹_e = 0 whereas H¹_f has unramified line of dimension 1 | Zero-class Check repaired; R09 |
| §7.5 infinitely primitivable | Σ₀ = Ω⊔Ω, f = (1,−1): jth primitive (z^j/j!,−z^j/j!) differentiates j times to f; at j = 0 it is f. Pullback from Ω has equal components, so f is not a pullback | Component-constant factors necessary |
| §7.6 filtered derived realisation | H⁰ in supercuspidal sector = 0; shift [1] puts H¹ in degree 0. Hom gives dimension 2 with Fil⁰ dimension 1 and Fil¹ dimension 0. Trivial ρ would retain constants in H⁰ | Fixed sector and filtration retained |
| §7.7 boundary sheaf | Empty open has sections 0; U₁⊔U₂ gives product of the two section spaces; replacing balls B_i by B_(i+c) gives the same cofinal germ limit | Germs differ from unrestricted global functions; conjectural comparison stays conjectural |

## Source, ownership and citation audit

Read the legal cached texts directly. The repaired statements use DLB17 line 104–116 (levels), line 783–799 (smoothness), line 1522–1534 (semilinear Kirillov functions), line 2718–2725 (weighted actions and BGG row), line 2787–2789 (Iwasawa comparison); CDN20 line 822–853 (tensor base and cohomological argument), line 917–951 (rational line-preimage); CDN23 line 2343–2349 (central type decomposition), line 2411–2416 (L-tensor invariants), line 2424–2473 (multiplicity comparisons), line 2658–2690 (integral pieces); COLMEZ19POIDS line 215–236 and line 328–340 (weight-change sequences and geometric consequence). No new external source was required. All five cited works, including TEI90, already have certified legal entries in `sources.toml`; the CDN20 entry's cited-for list now includes Exact supplier contracts. No text was inaccessible and no missing-reference request was created.

Before editing, read the main roadmaps `TauCetiRoadmap/CompactOperators/README.md`, `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md` and `TauCetiRoadmap/ComplexTori/README.md` for shape. The repair preserves the package's layers and targets. No new layer or generic construction was added.

Used `roadmaps show` at the supplied indexed heads and `roadmaps grep` by objects (continuous cohomology, Tate–Sen, logχ, Kirillov models, weight change, interpolated Banach duals, boundary sheaves), together with the available board packages and pinned sources. The following supplier sections resolve; lines refer to the underlying README, excluding the display banner emitted by `roadmaps show`.

| Supplier | Resolved input and ownership |
| --- | --- |
| PadicLocalLanglandsForGL2Qp | §§0.1–0.2, 1.1–1.4, 1.6–1.7, 2.5, 2.7, 3.1–3.8, 3.11, 4.1k, 4.2, 4.2a, 4.9, 4.11, 5.1–5.8, 5.12, 6.7, 6.9 retain the correspondence, categories, differential carriers, quotient, conditional comparison, blocks and type rings. §0.1 at line 205 supplies the radius-algebra owner; §6.9 at line 2311 retains trivial central character and global hypotheses. No second comparison with those same hypotheses is planned here. |
| EndoscopicTransferAndUnitaryTraceComparison | §§12.4, 12.5, 12.7, 12.14, 12.19 at lines 4623, 4652, 4704, 4860, 4962: tower, maps, actions, central quotient and arithmetic descent. Positive congruence levels and the separate bottom level agree with K_D. |
| LocallyAnalyticDistributions | §§0.0, 0.2, 0.3 at lines 891, 1081, 1344: general tensors, strict limits, analytic strong duals. The strict inverse-limit theorem at line 1124 requires its own Roos and Mittag–Leffler hypotheses; it does not verify them for the Galois cochain complex. |
| LocallyAnalyticDistributionsPartII | `packages/LocallyAnalyticDistributionsPartII/README.md` §§2.2–2.3, lines 213, 232, and radius contract at line 57. Closure notation and general p-valued Frommer theorem; radius construction belongs to the base. |
| LocallyAnalyticRepresentationsOfLocalGroups | `packages/LocallyAnalyticRepresentationsOfLocalGroups/README.md` §§0.3, 0.5, lines 164, 209: differentiated enveloping action and distribution integration. LR.0 is not a section there. |
| ProetaleCohomologyOfPAdicCurvesAndTowers | `packages/ProetaleCohomologyOfPAdicCurvesAndTowers/README.md` §§0.3–0.4, 6.2, 6.5, 6.9, 7.1–7.5: Steinberg objects, half-plane cohomology, components, semistable models, bounded-vector comparison and general-F multiplicity diagram. §7.5 at line 826 supplies the resolver's sole alleged missing citation. This package owns its fixed-level ℚ_p reading and subsequent Galois/Banach multiplicities. |
| PhiGammaModulesAndIwasawaCohomology | §§2.4, 5.4, 5.6a, 5.7 at lines 1158, 2345, 2453, 2494: 1−φ, analytic Iwasawa theory, differential equation and all-level exponential-image/generation input. The coefficient-extension nontriangulinity condition remains in the contract. |
| PadicHodgeTheory | §§3.3, 4.4, 5.1–5.4, 8.1 at lines 682, 894, 982, 999, 1016, 1044, 1378: periods, Sen/differential modules and comparisons. §4.4 contains the nilpotent logχ Sen example, but no strict H¹ tensor/Fréchet-limit theorem. The additional statement is now an explicit gap on this owner. |
| PadicDifferentialEquationsAndRigidCohomology | §§RD.1.73, RD.2.43 at lines 4055, 5283: residue pairing, perfectness and the nontrianguline connection application. Imported rather than reconstructed. |
| GL2AutomorphicRepresentationsAndTransfer | R16.1.8, R16.3, R17.3 (including R17.3.1, R17.3.5): full local finite-character prescription, rank-two local parameters, global transfer and multiplicity one. Full local prescription includes the uniformiser value needed to cancel the unramified twist. |
| CompletedCohomologyAndLocalGlobalCompatibility | §§2.7, 4.9, 6.4 at lines 935, 1719, 2275: quaternionic forms, definite compatibility and globalisation. Local residual absolute irreducibility and the initial unramified twist remain hypotheses. |
| HilbertModularVarietiesAndShimuraCurves | R18.5.3, R18.5.16, R18.5.21, R18.4.24a, R18.4.25, R18.3.29: formal model, rational/all-level uniformisation, semistable comparison, automorphic eigenspaces and early rank-two Galois compatibility. The last supplies the rank-two identification in addition to the automorphic comparison. |
| LocalGaloisDeformationRings | §3.8 at line 2367 imports the base's full-WD ring and compares it with fixed-type deformation quotients. No second type-ring construction is introduced here. |
| SmoothRepresentationsOfLocalGroups | SR.0, SR.2 and SR.3.2's cuspidal-splitting target resolve. The latter's complex coefficient scope leaves the existing characteristic-zero coefficient-extension gap necessary. |
| ScholzeFunctorAndModpCohomologyOfTheLubinTateTower | §5.4 at line 754 supplies finite length for O_L/ϖ_L^a and the admissible geometric Hom finiteness; p > 2 is retained. At p^k the exponent is a = e(L/ℚ_p)k; no unramified-coefficient restriction is introduced. |

The supplied overlaps snapshot has no conflicting head, dropped identifier or identifier defined only by an open revision. Its five closest roadmaps are included above. Ownership against the provided indexed open heads was checked; unprovided checkouts were not sought. The retained refinements concern embedded equalities, operator covariance, the extension in central character, and multiplicities/factorisation, rather than objects those suppliers already own. The new cohomological input is assigned to an earlier supplier and is not a duplicate target here.

At the pins, opened `Mathlib/Analysis/LocallyConvex/Bounded.lean:61` (boundedness is absorption of zero-neighbourhoods, without separation or local-convexity fields), its normed-space criterion at line 495, `Mathlib/Analysis/LocallyConvex/WithSeminorms.lean:659` and line 679 (the bound depends on the seminorm), and `Mathlib/Analysis/LocallyConvex/Barrelled.lean:164` (barrelled-source Banach–Steinhaus). Opened `Mathlib/RingTheory/Perfectoid/BDeRham.lean:75` and line 88: the period-ring carriers do not supply a Galois-representation period functor or the Drinfeld tower. Object searches in both pinned libraries find no Robba/Kirillov carrier, rigid Drinfeld tower, weighted locally analytic representation or BGG geometric operator; DG-category references to Drinfeld concern a different object.

## Validation and maintainer notes

- Required `lake env lean` elaboration, run from the pinned content checkout on `packages/PadicLocalLanglandsForGL2QpPartII/Suggested.lean`: exit 0, no output, no warnings. The file imports only Mathlib; no TauCeti object-file build was needed.
- Mechanical declaration/binder inventory: zero definitions, zero instances, zero theorems and zero examples. Consequently the required `#check @name` signature comparison is over 0 declarations; no binders can disappear and no Lean name was added, deleted or renamed. The module docstring inventories the weighted geometric headline without encoding a replacement carrier.
- Required movable dependency check: exit 0, output exactly:

      depcheck: 236 roadmaps, 2148 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line. The new gap names an existing earlier supplier and adds no supplier edge.
- `git diff --check`: exit 0. The plan was compared structurally with its original: only the top-level gaps list changed; its two existing gap objects remain unchanged. The added slug agrees exactly between plan and README.
- The design target catalogue outside its top-level gaps is read-only under this repair brief and retains its original formulations. The mathematical corrections are in the normative README; only the newly declared gap was added to the design.
- No gate failures beyond the listed findings were supplied. The citation resolver's ProetaleCohomologyOfPAdicCurvesAndTowers lead was resolved against its available board package, not treated as a missing owner.
- The remaining external obligation is gap:continuous-galois-tensor-comparison on PadicHodgeTheory §4.4, alongside the two pre-existing gaps. This report does not claim that adding a contract proves that theorem. No supplier file or merge-order file was edited, and no commit was made. No section identifiers or Lean names cited by downstream roadmaps changed.
