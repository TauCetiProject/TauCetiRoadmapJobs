# Review of HabiroCohomologyFoundationsPartII (pull request #1466 at 729dbcb)

**Verdict:** needs changes

## R01 (P2) — Retire the obsolete supplier gaps

**Location:** `TauCetiRoadmap/HabiroCohomologyFoundationsPartII/README.md:89–96`, together with `packages/HabiroCohomologyFoundationsPartII/design/plan.json:2–86`. The README says “Import the ordinary étale equivalence” and “Import the theorem for every étale-framed smooth S”.

**Claim:** The declared gap inventory still requests fourteen results from RefinedTraceMethods. Twelve are now present at that supplier's head; the other two are construction targets of this README's §0.1. None of the fourteen slugs occurs in the README. Thus the package still declares work as missing that the reviewed specification already assigns to an existing supplier target or to itself. This fails the required minimality test for declared gaps and leaves two incompatible ownership inventories.

**Witness:** RefinedTraceMethods README:2498, 3013, 3109, 3133, 3316, 3524 and 3876 supply the trace contracts. This README:146 assigns perfect δ-ring lifts and spherical perfection locally; plan.json:76–85 still requests both externally.

**Repair:** Retire the twelve fulfilled trace gaps from the plan's top-level `gaps` list and cite their existing supplier sections, as the README already does. Retire `perfect-delta-spherical-lifts` and `spherical-perfection-map` there because §0.1 now constructs them here. Do not reintroduce the fourteen requests in the README. Preserve the separate, inherited SolidAnalyticRings contracts and the conditional enhanced contracts of HabiroCohomologyFoundations. If any residual work really differs from the existing targets, replace only that residual requirement by an exact minimal contract, with the same slug in both places.

**Repair test:** The full-dimensional framed input S=ℤ[x,y], including its prime-two cover, is explicitly covered by RefinedTraceMethods §6.10; it needs no new `full-framed-trace` or resolution request. For A=ℤ_p, the two local lifting targets give S_p and id; for toric A=ℤ_p⟨x⟩ they give the root-colimit lift and map. Keeping §0.1 retains these obligations after deleting the obsolete external requests. The inventory becomes twelve resolved imports plus two local targets, with zero outstanding gaps of these fourteen names.

This does not re-raise FIX-RT~2 F02's former missing-prerequisite finding: §0.1 now explicitly owns the constructions. The defect is the surviving, redundant gap inventory, not a request to implement a supplier during this review.

## Verified sound

AI-assisted independent review of both complete files at the specified head. The mathematical tests below found no counterexample to a headline statement. The finding above is repairable within the package's contract bookkeeping; it does not require replacing the roadmap's mathematical scope.

The worker's gate passed every check, including the targeted build, metadata, import/form scanners, stray files and outside-folder changes. Independent `git diff --stat origin/main...HEAD` restricted to paths outside this folder returned no changes. The worktree remained clean. Independent elaboration of `TauCetiRoadmap/HabiroCohomologyFoundationsPartII/Suggested.lean` using the prescribed `lake env lean` command exited 0 with no diagnostics. No process remains running.

The prescribed dependency command returned exactly:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. All local Needs lines were read. The algebraic pair/descent interface precedes RefinedTraceMethods, which precedes the assembly and comparison applications here. No backward use of the applications was found. The source material contains no instructions acted on during this review.

### Source sample: all ten requested targets

All eight cited works were available as the supplied legal, line-numbered extractions. No README locator was flagged unverified. The versions in References match the cached versions. Printed pages, rather than the sometimes very different extraction page markers, were used.

| Target | Source text opened | Hypotheses and claim verified |
| --- | --- | --- |
| §0.1 completed/relative lifting and perfection | HA line 51577, Cor. 7.4.1.28 and Remark 7.4.1.29, p.1346; HA line 52724, Thm. 7.5.0.6, p.1374; KU line 3678, Example 6.7, p.82; KU line 3715, Example 6.9, p.83; KU line 3902, Lemma A.1, p.87; TC line 1304, §3.4, p.31 | HA's theorem is ordinary étale lifting, not the unrestricted completed formal theorem. The README explicitly makes spectral cotangent comparison, Postnikov lifting and effectivity new targets. KU uses the relative formal lift for relatively perfect coefficients; its A.1 proves the perfection map using the canonical Tate equivalence and a different Frobenius map. TC supplies the perfect free δ-ring specialization x↦p. |
| §1.1 TraceInput | KU line 973 and line 988, 3.1–3.2, p.24; KU line 1949, 4.18, p.46; KU line 2103, 4.18a, p.49; KU line 3678 through line 3719, pp.82–83 | Global cotangent amplitude and bounded torsion are separate from local conditions. E₁ includes torsion-freeness and a lifted semiperfect Čech cover; E₂ at 2 alone is insufficient. Morphisms retain lift diagrams, rather than being arbitrary ring maps. |
| §1.2 tracePair | KU line 2107 through line 2158, 4.25–4.28, pp.49–50; KU line 1908, Thm. 4.17, p.45; QH line 3514, A.14, p.76 | Trace computes the completed filtration. The uncompleted object is the specified pullback, including rational and p-adic rational clauses. Multiplicativity is Eₙ₋₁ under Eₙ hypotheses; the E₁ branch uses the identity-cover result termwise. Functorial assembly is identified as this roadmap's construction. |
| §1.3 traceHabiro | QH line 1089, Thm. 3.11, p.25; QH line 1174, Cor. 3.13, p.27; KU line 3548 and line 3556, Remark 5.62 and Thm. 5.63, pp.79–80 | Positive divisibility indices, ascending q-Witt graded pieces, completion, 2 invertible and cyclonic datum A₂ are retained. The KU result is a module comparison; no unsupported ring enhancement is inferred. |
| §2.1 quotientLift | Bu line 50 and line 57, Thms. 1.4–1.5 with footnote 4, p.2; Bu line 412, Definition 5.1/Thm. 5.2, pp.10–11; QH line 2876, Remark 4.23, p.63; KU line 3682 and line 3705, Examples 6.8–6.9, pp.82–83; TC line 1304 and line 1340, pp.31–32 | Odd-prime exponents 2/3 and even prime-two exponents 4/6 are sufficient bounds. Uniqueness is only v-compatible. The tensor quotient need not be an ordinary ring; regularity and torsion-freeness are imposed separately where needed. The source's stronger S/8 theorem is not excluded. |
| §2.2 perfectedLiftNaive | QH line 2860, Thm. 4.22(b), pp.62–63; QH line 2970, Lemma 4.26, p.64; QH line 2983 and line 3011, Lemma 4.27/proof, pp.65–66 | The p-torsion-free, p-quasi-lci and relative-semiperfect hypotheses are retained. Base change is completed at (p,h); proof reduces to the perfect base and applies KU 4.17. The higher-power corollary follows the general criterion, not conversely. |
| §2.3 canonical quasi-regular comparison | KU line 1908 through line 1944, Thm. 4.17/proof, pp.45–46; KU line 2107 and line 2162, global comparison and Lemma 4.29, pp.49–51; QH line 3026 and line 3043, Construction 4.28/Thm. 4.29, p.66 | The local preimage description is restricted to identity covers. The global equivalence is expressly a new assembly theorem, not falsely attributed to one source theorem. The rational corner and the map from qdR are retained. The derived commutative refinement remains subject to the cited enhanced supplier contract. |
| §3.1 canonicalFramedTrace | QH line 2501, Remark 4.4, p.55; QH line 2522 and line 2556, Lemmas 4.6–4.7, pp.55–56; KU line 3726 and line 3852, Thm. 6.10/proof, pp.83,86; KU line 3873, Remark 6.14, p.86 | The specified counit map is tested modulo β; completeness alone is not used to identify arbitrary maps. n=max(d,1), the small-prime restriction of the canonical construction and the supplier's separate prime-two resolution comparison are retained. Framed qΩ is pulled back to qdR. |
| §4.1 inversion/realisation | KU line 3880, Cor. 6.15, p.86; GSWZ line 255 through line 275, Definition 1.1, pp.6–7 | Δ>0, 6∣Δ, disc(F)∣Δ, the chosen étale lift, and the order genuine fixed points → residual fixed points → limit → π₀ agree. The unexplained factor 3 is honestly retained. Finite étaleness is over ℤ[1/Δ], not finiteness over ℤ. |
| §4.2 arithmetic exports | GSWZ line 260 and line 273, (12)–(13), pp.6–7; QH line 1174, Cor. 3.13, p.27; KU line 3880, Cor. 6.15, p.86 | Taylor maps and finite reductions are transported through the specified isomorphism. The full tensor coefficient algebra and arithmetic Frobenius direction are preserved. Naturality of the trace realisation is expressly a new target. |

Additional source checks: BS line 3898 (Thm. 15.3, pp.103–104) and line 3960 (Prop. 15.7, p.105) retain the relative Frobenius twist and Nygaard completion; BMS2 line 252–294 (Thm. 1.12, pp.6–7) gives local evenness and the three correctly shifted graded comparisons. These do not imply global THH evenness or Δ=Δ̂.

### Adversarial calculations

The 113 rows record computed test values, not proofs of the general theorems. A comparison of structured objects records a computable invariant or map value on both sides. “Retain” means no change to that statement; R01 concerns only the gap inventory. All nine headlines and all ten sampled subsections occur below. Arithmetic exponent, discriminant, Frobenius-exponent and divided-power computations were also repeated in a scratch arithmetic check.

| Statement | Instances tried | Values on the two sides / excluded model | Result and change |
| --- | --- | --- | --- |
| Universe and positive-index conventions | m=1,2,0 | C₁ has order 1; C₂ order 2; no finite group has order 0 | Retain m≥1. |
| q-integer convention | n=0,1,2; q=1 | [0]=0, [1]=1, [2]=1+q→2 | Retain positive monomial exponents and separate constants. |
| Rees orientation βt=h | i=1; q=1 | βt maps to h; mod β gives h=0; mod h only gives βt=0 | Retain degree-one quotient. |
| Shearing of even graded pieces | Hℤ, Σ²Hℤ | Steps of Hℤ: Hℤ,0; steps of Σ²Hℤ: Σ²Hℤ,Σ²Hℤ,0; Σ⁻²Σ²Hℤ=Hℤ | Retain double speed and sign. |
| Filtered quotient formula | Fⁱ=h^max(i,0)ℤ[[h]], i=0,1,2 | cofib(h:Fⁱ⁻¹→Fⁱ)=ℤ,0,0; degreewise cofib gives ℤ,ℤ,ℤ | Correct quotient discriminates. |
| Pair clauses versus a bare filtration | R=0 over ℤ | F⁰=ℚ[[h]]; completed zero object has F⁰=0 | Clause (a) excludes completed substitute. |
| h-completion versus filtration completion | Constant Fⁱ=ℚ[[h]] | h-completion=ℚ[[h]]; filtration completion=lim cofib(id)=0 | Retain distinction. |
| Relative semiperfectness | ℤ[x]→ℤ, x↦1, modulo p | Relative source 𝔽_p[x]/(xᵖ−1) surjects onto 𝔽_p; for ℤ→ℤ[x], x has no Frobenius preimage | Correct identity-cover boundary. |
| Ordinary étale versus completed étale | ℤ[x]→ℤ[x,x⁻¹] | Mod p gives 𝔽_p[x]→𝔽_p[x,x⁻¹], cotangent 0; completion permits unbounded negative powers | Retain completed category. |
| Completed-localization transcendence Check | f=Σ p^(n²)x⁻ⁿ, radius abs(p)^(2m) | Minimum n²−2mn is −m² at n=m; degree-d leading valuation is c+2mN−dm² | Growth defeats a finite algebraic relation; retain. |
| relativeFormalEtaleLift existence | C=A₀ and C=0 | U_C=T and 0; completed reductions A₀ and 0; relative cotangents 0 | Retain. |
| relativeFormalEtaleLift mapping spaces/markings | C=A₀², connected A₀=ℤ_p⟨x⟩ | Unmarked automorphisms: id,swap (2); marking-preserving automorphisms: id (1 component, contractible space) | Markings exclude unmarked uniqueness. |
| Relative formal base change | T=(S[x])∧_p, C=A₀²; x↦0 | (T×T)⊗̂_T S_p=S_p×S_p; reduction=ℤ_p² on both routes | Retain maps and marking. |
| Nonflat formal base change | A₀=ℤ_p⟨t^(1/p∞)⟩, C=ℤ_p, A₀′=A₀/(t) | Tensor resolution [ℤ_p --0→ ℤ_p] has π₀=π₁=ℤ_p, not just π₀ | Staticity assumption necessary. |
| Identity/composition of formal lifts | x↦0 followed by id | Reduction of composite and composite reduction both send x↦0, 1↦1 | Retain coherence target. |
| Perfect δ-ring lift | B=ℤ₂,ℤ₃,0 | π₀ lift=ℤ₂,ℤ₃,0; at 2 π₁(S₂)=ℤ/2 whereas π₁(Hℤ₂)=0 | Spectral carrier cannot be replaced by a ring. |
| Perfect free δ-ring specialization | x↦p versus x↦0 | Reduction values p and 0 differ; quotient gives S_p/p² versus S_p⊕ΣS_p | Correct map is marked. |
| sphericalPerfection | Toric A=ℤ_p⟨x⟩, p=2,3 | Frobenius sends x↦x² or x³; x absent from image before perfection, present as power of x^(1/p) afterward | can must not be confused with φ. |
| sphericalPerfection unit and zero | A=ℤ_p,0 | Sequential colimit=id-colimit S_p or 0; reductions ℤ_p or 0 | Retain. |
| Relative perfect root tower | B=ℤ[x,t^(1/n):n≥1] | d(t^r) maps to p(t^(r/p))^(p−1)d(t^(r/p))=0 mod p; x still lacks p-th root | Relative formal lifting is broader than absolute perfection. |
| Arithmetic fracture | Hℚ; S | Hℚ has p-completions 0 but rational corner Hℚ; sphere gives π₀=ℤ, π₁=ℤ/2 | Rational corner cannot be discarded. |
| TraceInput object conditions | R=ℚ[u,v]/(u²,uv,v²) | All p-completions=0; defining ideal height=2, minimal generators=3 | Local tests alone would admit a non-lci object. |
| TraceInput.forget/lifts | Unit over ℤ; identity morphism | Forget returns ℤ; local reductions ℤ_p; id sends 1↦1 in each | Retain structured input. |
| TraceInput morphisms/id/composition | Same ring, E₂ versus E₁ at odd p | Underlying identity exists, cross-branch morphism set is empty; same-branch identity composes to id | Intended category excludes branch changes. |
| TraceInput.ofSpherical | ℤ[1/2][x] and ℤ[x] | 2-completion first=0; second=ℤ₂⟨x⟩≠0 | Second needs framed E₁ cover. |
| TraceInput.ofEtale | R=A[x⁻¹], A=ℤ[x] | Reduction is localized 𝔽_p[x]; relative Frobenius is invertible and completed cotangent=0 | Retain completed lift. |
| TraceInput.ofFramed | ℤ[x], p=2 | Cover adjoins x^(1/2^n); x=(x^(1/2))² mod 2 | Separate prime-two cover has required semiperfectness. |
| TraceInput.ofIdentityCover | R=A and R=ℤ/9 | Identity base has relative cotangent 0; in ℤ/9, 3·3=0 with 3≠0 | Torsion-free condition excludes second. |
| TraceInput.unit and zero input | A=R=ℤ; R=0 | Unit local lift=S_p; zero local lift=0 | Retain both, with different global rational corners. |
| ku-lift exclusion | Free perfect δ quotient by x | Naive correction requires coefficient 1/p, not integral; ku-lift exists, spherical-lift criterion would force the failed q-deformation | Retain distinction. |
| tracePair definition and zeroth step | Unit and zero ring | F⁰=ℤ[[h]] and ℚ[[h]] respectively; trace completions=ℤ[[h]] and 0 | Pullback gives intended pair. |
| tracePair_map | Unit identity | Fⁱ map sends h^i a↦h^i a; mod β degree 0 sends a↦a | Retain. |
| tracePair_map_id | Unit | id(h^i)=h^i on every step | Retain as README API. |
| tracePair_map_comp | Two identity unit maps | Both composites take h^i↦h^i | Retain as README API. |
| tracePair_completion | R=0 | Completion of constant ℚ[[h]] is 0=graded TC⁻ of zero | Correct. |
| tracePair_modBeta | Unit, i≤0 and i>0 | Quotient=ℤ and 0, matching Hodge filtration of ℤ/ℤ | Correct. |
| tracePair_rational | Unit | Rational h-completed i-th step=h^max(i,0)ℚ[[h]] on both sides | Correct completion order. |
| tracePair_pRational | Unit, p=2,3 | Complete then invert gives ℚ_p[[h]], not 0; invert then complete gives 0 | Retain order. |
| tracePair_multiplicative | n=2 and n=∞ | Guaranteed levels n−1=1 and ∞; no E∞ conclusion from n=2 | Correct range. |
| tracePair_etale | A=ℚ, R=ℚ(i), k=1,2 | Pullback H⁰=h^kℚ[[h]], H¹=(R/ℚ)[[h]]/(h^k), dimensions 1 and 2 over ℚ; static h-adic model has H¹=0 | Retain uncompleted pullback. |
| tracePair polynomial Check | R=ℤ[x], i=1,2 | Completed steps [hB→B dx], [h²B→hB dx], B=ℤ[x][[h]] | hⁱqΩ would put dx one step too deep. |
| traceHabiro functor | Identity input | H(id) acts as id; on order-one coefficient 1↦1 | Retain. |
| traceHabiro_map composition | Unit; two identities | All finite-stage maps send q↦q, hence composite=q↦q | Retain. |
| traceHabiro_hCompletion | R=ℤ[x], monomials 1,x,x² | q-Hodge differential coefficients 0,h,q²−1; q-de Rham coefficients 0,1,1+q | Distinct already at q=1: 0 versus 1,2. |
| traceHabiro_partialCompletion | R=A=ℤ; n=1 divides m=2 | Complete at q−1: ℤ[[h]] on either route; q maps to 1+h | Correct divisibility direction. |
| traceHabiro_qWittGraded | Polynomial line, m=1 | gr₀=ℤ[x], gr₁=Σ⁻¹ℤ[x]dx, gr_i=0 for i>1 | Ascending grading and shift retained. |
| traceHabiro_smooth | Polynomial line, m=1 | Reduction differential=0; H⁰=ℤ[x], H¹=ℤ[x]dx; Bockstein x²=2x dx | Matches ordinary Witt length one forms. |
| traceHabiro_multiplicative | E₂ input and E∞ input | Output levels E₁ and E∞, respectively | No new multiplicative inference. |
| traceHabiro_pairEquiv | Identity equivalence of unit pair | Descent and all completions act as id; q↦q | Retain marked equivalence. |
| traceHabiro_periodic | Unit input | β-inversion gives H[β,β⁻¹]; h-completion degreewise=ℤ[[h]][β,β⁻¹] | Retain degreewise completion. |
| traceHabiro_cyclonic | R=ℤ[1/6], order 1 | C₁-fixed operation=id, then TC⁻; degree-zero h-completion=ℤ[1/6][[h]] on both sides | Keeps 2 invertible and A₂. |
| traceHabiro zero case | R=0 | Descent=0, while uncompleted Fⁱ=ℚ[[h]] | Completion/localization kills constant nonseparated filtration. |
| Ordinary/derived Habiro completion | B=M=𝔽₂ | Monic quotients degrees 1 and 3 have dimensions 1 and 3; multiplication kernels=0 | No flatness hypothesis on M needed. |
| E1QuotientExponent | p=2; α=0,…,7 | F,F,F,F,T,F,T,F; at p=3: F,F,T,T,T,T,T,T | Bounds and evenness discriminate. |
| E2QuotientExponent | p=2; α=0,…,7 | F,F,F,F,F,F,T,F; at p=3: F,F,F,T,T,T,T,T | Distinct from E₁ predicate. |
| E₂⇒E₁ arithmetic implication | p=0,1,2,3,4; α=0,…,7 | No E₂=true/E₁=false pair; nonprime branches use 3≥2 | Total predicates defined; lift theorem still assumes prime. |
| quotientLift E₁ | T=S_p, y=p | p=3,α=2 gives relative exponent 2>1; p=2,α=4 gives 2>1 relative to p² | Gives S/9 and S/16. |
| quotientLift E₂ | T=S_p, y=p | p=3,α=3 gives 3>2; p=2,α=6 gives 3>2 relative to p² | Gives S/27 and S/64. |
| quotientLift empty/zero/unit elements | r=0; y=0; y=1 | Empty tensor=T; cofib(0)=T⊕ΣT; cofib(id)=0 | No regularity asserted for general spectral quotient. |
| quotientLift_framed | S=ℤ[x], y=x, α=4 | S/(x⁴) has ℤ-basis 1,x,x²,x³; at 2 tower exponent=2, cover makes roots semiperfect | Torsion-free E₁ application valid. |
| quotientLift_identityCover | B=ℤ[x,t^(1/n)], R=B/(t⁴) | Basis x^a t^r for 0≤r<4; relative Frobenius preimage t^(r/p); no integer torsion | New relative lift applies. |
| quotientLift_perfected | B=ℤ₃, x=3, α=2 | R=ℤ/9 has spherical E₁ lift; ker(×3)={0,3,6} | Does not imply §2.2 torsion-freeness. |
| Moore tower compatibility | x↦p versus 0 | First sends x^α↦p^α; second to 0, hence wedge cofiber | Marked v-compatible tower, not arbitrary uniqueness. |
| Sufficient versus necessary exponents | p=2,α=3 | Predicate=false, but Bu Thm. 1.1 gives E₁ on S/8 | “Sufficient” correctly retained. |
| High-powered condition | m=1,9,16,64,8,32,12 | T,T,T,T,F,F,F; bad valuations 3,5 at 2 and 1 at 3 | Empty prime-divisor set at 1 gives true. |
| perfectedLiftNaive | A=R=ℤ₂ and ℤ₃ | Fⁱ=h^max(i,0)ℤ_p[[h]]; mod β=ℤ_p for i≤0, 0 for i>0 | Includes 2. |
| perfectedLiftNaive base-change/descent | Unit, perfect base | A∞=A, completed tensor=id; injective map on degree-zero quotient=id_ℤp | Does not reverse implication. |
| perfectedLiftNaive_qReg | A=ℤ, R=ℚ | Local factors=0; rational pair has Fⁱ=h^max(i,0)ℚ[[h]] | Rational data survive vacuous local conditions. |
| perfectedLiftNaive_higherPowers | α=2 at p=2 versus p=3 | Spherical predicate false/true; algebraic higher-power theorem applies in both | Separate routes retained. |
| Toric x−1 q-divided powers | n=0,1,2 | 1, x−1, (x−1)(x−q)/(1+q); at q=1: 1,x−1,(x−1)²/2 | Divisions occur in PD envelope, not coefficient ring. |
| Exponent-one negative control | Free δ-base, α=1, p=2 | Required correction has hδ(x)/2; 1/2 is nonintegral | Excludes spherical E₁ lift; does not exclude ku-lift. |
| tracePair_quasiRegular membership | Unit and toric quotient x−1 | Unit perfection map=id; toric extension adds roots; modulo p relative Frobenius surjects to 𝔽_p | Membership follows via §2.2. |
| tracePair_quasiRegular equivalence | A=R=ℤ | Local steps h^iℤ_p[[h]], rational steps h^iℚ[[h]] glue to h^iℤ[[h]] on both sides | Product alone would have ∏ℤ_p coefficients. |
| Independence of identity-cover lifts | Unit input | Both local preimage descriptions give the same submodule h^iℤ_p[[h]] | No independence asserted for mixed branches. |
| Quasi-regular multiplicative refinement | Unit; n=0,1 filtration | Products h^a·h^b=h^(a+b); underlying product agrees on both models | Enhanced derived commutative supplier condition retained. |
| Quasi-regular Habiro comparison | Unit and zero input | Both descents=H_ℤ and 0, respectively | Correct functorial consequence. |
| Torsion exclusion for quasi-regular comparison | m=1 and 9 | ℤ/1=0 is torsion-free; in ℤ/9, nonzero 3 is killed by 3 | Cannot apply identity-cover theorem to finite coefficients directly. |
| Framed Jackson operator | 1,x,x²; q=1; x=0 | 0,dx,(1+q)x dx; q=1 gives 0,dx,2x dx; x=0 gives last=0 | Integral operator, no division-by-zero convention. |
| Coordinate filtration | d=2, i=0,1,2 | Form-degree-two powers h^0,h^0,h^0; degree-zero powers 1,h,h² | Correct max(i−j,0). |
| canonicalFramedTrace domain | d=0,1,2 | n=1,1,2; inverted prime sets ∅,∅,{2} | Correct positive bound and full common domain. |
| canonicalFramedTrace_pair | S=ℤ[x], i=1 | All completed models [hB→B dx] with same reduction Ω≥1 | Specified map, not arbitrary filtration uniqueness. |
| Canonical counit comparison | Unit, mod β | Specified map=id_ℤ; zero map=0≠id | Completeness alone insufficient, correctly avoided. |
| canonicalFramedTrace_habiro | S=A, m=1 | Both h-completions=A[[h]], both reductions=A | Compatible with descended finite maps. |
| canonicalFramedTrace_einfty | x·x on framed line | Jackson differential=(1+q)x dx; untwisted Leibniz=2x dx | Multiplication must be the transported enhanced one. |
| Canonical tensor domain | ℤ[x]⊗ℤℤ[x] | Dimensions 1+1=2; required prime set changes ∅→{2} | No false closure claim. |
| Derived reduction and Bockstein | M=[ℤ[x][[h]] --h∇q→ ℤ[x][[h]]dx] | H⁰(M)/h=ℤ; H⁰(M/ᴸh)=ℤ[x]; x,x² give dx,(1+q)x dx in H¹(M)[h] | Derived quotient necessary. |
| Laurent framed comparison | A=ℚ, S=ℚ[x,x⁻¹] | H¹(qdR)=0; H¹(qΩ)=ℚ[[h]]dlog x | Pullback, not uncompleted equality. |
| TraceInversion | F=ℚ; Δ=0,−6,1,6 | F,F,F,T; discriminant divisibility true in all four, positivity or 6-divisibility distinguishes | Retain all conditions. |
| TraceInversion Gaussian case | disc=−4; Δ=6,12 | 4∤6, 4∣12; predicates F,T despite same localized ring | Predicate concerns chosen Δ. |
| TraceInversion cubic case | disc=−108; Δ=108 | 108>0, 6∣108, −108∣108; ring=ℤ[∛2][1/6] | Correct. |
| TraceInversion.isUnit_two_three | ℤ[1/6] | 2·(3/6)=1 and 3·(2/6)=1 | Unit inference matches pinned declarations. |
| TraceInversion.finiteEtale | ℚ,Δ=6; ℚ(i),Δ=12 | Localized module ranks=1,2; second discriminant −4 is a unit | Finite over localized base. |
| Discriminant negative control | ℤ[i] at 2 without localization | d(i²+1)=2i di=0 mod 2; Ω⊗𝔽₂=𝔽₂[i]di≠0 | Ramification would break étaleness. |
| P_R and ε_R | R=ℤ[1/6], m=1; zero coefficient datum | Order-one term=THH^hS¹; h-completion=R[[h]]; zero terms/limit/π₀=0 | Fixed-point order retained. |
| numberFieldTraceExports | z=ε_R(q), m=1 | ρ₁(z)=1; τ₁(z)=1+h | Sources and targets agree. |
| Base convention ℤ versus ℤ[1/Δ] | Δ=6, scalar 1/6 | φ_p(1/6)=1/6 for p≠2,3; completed overlap=0 for p=2,3 | Scalar is a unit before completed base-change comparison. |
| numberFieldTraceExports_cyclotomic | z=ε_R(q), m=1,2 | Finite reductions q=1 and q²=1 respectively; order 2→1 sends q↦1 | Correct finite quotient and transition. |
| numberFieldTraceExports_taylor | m=1,4, R=ℤ[i][1/6] | q maps to 1+h or ζ₄+X; coefficient algebra at 4=R×R | No embedding factor discarded. |
| Full coefficients/idempotent Check | e=(1⊗1−i⊗i)/2 | At second i↦i,−i, e=(1,0), e²=e | Rank two algebra cannot become one field factor. |
| numberFieldTraceExports_transition | Gaussian constant i at p=7 | can(i)=i; φ₇(i)=−i; corrected f₇=−i gives φ₇(f₇)=i | Arithmetic twist required. |
| Order-three Frobenius convention | a=ζ₇, p=11 | 4²=2,4³=1 mod 7; φ(a²)=a⁸=a; φ(a⁴)=a¹⁶=a²≠a | Inverse convention discriminated. |
| Re-expansion direction | p=2,m=1 before localization | q+1=(q−1)+2, not (q−1)−2; after inverting 6 overlap=0 | Sign correct. |
| Nonabelian coefficient example | x³−2 mod 5 | (x−3)(x²+3x+4)=x³−2; quadratic discriminant 3 is nonsquare | Completed Frobenius moves quadratic component; no global automorphism. |
| numberFieldTraceExports_equalizer | R=ℤ[1/6], family (1,0,…) | Edge (5,1) yields 1 versus 0 | Unrestricted product is strictly larger. |
| Equalizer uniqueness | Zero family, unit family | They arise from z=0,z=1; equal Taylor families have difference 0 under ε⁻¹ and hence z difference 0 | Retain both directions. |
| numberFieldTraceExports_hCompletion | R=ℤ[1/6] | h-completion=R[[h]]; an order-component idempotent with v₂=1 has τ₁=0 but is nonzero | Completion map is not asserted injective. |
| Taylor order-one reduction | z=ε_R(q) | τ₁(z) mod h=1=ρ₁(z); τ₁(h) mod h=0 | Compatibility verified. |
| numberFieldTraceExports_naturality | id_F; ℚ→ℚ(i), common Δ=12 | Both routes send 1↦1, q↦ζ_m+X; at m=1, q↦1 after reduction | Naturality remains a target on the marked comparison. |
| Δ=1 trace exclusion | F=ℚ | Ring ℤ is étale, but 6∤1 and TraceInversion=false | No trace claim outside its hypotheses. |
| Normalized q-divided-power source correction | q=2,x=3,y=1,d=1,2 | λ¹=2, γ̃¹=−2; δ²=2/3; ∇qδ²=2=δ¹ | Roadmap's normalization correct. |
| Finite-coefficient rational corner | m=1 | Empty local product=0; uncompleted dR_(0/ℚ)=ℚ, qdR_(0/ℤ)=ℚ[[h]] | Arithmetic pullback correction necessary. |
| R01 trace-gap minimality | S=ℤ[x,y], p=2 | Requested completed degree-two step=Ω²[[h]], supplier step=h^max(2−2,0)Ω²[[h]]=Ω²[[h]] | Already supplied; retire redundant requests. |
| R01 local-lift ownership | A=ℤ_p and toric ℤ_p⟨x⟩ | §0.1 gives S_p/id and root-colimit lift/map, precisely the two requested objects | Keep local targets, retire external gap entries. |

### Pinned library and Lean audit

Opened the declarations at Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and searched Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The manifest pins match these hashes. The twelve explicitly located arithmetic/algebraic inputs resolve:

| Declaration | Pinned source locator | Relevant content |
| --- | --- | --- |
| `NumberField.discr`, `Rat.numberField_discr` | `Mathlib/NumberTheory/NumberField/Discriminant/Defs.lean:36,75` | Integer discriminant; ℚ has value 1. |
| `NumberField.RingOfIntegers` | `Mathlib/NumberTheory/NumberField/Basic.lean:101` | Integral closure of ℤ in the field, with native ring instances. |
| `IsLocalization.Away.algebraMap_isUnit` | `Mathlib/RingTheory/Localization/Away/Basic.lean:82` | Inverted element is a unit. |
| `map_dvd` | `Mathlib/Algebra/Divisibility/Hom.lean:31` | Multiplicative homomorphisms preserve divisibility. |
| `isUnit_of_dvd_unit` | `Mathlib/Algebra/Divisibility/Units.lean:129` | A divisor of a unit in a commutative monoid is a unit. |
| `Commute.isUnit_mul_iff` | `Mathlib/Algebra/Group/Commute/Units.lean:74` | Requires the two factors to commute. |
| `Algebra.Etale` | `Mathlib/RingTheory/Etale/Basic.lean:205` | Formal étaleness and finite presentation; no module-finiteness field. |
| `Algebra.Smooth` | `Mathlib/RingTheory/Smooth/Basic.lean:539` | Formal smoothness and finite presentation; no module-finiteness field. |
| `MvPolynomial` | `Mathlib/Algebra/MvPolynomial/Basic.lean:79` | Native polynomial carrier, any variable type. |
| `Even` | `Mathlib/Algebra/Group/Even.lean:54` | Additive declaration generated from the existential square definition. |
| `Nat.factorization` | `Mathlib/Data/Nat/Factorization/Defs.lean:50` | Multiplicities encoded by a finitely supported function; lift statements separately require prime p. |

Also opened `Algebra.FormallyEtale` at `Mathlib/RingTheory/Etale/Basic.lean:46`: it asks for vanishing differentials and H1Cotangent. It is not itself the full animated or spectral cotangent carrier required in §0.1. The README correctly distinguishes those notions.

Object searches for Habiro, q-Hodge, THH/topological Hochschild, spherical lifts and Nygaard found no native replacement for the nine headline carriers. Existing ordinary Witt-vector, cotangent and filtered-category files do not provide these enhanced constructions. The three citation-scanner leads `Prismatic.Trace.gradedTCMinus`, `gradedTP` and `gradedTC` are roadmap API targets, explicitly supplied by PrismaticCohomologyPartIII §7.0 at README:767; they are not purported pinned library declarations. They are therefore not missing-citation findings.

The nine headlines are relativeFormalEtaleLift, sphericalPerfection, tracePair, traceHabiro, quotientLift, perfectedLiftNaive, tracePair_quasiRegular, canonicalFramedTrace and numberFieldTraceExports. All nine occur in the module docstring, with their missing spectral/enhanced carriers. There are **zero declarations, zero sorry bodies, zero instances and zero section variables**. Consequently the prescribed `#check @name` signature probe has zero subjects, and the one-tactic padding probe has zero subjects. No hypothesis can have silently disappeared from a declaration. The arithmetic predicates are not substitutes for the unavailable headlines. No absent statable headline or padding was identified.

### Ownership, citation and gap audit

Used the roadmap service's `show` and object-based `grep`, the named sibling heads, main and the board package inventory. The two main-roadmap shape comparisons were PadicMeasuresIwasawaAlgebras and RestrictedPowerSeries; the target keeps prose layers, definition APIs, discriminating Checks, Examples and Dependencies. No algorithm, copied source passage, route-only replacement, sorry data, set_option, stray file or duplicate Lean declaration was found.

The following fourteen supplier groups were resolved against their current texts; grouped section ranges denote the contracts actually consumed, not a new target list:

| Supplier | Resolved locations and ownership |
| --- | --- |
| HabiroCohomologyFoundations | §§0.1–0.3; §§1.14–1.16; §§2.1–2.10; §§4.1,4.4,4.8,4.12–4.24,4.28; §§5.2–5.8,5.13,5.15–5.23,5.26. In particular README:1827,1852,1860,1884 supply the canonical domain and counit comparison; README:2102 supplies the quasi-regular section; README:1736 supplies the exported early interface. §§8.18–8.19 are explicitly not claimed as trace conclusions. |
| RefinedTraceMethods | §§6.1–6.14,7.6,8.8. README:2498/2524 retains exact local/global data; 2950/2962/2974 distinguishes odd-prime, prime-two and identity-cover comparisons; 3013/3133 supplies pair/monoidal structures; 3109/3122 supplies full framing and prime-two resolution; 3302/3316 periodic and number-field comparisons; 3524 finite coefficients; 3876 coherent export. Applications here have distinct ownership from these existence theorems. |
| QWittVectors | §§2.1–2.5, README:319–468. Perfect coverage implies integer torsion-freeness; relative Adams maps use the twisted tensor, not inverse absolute Frobenius. |
| HabiroRings | §§2.1,2.4–2.5; §§5.1–5.9,7.3. README:902 onward supplies static ring/finite quotients; 941 onward full Taylor factors; §5.6 keeps completed base change; §5.8 supplies discriminant localization; §7.3 gives the cubic obstruction. No second completion or arithmetic ring is defined here. |
| HabiroNumberFields | §§2.1–2.4, README:598,617,647,665. Compatible roots and CRT transitions, full coefficients, convergent re-expansion and gluing are imported through HabiroRings. Higher K₃ lines are outside this roadmap. |
| HabiroCyclotomicCompletions | §§1.4,2.3,5.1,5.3; README:2177 supplies localized-prime component decomposition. The order-one noninjectivity test agrees with it. |
| SolidAnalyticRings | §§1–2 and 6.4, README:631. Completed sphere unit, bounded-below tensor comparison and inherited gaps at README:71,79 are retained; no Hℤ-unit substitution. |
| KTheoryFiniteLocalFields | §4.0, README:638, genuine fixed points and cyclic theory. Cyclotomic restriction structure is distinct from the cyclonic data used here. |
| StableHomotopyKTheory | §§5.13–5.18,7.13–7.21,7.32,7.34; README:2099,2509–2593,2780,2805. Generic spectral structures and v-compatible quotient towers remain its work. The higher-power/trace application here is not a second Moore-spectrum existence theorem. |
| EnhancedDerivedSheaves | E5:abstract, E5:presentability.4 (README:1770) and E5:cotangent-export.1 (README:2869). Animated square-zero and cotangent mapping spaces are supplied; §0.1 explicitly adds spectral lifting/effectivity. |
| PrismaticCohomology | Layer 0, including toric δ-structure and §0.59's complete étale extension contract. No intrinsic Nygaard construction is replaced by a trace definition. |
| PrismaticCohomologyPartII | §§3.1,3.13–3.16,3.20–3.23,5.7–5.8,5.14–5.18; README:149,442–602,1562–1599,1716–1830. Intrinsic Nygaard, completion and q-PD/framed algebraic inputs match the stated contracts. |
| PrismaticCohomologyPartIII | §7.0, README:751–787. Graded trace comparisons retain twists/completion; the three scanner leads are found at line 767. |
| AInfCohomology | §AI.7.2, README:3815 onward. Circle/finite Tate functors and spectral diagonal; BMS motivic filtrations are separate from the intrinsic prismatic filtration. |

No fully qualified declaration is introduced by Suggested.lean, so there is no name collision with an open roadmap. Search results involving general spherical Witt constructions elsewhere do not supply this particular marked relative formal-lifting theorem. Layer 0 is an explicit extension here, rather than a claim that ordinary finite-presentation étale lifting already covers infinite perfection. The base roadmap stops at the algebraic pair/descent interfaces; Layers 1–4 apply the independent trace theory to them.

The declared fourteen-gap inventory resolves as follows. This is the concrete reconciliation required by R01; these are not fourteen separate findings.

| Gap slug | Current owner / resolved contract |
| --- | --- |
| spherical-base-data | RefinedTraceMethods §6.1, README:2498,2524 |
| local-trace-comparisons | RefinedTraceMethods §6.9, README:2950,2962,2974 |
| global-trace-pair | RefinedTraceMethods §6.10, README:3013 |
| full-framed-trace | RefinedTraceMethods §6.10, README:3109 |
| framed-proof-exports | RefinedTraceMethods §6.10, README:3060,3086,3115,3133 |
| cyclonic-comparison | RefinedTraceMethods §§6.11–6.13, README:3156 onward,3302 |
| number-field-realisation | RefinedTraceMethods §6.14, README:3316 |
| coherent-trace-interface | RefinedTraceMethods §8.8, README:3876 |
| framed-resolution-comparison | RefinedTraceMethods §6.10, README:3122 |
| framed-derived-commutative | RefinedTraceMethods §6.10, README:3133–3145; the plan's reference to this roadmap's §3.3 is also obsolete |
| finite-coefficient-trace | RefinedTraceMethods §7.6, README:3524 onward |
| framed-pair-coherences | RefinedTraceMethods §6.10, README:3133–3145 |
| perfect-delta-spherical-lifts | This README §0.1, line 146 |
| spherical-perfection-map | This README §0.1, line 146 |

The two inherited SolidAnalyticRings gaps are genuine declared supplier contracts and are not findings. The same applies to conditional enhanced refinements explicitly inherited from HabiroCohomologyFoundations. Their absence from implemented Lean is not an objection to this roadmap.

## Not verifiable

- No cited text was inaccessible; no new source request is needed.
- The full relativeFormalEtaleLift equivalence for arbitrary p-completely formally étale C is not a theorem stated at the cited HA locator. HA supplies Postnikov square-zero machinery; KU Example 6.9 supplies the relatively perfect application. I checked the proposed construction route and its identity, product, localization and nonflat examples, not a completed proof of the broader theorem. The README labels that broader construction as work to do, including effectivity.
- The source papers do not by themselves certify every global pair coherence or the prime-two framed resolution comparison. Those are explicit supplier targets, inspected here. The source omissions are recorded below; no undocumented assumption of their implementation is made.
- This review checks roadmaps and the pinned Lean acceptance file, not completed spectral implementations. Finite computations and source verification do not constitute proofs of the future enhanced theorems.

## Source issues

- **Error** in GSWZ at footnote 1, printed p.6 (GSWZ line 263), compared with (13), p.7 (GSWZ line 273): the source says the abelian coefficient embedding uses forward Frobenius powers; it should be inverse Frobenius powers with the displayed edge convention; affects a stated result.
- **Misprint** in KU at proof of Corollary 6.15, printed p.86 (KU line 3888): the source says the étale Habiro identification is QH Corollary 3.12; it should be QH Corollary 3.13, printed p.27; affects nothing.
- **Error** in TC at §3.5 and Lemma 3.7, printed pp.31–32 (TC line 1323 and line 1357): the source says the local product gives the uncompleted pair and rational conditions vanish; it should be an arithmetic pullback retaining the constant rational corner; affects a stated result.
- **Misprint** in KU at Lemma 6.11, printed p.84 (KU line 3766): the source says λᵈ((x−y)/(q−1)) equals the q-Pochhammer-normalized generator; it should be multiplied by (−1)ᵈ under the stated q-Pochhammer convention; affects the proof.
- **Error** in KU at proof of Theorem 6.10, printed p.86 (KU line 3860): the source says Jackson derivatives lower the q-Pochhammer-normalized divided powers without a factor; it should be the factorial-normalized δ⁽ᵈ⁾ that obey those displayed derivative identities; affects the proof.
- **Gap** in KU at Remark 3.10, printed p.27 (KU line 1117): the source says the perfectoid resolution can replace the polynomial resolution; it should be justified by a compatible comparison of the two resolutions; affects the proof.
- **Misprint** in QH at Remark 4.23, printed p.63 (QH line 2876): the source says condition (b) implies condition (a); it should be condition (a) supplies condition (b), in the stated exponent ranges; affects nothing.
