# Repair report

## F01 (P1) — applied

§9.4: full Z₂ sum → marked normalized pullback–trace with L∩H_m=0. Updated its algebraic comparison, continuous frames, integrality route, Checks, dependencies, downstream contract, §5.3 distinction and Lean docstring. P20 line 2622, 2760–2774 and 2884–2907 support the construction. At p=3,5 the constant values are 3,5, whereas Z₂ gives 4,6.

## F02 (P1) — applied

Unowned Lang input → import ReductiveGroupsPartII §RG2.3.7, ordinary `Lang.lang_surjective`, in ownership, exact contracts, §8.4 Needs and Layer 8 Dependencies. Specialized to smooth geometrically connected finite-type SL₂/𝔽_p. Added both conjugacy directions and the disconnected order-two negative control. The supplier is at merge-order line 25; this package is at line 276.

## F03 (P3) — applied

“Normalized Hasse–Witt matrix equal to the identity” → auxiliary bijective p-linear block B=I, distinguished from A(0)=0 and A(t)≡(t_ij). Retained the unitary frame equation and added the zero-block Check. Evidence: K75 line 1673–1700 and Y16 line 2061–2069.

## F04 (P3) — applied

§8.3 locator: internal p.63, CG20 line 2469 → proof of Theorem 8.11, internal p.62 (journal 862), CG20 line 2458–2460. The old line is the next-page marker. The field-general unipotent/interpolation argument and both Lean signatures are unchanged.

## Checks and signature audit

- Required elaboration: ran `lake env lean` on the absolute pathname of `packages/AlgebraicModularFormsAndSerreWeightsPartII/Suggested.lean` from the content checkout. Exit 0. Diagnostic: line 62, column 8 of `packages/AlgebraicModularFormsAndSerreWeightsPartII/Suggested.lean`, “warning: declaration uses `sorry`”. No errors or other warnings. Both individual Tau Ceti object files were available; no targeted build was necessary. No Lean process remains running.
- Elaborated one scratch copy with `#check @TauCetiRoadmap.AlgebraicModularFormsAndSerreWeightsPartII.standardSL2` and `#check @TauCetiRoadmap.AlgebraicModularFormsAndSerreWeightsPartII.smallSymmetricPower_irreducible`. Exit 0, the same one expected sorry warning. Compared every binder with README §8.3; none was lost or changed. The only Lean edit is the missing-carrier description of the marked Klingen headline.
- Required dependency command, including `--movable`: exit 0, with exactly this output:

    depcheck: 51 roadmaps, 589 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line. No order-file edit was made.
- Citation resolver: exit 0; no cross-roadmap citations or Lean names found nowhere, against main 86e155c and the supplied open-head index. Its diagnostic says it did not inspect external library names; those were checked directly at the pins below.
- Final file checks: `git diff --check` exited 0; TOML parsed, the eight lifetime source keys are unique, all eight gap sentences exactly match the plan, and both acceptance names occur in the README. The 48 target subsections and nine Examples/Dependencies pairs remain. No machine paths occur in the edited package text or report.
- No additional gate failures were listed in the brief. The four review findings are all applied; none is a request for Lean padding, a disputed claim or an external decision.

The elaborated types, suppressing only generated instance names, are:

```lean
standardSL2 (p : ℕ) (k : Type) [Field k] [CharP k p] :
  Representation k (Matrix.SpecialLinearGroup (Fin 2) (ZMod p)) (Fin 2 → k)
smallSymmetricPower_irreducible (p : ℕ) [Fact p.Prime]
  (k : Type) [Field k] [CharP k p] (d : ℕ) (hd : d ≤ p - 1) :
  Representation.IsIrreducible ((standardSL2 p k).symmetricPower d)
```

The prime assumption belongs to the theorem; the adapter itself also makes sense in characteristic zero with p=0. Every characteristic-p coefficient field is quantified, including scalar extensions, so the theorem expresses absolute irreducibility. The unchanged headline is substantive: the native symmetric-power action is available, but its small-degree irreducibility over the finite prime-field group is not a definition or a direct library theorem. Geometric headlines remain expressly unstatable without their integral Siegel, Hodge/BT₁, stratum, correspondence or Igusa carriers. No surrogate theorem or auxiliary declaration was added.

## Pattern, sources and ownership

The F01 search covered every occurrence of Z₂, ordinary U, Klingen, normalization and trace in the package README, Lean file and manifest. The geometric identification occurred in §9.4 and the downstream contract; the ambiguous bridge in §5.3 also changed. The spherical formal definitions and congruences in §§5.3–5.7 and §§7.6–7.7 retain their p+1 sum. Their worked examples were recomputed below. Layer 9 Dependencies now exposes the trace, boundary and integral model inputs of §9.4. The existing parahoric, trace-ideal, lci and full-frame gaps cover these prerequisites; no extra general construction was assigned elsewhere.

The F02 search covered Lang, conjugacy, frame changes and every use of §8.4, including the exceptional weight in §8.7. The general Lang theorem is imported, not restated as a new target. The specialization is legitimate: SL₂ is the finite-type hypersurface ad−bc=1; its differential has coefficients (d,−c,−b,a), which cannot all vanish on that hypersurface. Geometrically, the dense chart a≠0 is 𝔾_m×𝔸², and the complementary chart a=0 has bc=−1 and dimension two. Thus SL₂ is smooth and geometrically connected of dimension three, also at p=2. The Lang equation uses ordinary Frobenius; the unitary fixed group is identified afterward by conjugation.

The F03 search found the identity/Hasse–Witt confusion only in §8.4. The rank-one crystalline basis, toric Hasse identity, BT₁ Hasse–Witt maps and logarithmic de Rham gap concern different blocks and remain valid. The F04 search found the incorrect p.63/line-2469 locator only in §8.3; the other pp.62–63 citations cover the geometric proof actually on those pages.

All eight source entries were readable in the supplied legal cache. No additional source or missing-reference request was needed. P20 retains its one lifetime key; its locator now includes §§10.1–10.4, pp.57–63, including Lemmas 10.3.2–10.3.4. The author-version and Y16 v5 numbering were used; no claim is made about later journal renumbering. Source evidence for the changed mathematics was read directly:

| Claim | Evidence opened |
|---|---|
| Marked subgroup, projections and compactified factors | P20 line 2618–2628, 2643–2650, 2668–2703 and 2716–2750 |
| Normalized trace and its ordinary branch equations | P20 line 2754–2774 and 2800–2841 |
| Determinant normalization and action | P20 line 2842–2907; especially 2884–2888 |
| Degree-zero integral structure | P20 line 4094–4103; the assertion concerns degree zero, not arbitrary higher cohomology |
| Formal spherical Z₂ and its UZ identity | CG20 line 2306–2346; the formal U notation is distinguished at CG20 line 1361–1367 |
| Auxiliary bijective block and superspecial Hasse–Witt origin | K75 line 1673–1700; Y16 line 2061–2069 |
| Exceptional vector coefficient and admissible frame route | Y16 line 2123–2141; the normalized unitary frame argument is supplied here using Lang |
| Finite SL₂ irreducibility assertion | CG20 line 2458–2460; line 2469 is the page marker |

Read the main-branch shapes in `TauCetiRoadmap/AlgebraicVectorBundles/README.md`, `TauCetiRoadmap/ModularForms/README.md` and `TauCetiRoadmap/SchemeAndStackFoundations/README.md`. The repair preserves the nine layers and their Examples/Dependencies, prose APIs and discriminating Checks. It neither replans the parent nor adds a generic foundation.

Every supplier citation in the README was resolved against main or the supplied open head. The following are the sections whose actual statements were read; extension requests remain conditional contracts rather than claims of supplied theorems.

| Supplier copy | Sections and contract verified |
|---|---|
| AlgebraicModularFormsAndSerreWeights, supplied open head | R15.1–R15.6: genus-one forms, sheaf-first coefficients, Hasse/theta and residual witnesses |
| AlgebraicVectorBundles, main | L0A–L0C: tensor/dual, finite locally free and polynomial operations |
| ModularForms, main | Layer 2: finite double cosets, degree and elementary divisors, with the stated congruence-level boundary |
| ClassicalArithmeticCompletion, main | §1.17: nonzero binary form count 1+(Δ/p), separately p+1 for the zero form |
| AutomorphicBundles, supplied open head | B2.1; B3.2–B3.4, B3.10; B4.19–B4.20; B5.10–B5.11, B5.14–B5.15, B5.19: actual bundles, boundary tensor sequence, arbitrary coefficients, component detection and rational Hecke transports |
| ShimuraCompactifications, supplied open head | C3.8–C3.9; C5.3–C5.4, C5.10, C5.12, C5.16–C5.17, C5.23: refinements, spherical models/charts, logarithmic Kodaira–Spencer, minimal Stein identity, ampleness and arbitrary-coefficient Koecher |
| AbelianSchemesAndArithmeticModuli, supplied open head | A4.3, A4.7, A4.9–A4.11: smooth-base connection, polarized deformation equivalences, ordinary coordinates and weighted Frobenius; the three genus-two extensions remain gaps |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory, supplied open head | R07.2.2, R07.2.21–R07.2.23: constant-rank filtration, determinant LF, exact complexes and odd-prime polarization compatibility |
| HodgeTateAndCanonicalSubgroups, supplied open head | §§0.12, 0.14–0.16, 5.1–5.2: lattice-first normalization, semiabelian Hasse and Hilbert Igusa torsors; no full genus-two GL₂ torsor inferred |
| SchemeAndStackFoundations, main | §§0.6, 2.5–2.7, 2.19–2.20, 4.9: depth/Hartogs, qcqs colimits, ample vanishing, duality, formal functions; the three extension requests remain gaps |
| ReductiveGroupsPartII, supplied open head | RG2.3.7, ordinary Lang statement at README lines 5203–5205, not its subsequent pro-algebraic extension |
| OverconvergentAutomorphicForms, supplied open head and board package | Scope and Layers 5–6: analytic coefficient comparison and normalized Hecke theory, distinct from this integral marked coefficient calculation |

Ownership was searched by object with `roadmaps grep` over the supplied main/open-head index and with `rg` over board package READMEs, designs and Lean files. The new generic prerequisite has its existing owner, ReductiveGroupsPartII. Integral marked coefficient transport and its explicit genus-two expansion calculation remain this package's Part II specialization; the repair introduces no new generic carrier. The two existing fully qualified Lean names were not found as declarations in another readable roadmap. Ownership against open pull requests without supplied files or an indexed readable roadmap was not checked; design-only copies mentioned by the review but absent from this board were not treated as available evidence or fetched independently.

The exact library pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, read from the content manifest. Direct object searches and definition reads confirmed:

| Pinned location | What the declaration supplies |
|---|---|
| `Mathlib/LinearAlgebra/Matrix/Determinant/Basic.lean:63`, `:141` | `Matrix.det`, `Matrix.det_mul` on finite square matrices over commutative rings |
| `Mathlib/NumberTheory/LegendreSymbol/Basic.lean:109` | Integer-valued `legendreSym` with its prime parameter; no characteristic-two discriminant classification |
| `Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean:225` | Entrywise `Matrix.SpecialLinearGroup.map` along a ring map |
| `Mathlib/Data/ZMod/Basic.lean:331` | `ZMod.castHom`, with divisibility and target characteristic hypotheses |
| `Mathlib/RepresentationTheory/Irreducible.lean:29` | `Representation.IsIrreducible` is `IsSimpleOrder` on subrepresentations: the vector space is nonzero, while a one-dimensional trivial action is permitted |
| `Mathlib/RingTheory/Filtration.lean:425` | Krull intersection for a finite module over a Noetherian local ring and a proper ideal |
| `TauCeti/RepresentationTheory/SymmetricPower.lean:47` | Real-body native symmetric-power representation over a commutative semiring |
| `TauCeti/LinearAlgebra/SymmetricPower/Basis.lean:167` | Symmetric-tensor basis indexed by multisets |
| `TauCeti/RepresentationTheory/ClassicalGroups/Restriction.lean:44`, `:49` | `TauCeti.stdSLRep` and its column-multiplication action |
| `TauCeti/NumberTheory/BinaryQuadraticForm/Basic.lean:94`, `:146`, `:194`, `:203` | Coefficient triple, discriminant and inverse-substitution SL₂ action with discriminant invariance; no determinant-normalized rational GL₂ action under that convention |
| `TauCeti/RepresentationTheory/SU2/Irreducible.lean:164` | Complex SU(2) symmetric-power irreducibility, a different group and characteristic |

The searches found no native marked Klingen/Igusa correspondence, superspecial block or geometric theta carrier permitting the changed geometric headline to be added to Suggested.lean using a few simple definitions. No import, acceptance declaration name, theorem binder, metadata entry or supplier gap changed.

## Adversarial mathematics pass

The rows below record the package's definitions, target assertions, API laws and conventions, including every one of its 48 numbered subsections. Values are computed from the stated objects, not inferred from sorry elaboration. Geometric rows test local models and boundary controls; source support and explicit supplier hypotheses, rather than those finite tests alone, support their universal statements. “Retained” means no mathematical edit beyond the four findings was needed. Every new or changed formula has its own row.

| Statement | Instances tried | Computed values on both sides or positive/negative models | Result | Change |
|---|---|---|---|---|
| Coefficient convention | ℤ₃; ramified ϖ²=3; characteristic-three k[[t]] | v_ϖ(3)=1,2; in k[[t]], 3=0, excluded by finite-over-ℤ_p hypothesis | Mixed-characteristic scope preserved | Retained |
| Dominant weights | (0,0),(1,0),(−1,−1),(1,2) | Sym degrees 0,1,0; ranks 1,2,1; last degree −1 is excluded rather than truncated to 0 | Native and prose domains agree | Retained |
| Central normalization | p=3, weights (2,2),(3,3) | p^(j+k−6)=1/9,1; 1/9 has no scalar action on O/3 | Rational restriction essential | Retained |
| Fourier matrix convention | Q=x²+y²; diag(2,1),diag(1,−1) | Images 2x²+y²/2 and −x²−y²; both Δ=−4, only first positive | Discriminant and cone hypotheses differ | Retained |
| Ordinary action convention | Frame ψg; g₁,g₂ | g₁·(g₂·f)(ψ)=f(ψg₁g₂)=(g₁g₂)·f(ψ); differential frame ωg⁻ᵗ | Left function/right frame convention consistent | Retained |
| Ordinary character convention | d=2,r=1,t=diag(2,1) | χ=t₁³t₂=8; reversed exponents give 2 | Nonparallel witness fixes order | Retained |
| §1.1 sheaf-first definition | Weight zero; zero coefficient module | ω(0,0)=O_X, constant coefficient 1; E⊗0 has H⁰=0 | Right section object | Retained |
| §1.1 cusp inclusion | O[t], boundary (t), M=O/ϖ² | O_D=O is flat; image tM[t], kernel 0; constant 1 excluded | Tensor sequence stays injective | Retained |
| §1.1 coefficient functor | ×a followed by ×b; identity; zero map | Composite ×ba, identity ×1, zero ×0 on sections and coefficients | All three laws agree | Retained |
| §1.1 refinement | Identity refinement; blowup of boundary crossing | Identity sends s to s; pullback (xy) has exceptional order 2 versus new boundary order 1 | Uses imported boundary pushforward, not equality of ideals | Retained |
| §1.1 determinant twist | (j,k)→(j+t,k+t) | New symmetric degree j+t−k−t=j−k; ranks unchanged | Twist law correct | Retained |
| §1.1 reduction obstruction | H¹(E)[ϖ]=O/ϖ | Cokernel of H⁰(E)/ϖ→H⁰(E/ϖ) has length 1, not 0 | Premature tensor definition fails | Retained |
| §1.2 discriminant | x²; x²+y² at p=3 | (Δ,det)=(0,0),(−4,1); latter Legendre values −1,+1 | Discriminant convention distinguished | Retained |
| §1.2 action laws | Invertible M,N; identity | M·(N·Q)=(det M det N)⁻¹MNQNᵗMᵗ=(MN)·Q; 1·Q=Q | Both equations agree | Retained |
| §1.2 native action dictionary | T=[[1,1],[0,1]], Q=x² | Normalized T·Q=x²; native T•Q=x²−2xy+y²; native (Tᵗ)⁻¹•Q=x² | Transpose-inverse required | Retained |
| §1.2 primitiveness | x² and 3x² at p=3 | Residue triples (1,0,0) and (0,0,0), both Δ=0 | Both directions of iff distinguish coefficient condition | Retained |
| §1.2 zero extension | x²/3 at p=3; p=2 matrix shorthand | Forbidden coefficient=0; r/2 has no residue value in characteristic 2 | Polynomial carrier prevents junk division | Retained |
| §1.3 cone support | m=n=1,N | r=−2,…,2 and −2N,…,2N | No global Laurent lower bound | Retained |
| §1.3 monomial/coefficient rank | Q=(1,−1,1); d=1 | qζ⁻¹q′, Δ=−3; coefficient dimension 2 | Not a scalar or positive-r-only series | Retained |
| §1.3 component detection | X₁⊔X₂, section (0,1) | First expansion 0, joint expansions (0,1) | Every component required | Retained |
| §1.3 coefficient maps and cuspidality | Zero map; constant 1; positive orbit indicator | Coefficients sent to 0; 1 has Q=0 coefficient 1 and is not cuspidal; positive orbit has boundary coefficients 0 | Module and boundary criteria agree | Retained |
| §1.4 injection/saturation | Constants ϖ,1/ϖ; zero module | Coefficients ϖ,1/ϖ; first divisible by ϖ, second nonintegral; zero maps 0→0 | Both integrality directions and degenerate case consistent | Retained |
| §2.1 rank definition | μ_p²⊕(ℤ/p)²; I_(1,1)²; rank-one boundary | Multiplicative ranks 2,0,1 | Boundary retained, rank zero interior | Retained |
| §2.1 schemes versus supports | Local h′=t², odd p | V(t²),V(t) have same points, lengths 2,1 | Secondary scheme distinguished from reduced curve | Retained |
| §2.2 dimensions and P¹ geometry | p=3 | Stratum dimensions 1,2,3; 10 marked points; E degrees −1,3; λ degree 2 | All numerical Checks agree | Retained |
| §2.2 largest Hodge degree | E=O(−1)⊕O(p), a≥b | Maximum p(a−b)+(p−1)b=pa−b; a=b=1,p=3 gives 2 | Formula agrees with splitting | Retained |
| §2.3 Frobenius sign | F e₂=−p e₃,F e₃=e₂ | Pairing ⟨−p e₃,e₂⟩=p; unsigned value −p | Alternating normalization fixed | Retained |
| §2.3 first-order Hasse divisor | Y=ε,0; principal and both paramodular constraints | det[[−Y,0],[−Z,1]]=−Y; values −ε,0; all three constraints leave Y free | Simple zero survives every chart | Retained |
| §2.4 primary Hasse and multiplication | Split torus; rank-one BT₁; p=5 | Hasse matrices I and rank 1 give determinants 1,0; h has weight 4, Θh=0 | Global regular multiplication differs from fiberwise invertibility | Retained |
| §2.4 equivariance | Prime-to-p identity isogeny; tame deck pullback | Pullbacks of h both h; cusp expansions both 1 | Normalization fixes scalar | Retained |
| §3.1 secondary invariant | μ_p⊕I_(1,1)⊕ℤ/p; connected quotient | h=0, normalized h′=1; removing étale factor changes height 4→3, Hodge rank remains 2 | Boundary recipe consistent | Retained |
| §3.1 secondary weight | p=3 and determinant tensor factors | (p−1)(p+1)=8 on both determinant factors | Weight p²−1 correct | Retained |
| §3.2 duality and extension uniqueness | Split rank-one group and double dual | Outside summands exchanged; normalized value 1→1→1; height-three dual dimension 1 excluded | Typed determinant comparison correct | Retained |
| §3.3 canonical subgroup and maps | Ordinary rank-one open; chart [[0,1],[0,t]] | H=μ_p; V_H* unit on open; at t=0 orders of V_H*,W,Z are 1,1,0 | Image-of-V condition determines subgroup | Retained |
| §3.3 rank-drop control | Multiplicative rank 1, étale rank drops | V_H* remains a unit, order 0 | Not zero on entire complement | Retained |
| §3.4 normal extension | V_H*=W=t,Z=1 | ord A=(p+1)−(p−1)=2; swapped rank drops swap zero/unit | Local exponent and dual product correct | Retained |
| §3.4 regular square criterion | t,t⁻¹ | Squares t²,t⁻²; valuations 2,−2 | Regular rational root detected by normality | Retained |
| §3.5 spherical quotient | a=y=0,x=−bc | Relations xy=ax+by+abc=0; quotient k[b,c], dimension 2 | Smooth plane | Retained |
| §3.5 paramodular quotient | x=0,y=−ac; then ab=0 | First quotient k[a,b,c], dimension 3; union dimension 2; (1,0),(0,1) included, (1,1) excluded | Surface requires both branch equation and ambient quotient | Retained |
| §3.6 extension and branch gluing | Branch values a²,b²; values 1,0 | First pair agrees as 0 on intersection, glues to a²+b²; second pair gives 1≠0 and cannot glue | Correct gluing condition | Retained |
| §3.6 multiplication and zero scheme | t² on k[t]; connected boundary group | Kernel of ×t² is 0, quotient length 2; height-three boundary still has h′=1 | Regularity does not imply reduced zero scheme | Retained |
| §3.7 spherical root and divisor | p=3,2; b₀=t | Weights 4 and 3/2; square weight 8 at p=3; divisor lengths 1 and 2 | Odd-prime domain and simple root correct | Retained |
| §3.7 root tensor powers | p=3 | Ha² and t give weights 4,4 on the two lines; exchanged powers give 2,8 | Correct determinant-line section | Retained |
| §3.7 polarization dependence/descent | p=5,c=2,4 | Root factors c²=−1,1; square factors c⁴=1,1; same fixed-polarization pullback has factor 1 | Root determined by polarization, not square alone | Retained |
| §3.8 normalized determinant | [p] on μ_(p∞),μ_(p∞)²; identity | Scalars p⁻¹p=1,p⁻²p²=1,1; raw characteristic-p differentials 0,0,1 | Normalization before reduction essential | Retained |
| §3.8 quotient factor and composition | pµ on nonmultiplicative quotient; normalized multipliers u,v | Use µ*, rather than (pµ)*=0 in characteristic p; composite unit uv | Domains and multiplicativity agree | Retained |
| §4.1 Hasse lift | Local lifts 1,4 at p=3 | Difference 3; expansions both 1 mod3, but 1≠4 mod9 | Lift noncanonical | Retained |
| §4.1 deck pullback | Deck group of order 3 | Every g fixes pulled-back A; scalar 1, no factor 1/3 | No averaging used | Retained |
| §4.2 canonical-power congruence | p=2,n=2; p=3,n=2; n=1 | 3²−1=8≡0 mod4; 4³−1=63≡0 mod9; exponent at n=1 is 1 | Congruence endpoints correct | Retained |
| §4.2 ramification | ϖ²=3,m=2 | (1+ϖ)³−1=3ϖ+3ϖ²+ϖ³=2ϖ³+ϖ⁴, valuation 3≥2 | No assumption p=ϖ | Retained |
| §4.3 torsion weight shifts | p=3,m=2,r=1,s=3; 1+ϖ modϖ² | t=6; (1+ϖ)(1−ϖ)=1 modϖ²; d unchanged | Injection and common shift consistent | Retained |
| §4.3 equivariance | Identical modϖ Hasse lifts on two sides | Cubes of 1,4 are 1,64, both 1 mod9 | Canonical-power condition supports torsion equivariance | Retained |
| §4.4 equal weights and cover | p=3; ordinary,rank-one,rank-zero | Both weights 8N; values (1,*),(0,1),(0,0); union includes first two only | Exactly rank at least one | Retained |
| §4.4 descent through universal homeomorphism | k[t²,t³]⊂k[t] | t absent; t²,t³ present; t^p present for every prime p≥2 | Power descent needed | Retained |
| §4.4 affine and finite pullback claims | Ample O(1) on ℙ¹; identity finite map | D(section)=𝔸¹; its identity preimage=𝔸¹; zero section gives empty open | No nonfinite-pullback inference | Retained |
| §5.1 formal coefficient carrier | d=1,M=diag(3,1); zero module | x→3x,y→y; twisted wrong action x→9x,y→3y; zero space=0 | Integral symmetric-power action fixed | Retained |
| §5.1 torsion and nongeometric series | K/O constant 1/p+O; positive orbit indicator | p(1/p+O)=0; indicator has coefficient 1 at orbit, 0 at Q=0 | Neither algebra nor geometricity imposed | Retained |
| §5.2 determinant-p cosets | p=3, Q=0,x²,x²+y² | Total cosets 4; admissible counts 4,1,0 | Projective integrality criterion agrees | Retained |
| §5.2 orientation and representatives | M=diag(3,1); replacement Mγ | M⁻¹·(m,r,n)=(m/3,r,3n); ρ(Mγ)ρ(γ⁻¹)=ρ(M) | Projective point [1:0] and cancellation correct | Retained |
| §5.3 U,V | Primitive coefficient 1; constant series at p=3 | UV coefficient 1, VU primitive coefficient 0; constant U,V values 1,1 | UV=1, VU projection | Retained |
| §5.3 Z and Z₂ | Scalar constant at p=3,5 | Z(1)=Z₂(1)=4,6 | Full formal sum retained | Clarified distinction from §9.4 |
| §5.3 Z₂=UZ; UZ₂=Z₂U | General Q and one summand M | Both first formulas use M⁻¹·pQ; both commuting formulas use M⁻¹·p²Q, same ρ(M) | Coefficient identities agree | Retained |
| §5.3 scalar summands | M=diag(p,1) and complementary p representatives | Coefficient indices (pn,r,m/p) and ((n+ar+a²m)/p,r+2ma,pm); p=3 constant gives 1+3=4 | Zero extension retains fractional-index convention | Retained |
| §5.4 X₂,U₂ | p=3, Q=x²+y²,3(x²+y²),x² | Scalars (−1,−4),(3,8),(0,−1); residues (2,2),(0,2),(0,2) | All three branches distinguished | Retained |
| §5.4 denominator independence | Q and coefficient presentation multiplied by 2 at p=3 | Discriminant multiplier 2²=1 mod3, Legendre symbol unchanged | Square-unit normalization correct | Retained |
| §5.5 UX₂=0 | p=3, Q primitive | Integral multiplier at 3Q=3, residue 0; UX₂ coefficient 0 in k₀ | Characteristic-p restriction necessary | Retained |
| §5.5 X₂³=X₂ | Multipliers −1,0,1 | Cubes −1,0,1 | Three values suffice | Retained |
| §5.5 Z₂X₂=0 | p=3,M=diag(3,1),Q=x²+y² | R=x²+9y², det=9, Δ=−36≡0, X₂ multiplier 0 | No false rational determinant-zero assertion | Retained |
| §5.6 minuscule rational decomposition | k=2,3 | T modp=U+Z,U; d+2k−3≥1 in both cases | Bounds correct | Retained |
| §5.6 second decomposition | p=3,(j,k)=(3,3),(2,2) | At (3,3), T₂ coefficients −1,3,1,27; central scalar at (2,2)=1/9 | Rational identity not a torsion definition | Retained |
| §5.6 natural integral residual | Coefficient map ×a; K/O class 1/3+O | Finite sum commutes with ×a term by term; 3(1/3+O)=0, division by 27 undefined | Finite coset construction required | Retained |
| §5.7 cancelled Q₂ | p=3, weights (2,2),(3,3) | Coefficient tuples (1,1,3,3),(3,1,27,9); residues (1,1,0,0),(0,1,0,0) | Exact cancellation and exceptional weight agree | Retained |
| §5.7 rational cancellation | j=k=2 | p^(j−3)(U₂+1)=p⁻¹pX₂=X₂; remaining identity coefficient p | No p⁻¹ on torsion | Retained |
| §6.1 labeled multiset | p=5,Q=x²+y²; zero form | Roots [2:1],[3:1]; multiset size 2 versus orbit support size 1; zero size 6 | Multiplicity retained | Retained |
| §6.1 coefficient transport | d=1,M=diag(3,1) | x→3x,y→y; unweighted model x→x is different | Neighbors are not scalar orbit sums | Retained |
| §6.2 projective count | p=3,Q=x²+y²,x²,xy,0 | Counts 0,1,2,4; primitive Legendre values −1,0,1 | Zero form excluded from 1+(Δ/p) branch | Retained |
| §6.3 oriented reciprocity | M=diag(3,1), adj M=diag(1,3) | Product 3I; normalized 3I·x²=x² | Reverse coefficient index recovered | Retained |
| §6.3 arbitrary tame level | Γ(5),p=3,Q=x² | Forward residues 2x² then 4x²; reverse sends 2x² to x² | Self-duality not inferred from prime-to-p level | Retained |
| §6.3 noninvertible coefficient control | d=1,diag(3,1), characteristic3 | x→0, y→y | Reciprocity does not invert coefficient map | Retained |
| §7.1 finite-correspondence open | p=3, ordinary, almost ordinary, superspecial | Ordinary geometric points 1+4+1=6 versus characteristic-zero degree 40; almost ordinary has one α_p line; superspecial lines ℙ¹(k) infinite | Degree differs from point count; rank zero excluded | Retained |
| §7.2 trace products | (d,r)=(0,2),(1,3),(0,1) | Raw p-orders (4,3,3),(7,4,3),(2,2,3) | r≥2 gives p³; r=1 mixed term fails | Retained |
| §7.3 normalized T | p=3,d=0,r=2 | Multiplicative/mixed/étale bounds 81/27=3,9·3/27=1,27/27=1 | Integral before reduction | Retained |
| §7.3 coefficient/refinement compatibility | ×ϖ reduction; identity refinement | Integral scalar 3 reduces to 0, scalar 1 to 1 on both routes; identity refinement maps each to itself | No division after reduction | Retained |
| §7.4 finite Hartogs | Punctured affine plane; punctured line | H⁰=k[x,y] versus H⁰=k[t,t⁻¹]≠k[t]; local H² contains 1/(xy)≠0 | Codimension-two H⁰/H¹ claim, no H² claim | Retained |
| §7.4 formal and K/O comparison | Zero H⁰ inverse system; finite torsion class | Both lim¹ terms=0; class 1/ϖ+O enters K/O from O/ϖ | Correct Milnor and filtered-colimit routes | Retained |
| §7.5 two normalizations | d=0,r=2; d=1,r=3 | First ordinary orders (r+2,d+2r)=(4,4),(5,7); second minimum 1 | Both normalized maps integral | Retained |
| §7.5 central correction | p=3, weights (2,2),(3,3) | C_r−Q₂=(1+9)3^(j−2)=10,30; residues 1,0 | Unit correction at j=2 essential | Retained |
| §7.6 global finite/K/O maps | p=3,(2,2), constant formal coefficient | X₂=3,Z₂=4, Q₂≡1; same residue by integral reduction; 3 kills 1/3+O | Coefficient reductions natural, torsion lift unnecessary | Retained |
| §7.7 Hasse equivariance | p=5,k=3 shifted to7; k=2 | First pair both (T,Q₂)≡(U,Z₂); k=2 has T≡U+Z with Z(1)=6≡1 | Weight bound separates failure | Retained |
| §7.7 corrected second operator | Weight (3,3) | T₂≡Z₂−1 versus Q₂≡Z₂ | Identity correction preserved | Retained |
| §8.1 contraction | d=2, x²⊗y²,y²⊗x² | Numerators 4,4; denominator 12; values 1/3,1/3 though second quadratic has det0 | Vector coefficient has no extra determinant | Retained |
| §8.1 highest-weight normalization | d=2, three-term tensor | Transvectant contributions 4+4+4=12; divided value 1 | Normalization determined | Retained |
| §8.1 GL₂ equivariance | Scale x by2,y by1 | x²⊗y² transvectant scales by4; target (x∧y)² also scales by4 | Determinant square needed | Retained |
| §8.1 endpoint and base change | p=5,d=3,4 | 2d(d+1)=24≡4,40≡0 | p>d+1 admits d=p−2, excludes d=p−1 | Retained |
| §8.2 scalar theta | p=7,Q=x²+y²; Hasse | detQ=1, ΔQ≡3; output a rather than 3a; Θh=0 | Chosen coefficient normalization fixed | Retained |
| §8.2 vector theta | p=7,d=2,Q=x², coefficient y² | Output 1/3=5; scalar determinant coefficient 0; target degree d−2=0 | Vector/scalar distinction correct | Retained |
| §8.2 Hasse compatibility and cusp support | Constant expansion h=1; positive index | Θ(hF) coefficient detQ·a=hΘF coefficient; positive support stays positive or coefficient becomes0 | Weight shifts match | Retained |
| §8.3 standard column action | p=3, upper U and lower L | Ux=x,Uy=x+y; Lx=x+y,Ly=y; ULx=2x+y,ULy=x+y | Correct action and product order | Retained |
| §8.3 image and degenerate adapter | p=2,k=𝔽₄; p=0,k=ℚ | Image orders 6 versus ambient60; p=0 gives SL₂(ℤ)→SL₂(ℚ), while theorem requires prime p | No lost prime hypothesis on theorem | Retained |
| §8.3 small-power irreducibility | p=2,d=0,1; p=3,d=2,3 | Dimensions 1,2,3,4; binomials 1;1,1;1,2,1; cubic span{x³,y³} has dimension2<4 | Small range and endpoint distinct | Locator fixed |
| §8.3 value detection | x^p y−xy^p at p=3 | Degree4 nonzero polynomial; values 0 at all9 vectors | Larger-degree negative control retained | Retained |
| §8.4 superspecial scalar/vector factors | p=7,k=2; p=11,(6,2); k=p | 6/9≡3 mod7; j−3k=0 but j−3=3 and local coefficient −3≠0 mod11; scalar factor0 at k=p | Numerical hypotheses and exceptional case agree | Retained |
| §8.4 auxiliary and Hasse–Witt blocks | Superspecial origin; invertible dual frame C | B=I, A(0)=0; transformed zero A remains0, neverI | Wrong block name excluded | B explicitly distinguished from A |
| §8.4 admissible unitary frames | Upper U at p=3; C=[[0,i],[i,0]],i²=−1 in𝔽₉ | UUᵗ=[[2,1],[1,1]]≠I; C^(3)Cᵗ=I and detC=1 | Arbitrary unipotent forbidden; genuine special unitary frame allowed | Retained |
| §8.4 Lang specialization | SL₂ equation ad−bc=1; trivial group; constant C₂ | Gradient (d,−c,−b,a) cannot vanish; trivial Lang image size1=group size1; C₂ image size1<2 | Smooth connected finite-type hypotheses verified and necessary | Supplier imported |
| §8.4 Lang conjugacy, forward | p=3, a⁸=−1; B_L=[[a,−a⁵],[a³,a⁷]], A₀=[[1,1],[0,1]] | detB_L=1; B_L^(3)=JB_L; C=[[1−a⁴,a²],[−a⁶,1+a⁴]]; J⁻¹C^(3)J=C and C^(3)Cᵗ=I | Direction and sign verified in explicit geometric fiber | Explicit Lang route |
| §8.4 Lang conjugacy, converse | Same B_L,C; general twisted fixed C | B_L⁻¹CB_L=A₀ with A₀^(3)=A₀; generally Frobenius gives B_L⁻¹J⁻¹C^(p)JB_L=B_L⁻¹CB_L | Both inclusions, not just one | Converse added |
| §8.4 exceptional range | (6,2),p=7,5 | d=4; 7>5 and factor3≠0; at p=5 denominator40≡0 | No characteristic-five extension | Retained |
| §8.5 negative weights | p=5,(−1,−1),(0,0),(1,2) | Maximum degrees −4,0; H⁰(O(−4))=0, H⁰(O)=k with1; last weight excluded | Strict negativity and dominance essential | Retained |
| §8.5 repeated division/Krull | p=7; unit ideal control | Root weight24 lowers degree by144; Hasse lowers by36; unit ideal has intersection R≠0 | Proper-divisor hypothesis retained | Retained |
| §8.6 scalar injectivity | p=5,k=2,3,4,5,6 | Permitted2,6; k=3,5 numerical factors0; k=4 gives h≠0 in kernel; k=6 degree24<26 and residual weight2 | Exact exceptional range retained | Retained |
| §8.7 vector injectivity | p=7,j=4,5; p=11,j=6; p=5 | Component degrees26,33<50; post-Hasse weights(−4,−8) give−36; p=5 interval empty | Downstream exceptional argument recomputed | Retained |
| §9.1 weight-space definition | κ=1,r=0; κ=t²,r=1; GL₂(𝔽₃) | Constant1 has trivial weight; χ(diag(2,1))=8; group order48 versus diagonal order4 | Full frame and Borel character essential | Retained |
| §9.1 products, boundary and limits | Constant weights0; local cusp parameterq; coefficient depthm | 1·1=1; q·1=q vanishes at boundary, 1 does not; constants reduce1→1 at every depth | Product/cusp/transition laws compatible | Retained |
| §9.2 all-frame expansions | f=1,1/3 at p=3 | Q=0 coefficient functions identically1,1/3 on48 frames; positive coefficients0 | Saturation excludes1/3 | Retained |
| §9.2 frame translation | g·f at ψ | Coefficient equals coefficient of f at ψg, same value by evaluation | Translation direction preserved | Retained |
| §9.3 classical evaluation | d=0; degree4 polynomial at p=3 | Character det^r; x³y−xy³ vanishes at all9 𝔽₃-vectors, value−24 at(1,3) overℤ₃ | Integral limit injection does not imply arbitrary finite-level injection | Retained |
| §9.3 differential frame | g=diag(2,1) | First differential scales by1/2; weight(3,1) character is8 | Inverse transpose and algebraic weight consistent | Retained |
| §9.4 marked correspondence | Ordinary μ_(p²)²⊕(ℤ/p²)² with H₁ fixed | Total lines p+1, forbidden marked line1, admissible linesp; each L has orders p⁴,p³ as prescribed | Index set excludes exactly the marked line | Full Z₂ identification replaced |
| §9.4 trace multiplicities | p=2,3,5 | Branch counts2,3,5; branch degrees8,27,125; total degrees16,81,625 | Degreep⁴, not(p+1)p³ | Trace indexing repaired |
| §9.4 constant expansion | Weight0,p=2,3,5 | φ_norm(1)=1; normalized traces16/8=2,81/27=3,625/125=5; Z₂(1)=3,4,6 | U(1)=p; modp0≠1 | Checks and downstream comparison repaired |
| §9.4 coefficient normalization | p=3,d=1,r=1, degree-p³ factor | Raw Sym¹⊗det images9x,3y; normalized byp⁻¹ give3x,y; étale factor invertible | Determinant factor separated from trace | Algebraic comparison repaired |
| §9.4 continuous action | κ:ℤ₃ˣ→Oˣ; transported marking | κ(1)=1; κ(3) undefined; transported H_m maps isomorphically since L∩H_m=0 | Marked-frame definition uses units | Continuous formula repaired |
| §9.4 integral reduction | Constant at p=3, coefficient ring O/3; zero module | Integral output3 reduces0; full formal sum4 reduces1; zero input/output0 | Reduction happens after normalized integral trace | API and Needs repaired |

The explicit Lang matrix computation uses only a root a of a⁸=−1 in the algebraic closure of 𝔽₃. Reducing powers by a⁸=−1 gives det B_L=2a⁸=1 and B_L^(3)=JB_L. Consequently its inverse g satisfies g⁻¹g^(3)=J⁻¹. This supplies an actual witness for the direction in the abstract Lang specialization; it is separate from Koblitz's auxiliary block B.

## Maintainer consequences

The changed consumer contract is mathematical: the marked Klingen operator is not identified with the full formal Z₂ sum. Consumers must compare with the marked normalized trace, and an identity obtained by forgetting or summing markings needs its own statement and proof. The formal spherical Q₂ and Hasse congruences are unchanged. No Lean names were added, deleted or renamed, and no downstream cited declaration changed its signature.

The Lang supplier edge is earlier in the order. All eight named gap contracts and the plan are unchanged. Metadata is unchanged. Only the package README, Lean module docstring, existing P20 manifest locator and this report were edited. No other package, tooling, merge order or pull-request text was changed; no commit or network write was made.
