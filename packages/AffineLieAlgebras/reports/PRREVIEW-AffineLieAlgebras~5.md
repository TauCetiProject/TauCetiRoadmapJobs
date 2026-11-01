# Review of AffineLieAlgebras (pull request #1201 at f4aefc7)

**Verdict:** accepted

## R01 (P3) — Record the cited sources

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:1173`, References; `TauCetiRoadmap/AffineLieAlgebras/sources.toml` is absent.

**Claim:** The cited works need the required source inventory and provenance records. This is previous R02, unchanged.

**Witness:** Eleven works/design references are cited; the folder contains README.md, Suggested.lean and metadata.toml, with zero source records.

**Exact repair:** Add one `tauceti-roadmap-sources/v1` record per work, retaining the source IDs from the previous review and the service's provenance and verification status. Record the unreadable Kac primary text as uncertified; do not certify the Zulip message from its application shell. For Frenkel integration record §1.3.4, pp.26–27, as specified in R02. This changes provenance only: the repaired orbit still gives h₁²e₋₂v=4e₀v and h₁³e₋₂v=0.

## R02 (P3) — Disambiguate the integration lemma's section

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:458`, “§1.3.1 and Lemma 1.3.1”; the same section attribution appears at :1179.

**Claim:** This locator supports the finite-generation integration theorem in the revised A3.2 proof paragraph.

**Witness:** `frenkel-loop` line 1057 is the triviality lemma in §1.3.1; line 1349 is the intended integration lemma in §1.3.4. Both are printed as Lemma 1.3.1, on pages 19 and 26 respectively.

**Exact repair:** Cite “§1.3.4, Lemma 1.3.1, pp.26–27” for congruence integration in A3.2 and References. Keep §1.3.1 only for the smoothness definition. The source's induction argument is for unextended loop modules; retain the roadmap's explicit PBW argument for every central level. Retest at Q₁ and k=1: e₁f₋₁v=(h₀+1)v and e₁²f₋₁v=0, so its exponential is polynomial. No theorem restriction is needed. The source was read through the legal author copy, including the rendered pages; see [Frenkel, pp.26–27](https://math.berkeley.edu/~frenkel/loop.pdf#page=40), `frenkel-loop` lines 1325–1361.

## Previous findings

- R01 — repaired: README:452–455 and :480–482 replace uniform nilpotence on bounded PBW length by finite-dimensional nilpotent orbits; :468–476 add the refuting family and explicit stable subspaces.
- R02 — not repaired: README:1173–1199 still cites eleven works/design references; sources.toml remains absent. This is retained as this report's nonblocking R01.
- R03 — repaired: README:81 now names `LieAlgebra.LoopAlgebra.twoCocycleOfBilinear`; the pinned declaration and fresh scratch `#check` agree.

## Verified sound

🤖 Independent AI incremental re-review of **22 changed lines since 6bd3f7b**, at `f4aefc771888e8b409831cd0da81d289ed17b807`. The only change is in README.md; Suggested.lean is unchanged. No P1 or P2 remains. The two P3 notes do not block human final approval. No pull-request file was edited.

**Scope and evidence carried forward.** The reference report is `packages/AffineLieAlgebras/reports/PRREVIEW-AffineLieAlgebras~4.md` ([r4](PRREVIEW-AffineLieAlgebras~4.md)). I reviewed the changed passages, their conventions, definitions of Q_M and a_M, source locator, immediate proof inputs and consumers. The 162 untouched adversarial rows below are explicitly carried from r4, rather than claimed as newly recomputed. The 13 new rows cover every changed mathematical statement, the corrected supplier spelling, and both findings.

**Computed repair.** For positive m and n≤0 in Q₁,

    x_m y_n v = [x,y]_(m+n)v + m k κ₀(x,y) δ_(m+n,0)v.

Positive resulting modes kill v. Consequently W_r is stable, modes at least r+1 kill it, and r+1 successive positive-current actions kill it: every noncentral step raises the index, and a central step lands in the annihilated vacuum. PBW gives its stated dimension and e₀v≠0. Exact integer action computations on the complete bases of W₁,W₂,W₃, at k=0,1,−2, confirmed dimensions 7,10,13, all positive-mode products of lengths 2,3,4 respectively vanish, and the displayed powers have coefficients 2,4,8. High modes act as zero, so checking the finitely many modes through r covers the full a₁ action. These checks include the zero level and critical sl₂ level.

The corrected general proof route also has a finite bound: assign a PBW monomial with indices n_i<M the positive budget D=Σ_i(M−n_i). For M>0, commuting a mode j≥M through it reduces this budget by at least j; central contractions reduce it further. Reordering does not increase it. There are only finitely many basis monomials of bounded budget, because length and all negative indices are bounded and g is finite-dimensional. Their span is stable, sufficiently high modes act by zero, and sufficiently long products from a_M kill it. This justifies the claimed finite-dimensional jet orbits without a length-only bound. Smooth polynomial/formal comparison is A3.1; finite-jet exp/log is the cited FormalConnectionsOpers F3.1. Invariant quotient kernels descend the polynomial actions. This argument uses the standing finite-dimensional complex g and M>0, including k=0; it does not promise integration for discontinuous arbitrary representations.

**Gate and elaboration.** The supplied worker gate passes, including build=0. I reran the gate, the separate dependency command, `lake build TauCetiRoadmap.AffineLieAlgebras.Suggested`, direct `lake env lean` on Suggested.lean, and a scratch copy with `#check @name` for all 13 declarations plus the corrected library locator. All succeeded. The targeted build completed 8,976 jobs; direct elaboration and the signature copy each had exactly seven `sorry` warnings, no errors or other warnings. The fresh gate output was:

```text
gate AffineLieAlgebras: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The dependency command returned exactly:

```text
depcheck: 204 roadmaps, 1460 edges, 0 problem(s)
```

There were no UPWARD or CYCLE lines. The outside-folder diff is empty, and the worktree is clean. Imports remain the single `import Mathlib`; no Tau Ceti object build was necessary. All 13 signatures match the supplied signature inventory and the README: finite-dimensionality and semisimplicity remain in Whitehead, the additive topological-group and basis assumptions remain in smooth/continuous, and all vertex results retain characteristic zero. Zero dropped binders or changed Lean signatures. The previous one-tactic probes for the seven unchanged theorems are carried from r4; they are not rerun or claimed as new probes.

**Seeded sample and sources.** The changed lines contain none of the seed's named theorem paragraphs or API blocks. The corrected cocycle name is an input to the sampled A1.2 API; I checked that input against the pinned definition and recomputed both residue signs. The r4 audit of all 13 API blocks and five named paragraphs is carried forward for the untouched sample, including Whitehead, Heisenberg/Fock, big-cell anomaly, Wakimoto and critical screenings. No README locator is flagged unverified. For the revised integration proof I fetched `frenkel-loop` through the sources service from the author's Berkeley page and read lines 1029–1085 and 1325–1361 (printed pp.19–20,26–27). The printed pages confirm the duplicate lemma label; R02 gives the unambiguous locator. No manifest or cached source was copied into the roadmap.

**Pinned and supplier checks.** Pins remain Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. I reopened these repair-relevant declarations and contracts:

| File and line | What was verified |
| --- | --- |
| `Mathlib/Algebra/Lie/Loop.lean:65,74,110,127,183` | The loop carrier, capitalized LoopAlgebra namespace, coefficient carrier, second-mode residue convention and invariant symmetric-form cocycle. Φ=−κ yields +mκ on opposite modes. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Injective.lean:201,222` and `PBW/Embedding.lean:53` | PBW graded equivalence and current injection for a free underlying module, applicable over ℂ. The affine quotient/induction step remains A2.4/A3.1. |
| Main `TauCetiRoadmap/AffineLieAlgebras/README.md:198–227` | A3 already owns finite-generated rational congruence integration and induced-module estimates. The repair builds on this existing programme. |
| Main `TauCetiRoadmap/FormalLaurentPuiseux/README.md:167–192` | L3 supplies coefficientwise currents, polynomial embedding and the derivative/residue comparison used by the corrected library contract. |
| Open-head `TauCetiRoadmap/FormalConnectionsOpers/README.md:875–906` | F3.1 supplies positive congruence groups, characteristic-zero exp/log, BCH and finite jets, explicitly without exponentiating arbitrary module actions. The new orbit proof belongs in A3.2. |
| Main `TauCetiRoadmap/GeometricRepresentationCategories/README.md:18–40,100–104` | A3's finite-generation hypothesis and separate rational integration contract are preserved by the consumer; no coherent action is inferred from objectwise isomorphisms. |
| Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351,405,567,931`; `RepresentationTheory/RootSystems/README.md:321–345`; `ReductiveGroups/README.md:627–689` | Named finite-dimensional roots, PBW/induction, reducibility, Harish–Chandra and big-cell contracts remain present. |
| Open-head `TauCetiRoadmap/KacMoody/README.md:436–457`; `NoncompactQuantumSymmetry/README.md:453–469` | KacMoody consumes the same polynomial cocycle sign; NoncompactQuantumSymmetry extends complex Whitehead to characteristic-zero fields. Neither owns this rational-orbit repair. |

The roadmap `resolve` service found no missing cross-roadmap citations against main and the indexed open heads. Its library limitation was covered by the local pinned checks. The `grep`/`show` services, board-package search and pinned object searches were used for the changed constructions. The rational integration owner remains the existing AffineLieAlgebras A3, with FormalConnectionsOpers owning groups and finite jets. No duplicate construction or new dependency was introduced. I reread the main FormalLaurentPuiseux and GeometricRepresentationCategories passages as shape examples. Untouched source and library checks otherwise remain those explicitly recorded in r4.

**Headline inventory.** The unchanged seven Lean theorems are Whitehead in degrees one and two, smooth iff continuous, generic vertex reconstruction, Borcherds, and alternation/Leibniz of the weight-one zero product. The docstring also names the unavailable continuous H²/universal extension, affine smooth/completed equivalences, congruence integration, affine vacuum/Sugawara, critical deformation, free-field/center and Feigin–Frenkel endpoint families and their missing carriers. The repaired congruence integration theorem still needs these formal current/module/group carriers; no new Lean stand-in is appropriate. No new missing signature or padding results from the repair.

**Adversarial table.** The first 13 rows are this round's calculations and locator/inventory checks. The remaining 162 rows retain their computed values and cite r4 individually; historical source-error rows concern the sources, not unrepaired mathematical errors in the roadmap. Finite checks are witnesses, not proofs of general theorems.

| Statement/definition/convention | Instances tried | Computed values on both sides | Result | Change |
| --- | --- | --- | --- | --- |
| Corrected Mathlib cocycle locator, README:81 | Φ=−κ₀; (e₁,f₋₁), (h₁,h₋₁) | Library nΦ gives (−1)(−1)=1 and (−1)(−2)=2; roadmap mκ₀ gives 1 and 2; correct name resolves | Pass | Previous R03 repaired |
| A3.2 finite-dimensional orbit, README:452–455 | Q₂, e₋₂v and e₋₄v | h₂e₋₂v=2e₀v, h₂²e₋₂v=0; h₂²e₋₄v=4e₀v, h₂³e₋₄v=0 | Pass | Dependence on modes retained |
| A3.2 PBW estimate, README:454–455 | Q₂ monomial e₋₂v; budget D=Σ(2−n) | D=4; h₂ changes budget 4→2; next action gives 0; positive-current action decreases budget by at least 2 | Pass | Finite positive budget controls length and indices |
| A3.2 quotient integration, README:456–457 | Q₁, x=e₁, w=f₋₁v, levels k=0,1,−2 | xw=(h₀+k)v; x²w=0; exp(sx)w=w+s(h₀+k)v, derivative=(h₀+k)v | Pass | Finite polynomial action descends along invariant quotients |
| Negative control for length-only bound, README:468–470 | Q₁, e₋ᵣv, r=1,2,3 and general r≥1 | h₁ʳe₋ᵣv=2ʳe₀v: coefficients 2,4,8, all nonzero; next power=0; PBW length always 1 | Pass | Previous R01 repaired |
| Definition and dimension of Wᵣ, README:471–474 | r=1,2,3 | Independent vectors: vacuum plus 3(r+1) modes; dimensions 7,10,13 equal 1+3(r+1) | Pass | Real subspaces, not the entire length-one piece |
| Stability of Wᵣ, README:472 | xⱼyₙv, j≥1, −r≤n≤0 | Equals [x,y]ⱼ₊ₙv+jkκ₀(x,y)δⱼ₊ₙ,₀v; e₁f₋₁v=(h₀+k)v belongs to W₁ | Pass | Vacuum includes central contributions |
| Finite-jet factorization, README:472 | W₁,W₂,W₃; j≥r+1 | j+n≥1, so mode and central contributions both 0; a₂W₁=a₃W₂=a₄W₃=0 | Pass | Jet quotient is a₁/aᵣ₊₁ |
| Joint nilpotence, README:473–474 | Wᵣ, r=1,2,3; k=0,1,−2 | All 2-, 3-, 4-fold positive-current products respectively give 0; h₁ʳe₋ᵣv remains 2,4,8 times e₀v | Pass | Sharp bound r+1; arbitrary positive modes included |
| Central-term control, README:475–476 | h₁h₋₁v, k=0,1,−2 | 2kv=0,2v,−4v respectively; every a₁ element sends v to 0 | Pass | At k=0 the central term vanishes; vacuum still belongs to Wᵣ |
| Revised layer example, README:480–482 | W₁⊂W₂; length-one union | Nilpotence bounds 2 and 3; h₁²e₋₂v=4e₀v≠0 despite zero on W₁ | Pass | Local finite-dimensional nilpotence replaces uniform length bound |
| Integration locator, README:458 | Two printed lemmas numbered 1.3.1 | §1.3.1 p.19: full integrability implies triviality; §1.3.4 pp.26–27: finite generation gives some N>0 | Locator mismatch | R02 below identifies the intended lemma |
| Source inventory, README:1173–1199 | Eleven cited works/design references | 11 works versus 0 sources.toml records, unchanged from r4 | P3 persists | R01 |
| A1.1 algebraic tensor versus series | L=0; L=𝕜e | 0↔0; t⁻¹e has coefficient e at −1 and 0 elsewhere in both models | Pass; L3 is now explicitly consumed | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.1 coefficient extensionality | e t+f t² versus e t+2f t² | coeff₂=f versus 2f; difference coefficient=f≠0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.1 convolution and Lie laws | sl₂, e t,f t⁻¹,h | [e t,f t⁻¹]=h; Jacobi triple gives 0+2h−2h=0 | Pass; comparison uses the supplied L3 bracket | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.1 filtration | M=1,N=−1 | order([e t,f t⁻¹])=0=M+N; not ≥1 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.1 density | Σₙ≥₀e tⁿ, truncation at r | first r coefficients agree; error order r; polynomial tail is nonzero | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.1 completeness iff finite dimension | L=⊕ₙ𝕜eₙ, sᵣ=Σₙ<ᵣeₙtⁿ | error order r; limit has coefficient span of infinite dimension, tensor coefficient span finite | Pass; converse remains owned here | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.1 basis independence | basis e versus 2e | t e=(t/2)(2e); coefficients and order 1 agree | Pass; supplied L3 finite-dimensional comparison | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.2 continuous cochain d² | sl₂ trivial coefficients, f(h)=−1,f(e)=f(f′)=0 | d f(e,f′)=1; d² f(h,e,f′)=−2+2=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.2 cohomology functoriality | identity and zero coefficient maps on c | id(c)(e,f′)=1; zero(c)(e,f′)=0; compositions have same values | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.2 joint continuity | cκ; neighbourhood a₀; fixed f t⁻¹ | cκ(a₀,a₀)=0; cκ(e t,f t⁻¹)=1, cκ(e t²,f t⁻¹)=0 | Pass; separate continuity is also necessary | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.2 residue sign | sl₂ h₁,h₋₁ and e₁,f₋₁ | −Res(t d(t⁻¹))·2=2; reversed −2; e/f value 1 | Pass; native Φ=−κ | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.2 wrong residue model | h₀,h₋₁ | Res(1·t⁻¹dt)·2=2 in both orders, rather than negatives | Excluded | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.2 coordinate invariance | φ=2t, e t,f t⁻¹ | −Res(2t d((2t)⁻¹))=1=original cocycle | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.2 Whitehead one | sl₂ adjoint, ad h | f(e)=2e=[e,−h], f(f′)=−2f′=[f′,−h] | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.2 Whitehead two | sl₂ trivial coefficients c(e,f′)=1 | f(h)=−1 gives −f(h)=1; other independent pairs 0=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.2 Whitehead hypothesis controls | abelian ℂ²; L=0 or M=0 | abelian c(e₁,e₂)=1 but every d f=0; zero cases H¹=H²=0 | Pass, abelian control excluded | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.3 class detection | sl₂ h₁,h₋₁ | residue cocycle=2, every coboundary=−f([h,h])=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.3 semisimple product version | sl₂×sl₂ | independent values (2,0),(0,2); class-space dimension 2 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.3 simplicity control | abelian one-dimensional currents, 1,t | coefficient cocycle=1; residue cocycle=0; coboundaries=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1.3 arbitrary discrete kernel | Z=0 and Z=⊕ⱼℂzⱼ | class of cκ⊗zⱼ takes 2zⱼ on h₁,h₋₁; Z=0 gives 0 | Pass; continuous normalizing coboundary remains owned target | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A1 example formal residue | Σₙ≥₀e tⁿ against f t⁻¹ | only degree 1 contributes: 1=1 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.1 cocycle extension exactness | sl₂; κ=0 and κ₀ | projection([e₁,f₋₁])=h₀ in both; kernel is ℂK; central terms 0 and K | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.1 perfectness | κ₀ versus 0 | [e₁,f₋₁]−[e₀,f₀]=K versus 0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.1 section change | section cochain f(h₀)=1 | d f(e₀,f₀)=−1; old central coefficient 0 becomes −1 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.1 positive split | m,n≥0, m+n=0 | m=n=0, so mκ=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.1 universal extension | nonzero κ and Z=0; central rescaling by 2 | unique map to current quotient kills K; scale-2 cocycle sends K to 2K′ | Pass; κ=0 excluded from universality | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.2 Killing normalization | sl₂ and sl₃ | 8=2·2·2 on h,h; Killing=6tr for sl₃, h∨=3 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.2 level rescaling | κ′=2κ, κ(e,f)=1 | image([e₁,f₋₁])=h₀+2K′=[image e₁,image f₋₁] | Pass; inverse convention would give 1/2 versus 2 | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.2 central-character transport | K′=1, λ=2; a=0 | pulled-back K=2; zero scalar kills central cocycle but retains currents | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.3 loop lift sign | diag(t,t⁻¹), eₙ,f₋ₙ | h₀+(n+2)kK on both sides; wrong sign gives h₀+(n−2)kK | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.3 constant loop | constant g | g⁻¹dg=0, central correction 0; lift=Ad_g | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.3 composition/Maurer–Cartan | diag(t,t⁻¹) squared | h₀ shift 2k+2k=4k; g⁻¹dg for square=2h dt/t gives 4k | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.3 coordinate group convention | φσ=2t, φτ=t+t² | φστ=2t+4t²; wrong order gives 2t+2t² | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.4 level quotient | k=0 and k=1 | K_standard=0 and 1; both retain e₀≠0, [e₁,f₋₁]=h₀+k | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.4 Q₁ and transitions | sl₂ cyclic v; Q₂→Q₁ | h₀v≠0, h₁v=0 in Q₁; e₁v in Q₂ maps to 0; v maps to v | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.4 left ideal not two-sided | e_N f₋N v in Q_N | equals (h₀+Nk)v≠0, although e_N v=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A2.4 right-shift estimate | b=f₋₁,N=1 | M=2 gives [e₂,f₋₁]=h₁∈a₁; M=1 gives h₀+k∉I₁ | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A3.1 smooth property | Q_M cyclic v; regular Uκ vector 1 | a_M v=0; x_N·1=x_N≠0 for every N | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A3.1 polynomial/formal equivalence | Σₙ≥₁eₙ on Q₃ cyclic v | formal action=e₁v+e₂v; every cutoff ≥3 gives same sum | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A3.1 category closure | two vectors killed at N=2,3 | sum killed at 3; image in any quotient still killed at 3 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A3.1 infinite products | ∏Q_M, cyclic tuple | for each N, e_N acts nontrivially in Q_(N+1); no uniform bound | Pass; product uses smooth vectors | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A3.2 rational integration | Q₁, f₋₁v; x=e₁ | x f₋₁v=(h₀+k)v, x² f₋₁v=−2e₁v=0 | Pass, finite orbit gives polynomial exponential | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A3.2 finite generation uniform order | finite cyclic generators killed at M_j | N=max M_j kills all; infinite ⊕Q_M has M>N and e_N^r v≠0 in Q_M | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A3.2 N=0 control | SL₂ matrix with eigenvalue −1 and nontrivial Jordan block | trace-zero logarithm would have eigenvalues ±(2r+1)πi, hence diagonalizable; its exponential cannot be the Jordan block | Excluded as claimed | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A3.2 trivial group/finite jet | G=1; exp(tE₁₂) modulo t² | 1↔0; exp=1+tE₁₂, log=tE₁₂ | Pass; denominator theory is characteristic zero | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A4.1 completion topology | Σ_N≥1 f₋N e_N modulo I₃ | tail N≥3=0; stage has f₋₁e₁+f₋₂e₂ | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A4.1 arbitrary left coefficients | P_N=N! f₋N^N, vector killed by a₃ | all N≥3 terms act by 0 regardless of N! | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A4.1 product defined on module quotients | 1·b,b·1 and h₀ acting on Q₁ | both unit products=b; h₀·v remains nonzero, so no ring-quotient fiction | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A4.1 Hausdorff/PBW separation | e₀ and scalar 1 | both survive Q₁; neither belongs to all I_N | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A4.1 polynomial/formal completed comparison | Σₙ≥₀eₙ modulo I₂ | both descriptions give e₀+e₁ | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A4.2 completed loop lift | diag(t,t⁻¹), k=−2 | h₀→h₀−4; inverse shift +4 recovers h₀ | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A4.2 coordinate/completed compatibility | same φσ,φτ | dense and completed currents both use 2t+4t²; identity coefficient action=identity | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A4.2 continuity bound | diag(t,t⁻¹), input f_m | output f_(m−2); M=N+2 suffices, central correction on sufficiently high modes=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.1 smooth iff continuous | ℂ[[x]], J_N=x^N, M=A/x² | J₂m=0; orbit kernel contains x²A and is open | Pass, both directions | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.1 HasBasis control | same topology, J_N=A, M=A/x | continuity=true; smoothness=false because 1·1=1 | Excluded by basis assumption | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.1 Laurent module | M=ℂ((x)), vector x⁻¹ | x^N x⁻¹=x^(N−1)≠0; orbit kernel 0 is not open | Pass, both false | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.1 zero ring/module | A=0; M=0 | orbit map constant 0; J_Nm=0; both properties true | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.1 coreflection stability control | M₂(ℂ), J_N=AE₁₁ | annihilator=ℂe₂; E₁₂e₂=e₁ not annihilated; E₁₁E₁₂=E₁₂∉J | Pass; extra hypothesis excludes it | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.1 products | ∏_N ℂ[[x]]/x^N, tuple 1 | x^M component at N=M+1 is x^M≠0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.1 restriction | A=ℂ[[x]], continuous scalar inclusion ℂ→A | pullback of x^NA is 0; restricted vector killed by 0; orbit is discrete-continuous | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.2 coinduction action | coefficient functionals ε_j on ℂ[[x]] | x·ε₂=ε₁; x³·ε₂=0; formula f(ax) gives same values | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.2 unit/counit | A/x, vector 1 | unit sends 1 to ε₀; evaluation at 1 gives 1, not 0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.2 ordinary versus continuous coextension | f(x^j)=1 for all j | f(x^N)=1≠0 for every N; no open ideal killed | Pass, excluded from continuous part | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.2 injective embedding | nonzero m in any smooth module | unit(m)(1)=m≠0; zero module maps to zero | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.3 closed central quotient | A=ℂ[[x]], L=xA | A/L=ℂ; x acts as 0=χ(x) on both descriptions | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.3 character transport | ℂ[y], a(y)=y+1, χ(y)=1 | χ(a⁻¹y)=χ(y−1)=0; inverse pullback sends old fibre 1 to 0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.3 invariant character | ℂ[[x]], a(x)=2x, χ(x)=0 | χ(a⁻¹x)=χ(x/2)=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.3 closure condition | continuous discrete module annihilator | open additive kernel is union of open cosets' complement, hence closed; closure adds zero action, still 0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.4 module equivalence | Q₁ versus Uκ | Q₁ cyclic vector has I₁v=0; Uκ has x_N1=x_N≠0 for all N | Pass; only Q₁ extends continuously | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.4 current pole | h-current on cyclic Q₁ vector v | z⁻¹ coefficient=h₀v≠0; on actual vacuum it is 0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.4 binary normal product | h,h on that v | constant term=h₋₁²v+2h₋₂h₀v; on vacuum=h₋₁²v | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.4 field derivative/residue | z^s; s=−1,0,2 | derivatives −z⁻²,0,2z; residues of derivatives all 0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A5.4 density-detected center | scalar 2 versus e₀ | [2,x_n]=0; [e₀,f₀]=h₀≠0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 FormalVertexAxioms positive model | ℚ[x], Y(a,z)b=a(x+z)b,T=d/dx | Y(1)=id; Y(x,z)1=x+z; T1=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 creation higher coefficients | a=x² over ℚ | coefficient z²=1=(1/2)T²x² | Pass; factorial nonzero | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 covariance versus unshifted fields | F(z)=multiplication by x+z; wrong F=x | [T,F₀]=id=F₁; wrong F has F₁=0, so id≠0 | Pass; wrong model excluded | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 formalMode indexing | vacuum and x in commutative model | 1_(−1)=id; x_(−1)=mul x, x_(−2)=id; x_(0)=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 locality | commutative ℚ[x]; Heisenberg h | N=0 gives zero commutator in first; second needs N=2 for central double pole | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 Borcherds general formula | vacuum a=b=c=1, m=0,n=−1,r=−1 | LHS=1; RHS first i=0 term=1, all other terms=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 commutator specialization | Heisenberg h, m=1,n=−1 on vacuum | LHS=1; RHS=0+1=1 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 iterate/skew/translation | ℚ[x], a=x,b=x | Y(x,z)x=x²+zx; e^(zT)Y(x,−z)x=x²+zx; T(x²)=2x | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 generic reconstruction | single field x+z on ℚ[x] | stable submodule containing 1 contains x^r for every r; reconstructed x-field has coefficients x,1,0,… | Pass; signature is present at Lean:137 | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.1 zero-space boundary | V=0, vac=0,T=0 | all coefficients 0; both Borcherds sums 0; unique zero structure | Pass; zero object allowed by these axioms | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.2 affine vacuum PBW | sl₂ weights 0,1,2 | dimensions 1,3,3+6=9 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.2 center definition | vacuum versus e₋₁vac at k=0 | all positive products on vacuum=0; f₀e₋₁vac=−h₋₁vac≠0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.2 Sugawara noncritical | sl₂ k=1; E₈ k=1 | 3/(1+2)=1; 248/(1+30)=8 | Pass; claim-level locators now present | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.2 critical undivided S | sl₂ k=−2, x≠0 | x₁S=(k+2)x₋₁vac=0; quadratic PBW symbol nonconstant | Pass; divided conformal vector excluded | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.2 coordinate action | φ=2t, x₋₁vac | x₋₁vac→(1/2)x₋₁vac; vacuum→vacuum | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.3 deformation and flatness control | ℂ[[ℏ]] PBW vector v; truncation r=2 | ℏv≠0 before reduction; ℏ²v=0 modulo ℏ² | Pass; no false domain claim after reduction | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.3 two completions | Σ_r≥1 ℏ^r x₋r vac | mod ℏ³ gives ℏx₋₁vac+ℏ²x₋₂vac; infinite PBW support prevents membership in graded free module | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.3 compatible stage reduction | Σ_j≥1 ℏ^j e_j mod (I₃,ℏ³) | ℏe₁+ℏ²e₂ in either order of the two projections | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.3 PBW section/product defect | central scalars z=2,w=3 | s(1)=1; s(6)−s(2)s(3)=0, hence defect 0 | Pass boundary; general section is construction target | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.3 lift independence | z̃→z̃+ℏb, w central mod ℏ | bracket changes by [b,w] mod ℏ=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.3 divided commutator change | sl₂ b=e₀, test f₀ | difference of derivations=ad e₀(f₀)=h₀ | Pass, inner change retained | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.3 central Poisson bracket | sl₂ m=2,n=−2 | 4S₀−(8−2)/2=4S₀−3; reverse=−4S₀+3 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.3 Jacobi/Leibniz controls | constants; central Poisson generator S₀,S₁ | {1,z}=0; {S₀,S₁²}=−2S₁²=2S₁{S₀,S₁} | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.4 grading guard | p=q=1,n=0,1,2 | weights 1,0,−1; last value forced 0, not assigned to weight zero by toNat | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.4 zero product positive/negative model | Heisenberg h | h_(0)h=0 in V₁; h_(1)h=1 in V₀ | Pass; wrong product excluded | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.4 alternating headline | sl₂ x=e+f | [x,x]=h−h=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.4 Leibniz headline | sl₂ x=h,y=e,z=f | [h,[e,f]]=0; [[h,e],f]+[e,[h,f]]=2h−2h=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A6.4 morphism compatibility | identity; zero-space target | identity preserves h=[e,f]; zero map gives 0=[0,0] | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 Heisenberg cocycle | B(h,h)=1, m=1,−1 | c(h₁,h₋₁)=1; reversal −1; zero-mode value 0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 oscillator/Fock action | h₁h₋₁vac,h₂h₋₂vac,h₁h₋₂vac | 1,2,0 respectively | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 Fock character | rank 1, weights 0…4 | partition counts 1,1,2,3,5 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 degenerate B and H | B=0 with h≠0; H=0 | contractions=0 but h₋₁vac≠0; H=0 gives Fock=𝕜,T=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 Heisenberg covariance/isometries | mode −2; h↦−h | [T,h₋₂]=2h₋₃; B(−h,−h)=B(h,h)=1 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 beta-gamma definitions | one pair and distinct roots | β₀γ₀vac=1; γ₁β₋₁vac=−1; cross-root contraction 0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 beta-gamma regular pairs | β₀β₋₁vac,γ₁γ₀vac | both 0; γ₀²vac≠0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 beta-gamma translation/index | γ₀,γ₁ | [T,γ₀]=γ₋₁; [T,γ₁]=0; γ₀ is state mode −1 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 beta-gamma refined grading | γ₀^jvac, j≥0 | degree always 0, root weight varies with j; degree-zero dimension infinite | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 big-cell polynomial action | e=∂,h=−2y∂,f=−y²∂ on y | [h,e]y=2=2ey; [e,f]y=−2y=hy | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 Cartan correction | parameter λ=1, test constant 1 | h1=1,f1=y,[e,f]1=1; missing λy term gives 0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 anomaly | −2:γβ: self-OPE | two contractions give 4·(−1)=−4; critical κc(h,h)=−4 | Pass; source sign misprint separate | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 Wakimoto all levels | sl₂ k=1 and −2 | Cartan poles −4+2(k+2)=2 and −4; e/f double poles 1 and −2 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 wrong derivative correction | k=1, replace k∂γ by −k∂γ | e/f double pole −1 instead of 1 | Excluded | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 Wakimoto PBW injectivity control | symbols e=β,h=b−2βγ,f=bγ−βγ² | β=1,γ=±1,b=±2 both give (e,h,f)=(1,0,1); coordinate pullback still dominant, not injective on points | Pass for theorem; source proof error recorded | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 critical center image | critical sl₂ quadratic symbol | image in Cartan factor is b²/4 at PBW level; beta-gamma terms cancel | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 screening nonzero | u=1,x=exp(2t) | δu constant=−1; x′ constant=2 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 screening kernel | q=u²−u′ in same example | δq constant=−2+2=0; δq′=0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 wrong screening sign/zero operator | u²+u′; operator 0 | δ wrong q constant=−4; zero operator gives δu=0 instead of −1 | Excluded | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.1 screening on vacuum/current image | vacuum and e-current descendant | S(vac)=0; intertwining gives S(e₋₁vac)=e₋₁S(vac)=0 | Pass; not equality with whole image | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.2 invariant forms/Cartan dual | sl₂ h,h under trace pairing | κ₀(h,h)=2; inverse dual coefficient=1/2 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.2 jet homogeneous scaling | sl₂ P=tr(A²)/2,N=2 | P(t²A)=t⁴P(A); wN=4 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.2 jet rather than finite invariant | A(t)=h+t h, P=tr(A²)/2 | P₀=1,P₁=2; for h+2t h, same P₀=1 but P₁=4 | Pass, new jet information | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.2 jet characters | sl₂ weights0…4; sl₃ weight4 | 1,0,1,1,2; sl₃ has P_(1,2),P_(1,0)²,P_(2,1), count3 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.2 Verma invariant strictness | sl₂, b̃₊ invariants | π₀ character weights0…2:1,1,2; (gr M₀)^b̃₊ has same 1,1,2; quotient kills degree-one generator | Pass, invariant character on both sides | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.2 constant-g invariant comparison | finite sl₂ irreducible highest weight r | b₊-invariant highest vector has h-weight r; killed by h only when r=0 | Pass; local finite-dimensionality used | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.3 critical vacuum center | sl₂ weights0…4 | 1,0,1,1,2; weight4 has T²S and S² | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.3 noncritical and zero-level center | sl₂ k=1, x≠0; k=0,e-state | x₁S=3x₋₁vac≠0; f₀e₋₁vac=−h₋₁vac≠0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A7.3 all-type normalization | B₂ dual root lengths | original coroot lengths 2,4; scaling dual form by r∨=2 gives normalized dual long length 2 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.1 generic mode relation | state a,t^r | Res(Y(Ta)t^r)=−r Res(Y(a)t^(r−1)); r=2 gives −2a[1] on both sides | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.1 center stage/symbol cutoff | sl₂ w=2,N=1 | max surviving state index=2·1−1=1; S[2] acts by0; S[1] has nonzero quadratic zero-mode symbol | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.1 higher-degree cutoff | sl₃ cubic w=3,N=2 | max index=5; coefficient at r=6 vanishes | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.1 topology/cofinality | weights 2,3 and N=2 | cutoffs4,6 bounded by common6; common4 contained in both stage allowances | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.1 adjoint versus left action | Q₁ cyclic v, h₀ | ad(h₀)v=0; left h₀v≠0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.1 center quotient ideal | central z,w with z·v_N=0 | zw·v_N=wz·v_N=0; arbitrary noncentral analogue e_N f₋N v_N≠0 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.2 degree derivation | x_n,n=1,−1 | [−L₀,x₁]=x₁; [−L₀,x₋₁]=−x₋₁ | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.2 HC quadratic | sl₂,k=1,λ=α/2,δ=0 | Q=2−1/2=3/2; Q/6=1/4 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.2 vacuum and critical controls | λ=δ=0; k=−2 | Q=0; critical denominator2(k+2)=0, division excluded | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.2 restricted-series center | constant scalar coefficients z_j | z_j→0 in discrete scalars iff eventually0; series becomes a polynomial | Pass conditional on owned HC theorem | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.2 separating original algebra | D′=d−Dκ, polynomial degree1 | d coefficient of D′=1; an element of original completion has d coefficient0 | Pass; intersection leaves constants | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.3 selected FF generator | q=t⁻⁴,n=2 | q₋₄=1=Res(t³q dt) | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.3 Poisson normalization | q=0,ε=t³,η=t⁻¹ | Res(η·(−ε‴/2))=−3; affine central bracket at (2,−2)=−3 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.3 nonlinear coordinate change | φ=t+t²,q=0, at t=0 | Schwarzian=−6; q^φ=−(−6)/2=3 | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.3 scale point/function directions | φ=2t,n=1 | point coefficient L₁ scales 1/2; function S₁ scales2; inverse pullback matches | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.3 cubic Miura sign | diag(1,1,−2) | tr(u³)=−6; tr((−u)³)=6=−tr(u³) | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.3 loop fixation control | critical diag(t,t⁻¹), h₀ | h₀→h₀−4, matching −2Res tr(h²/t)=−4; h₀ itself is not central | Pass; no false fixation of all currents | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.3 Hopf/matrix dictionary | diag(t,t⁻¹); identity | entry evaluations t,0,0,t⁻¹ and determinant1; identity entries δᵢⱼ | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| A8.3 moment/gauge direction | constant A=h,x=e | anchor [h,e]=2e; gauge tangent [e,h]=−2e; dH_e corresponds to −e | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Source rescaling control | κ=2κ′, e₁,f₋₁ | printed K↦2K′ sends central bracket to4K′ versus K′; K↦K′/2 gives K′=K′ | Source error, roadmap uses correct reversed relation | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Source anomaly sign control | sl₂ h=diag(1,−1) | Σ_α>0 α(h)²=4; κc(h,h)=−4; corrected equality is sum=−κc | Source misprint | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Source PBW degree control | d=1,m=−1 | printed m−d=−2; actual weight d−m=2 | Source misprint | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Source big-cell map control | u(y)=[[1,y],[0,1]], b=[[-y,0],[1,y]], y=±1 | Ad_u b=[[0,1],[1,0]] for both y; two preimages over a regular semisimple point | Source generic-injectivity error; dominance suffices | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Source Borcherds parity control | vacuum fields, conformal m=n=−1,k=2 | printed reversal sign yields −4id versus0; corrected (−1)^k gives0=0 | Source misprint; roadmap sign correct | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Reconstruction, empty generator set | V=ℚ·vac, T=0; V=ℚ² with vac=e₁ | First: span(vac)=V and Y(c vac)=c id uniquely; second: stable span(e₁) has dimension 1≠2 and generation fails | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Reconstruction, zero vacuum | W=0, any generator family | hgen gives 0=V; on V=0 every coefficient and T equals 0 and there is one structure | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Reconstruction, possible negative creation term | lowest exponent r=−2, coefficient v≠0 | covariance at r−1 gives 0=−2v, impossible in characteristic zero | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Reconstruction covariance outside characteristic zero | characteristic 2, scalar field F(z)=z⁻² id and T=0 | derivative −2z⁻³=0 although there is a pole; CharZero excludes this input | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Generic adapter, positive characteristic | A=𝔽₂[[x]], M=A/x², J_N=x^N A | J₂·1=0 and orbit kernel x²A open; both properties true | Pass | None; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Source loop lift, central input | g=identity, A=0,c=1 | printed image 0; required image K | Source error | Keep README's c term; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Source loop lift, Maurer–Cartan side | g=[[t,1],[0,t⁻¹]], A=t f, κ=tr | g⁻¹g′=[[t⁻¹,t⁻²],[0,−t⁻¹]], g′g⁻¹=[[t⁻¹,−1],[0,−t⁻¹]]; residues against A are 1 versus 0 | Source error | Keep README's g⁻¹dg; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |
| Source invariant-form vector space | sl₂, trace form κ₀ | κ₀ and −κ₀ nondegenerate; sum 0 is degenerate | Source misprint | All invariant forms form the vector space; carried from [r4](PRREVIEW-AffineLieAlgebras~4.md) |

## Not verifiable

- Carried from r4: `kac-laplace`, Corollary 1, printed pp.645–647, remains uncertified. The prior source-service attempt reached the PMC landing page, but the PDF route returned HTML and a browser check; no paywall or access control was bypassed. Its unchanged theorem is outside this incremental source pass.
- Carried from r4: `virasoro-zulip`, message 491524778, was not readable in the prior public application-shell extraction (`virasoro-zulip` lines 5–19). The message is not certified here. It has no bearing on the changed integration proof or cocycle spelling.
- No newly required text was unavailable, and no new source request was made. The inherited limitations are reported rather than described as freshly verified sources. Nothing was parked. The missing inventory remains the nonblocking R01.

## Source issues

The eight source issues from r4 below are carried forward, not newly discovered or independently rechecked in this incremental pass. The final numbering misprint was checked in this round on both rendered printed pages.

- **Error** in frenkel-loop at §1.3.6, printed p.29: the source says for κ=λκ′, the identity-on-currents map sends K to λK′; it should be K↦λ⁻¹K′; affects a stated result.
- **Misprint** in frenkel-loop at §1.3.6, displayed loop action, printed p.29: the source says the image's central coordinate is only the residue correction; it should be the input central coordinate plus that correction; affects a stated result.
- **Error** in frenkel-loop at §1.3.6, displayed loop action, printed p.29: the source says the correction pairs (dg)g⁻¹ with the original current A; it should be κ(g⁻¹dg,A), equivalently κ((dg)g⁻¹,Ad_g A); affects a stated result.
- **Misprint** in frenkel-loop at equation (5.6-11), printed p.161: the source says the positive-root quadratic sum equals κc; it should be the negative of κc; affects the proof.
- **Error** in frenkel-loop at Proposition 7.1.1 proof, printed p.201: the source says the big-cell Grothendieck map and its jet map are generically one-to-one; it should be generically finite, with dominance and generic étaleness supplying the required injective pullback; affects the proof.
- **Misprint** in frenkel-loop at §8.1.1 after Corollary 8.1.2, printed p.225: the source says the degree of Pᵢ,ₘ is m−dᵢ; it should be dᵢ−m; affects nothing.
- **Misprint** in kac-vertex at equations (4.33) and (4.35), printed p.29: the source says the reversed-product sign is (−1)ⁿ; it should be (−1)ᵏ, where k is the product exponent; affects a stated result.
- **Misprint** in frenkel-loop at §1.3.5, printed p.28: the source says nondegenerate invariant forms constitute a one-dimensional vector space; it should be all invariant forms, with nondegenerate forms its nonzero elements; affects nothing.
- **Misprint** in frenkel-loop at Lemma 1.3.1, §1.3.4, printed p.26: the source says the integration result has the same lemma number as the triviality result in §1.3.1, p.19; it should be given a distinct lemma label, with section and page used to disambiguate citations; affects nothing.

Numbering witnesses: `frenkel-loop` lines 1057–1058 and 1349–1361. No published correction was verified.
