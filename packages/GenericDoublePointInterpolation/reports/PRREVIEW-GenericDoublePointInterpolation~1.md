# Review of GenericDoublePointInterpolation (pull request #1472 at 5cd46bd)
**Verdict:** accepted

## R01 (P3) — Correct the restriction-rank source anchors

**Location:** `TauCetiRoadmap/GenericDoublePointInterpolation/README.md:693`, `:701`, `:777`. The citations include “BO line 602” and “BO line 604, §1, p.1”.

**Claim:** These anchors locate the definition of restriction rank, the disjoint-union identity, and inheritance of independence.

**Witness:** BO line 602 is introductory commentary; BO line 646 cuts a scheme by a section. BO line 604 is in §6, printed p.12, not §1, p.1.

**Repair:** Cite BO lines 604–620, §6, p.12 for restriction rank; BO lines 654–670, proof of Lemma 6.1, p.13 for the disjoint-union calculation; and BO lines 620–623, §6, p.12 for inheritance. Identify the arbitrary-subsystem formulation as the linear-algebra reformulation. The mathematics stays unchanged: constants on two distinct reduced points give disjoint-union ranks 1=1+0; linear polynomials give 2=1+1. These examples satisfy the corrected statements and locate the actual argument. This is a locator correction, not a defect in the rank identities.

## Verified sound

AI-assisted independent review of the entire specified folder at `5cd46bd05165c11e25d6097d3309346a80d53402`. There are no P1 or P2 findings. The one P3 citation correction does not prevent human final approval. No pull-request file was changed and no remote write was performed.

The worker's gate passed every check, including the targeted build, metadata, imports, text scanners, dependency direction, and outside-folder changes. I verified the head and empty outside-folder diff, and independently ran `lake env lean` on the original `Suggested.lean`: exit 0, exactly 17 admission warnings, no other warnings or errors. The final worktree remained clean. Its single import is `Mathlib`; no Tau Ceti object-file build was necessary.

The required dependency command returned:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

No UPWARD, CYCLE, or moved line occurred. The citation resolver found no unresolved roadmap citation or own Lean name against main `fa41b37` and the supplied index. Its external-library check was unavailable; I checked those claims directly at the pins instead.

I read the repository README and CONTRIBUTING rules, and compared the shapes of `Completed/EffectiveBounds/README.md`, `TauCetiRoadmap/AlgebraicVectorBundles/README.md`, and `TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md`. The reviewed README has the requested summary, ownership, conventions, supplier contracts, six ordered layers, examples and dependencies in every layer, consumers and references. All 24 explicit API blocks have three bullets and their associated definitions have at least three Checks. The finite matrix witnesses are mathematical existence/rank assertions, not an algorithmic deliverable. No route-specific restriction replaces the general characteristic-zero theorem.

**Source sample.** All 15 seeded subsections were read at their cited source text. No README locator is marked unverified. BO is arXiv version 2, COU is the published Annals article, and VAK is the 18 November 2017 draft. ST was fetched through the sources service from the Stacks Project; its stable tag is 00NX. The sample distinguishes a source's setting from an algebraic reformulation proved in the roadmap.

| Sampled subsection | Text and precise locator examined | Support and limits |
| --- | --- | --- |
| §0.2 Homogeneous forms and sections | COU lines 179–195, §3, p.491; one-block supplier §2.7 | COU identifies complex bounded forms, homogenization and sections. The arbitrary-ring inverse formulas come from the named supplier, not from an unsupported extrapolation of dimensions. |
| §0.3 Real coefficient metric | COU lines 255–268, §3, p.493 | Monomial orthonormality and the integer coefficient lattice; the roadmap uses the full coordinate lattice, not the smaller relation lattice. |
| §1.3 Values and derivatives | COU lines 191–204, §3, p.491 | Actual value/partial rows. The kernel-projection equivalence is elementary linear algebra and retains the actual value kernel. |
| §1.4 Matrix/projective comparison | COU lines 182–204, p.491; BO lines 127–138, Proposition 2.1, p.3 | Chart trivialization and square-zero target are needed. Euler gives the displayed block transformation only when d is invertible; the roadmap enforces this. |
| §2.0 Finite locally free sections and relative smoothness | ST lines 8610–8622, Lemma 10.78.2/00NX, printed pp.184–185; VAK lines 28564–28578, Theorem 25.3.1, p.681; VAK lines 14724–14744, Definition 12.6.2, p.355 | ST supplies finite-projective equivalences, not the whole pushforward statement. Restriction of scalars and fibrewise rank give the additional result. VAK supplies source-generic smoothness; the invertible Jacobian block supplies tangent surjectivity after geometric base change. |
| §3.3 Codimension-three cubics | BO lines 486–592, Propositions 5.2–5.4 and proof of Theorem 5.1, pp.9–12 | Subspace dimensions, support counts, n=4 exclusion and the one-space remainder agree. Independent finite-rank calculations are below. |
| §3.4 Quartic starting dimension | BO lines 972–977, §6, p.19 | 21 supports in P⁵, rank 126; a base separate from the defective P⁴ quartic predecessor. |
| §4.3 Moving finite-flat family | BO lines 866–895, Theorem 6.4, pp.17–18; VAK lines 23885–23947, §21.2.20/Theorem 21.2.24, pp.572–573 | Moving supports and the local direction algebra agree. The stronger compatible mixed-stratum assertion is explicitly an additional owned target; see Not verifiable and Source issues. |
| §4.4 Both critical counts | BO lines 879–958, Theorem 6.4, pp.17–19 | Underfilled contradiction, selected ν-point trace, and restricted indices in G agree. The overfilled conclusion is injectivity, not surjectivity. |
| §4.6 Univariate base | BO lines 39–40, p.1, and 984–989, §7.1, p.19 | Arbitrary distinct supports; the monic-division/CRT proof extends to every field without factorial division. |
| §4.7 Quartics and exceptions | BO lines 960–977, §6, p.19 | Separate r=5 base, r=7 ordinary branch, and r≥10 quadratic-kernel vanishing; both critical counts are retained. |
| §4.8 Projective endpoint | BO lines 22–40, Theorem 1.1, p.1, and 960–978, p.19 | Exact four exceptional triples and the quadric interval. Rational-minor descent justifies the affine characteristic-zero field statements; degree zero uses values rather than homogeneous partials. |
| §5.1 Affine chart/universal matrix | COU lines 179–204 and 227–243, §3, pp.491–492 | Ordinary coefficient monomials and all value/derivative rows; independent integer coordinate variables are the roadmap's universal version. |
| §5.2 Selected determinant/principal open | COU lines 242–248, §3, p.492 | Polynomial minor and coordinate degree bound. Native spectrum/kernel formulation is separately supplied by the pinned API. |
| §5.3 Integer boxes | COU lines 242–248, p.492; pinned product-grid theorem | Grid has B+1 values for degree ≤B. The arbitrary polynomial parametrization version correctly requires nonzero pullback and individual degree bounds. |
| Other claims within the sampled subsections | BO lines 245–277, Theorem 2.4, p.6; BO lines 765–804, Lemma 6.3/Theorem 6.4, pp.15–16 | Plane numerical reduction and all three integer division inequalities checked, including negative u below the critical range. |

**Adversarial computations.** The following table has one row for each of the README's 89 named mathematical targets, followed by explicit convention/API checks. Numbers are independently computed examples, not claims that a numerical test proves an unbounded theorem. Matrix ranks marked mod 101 were computed from integer points/frames: nonzero minors give characteristic-zero lower bounds, and source/target dimensions give the stated upper bounds. I constructed fresh witnesses, rather than reusing the earlier repair report's ranks. There were 17 ordinary full-rank matrices, seven subspace bases, five exceptional-rank controls, the collinear control, 156 Hermite cases over F₂/F₃/F₅, and 2,096 Horace arithmetic cases. The tested exception schedule covered r=3,…,30 and d=5,…,20. There were no arithmetic or schedule failures.

| Statement | Instances tried | Values on both sides | Result / change |
| --- | --- | --- | --- |
| Binomial count of bounded monomials | (r,d)=(0,2),(2,0),(2,2) | 1=choose(2,2); 1=choose(2,0); 6=choose(4,2), versus coordinatewise count 9 | Values agree; no change. |
| Dimension of bounded polynomials | Same field-valued spaces | basis sizes 1,1,6 = N(r,d); zero polynomial totalDegree=0 | Values agree; no change. |
| Coefficient coordinates | 2+3x² in degree 3; constants | (2,0,3,0) reconstructs 2+3x²; C7 ↔ (7); 2+x and 2−x have different tuples | Values agree; no change. |
| Fixed-degree homogenization | r=1,d=2; r=0; zero ring | 1+x ↔ X₀²+X₀X₁; 1 ↔ X₀²; both composites identity; zero ring sends both to 0 | Values agree; no change. |
| Homogeneous forms and twisting sections | P¹, twist 2, chart X₀=1 | X₀²,X₀X₁,X₁² restrict to 1,x,x²; 3 sections = N(1,2); P⁰ has rank 1 | Values agree; no change. |
| Coefficient Gram form | x,y; 2+x; 0 | G(x,y)=0; G(x,x)=1; G(2+x,2+x)=5=4+1; G(0,0)=0 | Values agree; no change. |
| First-jet algebra evaluation | x,x²,C7 at P=0,3 | x ↦ (3,1); x² ↦ (9,6); C7 ↦ (7,0); at 0 the square of (0,1) is (0,0) | Values agree; no change. |
| Kernel of one first jet | Origin in A¹ over Q and F₂ | ker=(x²); 1,x map to basis (1,0),(0,1); x is outside kernel and x² inside | Values agree; no change. |
| Distinct point ideals and their powers | 0,1 over Q; 0,2 over Z | (x)+(x−1)=(1); squared ideals sum to (1); (x)+(x−2)=(x,2) ≠ (1) | Values agree; no change. |
| Squared union ideal | 0,1; repeated 0; empty tuple | I=(x²(x−1)²); repeated 0 gives (x²), not (x⁴); empty I=(1) | Values agree; no change. |
| Double-point quotient comparison | 0,1 over Q; empty tuple | dimensions 4=2·2 and 0=0; x(x−1) has jets (0,−1),(0,1), its square has zero jets | Values agree; no change. |
| Length of distinct double points | One point in A²; two in A¹; empty | 3=1·3; 4=2·2; 0=0·(r+1) | Values agree; no change. |
| Bounded first-jet evaluation | Origin A²,d=1; x² at 3; d=0 | matrix I₃, rank 3; J(x²)=(9,6); constant column has gradient 0 | Values agree; no change. |
| Value projection | x at 0,1; empty tuple | values (0,1) are the None projection of ((0,1),(1,1)); empty target dimension 0 | Values agree; no change. |
| Derivatives of vanishing polynomials | x,x² at 0; constants | value 0 for both, derivatives 1 and 0; one-point constant kernel dimension 0 | Values agree; no change. |
| Surjectivity through the value kernel | One A¹ support,d=1 and d=0 | d=1 ranks (J,value,kernel derivative)=(2,1,1): true iff true∧true; d=0=(1,1,0): false iff true∧false | Values agree; no change. |
| Monomial first-jet matrix | P=3,d=1; r=n=d=2 | [[1,3],[0,1]](2,1)=(5,1)=J(2+x); two planar quadratic supports give 6 rows and 6 columns | Values agree; no change. |
| Full row rank criterion | One support,d=0,1 | ranks 1<2 and 2=2 agree with not onto/onto; empty tuple rank 0=0 is onto | Values agree; no change. |
| Well-poised double points | One point; seven collinear points | d=1 rank r+1; d=0 rank 1<r+1 for r≥1; collinear plane quintics rank 11<21 | Values agree; no change. |
| Restriction to projective double points | P=[1:3], F=X₀X₁,d=2 | trivialized section jet (3,1)=affine jet of x; quotient target dimension 2 on both sides | Values agree; no change. |
| Homogeneous partials and affine first jets | F=X₀²+X₀X₁ at x=2; d=0; char 2 | [[2,−2],[0,1]](3,1)=(4,1), det=2; constant affine value 1 versus partials 0; X₀² in F₂ also has partials 0 | Values agree; no change. |
| Finite locally free pushforward of a line bundle | B=k×k; A=k[ε]/ε²; empty; identity | rank 2=rank B; A²⊗_A k=k², rank 2; empty rank 0; identity line rank 1 | Values agree; no change. |
| Relative generic smoothness | A²→A¹; x↦x²; dual numbers; generic point | projection rank 1/kernel 1=2−1; derivative at 1 is 2, at 0 is 0, in F₂ always 0; dual numbers tangent 1>dimension 0; geometric generic lift tangent 1, local m/m² dimension 0 | Values agree; no change. |
| Restriction rank of a finite scheme | Point/constants; double origin/linears; D=0 | 1=1−0; 3=3−0≤min(3,3); 0≤min(0,3); empty rank 0 | Identity agrees; R01 fixes its citation. |
| Restriction rank on disjoint unions | Two reduced points; constants or linears | constants: 1=1+0; linears: 2=1+1 | Identity agrees; R01 fixes its citation. |
| Cartier residual and trace | I=(t,x), H=(t); flat A[y]; nonflat A/(x) | colon is whole ring; trace (x); flat extension gives same ideals; nonflat I⊗B=B⊕B/(t) ≠ IB≅B, pulled trace k ≠ new trace 0 | Values agree; no change. |
| Finite-scheme residual and trace | Double origin A³; transverse/tangent length-two directions | lengths 4=1+3; 2=1+1; 2=0+2; empty 0=0+0 | Values agree; no change. |
| Castelnuovo dimension bound | Double origin A²,d=1,H=(y) | kernel 0≤0+0; ranks 3≥1+2=3; empty X gives N(r,d)=N(r,d−1)+N(r−1,d) | Values agree; no change. |
| Ordinary Horace criterion | P⁷ quartics,q=41,42,u=30 | trace 210=210; residual 118≤120 or 126≥120; lower ranks 328=min(330,328),330=min(330,336) | Values agree; no change. |
| Independent subschemes | Double A¹ origin to reduced origin; add a support | d=1 ranks 2→1=lengths; injective rank 2 stays 2 after adding a second double support | Identity agrees; R01 fixes its citation. |
| Curvilinear criterion at one support | Double A² origin, D=span(1,x,y) or span(1,x) | full D: rank 3 and every direction rank 2; smaller D: total rank 2<3 and y-direction rank 1<2 | Values agree; no change. |
| Curvilinear reduction | Two A² supports with d=3; constants | two full doubles have rank/length 6; each pair of directions rank/length 4; constants give rank 1<4 on that witness | Values agree; no change. |
| Universal length-two direction family | A² origin; Spec k; A¹; dual-number parameters | ideals (y,x²) and (y−x,x²), both length 2; rank Ω=0 gives empty parameter; rank Ω=1 gives P⁰; A⊕Aε remains rank 2 with ε²=0 | Values agree; no change. |
| Rank in flat point families | Two A¹ supports 0,t,d=1; scalar matrix [t] | jet rank 2 throughout; [t] rank 1 at t=1 and 0 at t=0, never increasing under specialization | Values agree; no change. |
| Proper limits of curvilinear failures | D=constants; two distinct fixed A² supports over a trait | two directions length 4, rank 1<4 on generic and special fibres; tangent/transverse traces 2 and 1; zero-dimensional support has 0 directions and is excluded | Values agree; no change. |
| Exact integer rank witnesses | 1×1 matrices [2] and [101]; F=X₀² | 2 mod101=2≠0 gives Q-rank 1; 101 mod101=0 does not certify its Q-rank 1; Euler sum 2X₀²=2F, in F₂ both sides 0 | Values agree; no change. |
| Quadrics with prescribed singular points | r=2,q=0,1,2,3,4 | ranks 0,3,5,6,6 = 6−choose(4−min(q,3),2); q=2 misses expected rank 6 | Values agree; no change. |
| Low-degree near-exception ranks | Twelve README configurations, fresh integer supports | mod101 ranks 9,10,20,30,35,120;12,15,32,35,65,70 = the twelve dimensional maxima | Values agree; no change. |
| Veronese morphism and tangent spaces | P¹,d=2; d=1; d=0 | [1:1]↦[1:1:1]=[4:4:4] for [2:2]; d=1 identity; d=0 collapses two points; symmetric mixed coefficient 2 pairs with 1/2 to give 1 | Values agree; no change. |
| Veronese tangents and double-point conditions | v=e₀,d=2,r=1 | tangent span e₀²,e₀e₁ has dimension 2; annihilator span X₁² has dimension 1, equal to (m²)₂ | Values agree; no change. |
| Terracini span for the Veronese family | Conic v₂(P¹),q=1,2 | one cone tangent dimension 2=one double rank; two tangent spans dimension 3=min(3,4), projective secant dimension 2 | Values agree; no change. |
| Plane singular-curve incidence | F=x²,C=(x); degree-1 and degree-2 curves | 2deg C=2=deg F; derivative of x is 1 so x fails; general point bounds 2=1·4/2 and 5=2·5/2 | Values agree; no change. |
| Contact curve in the defective plane case | Two general plane supports, degree 2 | rank 5<6; singular conic is joining-line square, contact curve degree 1/dimension 1; 2·1=2, q=2≤2 | Values agree; no change. |
| Plane contact numerical reduction | d=5,6,7,8,9,10 | critical floors 7,9,12,15,18,22 versus maximal curve bounds 5,9,9,14,14,20; only d=6 survives | Values agree; no change. |
| Exact sextic plane critical ranks | q=9,10 fresh integer points | mod101 ranks 27,28 = min(28,27),min(28,30) | Values agree; no change. |
| Plane interpolation input | d=0,1; (d,q)=(5,7),(4,5) | constant rank 1 for q>0; linear rank 3; quintic rank 21=21; excluded quartic has rank 14<15 | Values agree; no change. |
| Projectively distinct supports | e₀,e₁; e₀,2e₀; empty; zero singleton | pair ranks 2 and 1; second pair proportional by 1/2 and rejected; empty true; zero singleton false | Values agree; no change. |
| Three-subspace cubic base rank witnesses | r=5,6,7, integer graph frames | containment ranks 30,57,93; final 56,84,120 = choose(r+3,3); normal stacks rank 6,7,8 give triple intersections 0 | Values agree; no change. |
| Three-subspace cubic recursion | r=8, three coordinate codimension-3 spaces | nine variables in three blocks: containing cubics have 3·3·3=27 monomials; containing quadrics have 0 monomials (degree 2 cannot meet all three blocks) | Values agree; no change. |
| Two-subspace cubic base rank witnesses | r=5,7, integer graph frames | containment 20,66; kernels 36,54; final ranks 56,120; pair intersections 0,2 = r−5 | Values agree; no change. |
| Two-subspace cubic recursion | r=6 reducing to r=3; r=3 base | 11 supports = 2·4+3; specialize one per original space and three ambient supports, leaving 3+3+3=9 for three-space kernel; trace has 5 supports, expected cubic rank 20 | Values agree; no change. |
| One-subspace cubic base rank witnesses | r=5,7, integer graph frames | r=5 ranks 10→55→56, transverse derivative adds 1 and Q value adds 0; r=7 ranks 35→120; support counts 3+6 and 7+8 | Values agree; no change. |
| One-subspace cubic recursion | r=6 and r=8 | r=6: on=5,out=7, trace takes 1+4, kernel leaves 4+3; r=8: on=9,out=9, η length 3/trace 2, trace specializes 3+6 and kernel leaves 6+3 | Values agree; no change. |
| Cubic critical-count remainder | r=2,3,5,7 | (q,δ)=(3,1),(5,0),(9,2),(15,0); totals 9+1=10,20+0=20,54+2=56,120+0=120; triangle evaluates to 1 at [1:1:1] | Values agree; no change. |
| Cubic maximal-rank input | r=4,q=6,7,8 | fresh mod101 ranks 30,34,35 versus maxima 30,35,35; exactly q=7 excluded | Values agree; no change. |
| Quartic P⁵ critical rank | 21 fresh integer affine supports | mod101 rank 126=choose(9,4)=21·6 | Values agree; no change. |
| Horace trace-size inequality | (r,d,q)=(3,6,21),(2,4,3) | u,e=(9,1),(−1,1); ru+e=28,−1; u+re=12≤21 and 1≤4 | Values agree; no change. |
| Horace residual-size inequality | Same instances | N(3,4)=35≤11·4=44; N(2,2)=6≤3·3=9 | Values agree; no change. |
| Large-dimensional quartic residual bound | r=10,d=4,q=91 and q=0 | (u,e)=(71,5),(−29,4); q−u−e=15≥11 and 25≥11 | Values agree; no change. |
| Nonnegative critical Horace data | (2,4,5);(3,4,8),(3,4,9); below-critical q=3 | (u,e)=(2,1),(4,0),(5,1), satisfying e≤r−1≤u≤q; below-critical (−1,1) fails u≥0 as intended | Values agree; no change. |
| Mixed residual rank in degree d−1 | (3,6,21);(3,4,8) | full lower jets 48≤56, delete 1 gives 47=56−9; second rank 16=20−4 with e=0 | Values agree; no change. |
| Injective residual restriction to H | (3,6,21) | 11 off-H doubles, degree-4 row count 44≥35; predecessor rank 35 leaves kernel 0, hence restriction kernel 0 | Values agree; no change. |
| Killing a residual system with simple points | Same data; constant system | residual dimension 9, add 9 independent evaluations: 47+9=56; span(1) needs one evaluation, rank 1 rather than 0 | Values agree; no change. |
| Underfilled trace with simple remainder | Same data | trace rank 3·9+1=28=N(2,6); omitting Γ gives rank 27 | Values agree; no change. |
| Moving supports and hyperplanes | δ(t)=(a,t),H_t=(y=t) | t=0,1 full quotient bases 1,x−a,y−t have length 3; restricted bases 1,x−a have length 2; t=s² preserves both ranks | Values agree; no change. |
| Compatible bad-incidence specialization | Product incidence; graph sv=t; e=0 | product: (I+(s)):t∞=(s), mixed contraction in k[t] is 0; graph: ((sv−t)+(s)):t∞=(1), no prime; e=0 gives rank<0 and empty W | Controls agree; the general prime-existence assertion is an additional target, not verified by these tests. |
| Transverse curvilinear limit rank | (3,6,21),f=1,g=0 | trace 27+1=28; residual 9+44+1=54; sum 82=4·20+2 | Values agree; no change. |
| Tangent directions in the moving residual | Same data,f=0,g=1 | trace 27; residual 9+44+2=55; sum 82; a tangent special direction has trace length 2, residual length 0 | Values agree; no change. |
| Underfilled differential Horace contradiction | Both preceding splits | mixed rank ≥82 versus bad rank ≤81; contradiction in each split | Values agree; no change. |
| Overfilled partial-length reduction | (r,d,q)=(7,4,42),(8,6,334) | (u,e,ν)=(30,6,0),(214,7,4); lengths 36·8+6·7=330 and 327·9+4·9+3·8=3003 | Values agree; no change. |
| Overfilled differential Horace contradiction | (7,4,42),ν=0 | F=∅,g=6: residual 30+48+12=90, trace 210, sum 300; bad upper bound <36·8+12=300 | Values agree; no change. |
| Differential Horace induction step | (3,6,21) | predecessors (2,6,9),(3,5,12),(3,4,11) have expected ranks 27,48,35; conclusion rank 84=min(84,84) | Values agree; no change. |
| Univariate Hermite interpolation | 156 cases: p=2,3,5; 0≤n≤p; 0≤d≤11 | all ranks equal min(d+1,2n); for F₂,n=2,d=0,1,2,3:1,2,3,4; n=0 gives 0 | Values agree; no change. |
| Quartic P⁷ ordinary Horace input | q=41,42,u=30; seven/eight coordinate supports | trace 210; residual 118,120; totals 328,330; restriction kernel for seven supports dimension 1 via (ΣX_i)X₇², for eight dimension 0 | Values agree; no change. |
| Quartic induction inputs | r=6,8,9 critical counts | (q,u,e,Σ)=(30,21,0,9),(55,41,2,12),(71,54,4,13),(72,55,5,12); quadratic residual counts ≥r+1 | Values agree; no change. |
| Exception-avoiding induction schedule | r=3,d=5,q=14; r=4,d=5,q=25 | predecessors (2,5,7),(3,4,7),(3,3,7) and (3,5,13),(4,4,12),(4,3,9); none equals an exceptional triple | Values agree; no change. |
| Generic characteristic-zero double-point rank | r=1,d=5,q=0,1,2,3,4; planar quintic | ranks 0,2,4,6,6 = min(6,2q); plane q=7 mod101 rank 21=21; r=0,q=2 has 1 possible support and cannot be injective | Values agree; no change. |
| Double-point theorem in every degree | All five exceptional controls; d=0; empty | exception ranks 5/6,14/15,34/35,34/35,69/70 (actual/expected); d=0,q>0 rank 1; q=0 rank 0 | Values agree; no change. |
| Passing to the dense affine chart | [1:a] on P¹; doubled origin | H₂(x)=X₀X₁ restricts to x; at a=3 jet (3,1) on both sides; at origin linear jet rank 2 on both | Values agree; no change. |
| Universal first-jet matrix | r=n=d=1; x² column | [[1,T],[0,1]], det 1; specialize x² at T=3 to (9,6), at T=0 to (0,0) | Values agree; no change. |
| Selected determinant | One support 1,x; swapped columns; two supports | det 1,−1; two-support cubic determinant (b−a)⁴: 0 at (0,0),1 at (0,1) | Values agree; no change. |
| Degree of a first-jet minor | Two A¹ supports,d=3; zero and empty minors | (b−a)⁴ has total/individual degrees 4≤12; zero polynomial totalDegree 0≤md; empty determinant 1 has degree 0 | Values agree; no change. |
| Evaluation prime | A¹ supports 0,1; no variables | kernels (T),(T−1); eval₀ T=0 and eval₁ T=1; no variables gives kernel 0 in k | Values agree; no change. |
| Principal-open full-jet locus | Δ=1; Δ=(b−a)⁴ | D(1) entire spectrum; at (0,1), evaluation 1 and rank 4=target 4; at (0,0), evaluation 0 and rank 2<4 | Values agree; no change. |
| Bounded integer specialization | r=n=1,d=5, columns 1,x; n=0; r=0,n=1 | B=10, origin gives Δ=1≠0; empty determinant/grid value 1; scalar constant minor value 1 | Values agree; no change. |
| Nonzero maximal minor | r=n=1,d=5; plane r=2,n=7,d=5 | columns 1,x give Δ=1; fresh 21×21 plane matrix rank 21 mod101 gives a nonzero integer determinant | Values agree; no change. |
| Generic affine Hermite interpolation | r=n=1,d=5; r=2,n=7,d=5 | D(1) contains 0 with rank 2; planar full matrix gives rank 21=7·3 and nonempty determinant open | Values agree; no change. |
| Polynomial parameter pullback | Two A¹ supports θ=(0,u); collapsed family; S=∅ | Δ∘θ=u⁴, degree 4, u=1 in [0,4] gives 1; θ=(0,0) gives zero and is excluded; empty-parameter Δ=1 evaluates to 1 | Values agree; no change. |
| Special collinear configurations fail | Seven (i,0),d=5 | computed rank 11=6+5<21=N(2,5) | Values agree; no change. |

**Convention and API checks.** Each row below tests the three API bullets of the indicated definition in their README order; its three computed comparisons are separated by semicolons. The preceding target table includes the negative models and boundary cases.

| Definition/API block | Computed comparisons for its three laws |
| --- | --- |
| Bounded/slack exponents | α=(1,0),d=2 gives Some=(1,0); None=1=2−1; total 1+1+0=2 and deletion recovers α. |
| Coefficient coordinates | coeff₂(2+3x²)=3; sum of tuple (2,0,3,0) is 2+3x²; tuples of 2+x and 2−x differ at x by 2. |
| Homogenization | H₂(x)=X₀X₁; setting X₀=1 gives x; H₂((1+x)²)=(X₀+X₁)²=H₁(1+x)². |
| Coefficient metric | G(2+x,3−x)=6−1=5; G(2+x,2+x)=5>0; both coordinate and transported norms are √5, with integral tuple (2,1). |
| First jet | fst jet₃(x²)=9; snd jet₃(x²)=6; jet₃(x)=(3,1). |
| Squared union ideal | I(0,1)=(x²(x−1)²); this equals (x²)∩((x−1)²); swapping 0,1 yields the identical ideal. |
| Double-point quotient | x maps to ((0,1),(1,1)); (0,1)²=(0,0)=jet₀(x²); swapping factors gives ((1,1),(0,1)), the jets at 1,0. |
| Bounded jets | x² at 3 has None=9; Some=6; monomial exponents 0,1,2 give columns (1,0),(3,1),(9,6). |
| Value projection | x at 0,1 gives (0,1); projecting jets gives (0,1); at 0, x is in the kernel and 1 is not, with evaluations 0 and 1. |
| Kernel derivatives | At 0, derivatives of x,x² are 1,0; these are their Some jet entries; x(x−1) at 0,1 has derivatives (−1,1), reversed to (1,−1) by swapping supports. |
| First-jet matrix | x² at 3 has value entry 9; derivative entry 6; [[1,3],[0,1]](2,1)=(5,1)=J(2+x). |
| Well-poisedness | One point,d=1 gives true iff onto, rank 2; the 0,1 cubic system has rank 4 in either order; increasing degree 3→4 leaves rank 4. |
| Finite pushforward | k×k restricts to k²; rank 2=rank(k×k); A²⊗_A k=k² for A=k[ε]/ε² and the identity comparison is I₂. |
| Relative differential | Projection Jacobian [1,0] has rank 1; identity I₂ and its composition with [1,0] give [1,0]; relative kernel dimension 1=2−1. |
| Restriction rank | Double origin,linears: 3=3−0; constants: 1≤min(1,3); empty rank 0. |
| Cartier residual | I=(t,x): colon (1), trace (x); first map multiplies 1 by t and the trace of x is x; flat adjoining y preserves both ideals and maps. |
| Direction family | dx↦1,dy↦0 gives ideal (y,x²); (0,ε)²=(0,0); over k[δ]/δ² the same algebra is free on 1,ε of rank 2. |
| Veronese map | [a:b]↦[a²:ab:b²]; rescaling by 2 multiplies coordinates by 4; pulling back the first hyperplane equation gives a², a degree-2 section. |
| Projective distinctness | e₀,e₁ are both nonzero; 2e₀,3e₁ still have pair rank 2; e₀,2e₀ have rank 1 and proportionality scalar 1/2. |
| Moving supports | δ(0)=(a,0),H₀=(y); fibre dimensions 3 and 2 at 0 and 1; t=s² gives ideals (x−a,y−s²)² and (y−s²,(x−a)²), still ranks 3 and 2. |
| Mixed diagram | In constant-direction product incidence, generic/mixed/special maps all evaluate to the prescribed supports; face s=0 has coordinate ring k[t], dimension 1; for D=constants on two length-two directions the rank bound is 1<4 in all three fibres. This tests the API, not the Horace prime-existence theorem. |
| Universal matrix | T=3 specializes its x² column to (9,6); value T² specializes to 9; derivative 2T specializes to 6 and a zero exponent contributes 0. |
| Selected determinant | Specialized columns 1,x have determinant 1; transposing them gives −1; repeated supports give determinant 0 versus 1 at supports 0,1. |
| Evaluation prime | eval₃ has kernel (T−3); T−3 evaluates to 0; Δ=T has value 3≠0 and the prime belongs to D(T), whereas eval₀ does not. |

The conventions in the consumers agree: R homogeneous variables means projective dimension r=R−1. For (R,d,n)=(3,2,2),(3,5,6),(2,2,2), the ranks are 5<6, 18=min(21,18), and 3=min(3,4). The last is maximal rank without surjectivity. The None row is the value, Some j is the ordinary derivative; at x=3, x² gives 9 and 6. No Hasse-derivative or divided-power normalization was substituted. In the zero ring all algebraic polynomial/jet examples become zero; negative checks expressly use a nontrivial ring or a field. Empty products/tuples and degree-zero total-function values were checked, not suppressed.

**Headline and signature audit.** The README's 17 named headline theorems are all present:

| README endpoint/base | Suggested.lean declaration |
| --- | --- |
| Marked square-zero quotient comparison | `doublePointQuotient` |
| Quadric rank formula | `quadraticDoublePointRank` |
| Twelve neighboring low-degree ranks | `nearExceptionRanks` |
| Plane sextic critical ranks | `sexticPlane` |
| Plane maximal rank | `planeDoublePointRank` |
| Three-, two-, and one-subspace cubic bases | `threeSubspaceCubicBases`, `twoSubspaceCubicBases`, `oneSubspaceCubicBases` |
| Cubic maximal rank | `cubicDoublePointRank` |
| Quartic P⁵ base | `quarticFive` |
| Arbitrary-field univariate Hermite rank | `univariateHermiteRank` |
| Higher-dimensional quartic maximal rank | `quarticDoublePointRank` |
| Degree-at-least-five and all-degree AH | `genericDoublePointRank`, `alexanderHirschowitzRank` |
| Integer box, principal open, parameter pullback | `integerGridForMinor`, `genericAffinePrincipalOpen`, `parameterPullback` |

The module docstring separately identifies differential Horace, plane contact and unbounded cubic recursions as not statable on the intended projective-section/incidence carriers, naming the missing projective bundle, twisting-section, residual and direction interfaces. The finite rational subspace bases are genuine native statements, not arbitrary predicates standing in for these interfaces. The affine AH statements retain both underfilled and overfilled ranks.

I generated a fresh scratch copy with `#check @name` for all 30 declarations and compared their elaborated types with the README and supplied signatures. All 13 supporting definitions/abbreviations/instances have real bodies. CommRing, Field, CharZero, injectivity, incidence and nonzero-minor/pullback assumptions are explicit where required; none disappeared. The parameter type and projective support index can have their own universe. No repair to a signature was needed.

For each of the 17 admitted theorems the scratch copy independently attempted a closing `simp`, `rfl`, and `infer_instance`, with the admission retained only when none closed the goal. The copy elaborated with all 17 admission warnings still present and no errors. Reading the relevant pinned declarations supplied no single exact library lemma proving these custom jet/rank statements. The CRT and grid headlines additionally assert the actual marked jet equivalence or the distinct well-poised witness, respectively; they do not simply restate the imported CRT/grid theorem. No padding finding resulted. Finite cubic and quartic bases were checked as substantial induction inputs, not mistaken for small scalar computations.

**Pinned API audit.** Pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, as in the manifest. The following named declarations were located at those pins; their defining hypotheses and the relevant bodies were inspected. File names below are repository-relative within the named library.

| Pinned file and line | Declarations/contract checked |
| --- | --- |
| `Mathlib/RingTheory/MvPolynomial/Basic.lean:95`, `:109`, `:164`, `:174` | `basisRestrictSupport`, `monomial_mem_restrictSupport`, `restrictTotalDegree`, `mem_restrictTotalDegree`: support-bounded submodule and real coefficient basis, not a metric or interpolation assumption. |
| `Mathlib/Algebra/MvPolynomial/PDeriv.lean:61`, `:69`, `:92`, `:110` | `pderiv`, `pderiv_monomial`, `pderiv_X`, `pderiv_mul`: CommSemiring; exponent zero kills the truncated exponent-decrement term. |
| `Mathlib/Algebra/MvPolynomial/Eval.lean:256`, `:267`, `:572`, `:684` | `eval`, `eval_monomial`, `aeval`, `aeval_monomial`: ring/algebra evaluation, including the square-zero target. |
| `Mathlib/RingTheory/MvPolynomial/Homogeneous.lean:87`; `Mathlib/Algebra/MvPolynomial/Basic.lean:566` | `homogeneousSubmodule`, `lcoeff`: actual homogeneous polynomial subtype and linear coefficients. |
| `Mathlib/Data/Finsupp/Multiset.lean:244`; `Mathlib/Data/Sym/Card.lean:111` | `Sym.equivNatSum`, `Sym.card_sym_eq_choose`: mass-d exponent tuples and multiset count; the added slack coordinate makes its cardinal r+1, including r=0. |
| `Mathlib/Algebra/TrivSqZeroExt/Basic.lean:67`, `:452` | `TrivSqZeroExt`, `inr_mul_inr`: carrier R×M, infinitesimal product zero; not a reduced product algebra. |
| `Mathlib/RingTheory/Ideal/Quotient/Operations.lean:248` | `Ideal.quotientInfRingEquivPiQuotient`: finite, pairwise coprime ideals; only a ring equivalence before the roadmap's scalar/jet-map identification. |
| `Mathlib/LinearAlgebra/Matrix/Rank.lean:220`, `:285`, `:346` | `rank_of_det_ne_zero`, `rank_submatrix_le`, `rank_eq_finrank_range_toLin`: determinant lower bound, submatrix inequality and represented range dimension. |
| `Mathlib/Combinatorics/Nullstellensatz.lean:62`; `Mathlib/Algebra/MvPolynomial/Degrees.lean:560` | `eq_zero_of_eval_zero_at_prod_finset`, `degreeOf_le_totalDegree`: domain and finite variable type; strict degree < grid cardinality. |
| `Mathlib/RingTheory/Spectrum/Prime/Topology.lean:504`, `:509` | `PrimeSpectrum.basicOpen`, `mem_basicOpen`: open carrier already includes openness; membership is nonmembership in the prime ideal. |
| `Mathlib/AlgebraicGeometry/Scheme.lean:466`, `:475`, `:537`; `Mathlib/AlgebraicGeometry/AffineSpace.lean:151`, `:224` | `Spec`, `Spec.map`, `Spec.map_apply`, `AffineSpace.homOverEquiv`, `AffineSpace.SpecIso`: schemes, contravariant ring maps and actual affine functor of points. |
| `Mathlib/RingTheory/MvPolynomial/EulerIdentity.lean:73`; `Mathlib/Algebra/MvPolynomial/Funext.lean:82`; `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:361` | Euler identity includes degree zero; polynomial function extensionality requires an infinite domain; dense smooth locus requires a reduced source locally of finite presentation over a perfect field and is absolute. |
| `TauCeti/RingTheory/MvPolynomial/RestrictTotalDegree.lean:39`, `:52`, `:72` | `MvPolynomial.restrictTotalDegree_mono`, `MvPolynomial.restrictTotalDegree_eq_span`, `TauCeti.MvPolynomial.apply_mem_of_basis`: inclusion, span, bilinear extension on bounded inputs; no jet comparison. |
| `TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85`; `TauCeti/AlgebraicGeometry/Modules/Differentials/Quasicoherent.lean:180`; `TauCeti/AlgebraicGeometry/TangentSpace/Basic.lean:65` | `Scheme.relativeDifferentials`, `relativeDifferentialsSectionsEquiv`, `ZariskiTangentSpace`: sheafified Kähler differentials over an affine base, affine section comparison, and residue-field dual of local m/m². The last alone is not the geometric tangent of a nonclosed point. |

Two further names were checked, giving 42 pinned declarations in total: `Spec.algebraMap` in `Mathlib/AlgebraicGeometry/Scheme.lean:488`, and `SmoothOfRelativeDimension` in `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:127`. The primitive basis representation is `AddMonoidAlgebra.supportedEquivFinsupp`; no redundant polynomial carrier is introduced. Mathlib's `Polynomial.homogenize` is a univariate map with the homogenizing variable in coordinate 1, distinct from the stated multivariate bounded-submodule adapter. Tau Ceti's Hermite-polynomial files concern orthogonal polynomials, not arbitrary-support Hermite interpolation.

**Ownership and resolved supplier citations.** Searches used the required roadmap grep/show/resolve tools, main, board packages, supplied sibling checkouts, and the pinned libraries by object: bounded coefficients, homogenization, first derivatives, square-zero quotients, residual/trace sequences, finite locally free pushforward, cotangent directions, generic smoothness, Veronese maps, cubic systems, rank loci and polynomial grids. Existing owners are consumed, not redeclared under their fully qualified names. No namespace collision was found among the 30 declarations.

| Citation/overlap | File/section resolved and consequence |
| --- | --- |
| AlgebraicVectorBundles §L0B | Main `TauCetiRoadmap/AlgebraicVectorBundles/README.md:228` and `:244`: finite locally free sheaves, affine finite-projective comparison, rank/tensor/pullback. The present target adds finite-map restriction of scalars for an invertible sheaf. |
| DiophantineApproximationAndTranscendence §2.7 | Main `TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md:1780`, `:1784`, `:1804`, `:1812`: block homogenization and both inverse formulas. At d=2,1+x gives X₀²+X₀X₁; the native-submodule adapter retains that formula. |
| SchemeAndStackFoundations §0.28 | Main `TauCetiRoadmap/SchemeAndStackFoundations/README.md:1776`, `:1785`, `:1787`: quotient presheaf, affine comparison and sheafified all-open comparison. The roadmap does not assert a non-affine unsheafified quotient isomorphism. |
| SchemeAndStackFoundations §§2.6,4.12,5.12 | Same file `:3443`, `:5615`, `:7338`: projective cohomology, generic flatness, Bézout. The proper-intersection qualification on Bézout equality is retained. |
| AlgebraicModuliForArithmeticGeometry §§1.1–1.2 | Retrieved head `TauCetiRoadmap/AlgebraicModuliForArithmeticGeometry/README.md:306`, `:335`, `:533`: projective quotient convention, integer twists, natural coefficient Čech comparison for every commutative ring. P⁰ and q=0 are explicitly included. |
| AlgebraicModuliForArithmeticGeometry §§1.7,2.1 | Same file `:971`, `:1075`: finite locally free determinantal locus with arbitrary scheme base change; Hilbert families for separated finitely presented ambient morphisms, with finite locally free degree subfunctor. |
| IntegralLattices Layer 0 | Main `TauCetiRoadmap/IntegralLattices/README.md:507`, `:540`: general lattice/Gram theory. The present monomial metric does not rebuild it. |
| ArithmeticStatisticsPartV §3.28 | Retrieved `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:1802`, `:1842`, `:1848`: explicitly consumes this roadmap's §§1.4 and 4.8. R=r+1 and the four exception translations agree. This is a consumer, not a supplier edge. |
| Veronese overlap | Main `TauCetiRoadmap/AffineMorseLefschetz/README.md:545` constructs a closed holomorphic Veronese embedding on complex projective carriers. Here §3.2 is the algebraic scheme construction over every algebraically closed characteristic-zero field, with its polarization/jet comparison; it is not a second complex-topological construction. |
| Later moduli Part II | `TauCetiRoadmap/AlgebraicModuliForArithmeticGeometryPartII/README.md:3`, `:49`: numerical proper Picard/contraction theory and norm consumption, not this interpolation toolkit. It is not cited as a supplier. |

The six slugs in `packages/GenericDoublePointInterpolation/design/plan.json` still describe the package-stage supplier proposals. At this PR head the scope and layer targets explicitly move those six objects here: finite sections and relative generic smoothness (§2.0), Cartier residuals (§2.2), universal directions (§2.4), plane singular incidence (§3.2), and compatible mixed specialization (§4.3). The port report also records that ownership move. This review therefore does not pretend those Part II sections have supplied anything, and does not treat their present absence as a finding. The target-specific hypotheses in the PR replace the earlier terse gap sentences. No acceptance condition relies on delivery of an unnamed Part II. SchemeAndStackFoundations §3.5 already uses pushforward determinants in line-bundle norms; that is not a competing construction of the finite-flat section/base-change theorem stated here.

Every Needs line was read. The inter-roadmap direction is one-way. Within Layer 4, the chosen partial trace is a hypothesis of the compatible diagram and is constructed in the overfilled branch; the arithmetic/trace construction does not use that diagram, so there is no logical cycle. The mixed-incidence target is owned before its two contradiction consumers. The integer-box theorem for an arbitrary nonzero minor precedes existence of the endpoint minor, preventing a descent cycle.

## Not verifiable

- No cited source was inaccessible: BO, COU and VAK were read in the supplied legal extractions; ST was obtained through the sources service. No missing-reference request is pending. ST is absent from the package's three-entry source manifest; this review did not edit that manifest.
- BO lines 879–890 and 952 do not establish the additional saturated-ideal prime-existence property in README §4.3. The graph counterexample shows why properness and semicontinuity alone cannot establish it. The PR explicitly states that stronger property as an owned interpolation theorem with its hypotheses, rather than claiming it is an existing supplier theorem. The product/graph controls in the table verify the distinction, not that new theorem in full generality. Human assessment of this proposed proof milestone remains appropriate; the roadmap has made the required work explicit.
- The numerical computations certify the listed finite examples and detect normalization/exception failures; they are not formal proofs of the unbounded recursions or of Alexander–Hirschowitz. The Lean file intentionally admits its headline proofs.
- Ownership searches covered the supplied readable heads and the required index. Open work whose files were not supplied was not independently audited beyond resolver/search results; no missing owner is inferred from that limitation.

## Source issues

- **Misprint** in BO at Proposition 5.3 proof, printed p.10 (BO line 525): the source says the three ambient supports in the P⁷ base lie in P⁵; it should be P⁷; affects the proof.
- **Gap** in BO at Theorem 6.4, inequality (4), printed p.17 (BO lines 879–890): the source uses separately indexed bad directions to form a compatible mixed specialization; it should justify a common bad-incidence family with that specialization; affects the proof.
