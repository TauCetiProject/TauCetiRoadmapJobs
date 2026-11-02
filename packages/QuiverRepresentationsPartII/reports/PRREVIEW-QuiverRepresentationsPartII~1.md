# Review of QuiverRepresentationsPartII (pull request #1486 at a3f4dcc)
**Verdict:** accepted

:robot: Independent AI review. No roadmap findings. This verdict means ready for a human's final approval; it is not an approval or merge. Source errata are recorded separately below.

## Verified sound

Reviewed all 35 numbered README subsections, their API bullets, Checks, examples, proof routes and dependencies, and all 40 declarations in `TauCetiRoadmap/QuiverRepresentationsPartII/Suggested.lean`. The worktree remained unchanged. The head is the requested `a3f4dcc0c45c527504e8a7c8a150b8487abae3ac`; the outside-folder diff is empty.

The supplied push gate passed every check, including the targeted build. Independent `lake env lean` elaboration passed with exactly 13 `sorry` warnings and no other warnings or errors. A scratch copy repeated `#check @name` for all 40 declarations: no missing binder or discrepancy with the README was found. In particular, reconstruction retains both the grade-dimension equality and the graded intertwining image equivalence; centralizer extension retains the opposite degree and commuting conditions; path attainment retains both window and cut bounds; peeling retains the nonempty cut.

Dependency check output:

```text
depcheck: 204 roadmaps, 1496 edges, 0 problem(s)
```

Every `*Needs:*` line and supplier citation was read. No UPWARD or CYCLE line, undeclared supplier gap, outside-folder edit, sorry-valued data, `set_option`, copied source passage, or computational-algorithm target was found. The recurrence in §5.4 is a mathematical identity for the existing geometric dual, with an explicit decrease in total length, rather than a second executable definition. The Part II boundary preserves the parent's path-algebra, Krull–Schmidt and Gabriel ownership.

### Seeded source sample

All 15 sampled targets were checked. AKY numbering is that of the explicitly cited arXiv v4; Z98 and MW use printed journal pages, and DIL uses lecture-page labels. The initial MW extraction was image-only; the sources service produced a fresh numbered OCR extraction, and the cited pages were also inspected directly in the scan. MW line numbers below refer to that fresh extraction of the same cached PDF. No source passages are reproduced.

| Sampled target | Locator and inspected evidence | Support and hypotheses |
| --- | --- | --- |
| 0.1 Integral intervals | AKY §2.1 p.7, lines 271–279; §2.3 p.8, lines 319–325; §3.1 p.15, lines 593–598 | Inclusive integer endpoints, positive length, singleton deletion and right shortening. Translation laws follow from these definitions. |
| 0.2 Multisegments and right truncation | AKY §2.3 p.8, lines 319–333; §3.1 p.15, lines 599–623 | Finite sums retain multiplicity; cardinality counts segments and length counts their points. Occurrence labels are a faithful finite presentation. |
| 1.1 Finite graded complex spaces | AKY §3.1 p.14, lines 548–553 | Finite-dimensional complex, integer-graded spaces. A finite homogeneous coordinate basis is the roadmap's adapter, not an additional hypothesis on the source's spaces. |
| 1.3 Standard interval pairs | AKY §3.1 p.15, lines 593–623 | Raising/lowering blocks, direct sums with multiplicity, and interval classification. The supplier classification is used, not re-planned. |
| 1.5 Shifts and image pairs | AKY §3.1 p.15, lines 588–591; Lemma 3.3 p.16, lines 651–654 | The VN image needs shift −1 for right truncation; the WL image does not. The native-range signatures preserve this distinction. |
| 2.1 Opposite-degree centralizers | AKY §3.1 pp.15–16, lines 624–633 | Degree −1 versus +1, commuting equation, affine vector-space fibres and restriction to actual images. |
| 2.2 Commuting block coordinates | MW II.1 p.148, lines 5627–5635; Lemma II.4 pp.160–161, lines 6109–6159 | Ordered source/target occurrences, independent scalars and the target-precedes-source criterion. Boundary equations give exactly s<t≤v+1≤u. Independently checked by 100 commutator systems. |
| 2.3 Surjective restriction to a VN image | AKY Lemma 3.2(1) p.16, lines 631–642; MW II.4 pp.160–161 | No genericity assumption. Image-block inequalities imply the original inequalities, so coefficient lifts exist. |
| 2.4 Surjective restriction to a WL image | AKY Lemma 3.2(2) p.16, lines 631–635 | Same conclusion in the other direction. Reflection reverses the degrees and endpoints before applying the VN calculation. |
| 2.8 Multisegment duality | AKY §3.1 p.16, lines 643–650; Z98 §2 p.410, lines 67–76; MW II.6 p.162, lines 6187–6214 | Generic opposite interval type on a fixed dimension vector. The WL identification uses transposition, not an unmentioned grade reflection. |
| 2.9 Duality is involutive | MW Corollary II.7 p.169, lines 6459–6461; Z98 §2 p.410, lines 73–76 | Corollary II.7 states involutivity and cites the geometric correspondence. Z81 itself remains uncertified as noted below. |
| 3.4 Ramified multisegments | AKY §2.3 p.8, lines 331–334; Lemma 3.4 p.17, lines 676–689; §3.2 p.18, line 746 | Dual–shorten–dual and the VN type on the actual WL image, with image-admissibility. Abstract integral combinatorics is separated from the source's unramified-character application. |
| 4.3 Finite chain decomposition | DIL Theorem 3 pp.6-1–6-2, lines 34–73; p.6-3, lines 104–122; p.6-4, lines 135–147 | Finite posets, chain partitions and antichains; split-graph paths give cardinality minus matching size. Incomparable copies supply multiplicities. Empty input is explicitly handled. |
| 4.5 Monotone grid paths | AKY Proposition 3.7 proof p.20, lines 816–845; p.21, lines 863–875 | r steps, start (a+1,a), finish (1,r), nonnegative multiplicity weights. The roadmap corrects the contradictory endpoint in the converse sentence. |
| 5.3 Ramified additivity for the canonical maximal split | AKY Proposition 2.7 p.10, lines 421–430; proof pp.21–22, lines 878–905 | One copy of each distinct maximal interval, not every maximal occurrence. Induction compares image types and graded dimensions before reconstruction. |

Additional source checks covered reconstruction (AKY lines 554–587), simultaneous images (AKY lines 734–746), ram/truncation commutation (AKY lines 757–763), maximal truncation (AKY line 766), the adjacent formula (AKY lines 771–875), and the rank-17 example (AKY lines 461–507). The stronger simultaneous image-admissibility of §3.3 is justified by repeated surjective restriction and finite intersections; it is not misrepresented as the exact wording of AKY's weaker simultaneous choice.

For §5.4, read MW I.7.2–I.7.3 p.147 (MW lines 5597–5601), II.1 pp.147–148 (MW line 5618), II.3 pp.150–151 and its endpoint-chain proof pp.151–160 (MW lines 5746–6105), II.4 pp.160–161 (MW lines 6109–6159), II.6 and Remark II.6.1 pp.162–163 (MW lines 6187–6254), II.10.2 pp.172–173 (MW lines 6596–6608), II.10.3 and II.11 pp.174–175 (MW lines 6648–6706), II.12 pp.175–176 (MW lines 6707–6744), and II.13 pp.176–177 (MW lines 6745–6779). These support positive arbitrary cuspidal rank over a non-archimedean local field, the product-order reversal in the rank-one proof, singleton extraction, matching exclusion, label independence and the final comparison. The common real twist is separately derived from the supplier's classification characterizations. Z98 §5 p.412, lines 140–155, supports the least-left-endpoint recurrence with exactly the stated minimum and termination conditions.

### Adversarial computations

The following table has 141 rows recording values, rather than only pass labels. Notation: `0` is the empty multisegment; `D`, `T`, `M`, `R` and `H` mean dual, right truncation, maximal part, remainder and ramification. `Cₐ` is the cut and `Eₐ` its maximum weighted inclusion chain. Intervals in a sum retain their multiplicities. Matrix entries are over ℂ, with column vectors. “Pass; retain” means the example agrees with the statement as written; “excluded” identifies a deliberately false instance rejected by its hypotheses.

As additional finite evidence, an exhaustive check used all 1,001 multisets of at most four intervals with endpoints in {−1,0,1,2}, and six cuts −2,…,3 each. It checked involutivity, grade dimensions, both maximal-truncation identities, ram/truncation commutation, canonical ramified additivity, matching plus width, cut width and peeling. Separate checks covered 1,000 reinsertion/injection cases, 100 exact rational commutator systems, and 1,835 path-cut instances comprising 5,337 paths in windows r=0,…,4 with at most three intervals. These are finite tests, not proofs of the general statements. Block linear systems and explicit matrix ranks were checked independently of the dual recurrence.

| Statement | Instances tried | Values computed on both sides / positive and negative controls | Result; change |
| --- | --- | --- | --- |
| Conventions: inclusive nonempty intervals | [0,2], [3,3], reversed (3,2) | Point counts 3,1; 2∈[0,2], 3∉[0,2]; reversed pair violates 3≤2 | Pass; retain |
| Conventions: operator directions | Grades (0,1), N=E₂₁, L=E₁₂ | Nv₀=v₁, Lv₁=v₀; N²=L²=0, N,L≠0 | Pass; retain |
| Conventions: trace sign | N=E₂₁, L=E₁₂, X=diag(1,0) | NL−LN=diag(−1,1); tr([X,N]L)=−1=tr(X[N,L]) | Pass; retain |
| Conventions: shift | [0,2], c=−1 | Image type [1,2], shifted image [0,1]=T[0,2]; opposite sign gives [2,3] | Pass; retain |
| Conventions: local-field norm and Z/L | q=2, trivial cuspidal, [0,1] | Norm of uniformizer 1/2; Z is determinant twist of exponent 1/2, L its Steinberg twist; singleton Z=L | Pass; retain |
| 0.1 length | [−1,1], [3,3] | e−b+1=3,1, equal to inclusive point counts | Pass; retain |
| 0.1 shift and membership | [2,4], c=−1 | [1,3], length 3=3; translated member 3 corresponds to 4 | Pass; retain |
| 0.1 shortening | [3,3], [3,4] | none, [3,3]; surviving lengths 0=1−1, 1=2−1 | Pass; retain |
| 0.1 shortening commutes with shift | [2,4], c=−1; [3,3] | Both orders [1,2]; both orders none for singleton | Pass; retain |
| 0.1 inclusion order | [1,1], [0,2], [3,3] | First⊆second true, reverse false; third⊆second false | Pass; retain |
| 0.2 multisegment occurrence carrier | 2[0,1], [0,0]+[2,2], 0 | Label counts 2,2,0; duplicate value has count 2, distinct values each count 1 | Pass; retain |
| 0.2 right truncation additivity | [0,0]+2[1,2] | T(sum)=2[1,1]=0+2T[1,2] | Pass; retain |
| 0.2 grade dimensions and total length | [0,2]+[1,1] | Grade dimensions (1,2,1); sum 4=3+1; occurrence count 2 | Pass; retain |
| 0.2 truncation decreases length | [0,0]+[1,3]; 0 | Lengths 4→2=4−2; empty 0→0=0−0 | Pass; retain |
| 0.2 translation and occurrence permutation | 2[2,4], c=−1; swap the two labels | Both give 2[1,3]; length 6=6, degree-1 count 2 equals original degree-2 count 2 | Pass; retain |
| 0.3 one-copy maximal part | 2[0,2]; [0,2]+[1,1] | M=[0,2] in both; R=[0,2] and [1,1] respectively; M+R=m | Pass; retain |
| 0.3 incomparable maxima and empty input | [0,0]+[2,2]; 0 | M=m,R=0; M0=R0=0; two different maxima are not inclusion-comparable | Pass; retain |
| 0.3 maximal containment | [0,2]+[1,1] | [1,1]⊆[0,2]; sole maximal interval contains both occurrences | Pass; retain |
| 1.1 coordinate carrier and grade | n=2, degrees (0,1) | Carrier dimension 2; grade dimensions 1,1; (1,0) lies in grade 0 but not 1 | Pass; retain |
| 1.1 constantSpace | n=2 at grade 3; n=0 | Dimensions at grades 3,4 are 2,0; zero presentation has all dimensions 0 | Pass; retain |
| 1.1 internal sum | Degrees (0,1), vector (1,1); n=0 | Unique components (1,0)+(0,1); zero case unique component family 0 | Pass; retain |
| 1.1 finite support and coordinate presentation | Degrees (3,3) | Nonzero-grade support {3}; grade dimension 2 equals two basis indices, not 1 | Pass; retain |
| 1.2 Direction and reversal | up, down | Steps 1,−1; twice reversal returns up; reflection [0,2]→[−2,0] | Pass; retain |
| 1.2 homogeneity and Pair | E₂₁ on grades (0,1); identity on grade 0 | E₂₁ has degree +1 and fails −1; identity fails +1; zero has both degrees | Pass; retain |
| 1.2 uniform nilpotence | [0,2], singleton, zero space | N³=0 while N²≠0; zero singleton killed by exponent 1; zero space likewise | Pass; retain |
| 1.2 graded pair isomorphism | Nonzero [0,1] arrow; scalar 2; shifted singleton | 2N=N2 and inverse scalar 1/2; zero arrow versus N has ranks 0≠1; singleton grade 0 versus 1 fails grading | Pass; retain |
| 1.2 isomorphism identity/inverse/composition | Scalars 1,2,1/2 on [0,1] | Intertwining values v₁,2v₁,v₁/2; composition 2·(1/2)=1 | Pass; retain |
| 1.2 finite-window equivalence | [0,0] enlarged to [−1,1]; [0,1] to [−1,2] | New vertex dimensions (0,1,0) and (0,1,1,0); boundary arrows 0; interior arrow 1 before/after | Pass; retain |
| 1.3 standardSpace and basis | [0,2], 2[0,1] | Total dimensions 3,4; duplicate grade-0 dimension 2; distinct occurrence vectors independent | Pass; retain |
| 1.3 standardVector junk indices | [0,1], degree 0 versus 2 | Valid vector v₀≠0; out-of-support vector 0; both satisfy their named grade condition | Pass; retain |
| 1.3 standardPair arrows | [0,1], both directions | Up v₀↦v₁↦0; down v₁↦v₀↦0; boundaries map to 0 | Pass; retain |
| 1.3 pairType | Singleton at 2; nonzero/zero arrows on (0,1) | [2,2]; [0,1]; [0,0]+[1,1], respectively | Pass; retain |
| 1.4 classification iff | Same (1,1) dimension vector, arrow 0 or 1 | Types differ and rank 0≠1 prevents isomorphism; nonzero scalars 1,2 give same type and a diagonal intertwiner | Pass; retain |
| 1.4 dimension formula | [0,2]+[1,1] | Interval counts at 0,1,2 are 1,2,1, equal to graded finranks | Pass; retain |
| 1.4 rank finite differences | [0,2]+[1,1] | R01=R12=R02=1; multiplicity [1,1]=2−1−1+1=1; [0,2]=1−0−0+0=1 | Pass; retain |
| 1.5 shift laws | [0,1], shifts −1 then 2 | Result [1,2]=shift by 1; shift by 0=[0,1]; empty remains empty | Pass; retain |
| 1.5 actual ImageModel | N on [0,2] | Image span(v₁,v₂), dimension 2; correct embedding has rank 2, zero embedding rank 0, span(v₀,v₁) misses v₂ | Pass; retain |
| 1.5 image intertwining | Same image basis v₁,v₂ | Restricted N(v₁)=v₂ and N(v₂)=0, equal after embedding | Pass; retain |
| 1.5 VN/WL image types | [0,2] | VN [1,2], then shift −1 gives [0,1]; WL directly [0,1] | Pass; retain |
| 1.5 iteratedImage | [0,2], k=0,1,2,3 | Ranges V,span(v₁,v₂),span(v₂),0; dimensions 3,2,1,0; one more image gives next range | Pass; retain |
| 1.5 zero and singleton images | Zero operator on a nonzero singleton; zero space | k=0 dimensions 1 and 0; all k≥1 dimensions 0 in both | Pass; retain |
| 1.6 reconstruction | [0,2]+[1,1] versus [0,2] | Both VN images [1,2], but degree-1 dimensions 2≠1; missing-dimension countermodel is excluded | Pass; retain |
| 1.6 reconstruction positive instance | Same type, scale N by 2 | Image equivalence scales (v₁,v₂) by (2,4); ambient diagonal (1,2,4) intertwines; dimensions (1,1,1) agree | Pass; retain |
| 2.1 centralizer submodule | [0,2]; [0,0]+[1,1]; 0 | Opposite-centralizer dimensions 0,1,0; full endomorphism centralizer would give a different answer | Pass; retain |
| 2.1 oppositePair preserves chosen operator | Adjacent singletons, coefficients 0,1,2 | v₁ maps to 0,v₀,2v₀ respectively; replacing all by zero fails at coefficient 1 | Pass; retain |
| 2.1 restriction and kernel | [0,1]+[1,2]; adjacent singletons | First restriction y₂↦λx₁ retains λ, rank 1→1; second restricts the entire scalar line to 0, kernel dimension 1 | Pass; retain |
| 2.1 conjugation naturality | Scale both x-vectors by 2 in [0,1]+[1,2] | Conjugated coefficient 2λ; restricting before/after gives y₂↦2λx₁ | Pass; retain |
| 2.2 Precedes iff block exists | Target/source [0,0]/[1,1], self [0,2], separated [0,0]/[2,2] | Block dimensions 1,0,0; inequalities true,false,false | Pass; retain |
| 2.2 independent block coordinates | Two targets at 0, three sources at 1 | Six independent entries; matrix [[8,16,32],[27,81,243]] has minor 216 and rank 2 | Pass; retain |
| 2.2 block extraction/reconstruction | [0,1]+[1,2], coefficient λ=2 | Values Ly₁=2x₀,Ly₂=2x₁; extraction returns 2; NLy₁=LNy₁=2x₁ | Pass; retain |
| 2.3 VN image restriction surjection | [0,1]+[1,2], image coefficient 2 | Source and image centralizers each dimension 1; λ=2 lifts to the same λ=2 | Pass; retain |
| 2.3 deleted singletons | [0,0]+[1,1] | Image zero, target centralizer dimension 0; source dimension 1 still surjects onto 0 | Pass; retain |
| 2.4 WL image restriction surjection | Reflect previous four-vector example | Degrees 0,−1,−1,−2; opposite map raises degree; same coefficient 2 lifts; reflected interval [1,2] becomes [−2,−1] | Pass; retain |
| 2.5 polynomial topology | D(X), D(0), D(3), unit disk | D(X)=ℂ\{0}, D(0)=∅, D(3)=ℂ; disk has infinite complement and is not a nonempty Zariski-open subset of ℂ | Pass; retain |
| 2.5 nonzero evaluation | p=X(X−1), x=0,1,2 | Values 0,0,2; constant 3 in zero variables evaluates to 3 | Pass; retain |
| 2.5 coordinate invariance | x↦2x, D(X) | Pullback D(2X)=ℂ\{0}=D(X); inverse x↦x/2 recovers original | Pass; retain |
| 2.5 irreducibility/finite intersection | D(X),D(X−1); dimension zero | Intersection ℂ\{0,1} contains 2; zero-dimensional whole space has exactly one point; empty family intersection is whole space | Pass; retain |
| 2.5 surjective pullback | Projection ℂ²→ℂ and D(X) | Inverse image x≠0 contains (1,0), excludes (0,1); zero map gives empty inverse image and fails surjectivity | Pass; retain |
| 2.5 affine-subspace intersection | D(X) against {0} and {1} | Intersections ∅ and {1}; only second satisfies nonemptiness and is dense in its one-point subspace | Pass; retain |
| 2.6 genericType and genericLocus | [0,2]; adjacent singletons; separated singletons | Types three singletons, [0,1], unchanged separated sum; loci point, ℂ×, point respectively | Pass; retain |
| 2.6 uniqueness of generic type | Adjacent singletons | Nonzero coefficient rank 1 on ℂ×; zero coefficient rank 0 only at {0}, which is not dense | Pass; retain |
| 2.6 generic conjugation/translation | Adjacent singletons, diag(2,1), shift −2 | λ=1↦2 stays generic; type [0,1] shifts to [−2,−1]; coefficient 0 remains nongeneric | Pass; retain |
| 2.7 incidence and tangent annihilator | Two one-dimensional adjacent grades | Equation nl=0; tangent to n≠0 orbit has dimension 1 and annihilator l=0; tangent at n=0 orbit is 0 and fibre ℂ | Pass; retain |
| 2.7 smooth locally closed irreducible orbits | Scalar up space ℂ | Orbits {0},ℂ×, dimensions 0,1; stabilizers G,diagonal Gₘ; orbit tangent ranks 0,1 | Pass; retain |
| 2.7 conormal bundle and closure dimension | Same scalar orbits | Base/fibre dimension sums 0+1=1 and 1+0=1=dim E₊; closures are the two axes | Pass; retain |
| 2.7 incidence components | nl=0; zero grading | Two distinct one-dimensional axis components; zero grading one point of dimension 0 | Pass; retain |
| 2.7 opposite projection and generic fibre | Up axis versus down axis | Projections to down space {0},ℂ; generic fibres meet opposite orbits in {0},ℂ×, each nonempty and dense in its fibre | Pass; retain |
| 2.7 reduced/test-scheme convention | n=l=ε in ℂ[ε]/(ε²) | nl=0, n≠0,l≠0; map does not factor through either axis, despite topological component cover | Pass; retain |
| 2.7 conormal symmetry | [0,2]; adjacent singletons | Generic opposite types three singletons and [0,1]; opposite-generic return types [0,2] and adjacent singleton sum | Pass; retain |
| 2.8 dual and nonadditivity | [0,2]; [0,0]+[1,1]; [0,0]+[2,2] | D values three singletons; [0,1]; unchanged separated sum; D(sum)≠sum of singleton duals in adjacent case | Pass; retain |
| 2.8 WL identification by transpose | Up pair [0,1]+[1,2] | L=N-opposite blocks transposes to degree +1 on dual grades; interval labels remain [0,1]+[1,2], without endpoint negation | Pass; retain |
| 2.8 dimension and translation compatibility | 2[0,0]+3[1,1]; adjacent sum shifted −2 | Dual 2[0,1]+[1,1] has dimensions (2,3), length 5=5; both shift orders give [−2,−1] | Pass; retain |
| 2.9 involution | 0; [0,2]; 2[0,0]+3[1,1] | D² results 0, [0,2], original five occurrences; all 1,001 finite tests return input | Pass; retain |
| 3.1 Admissible | Adjacent zero VN with λ=0 or 1 | WL types two singletons versus [0,1]; only λ=1 has type Dm | Pass; retain |
| 3.1 actual opposite image | [0,1]+[1,2], λ=1 | Im L=span(x₀,x₁), N-type [0,1]; span(x₁,y₂) has equal dimension 2 but is the wrong range | Pass; retain |
| 3.1 imageAdmissibleLocus | Same triple; single VN chain | Image WL type [0,0]+[1,1]=D[0,1]; chain has L=0 and zero image, giving 0=D0 | Pass; retain |
| 3.1 conjugation and shifts | λ=1→2; all grades shifted −1 | Actual image subspace unchanged; image N-type [0,1]→[−1,0]; both predicates stay true | Pass; retain |
| 3.2 image genericity and minor charts | Adjacent singleton pair | Open locus λ≠0; image basis λv₀ uses denominator λ; λ=0 is excluded from chart, not divided by | Pass; retain |
| 3.3 simultaneousRestrictions | [0,2], L=0, k=0,1,2,3 | Image dimensions 3,2,1,0; all induced L=0 and image-admissible; k=0 zero embedding wrongly has dimension 0≠3 | Pass; retain |
| 3.3 same original L at every image | [0,1]+[1,2], λ=2 | On Im N, Ly₂=2x₁; substituting zero gives 0≠2x₁; next opposite image span(x₁) has both types [1,1] | Pass; retain |
| 3.4 H definition and dual formula | Adjacent singletons | Dm=[0,1], TDm=[0,0], Hm=[0,0]; D(Hm)=[0,0]=TDm | Pass; retain |
| 3.4 actual image realization and length | [0,1]+[1,2] | Hm=[0,1], represented by span(x₀,x₁); length 2≤4 | Pass; retain |
| 3.4 chain, separated and empty cases | [0,2]; [0,0]+[2,2]; 0 | H values 0,0,0; lengths 0≤3,0≤2,0≤0 | Pass; retain |
| 3.4 translation compatibility | Adjacent singleton sum, shift −2 | Both orders give [−2,−2]; image grade moves 0→−2 | Pass; retain |
| 3.5 HT=TH | [0,1]+[1,2]; adjacent singleton sum | Both sides [0,0] in first case, 0 in second; Im LN=Im NL=span(x₁), then shift −1 | Pass; retain |
| 4.1 cut retains either grade | Adjacent singletons, a=0 | Cut size 2, although neither interval contains both grades | Pass; retain |
| 4.1 IsInclusionChain | Empty; {[0,2],[1,1]}; adjacent singleton set | Truth values true,true,false | Pass; retain |
| 4.1 chainWeight and full multiplicities | 2[0,1]+[1,1], a=0 | Maximum 3=2+1; support size 2 would undercount | Pass; retain |
| 4.1 attainment, bound and zero iff | Adjacent singletons at a=0 and a=3 | E₀=1≤2, attained by either singleton; E₃=0=cut size, attained by empty chain | Pass; retain |
| 4.1 adjacentDualCount | Adjacent singleton sum; [0,2], a=0 | Dual crossing counts 1 and 0; merely meeting counts 1 and 2 respectively | Pass; retain |
| 4.2 strict endpoint relation | [0,0]<[1,1]<[2,2]; duplicate [0,1] | Transitive edge 0→2 true; self/duplicate edges false; equal-left [0,0],[0,1] also incomparable | Pass; retain |
| 4.2 endpoint antichain and width | 2[0,1]; adjacent singletons; nested [0,2]+[1,1] | Widths 2,1,2; inclusion-chain weights on relevant cuts agree | Pass; retain |
| 4.2 matching predicate | Three successive singletons | {(0,1),(1,2)} valid, size 2; {(0,1),(0,2)} and {(0,2),(1,2)} invalid by repeated projections | Pass; retain |
| 4.2 matching maximum | Duplicate pair; adjacent pair; three ordered singletons | Matching numbers 0,1,2, all ≤ respective cardinalities 2,2,3 | Pass; retain |
| 4.2 maximum universal bounds/permutation | Three ordered singletons, reorder labels | Maximum 2 unchanged; every matching ≤2, and bound 1 fails on the two-edge matching | Pass; retain |
| 4.3 finite_dilworth | Empty; three-element total order; three-element antichain | Antichain/partition sizes 0=0,1=1,3=3; respective unions ∅,all three,all three | Pass; retain |
| 4.3 weak duality for covers | Three-element total order, A={1} | Each chain meets A in 0 or 1 point; one chain covers all and gives 1≤1 | Pass; retain |
| 4.3 matching-chain correspondence | Three ordered singletons | Two-edge matching yields one path; 3−2=1 chain; deleting an edge yields 3−1=2 chains | Pass; retain |
| 4.3 weighted_dilworth | 2[0,1]; adjacent pair; three ordered singletons; empty | Matching+width values 0+2=2,1+1=2,2+1=3,0+0=0 | Pass; retain |
| 4.3 cut_antichain_width | 2[0,1]+[1,1]; adjacent singleton pair | Width=E₀=3 and 1 respectively; duplicate occurrences remain distinct | Pass; retain |
| 4.4 endpoint edges versus allowed entries | Target [0,0], source [1,1]; separated [0,0],[2,2] | At cut 0 first pair supplies one entry; separated second interval is absent from cut, so no false overlap edge | Pass; retain |
| 4.4 generic rank equals matching | 2[0,0]+3[1,1] | Matrix [[8,16,32],[27,81,243]] has rank 2; matching 2, width 3, cut cardinality 5 | Pass; retain |
| 4.4 rank-zero controls | [0,2]; [0,2]+[1,1] | No allowed opposite coefficients; all adjacent ranks 0=matching numbers | Pass; retain |
| 4.5 GridPath endpoints and unit steps | r=3,a=1 | (2,1),(1,1),(1,2),(1,3); differences (−1,0),(0,1),(0,1), finish (1,3); start (1,1) is rejected | Pass; retain |
| 4.5 intervalWeight | m=2[1,3], vertices (2,1),(1,2),(1,3) | Weights 0,0,2: invalid, absent, multiplicity two | Pass; retain |
| 4.5 GridPath.weight | Same path and m | Sum 0+0+0+2=2; empty m gives 0 | Pass; retain |
| 4.5 InWindow | [1,3], [0,1], [2,4], empty, r=3 | Truth values true,false,false,true; empty also true for r=0 while [1,1] is false | Pass; retain |
| 4.5 monotonicity/distinct nested vertices | r=3,a=1 path above | Left count 1=a, up count 2=r−a; valid intervals [1,1]⊂[1,2]⊂[1,3]; exactly one invalid initial vertex | Pass; retain |
| 4.5 weight_bound without window | m=[0,1],r=3,a=1 | Every path weight 0≤E₁=1; no window needed for upper bound | Pass; retain |
| 4.6 grid_path_chain_max | m=2[1,3],r=3,a=1 | Maximum path weight 2=E₁; 5,337 enumerated paths respect the bound and attain the maximum per valid window/cut | Pass; retain |
| 4.6 boundary and impossible paths | (r,a)=(2,0),(2,2),(0,0),(2,3) | Boundary witness weights 1=E; zero window 0=E; a=3 needs 3 left steps but only 2 total, so no path | Pass; retain |
| 4.6 monotone minimum/staircase | r=2,a=1,m=[1,1]+[2,2] | Two monotone choices contribute 1,1; cut size 2 minus maximum boundary weight 1 gives 1 | Pass; retain |
| 4.7 adjacent formula | Adjacent pair; 2[0,1]+[1,1]; nested [0,2]+[1,1], a=0 | Crossing+E=1+1=2; 0+3=3; 0+2=2 | Pass; retain |
| 4.7 boundary/empty cuts | [1,1], a=0,1,3; empty | Values 0+1=1,0+1=1,0+0=0; empty likewise 0+0=0 | Pass; retain |
| 5.1 truncate_maximalPart | [0,0]+2[1,2]+[2,2] | M(Tm)=[1,1]=T(Mm); deleted singletons do not create extra maxima | Pass; retain |
| 5.1 truncate_remainder | Same m | R(Tm)=[1,1]=T(Rm); one of the two copies survives in each part | Pass; retain |
| 5.2 chainWeight_peeling | 2[0,1]+[1,1], a=0 | E(m)=3=E(Rm)+1=2+1; E(Mm)=1 | Pass; retain |
| 5.2 nonempty-cut guard | Empty m; adjacent pair at a=3 | Actual 0,0,0; unguarded equation 0=0+1 would fail, and hypothesis excludes it | Pass; retain |
| 5.3 ramified maximal additivity | [0,0]+2[1,2]+[2,2] | Hm=[0,0]=H(Mm)+H(Rm)=[0,0]+0 | Pass; retain |
| 5.3 repeated maximal interval | 2[0,2] | M=R=[0,2]; Hm=0=0+0 | Pass; retain |
| 5.3 both summands nonzero | 2[0,1]+[1,2]+[2,2] | Hm=[0,1]+[1,1]; H(Mm)=[0,1], H(Rm)=[1,1] | Pass; retain |
| 5.3 arbitrary-additivity negative control | [0,0]+[1,1] | H(sum)=[0,0] while H[0,0]+H[1,1]=0 | Pass; retain |
| 5.4 integral adapter and rank | GL₂ cuspidal, [0,1],c=0 | Twists ρ,ρν; total rank 2·2=4 on both sides; singleton rank 2; empty rank 0 | Pass; retain |
| 5.4 common twist | χ=norm²,q=2 | χ(ϖ) has absolute value 1/4; c=−log(1/4)/log2=2; χ₀=1; denominator log2≠0 | Pass; retain |
| 5.4 representation comparison | Trivial line, adjacent singleton sum | Dm=[0,1]; L(m)=Z([0,1]) is determinant twist 1/2; reversing Z/L would select Steinberg | Pass; retain |
| 5.4 equal-characteristic control | F=𝔽₂((t)), trivial line | q=2, norm(t)=1/2; same GL₂ normalized character/Steinberg alternatives as in characteristic zero | Pass; retain |
| 5.4 geometric recurrence | m=[0,2]; adjacent singleton sum | First has p=1,m′=[1,2], Dm=Dm′+[0,0]; second p=2,m′=0, Dm=[0,1]; length drops 1 and 2 | Pass; retain |
| 5.4 recurrence multiplicities | 2[0,1] | First deletion leaves [0,1]+[1,1]; final Dm=2[0,0]+2[1,1], dimensions (2,2) preserved | Pass; retain |
| 5.4 MW order | [2,3], [1,3], [0,2], empty | Decreasing left/right lexicographic order gives [2,3]>[1,3]>[0,2]>empty | Pass; retain |
| 5.4 singleton extraction | [0,0]+[1,1]; 2[0,0] | Greatest left endpoints 1,0; extracted residuals [0,0],[0,0]; ranks decrease by d, not by full segment length | Pass; retain |
| 5.4 involution on embeddings | Trivial line, α=ν, residual trivial GL₁ | Product ν×1 is reversed to 1×ν; Steinberg submodule changes to determinant-character submodule under τ | Pass; retain |
| 5.4 right-singleton candidates/exclusion | q=[0,2]+[1,3]+[2,2], k=3, A=[2,2] | B has one member [0,2], matched to [1,3]≤[2,3]; extension of B to [0,3] excluded | Pass; retain |
| 5.4 complete matching | q=2[0,0]+2[1,1], k=1 | Two domain labels inject into two targets; only singleton-addition label 2[0,0]+3[1,1] remains | Pass; retain |
| 5.4 complete-matching negative control | q=2[0,0]+[1,1], k=1 | Domain size 2>target size 1; no saturation; extension label [0,0]+[0,1]+[1,1] is not excluded | Pass; retain |
| 5.4 dual reinsertion, actual anchor | m=2[0,1]+[1,2]+[2,2] | Dm′=[0,0]+[0,1]+[1,1]+[1,2]; extend A=[1,1]; B=[0,1] matches C=[1,2]=extended A; Dm=[0,0]+[0,1]+2[1,2] | Pass; retain |
| 5.4 singleton-addition reinsertion | m=[0,1]+[1,1] | Dm′=[0,0]+[1,1]; Dm=[0,0]+2[1,1]; complete match [0,0]→[1,1] excludes the smaller extension candidate | Pass; retain |
| 5.4 cuspidal-line independence | d=1 versus d=2, m=[0,1] | Same dual label [0,0]+[1,1]; group ranks 2 versus 4, so comparison is of label maps, not representations on different groups | Pass; retain |
| 5.5 newformExample carrier | Seven displayed intervals | Cardinality 7, lengths 2+5+2+4+1+2+1=17; degree-3 count 4 | Pass; retain |
| 5.5 maximal part and remainder | Same example | Maximal part [3,7]+[2,5]+[1,2]+[0,0], remainder [5,6]+[3,4]+[3,3]; union with multiplicity recovers all 7 | Pass; retain |
| 5.5 exactly one shortening | D(maximal part)=[7,7]+[5,6]+[4,5]+[2,4]+[0,3] | T gives [5,5]+[4,4]+[2,3]+[0,2], length 7; a second shortening gives length 3 and fails | Pass; retain |
| 5.5 newform ramification identity | Seven-interval example | Hm=[4,4]+[2,5]+[1,2]+[0,0]; lengths 1+4+2+1=8, degree-3 count 1; H(Mm) plus H(Rm) gives exactly these four terms | Pass; retain |

The field in operator geometry is ℂ, so zero rings, finite coefficient fields and characteristic-p linear algebra are outside the quantified domain. Equal-characteristic local fields and residue cardinality 2 are in the representation domain and were checked above. There are no non-abelian-group identities, DVR division formulas or arbitrary-topology substitutes hidden in the Lean signatures. Total-function issues occur at optional shortening, empty maxima, invalid grid vertices and out-of-support standard vectors; their computed controls are included.

### Native APIs and duplication audit

The manifest pins inspected were Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Searches covered interval endpoints/order, grading/homogeneous maps, actual ranges, orbit geometry, multisegment duality, finite chain partitions and matching. The following are native declarations opened, with paths within the pinned sources.

| Pinned file and line | Declaration or content checked | Consequence |
| --- | --- | --- |
| `Mathlib/Order/Interval/Basic.lean:35`, 77, 126, 134, 158 | `NonemptyInterval`, order, membership, `pure`, `map` | Nonempty endpoints are native; order reverses the first endpoint. No duplicate interval structure. |
| `Mathlib/Algebra/DirectSum/Basic.lean:440` | `DirectSum.IsInternal` | Bijectivity of the canonical sum map, not only pairwise disjointness. |
| `Mathlib/Algebra/Module/Submodule/Range.lean:57`, 67, 155 | `LinearMap.range`, `mem_range`, `rangeRestrict` | Actual image submodules, used directly in the signatures. |
| `Mathlib/Algebra/Module/Submodule/Map.lean:52` | `Submodule.map` | Actual image grading uses submodule images. |
| `Mathlib/LinearAlgebra/Dimension/Free.lean:334` | `Module.finBasis` | Requires freeness and finite generation, satisfied over finite-dimensional complex spaces. |
| `Mathlib/LinearAlgebra/Basis/VectorSpace.lean:152`, 156 | `Module.Basis.ofVectorSpace`, `Module.Free.of_divisionRing` | Division-ring hypotheses retained; does not classify graded operators. |
| `Mathlib/LinearAlgebra/Matrix/Rank.lean:132` | `Matrix.rank` | Finrank of the matrix linear map's range, matching adjacent rank. |
| `Mathlib/Algebra/MvPolynomial/Eval.lean:256` | `MvPolynomial.eval` | Evaluation ring homomorphism used in nonvanishing sets. |
| `Mathlib/Algebra/MvPolynomial/Funext.lean:82` | Polynomial function extensionality | Infinite integral-domain hypotheses hold over ℂ. |
| `Mathlib/Topology/Order.lean:70` | `TopologicalSpace.generateFrom` | Actual generating family, not an arbitrary topology parameter. |
| `Mathlib/Order/Preorder/Chain.lean:51`; `Mathlib/Order/Antichain.lean:42` | `IsChain`, `IsAntichain` | Pairwise conditions on distinct elements; multiplicities require occurrence labels. |
| `Mathlib/Topology/Irreducible.lean:48` | `IsIrreducible` | Includes nonemptiness; the n=0 coordinate space is a singleton. |
| `Mathlib/AlgebraicGeometry/AffineSpace.lean:417`, 424 | Affine-space geometric irreducibility and irreducibility | Scheme carrier, not the retained topology on complex coordinate functions. |
| `TauCeti/LinearAlgebra/Graded/LinearMap.lean:56`, 61, 77–146 | `TauCeti.LinearMap.IsHomogeneous`, characterization and zero/add/id/comp/smul, homogeneous submodule | Specifies where grades map; does not assert an internal grading. |
| `TauCeti/LinearAlgebra/End/LocallyNilpotent.lean:104` | Local nilpotence for weighted finitely supported maps | Pointwise exponent under a well-founded weight condition, not uniform pair nilpotence. |
| `TauCeti/Topology/Algebra/MulAction/Orbit.lean:40`, 87 | Orbit topology and locally closed constructible orbits | Continuous constant multiplication; latter result also needs Noetherianity and constructibility. No orbit-dimension/conormal theorem. |
| `TauCeti/RepresentationTheory/Quiver/Representation/Basic.lean:53` | `QuiverRep` | Native functor-category carrier. |
| `TauCeti/RepresentationTheory/Quiver/Representation/AsModule.lean:574` | `quiverRepEquivalence` | Finite-vertex quiver/path-algebra equivalence over a field, imported here. |
| `TauCeti/RepresentationTheory/Quiver/Representation/KrullSchmidt.lean:85`, 110, 148 | Existence, bijection uniqueness, multiplicity | Finite vertices and pointwise finite dimension match the finite-window adapter. |
| `TauCeti/Algebra/AlgebraicGroup/HopfIdeal/Cotangent.lean:83` | `conormalSubspace` | At the identity of a closed subgroup; does not provide an orbit-conormal variety. |

Ownership was searched in main, the board packages, and indexed open roadmap heads using `roadmaps grep` and `roadmaps show`. No second owner of the retained multisegment duality, adjacent occurrence construction or orbit-conormal construction was found. No other roadmap declaration with this namespace was found. Foundational objects already owned elsewhere are imports. Supplier citations were resolved against their actual text:

| Supplier | Resolved location and contract | Ownership/order result |
| --- | --- | --- |
| QuiverRepresentations, main | `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:230`, 250, 349: Layers 1, 2, 5; its `Suggested.lean:128`, 135: `exists_indecomposable_decomposition`, `krullSchmidt_unique` | Supplies quiver/path-algebra conventions, finite decomposition and positive-root classification. Part II owns the window adapter and new generic-duality/image theory. |
| AlgebraicVectorBundles, main | `TauCetiRoadmap/AlgebraicVectorBundles/README.md:228`, 340: Layers 0B and 2B; its `Suggested.lean:167`, 732, 750, 795, 802, 809: rank, total-space scheme, point/section correspondences and naturality | Supplies locally free rank and total-space infrastructure; this roadmap owns its specific centralizer bundle and coordinate comparison. |
| SmoothRepresentationsOfLocalGroups, new roadmap at indexed open head | `TauCetiRoadmap/SmoothRepresentationsOfLocalGroups/README.md:4349`, 4751, 4764: segment representations, highest-derivative adapter, Z-to-L involution | Supplies normalized induction and Z/L classification, including positive cuspidal rank, real endpoints and GL₀. Earlier in order (21 versus 246). |
| GraphConnectivityAndFlows, main (ownership check) | `TauCetiRoadmap/GraphConnectivityAndFlows/README.md:1117` | Explicitly excludes Dilworth, so the general finite-poset theorem belongs here. |

The finite-window adapter preserves the supplier's left-module convention. VN operators raise degree and WL operators lower it. No citation of a revision-only open pull request replaces a main supplier. The resolver's one lead, `GridPath.weight_bound` at README line 688, is this roadmap's own declared theorem; its elaborated signature was checked. It is not a missing pinned-library declaration. No upward ownership move is required.

### Headline coverage and padding

The README's headline goals are internal grading and uniform nilpotence; finite-window interval classification; image reconstruction; opposite-centralizer extension; affine-coordinate irreducibility and generic strata; geometric duality and involutivity; admissible-image genericity; ramification/truncation commutation; adjacent generic ranks; finite/weighted Dilworth, cut width and path attainment; maximal-truncation and peeling identities; canonical ramified-split additivity; and comparison with the representation-theoretic involution.

The 13 Lean theorems are `Space.internal`, `Pair.nilpotent`, `reconstruction_from_image`, `centralizer_image_extension`, `polynomial_irreducible`, `finite_dilworth`, `weighted_dilworth`, `cut_antichain_width`, `GridPath.weight_bound`, `grid_path_chain_max`, `truncate_maximalPart`, `truncate_remainder`, and `chainWeight_peeling`. The direction parameter covers both extension cases. The module docstring identifies the missing oriented-window/standard-pair, generic-type/conormal, actual-image-pair and smooth-representation carriers for the other headlines. Those need substantial constructions rather than a few native predicate definitions; no weaker substitute is inserted.

All 13 `sorry` proofs were tested on a scratch copy with one-tactic alternatives `simp`, `rfl`, and `infer_instance`; all remained unproved. Object searches and the native declarations above found no single existing lemma of the same type. Local nilpotence does not immediately prove the uniform theorem, scheme irreducibility uses a different carrier, and interval/order primitives do not give the multiplicity-sensitive maxima identities. No retained theorem merely computes a Check or boundary case. All 27 other declarations have real bodies and serve these signatures. Imports, docstrings, namespace, layer order and README/Lean names satisfy the requested form.

## Not verifiable

- Z81, *p-adic analog of the Kazhdan–Lusztig hypothesis*, §4.3 and Proposition 4.4, original pp.20–21, is settled as uncertified. Its text was unavailable in the supplied legal cache, and the package manifest records that status. It was not requested again. The roadmap supplies a local conormal proof route; MW Corollary II.7 and Z98 §2 independently support involutivity. This review does not certify Z81's inaccessible text.
- No other cited work remains unreadable. MW was checked through its legally cached scan and sources-service OCR. General theorems remain roadmap targets: elaboration and finite tests certify signatures and displayed instances, not completed proofs.

## Source issues

- **Misprint** in AKY at §2.3, printed p.8 (AKY line 320): the source says the cuspidal rank may be zero; it should be positive, as in §2.1; affects nothing.
- **Misprint** in AKY at §2.5, printed p.12 (AKY lines 490–491): the source says to shorten again after reusing names for already shortened survivors; it should be [5,5]+[4,4]+[2,3]+[0,2], with exactly one shortening; affects a stated result.
- **Misprint** in AKY at Proposition 3.7 proof, printed p.20 (AKY line 838): the source says the converse path terminates at (a,1); it should be (1,r), consistent with the path definition and examples; affects the proof.
- **Misprint** in MW at Remark II.10.3, printed p.174 (MW line 6655): the source says the excluded submodules belong to α×V′; it should be V′×α, as in Lemma II.10.2 and the proof; affects a stated result.
- **Gap** in MW at Theorem II.13 proof, printed p.176 (MW lines 6762–6767): the source says actual-anchor exclusion gives the order bound after dual reinsertion; it should also justify singleton-addition using complete matching, since there is no actual anchor; affects the proof.
- **Misprint** in DIL at Theorem 5 proof, printed p.6-4 (DIL line 140): the source says to apply Dilworth to the chain-copy expansion; it should apply Theorem 2, the height/antichain-partition theorem; affects the proof.
- **Misprint** in DIL at the antichain-polytope description, printed p.6-5 (DIL line 170): the source says its sum constraints range over antichains; it should range over chains; affects a stated result.

The roadmap already corrects the AKY endpoint/shortening slips and MW product direction. Its §5.4 separately states complete-matching exclusion and singleton-addition reinsertion. For m=[0,1]+[1,1], the residual dual is [0,0]+[1,1]; the match [0,0]→[1,1] excludes extension to [0,1]+[1,1], leaving [0,0]+2[1,1]. The source-proof gap is therefore not a missing branch here.
