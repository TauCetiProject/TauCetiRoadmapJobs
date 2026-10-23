# Repair report: QuiverRepresentationsPartII

Findings are listed in review order: the first eleven sections concern review a, the final four review b. Overlapping findings share one repair, explicitly identified below. Mathematical targets remain in the README when their acceptance-file declarations or proposed computational checks are deleted.

## F01 (P3) — applied differently

Review a. Deleted all 61 admitted examples rather than proving or renaming padding. Their substantive conventions and boundary controls remain README Checks; strengthened §§0.1–0.3, 1.1–1.2, 4.1–4.2 and 4.5. No example remains in Suggested.lean. The binding acceptance-file rule overrides the request to add boundary-case declarations.

## F02 (P3) — applied differently

Review a. Kept the requested computations as prose Checks: shifted length 3, empty maximal split, off-support zero cut, the one-point polynomial topology, three-singleton matching of size 2, missing grade bottom, explicit path steps and weights, and the commutator trace −1. Added no Lean padding; the mathematical values appear in the adversarial table below.

## F03 (P3) — applied

Review a. Replaced both stale revisions by Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, read from the supplied lake-manifest.json. The orbit theorem is described as a pinned implementation supplier. No pin file changed.

## F04 (P3) — applied differently

Review a. Deleted the library-only range and endpoint-field examples with all other admitted examples. README Checks now distinguish occurrence counts at two different intervals, zero/nonzero arrows on the same grading, wrong path starts, non-unit steps and full vertex weights. Added the corresponding positive, negative and empty controls without duplicating them in Lean.

## F05 (P3) — applied differently

Review a. Named retained Space.Carrier, Direction.step and polynomial_irreducible in the README. Deleted the closing name catalogue, the easy range-stability helper, and definitions used only by deleted examples or API targets. Kept direction reversal and truncation-length identities as mathematical prose. Removed maximalPart_add_remainder and the empty-cut boundary signature too; ten headline signatures and their 29 required definitions remain.

## F06 (P3) — applied

Review a. Added sources.toml, with exactly one entry per AKY, MW, Z81, Z98 and DIL. The source service fetched four legal mathematical texts; Z81 is settled as uncertified through its paywalled DOI. Filled URL-source bibliographic fields and combined AKY's preprint/published identifiers in its existing entry. No unresolved text request remains.

## F07 (P3) — applied

Review a. Replaced private quantified chain predicates by specializations of pinned IsChain and IsAntichain in Lean and README §4. The supplier contract records their Set.Pairwise semantics: distinct members only; inclusion reflexivity and strict-endpoint irreflexivity recover the previous all-pairs formulations. Values for empty sets, duplicates, nested intervals and adjacent singletons agree.

## F08 (P3) — applied differently

Review a. Replaced mwLabel/procedures with geometric-dual recurrence, reinsertion and quantified exclusion. MW line 427 permits matched targets ≤A⁺, not strictly below A⁺: strictness fails for 2[0,1]+[1,2]+[2,2]. Corrected both matching uses, required A∈q in exclusion, and confined the embedding input to its sourced rank-one setting; cuspidal independence gives the general comparison.

## F09 (P3) — applied

Review a. Removed the numbered pull-request link. Scope and ownership and the Mathlib supplier contract now cite the pinned chain and antichain predicates. Finite weak duality, attaining chain partitions, split-graph matching and weighted-chain comparison remain targets of §4.3.

## F10 (P1) — applied

Review a. Broke §1.2 → §1.4 → §1.3 → §1.2: nilpotence now uses finite grading support alone. The finite-window equivalence is constructed after pairs in §1.2, before interval types in §1.3; §1.4 transports classification through it. Added three window/orientation Checks. AKY line 620 and QuiverRepresentations Layer 1 support the comparison; window compatibility is owned here.

## F11 (P2) — applied

Review a. Generalized Summary, ownership, conventions, supplier contracts and §5.4 from unramified rank one to any unitary supercuspidal ρ of GL_d(F), d≥1, real translation c and non-archimedean local field F. Added cuspidal-label independence and rank d·totalLength m. Kept the unramified application, adding GL₂-cuspidal/GL₄ and equal-characteristic Checks. MW Proposition II.12 and Theorem II.13 justify the extension.

## F01 (P3) — applied

Review b. Removed the nonexistent main-branch link for SmoothRepresentationsOfLocalGroups. Split Tau Ceti and QuiverRepresentations contracts into canonical headings; added the AlgebraicVectorBundles heading and moved its exact carriers there. Verified the smooth supplier at its indexed open head, including SR.5.2 segment-representations and SR.5.3 highest-derivative-adapter. No supplier gap is needed.

## F02 (P3) — applied

Review b. Removed all six temporal uses of “current” in scope, contracts and §2.7. The pinned orbit, homogeneity, local-nilpotence and Krull–Schmidt declarations are referred to timelessly. The orbit wording also shares review a F03's baseline correction.

## F03 (P3) — applied differently

Review b. Deleted the sorried maximalPart_add_remainder signature rather than retaining a proved API lemma. The README keeps the equality as prose in §0.3. The witness is valid: the filtered deduplicated multiset is below m, so add_tsub_cancel_of_le proves the equality. Range stability is likewise only a proof obligation in §2.1, sharing review a F05's repair.

## F04 (P3) — applied

Review b. Removed ha, har and hm from GridPath.weight_bound and updated its docstring and §§4.5–4.6. Distinct valid path vertices are nested intervals meeting the adjacent cut, so the bound is unrestricted. Window and interior hypotheses remain on attainment. Added r=0,a=0 and the outside-window [0,1] witness: path weight 0, cut weight 1.

## Gate failures supplied with the job

| Failure | Repair and final result |
| --- | --- |
| Missing sources.toml | Five unique work entries, all required bibliographic/status fields. Four certified; Z81 uncertified. Sources check: zero problems. |
| prnum=1 | Deleted the numbered Mathlib link and cited pinned definitions; final prnum=0. |
| sorry-examples=61 | Deleted every example; final sorry-examples=0. The ten admitted declarations are theorem targets. |
| readme-ids-missing=28 | Replaced API-name promises with their mathematical facts throughout §§0–5, while retaining backticked declarations actually present in Suggested.lean. Deleted the catalogue and moved example-only definitions to README notation. Final readme-ids-missing=0. No declaration was added merely to satisfy this gate. |

## Source, supplier and ownership evidence

All mathematical wording is original. Source readings use legal copies fetched by the source service. AKY locators use arXiv v4, not remembered publication numbering; both identifiers share one manifest entry. Z81 remains an uncertified locator-only citation and is not a missing-reference request. MW's full-volume extraction contains page markers rather than legible mathematical text; relevant printed scan pages were rendered and read directly. A fourteen-page selection then passed source-service OCR. MW line references below use that numbered selection, covering printed pp.147–148, 150–151, 160, 162–163, 169 and 172–177. The full-volume OCR attempt was stopped; no source text was copied into the repository.

| Contract or source | Exact evidence and interpretation |
| --- | --- |
| Integral intervals, normalization and ramification | AKY line 264 (§2.1), line 278 (two-term character), line 319 (§2.3). |
| One-copy maximal split | AKY line 422, definition before Proposition 2.7; line 430 (split theorem), line 432 (consumer corollary). |
| Grading, shift, finite-window interpretation | AKY line 548 (pairs), line 588 (shift), line 594 (standard arrows), line 620 (classification). |
| Reconstruction and actual images | AKY line 554 (Lemma 3.1), line 631 (Lemma 3.2), line 651 (Lemma 3.3). |
| Image-admissibility and simultaneous choice | AKY line 676 (Lemma 3.4), line 734 (simultaneous choice), line 757 (Proposition 3.5). |
| Truncation, ranks and paths | AKY line 766 (Lemma 3.6), line 771 (Proposition 3.7), line 819 (path), line 856 (weight), line 878 (split proof). |
| Generic operator definition and recurrence | Z98 line 67 (§2), line 90 (Theorem 1), line 140 (§5), line 152 (recurrence). |
| Finite-poset input and occurrence multiplicities | DIL line 40 (Theorem 3), line 59 (inductive proof), line 104 (split graph), line 145 (incomparable copies). |
| MW order, generic recurrence and geometry | MW line 44 (II.1 p.148), line 218 (Proposition II.6 p.162), line 253 (Remark II.6.1 p.163), line 293 (Corollary II.7 p.169); II.2 pp.149–150. Verified the affine-slice assertion and its nonempty-intersection qualification. |
| MW representation inputs | MW line 120 (Lemma II.3), line 351 (Lemma II.10.2), line 403 (Remark II.10.3), line 432 (Lemma II.11), with printed pages as in the README. The exclusion threshold A must itself occur in q; that source hypothesis is explicit. MW line 427 makes the target comparison weak, allowing equality; a strict comparison falsely strengthens the reinsertion conclusion. MW line 14 supplies embeddings in the rank-one category used by the first proof; independence transports the comparison, not that embedding statement. |
| General cuspidal rank and field | MW introduction p.136 and line 35 take a non-archimedean local field; line 40 permits any positive cuspidal rank; line 468 (Proposition II.12) gives independence; line 500 (Theorem II.13) and line 507 reduce to the trivial GL₁ label. |
| Pinned chain vocabulary | Mathlib/Order/Preorder/Chain.lean:51 and Mathlib/Order/Antichain.lean:42 define Set.Pairwise predicates. Neither definition contains a finiteness or attaining-partition assertion. |
| Pinned homogeneous predicate | TauCeti/LinearAlgebra/Graded/LinearMap.lean:56 sends each grade p into grade p+q, without an internal-sum hypothesis. Space.internal supplies that additional structure here. |
| Pinned local nilpotence | TauCeti/LinearAlgebra/End/LocallyNilpotent.lean:104 gives a vector-dependent exponent on a weighted basis. Pair.nilpotent has a uniform exponent on the finite coordinate space. |
| Pinned constructible orbits | TauCeti/Topology/Algebra/MulAction/Orbit.lean:87 requires a Noetherian space, the ambient homeomorphic-action hypotheses and constructibility. It does not supply the conormal dimension or projection assertions. |
| Pinned quiver inputs | TauCeti/RepresentationTheory/Quiver/Representation/Basic.lean:53; AsModule.lean, quiverRepEquivalence; KrullSchmidt.lean:85,110,148. Finite windows satisfy finite-vertex and pointwise finite-dimensional hypotheses. |
| Other Mathlib contracts | DirectSum/Basic.lean:440; Submodule/Range.lean:57; Dimension/Free.lean:334; Basis/VectorSpace.lean:152; Matrix/Rank.lean:132; MvPolynomial/Eval.lean:256; Topology/Order.lean:70; Topology/Irreducible.lean:48. The range is the actual image and irreducibility includes nonemptiness. Submodule.map uses the actual image predicate. |
| Parent ownership | TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md, Layers 1, 2 and 5; Suggested.lean:128,135. The parent owns representation/module equivalence, decomposition, multiplicity uniqueness and Gabriel classification, not integer-window enlargement compatibility. |
| Bundle ownership | TauCetiRoadmap/AlgebraicVectorBundles/README.md, L0B and L2B; Suggested.lean:167,732,750,795. The conormal comparison here is scoped to this action and consumes the general sheaf/total-space interface. |
| Smooth ownership | SmoothRepresentationsOfLocalGroups at its indexed open head, SR.5.2 segment-representations and SR.5.3 highest-derivative-adapter. Checked arbitrary positive cuspidal rank, real endpoints, Z/L normalization, twist compatibility, the rank-zero unit and the involution. |

Searched objects, not just proposed names, in the indexed main/open roadmaps using roadmaps grep, in board packages, at all thirteen supplied sibling heads, and in the pinned linear-algebra/order files. No other owner of this integer-graded adapter, multisegment duality, or its scoped conormal comparison was found. GraphConnectivityAndFlows explicitly excludes Dilworth in its Scope boundaries, so §4.3 does not re-plan that roadmap. Generic bundles remain with AlgebraicVectorBundles; smooth classification remains with its named supplier. No supplier was invented or moved, no supplier gap was required, and no design/plan.json was created.

## Adversarial mathematics pass

These are computed instances and source-backed interface checks, not universal proofs. For interval calculations use A=[0,2], B=[1,1], C=[0,0]+[1,1], D=2[0,1], and Q=2[0,0]+3[1,1]. A zero multisegment is written ∅. For arrows use N=E₂₁ and L=E₁₂ on grades (0,1). Every formula retains the README's complex-coefficient and finite-support hypotheses.

An independent finite evaluation enumerated all 1,001 interval multisets of cardinality at most four with endpoints in [−1,2], all 7,007 cuts a∈[−3,3], 1,835 window/path-attainment cases with r≤4 and at most three intervals, and 31,031 unrestricted path-bound cases. There were no failures of the repaired statements. Reinsertion was additionally evaluated on all 1,000 nonempty inputs: the corrected weak-target condition passed all cases; the superseded strict-target condition failed on 20. Of the cuts, 4,500 were nonempty and 2,507 empty. The geometric-dual values were evaluated with the source recurrence; the universal identification of that recurrence with generic geometry remains the sourced theorem target.

| Statement | Instances and computed values | Result / change |
| --- | --- | --- |
| Interval and endpoint validity | [0,0] satisfies 0≤0; [0,2] satisfies 0≤2; [1,0] fails 1≤0. | Nonempty carrier retained. |
| Interval.contains | A contains 0 and 2; it does not contain 3. | Inclusive endpoints retained. |
| Interval.included | B⊆A is true; A⊆B and [3,3]⊆A are false. | Direction retained. |
| Interval.length | Lengths of [3,3], A and [1,3] are 1,3,3. | README only. |
| Endpoint extensionality | [0,2]=[0,2]; [0,2]≠[0,1] as 2≠1. | README only. |
| Inclusion reflexivity | A⊆A and B⊆B both true. | README only. |
| Inclusion transitivity | [1,1]⊆[0,2]⊆[−1,3] gives 1≤1 and 1≤3 in the composite. | README only. |
| Inclusion antisymmetry | [0,2]⊆[0,2] both ways forces endpoints (0,2)=(0,2). | README only. |
| Interval translation | [2,4] shifted −1 is [1,3]; shifting +1 is [3,5]. | Opposite-sign control kept. |
| Shifted membership | 3∈[2,4] and 2∈[1,3] are true; 5∈[2,4] and 4∈[1,3] are false. | Both directions tested. |
| Interval.shorten | [3,3]→none; [3,4]→[3,3]; A→[0,1]. | Deletion retained. |
| Positive interval length | Minimum length 1; A length 3; no reversed interval admitted. | README only. |
| Multisegment | D has cardinality 2 and total length 4; ∅ has 0 and 0. | Multiplicities retained. |
| rightTruncate | D→2[0,0]; [0,0]+[1,3]→[1,2]; ∅→∅. | Full copies retained. |
| Truncation additivity | Truncate([0,0]+[1,3])=[1,2]=∅+[1,2]. | README only. |
| Truncation/shift commutation | D shifted −1 then truncated is 2[−1,−1], also truncate D shifted −1. | README only. |
| degreeDimension | A+B at degree 1 gives 2; at 3 gives 0; D at 0 gives 2. | README only. |
| Degree-dimension additivity | dim₁(A+B)=2=1+1. | README only. |
| totalLength | Length(A+B)=4=3+1; ∅ length 0. | README only. |
| Length as sum of grade dimensions | A+B has (1,2,1), sum 4=4. | README only. |
| Truncation length drop | A+B truncates to [0,1], so 2+2=4; ∅ gives 0+0=0. | API signature removed. |
| occurrenceInterval | For [0,0]+[2,2], value counts are 1 and 1; for D the sole distinct value has count 2; ∅ has 0 labels. | Constant-selector control added. |
| Occurrence count law | Number of D labels equal to [0,1] is 2=m.count[0,1]; number equal to [0,0] is 0. | README only. |
| maximalPart | max(2A)=A; max(A+B)=A; max([0,0]+[2,2]) is both singletons. | One copy retained. |
| Maximal-part count | In 2A, maximum count at A is 1 while input count is 2; B's maximal count in A+B is 0. | README only. |
| remainder | rem(2A)=A; rem(A+B)=B; rem(∅)=∅. | Other copies retained. |
| Maximal part plus remainder | A+B gives A+B; 2A gives A+A; ∅ gives ∅+∅. | Easy Lean theorem deleted. |
| Maximal incomparability | [0,0] and [2,2] are neither included in the other; no distinct comparable maxima. | README only. |
| Existence of a containing maximum | B in A+B is contained in A; A in 2A is contained in A. | Finite-support route retained. |
| Space | Presentations (n,degrees)=(0,()),(1,(0)),(2,(3,3)) have dimensions 0,1,2. | Arbitrary repeated grades retained. |
| Space.Carrier | Fin 0→ℂ is zero dimensional; Fin 1→ℂ has dimension 1; Fin 2→ℂ dimension 2. | Named in README. |
| Space.grade | Degrees (3,3): grade 3 is ℂ², grade 4 is bottom; n=0 gives bottom at every grade. | Actual submodules retained. |
| Space.dimension | The same grade dimensions are 2,0,0. | README only. |
| Space.internal | Degrees (0,1) decompose (x,y)=(x,0)+(0,y); degrees (3,3) give one full summand; n=0 gives 0=0. | Nontrivial grading target retained. |
| Finite grading support | Supports for the above spaces are ∅,{0},{3}. | README only. |
| Grade dimension/count | Degrees (3,3) have coordinate count 2 at 3 and 0 at 4, equal to finranks 2 and 0. | README only. |
| constantSpace | n=2,a=3 has dimension 2 at 3 and 0 at 4; n=0 has dimension 0. | Example-only definition removed. |
| Direction | Values are up and down; permitted steps are {1,−1}, excluding 0. | Two-case carrier retained. |
| Direction.step | up↦1, down↦−1. | Named in README. |
| Direction reversal | up↦down↦up; steps 1↦−1↦1. | README only. |
| Homogeneous | N sends grade 0 to grade 1, so degree +1 is true and −1 false; zero has both degrees. | Native predicate retained. |
| Pair | N with degree +1 is valid; N with degree −1 is invalid; zero is valid in either direction. | Actual operator retained. |
| Pair.nilpotent | N≠0, N²=0; a singleton zero operator has first power 0; zero space has identity=zero. | Uniform exponent retained. |
| PairIso | Identity intertwines N with N; identity does not intertwine N with 0 as (0,1)≠0. | Same-grading negative control added. |
| Pair.Isomorphic | Grade-0 and grade-1 singletons have no graded isomorphism; same-grade zero singletons do. | README only. |
| Isomorphism reflexivity | Identity gives eNv=Ne v, with both sides (0,1) on v=(1,0). | README only. |
| Isomorphism transitivity | Composing identity intertwiners on N still sends (1,0) to (1,0), and N to N. | README only. |
| zeroPair | Its operator is 0; first power is 0 on dimensions 0,1,2. | Example-only definition removed. |
| Grade reflection | [0,1]↦[−1,0]; VN step +1 becomes WL step −1. | Direction convention retained. |
| Finite-window equivalence | [0,0] has one vertex/zero arrows; [0,1] carries scalar arrow 1; enlargement to [−1,2] gives arrows 0,1,0. | Cycle removed. |
| Window restriction/extension | Restricting the enlarged arrows (0,1,0) gives (1); zero extension recovers (0,1,0). | Compatibility before type construction. |
| standardSpace | A has 3 basis vectors; D has 4 with dimensions (2,2). | Future construction in prose. |
| standardVector | On A, vector at grade 1 has coefficient 1 at its label; at grade 3 it is zero. | Valid/invalid labels tested. |
| standardBasis | D has two distinct basis vectors at grade 0; their coordinates are (1,0) and (0,1). | Occurrence identity retained. |
| Standard-space dimensions | dim₁(A+B)=2 and total dimension 4. | README only. |
| standardPair up | A arrows v₀↦v₁↦v₂↦0; ranks are 1,1,1 on the three nontrivial paths. | Increasing convention retained. |
| standardPair down | A arrows v₂↦v₁↦v₀↦0; singleton [2,2] has zero arrow. | Support not translated. |
| Standard-vector nonvanishing | On A: grades 0,1,2 give nonzero vectors; grades −1,3 give zero. | README only. |
| Standard-vector grade membership | Valid v₁ lies in grade 1; invalid zero lies in grade 3 as 0. | Zero-vector branch retained. |
| pairType | Standard A and D recover labels A and D; zero space recovers ∅. | Supplier classification transported. |
| Pair classification | N and 0 on grades (0,1) have types [0,1] and C, hence are not isomorphic; N with itself has equal types. | Both directions tested. |
| Type dimensions | Type A+B gives (1,2,1), identical to space dimensions. | README only. |
| Rank multiplicity differences | For A+B, [0,2] multiplicity 1−0−0+0=1; [1,1] multiplicity 2−1−1+1=1. | Integer differences retained. |
| shiftSpace / shiftPair | Degrees (0,1) shifted −1 become (−1,0), while the arrow coefficient stays 1. | Example-only definitions removed. |
| Type shift | Type [0,1] shifted −1 is [−1,0], with the same length 2. | README only. |
| imagePair / ImageModel | N on A has range span(v₁,v₂), embedding rank 2 and zero grade-0 part; singleton has range rank 0. | Actual range required. |
| Iterated images | On A, ranks of N⁰,N¹,N²,N³ are 3,2,1,0. | Actual iterated ranges required. |
| VN image type | A image type [1,2]; shifting −1 gives [0,1]=truncate A. | Shift sign retained. |
| WL image type | A image type [0,1]=truncate A, without shifting. | No extra shift. |
| Reconstruction from image | A+B and A share image [1,2] but dimensions (1,2,1) versus (1,1,1); singleton positions 0 versus 1 both have zero images but different grade dimensions. | Necessary grade data retained. |
| centralizer | On A, opposite centralizer dimension 0; on C dimension 1; on Q dimension 6. | Ordinary centralizer rejected. |
| Centralizer commutation | On C, N=0 and any descending scalar l gives NL=LN=0. On N=E₂₁,L=E₁₂, NL≠LN. | Actual commuting equation retained. |
| oppositePair | For C and descending coefficient l=1 the opposite operator sends v₁ to v₀, giving [0,1]. | Operator tied to input. |
| Range stability | N on A maps onto span(v₁,v₂); its commuting opposite map is 0 and preserves that range. With N=0 every opposite map preserves the zero range. | Easy helper deleted. |
| restrictCentralizer | On Q the VN image is zero, so the restriction is ℂ⁶→0; onto. | Source/target fixed by actual image. |
| Restriction embedding | For C, image embedding is 0→ℂ² and both composites give 0; nonzero diagonal reindexing retains coefficients under conjugacy. | README obligation retained. |
| Precedes | ([0,0],[1,1]) gives 0<1≤1≤1; self A fails 0<0; ([0,0],[2,2]) fails 2≤1. | Source/target order retained. |
| Centralizer coordinates | Q has 2·3=6 scalar entries; one chain A has 0; C has 1. | Duplicate occurrences retained. |
| VN restriction surjection | Pair [0,1]+[1,2] has one allowed block; images [1,1]+[2,2] have one; scalar λ restricts to λ. | Image coefficient lifts. |
| WL restriction surjection | Reflecting the preceding example gives [−1,0]+[−2,−1], with one coordinate restricting to one coordinate. | Reflection signs recomputed. |
| polynomialTopology | D(1)=whole space, D(0)=∅; on ℂ, D(X)=ℂ\{0}. | Polynomial, not metric topology. |
| Polynomial principal opens | At z=0 and 1, X evaluates to 0 and 1; D(X) omits 0 and contains 1. | README only. |
| Topology basis independence | Scaling by 2 pulls X back to 2X with identical zero set {0}. | Invertible-coordinate transport retained. |
| Nonzero evaluation | X(X−1) vanishes at 0,1 but equals 2 at 2; zero polynomial always evaluates 0. | Infinite-field hypothesis used. |
| polynomial_irreducible | n=0 gives one point; D(X)∩D(X−1) contains 2 for n=1. | Empty/nonempty dimensions covered. |
| Centralizer irreducibility | Dimensions 0,1,6 for A,C,Q give affine point, line, 6-space; D(1) nonempty in each. | Transport target retained. |
| Finite intersections | D(X)∩D(X−1)=ℂ\{0,1}; empty intersection-family gives all ℂ. | Empty-family case retained. |
| Surjective preimage | Projection ℂ²→ℂ pulls D(X) back to x≠0, containing (1,0); map 0→ℂ is not onto. | Surjectivity required. |
| Affine-subspace intersection | D(X) misses subspace {0}; on line y=0 in ℂ², x≠0 is nonempty dense. | Nonempty-intersection condition retained. |
| Unit disk negative control | Disk contains 0; complement contains every integer ≥1, hence is infinite and not a proper polynomial closed set in one variable. | Metric openness rejected. |
| genericType | Types for A,C,[0,0]+[2,2] are three singletons, [0,1], and the same separated singletons. | Rank-selected type retained in README. |
| genericLocus | For C, l=0 has rank 0 and l=1 rank 1; generic locus is l≠0. | Zero-map wrong model excluded. |
| Generic rank locus | Q admits matrix [[1,0,0],[0,1,0]], rank 2; zero matrix rank 0. | Attained minor is 1. |
| Generic-type conjugacy | Rescaling one singleton basis by 2 changes l=1 to l=2, both nonzero and type [0,1]. | Basis independence retained. |
| Generic-type uniqueness | In C's parameter line, rank-1 locus is ℂ\{0}; rank-0 locus {0} is not dense. | Wrong type excluded. |
| Generic-type shift | C shifted −2 has dual [−2,−1], the shift of [0,1]. | Translation retained. |
| Generic-locus shift | Same l=1 is generic before/after shift; l=0 is nongeneric in both. | Underlying map fixed. |
| Graded algebraic group and spaces | Dimensions (2,3): G=GL₂×GL₃ has dimension 13 and is nonabelian; E₊ and E₋ each dimension 6. | Actual algebraic carriers required. |
| Trace pairing | For N=E₂₁,L=E₁₂, tr(NL)=1; each block matrix unit pairs with its reverse to 1. | Nondegenerate pairing convention. |
| Commutator sign | NL=diag(0,1), LN=diag(1,0), difference diag(−1,1); pairing with diag(1,0) gives −1. | Sign witness retained in README. |
| Tangent trace identity | With X=diag(1,0), [X,N]=−N; both tr([X,N]L) and tr(X[N,L]) equal −1. | Same sign in conormal layer. |
| commutingIncidence | Grades (1,1): scalar equations are nl=0, giving axes; n=l=1 fails as nl=1. | Commutation not anticommutation. |
| Graded-orbit geometry | Dimensions (2,3), ranks 0,1,2: orbit dimensions 0,4,6; stabilizer dimensions 13,9,7. | Nonabelian action tested. |
| Conormal bundle rank | Same ranks: fibre dimensions (2−r)(3−r)=6,2,0; equal 6−orbit dimension. | Bundle interface consumed. |
| Conormal closure dimension | Orbit+fibre dimensions are 0+6=6, 4+2=6, 6+0=6; zero space gives 0. | Equal-dimensional component argument. |
| Incidence components | Grades (1,1) have two 1-dimensional axis closures; zero space one 0-dimensional point. | Boundary components covered. |
| Opposite conormal closure | Nonzero n axis pairs with down orbit l=0; n=0 fibre has dense down orbit l≠0. | Projection direction retained. |
| Generic fibre comparison | Over n=0, fibre is ℂ and generic subset ℂ×; over n=1, fibre is {0} and generic subset the whole point. | Every orbit fibre is met. |
| Generic conormal symmetry | Up type [0,1] gives down type C and returns [0,1]; up C gives down [0,1] and returns C. | Both directions tested. |
| dual | dual A=[0,0]+[1,1]+[2,2]; dual C=[0,1]; dual gap=[0,0]+[2,2]. | Full grade vector preserved. |
| VN generic-dual identification | Standard C and its conjugate both have generic type [0,1]. | README only until generic carrier. |
| WL generic-dual identification | WL chain [0,1] has opposite zero operator of type C; transposition keeps endpoints (0,1). | Transposition, not reflection. |
| Dual dimensions/length | Q has grade dimensions (2,3); dual Q=2[0,1]+[1,1] also (2,3), length 5. | Rectangular control retained. |
| Dual shift | dual(C shifted −2)=[−2,−1]=(dual C) shifted −2. | Signs agree with images. |
| Dual involutivity | dual(dual C)=C; dual(dual A)=A; dual∅=∅. | Source-backed and finite pass. |
| Admissible | On C, l=1 gives WL type [0,1] and is admissible; l=0 gives C and is not. | Wrong generic map rejected. |
| Admissible iff generic | On same line, both predicates are l≠0, agreeing at l=0,1. | README only. |
| onOppositeImage | On C,l=1, actual image is grade-0 line and restricted N=0, type [0,0]. | Actual embedding retained. |
| Opposite-image embedding | Embed(v₀)=v₀; N on it is 0 on both sides. | Intertwining equation tested. |
| imageAdmissibleLocus | C,l=1 has WL image singleton [0,0], fixed by dual; A,l=0 has zero image and ∅=dual∅. | Zero and nonzero models covered. |
| Image-admissibility implies admissibility | On C,l=0, first condition fails (C≠[0,1]); l=1 satisfies both. | Separate first condition retained. |
| Image-admissible open dense | C gives ℂ×⊂ℂ; A gives the entire zero-dimensional point. | Zero-dimensional case included. |
| Nonzero-minor image chart | Scalar l=1 gives invertible minor 1; l=0 has minor 0 and is outside the chart. | No division on zero minor. |
| simultaneousRestrictions | On A, ranges of N^k have dimensions 3,2,1,0; only finitely many nonzero images. | Same opposite map on every range. |
| Simultaneous genericity | On A, L=0 works on all four ranges; on C any l≠0 works on V and on later zero images. | Common-map condition tested. |
| ram | ram A=∅; ram C=[0,0]; ram gap=∅; ram∅=∅. | Grade-0 normalization retained. |
| Dual of ramification | For C, dual(ram C)=[0,0]=truncate(dual C). | README only. |
| VN-image ramification | C,l=1 has image VN type [0,0]=ram C. | Actual image matches formula. |
| Ramified total length bound | C gives 1≤2; A gives 0≤3; ∅ gives 0≤0. | No positive-size assumption. |
| Ramification shift | C shifted −2 has ramification [−2,−2], the shift of [0,0]. | Signs retained. |
| Shifted image-admissibility | C,l=1 shifted −1 has image grade −1; both admissibility conditions still singleton equalities. | Restriction map fixed. |
| Ram/truncation commutation | [0,1]+[1,2] has ram [0,1]; both composites give [0,0]. C gives ∅ on both sides. | Common −1 shift retained. |
| cutPart | C,a=0 has cardinality 2; C,a=3 has cardinality 0; D,a=0 has 2 copies. | Meeting either endpoint. |
| Cut occurrence count | D at a=0 retains count 2; at a=3 retains count 0. | Full weights retained. |
| IsInclusionChain | {A,B} true; {[0,0],[1,1]} false; ∅ true. | Pinned IsChain specialization. |
| chainWeight | E₀(C)=1; E₀(2[0,1]+B)=3; E₃(C)=0. | Support-size wrong model excluded. |
| Chain-weight cardinal bound | C gives 1≤2; nested A+B gives 2≤2; ∅ gives 0≤0. | README only. |
| Chain-weight zero criterion | C,a=3: 0=0 and empty cut; C,a=0: 1≠0 and nonempty cut. | Both directions tested. |
| adjacentDualCount | dual C=[0,1] crosses 0 once; dual A crosses every cut zero times. | Both endpoints required. |
| endpointBefore | [0,0] before [1,1] true; two [0,1] copies false; A before B false as 2<1 fails. | Strict endpoints retained. |
| Endpoint irreflexivity | A before A requires 0<0, false. | README only. |
| Endpoint transitivity | [0,0] before [1,1] before [2,2] implies 0<2 at both ends. | README only. |
| IsEndpointAntichain | Two D labels form an antichain; two C labels do not; A+B labels do. | Pinned IsAntichain specialization. |
| IsEndpointMatching | On three singletons, edges 0→1 and 1→2 give size 2; 0→1 plus 0→2 fails left injection; 0→2 plus 1→2 fails right injection. | Opposite roles independent. |
| Empty matching | ∅ matching on ∅ has edge count 0 and both projections injective. | Boundary in README. |
| matchingNumber | Values for D,C,A+B and three successive singletons are 0,1,0,2. | Occurrence labels retained. |
| antichainWidth | Corresponding widths are 2,1,2,1. | Equal copies incomparable. |
| Maximum bounds | For three singletons, maximum matching 2≤3 and width 1≤3. | README only. |
| Matching bound iff | On C every matching has size≤1 and maximum is 1; proposed bound 0 fails on its one-edge matching. | Both directions tested. |
| Width bound iff | On D every antichain has size≤2 and maximum is 2; bound 1 fails on both labels. | Both directions tested. |
| Occurrence permutation invariance | Swap D's two labels: matching 0 and width 2; swap C labels: one reversed-index edge, same maxima 1 and 1. | No chosen order assumption. |
| Finite weak duality | Three singletons: maximum antichain size 1≤one chain; D: size 2≤two singleton chains. | Pinned vocabulary used. |
| Attaining chain partition | Three singletons partition into one chain, width 1; D into two chains, width 2. | Generic finite input retained. |
| weighted_dilworth | D: 0+2=2; C: 1+1=2; three singletons: 2+1=3; ∅:0+0=0. | 1,001-case pass. |
| cut_antichain_width | C cut: 1=1; nested A+B at a=0: 2=2; D cut: 2=2. | 7,007-cut pass. |
| Endpoint incomparability / inclusion | A,B are endpoint-incomparable and inclusion-comparable; C's intervals have endpoint edge and no inclusion comparison. Equal intervals satisfy only inclusion. | Both directions retained. |
| Adjacent generic rank | Q has matrix [[1,0,0],[0,1,0]], rank 2=matchingNumber Q; C gives 1; A gives 0. | Independent-coordinate route retained. |
| Minor/matching bound | Same 2×3 matrix has selected determinant 1; zero matrix all minors 0. | No higher-power claim. |
| GridPath | r=3,a=1 path (2,1),(1,1),(1,2),(1,3); differences (−1,0),(0,1),(0,1). | Actual path checked. |
| Invalid path controls | Start (1,1) differs from required (2,1); jump (1,1)→(1,3) differs from both unit steps. | README negative controls added. |
| Boundary path existence | r=0,a=0 has one vertex (1,0); r=1 has no interior a; a>r cannot reach first coordinate 1 in r steps. | Unrestricted carrier explained. |
| Path step counts / nesting | Displayed path has 1 left and 2 up steps; valid intervals [1,1]⊆[1,2]⊆[1,3]. | Strictly distinct vertices. |
| intervalWeight | On 2[1,3], weights at (2,1),(1,2),(1,3) are 0,0,2. | Invalid/absent/full-count cases. |
| GridPath.weight | Displayed path on 2[1,3] has (0,0,0,2), sum 2; on ∅ sum 0. | Endpoint-field example replaced. |
| InWindow | [1,3] in [1,3] true; [0,1] false; ∅ true for r=0. | Actual endpoint bounds retained. |
| GridPath.weight_bound | r=3,a=1,m=[0,1]: every path weight 0≤E₁=1. r=0,a=0: 0≤E₀. | Three unused hypotheses removed. |
| grid_path_chain_max | m=2[1,3],r=3,a=1: max path weight 2=E₁; outside-window [0,1]: 0≠1. | Attainment hypotheses retained. |
| Monotone-region rank sum | For m=2[1,3],a=1 total cut 2 minus boundary weight 2 gives adjacent dual count 0. For C shifted +1, 2−1=1. | Source path convention retained. |
| Adjacent chain formula | C:1+1=2; 2[0,1]+B:0+3=3; A+B:0+2=2; ∅:0+0=0. | All-integer formula retained. |
| Boundary-cut formula | A at a=−1 and 2 has cut size 1, weight 1, dual crossing count 0. | No artificial r≥2 hypothesis. |
| truncate_maximalPart | 2A: both sides [0,1]; [0,0]+2[1,2]+[2,2]: both sides [1,1]. | 1,001-case pass. |
| truncate_remainder | Same latter input: both sides [1,1]; ∅: both sides ∅. | Multiplicity retained. |
| chainWeight_peeling | C,a=0:1=0+1 and max weight 1; 2A,a=0:2=1+1 and max weight 1. | Nonempty cut required. |
| Empty peeling branch | ∅ and off-support C,a=3 give all three weights 0; increment would say 0=1. | Boundary signature removed, Check retained. |
| ram_maximal_split | C gives [0,0]=[0,0]+∅; 2A gives ∅=∅+∅. | General finite pass. |
| Failure of arbitrary ram additivity | ram([0,0]+[1,1])=[0,0], while separate ram values sum to ∅. | Negative control retained. |
| Integral-segment adapter | d=2,m=[0,1],c=0 has twists ρ,ρν on GL₄; singleton rank 2; ∅ rank 0. | Generality repaired. |
| Adapter support | For b=0,e=1,c=2 twists are ρν²,ρν³; sequence length 2. | Real endpoints tied to support. |
| Adapter integer shift | Shift [0,1] by 1 gives twists ρν^(c+1),ρν^(c+2), obtained by common ν twist. | Supplier twist interface used. |
| Adapter empty value | d·totalLength∅=d·0=0; normalized empty product is the GL₀ line of dimension 1. | Empty unit preserved. |
| Unramified normalization | q=2,χ=ν² gives |χ(ϖ)|=1/4 and c=2; χ₀(ϖ) has modulus 1. Unit modulus χ gives c=0. | Denominator log2≠0. |
| Uniformizer independence | For ϖ′=uϖ, χ(u)=1 and |u|=1, so both moduli are unchanged. | Unramified hypothesis explicit. |
| Representation-duality comparison | d=1,C gives L(C)=Z([0,1]); d=2,[0,1] compares representations on GL₄, not GL₂. | Arbitrary rank and local field. |
| Equal-characteristic application | F=𝔽₂((t)),q=2,d=1,C: total group rank 2 and dual interval [0,1]. | No characteristic-zero field restriction. |
| Geometric dual recurrence | A has k=0,p=1,m′=[1,2], so dual A=dual[1,2]+[0,0]; C has k=0,p=2,m′=∅, giving [0,1]. | Replaces separate mwLabel. |
| Recurrence length decrement | A:2=3−1; C:0=2−2; D first relation shortens one copy, giving length 3=4−1. | Nonempty p≥1. |
| MW order | [1,1]>[0,2] because 1>0; [0,2]>[0,1] because 2>1; every nonempty interval>absence. | Exact order read on MW p.148. |
| Singleton extraction | C has greatest left endpoint 1; deleting [1,1] gives m′=[0,0], reducing total length 2→1 and group rank 2d→d. | Last-interval tie convention retained. |
| Involution on embeddings | For GL₁ singleton α, τ fixes α; with rank-zero second factor the reversed product still has rank d and label [k,k]. | Actual embeddings, not Grothendieck equality. |
| Right-singleton candidates | q=[0,0],k=1 yields labels C or [0,1], both total length 2. | Coarse candidate list retained. |
| Quantified matching exclusion | q=[0,2]+[1,3]+[2,2],k=3,A=[2,2]: B has one occurrence; C=[1,3]<[2,3], and 0<1≤3≤3. One excluded extension label is [0,3]+[1,3]+[2,2]. | No greedy target or arbitrary-matching claim. |
| Dual reinsertion | C→m′=[0,0]: A=[0,0] extends to [0,1]; 2[0,0]→[0,0]: absent A adds [0,0]. Smaller-occurrence domains have size 0. | Empty-A branch explicit. |
| Reinsertion equality control | m=2[0,1]+[1,2]+[2,2] gives q=dual m′=[0,0]+[0,1]+[1,1]+[1,2]; A=[1,1], B=[0,1], C=[1,2]=A⁺; dual m=[0,0]+[0,1]+2[1,2]. | Weak comparison necessary; strict version rejected in 20 finite cases. |
| Cuspidal-line independence | Same integral [0,1] has involuted label C on GL₂ for d=1 and GL₄ for d=2; label C=C while groups differ. | Label comparison, not cross-group isomorphism. |
| Fixed-support induction | Support {0,1} has two multisegments C and [0,1]; involution exchanges them and squares to identity. | Finite-order route retained. |
| newformExample | Seven intervals have lengths 2+5+2+4+1+2+1=17; grade 3 receives four contributions. | Example-only Lean definition removed. |
| Newform maximal split | Maximum [3,7]+[2,5]+[1,2]+[0,0]; remainder [5,6]+[3,4]+[3,3]; lengths 12+5=17. | Recomputed. |
| Newform ramification | Output [4,4]+[2,5]+[1,2]+[0,0] has lengths 1+4+2+1=8, cardinality 4, grade-3 dimension 1. | Recomputed from source recurrence. |
| Newform intermediate truncation | Dual of maximum [7,7]+[5,6]+[4,5]+[2,4]+[0,3] truncates to [5,5]+[4,4]+[2,3]+[0,2], total length 7. | Exactly one shortening. |
| Newform intermediate dual | Dual of those four shortened intervals is [2,5]+[1,2]+[0,0], length 7; other maximal part contributes [4,4], length 1. | 7+1=8. |
| Downstream tuple interface | Empty ramification contributes no interval lengths; newform output contributes lengths (1,4,2,1) summing to 8. | Consumer retains conductor/induction ownership. |

## Verification outcomes

- Targeted prerequisite build: `lake build TauCeti.LinearAlgebra.Graded.LinearMap`, exit 0; module built successfully. No bare build, update, toolchain or pin mutation was run.
- Suggested.lean elaboration from the pinned content checkout: exit 0, exactly ten “declaration uses sorry” warnings and no errors. The file has one Mathlib import and one used Tau Ceti import, 29 real definitions/carriers and ten theorem targets, with no examples, sorry-valued data, set_option or catalogue.
- Mechanical binder audit: one scratch signature probe copied the acceptance file and applied `#check @name` to all 39 explicit declarations. Exit 0. Compared every elaborated type with README scope and hypotheses: Space carries its coordinate count and degree map; Pair carries the homogeneous operator; the two chain predicates carry their relation and set; window attainment retains all three hypotheses; weight_bound retains none of those three. No standing-variable hypothesis was silently lost. No binder repair was needed beyond the intentional weight_bound generalization.
- Dependency check, using the requested order and movable mode, exit 0. Exact output:

```text
depcheck: 14 roadmaps, 102 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line.

- `sources check packages/QuiverRepresentationsPartII/sources.toml`: exit 0, zero problems.
- Cross-roadmap resolver: no unresolved roadmap citations or names. Its library-discovery message says pinned Lake packages were not found by that command; the actual supplied pinned files were inspected directly and the acceptance file and signature probe elaborated there.
- `git diff --check`: exit 0.
- The package-content gate was run through a scratch conventional-layout wrapper pointing to the four real package files because the CLI expects TauCetiRoadmap/<Name>, while this board stores packages/<Name>. Every content rule was zero, including sources, prnum, sorry-examples, readme-ids-missing, imports and source-material. The complete wrapper command exited 1 solely for dirty=4 (its four staged symlinks). An initial direct board-root invocation exited 1 for the expected missing conventional-layout paths. These layout/git checks do not replace the worker’s post-repair gate; the board diff itself contains only the authorized package files. No commit was made to clear a cleanliness check.

## Maintainer consequences

Only README.md, Suggested.lean, sources.toml and this requested report changed. metadata.toml is unchanged. No supplier, merge-order file, tooling, issue or pull-request text changed; no commit or GitHub write was made.

The former auxiliary Lean declarations maximalPart_add_remainder, totalLength_rightTruncate, commuting_range_stable and chainWeight_peeling_empty were deleted, together with their example-only definitions. Their mathematical facts remain in the README. No pinned or supplier declaration was renamed. Future consumers should cite §§0.2–0.3, 2.1 and 5.2 for those facts, §1.2 for the finite-window equivalence, and §5.4 for the general representation comparison and dual reinsertion. No consumer needs a separately computed mwLabel.
