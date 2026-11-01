# Review of ErdosProgressionPowers (pull request #1336 at 883fd29)

**Verdict:** accepted

One P3 citation finding; no P1 or P2 findings. The gate passes. Acceptance concerns this roadmap folder and is for a human's final approval, not approval of the pull request. The seven numerical supplier obligations remain explicit mathematical obligations; this review does not certify their discharge or their external registration.

The four previous findings were checked first:

- **Previous R01: repaired in the README; external registration remains settled and unverified.** `TauCetiRoadmap/ErdosProgressionPowers/README.md:540`–552 now gives seven separate, quantified contracts in the supplier subsection. For example: “What AnalyticNumberTheoryPartI must provide (gap:mod-eight-theta-finite-range): a proof of the theta clause”. Lines 526–532 explicitly construct the two conjunction inputs from their separate clauses. Lines 584–607 consume ComputationalNumberTheory §§4.22 and 4.24 for the zero clauses, instead of asking for them again. The old compound slugs have disappeared. No readable design plan establishes registration. External supplier/design edits were marked not actionable in `packages/ErdosProgressionPowers/reports/FIX-RT-ErdosProgressionPowers~1.md:85` and carried through the later repair/review reports; that reason remains valid under this job's read-only scope. I have not re-raised it or represented registration as complete.
- **Previous R02: repaired.** `TauCetiRoadmap/ErdosProgressionPowers/README.md:1325` now says “This input is used in §§3.2, 4.8 and 6.2”. The supplied gate reports zero residue failures.
- **Previous R03: repaired.** `TauCetiRoadmap/ErdosProgressionPowers/README.md:1040`, 1064 and 1076 now cite “EllipticCurveModularityPartII §2.2”, “§§1.5–1.8” and “§4.7”, respectively. These sections exist at the supplied head and contain the required comparisons. The divisor references at 1377 and 1726 point to §0.9.
- **Previous R04: repaired.** `TauCetiRoadmap/ErdosProgressionPowers/Suggested.lean:53`, 74 and 82 remove the redundant positive-length binder, positive-set conjunct and positive-y binder. The signed finiteness statement retains `y*d ≠ 0`; the consecutive-product theorem admits y=0 and excludes it by the positive product. README §§6.2, 6.5 and 7.1 agree.

## R01 (P3) — Use the root-level complete bipartite graph constructor

**Location.** `TauCetiRoadmap/ErdosProgressionPowers/README.md:207`–210, “`SimpleGraph.completeBipartiteGraph`”, assigned to `Mathlib/Combinatorics/SimpleGraph/Bipartite.lean`.

**Claim.** This qualified declaration is the pinned carrier for the graph used in §7.1.

**Witness.** `#check @SimpleGraph.completeBipartiteGraph` gives “Unknown constant”. The constructor is `completeBipartiteGraph` at `Mathlib/Combinatorics/SimpleGraph/Basic.lean:154`; `Bipartite.lean:325` proves a theorem about it rather than defining that name.

**Repair.** Replace the qualified name by `completeBipartiteGraph` and cite `Mathlib/Combinatorics/SimpleGraph/Basic.lean` for both it and `SimpleGraph`. Keep `Copy.lean` for `SimpleGraph.Free`. The repaired name elaborates; on `Fin 2 ⊕ Fin 2`, a left/right pair is adjacent and two distinct left vertices are not, proved by simplification on the scratch probe. This is a name/file citation correction, not an unowned mathematical prerequisite.

## Verified sound

**Coverage and mechanical checks.** Read all 57 numbered subsections, their APIs, Checks, proof routes, examples and dependencies, together with the conventions, supplier contracts and integration requirements. Checked the 15 seeded source targets below, the six Lean headline theorems, all nine local elaborated signatures and the 20 named roadmap suppliers. The review uses the pinned Mathlib commit `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti commit `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The original file elaborates with exactly six `sorry` warnings and no other warning or error. The worker's targeted build and every supplied gate check pass. The outside-folder diff is empty; the folder contains README.md, Suggested.lean and metadata.toml.

The prescribed dependency check returned:

```text
depcheck: 204 roadmaps, 1481 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The common modular spine supplies both analytic routes; Layer 7 supplies no premise to Layers 0–6. Numerical inputs are retained explicitly instead of being silently inferred from conditional supplier theorems. The README plans mathematical estimates and finite inequalities, not executable algorithms. No copied source passage, sorry'd data, `set_option`, extra import, namespace collision or route-specific prime restriction was found.

**Seeded source checks.** Printed-page numbering was checked against the published BS20 text and the DG95 author scan, not inferred from PDF page indices. These rows distinguish a source statement from an adapter or a correction proved in the roadmap.

| Sampled target | Text and locator examined | Hypotheses and result |
| --- | --- | --- |
| §0.1 Primitive progression solutions | BS20 line 107, Theorem 2 and equation (2), p. 357; line 230, §3, p. 360 | Signed integers, coprimality, positive length and nontrivial product are preserved. The local S and H definitions make the prime-exponent and large-length assumptions explicit. |
| §0.2 Gcd of progression terms | BS20 line 249, Lemma 3.1(i), p. 360 | Coprimality gives divisibility by the index difference; the natural gcd is nonnegative. |
| §0.6 Equal-sum progression quadruples | BS20 line 310, §3, pp. 362–363 | Equal sums, ordered unequal outer indices and the sign of κ are retained; A−B=κd². |
| §1.3 First-family invariants and odd local properties | BS20 line 277, Lemma 3.2, p. 361 | Native discriminant is correctly repaired to 16(abc)²; minimality and semistability are restricted to odd primes. Large-prime valuation divisibility uses nonzero terms. |
| §1.4 Progression generalized Fermat identities | BS20 line 263, equation (5), p. 361; line 274, three-term specialization | Both coefficient differences and the −2 middle coefficient agree. |
| §1.8 Second-family reduced-level bounds | BS20 line 331, Lemma 3.5, p. 363 | The dyadic and ternary factors and κ² remain; the product has primes at most k and the elliptic irreducibility input is supplied separately. |
| §1.11 Kraus threshold for progression levels | BS20 line 423, Lemma 5.1, pp. 365–366; Kraus1997 line 239 and line 284, §3.1, Theorem 4, p. 1144 | The roadmap bounds numerical majorants, then uses the supplied sharp-threshold comparison. It does not identify the majorants with Kraus's square-root formulas. |
| §3.1 General effective analytic inputs | BS20 line 799, Proposition 7.1 and Theorem 5, pp. 373–374; line 872, Lemma 7.3, p. 375; line 939, Theorem 6, pp. 376–377; line 1044, Theorem 7, p. 379 | Nonprincipal PNT, squarefree distinguished modulus, primitive factor, coprimality and the interval-length bound are explicit. The Gram inequality includes the empty family through a row bound C. The exact conductor estimate remains conditional on its numerical inputs. |
| §3.3 Many smooth characters criterion | BS20 line 923, Proposition 8.1, p. 376; line 1044 through line 1118, pp. 379–380 | More than 17 log k characters, distinct pulled-back functions, conductor and smoothness bounds; mean-square constant 1/68 is compared with 0.1239². |
| §4.4 Explicit Stirling upper bound | BS20 line 1300, proof of Proposition 9.1, p. 384; Mathlib Stirling declarations below | m≥1 excludes the zero denominator. The roadmap supplies the telescoping proof on the pinned sequence, rather than relying on an unread citation alone. |
| §4.6 Simultaneous thin-conductor witness | BS20 line 1162, Proposition 9.1, pp. 381–384; line 1327, final Roth substitution | One triple satisfies all four properties. The incorrect source cutoff is increased to exp(exp(10⁷)); the calculation is below. |
| §4.7 Maximal largest-prime family | BS20 line 1335, §10, pp. 384–385 | Inclusion maximality is on a finite collection; the empty thin set supplies nonemptiness. The next subsection handles the open/closed endpoint by weakening c₁. |
| §5.5 Exceptional divisibility indices | BS20 line 1468, Proposition 12.3, pp. 387–388 | The definition uses divisors r of the same exceptional q and the threshold r≥q^(1/3)/2. |
| §5.6 Exceptional indices are sparse | BS20 line 1472, proof of Proposition 12.3, p. 388 | The roadmap retains the +1 for r>k, sums it as τ(q), and only then uses q≤k⁴. This repairs the source's nonuniform intermediate estimate. |
| §7.1 Positive consecutive products | ErdosSelfridge1975 line 29, Theorems 1–2, p. 292; line 70, Lemma 1, pp. 293–294; line 164, Lemma 2, pp. 294–295; line 204, Lemma 3, pp. 295–296; lines 254–503, §§2–3, pp. 296–300 | Positivity, length≥2, prime-exponent reduction, the stronger valuation theorem's least-prime condition, repeated-index products, deletion, odd-prime ranges and square branch are all retained. Source finite verifications become explicit mathematical targets. |

Additional legal texts checked: DG95 line 315 through line 367 (Corollary 2.1 and the signed geometric adapter, pp. 520–521); Faltings1983 line 682 (Satz 7, p. 365); Lemos2017v2 line 44 (non-CM and nontrivial cyclic rational isogeny, p>37); Martin2003v1 line 113 (positive-level weight-two newspace dimension); Platt2013v1 lines 955 and 976 (bounded-height zero line and central nonvanishing, respectively); Schoenfeld1976 line 1288 (Note Added in Proof, printed p. 360); RamareRumely1996 lines 58 and 1385 (Theorem 1 and the modulus-eight table); BMOR2018v3 lines 377 and 3556 (Proposition 1.11 and its proof); Bombieri1987 lines 1205–1218 (Theorem 14's exceptional-zero convention and the following density estimate). The +1 allowance in the supplier density statement is retained. The source texts were obtained through the sources service from the stated legal repositories, publisher archives or author copies. Waived works are listed separately below.

**Computed adversarial pass.** The table records direct arithmetic, boundary and convention tests; these are not proofs of the uniform analytic or finiteness theorems. In particular, a small progression is not advertised as an instance of H. For targets conditional on H, the rows test the algebraic components and explicit comparisons used in their proof. “Keep” means no repair to this head is indicated by that test. Bars in formulas are written as abs to keep the table unambiguous.

| Statement or API | Instances tried | Values on the two sides / negative control | Result; change |
| --- | --- | --- | --- |
| §0.1 term | n=2,d=3,i=0,1; signed n=−3,d=2 | terms 2,5 and −3,−1; increment is d=3 or 2 | Keep |
| §0.1 S | (n,d,k,y,ell)=(1,24,3,35,2), (−3,2,4,3,2), (8,19,2,6,3) | products 1225=35², 9=3², 216=6³; all gcds 1 | Keep; signs and ell=2 admitted |
| §0.1 excluded S/H cases | k=0; d=0; n=0 with positive k; k=0,1,2 for H | empty product 1 does not restore 0<k; yd=0 excludes d=0 and a zero product; each small k fails k≥10⁸ | Keep |
| §0.2 gcd and cancellation | n=1,d=2,i=1,j=4; n=2,d=2 control | gcd(3,9)=3 divides 4−1=3; gcd(2,4)=2 does not divide 1 when gcd(n,d)=2 | Keep |
| §0.3 large-prime valuation | n=8,d=19,k=2,ell=3,p=2 | terms 8,27; valuations 3,0, both divisible by 3; p=k belongs to large side | Keep |
| §0.4 signed factorization | n=−8,d=7,k=2,ell=3 | A=(1,1), z=(−2,−1); (−2)³=−8, (−1)³=−1; product 8=2³ | Keep |
| §0.4 coefficient convention | term 64,k=3,ell=3; term 1 | small-prime convention A=64,z=1; powerfree alternative A=1,z=4 wrongly places prime 2 in z; unit term gives A=z=1 | Keep; not the Layer-6 coefficients |
| §0.5 triple set | k=0,1,2,3,5 | cardinalities 0,0,0,1,4; k=3 triple (0,1,2); (0,2,4) is included at k=5 | Keep |
| §0.6 quadruple, κ and identity | (0,1,1,2), (0,1,2,3), n=d=1 | sums 2=2 and 3=3; κ=−1,−2; A−B=3−4=−1 and 4−6=−2, equal κd² | Keep |
| §0.6 wrong index model | (0,1,1,3), n=d=1 | sums 3≠2; A−B=4−4=0 while κ=−1 | Excluded by equal-sum condition |
| §0.7 divisibility index sets | n=1,d=2,k=6,r=3; r=1; n=1,d=1,k=3,r=4 | I₃={1,4}, I₁ has all six indices, I₄=∅; out-of-range i=6 is not admitted | Keep |
| §0.8 count including large divisors | n=1000,d=1,k=3,r=1000; n=1,d=2,k=6,p=3 | counts 1≤1.003 and 2=6/3; discarding +1 would give 1≤0.003 | Keep |
| §0.9 theta, psi and Euler product domain | x=1,2,4 | θ(1)=ψ(1)=0; θ(2)=log2; ψ(4)=2log2+log3; product at x=1 is 1>2log1=0, outside x≥10⁸ | Keep |
| §0.9 large-prime factorial estimate | L=log k at the stated huge threshold | leading coefficient 9/16=0.5625; losses include 1.000081k, k and inverse-L terms, below 5k once L is large | Keep; threshold retained |
| §1.1 actual residual conductor | tame unipotent two-dimensional representation; its semisimplification | invariant dimensions 1 and 2 give tame exponents 1 and 0; an unramified representation gives 0 | Keep; cannot substitute semisimplification |
| §1.1 deletion level | M=11,v₁₁(Δ)=5,ell=5 or 3; M=33, valuations 6 at 3 and 2 at 11,ell=3 | deletion levels 1,11,11 respectively; p=ell can be deleted in the general definition | Keep |
| §1.1 trace and dimension conventions | removed p=7,ell=5; level 11 | ±(p+1) mod5 gives 3,2; 12g₀⁺(11)=12=N+1 | Keep |
| §1.1 μ and majorants | N=1,4,11,44 | μ=1,6,12,72; H_K(1)=4; H_K(11)=max(9,169)=169 | Keep; N>0 for index reading |
| §1.2 normalized first family | n=d=1; n=2,d=1; n=−3,d=2 | g=1,2,1; (a,b,c)=(1,−4,3),(1,−3,2),(−3,2,1); a+b+c=0 in each | Keep |
| §1.3 discriminant and c₄ | preceding three families | (Δ,c₄)=(2304,208),(576,112),(576,112); both native formulas agree; the source's factor gives four times Δ | Keep corrected normalization |
| §1.3 odd local condition | first family at p=3 and p=2 | v₃(2304)=2, c₄=208≡1 mod3; c₄≡0 mod2, so the odd-unit proof cannot be used at 2 | Keep |
| §1.4 general Fermat identity | n=2,d=3, indices 0,1,3 | terms 2,5,11; 2·2−3·5+1·11=0; for 0,1,2: 2−2·5+8=0 | Keep coefficient differences |
| §1.5 second family | n=d=1 and n=−3,d=2, quadruple (0,1,1,2) | (κ,A,B)=(−1,3,4),(−1,−3,1); coefficients (a₂,a₄)=(−2,−3),(−4,3) | Keep |
| §1.6 second invariants | same two instances | Δ=2304,576 and c₄=208,112 agree with first models | Keep |
| §1.6 half-interval local algebra | n=5,d=1,p=5, quadruple (0,1,4,5) | κ=−4,A=50,B=54; Δ=552960000,c₄=10624≡4 mod5; A−B=−4=κd² | Keep; local example only, not H |
| §1.7 first reduced-level support | normalized n=d=1; positive level 1 | odd bad support {3}, Δ's odd valuation 2 but c₄ a 3-unit; level 1 is positive and satisfies the stated majorant | Keep; conductor not discriminant |
| §1.8 second level bound | κ=−1 versus κ=−2 | κ²=1 versus 4; omitting κ² loses a factor 4; constants 2⁷·3⁵=31104 preserve both exceptional small primes | Keep |
| §1.9 half-prime headline | p=k prime; p=2 under H; coefficient-prime comparison | k<2p and p≤k hold at p=k; p=2 is impossible for k≥10⁸; log log ell>k log10≈2.302585k dominates the level estimates | Keep exact upper endpoint |
| §1.10 conductor/weight bridge | multiplicative coefficient prime with ell dividing v(Δ); good coefficient prime | finite-flat deletion branch versus good branch; prime support≤k<ell leaves coefficient-prime valuation of reduced level 0 | Keep both local cases |
| §1.11 Kraus comparison | N=11; k≥10⁸ logarithmic comparison | H_K(11)=169; μ(44)=72; leading log-log level term 1.000081k is below k log10, with positive margin about 1.302504k | Keep sharp-to-majorant direction |
| §1.12 comparison curve | full two-torsion versus a single rational root; N=1 boundary | doubling kernel sizes 4 versus 2; full-two-torsion conclusion cannot be inferred from size 2; N=1 does not manufacture a weight-two cusp form | Keep supplied irreducibility/weight hypotheses |
| §1.13 trace zero and Hasse | symmetric cubic over F₃,F₇; p=7,ell=11 trace comparison | counts 4,8 give traces 0,0; 4√7≈10.583<11, so congruent Hasse-bounded integer traces must coincide | Keep p=3 distinct from supersingularity criterion |
| §2.1 ordinary/scaled Legendre | λ=1/2,D=1 or 2; λ=0,1 | Δ=1 or 64; Δ=0 at excluded parameters; scaling is D⁶, not D² | Keep |
| §2.1 root order and twist | λ=2 labels; λ=4 over F₅,D=1 or 2 | six labels repeat among 2,−1,1/2; projective counts 8,4 give traces −2,2 | Keep repeated labels and twist sign |
| §2.1 arbitrary-ring versus elliptic specialization | zero ring; λ=−1 over Z and Q | coefficient identities are 0=0 in the zero ring; Δ=64 over Z is nonzero but not a unit, while 64 is a unit in Q | Keep field hypotheses; native IsElliptic means unit Δ |
| §2.1 halving and scale-two point | t=v=1/2,i²=−1 | 2t²+2v²=1; λ=1/2; P=(1+i,−1+i) has y²=−2i=x(x−2)(x−1), and 2P=(1,0) | Keep |
| §2.2 case partition | associated sets {3}, {−1}, {2}; empty index family | {3} has a nonsquare class outside ±1,±2; {−1} and {2} lie in the exceptional classes; empty family has 0 cases to choose | Keep universal versus existential distinction |
| §2.3 mod-eight projection | residues 1,3,5,7 | projection values 0,4,0,0; (1−3·0.002811)/8=0.123945875>0.1239 | Keep absolute value; no character negation |
| §2.4 positive normalization/square obstruction | t=v=1/2; λ=−1 over F₅ | t²=v²=1/4; #F₋₁(F₅)=8, hence v₂=3 and 16 does not divide it | Keep |
| §2.5 CM obstruction | first families n=d=1 and n=−3,d=2 | j=35152/9 and 21952/9, not integers; rational CM j would be integral | Keep; examples test criterion, not H |
| §2.6 quartic descent and CM branch | T=V=U=1 | T⁴+V⁴=2=2U², λ=1/2, j=1728; this is precisely the exceptional CM model, not a generic non-CM instance | Keep |
| §2.7 simultaneous family | primitive conductors 4,8,24 | odd parts 1,1,3; 4 and 8 fail required odd-part nontriviality, 24/3=8; χ(1)=1 prevents replacing χ by −χ | Keep all clauses on one chosen character |
| §3.1 W | k=0,1,2,4 and value=1 | W=0,0,log2,log3+log2 respectively; at k=4 the prime-power 4 contributes log2 | Keep endpoints and Λ |
| §3.1 exceptional repulsion | chain starting N₁=3 | first lower bound is 3=3; next is N₂>9; strict inequality at j=1 would read 3>3 | Keep non-strict first index |
| §3.1 smooth-modulus bound | r=1,q=3,R=6,M=0, primitive quadratic factor | sum over 1,…,6 is 0; lower length threshold 3^(3/2)≈5.196<6; upper bound 24√(2/3)≈19.596 | Keep |
| §3.1 Gram inequality | two orthogonal unit vectors, x=(1,1); two equal units, x=unit; empty family | 2≤2·1, 2≤1·2, 0≤C·norm²; dropping off-diagonal terms gives false 2≤1 | Keep |
| §3.1 character correlation | primitive χ₃ and χ₄ on 6<m≤12; equal χ₃ control | mixed products sum 0; χ₃² sums 4 | Keep distinctness condition |
| §3.1 largest prime | N=4,8,24; N=16 control | P=2,2,3; 0.94log24≈2.98737<3; 16 is not a primitive quadratic conductor | Keep dyadic range 1,4,8 |
| §3.2 harmonic criterion | geometric repulsion series | 2/0.94≈2.127660<2.13; exp(2.13/0.166)≈373743.608<400000 | Keep strict small-conductor contradiction |
| §3.3 many-character criterion | leading diagonal mean-square term | 1/68≈0.014705882<0.1239²=0.01535121; margin≈0.000645328 | Keep square, not fourth power |
| §4.1 quantitative Roth | density 10⁻⁵ | 132log2/10⁻⁵≈9149542.783; 10⁶ is too small, 10⁷ is sufficient | Keep corrected cutoff |
| §4.2 prime sets and survivors | k=2,16; empty removal; S containing 2 | T₂={2}, T₁₆={5,7,11,13}; empty removal preserves indices; 1/2>0.17 rules out 2 in a thin S | Keep |
| §4.3 least maximizer | J=∅, {3}, {2,5} with constant coefficients | defaults 0,3,2; zero coefficient at singleton still gives index 3 | Keep total-function conventions |
| §4.3 factorial deletion | k=5,A=(1,2,3,4,1); k=4,A=(1,2,1,2) | retained {0,1,4}, product2 divides24; tie deletes index1 rather than3 | Keep |
| §4.3 all-unit and failed support controls | all A=1; k=5 powerfree coefficients (1,2,3,1,5) | no removal in unit family; latter retained product5 does not divide24 because prime5 is not below k | Keep support hypothesis |
| §4.4 Stirling upper bound | m=1,2,10; m=0 control | 1≤1.002274449; 2≤2.000652048; 3628800≤3628810.051; at m=0 RHS totalizes to0 while 0!=1 | Keep m≥1 |
| §4.5 density losses | coefficient cutoff exponent139 | 0.00319−0.44/139≈0.0000245324>0.00001; log(16/7)≈0.826679 leaves the stated sieve margin | Keep |
| §4.6 thin predicate | k=9,S=∅,{7},{2},{9}; k=6,S={7} | masses0,1/7,1/2,1/9; first two pass, third fails mass, fourth fails primality, last fails p≤k | Keep discriminating Checks |
| §4.6 simultaneous witness bound | one triple in J₂; k>256 | 2⁸k⁴¹⁷/k⁴¹⁸=256/k<1; Roth logarithmic threshold 9149542.783<10⁷ | Keep same-triple quantifier order |
| §4.7 maximal family | finite test labels with largest primes3,3,5 | maximal distinct-prime subfamily has2 members and mass1/3+1/5=8/15; empty family has0 and is extendible | Keep inclusion maximality |
| §4.8 original endgame | complementary mass bound; smoothness endpoint | 0.17−0.0017=0.1683>0.166; exponents0.9999<0.99995 give strict comparison when log k>1 | Keep c₁=1/20000 |
| §5.1 half-interval kernel | ρ=0 and ρ=1 | integral kernel values log2 and k/2; separate quotient k^ρ/ρ would divide by0 atρ=0 | Keep bounded kernel |
| §5.1 closed Landau–Page boundary | width c₀/2 versus c₀ | 1−c₀/(2log T)>1−c₀/log T for T>1; the closed narrower strip lies inside the strict wider one | Keep |
| §5.2 exceptional-set conventions | T=0,1; modulus0; k=16,c₀=1,even χ₅ | invalid-height branches are excluded; lower real boundary≈−0.103 includesρ=0 with L(0,χ₅)=0; cannot silently remove that zero | Keep positive modulus and stated threshold |
| §5.3 exceptional-set density | ε=1/24, Q=k⁴ | log-power exponent60+12ε=60.5<61; q≤k⁴ and τ(q)≤q^(1/12) imply τ(q)≤k^(1/3) eventually | Keep effective thresholds |
| §5.4 nonexceptional estimate | principal-character control; log k=10C | principal main term k/2 exceeds Ck/log k=k/10; nonprincipal estimate is the one consumed | Keep nonprincipal restriction |
| §5.5 exceptional divisor set | q=8, all four indices; q=1000,n=1000,d=1,k=3 | threshold8^(1/3)/2=1 admits r=1 and all indices; r=1000 detects index0 in second case | Keep composite divisors and small-q behavior |
| §5.6 sparse exceptional indices | same r=1000 case; divisor sum | count1≤3/1000+1=1.003; per-q contribution includes τ(q), which becomes at most k^(1/3), not0 | Keep repaired endpoint loss |
| §5.7 single witness bound | k=64 and the polynomial bound8k^(7/2) | 8·64^(7/2)=64⁴=16777216; strict inequality requires k>64, included by the large threshold | Keep |
| §5.8 conductor detection | N=120, coefficients3,5,1; support-only control N=24, coefficients3,5,7 | gcd product15=N/8 and max5≥120^(1/3)/2≈2.466; odd part3 divides105 but is not equal105 | Keep divisibility, not radical equality |
| §5.9 Granville endgame | lower sum0.1239k; log k=10C | upper Ck/log k=0.1k<0.1239k; strict positive margin0.0239k | Keep effective maximum threshold |
| §6.1 Mordell interface | diagonal genus3; genus1 control | 2g−2=4>0 versus0; genus1 does not meet genus≥2 | Keep native genus comparison |
| §6.2 effective prime bound | d=0,n=y=1; large-exponent logarithms | product1=1^ell and yd=0; nontrivial branch retains log log ell≤klog10; no numerical k₀ is asserted | Keep disjunction and effectivity obligation |
| §6.3 signed hyperbolic genus | (k,ell)=(3,4),(4,3),(5,2),(4,2),(3,3) | 2g−2=4,18,8,0,0; g=3,10,5,1,1 respectively | Keep strict hyperbolic inequality |
| §6.3 elimination and primitive lifting | a=2,d=3,j=3, terms5,8,11 | (j−1)8−(j−2)5=11; printed source coefficients give3·8−2·5=14; primitive projective scalings have only signs±1 | Keep corrected indices |
| §6.3 positive boundary cases | n=d=1,k=4 square; k=3 cube; signed four-term control | products24 and6 are not squares/cubes; signed (−3,−1,1,3) gives9=3² and is excluded by positivity | Keep separate descent targets |
| §6.4 prime-divisor reduction | y=−2,ell=6,p=3 or2 | Y=4 or−8; Y³=64 orY²=64 equals(−2)⁶ | Keep signs for even divisor |
| §6.4 fixed power and unit exclusion | Y=64,−64; Y=1 | six signed root/exponent pairs for64, two for−64; 1=1^r for every r gives infinitely many without abs(Y)>1 | Keep nonunit condition |
| §6.5 all-exponent headline | n=−7,d=2,k=8,y=105,ell=2 | product11025=105², gcd1; signed solution is retained rather than falsely excluded; finiteness makes no no-solutions claim at k=8 | Keep |
| §7.1 headline | n=1,k=2; n=4,k=1 control | product2 differs from0²,1²,2²; product4=2² when k=1 | Keep k≥2 and no y>0 binder |
| §7.1 Sylvester and valuation input | m=4,k=3; m=0,k=3 or4 | product210 has7>3; v₃(6)=1; at k=4, total24 has no prime≥4 and m+k=4<5, so Theorem2's extra hypothesis fails | Keep least-prime condition |
| §7.1 powerfree coefficients | terms8,9,ell=3; terms4,5,ell=2; term1 | pairs(1,2),(9,1); (1,2),(5,1); (1,1); quotient/remainder exponents reconstruct each term | Keep distinct convention from §0.4 |
| §7.1 short-product distinctness | m=28,k=3,ell=3,r=2; r=0 | six products841,870,899,900,930,961, distinct modulo rational cubes; empty products1=1 | Keep repeated-factor multisets |
| §7.1 distinctness controls | m=1,k=7,ell=3; lengthr=ell with coefficients1,2 | 2·6=3·4=12 on different multisets below size threshold; ratio2^ell is an ell-th power at forbidden lengthell | Keep both bounds |
| §7.1 rectangle-free count | empty graph; two-edge star s=1,t=2; K₂,₂ | edges0; 2=1+binom(2,2); 4>2+binom(2,2)=3 for graph containing four-cycle | Keep forbidden-subgraph condition |
| §7.1 multiplicative cover | B={1,2,3},U=B,V={1}; B={1,2,4} control | six products1,2,3,4,6,9 distinct and size3=3+0; control has1·4=2·2 | Keep |
| §7.1 cover cardinalities | support{2,3,5,7},bound36; support through11,bound100 | enumerated sizes25 and55; 11 excluded from first,13 from second | Keep |
| §7.1 large-length coefficient bounds | i=1,304,1492 | a_i≥i remains positive; other lower bounds at respective offsets are≤0 or0, so they cannot replace a_i≥i near the beginning | Keep all three bounds |
| §7.1 k=3 odd branch | forced coefficients1,2,4 atell=3; 1,2,16 atell=5 | 2²=4·1=4; 2⁴=16·1³=16, lengths2<3 and4<5 | Keep multisets with repetition |
| §7.1 cubic finite intervals | all996 integers4≤k<1000 using stated m choices | minimum f(f−1)−3^m on the seven intervals:3,15,159,627,1721,6003,14031, all positive | Keep every endpoint |
| §7.1 larger finite interval endpoints | k=1000,r=4,q=19,…,31; k=29999,r=31,q=29,…,173 | F≥255 gives64770>45927; F≥4853 gives23546756>19545219 | Keep divisor costs even for products>k |
| §7.1 ell≥5 counting | k=4,m=2,ell=5; both endpoints of remaining six intervals | binom(7,4)=35>25; endpoint minima for ell5 exceed5^m (e.g. k=10:330>125; k=646:19190605>390625) | Keep uniform ell target; finite tests not a proof for all ell |
| §7.1 square branch | residues mod36; support{2,3}; four terms at m=0,1 | 12 classes divisible by4 or9,24 not; only1,2,3,6 squarefree on support; products24=5²−1,120=11²−1 | Keep |
| §7.2 nonexistence predicate | proposed cutoff0 or3 | n=1,d=24,k=3,y=35,ell=2 gives1225=35² and disproves those cutoffs | Keep conjecture separate from proved finiteness |
| §7.3 smooth multiplier predicate | b=1 and τ=0; n=d=y=1,k=2,ell=2,b=2 | b=1 has empty prime support; product2=2·1², support prime2 satisfies p≤τk exactly when τ≥1 | Keep multiplier and support parameter |

The arithmetic calculations also checked the two native discriminant expressions against each other, the three genus values against the Riemann–Hurwitz expression, the reciprocal-sum margin and both reported finite-range F bounds. A source's informal “routine calculation” is not being reported as a complete proof: the README retains those inequalities as targets.

**Headline statements and padding.** The README's named acceptance tests are §1.9 `half_primes_divide_d`; §6.2 `effective_prime_bound`; §6.3 `fixed_exponent_finiteness` and `positive_fixed_exponent_finiteness`; §6.5 `fixed_length_finiteness`; §7.1 `consecutiveProduct_not_perfectPower`. All six occur in Suggested.lean on native integers, naturals, finite products and finite sets. The three definitions have real bodies. The module docstring identifies §1.12 and §2.7 as not statable with the missing arithmetic-conductor/deletion-level/residual-comparison interfaces. The elliptic library search found coefficient models, local reduction and point counts, but not those full arithmetic comparison carriers; no free predicate or substitute theorem has been inserted.

On a scratch copy, `#check @name` was elaborated for all nine declarations and compared with the README. There are no lost section binders. Integer signs, prime versus arbitrary exponents, k₀≥5, k≥10⁸, the strict exponential inequality, positive-domain quantifiers and the hyperbolic inequality all agree. Each of the six sorried theorems was separately tested with `simp_all` after unfolding the three simple definitions, `rfl`, and `infer_instance`; none closed. Reading the pinned declarations found no one-lemma counterpart for these six results. Scratch-probe unused-simp-argument warnings are not warnings in the original file. No padding finding remains.

**Pinned-library evidence.** These are the actual source locations opened or inspected at the pins, not links to a newer documentation build. Native definitions do not by themselves contain the extra arithmetic hypotheses described in the right column.

| File and declarations at the pin | What was verified |
| --- | --- |
| `Mathlib/Data/Int/GCD.lean:159`, 223, 231: `Int.gcd_def`, `Int.gcd_greatest`, `Int.dvd_of_dvd_mul_left_of_gcd_one` | Natural-valued nonnegative gcd and cancellation with gcd=1. |
| `Mathlib/Data/Nat/Factorization/Defs.lean:50`, 96, `Nat.factorization`, `Nat.prod_factorization_pow_eq_self`; `Mathlib/NumberTheory/Padics/PadicVal/Basic.lean:88`, 722: `padicValInt`, `padicValInt.mul` | Totalized valuations require nonzero arguments for the multiplicative exponent argument; the prime instance is retained. The latter's full signature was also elaborated. |
| `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean:76`, 120, 131, 366, 388: curve coefficients, `c₄`, `Δ`, `IsElliptic`, `j` | Five coefficients do not imply ellipticity. `IsElliptic` requires unit Δ; over the fields used for elliptic conclusions this is Δ≠0. |
| `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Basic.lean:149`: `Equation` | Polynomial equation, without a hidden nonsingularity assumption. |
| `Mathlib/NumberTheory/DirichletCharacter/Basic.lean:245`, 291: `conductor`, `IsPrimitive`; `Mathlib/NumberTheory/MulChar/Basic.lean:442`, 454, 514: `IsQuadratic`, `ringHomComp`, its generated application equation and quadraticity under composition | Primitivity means conductor equals ambient modulus; quadraticity alone permits the principal character. |
| `Mathlib/NumberTheory/LSeries/DirichletContinuation.lean:60`: `LFunction`; `Mathlib/NumberTheory/LSeries/ZMod.lean:271`: `LFunction_apply_zero_of_even`; `Mathlib/NumberTheory/LSeries/Nonvanishing.lean:397` | Continued L-function, the even zero-value formula, and nonvanishing for Re s≥1 with the principal pole excluded. |
| `Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean:65`, 73; `Mathlib/NumberTheory/Chebyshev.lean:70`, 77 | Λ includes prime powers; psi and theta are different native sums. |
| `Mathlib/Data/Nat/MaxPrimeFac.lean:39`: `Nat.maxPrimeFac` | The fallback convention gives P(0)=0 and P(1)=1; conductor estimates use N>1. |
| `Mathlib/Combinatorics/Additive/Corner/Roth.lean:163`: `roth_3ap_theorem_nat` | Native qualitative density conclusion, not the README's explicit exponential cutoff. |
| `Mathlib/Analysis/SpecialFunctions/Stirling.lean:54`, 126, 239, 276: `stirlingSeq`, `log_stirlingSeq_sdiff_le`, `tendsto_stirlingSeq_sqrt_pi`, `le_factorial_stirling` | Sequence normalization, telescoping increment, positive limit and lower factorial inequality support the new upper-bound adapter. |
| `Mathlib/Data/Nat/PadicValNat.lean:31`, `Mathlib/Data/Nat/Factorial/Basic.lean:183`, `Mathlib/Analysis/Complex/ExponentialBounds.lean:82`, 85 | `padicValNat_def`, `Nat.factorial_le_pow` and the two explicit log2 bounds used in the deletion and Roth comparisons. |
| `Mathlib/NumberTheory/Bertrand.lean:222`: `Nat.exists_prime_lt_and_le_two_mul` | n≠0 and prime p with n<p≤2n. |
| `Mathlib/Combinatorics/SimpleGraph/Basic.lean:93`, 154, `Copy.lean:371`: `SimpleGraph`, `completeBipartiteGraph`, `Free` | Finite bipartite and forbidden-copy carriers exist; the constructor name/file need R01. These carriers do not supply the arithmetic covering estimates. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/PointCount.lean:73`, 80, 101, 115 | `pointCount` counts all affine solutions plus one; `frobeniusTrace` uses a finite field. The comparison with the elliptic point group retains `IsElliptic`. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/XSubT.lean:794`, 855, 961 | `μ`, `exists_eq_two_smul_iff`, `ker_μ_eq` provide native descent and doubling, with normal-form and field hypotheses; no duplicate descent carrier is planned. |
| `TauCeti/NumberTheory/ModularForms/CongruenceSubgroups/Basic.lean:547`, 631 | `Gamma0_prime_index` and `Gamma0_prime_power_index` give p+1 and p^(k−1)(p+1), requiring a prime and positive k in the second formula. |
| `TauCeti/NumberTheory/Multiquadratic/FundamentalDiscriminant/Character.lean:34`, 68, 87, 95 | `fundamentalDiscriminantChar`, quadraticity, primitivity and odd-prime Legendre-symbol value; level is abs(D), not an arbitrary squareclass representative. |
| `TauCeti/NumberTheory/DirichletCharacter/Conductor.lean:50`, 58 | `conductor_ringHomComp`, `isPrimitive_ringHomComp_iff` require an injective coefficient map and nonzero level. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/QuadraticTwist/Basic.lean:169`, 952 | Native twist parameters are trace and norm. Substitution (0,−D/4) gives discriminant parameter D; the Galois-equivariance theorem fixes the sign character. |
| `TauCeti/NumberTheory/LocalField/RamificationGroup.lean:97`, 127, 132, 229 | `lowerRamificationGroup`, its inertia value at zero, antitonicity and vanishing past the largest jump. |

**Supplier and ownership audit.** All supplier names and target locators in the contracts and Needs lines were checked anew; the library-name exception is R01. Main copies were used for existing roadmaps; their text was compared with the content repository. New suppliers were read at the available open heads using the roadmap tools. The six resolver warnings are false leads here: the three `Conductor` names are explicit intended signatures in ArithmeticGaloisRepresentations §§3.2–3.3; stable lattices and residual semisimplification are in the cited roadmap sections; “ErdosSelfridge1975 §2.1” is a source citation, not a roadmap.

| Supplier | Resolved contract and evidence |
| --- | --- |
| EllipticCurves | `TauCetiRoadmap/EllipticCurves/README.md:648`, 684, 794, 1150, 1201, 1464, 1584: torsion, Hasse, minimality/reduction, twists, descent, semistable conductor comparison and the generic Frey equation. Only progression normalization is owned here. |
| ModularForms | `TauCetiRoadmap/ModularForms/README.md`, Layers 2–4, Layer 8 at 765 and Layer 10: Hecke/newform objects, coefficient number fields and dimension theory. Newspace versus full-space dimension is distinguished. |
| NeronModelsAndSemistableAbelianVarieties | `TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md:3472`–3520, §§5.3g–5.3h: local exponents, f₂≤8, f₃≤5, actual residual representation and ell≥5 additive comparison. |
| EllipticCurveModularity | `TauCetiRoadmap/EllipticCurveModularity/README.md`, R29.3, R29.4, R29.6: actual newform witness and exact conductor, not a presumed modularity predicate. |
| SerreWeightAndLevelOptimisation | `TauCetiRoadmap/SerreWeightAndLevelOptimisation/README.md:1368`–1445, §§6.1–6.3: deletion level, modularity-witness lowering, coefficient-prime conditions and removed-prime congruence. |
| AutomorphicGaloisRepresentations | `TauCetiRoadmap/AutomorphicGaloisRepresentations/README.md:1135`, §1.5: arithmetic dual, jointly continuous representation and polynomial T²−c_pT+p. |
| WeightsInEtaleCohomology | `TauCetiRoadmap/WeightsInEtaleCohomology/README.md:585`, 691–717, R34.5–R34.6: pure realization and every-embedding coefficient bound, with p away from level. |
| HeightsRationalPointsAndObstructions | `TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md:2587`, 2929, §§5.12 and 6.4: native Mordell statement for smooth proper geometrically connected curves, genus and finite H¹ assumptions. |
| MordellLawrenceVenkatesh | `TauCetiRoadmap/MordellLawrenceVenkatesh/README.md`, §11.6: alternative proof of the shared Mordell declaration, not a second point-finiteness API. |
| ModularCurves | `TauCetiRoadmap/ModularCurves/README.md:1101`, §4C: universal Legendre family and fibres. |
| EllipticLegendreCharacterInterfaces | `TauCetiRoadmap/EllipticLegendreCharacterInterfaces/README.md:195`, 211, 277, 308, 324, 446, 471, 529 and Layers 4–5: labelled normalization, twist scalars, good-prime units, primitive-character support, native descent/halving, 2-primary torsion, explicit point and trace signs. The F₅ sign and square/non-square tests agree across both roadmaps. |
| LocalFieldsRamification | `TauCetiRoadmap/LocalFieldsRamification/README.md`, Layers 3–4: lower/upper filtrations, Herbrand and inertia comparisons with normalized valuations. |
| ClassicalArithmeticCompletion | `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:1789`, 8840, §§1.51 and 4.41: squareclass characters and positive primitive quartic descent. |
| ImaginaryQuadraticClassNumber | `TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md:84`, H3.1: CM integrality and complex uniformization/endomorphisms. |
| AlgebraicCurves | `TauCetiRoadmap/AlgebraicCurves/README.md:784`, 1641, Layers 7 and 12E: separable/tame Hurwitz and the smooth proper geometrically connected function-field/cohomological genus comparison. |
| EtaleCohomologyFoundations | `TauCetiRoadmap/EtaleCohomologyFoundations/README.md:850`, F.4.0: jointly continuous finite-dimensional representations of compact groups and stable integral lattices. |
| ArithmeticGaloisRepresentations | `TauCetiRoadmap/ArithmeticGaloisRepresentations/README.md:1149`, 2498, 2583, 2680, §§1.9 and 3.1–3.3: actual reduction versus semisimplification, Swan/Artin exponents, finite wild image and prime-to-coefficient global conductor. |
| AnalyticNumberTheoryPartI | `TauCetiRoadmap/AnalyticNumberTheoryPartI/README.md`, §§0.1–0.8, 0.16–0.20, 0.24–0.25, 1.4a–d, 1.7, 3.1a–c and 3.2: exact numerical input predicates, exceptional zeros, PNT, common-height kernel, density, divisor and conductor estimates. Seven missing numerical proofs remain explicit obligations; supplied conjunctions are assembled correctly. |
| EllipticCurveModularityPartII | `TauCetiRoadmap/EllipticCurveModularityPartII/README.md:210`–290, 304, 462, 592 and 1008: EC.0–EC.5 map to §§1.4–1.8, 2.2, 4.7, 5.4–5.5, 6.18. Full versus single rational 2-torsion and non-CM hypotheses match. |
| ComputationalNumberTheory | `TauCetiRoadmap/ComputationalNumberTheory/README.md:2472`–2494, §§4.22–4.24: height verification plus central nonvanishing implies absence of real zeros. At primitive moduli1,4,8 the heights are at least10⁸,25000000,12500000, all greater than10000. |

Ownership searches used the roadmap grep tool across main and the available open heads, and searched board packages by object: Gram inequalities, smooth-modulus cancellation, Frey/Legendre models, conductor comparisons, diagonal curves, Stirling bounds and consecutive-product powers. Relevant pinned searches also covered Gram matrices/inner products and arithmetic products, not just local theorem names. `TauCetiRoadmap/SieveMethodsAndPrimePatterns/README.md:1237` consumes this roadmap's uniform Gram-row inequality. Its `Suggested.lean:42` weighted Selberg inequality has row-wise denominators and is a distinct extension. The generic uniform inequality therefore stays at this earlier owner, with no upward edge. The older board package's reverse citation is not the reviewed head and was not used as a supplier. The progression-specific signed diagonal adapter is new; Mordell and genus comparison are imported. No fully qualified declaration from another readable roadmap is reused by this file.

**Shape.** The opening summary, scope, conventions, exact contracts, build paragraph, eight layers with Examples and Dependencies, downstream discussion and references are present. The definitions have APIs and at least three discriminating Checks, including the zero/default index and wrong-sign controls. Generic carriers are deferred to their named owners. The missing full comparison interfaces are described in the Lean docstring; the stated headlines are not weakened to bounded stand-ins.

## Not verifiable

- **External gap registration and discharge.** No readable `design/plan.json` confirms the seven slugs. The README gives their owner, precise input and uses; the supplier presently exposes conditional theorems. The earlier repair reports settle the inability to edit the external plan/supplier files in this package. Acceptance here does not attest that those administrative entries or numerical proofs already exist.
- **Waived primary texts.** IwaniecKowalski2004 (Theorems 5.26–5.28, 12.13 and Proposition 5.25), RosserSchoenfeld1962 (the cited prime estimates), Tenenbaum1995 (the cited divisor/prime estimates) and RahmanRoth (the explicit Roth cutoff) remain waived. They were not requested again. Accessible quotations in BS20 and the actual supplier statements were checked; the underlying waived texts were not independently certified.
- **Mazur1978.** The sources service reached a paywalled primary text and records it as uncertified. The roadmap's citation explicitly says so. The consumed torsion-sensitive consequences were checked in EllipticCurveModularityPartII §§5.4–5.5 and against BS20's applications; this is not a verification of the inaccessible original proof.
- The finite arithmetic targets in §7.1 and all sufficiently-large analytic assertions remain proof obligations. The table gives actual checks, including every k from4 through999 for the stated cubic lower bounds, but does not claim exhaustive verification of the entire1000–29999 range or a formal proof of uniformity over all exponents.

All initially unresolved additional works were subsequently obtained legally through the sources service. No new missing-text request remains. Source manifest maintenance was already marked outside the package's authorized edits; neither that manifest nor any pull-request file was changed.

## Source issues

- **Misprint** in BS20 at Lemma 3.2, printed p. 361, line 283: the source says the displayed model has discriminant 64(abc)²; it should be 16(abc)², hence 64t_i²t_j²t_h²/g⁶; affects a stated result.
- **Misprint** in DG95 at equation (2.2), printed p. 520, line 351: the source says the coefficients eliminating the first two terms are j and j−1; it should be j−1 and j−2 for its stated indexing; affects a stated result.
- **Error** in BS20 at Proposition 9.1's Roth substitution, printed p. 384, line 1329: the source says K₀(10⁻⁵)<exp(exp(10⁶)); it should use a bound exceeding132log2·10⁵≈9149542.783 inside the second exponential, such as10⁷; affects the proof.
- **Misprint** in BS20 at §12's Landau–Page introduction, printed p. 386, line 1404: the source says the zero-free strip applies to every zero for conductors at mostT; it should also restrict imaginary height to at mostT; affects a stated result.
- **Misprint** in BS20 at Proposition 12.2, printed p. 387, line 1440: the source says the half-interval estimate without specifying nonprincipal characters; it should include the nonprincipal hypothesis used by its proof; affects a stated result.
- **Misprint** in BS20 at Proposition 12.2 proof, printed p. 387, line 1462: the source says the truncated zero sum has heightQ after introducing heightT; it should keep heightT consistently; affects the proof.
- **Gap** in BS20 at Proposition 12.2 proof, printed p. 387, line 1462: the source says the reciprocal-zero sum supplies the required uniform bound; it should control zeros near0, for example with the bounded half-interval integral kernel; affects the proof.
- **Error** in BS20 at Proposition 12.3 proof, printed p. 388, line 1476: the source says k/r+O(1) is uniformly O(k/r); it should retain the additive1 and sum its divisor contribution before estimating; affects the proof.
- **Gap** in BS20 at the final conductor argument, printed p. 388, line 1496: the source says the odd conductor equals the largest odd squarefree divisor of the coefficient product; it should use the supported squarefree divisibility actually proved, which suffices for the gcd-product inequality; affects the proof.
