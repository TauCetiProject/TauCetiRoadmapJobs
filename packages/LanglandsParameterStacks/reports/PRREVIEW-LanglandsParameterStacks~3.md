# Review of LanglandsParameterStacks (pull request #1202 at 1e9f8e8)

**Verdict:** accepted

## R01 (P3) — Record source provenance in the missing manifest

**Location:** `TauCetiRoadmap/LanglandsParameterStacks/README.md:1326` (References); missing `TauCetiRoadmap/LanglandsParameterStacks/sources.toml`.

**Claim:** Previous R03 remains: the references have no source manifest recording stable work identifiers, version-dependent locators and retrieval provenance. The printed-pagination correction does not supply that record. This is a nonblocking P3 note under this review's acceptance rules.

**Witness:** The folder contains only `README.md`, `Suggested.lean` and `metadata.toml`. FS Proposition VIII.5.13 is on printed p.299, whereas its PDF page is 321 (FS line 11586).

**Exact repair:** Add the requested `tauceti-roadmap-sources/v1` manifest, one key per work, with target locators, version notes and source-service provenance. Preserve the earlier review's unavailable/uncertified statuses. For the concrete FS instance, record the author-hosted version, printed pp.299–301 and 308, associated with §§4.10 and 4.17. The legal source-service fetch in this review returned the text containing those exact numbered results; its checksum is `9ab9efbd0df251bfa3b610d1d1d88a8dfb1bdf7c397bd04f4c277280d98ae905`. Do not copy the source into the repository. No supplied repair report settles this finding as not actionable.

## Previous findings

- R01 — repaired: `README.md:1038` now assumes a possibly derived affine scheme of finite type, specifies the algebraic action and derived fibre, and distinguishes the comparison from the additional connectivity and generation conclusions.
- R02 — repaired: `README.md:1115–1118` computes the nonreduced centre's lengths, distinguishes the two coactions, and gives trivial versus regular `C₂`-cohomology dimensions. The identity-component comparison is corrected.
- R03 — not repaired: `README.md:1326–1328` retains a prose reference list with corrected pagination, but `sources.toml` remains absent. Recorded as this report's nonblocking R01.

## Verified sound

🤖 Independent AI review. This is an incremental re-review of 19 changed lines since `40c74a3`, not a new full review. All three previous findings were accounted for. I checked both changed mathematical passages, their nine Checks, the pagination sentence, the affected applications and suppliers, the gate, dependency direction and Lean elaboration. No P1 or P2 remains.

[R2]: packages/LanglandsParameterStacks/reports/PRREVIEW-LanglandsParameterStacks~2.md

[R2] is the previous review at `40c74a3`. Its unchanged numerical rows are explicitly carried forward below; they are not described as fresh computations. The 15 seeded targets in this brief remain covered by those rows. Of that sample, §4.16 is directly referenced by the changed §4.17 Check and was reopened against the source. The other 14 sampled passages are unchanged; their previous coverage is carried forward under the incremental-review instruction. There are no README locators marked unverified newly introduced by this diff.

### Source and mathematical verification of the repairs

The source service legally retrieved the linked author-hosted Fargues–Scholze text, identified here as FS. I opened Proposition VIII.5.13 and its proof, printed pp.299–301 (FS line 11614 through line 11676); Proposition VIII.5.17(v)–(vi), printed pp.307–308 (FS line 11969 through line 11983); and Remark VIII.5.18 with footnote 3, printed p.308 (FS line 11990 through line 11998 and line 12014 through line 12018).

- **§4.10:** The input now matches the source's possibly derived affine finite-type scheme. The two group-order assumptions occur before both conclusions; induced generation of the input and good-filtration connectivity are additional assumptions only for the second conclusion. The tensor product is explicitly in `Ind Perf(BG)`. The proof route's relative bar comparison, separated quotient, finite good-filtration amplitude and Borel flag agree with FS line 11630 through line 11676. The hypotheses retain derived fibres.
- **§4.17:** The nontrivial central character is a scheme-theoretic character of `μ₂`, although trivial on its sole geometric point. The chosen unipotent matrix has order two in `PGL₂` in characteristic two. Restriction of the character to that constant subgroup is trivial, so the positive cohomology survives in every degree. For the regular representation the periodic differential has equal one-dimensional image and kernel. This is the obstruction used in FS's remark, not a claim that every representation of the fixed group is generated.
- **Affected applications:** §4.11's sources `G^{2g}` and `G²` are affine of finite type, so the added hypotheses do not remove its surface or tame applications. For genus zero the source is a point and the derived unit self-intersection remains included. FS line 11677 through line 11686 explicitly gives these applications. §4.16 inherits solvability and prime-to-characteristic acting order from §4.14; the new characteristic-three control satisfies both, whereas characteristic two does not.
- **Pagination:** FS line 11586 and line 11587 give PDF page 321 versus printed page 299; FS line 11977 and line 11978 give PDF page 330 versus printed page 308. Thus the replacement by printed pagination fixes the false claim that the two page counts agree. No theorem number or citation was changed.

### Fresh adversarial computations

Here `L` is the coefficient field, and cohomology uses the README's cohomological indexing. The two changed numbered targets are expanded into individual Checks so that each new assertion has computed values. These computations test the statements; they do not purport to prove the general categorical theorems.

| Statement | Instances tried | Values on both sides / excluded model | Result and change |
| --- | --- | --- | --- |
| §4.10 theorem and Check 1 | Identity `G→G`; take a torus or `SL₂` | `L⊗ᴸ_{O(G)}O(G)=L=O({1})`; `H⁰=L`, other degrees zero. Both equivariant maps fix the unit. | Pass; affine finite type and tensor category now explicit. |
| §4.10 Check 2 | Multiplication `G×G→G`, including nonabelian `SL₂` | Fibre parametrized by `g↦(g,g⁻¹)`; tensor and fibre algebra both `O(G)`, higher Tor zero. Multiplication is projection after `(a,b)↦(a,ab)`, hence smooth. | Pass; derived and ordinary fibres agree in this flat instance. |
| §4.10 Check 3 | `G_m×A¹→G_m`, projection | Multiplication by `t−1` on `L[t,t⁻¹,x]` has kernel 0 and cokernel `L[x]`. Tensor and fibre both have `H⁰=L[x]`, `H⁻¹=0`. | Pass; verifies the repaired affine input. |
| §4.10 Check 4 | Constant unit `Spec L→G_m`, including characteristic 2 | The two-term differential becomes 0; derived tensor and fibre have `H⁻¹=L`, `H⁰=L`, others 0. Ordinary fibre has `H⁻¹=0`. Torus rational cohomology in positive degrees is 0, so this is connective for the good-filtration t-structure. | Pass; nonclassical fibre retained and induced generation applies. |
| §4.10 Check 5 | `G=1`; arbitrary permitted `Ã`, and `Ã=0` | `L⊗ᴸ_L Ã=Ã=O(X)`; for the empty affine input both sides are 0. For a discrete algebra, all nonzero cohomology is in degree 0. | Pass; no extra Tor. |
| §4.17 Check 1 / sampled §4.16 | Factor swap on `(SL₂×SL₂)/μ₂`, characteristic 2 versus 3 | Acting order is 2. In characteristic 2 it is not invertible; in characteristic 3 its inverse is 2. `P=C₂` is solvable in both cases. | Pass; only the characteristic-three instance satisfies §4.16. |
| §4.17 Check 2 | Central quotient `(μ₂×μ₂)/μ₂`, characteristic 2 | Ratio is unchanged by diagonal scaling. Coordinate ring `L[u]/((u−1)²)` has basis `1,u−1`, dimension 2. Reduced subgroup has dimension 1 as an algebra; identity component still has dimension 2. | Pass; reduction and identity component are correctly distinguished. |
| §4.17 Check 3 | Nontrivial and trivial central characters | Coactions give `v⊗u` and `v⊗1`; difference `v⊗(u−1)≠0`. Evaluation at the unique geometric point sends both to `v`. | Pass; excludes the pointwise-only model. |
| §4.17 Check 4 and obstruction | `U=[[1,1],[0,1]]`; trivial and regular modules for constant `C₂`, characteristic 2 | `U²=I`, `U≠I`. On `L`, both periodic differentials are 0, so dimensions are `1,1,1,…`. On `L[C₂]`, `d(a+bs)=(a+b)(1+s)`, image=kernel=`L(1+s)`, giving `1,0,0,…`. | Pass; first homotopy-invariants complex is not perfect, second is. |
| §4.11 application of repaired §4.10 | Torus commutator, genus 0 and 1 | Genus 0 gives `H⁰=L,H⁻¹=L`; genus 1 gives `H⁰=L[a±,b±],H⁻¹=L[a±,b±]`. Both have no positive cohomology; ordinary fibres would erase degree −1. | Pass; finite-type affine hypotheses hold, including genus 0. |
| §4.16 restriction conclusion referenced by the new Check | Inversion of `G_m` in characteristic 3 | `H=μ₂`; weights 0 and 1 restrict to the two characters `1` and sign. On `H°=1` both become a one-dimensional trivial module. | Pass; full fixed-group generation and connected generation remain distinct. |
| References pagination | FS pp.299 and 308 | PDF-minus-printed page differences are `321−299=22` and `330−308=22`, not 0. | Pass; printed pagination is the corrected convention. |

### Unchanged adversarial rows carried from R2

There are **81 unchanged numbered-target rows** below and **2 changed numbered targets** tested above: all **83** targets remain accounted for. Each row retains the previous instances and computed values and cites [R2]. The headline targets and all seeded targets are included.

| Statement | Instances | Computed values on the two sides / negative control | Result and provenance |
| --- | --- | --- | --- |
| 0.1 Restriction, sections and continuity of crossed cocycles | Negation of ℤ by C₂; inversion of ℚˣ; Γ=1; identity restriction | c(s²)=1−1=0, versus homomorphism value 2. Gauge of 1 by 2 is 4, versus 1/4 for the inverse convention. Gauge shifts by 2h, giving H¹=ℤ/2; H¹(1,H) has one element. | Carried from [R2]; unchanged. |
| 0.2 Condensed L-parameters | `q=3`, `ℓ=2`, tame coordinate `t∈ℤ₂` | `diag(3,1)(1+tE₁₂)diag(1/3,1)=1+3tE₁₂`; coefficients lie in the rank-one ℤ₂-module while inertia has infinitely many values. Over 𝔽₂, continuous compact-inertia image is finite. | Carried from [R2]; unchanged. |
| 0.3 Finite wild ramification | Unit cocycle on S₃ with prescribed projection identity; trivial coefficients; C₂ indiscrete | Section kernel is `{1}`, versus whole S₃ for cocycle-only kernel. Gauge leaves section kernel `{1}`. Trivial H,Q gives cutoff P. Indiscrete C₂ identity has image size 2 but kernel not open; noncompact discrete ℤ has open kernel and infinite image. | Carried from [R2]; unchanged. |
| 0.4 Discrete Weil models and the geometric degree | Arithmetic/geometric Frobenius, q=3 | Degrees `−1,1`; Tate values `3,1/3`. `σ⁻¹τσ=τ³` becomes `Fr τ Fr⁻¹=τ³`. Continuous extension fixes generator values, so two extensions have difference zero on a dense subgroup. | Carried from [R2]; unchanged. |
| 0.5 Wild inertial parameters | Split trivial dual cocycle; full Weil projection | Projected inertia image has size 1, whereas inertia in `Ĝ⋊W` projects onto the infinite inertia group. Requiring finite full image excludes the basic section. | Carried from [R2]; unchanged. |
| 0.6 Twisted wild centralizers | Unit cocycle, S₃ acting by conjugation on S₃ | Twisted fixed subgroup is `Z(S₃)={1}`; centralizer of the first-coordinate image `{1}` alone is S₃ of order 6. | Carried from [R2]; unchanged. |
| 0.7 The centre of the local Weil group | `𝔽₃((t))`, tame involution `t↦−t` | Difference on `t⁻¹` is `−2t⁻¹=t⁻¹`, pole order 1. An Artin–Schreier coboundary with a pole has pole order divisible by 3. Thus this automorphism acts nontrivially on H¹. | Carried from [R2]; unchanged. |
| 0.8 Wild enhancement groups | Cyclic cubic image in SO₃; dihedral image | Cubic centralizer is a torus T, so Sρ=T (not π₀(T)=1); dihedral centralizer gives C₂. The classical Sφ of the cubic torus-centralized extension is 1. | Carried from [R2]; unchanged. |
| 0.9 Extended wild inertial parameters | The preceding cyclic and dihedral cases | Cubic case: only trivial T-character comes from Sφ=1; dihedral case: trivial and sign characters of C₂ both occur. Conjugation transports the same character class. | Carried from [R2]; unchanged. |
| 1.1 ℓ-adic representability of finite-wild parameters | Split tame Gm, q=3 | Coordinate algebra `ℤ₂[a±,b±]/(b²−1)`; mod 2 it is `k[a±,ε]/ε²`. Replacing finite flat μ₂ by its reduced point loses ε. | Carried from [R2]; unchanged. |
| 1.2 Clopen finite-wild pieces | Trivial dual group; arbitrarily deep wild characters of a torus | Trivial dual gives one point in every cutoff and one point in the union; distinct conductor levels of wild characters give distinct clopen pieces, not one finite-type affine torus. | Carried from [R2]; unchanged. |
| 1.3 Weil cohomology: amplitude and Euler characteristic | Trivial one-dimensional ℚℓ module and its Tate twist | Dimensions `(H⁰,H¹,H²)=(1,1,0)` and `(0,1,1)`; Euler characteristics `1−1=0` and `−1+1=0`. Duality switches the two triples. | Carried from [R2]; unchanged. |
| 1.4 Unipotent classes and the Frobenius–tame dimension bound | Torus; SL₂; tame torus | Torus has one unipotent class; SL₂ has identity and nonidentity unipotent classes. Tame torus solution dimension is 1, equal to dim Gm; not the dimension 2 of an unrestricted pair. | Carried from [R2]; unchanged. |
| 1.5 Flat complete-intersection parameter schemes | Tame Gm over ℤ₂, q=3 | Relative dimension 1; absolute dimension 2; quotient-stack relative dimension `1−1=0`. Special fibre has ε²=0 despite flat rank-two μ₂. | Carried from [R2]; unchanged. |
| 1.6 DHKM and FS integral models | q=3 tame torus; inverse Frobenius | Both schemes have `b²=1`; generator coordinate `a` is replaced by `a⁻¹`. Relative/absolute dimensions are 1/2. | Carried from [R2]; unchanged. |
| 1.7 Faithfully flat descent for enhanced modules | k→k[ε]/ε²; nonflat reduction in reverse | First algebra is free of rank 2 and faithfully flat; reduction has `Tor₁(k,k)=k`, so it is not an instance of the flat theorem. The unit descends to k in the first case. | Carried from [R2]; unchanged. |
| 1.8 Derived parameter stacks | W=1, dual H; H=1 | Framed algebra is the base and quotient is BH; for H=1 the quotient is a point. Confusing the framed point with BH loses stabilizer H. | Carried from [R2]; unchanged. |
| 1.9 Classicality of the derived cocycle scheme | Tame torus relation versus a zero relation | `b^{q−1}−1` is a nonzero divisor in the integral Laurent polynomial ring, giving no negative homology. A derived zero locus of the zero function on k instead has H⁻¹=k. | Carried from [R2]; unchanged. |
| 1.10 Local Tate duality for Weil cochains | Trivial one-dimensional Weil module | RΓ has degrees 0,1; its Tate-twisted dual has nonzero degrees 1,2 before `[2]`, hence degrees −1,0 after it. The dual of the first complex likewise has degrees −1,0. | Carried from [R2]; unchanged. |
| 1.11 Cotangent complexes of parameter stacks | Trivial Gm parameter in characteristic zero | Tangent `RΓ(W,k)[1]` has H⁻¹=k (automorphisms), H⁰=k (unramified variation), H¹=0. Forgetting `[1]` puts these in degrees 0,1. | Carried from [R2]; unchanged. |
| 1.12 Lie invariants/coadjoint nullcone | gl₂/F₅, q=2; G_m over k[ε]/ε²; sl₂/F₂ | Degrees 1,2 give qᵉ−1=1,3, both invertible. E₁₂ gives (tr,det)=(0,0), diag(1,−1) gives (0,4). Torus invariant evaluated at ε is ε≠0 although its geometric value is 0. Characteristic 2 is excluded for A₁ since 2 divides r+1. | Carried from [R2]; unchanged. |
| 1.13 Weil–Deligne parameters | `N=E₁₂`, geometric Frobenius diag(1/3,1) | Conjugation gives `(1/3)E₁₂`, matching `q⁻¹N`; the arithmetic matrix diag(3,1) gives `3E₁₂`. Torus has N=0. | Carried from [R2]; unchanged. |
| 1.14 Quasi-unipotence and nilpotent logarithm/exponential | E₁₂; N=E₁₂+E₂₃ over ℚ₂; killed finite-order inertia | exp(E₁₂)=1+E₁₂. For N³=0, exp(N)=1+N+E₁₃/2; log(1+N)=N−E₁₃/2. Logarithm of the identity is 0. The coefficient 1/2 is not integral in ℤ₂. | Carried from [R2]; unchanged. |
| 1.15 Monodromy and the Weil–Deligne comparison | U=1+E₁₂, power m | `log(U^m)=mE₁₂`, hence `m⁻¹log(U^m)=E₁₂`; replacing m by 2m leaves N unchanged. For the length-three ℚ₂ example coefficient −1/2 is not in ℤ₂. | Carried from [R2]; unchanged. |
| 1.16 Singularities of parameter stacks | Tame Gm, q=3; smooth point; nodal GL₂ chart | At char 2 trivial torus parameter, singularity fibre is k but nullcone is `{0}`; in char 0 fibre is 0. At a smooth chart H⁻¹(L)=0. For `uv=0` the residual module has nonzero hypersurface operator support, with obstruction direction nilpotent. | Carried from [R2]; unchanged. |
| 1.17 Hochschild operators and singular support of parameter complexes | Smooth `k[x,y]` in char 0; node `k[x,y]/xy` | Smooth case `H¹(L∨)=0`, but `HH²=B·(∂x∧∂y)≠0`. Node residue-field Ext persists in arbitrarily high degrees; a finite projective module has Ext above degree 0 equal to 0. | Carried from [R2]; unchanged. |
| 1.18 Nilpotence of singularity fibres | gl₂ over 𝔽₅ with q=2; Gm over 𝔽₂ with q=3 | Degrees 1,2 give factors 1,3; `E₁₂↦(0,0)`, `diag(1,−1)↦(0,4)`. Torus excluded factor `3−1=0` permits nonzero singularity covectors. | Carried from [R2]; unchanged. |
| 2.1 Coarse parameter quotients | Scaling Gm over 𝔽₂; sign action on ℤ[x]; U in SL₂ | Coaction invariants are 𝔽₂, while invariants under Gm(𝔽₂)=1 are 𝔽₂[x]. Sign reduction maps `𝔽₂[x²]→𝔽₂[x]`, missing x. U and 1 both have trace 2 and determinant 1. | Carried from [R2]; unchanged. |
| 2.2 Reductive quotients over fields and DVRs | Weights 1,−1 on k[x,y]; dual-number thickening | Invariants k[xy]; fibre xy=0 has two punctured orbits but one closed orbit, the origin. For trivial action on k[ε]/ε², invariant algebra remains k[ε]/ε², not k. `D(xy)//G=D(xy)` in the quotient. | Carried from [R2]; unchanged. |
| 2.3 Complete reducibility and strong reductivity | Diagonal torus and upper unipotent subgroup of GL₂ | Torus representation splits as two characters: CR true, irreducible false. Nontrivial unipotent extension has invariant line without complement: CR false. | Carried from [R2]; unchanged. |
| 2.4 Closed tuples and Levi semisimplification | Tuple U in SL₂; diagonal semisimple tuple | `diag(t,t⁻¹)Udiag(t⁻¹,t)=1+t²E₁₂→1`; U-orbit not closed. A diagonal semisimple tuple has a closed orbit. | Carried from [R2]; unchanged. |
| 2.5 Semisimple L-parameters | Γ=ℤ, SL₂, U versus 1; torus | U has nontrivial extension and semisimplification 1; 1 is semisimple. In a torus every character is semisimple. | Carried from [R2]; unchanged. |
| 2.6 Closed parameter orbits | Same U and 1; inversion-twisted Gm | U and 1 share coarse point; only 1 is the closed representative. Twisted gauge is `t↦h²t`; over algebraically closed k every nonzero t lies in one orbit, including char 2 on geometric points. | Carried from [R2]; unchanged. |
| 2.7 Finite free-group indexing | F₀; F₁⊔F₁; inversion-twisted product | Rank-zero object maps uniquely to every object; coproduct rank is 2. With first projection inversion and values 2,3, cocycle multiplication gives `2·3⁻¹=2/3`, not 6. | Carried from [R2]; unchanged. |
| 2.8 Derived free-cocycle presentations | W=Fₙ; W=1 | Terminal identity tuple evaluates colimit to O(Hⁿ); for W=1 both algebras are the base with no negative homology. | Carried from [R2]; unchanged. |
| 2.9 Excursion algebras of a discrete group over a finite quotient | H=Gm, Γ=ℤ, trivial/inversion projection; H=1 | Trivial action gives `ℤℓ[t±]`; inversion gauge weight 2 gives invariant algebra ℤℓ even at ℓ=2; H=1 also gives the base. | Carried from [R2]; unchanged. |
| 2.10 The universal excursion relations | Laurent coordinate; S₃ word order | `t·t⁻¹=1`; empty product 1. `(12)(23)=(123)` and `(23)(12)=(132)` differ, so unordered fibre multiplication fails. | Carried from [R2]; unchanged. |
| 2.11 Continuous torsion-free excursion characters | Tame torus, q=3, ℓ=2 | `ℤ₂[a±,b]/(b²−1)` is torsion-free, so removal changes zero elements. Its mod-2 nilpotent `b−1` does not mean integral 2-torsion. | Carried from [R2]; unchanged. |
| 2.12 Categorical Hecke data | Empty legs; zero category | Γ⁰ is trivial and T₁=id; zero category centre is the zero ring with `1=0`, giving its unique datum. | Carried from [R2]; unchanged. |
| 2.13 Excursion data | Unit α,β; α=0; scalar external products | Operators are respectively 1,0 and `2·3=6`, not 5. Reindexing on compatible tuples preserves those values. | Carried from [R2]; unchanged. |
| 2.14 Excursion matrix coefficients | Same scalar data; Gm two legs folded to one | Coefficients 1,0,6 agree with operators. Bi-invariant two-leg algebra is `R[t±]`, one-leg algebra R; folding sends t to 1. With zero category the right-hand maps are singleton maps, so the square cannot be a pullback. | Carried from [R2]; unchanged. |
| 2.15 Abstract excursion centre maps | Gm, Γ=ℤ; zero category | Laurent generator maps to the invertible standard-character operator u, inverse to u⁻¹, and 1 to 1. In zero centre all images are 0=1. | Carried from [R2]; unchanged. |
| 3.1 Algebra trace pseudocharacters and determinant laws | Rank 0,1,2; char 2 | Rank-zero law is 1 with trace 0; rank-one law is multiplicative linear. Rank-two over ℚ has `(T(x)²−T(x²))/2=D(x)` and T(1)=2. Mod 2 ranks 0 and trivial 2 both have trace 0, degrees 0 and 2 differ. | Carried from [R2]; unchanged. |
| 3.2 Pseudocharacters with prescribed finite projection | Γ=1; Q=C₂ inversion, trivial η and generator 2 or 1/2 | Component idempotents evaluate to 1 on η and 0 elsewhere. Connected invariants distinguish 2 from 1/2, whole-J invariants identify them. Over the zero ring 0=1, so the README correctly restricts its separating Check to nonzero rings. | Carried from [R2]; unchanged. |
| 3.3 Reconstruction for groups with reductive identity component | SL₂ unipotent; H=1; GL₂ in char 2 | U reconstructs as 1; H=1 reconstructs precisely η. Trivial rank-two determinant still has characteristic polynomial `(T−1)²`, despite zero trace. | Carried from [R2]; unchanged. |
| 3.4 Relatively discrete Weil continuity | Unramified Gm character with Frobenius 2 over ℚ₃ | Inertia image `{1}` lies in rank-one ℤ₃-module; full Weil image `{2ⁿ}` need not be finite. | Carried from [R2]; unchanged. |
| 3.5 Discrete-coefficient Weil continuity | Finite C₂ character into kˣ, char≠2; constant evaluation | Nontrivial character kernel has index 2 and open kernel in the finite topology. Constant class functions alone have full kernel and cannot detect that character. | Carried from [R2]; unchanged. |
| 3.6 Continuous semisimple parameter characters | Gm characters; U and 1 | For Gm, evaluation at generator recovers the same unit a on both sides. U and 1 yield the same invariant family; restricting the parameter side to semisimple classes gives one class. | Carried from [R2]; unchanged. |
| 3.7 Group-algebra trace adapter | Linear combination `2[γ]−[δ]`, trivial rank-two representation | Trace extension is `2τ(γ)−τ(δ)`; trivial τ=2 gives 2. Its value at `[γδ]` is 2, but product of trace values is 4. | Carried from [R2]; unchanged. |
| 3.8 Trace and excursion character comparison | GL₂ U and identity; trivial rank 2 mod 2 | Both traces are 2 in char 0; mod 2 both are 0. Rational Newton identities recover determinant coefficients; division by 2 has no inverse in 𝔽₂. | Carried from [R2]; unchanged. |
| 3.9 Parameters of Schur objects | Simple one-dimensional object; sum of two inequivalent simples; zero object | End rings L, L×L,0; only first has specified L-algebra isomorphism to L. | Carried from [R2]; unchanged. |
| 4.1 Highest-weight modules and good filtrations | GL₂ lower B; SL₂ char 2; torus | Dimensions ∇(1,0)=2, ∇(0,−1)=2, ∇(0,1)=0. In char 2, ∇₂ has dimension 3 and its Frobenius-twist submodule dimension 2, with quotient dimension 1. Torus good-filtration dimension is 0; O(Gm) has infinitely many weights. | Carried from [R2]; unchanged. |
| 4.2 Good-filtration t-structures | Torus V in degree 0 and V[−1]; C₂ char 3 | H¹(V)=0 but H¹(V[−1])=V≠0; first connective, second not. `Ind₁^{C₂}1=1⊕sign`, whereas sums of trivial representations miss sign. | Carried from [R2]; unchanged. |
| 4.3 Separatedness of good filtrations | Nonzero torus weight λ with dual test | `H⁰(Gm,k_λ⊗k_{−λ})=k`, so it cannot be infinitely connective; the zero object gives 0 in every degree. | Carried from [R2]; unchanged. |
| 4.4 Good filtrations of free cocycle algebras | F₀; F₁ and Gm | Algebras k and k[t±]; conjugation weights all zero and rational Hⁱ for i>0 is 0. Filtration `0⊂k⊂k⊕k(1)` has factors weights 0,1. | Carried from [R2]; unchanged. |
| 4.5 Perfect complexes generated from the classifying stack | G=1; X=point; bad PGLℓ adjoint quotient | First gives Perf(A); second Perf(BG). For bad PGLℓ, the unit skyscraper is absent from induced image although present in Perf(G/G). | Carried from [R2]; unchanged. |
| 4.6 The induced-perfect bar criterion | G=1, M=A | Augmented bar complex contracts to A; `M⊗_A M∨=A` as well. For the excluded PGLℓ skyscraper the comparison fails, rather than proving all objects induced. | Carried from [R2]; unchanged. |
| 4.7 Tensor-connectivity criterion for induced perfectness | A and N connective, torus; N=k in degree 0 | `A⊗_A N=N`; higher positive cohomology 0. Replacing N by k[−1] gives H¹=k, violating the premise. | Carried from [R2]; unchanged. |
| 4.8 Adjoint perfect generation and its prime restriction | SLₙ, PGLℓ, Gm | Fundamental-group torsion orders 1,ℓ,1 respectively (π₁(Gm)=ℤ). PGLℓ unit skyscraper lies outside induced image; no such obstruction asserted for the other two. | Carried from [R2]; unchanged. |
| 4.9 Twisted free-group perfect generation | F₀,F₁; torus inversion | Rank-zero quotient BG; rank-one ordinary quotient G/G. Inversion on Gm gives transitive action with stabilizer μ₂, so quotient is Bμ₂ on that component. | Carried from [R2]; unchanged. |
| 4.11 Surface and tame relation fibres | Abelian torus commuting relation, q=3 | Ordinary tame equation `b²−1=0`; mod 2 it is `(b−1)²=0`. A commutator relation on a torus is identically 1 and its derived unit fibre has a nonzero exterior degree −1 class. | Carried from [R2]; unchanged. |
| 4.12 Prime-to-ℓ components of fixed groups | Inversion C₂ on Gm in char 3 versus char 2 | Fixed μ₂ has two reduced points in char 3; in char 2 coordinate ring `k[ε]/ε²`, tangent dimension 1. | Carried from [R2]; unchanged. |
| 4.13 Cyclic fixed-locus resolutions | Swap on Gm²; inversion on Gm | Swap fixed group diagonal Gm; inversion fixed equation `t²−1`, differential at 1 is multiplication by 2 (invertible in char 3, zero in char 2). | Carried from [R2]; unchanged. |
| 4.14 Solvable fixed groups as Donkin subgroups | Swap on K²; torus | Restriction of ∇λ⊠∇μ to diagonal is ∇λ⊗∇μ; for torus weights a,b it is weight a+b, again good. | Carried from [R2]; unchanged. |
| 4.15 Fixed-group induction and good counit kernels | Gm, inversion, char 3, H=μ₂ | Sign induction consists of odd Laurent monomials; counit is sum of coefficients at t=1. Kernel includes `t³−t≠0`, both terms sign under H, so it has a good H° filtration. Identity-action counit kernel is 0. | Carried from [R2]; unchanged. |
| 4.16 Generation by restriction to fixed groups | Same μ₂ fixed subgroup | Gm weights 0 and 1 restrict to trivial and sign, the two simples of μ₂; restriction to H°=1 gives only the underlying vector spaces. | Carried from [R2]; unchanged. |
| 4.18 Fundamental groups of solvable fixed groups | Inner involution of SL₂ and factor swap on PGL₂² over F̄₃; P=1 on G_m | Inner fixed group G_m: π₁ changes 0→ℤ, torsion orders 1→1. Factor swap: torsion orders 4→2, both prime to 3. Identity on G_m keeps π₁=ℤ, torsion order 1. | Carried from [R2]; unchanged. |
| 4.19 Sifted parameter mapping approximations | One point; two points; bad PGLℓ circle | One-point value Ind Perf(BG); two-point value its tensor square. Bad PGLℓ circle image excludes the unit skyscraper. | Carried from [R2]; unchanged. |
| 4.20 Free-group gerbe comparisons | F₀; Gm,F₁; PGLℓ,F₁ | Rank-zero module algebra k, comparison identity. Torus rank-one algebra k[t±] and comparison an equivalence; bad PGLℓ has missing skyscraper. | Carried from [R2]; unchanged. |
| 4.21 Solvable wild gerbe elimination | P=1; C₂ inversion on Gm in char 3 | P=1 leaves the band unchanged. Inversion produces band μ₂ with identity component 1 and component order 2 prime to 3. No-section component contributes the zero category. | Carried from [R2]; unchanged. |
| 4.22 Tame reduction of finite-wild parameter categories | Trivial wild group and tame Gm | Parameter algebra `k[a±,b±]/(b^{q−1}−1)`; perfect equivariant modules are graded perfect modules over it, generated by character twists. π₁ torsion is zero. | Carried from [R2]; unchanged. |
| 4.23 Very-good and reductive-pair centralizers | SL₂ versus GL₂, U, char 2 | SL₂ centralizer ring `k[a,b]/(a²−1)=k[ε,b]/ε²` is nonsmooth. GL₂ centralizer `k[a±,b]` is smooth. Lie(Gm)=k is abelian, not semisimple. | Carried from [R2]; unchanged. |
| 4.24 Descent of étaleness to reductive quotients | Double cover t=u² in char≠2 at u=0 | Inertia C₂; without quotient ramification index 2 and derivative 0. Quotient by full C₂ gives k[t]→k[t], index 1 and derivative 1. | Carried from [R2]; unchanged. |
| 4.25 Formal quotient slices over coefficient DVRs | Left translation of G on G; trivial action with nontrivial G, excluded; μ₂ in char 2 | Translation stabilizer is 1 and the formal quotient is a point. A trivial action has stabilizer G≠1 and is excluded. At 0, μ₂ has one geometric point but coordinate length 2, so pointwise triviality cannot replace scheme-theoretic triviality. | Carried from [R2]; unchanged. |
| 4.26 Integral Chevalley restriction for Levi groups | GL₂ and SL₂ | GL₂ invariants `k[s,p±]`, with `s=t₁+t₂,p=t₁t₂`; SL₂ invariant `t+t⁻¹`. Lie GL₂ instead has noninvertible determinant coordinate, `k[s,p]`. | Carried from [R2]; unchanged. |
| 5.1 Integral invariant comparison in `Ind Perf(BĤ)` | Trivial H; torus | H=1 gives base algebra; torus rational higher invariants vanish and invariant algebra is the whole cocycle algebra for trivial action. Bad PGLℓ obstruction persists outside the hypotheses. | Carried from [R2]; unchanged. |
| 5.2 Cohomology vanishing and invariant base change | Tame torus q=3 from ℤ₂ to 𝔽₂ | Rank-two factor `ℤ₂[b]/(b²−1)` becomes `𝔽₂[ε]/ε²` of dimension 2; invariants on both sides are the whole factor. Reduction does not yield dimension 1. | Carried from [R2]; unchanged. |
| 5.3 The three excursion comparisons | Torus; bad-prime general case | Torus comparison kernel 0 and map identity. As a negative control in characteristic 2, `k[t²]→k[t]` is a universal homeomorphism with one geometric point per fibre but misses t; geometric bijectivity alone does not imply a ring isomorphism. | Carried from [R2]; unchanged. |
| 6.1 Universal representation bundles | Gm weight 1, inverse weight, zero representation | Fibres carry characters t,t⁻¹ and zero module of rank 0. Tensor of weights 1 and −1 has weight 0; dual reverses weight. | Carried from [R2]; unchanged. |
| 6.2 Perfect generation on parameter stacks | W=1; tame torus; bad PGLℓ | W=1 gives Perf(BH). Torus gives graded perfect modules generated by character twists. Bad PGLℓ unit skyscraper is not generated. | Carried from [R2]; unchanged. |
| 6.3 Parameter `Ind Perf` module comparison | W=1; H=1; tame Gm | W=1 algebra is unit, so unit-modules give Ind Perf(BH); H=1 parameter stack is a point. Tame torus gives modules over its coordinate algebra with Gm-grading retained. Forgetting grading identifies distinct weights 0 and 1. | Carried from [R2]; unchanged. |

### Gate, dependency direction and Lean

The worker's supplied gate at `1e9f8e8` passes, including `build=0`. My independent gate returned:

```text
gate LanglandsParameterStacks: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The requested independent dependency check returned:

```text
depcheck: 205 roadmaps, 1463 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The citation resolver checked main `fa41b37` and the supplied index of 437 open roadmap pull requests: no unresolved cross-roadmap citation or own Lean name. Its output does not check external Lean names; the pinned declarations below were opened separately.

`lake build TauCetiRoadmap.LanglandsParameterStacks.Suggested` completed successfully (8976 jobs). Direct `lake env lean` elaboration of `TauCetiRoadmap/LanglandsParameterStacks/Suggested.lean` completed with exit code 0 and no warnings. Lean commands were run one at a time.

`Suggested.lean` is unchanged, with one `import Mathlib` and **0 declarations**. Consequently the signature `#check @name` audit and one-tactic padding probe each have **0 subjects**; there are no missing binders or padding declarations to probe. No Tau Ceti prerequisite object build was needed.

### Headline coverage and pinned interfaces

The unchanged headline inventory is: coarse semisimple classification (§§2.6, 3.6), categorical excursion centre (§2.15), equivariant integral comparison and invariant base change (§§5.1–5.2), perfect generation (§6.2), and the enhanced module comparison (§6.3). The docstring also names the intermediate ramification, cohomology/duality, singular-support, reconstruction and good-filtration/fixed-group milestones. [R2]'s assessment of unavailable carriers is carried forward. The edits introduce no new headline that can be stated against the pins.

I reopened these **3 pinned declarations** to distinguish the existing interfaces from the derived scheme and representation categories used by the repairs:

| Pinned file and line | Declaration and boundary |
| --- | --- |
| `Mathlib/AlgebraicGeometry/GammaSpecAdjunction.lean:608` | `AlgebraicGeometry.Spec.homEquivAlgHom` identifies ordinary affine maps over a base with algebra maps in the opposite direction; it does not construct a derived fibre in `Ind Perf(BG)`. |
| `Mathlib/RingTheory/Extension/Cotangent/Basic.lean:61` | `Algebra.Extension.cotangentComplex` is a linear map from a presentation's cotangent module to its cotangent space, rather than the enhanced animated object. |
| `TauCeti/GroupTheory/FixedSubgroup.lean:58` | `TauCeti.fixedSubgroup F = F.eqLocus (MonoidHom.id G)` is an abstract subgroup on a `Group` carrier. It does not retain the scheme-theoretic nonreduced centre. |

Object searches at both pins for good-filtration and induced-perfect carriers found no corresponding declaration that turns these repairs into short native headline signatures. No new fully qualified name is declared, so no Lean-name collision is introduced.

### Suppliers, ownership and affected dependencies

I used `roadmaps grep`, `roadmaps show`, the supplied main checkout, board packages and the supplied open-roadmap index to search for derived unit fibres, induced-perfect generation and the fixed-group central-character obstruction. Broad “derived unit” matches concern adjunctions or derived splinters, not this fibre theorem. No second owner of either changed target was found. The unchanged ownership audit is carried from [R2]; this round checked the repaired passages and their interfaces, not every unrelated open roadmap.

The following **7 supplier-contract rows in 3 roadmaps** were checked on main, rather than substituting an open revision for main:

| Supplier file | Locator read and what it supplies |
| --- | --- |
| `TauCetiRoadmap/ReductiveGroupsPartII/README.md:6724` | RG2.5.1–RG2.5.2 (the latter at line 6931): integral dual group, pinned action and L-group. It leaves parameter spaces to their owner. |
| `TauCetiRoadmap/ReductiveGroupsPartII/README.md:3188` | RG2.2.3: finite invertible-order fixed groups, smooth with reductive identity component. The characteristic-two counterexample is outside this hypothesis. |
| `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:1436` | E5 abstract: monoidal algebras, relative tensor and stable categorical operations used in the generation argument. |
| `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:1593` | E5 presentability: Ind/compact comparisons and presentable-category operations. |
| `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:1896` | E5 animation, including modules at line 1994: animated rings and derived scalar extension. Homological `π₁` is cohomological degree `−1`, agreeing with the new Tor Check. |
| `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:840` | E1.8: enhanced quasicoherent and perfect complexes, including affine comparison. |
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:3959` | §2.18: ordinary derived quasicoherent complexes, tensor, pullback and perfect duals, underlying the enhanced supplier. |

Internal inputs §§4.1, 4.3, 4.6 and 4.8 remain the good-filtration, separatedness, bar and adjoint-generation results required by §4.10. The proof in FS uses these in that direction. Sections 4.14–4.16 still impose the solvable prime-to-characteristic hypothesis; §4.17 supplies its negative control. No supplier was added or moved, and no declared supplier gap is involved.

The shape comparison used the main copies of `TauCetiRoadmap/SchubertGeometry/README.md` and `TauCetiRoadmap/NilpotentOrbits/README.md`. The repairs retain prose statements, exact locators, dependencies and explicit Checks. The PR head matches the requested hash; both the incremental diff and `origin/main...HEAD` scope check show no changes outside the roadmap folder. The review changed no PR file.

## Not verifiable

No changed statement remains unverifiable: FS was legally retrieved and the relevant numbered passages were read.

The unchanged primary-source limitations in [R2] remain limitations, not fresh certifications: Jantzen's second-edition page locators (bibliographic lookup without legal full text); Lusztig 1976, Haboush 1975, Kempf 1976/1978 and Donkin 1981/1985 (publisher/JSTOR records without accessible full text); Richardson 1988 (Project Euclid record without a PDF returned by the service); and Koppinen 1984 (Wiley request returned HTTP 403). These were not requested again in this incremental review. Their detailed locators and the accessible secondary statements checked previously are recorded in [R2].

## Source issues

- none
