# Repair findings for geometric Satake and fusion, part II

## F01 (P1) — applied

§0.5: closed map with prescribed image → closed immersion identifying M^♦ with Mᵛ. Added the blow-up negative control: two reduced components, exceptional curve contracted, comparison not monic. Also corrected the closed-immersion wording in §§0.4 and 1.6. Evidence: SW line 7491 and KPZ line 741; the GL representative is identified at KPZ line 768.

## F02 (P2) — not actionable in this package: allocation of the parent's continuations requires a scope decision

Named GeometricSatakeAndFusionPartIIRationalGelfandProof, as already specified by the immutable restructuring brief. The parent also assigns metaplectic Satake and larger-residue-field rational Witt comparison here, but neither is in this package's allocated layers or that continuation's brief. Changing that brief or the parent's three citations is outside the permitted edits; no owner was invented for those two subjects.

## F03 (P2) — applied

§2.1: anisotropic division factors → every Res_(L/K)PGL_m(D) with tame L/K and p dividing index(D), for every m≥1. Propagated the exact index restriction to §§2.4 and 3.3 and retained §2.2's explicit inheritance. Added split, isotropic index-3 and prime-to-3 index-2 Checks. Evidence: KPZ line 475; Remark 3.3.26's abbreviated wording cannot weaken Proposition 2.2.2.

## F04 (P2) — applied differently

Layer 8 and the Lean headline now cover every reductive group, parahoric, dominant bound and prime. Retained tame inertia as a separate theorem. Distinguished signed lift-dependent trace from its semisimple average; characterized the former by Satake scalars and averaged afterward. Updated gap:parahoric-bernstein, summary and Checks. Evidence: AGLR line 129, AGLR line 141, AGLR line 2948 and AGLR line 3020.

## F05 (P2) — applied

§3.5: identifying the reduction as this roadmap's conclusion → explicit GS0 “Bounded admissible affine flag loci” input. Removed Theorem 6.16 from this subsection's locator and replaced its restricted §3.4 dependency by the general GS0 contract. Made the same dependency correction in §7.3. Theorem 6.16 remains appropriately cited for §3.4's comparison square.

## F06 (P2) — applied

Supplier contract and §8.2 now import LefschetzPencilsAndVanishingCycles §1.10 and its semisimpleTrace, semisimpleTrace_refinement and semisimpleTrace_additive declarations. gap:semisimple-trace-and-comparison now requests only proper-pushforward compatibility and scheme/analytic comparison, identically in README and plan.gaps. Evidence: the supplier's §1.10, its theorem and API; the q=9 block gives 10/9, versus 1/9 on raw invariants.

## F07 (P2) — not actionable in this package: acceptance and placement of supplier continuations require maintainer decisions

Split the five bundles into 27 named requests, with identical README/plan entries and explicit consuming Needs lines. RG2 excludes R-smooth fixer immersions; RootSystemsPartII's design routes modular bounds to RootSystemsPartIIMinusculeBounds. Recorded that scope boundary instead of attributing these to RG2.3 or RS2.4. The gaps remain requests to their existing parents pending external allocation; naming a continuation does not accept it.

## F08 (P2) — applied

Deleted polynomial integral group lifts from RG2's ownership claim. Added gap:polynomial-parahoric-lifts to §§1.1, 1.3, 1.4, 2.1, 2.2, 2.5 and 3.6, and gap:translation-stabilizer-jets to §5.4. Polynomial representation descent is separately named in §§2.4–2.5 and 3.3. These are explicit missing contracts, not assertions that RG2 already supplies polynomial group schemes.

## F09 (P3) — applied

FHLR reference: copied PRLSV description → Lemma 5.27, p. 34, finite universal homeomorphism onto the image. Set the same locator and both requested consumers in sources.toml; added the direct FHLR locator in §7.7. Evidence: FHLR line 1540; its statement requires Hypotheses 2.1 and 5.24 and does not assert a closed immersion.

## F10 (P3) — applied

Deleted repetitive single-line head locators from computed Checks and elementary API consequences; retained the defining paragraphs' theorem/section/page citations. Corrected RZ17 Remark 5.7, PRLSV's name, KP's display (4.7.7) in §4.7.4, and GL Theorem 1.3's page throughout README and manifest. Evidence: RZ17 line 1115, KP line 3722, GL line 78 and PRLSV line 2194.

## F11 (P3) — applied

Deleted commentary about discarded Lean declarations from the scope, §0.5 proof sketch and Lean module docstring. The docstring retains the geometric headlines and the actual missing carriers, including the enlarged Layer 8 theorem. No acceptance declaration or mathematical target was deleted.

## F12 (P3) — applied

Replaced the blanket list in all 19 Needs lines by the sections or atomic gaps each route uses. Removed deformation/Grassmannian dependencies from the tangent-cone, S₂ and rank-one comparisons. Layer summaries follow those requirements. Algebraization and normality descent are requested where used; §5.3 cites the pinned scheme proper-monomorphism criterion.

## F13 (P3) — applied

§7.7: closed exactly when image normal → the finite normalization map is a closed immersion exactly when its schematic image is normal. Also changed the blanket non-immersion sentence to “need not be.” The cusp has a finite closed normalization morphism but no closed immersion, since t is missing from k[t²,t³]; §0.6 records this computation too.

## F14 (P3) — applied

Replaced the three disclaimers by the SL₂→PGL₂ integral-lift obstruction, cusp normalization and ramified PU₃ at p=3. Added F=Q_p and the F_(p²)-algebra hypothesis to the quaternion Check, computing ranks (1,1) versus (2,0). Replaced undefined Drinfeld compatibility by O_D⊗_(O_F)R-linear finite-projective rank-n quotients. Evidence: HLR line 1860 and SW line 7813.

## Validation outcomes

- Required elaboration: `lake env lean` on `packages/GeometricSatakeAndFusionPartII/Suggested.lean`, from the pinned content checkout, using the absolute target argument required by the brief: exit 0, empty output. The only import is Mathlib; no Tau Ceti object build was needed. No Lean process remains running.
- Enumerated every local Lean declaration for the explicit-binder audit: there are zero definitions, instances or theorems. Consequently there are zero local signatures requiring `#check @name`, and no lost standing hypothesis or name change. Elaborated a scratch signature file once: exit 0. Its five library checks confirmed Submodule.span, Algebra.trace, Module.Grassmannian, traceForm_nondegenerate and AlgebraicGeometry.Scheme. In particular, finite dimension and separability both occur in traceForm_nondegenerate's elaborated signature. No stand-in theorem was added.
- Required dependency gate, with `--movable`: exit 0, exact output below. There are no UPWARD, CYCLE or moved lines.

```text
depcheck: 49 roadmaps, 563 edges, 0 problem(s)
```

- `git diff --check`: exit 0, empty output.
- Structural check: only the top-level gaps value of design/plan.json changed; every other parsed value agrees with HEAD. All 35 gaps have matching slug, supplier and needs in README; all 27 split contracts have explicit consuming Needs lines. All source ids are unique, every source has a locator and consumers, and TOML/JSON parse successfully.
- Citation resolver: no missing Lean names; the same two roadmap leads remain: RootSystemsPartII §RS2.4 and DiamondsAndVStacksPartII §D10.8 are absent from main/open-head indexing. Both exist in the board's provided design copies: `packages/RootSystemsPartII/design/README.md`, “Invariant dominance and coroot orbit steps,” and `packages/DiamondsAndVStacksPartII/design/README.md`, D10.8–D10.15. These are verified design contracts, not claims of merged implementations. The resolver's statement that pinned packages were unavailable was not used: their actual checkout pins and source declarations were inspected directly.
- No gate failures were supplied in the brief. No extra sources are missing: HLR was legally fetched through the sources service under its single manifest key, and its version-specific Corollary 9.2(2)/Example 9.4 locators were checked. The remaining cited works already have certified cache entries.

## Ownership and maintainer consequences

Read the main ComplexTori and ProfiniteProPGroups roadmaps for shape. Used object searches across the indexed main roadmaps and open heads, and separately across the board packages. In particular the searches found the existing LPV semisimple-trace API and GlobalShtukasAndFunctionFieldLanglands' equal-characteristic global geometry; neither was replanned. Read the actual cited ModularCurves §0G, SchemeAndStackFoundations foundation/descent/formal sections, ReductiveGroupsPartII RG2.0a–RG2.5 and excluded-scope list, SmoothRepresentationsOfLocalGroups SR.3.2/SR.4.1, PELModuli M0, EtaleDualityAndPerverseSheaves §2, and the supplied RootSystemsPartII and DiamondsAndVStacksPartII designs. The local-model scheme comparisons and applications remain this roadmap's allocated direction. No local Lean name duplicates any supplier name.

F02 requires a human decision about the two parent delegations and the existing rational-Gelfand continuation brief. F07 requires acceptance and merge placement of the integral-representation and modular-minuscule extensions. The latter is called RootSystemsModularMinusculePartII in this package's immutable restructure list but RootSystemsPartIIMinusculeBounds in the actual root supplier's design brief. No alias or acceptance was invented. The split gaps record each mathematical need against its existing parent and identify the excluded direction in the section field; they do not claim that the parent has accepted the extension. A repeated finding about those allocations must go to the maintainer.

The atomic replacement slugs are visible together under Exact supplier contracts and plan.gaps. Consumers of the five retired bundle slugs must use the relevant new slug. No Lean declaration names changed. Layer 8's normalized IC trace τ remains the alternating IC trace; κ includes AGLR's additional parity sign, and z^ss is its semisimple Bernstein normalization. Existing smooth GL₂ numerical examples retain τ=−1/3 at q=9.

The source calls its concluding reduction Lemma 8.4, although Theorem 1.3's parenthetical description calls it Theorem 8.4; the README cites the actual numbered lemma. Unlike the review's abbreviated proposed repair, no semisimple scalar is identified with the trace for one unaveraged Frobenius lift. The tame splitting-inertia theorem is not asserted for all wild groups.

Only README.md, Suggested.lean, sources.toml, plan.gaps and this report were edited. metadata.toml is unchanged. Immutable plan fields still contain the former wording and bundled route ledger; updating those fields was not authorized. Nothing was committed, pushed or published; no GitHub writes or messages were sent.

## Adversarial mathematics pass

The values below are hand computations or direct specializations of the cited theorem, not claims that finite testing proves the general theorem. “Retained” records the stated hypotheses; “request” is an unmet supplier contract, not an accepted theorem. All examples use their actual carrier, including nonreduced coefficient rings where needed.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
| --- | --- | --- | --- | --- |
| Integral coroot order | PGL₂ | 2−0=1·2; 1−0 is not in 2ℕ | 0≤2; 0 and 1 incomparable | Retained |
| Distinct orbit convention | A₂ reversal, nominal period 4 | Distinct sum α₁+α₂; repeated-period sum 2α₁+2α₂ | Repeated version wrong | Retained |
| Apartment translation sign | GL₂, diag(t,t⁻¹) | Cocharacter (1,−1); displacement (−1,1) | Sign fixed | Retained |
| Grassmannian quotient rank | h=3, d=1 | Native quotient rank h−d=2; SW quotient rank 1 has kernel rank 2 | Two conventions separated | Retained |
| KZ inverse cocharacter | diag(π⁻¹,1,1) | πgΛ=Oe₁+πOe₂+πOe₃; reduction ke₁ | Line rank 1 | Retained |
| Repetition and zero multiplicity | GL₂ standard, m=0,1,2 | Ranks (0,0),(2,1),(4,2); m=0 kernel GL₂ | m≥1 necessary | Retained |
| Cartan conjugation | Lower unipotent with entry 1 | gEg⁻¹ has rows (−1,1),(−1,1); E−H−F same | Cartan coefficient −1 | Retained |
| Dᴴ coefficient | m=1 in F₂,F₃ | −2=0 in F₂; −2=1 in F₃ | Division by 2 excluded at p=2 | Retained |
| IC shift and Tate twist | d=0,1,2, q=9 | Factors 1,−1/3,1/9; unshifted φ=1 | Correct alternating sign | Retained throughout Layer 8 |
| Denominators | q=2,3,9; formal q=0,1 | q≠0; roots nonzero; 1/q at q=0 undefined; q=1 not a residue cardinality | Actual finite-field range excludes junk | Retained |
| Zero ring Grassmannian convention | R=0 | Spec R empty; rank condition has zero prime tests | Rank predicate vacuous, no geometric DVR example | Retained |
| Fixed bound and universes | μ=0 for G=1 | Single bounded object, dimension 0; no roots or strata beyond unit | No nonempty-root requirement | Retained |
| 0.1 datum and reflex field | GL₂, μ=(1,0),0,(2,0) | Reflex F; flags P¹ and point; root pairing 2 for last class | Last class nonminuscule | Retained |
| 0.1 morphism composition | Identity on GL₂ datum | Integral and generic composites both identity; μ image (1,0) | Compatibility holds | Retained |
| 0.1 connected-level change | Connected one-lattice GL₂ | 𝒢°=𝒢; same (F,G,μ), comparison identity | Equality only in this example | Retained |
| 0.2 Hodge flag map | Standard rank-2 representation | Line maps to same line in Gr(1,2)=P¹ | Closed identity map | Retained |
| 0.2 direct-sum API | Two standard GL₂ copies | A line ℓ maps to ℓ⊕ℓ of rank 2 in rank 4 | Faithfulness unchanged | Retained |
| 0.2 opposite/dual API | Rank-3 line | Annihilator dimension 2; dual quotient dimension 1 | 1+2=3 | Retained |
| 0.2 Hodge failure | GL₂, weights (2,0) | Weight difference 2, rather than 1 | Fails required weight pattern | Retained |
| 0.3 quasi-tameness | Wild K/F, H=GL₂/K | H splitting degree 1 over K; outside extension may be wild | Quasi-tame | Retained |
| 0.3 non-exceptional predicate | PGL₂(D), index(D)=3, p=3 | Index modulo p=0 despite relative rank 1 | Excluded regardless of isotropy | Matched exact index restriction |
| 0.4 generic bound | GL₂ (1,0); central μ=0 | Generic fibres P¹ and point; zero closure Spd O_F | Distinct dimensions 1,0 | Retained |
| 0.4 central lifting | SL₂→PGL₂ | Cocharacter map n↦2n; equation 2n=1 unsolvable | Minuscule class 1 has no lift | Added computed negative control |
| 0.4 trivial central comparison | GL₁→1, μ=0 | Both closures Spd O_F; maps identity over F | Valid lift comparison | Added positive control |
| 0.5 scheme specification | P¹ over O_F | Diamond comparison identity onto v-model; one special component | Representative | Required isomorphism |
| 0.5 blow-up | Blow up rational special point | Divisor of π: strict transform+exceptional, multiplicities 1+1; two components versus one | Normal flat reduced fibre still insufficient | Excluded contracted exceptional P¹ |
| 0.5 monomorphism | Two distinct points on exceptional P¹ | Same target point x; two distinct source maps | Not monic | Added negative control |
| 0.5 normality criterion | P¹ and its blow-up | Both total spaces normal, generic P¹ normal, special fibre reduced | Normality cannot distinguish these | Strengthened comparison, not normality |
| 0.5 uniqueness | Two identity representatives P¹ | Diamond identity lifts to scheme identity; one prescribed lift | Correct uniqueness object | Retained |
| 0.5 reflex base change | P¹ base extended by E′/E | Result P¹_(O_E′), smooth, normal, reduced fibre | Agrees with base-changed comparison | Retained |
| 0.6 goodness | Identity GL₂ embedding | Local-model map P¹→P¹ identity | Closed immersion | Retained |
| 0.6 period-total rank | h=2,d=1,r=2 | Total ranks (4,2), target Gr(2,4) | Correct ranks | Retained |
| 0.6 finite non-immersion | Characteristic-zero cusp | k[t²,t³]→k[t] injective, misses t; geometric fibre over cusp one point | Finite birational bijection not closed immersion | Added computed control |
| 1.1 modification definition | GL₁, P=u−π | Degree m gives lattice t^m k[[t]]; m=0 neutral | Correct special translation | Retained |
| 1.1 divisor degeneracy | P=1 | Localization unchanged, torsor globally trivialized; one class | No nontrivial modification | Retained |
| 1.1 nonreductive control | Additive group | a↦at⁻¹ in t⁻¹k[t⁻¹]; parameter a ranges over A¹ | Arbitrary smooth affine case not ind-proper | Retained |
| 1.1 base-change API | GL₁ t^m, k→k′ | Same exponent m; successive pullbacks both t^m | Identity/composition preserved | Retained |
| 1.2 closure | GL₂ (1,0); μ=0 | Closures P¹_(O_F), Spec O_F; dimensions 1,0 | Flat projective | Retained |
| 1.2 vertical nonexample | Closure plus extra special point | Extra point has no generic point in its closure; π kills its coordinate | Not flat closure | Retained |
| 1.2 product API | Two GL₂ line data | Product P¹×P¹; generic dimension 2=1+1 | Product comparison | Retained |
| 1.3 special-fibre components | GL₂ Iwahori | k[b,c]/bc; components k[b],k[c]; bc=0 with b,c nonzero | Components normal, whole fibre nonnormal | Retained distinction |
| 1.3 finite base change | Equation bc=π, π=(π′)^e | Ring bc=(π′)^e; special reduction bc=0; total hypersurface normal | Stable normality, reduced fibre | Retained |
| 1.4 adjoint comparison | GL₂→PGL₂, minuscule line | Derived group SL₂ simply connected; both flags P¹ and both models P¹ | Normalization map identity | Retained |
| 1.5 auxiliary cover | Classical D, odd p | Derived kernel order 1 or 2; gcd(p,2)=1 | Prime-to-p range | Corrected PRLSV citation |
| 1.6 one-lattice model | h=3,d=1 | Gr lines P²; opposite kernel dimension 2 gives dual P²; both dimension 2 | Convention comparison holds | Retained |
| 2.1 index exclusion | PGL₂(D), index 3 at p=3 | Relative rank 1; index divisible by 3 | Excluded though isotropic | Added hypothesis and Check |
| 2.1 permitted index | PGL₂(D), index 2 at p=3 | 2 mod 3=2; gcd(2,3)=1 | Index condition satisfied | Added Check |
| 2.1 split comparison | GL₂ hyperspecial | Splitting extension degree 1; model P¹ maps identically | Closed comparison | Added Check |
| 2.2 stable-lattice centralizer | W⊕W, centralizer GL₂ | diag(π,1) moves lattice W_O⊕W_O to πW_O⊕W_O | Lattices differ but centralizer-equivalent | Retained |
| 2.3 restriction of scalars | [K:F]=2, O_K-rank 2 | O_F-rank 4; ranks (1,1) total 2 | Rank formula 2·2 and 1+1 | Retained |
| 2.4 repeated representation | Standard GL₂ twice | Ambient rank 4; Hodge rank 2; neutral fixer unchanged | Positive multiplicity adequate | Exact factorwise index condition |
| 2.5 centralizer multiplicity | Quaternionic factor | Division degree 2; split irreducible dimension 2; source dimension 4=2·2 | One copy would halve dimension | Retained |
| 2.6 chain incidence | Two GL₂ lattices | Both incidence equations πad−bc=0; at π=0, bc=0 | Two components | Retained |
| 2.6 incompatible product point | π=0, [a:b]=[0:1], [c:d]=[1:0] | bc=1≠0 | Product point excluded | Retained |
| 2.7 total embedding | Two line summands | Component ranks (1,1) total 2; wrong ranks (2,0) also total 2 | Idempotents plus component ranks needed | Retained |
| 2.7 polarized segment | (r,a)=(1,0),(2,1) | 2r−1+a=1,4 | Correct term counts | Retained |
| 2.8 alternating trace | K=F, r=1 | Tr(ψ(e₁,e₂))=1=ψ(e₁,e₂); ψ(v,v)=0 | Correct normalization | Retained |
| 2.8 zero carrier | r=0 or V=0 | Only vector 0; radical {0}; multiplier not determined | Form nondegenerate, group faithfulness separate | Retained |
| 2.8 inseparable control | F_p(t^(1/p))/F_p(t) | Trace identically 0; traced plane radical entire plane | Separable hypothesis needed | Retained |
| 2.8 common multiplier | Two planes over characteristic 3 | Multipliers 1 and 2; common scalar would equal both | Independent similitudes excluded | Retained |
| 3.1 canonical model | GL₂ line times μ-trivial factor | Dimension 1+0=1; trivial factor model point | No nontrivial-μ assumption | Retained |
| 3.1 nonnormal polynomial control | Ramified PU₃ at p=3, standard-lattice level | Fundamental group order 3; reduced Schubert dimension 2; normalization not isomorphism | Raw model nonnormal, fibre nonreduced | Added HLR instance |
| 3.2 normalization of image | Cusp | Fraction fields both k(t); t integral since t² in smaller ring; t absent | Finite normalization need not be immersion | Retained |
| 3.3 descent endomorphisms | Quadratic K/F, basis 1,u, u²=a | Γ=diag(1,−1); f=diag(1,2) commutes with Γ but not multiplication by u when a≠0 | Γ equations alone insufficient | Exact index condition retained |
| 3.4 special-fibre square | Hyperspecial GL₂ | Scheme fibre P¹_k; both perfected routes yield (P¹_k)^perf | Comparison square, not unperfected equality | Retained |
| 3.5 arbitrary-bound reduction | GL₂ μ=(2,0) | d=2; nonempty admissible union, generic bound dimension 2 | Reduction imported, not reproved | Corrected input/dependency |
| 3.6 weak-normal model | GL₂ μ=(1,0) | Weak normalization of P¹ is P¹; comparison diamond unchanged | Intermediate model matches smooth case | Retained |
| 4.1 span at smooth point | A¹ at 0 | Derivative of a↦a is 1; span=k, tangent=k | Equality | Retained |
| 4.1 fat point | k[ε]/ε² | ε↦f with f²=0 in k[[a]] forces f=0; curve span 0, tangent dimension 1 | Negative control | Retained |
| 4.1 span versus individual curves | xy=0 | Axis derivatives (1,0),(0,1) span k²; derivative (1,1) forces nonzero product | Sum not an individual derivative | Retained |
| 4.1 functoriality API | Map A¹→A¹, x↦x² at 0 | Derivative 0; composite derivative 0·1=0 | Curve span maps into span | Retained |
| 4.2 tangent-cone obstruction | x²+xyz=0 | Degree-2 initial form x²; reduced cone x=0; tangent dimension 3 versus span 2 | Hypersurface reduced, not normal | Removed unrelated dependencies |
| 4.3 big-cell weights | SL₂, λ=0, j=1 | Both root exponents 0−1=−1; Cartan exponent −1 | t⁻¹ directions | Retained |
| 4.4 detecting weights | B₃, μ=re₁, ν dominant same coroot coset | Spin pairing (r−ν₁−ν₂−ν₃)/2; at r=2,ν=(1,1,0), value 0 | Boundary satisfies dominance | Retained restricted family |
| 4.4 nonexample outside family | B₃ μ=(2,1,1), ν=(2,2,0) | Spin difference 0; first-two-coordinate difference −1 | Arbitrary dominant μ would invalidate spin-only test | Supplier request remains scoped |
| 4.5 affine-root curve | SL₂ λ=0, μ=α∨ | k_α=1; j=1 derivative t⁻¹X_α; j=2 relative bound 2α∨ exceeds α∨ | Interval exact in example | Retained |
| 4.5 zero interval | λ=μ=0 | k_α=0; no positive j≤0 | No spurious root direction | Retained |
| 4.6 both FM bounds | SL₂ standard, μ=α∨, λ=0 | tO²⊂O²⊂t⁻¹O² | Both inclusions hold | Retained |
| 4.6 zero bound | μ=0 | L⊂O²⊂L gives L=O² | Both directions necessary | Retained |
| 4.7 root equality | SL₂ μ=α∨, λ=0 | 〈μ,ω〉=1; λ pairing 0; j_α=1=k_α | Lower/upper bound agree | Retained |
| 4.8 Cartan curve span | SL₂ μ=α∨; μ=0 | t⁻¹kH; zero at μ=0 | Correct exponent range | Retained |
| 4.8 generator sign | H replaced by −H | Span{kH}=span{k(−H)} including char 2 | Same subspace | Retained |
| 4.9 Cartan upper bound | SL₂ H≠0 | Detecting weights ±ω; l_H=1; i≤1 | Same t⁻¹kH bound | Retained |
| 4.9 Dᴴ endpoint | m=1, p=2,3 | Detecting coefficient 0 versus 1 | p≠2 retained for this case | Retained |
| 4.10 curve spanning | SL₂ S_(α∨) at neutral point | Two root directions and H give dimension 3; zero bound gives 0 | Spans singular tangent | Retained |
| 4.11 sum over embeddings | Two ramified embeddings, each (1,0) | μ̄=(2,0); root pairing 2 | Special bound can be nonminuscule | Retained |
| 5.1 orbit budget | D₄ triality | Sum of three roots α_i+α₂ has coefficients (1,3,1,1); θ has (1,2,1,1) | Arbitrary orbit exceeds budget by 1 | Retained existential choice |
| 5.1 valid invariant step | Same λ,μ | θ fixed; λ+θ=μ; residual budget 0 | Positive valid step | Retained |
| 5.2 split curve | SL₂, F₃ | x₋(t⁻¹a) at a=0 is identity; at a=1 has pole order 1 | Base and higher orbit | Retained |
| 5.2 standard unitary equation | c=0,d=u′⁻¹a | τ(d)=−d; τ(c)c+d+τ(d)=0 | Root relation holds | Retained |
| 5.2 nonstandard unitary equation | a=1 in F₃ | c²=1, d=−1/2=1; 1+1+1=0 | Formula valid at p=3 | Retained |
| 5.2 denominator failure | F₂ | 2=0; inverse of 2 absent | Formula not asserted | Retained |
| 5.3 central-kernel control | μ₂ over R=F₂[ε]/ε² | (1+εt⁻¹)²=1; term εt⁻¹ has a pole | Kernel loop not positive | Prime-to-p condition retained |
| 5.4 rational positive loop | GL₂ t^λ=diag(t,1) | Determinant t not a unit of k[[t]]; identity conjugator is positive | Translation and conjugator distinct | Explicit jet gap |
| 5.5 same-field curve | SL₂ over F₃, c=0 | Field of 0 is F₃; A¹ geometrically connected; G_m dense | No residue extension | Retained |
| 6.1 chain type | Standard O_D chain over F_(p²) | Residue algebra F_(p²)⊗_(F_p)R=R×R; standard module ranks (1,1) | Correct base hypothesis | Added hypothesis |
| 6.1 wrong module type | Same base | (2,0) and (1,1) both total rank 2 but unequal idempotent ranks | Wrong chain excluded | Added computed ranks |
| 6.1 unsplit-base control | R=F_p | F_(p²) field; R×R has nontrivial idempotent (1,0) | Algebras cannot agree | Restriction necessary |
| 6.1 periodicity API | B=Q_p, Λ→πΛ | Standard transition multiplication π; θ_π identifies shifted copy; composite π | Correct compatibility | Retained |
| 6.1 polarization line | Trivialization multiplied by unit u | Pairing coordinates scale by u⁻¹; line itself same | Data independent of basis | Retained |
| 6.2 torsor equivalence | Standard chain, ramified unitary fixer | Standard torsor has section; full fixer has 2 components, neutral has 1 | Cannot discard component | Retained |
| 6.3 quotient model | h=3,d=1 | Quotient rank 1, kernel rank 2, Grassmannian dimension 2 | SW convention | Retained |
| 6.3 determinant law | Scalar a on rank-1 quotient | Polynomial T−a; after base change same coefficients | Polynomial-law compatibility | Retained |
| 6.4 kernel | Quotient onto e₁ | Kernel ξe₁⊕e₂⊕e₃; determinant ideal (ξ) | Required modified lattice | Retained |
| 6.4 ξ-unit change | ξ′=uξ | Generated ideal ξ′B=ξB; same polarization line | Independence of generator | Retained |
| 6.5 Drinfeld quotient | n=2, geometric generic base | D⊗R=M₂(R); quotient R² is finite projective rank 2; generic flag P¹ | Correct quotient category | Defined vocabulary |
| 6.5 wrong rank | Same algebra, quotient whole M₂(R) | R-rank 4≠2 | Excluded | Definition determines size |
| 6.6 unitary signature | r_φ=r_barφ=1 | Weights (1,0) at both embeddings; generic flag P¹ | Not central weights (1,1) | Retained |
| 6.6 central nonexample | Weights (1,1) | Central cocharacter; generic flag point, dimension 0≠1 | Wrong model excluded | Retained |
| 7.1 component formula | Zero bound and GL₂ smooth tube | Component count 1; lowest stalk dimension 1 | Both sides 1 | Retained |
| 7.2 divisor translation bound | Rank-one root line, radius 1 | x²=1 has roots −1,1; any line meets fixed sphere in at most 2 points | Bound 2 | Retained |
| 7.3 Serre S₂ | k[b,c]/bc at node | Dimension 1, depth 1, min(2,1)=1 | S₂ despite two branches | Removed Grassmannian/deformation padding |
| 7.4 Wakimoto lowest stalk | Unit sheaf; GL₂ node | Lowest unit stalk dimension 1; node tube annulus has H⁰ dimension 1 | ≤1 and nonzero at extremal codimension | Retained |
| 7.5 connected tubes | μ=0; smooth GL₂; node bc=π | Point, open disc, annulus; each π₀ cardinality 1 | No minuscule condition in general theorem | Retained |
| 7.6 normal representative | GL₂ at p=2 and p=3 | P¹_(O_F) smooth in both; special fibre reduced | No good-prime exception | Retained |
| 7.7 closed immersion iff image normal | Cusp normalization and identity A¹ | Cusp: image nonnormal, t missing, not immersion; A¹: image normal, identity immersion | Both directions tested | Replaced closed by closed immersion |
| 7.8 lattice membership | GL₃ g=diag(π⁻¹,1,1) | πgΛ/πΛ=ke₁, rank 1 | In Grassmannian | Retained |
| 7.8 out-of-range lattice | g=diag(π⁻²,1,1) | πgΛ has π⁻¹e₁, not contained in Λ | Membership false, no undefined reduction | Retained |
| 8.1 generic IC and zero bound | μ=0 | d=0; IC=Q_ℓ; nearby stalk rank 1 | Scheme and v-sheaf versions agree | General setup added |
| 8.1 tame inertia distinction | 2×2 block N(e₂)=e₁ | N≠0 but N²=0 | Unipotent does not mean trivial | Tame theorem kept separate |
| 8.2 semisimple trace | q=9, F eigenvalues 1/9,1 | Graded sum 10/9; kernel-N trace 1/9 | Raw-invariants substitute false | Imported LPV API |
| 8.2 refinement | Split two-line block versus length-2 filtration | Both sums 1/9+1=10/9 | Filtration independent | Import, no local redeclaration |
| 8.2 triangle identity | Two trivial inertia lines, Frobenius 2 and 3 | Direct-sum trace 5=2+3; shift trace −2 | Additivity and shift | Import |
| 8.2 proper pushforward | Two rational points to one point, coefficients 2,3 | Fibre H⁰ trace 5; pointwise sum 2+3=5 | Correct fibre-cohomology formulation | Clarified |
| 8.2 nonrational fibre | Degree-2 finite étale point over F_q | Frobenius permutes two geometric basis vectors, trace 0; rational-point sum 0 | Not geometric cardinality 2 | Clarified |
| 8.2 extension field | E/F unramified degree 2, r=2 | F_r=E_r has residue degree 4 over k_F; q=|k_F|⁴ | Correct maximal unramified base | Specified F_r |
| 8.3 parity of AGLR trace | GL₂ line d=1,q=9 | Raw IC τ=−1/3; κ=(−1)τ=1/3 | Sign essential | Explicit κ |
| 8.3 centrality and unit | μ=0, arbitrary parahoric | κ=τ=φ=1_P; 1_P*f=f=f*1_P | Correct center | All-group statement |
| 8.4 Satake scalar | μ=0, arbitrary π | V_0 trivial line; trace(s_Φ(π))=1 | Center acts by 1 | General characterization |
| 8.4 semisimple versus one lift | Finite quadratic inertia line | A lift can have trace 1 or −1; average (1−1)/2=0; invariant space dimension 0 | Single-lift and ss scalars differ | Averaging explicit |
| 8.4 unramified minuscule specialization | GL₂, q=9 | Spherical z^ss=1/3; q^(1/2)z^ss=1=φ; τ=−1/3 | PZ normalization recovered | Retained as Check |
| 8.4 nonminuscule setup | GL₂ μ=(2,0) | d=2; IC uses Schubert bound of dimension 2, not a minuscule flag | No constant-sheaf scheme substitution | Generalized correctly |
| Worked chain example | a=d=1 | bc=π; special tangent equation has zero linear part, tangent dimension 2 | Regular total semistable surface | Recomputed |
| Worked curve obstruction | f(f+gh)=0 | f=0 or −gh∈(a²); f′(0)=0; y,z derivatives independent | Tangent 3, span 2 | Recomputed |
| Worked orbit sum | Triality in D₄ | Coefficient on central node 3 versus available 2; θ uses exactly 2 | Existential step necessary | Recomputed |
| Worked trace | d=1,q=9 | Eigenvalue 1/3, alternating trace −1/3; opposite exponent gives −3 | Normalization consistent | Recomputed |

The atomic supplier requests also receive separate instance checks; these calculations test the requested mathematics, not acceptance by the supplier.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
| --- | --- | --- | --- | --- |
| gap:pointed-tangent-chain-rule | A¹ maps x↦x² then y↦y+1 at 0 | Composite derivative 0; product 1·0=0 | Chain rule instance | Split request |
| gap:trait-normality | Node smoothing bc=π | Generic curve smooth; special bc=0 reduced; total local ring regular dimension 2 | Normal example | Split request |
| gap:finite-weak-normalization | Cusp in characteristic zero | t satisfies X²−t²; normalization k[t] finite over k[t²,t³] | Proper finite modification is required | Split request |
| gap:canonical-module-connectedness | Nodal curve | Punctured spectrum has two branches; codimension≤1 open is the whole curve, still connected; depth 1=min(2,1) | Correct codimension threshold | Split request |
| gap:normality-descent-and-algebraization | P¹ over unramified O′/O | Both base fibres P¹; descent returns P¹_O; completed identity has degree 1 | Identity descends/algebraizes | Existing request |
| gap:classical-hodge-cover-classification | Adjoint PGL₂ minuscule class | Hodge cover GL₂, cocharacter (1,0), derived SL₂ fundamental group order 1 | Cover and prime-to-p condition | Split request |
| gap:stable-weyl-lattices | W⊕W | Centralizer diag(π,1) gives distinct stable lattice πW_O⊕W_O | Equality replaced by centralizer orbit | Split request |
| gap:r-smooth-full-fixer-embeddings | Split GL₂, hyperspecial lattice | Centralizer of split torus is G_m²; closure smooth; fixer GL₂(O) embeds identically | Identity full-fixer instance | Split; ownership unresolved |
| gap:symplectic-toral-factorization | Standard symplectic plane | Alternating Gram matrix [[0,1],[−1,0]] has determinant 1; lattice equals its dual | Correct symplectic target | Split request |
| gap:polynomial-representation-descent | Constant GL₂ over O[u] | Evaluate u↦π: standard lattice O², representation identity | Specialization matches chosen lattice | Split request |
| gap:polynomial-parahoric-lifts | Constant hyperspecial GL₂ | O[u]-group specialized at π is GL₂/O; special loop flag Gr_GL₂ | Lift of correct group | Existing missing contract explicitly used |
| gap:translation-stabilizer-jets | GL₂ diag(t,1) | Stabilizer matrices have upper-right entry divisible by t; determinant constant term nonzero; reductions lower triangular | Smooth connected jet model in this example | Existing contract explicitly used |
| gap:minuscule-dominance-tests | A₁ λ=0, μ=α∨ | Pairing with ω is 1; difference is one positive coroot | Detects allowed difference | Split; ownership unresolved |
| gap:minuscule-root-coefficients | Standard SL₂ plane | Root operator sends lower weight vector to upper with coefficient 1 | Coefficient remains nonzero mod 2 and mod 3 | Split; ownership unresolved |
| gap:minuscule-cartan-coefficients | Dᴴ coefficient at m=1 | −2 mod 3=1; −2 mod 2=0 | Odd-characteristic endpoint retained | Split; ownership unresolved |
| gap:algebraic-loop-representability | GL₁ k-valued points | Lattices labelled m∈ℤ; each t^m k[[t]] gives one k-point | Correct algebraic loop quotient | Split request |
| gap:polynomial-bd-projectivity | GL₂ minuscule bound | Bounded model P¹, projective dimension 1 | Specified parahoric example | Split request |
| gap:negative-big-cells | SL₂ root loop | x_α(at⁻¹) at a=0 identity; derivative t⁻¹X_α | Negative, not positive, exponent | Split request |
| gap:prime-to-p-central-components | SL₂→PGL₂ at odd p | Kernel order 2 prime to p; cocharacter map n↦2n; component map 0↦0 in ℤ/2 | Neutral comparison does not identify all components | Split request |
| gap:algebraic-schubert-normality | GL₂ minuscule flag | P¹ normal, dimension 1, stalk depth 1 | Required normal/CM example | Split request |
| gap:algebraic-demazure-fibres | Flag projection GL₂ Iwahori→hyperspecial | Minimal-point fibre P¹, connected component count 1 | Connected projection fibre | Split request |
| gap:algebraic-coherence | GL₂ line degeneration | Generic P¹ has H⁰(O)=k of dimension 1; two P¹ meeting once have 1+1−1=1 | Constant H⁰ dimension | Split request |
| gap:standard-chain-flatness | Two-line incidence πad=bc | Generic fibre P¹; special two P¹; chart bc=π has no π-torsion | Flat closure example | Split request |
| gap:polynomial-closed-immersion-criterion | Identity GL₂ polynomial representation | Same torsor/flag map; local model P¹→P¹ identity | Closed immersion, not just point injection | Split request |
| gap:central-nearby-cycles-algebraicity | Zero bound | Nearby cycles constant rank 1 on a single special point; support cardinality 1 | Bounded constructible example | Split request |
| gap:central-nearby-cycles-perversity | Point stratum | Constant line in degree 0 has perverse degree 0 | Zero-bound t-exactness instance | Split request |
| gap:extremal-wakimoto-filtration | GL₂ standard dual representation | Weights e₁,e₂, both multiplicity 1; two graded factors | Extremal filtration sizes correct | Split request |
| gap:wakimoto-constant-term-multiplicities | Same standard representation | Each weight-space dimension 1; total rank 2=1+1 | Multiplicity calculation | Split request |
| gap:rational-central-nearby-cycles | μ=0 | Central object is convolution unit; left/right convolution both A | Central comparison identity | Split request |
| gap:very-special-faithful-cohomology | Trivial line on point | H⁰=line; a scalar map c acts on H⁰ by c, vanishing iff c=0 | Faithfulness instance | Split request |
| gap:wild-admissible-closedness | Split GL₂ identity instance; cusp control | Identity P¹ immersion; cusp has same geometric point fibres but missing ring generator t | Point injection alone insufficient | Existing unresolved request |
| gap:general-tube-cohomology | Smooth geometric disc | H⁰(F_ℓ)=F_ℓ of dimension 1; connected-component count 1 | Component/stalk normalization | Existing request |
| gap:ramified-local-pel-data | Quaternion order over Q_p | O_D/Π=F_(p²), F_p-dimension 2; splitting over F_(p²) gives ranks (1,1) | Ramified order data retained | Existing request |
| gap:semisimple-trace-and-comparison | Proper two-point map | Pushforward trace 2+3=5; same two-point nearby-cycle comparison has rank 2 | Proper/comparison requests only | Narrowed request |
| gap:parahoric-bernstein | μ=0 on an inner form | V_0 trace 1; central function identity; its action on every spherical π is 1 | Non-quasi-split-compatible unit test | Enlarged general representation-theoretic contract |
