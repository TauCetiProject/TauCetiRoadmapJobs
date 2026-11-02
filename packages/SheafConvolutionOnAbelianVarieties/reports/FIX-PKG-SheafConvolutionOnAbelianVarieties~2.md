# FIX-PKG-SheafConvolutionOnAbelianVarieties~2

One review, seven findings; every finding is settled below. Files changed: `packages/SheafConvolutionOnAbelianVarieties/README.md`, `Suggested.lean` (one docstring line), `sources.toml` (three locators, one `cited_for`), `design/plan.json` (top-level `gaps` only).

## F01 (P1) — applied

Changed: the plan's G1 record (no supplier) is removed from `gaps`. The old §6.2 ended with "finite B.11–B.12 bounds after each … occupancy is enumerated". The new §6.2 states every Appendix B Eulerian inequality with its exact range: the B.11–B.12 inequalities and 6(n−1)<A₁−1 are added. Scope now declares local ownership.

Evidence: this is the repair's own local-ownership branch, and the worker's plan check permits removing a `gaps` entry. ClassicalArithmeticCompletion (main) owns LS Appendix C (§§2.57, 2.71, 2.77, 2.78), which §6.2 imports. The §6.2 comparisons are calibrated to single occupancy estimates (constants 48/11, 36/11, 45/46) and have no other consumer. Each inequality was checked against LS lines 5083–5741: B.11 (5096, 5125–5150), B.12 (5168–5186), B.15–B.18, and B.19–B.31 (5403, 5434, 5482, 5532, 5546, 5602, 5666, 5727, 5740). The route covers the unbounded ranges through ClassicalArithmeticCompletion §§2.39, 2.57 and 2.71, and the bounded ranges as exact integer inequalities. §6.3's route now names the 45/46 step: 11·529=5819≥5808=12·484. The exact sweep in the table below is diagnostic only.

## F02 (P1) — applied

Changed: the plan's G3 record is removed. The loose "marked-relation" paragraph is replaced by a new target §9.3, "Transport Hodge relations and period fibres", with parts (a)–(d), a locator and four Checks. The old §9.3 is now §9.4, with its route rewritten through (a)–(d). §9.1 now pins Γ_m to the full integral isometry group and states t∘u=r·id.

Evidence:

- (a) R_V is closed algebraic, by CDK Cor. 1.3 through `gap:bounded-norm-orbit-hodge-loci`.
- (b) R_V′⊆R_V, because transport commutes with the flat maps u and t: T=r⁻¹·t∘T′∘u is a Hodge isomorphism whenever T′ is, and T′ always commutes with e=u∘t/r. The reviewer's swap P is not a transport, so PeP⁻¹≠e is excluded rather than renamed.
- (c) Fibres of the full-isometry period map are closed algebraic (CDK Thm 1.1 applied to Hom(V_x,V)).
- (d) A continuous path stays in a discrete Γ-orbit, because bounded integral isometries are finitely many in the positive-definite Hodge metric (CDK line 121).

Owned here because no earlier roadmap states the transport relation. HodgeStructures stops at period-domain points, ShimuraData §§3.1–3.4 has variations and morphisms only, and ShimuraVarieties §§3.5b.1/3.5c treat period maps through nilpotent orbits and definability only.

## F03 (P2) — applied

Changed: §4.3's "multiplicity-one component supplies maps to both supports" now reads: expand both factors into components. A multiplicity-one Λ_Y has a unique contributing pair with a_i=b_j=c_ij=1, which gives Y⇢Z₁,i and Y⇢Z₂,j. Two point-cycle Checks were added. §4.5 now uses the contributing components and deg Λ₁≥deg Λ_(Z₁)=N.

Evidence: the multiplicity of Λ_Y is Σa_ib_jc_ij with nonnegative terms, and K2 Lemma 5.2.2 (K2 line 1200) assumes irreducible Z₁, Z₂. Clean components have finite stabilizer, because a positive-dimensional B forces Λ_Z⊂A×(Lie B)^⊥. The §4.5 contradiction holds for reducible factors; an n=3 Check was added.

## F04 (P2) — applied

Changed: §8.1's collision loci "equality … on B" are replaced. Put E_r=ρ_B(T_r). For every exponent pair and every η∈E_r, the finitely many prime-to-p solutions ψ of (σ^e−σ^e′)ψ=η are excluded through their ρ_B-preimages. B is made σ-stable, and the order-4 E³ example is added as a Check.

Evidence: two bad choices give (σ^e−σ^e′)χ∈T_r, hence a value in E_r. σ^(e′−e)−1 has nonzero determinant on prime-to-p Tate modules, so the solution sets are finite. In the example 16 and 20 are both ≡0 mod 4 and η=2. The box bound M(M+1)^(c−1)<(M+1)^c is unchanged.

## F05 (P2) — applied

Changed: "the minuscule dominant weights" becomes "for each simple type the nonzero minuscule dominant weights" in the README contract and the plan's `needs`. A note records that the zero weight is minuscule everywhere, E₈ included. The same correction is applied in §4.6's route, with a new §4.6 Check.

Evidence: K1 line 433 (pp. 11–12) lists only nontrivial minuscule representations, and N=n!d≥6>1.

## F06 (P2) — applied

Changed: `ample-divisor-albanese` now covers Alb(H)≅A only. A new `gap:rational-map-extension-to-abelian-varieties` (AbelianSchemesAndArithmeticModuli §A1.8) covers smooth X⇢A extending uniquely. §4.5 and the Layer 4/9 Dependencies cite both. Pattern repair: `geometric-character-comparisons` is split, with a new `closed-extension-constructible-comparison` (EtaleCohomologyFoundations §F.4.6) for §2.4.

Evidence:

- §A1.8 contains the Weil argument but states it only over a Dedekind base, so the field case is a genuine gap.
- The gluing of two distinct points of E to a node gives the smoothness counterexample (K2 line 1221, JV line 947).
- The π₁ clauses (§§0.1–0.2, F.0.2) and the constructible clauses (§2.4) have different inputs and consumers.
- The other contracts each state one object for one consumer.

## F07 (P3) — applied

Changed: §6.2 Check "becomes 1/2<−1" now reads "A(2,1)=1, so … becomes 1/2<0 and fails".

Evidence: ClassicalArithmeticCompletion §2.18 Check A(2,0)=A(2,1)=1.

# Checks run

- **Elaboration.** `lake env lean packages/SheafConvolutionOnAbelianVarieties/Suggested.lean`, run from the content checkout, exited 0 with exactly six warnings, all "declaration uses `sorry`" (lines 66, 74, 86, 99, 110, 127). No Tau Ceti module was imported or built.
- **Signatures.** A scratch file with `#check @name` for all ten declarations elaborated with exit 0. Every type is identical to the pre-repair `signatures.md`; only line numbers moved by +1 from the docstring line. No binder was lost and no Lean name changed. The Lean file changed only in the module docstring wording ("transport Hodge relations of polarized integral variations").
- **Direction.** The `gate --depcheck … --movable` output, verbatim:

  ```text
  depcheck: 56 roadmaps, 648 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line. All new citations point to roadmaps earlier in ORDER.txt: AbelianSchemesAndArithmeticModuli (line 46), ClassicalArithmeticCompletion (104), ShimuraVarieties (114), ShimuraData (130), and EtaleCohomologyFoundations and HodgeStructures on main. SheafConvolutionOnAbelianVarieties is at line 297.
- **Citations.** `roadmaps resolve` lists the same three leads as before: SpringerResolutionAndCharacteristicCycles §D, LieHighestWeightPartII §N2 and StableReductionPartII §MC.4. All three are board packages earlier in the order, already checked by the review, and none was introduced here. The new citations were checked at their heads or on main:
  - AbelianSchemesAndArithmeticModuli §A1.8 (PR head),
  - EtaleCohomologyFoundations §§F.0.2, F.4.6 (main),
  - HodgeStructures L1, L3 (main),
  - ShimuraVarieties §§3.5b.1, 3.5c (head),
  - ShimuraData §3.4 (head),
  - ComplexComparisonPartII §§C5.2–C5.3 (head),
  - ClassicalArithmeticCompletion §2.39(c),(e) (main).
- **Plan.** Compared with HEAD, only the `gaps` value of `design/plan.json` differs. Every entry has a `slug`, and the 16 README contracts match the 16 plan gaps in slug, supplier and `needs` text.
- **Sources.** Every cited text is already in the manifest; there is no `needs-references.toml`. Page locators were re-read: K1 line 433 is p. 11, CDK line 121 is p. 4, JV line 947 is p. 19, K2 line 1221 is p. 25, and LS lines 5083–5741 span pp. 101–115.

# Adversarial pass (statements added or changed)

| Statement | Instances | Computed values | Result / change |
|---|---|---|---|
| §6.2 n≥5 list | n=5; n=4; n=2; n=11; all 5≤n≤400 (exact integers, √ by rational upper bounds at 10⁻³⁰) | n=5: 8<25, 24<25, 1848<1875, 660<676, 58<66, 390<15625, 0<17576, 30<44616, 0<4225, 58<66; n=4: 6(n−1)=18>10; n=2: 1/2 vs 0; n=11: 8355301812<8427392875 (ratio 0.991) | 5,960 instances pass, none fails (diagnostic only); range n≥5 necessary; Checks added |
| §6.2 n≥6, n≥8 entries | n=5,6,7,8 | 9(n−1): 36>26 (n=5), 45≤57; 247≤A₁: 120 (n=7) fails, 247=247 (n=8, so ≤ not <); 140A₇=140<3722098081 | ranges exact; weak inequality kept |
| §6.2 5≤n≤10 B.11 entry | n=5,7,10 | √(2A₄)+1 vs A₁²/(48(n−1)): 2.41≤3.52; 49.81≤50.00; 1619.86≤2375.39; constant 49 at n=7 gives 48.98<49.81 | tight at n=7; Check added |
| §6.2 B.11 ratio entries | n=5,6,10 | 6·13·46²A₂=10893168<15057900; 27·46²A₂=17253864<26316900 (n=6), 2733194880<8311968900 (n=10) | pass |
| §6.2 B.15–B.18 sums | n=5,…,19 by range | B.16 at n=5: 2A₁+3+0+1=56<66 | pass |
| §6.3 constant | — | 11·529=5819≥12·484=5808 | (1+√(11/12))/2≥45/46 holds |
| §4.3 component decomposition | Λ_x+Λ_y, Λ_z+Λ_t with distinct sums; x+z=y+t; Λ_B for B⊂E×E | degrees 2·2=4, Λ_(x+z) multiplicity 1, contributing pair unique; with x=0,y=a,z=b,t=b−a, multiplicity 2; Λ_B lies over a line in V (Gauss degree 0) | statement now on components; both instances added as Checks |
| §4.5 component bound | n=3,d=1 | deg Λ_(Z₁)=6 ⇒ deg Λ₁≥6 ⇒ deg Λ₂=1<2 | contradiction holds for reducible factors; Check added |
| minuscule contract, §4.6 | A₁ weights 0, ω₁; E₈ weight 0 | dimensions 1 and 2; E₈: 1; N=n!d≥6 | "nonzero" added; zero weight excluded by 1<N |
| ample-divisor-albanese | dim A=2, d=1 and d=2; dim A=3 | g=1+d: Alb dim 2 (d=1, theta divisor), 3≠2 (d=2); dim 3: isomorphism | dim A≥3 kept |
| rational-map-extension | P¹⇢E; nodal curve from E with p≠q glued | constant map extends; inverse normalization undefined at node | smooth source required |
| closed-extension constructible | δ_x over k; new K-point y | End dim 1 before/after; Hom(δ_x,δ_y)=0 | full faithfulness only on objects from k |
| geometric-character-comparisons | E×E 2-torsion | 16=4·4 characters | product clause |
| §8.1 collision loci | E³, a↦(2a,3a,5a), σ=3 on Z/4, M=1, c=3; E×E example | exponents 16, 20≡0 mod 4, χ−σχ≡2∈E₁; bad ≤M(M+1)^(c−1)=4<8; c=2, M=2: 6<9 | all η∈E_r excluded; Check added |
| §9.1 period quotient, trace | n=3, m=1, m′=2 | r=2⁶=64, t∘u=64, e=diag(1,0), e²=e | Γ_m pinned to full isometry group |
| §9.3(a) | constant variation; path reversal | R=S×S; symmetric, transitive | holds |
| §9.3(b) | u=(1,0)ᵀ, t=(64,0); swap P; r=1 | T=r⁻¹tT′u; PeP⁻¹=diag(0,1)≠e but transports commute with e; inverse u,t give R_V′=R_V | holds; swap is the negative control |
| §9.3(c) | Y(3), τ and τ+1 with stabilizer ±1 | equal in SL₂(ℤ)\ℍ; δ=±T∉±Γ(3), so not in R | converse only for the monodromy quotient |
| §9.3(d) | ℂ/ℤ[i]; (3+4i)/5 | integral automorphisms {±1,±i}, order 4; (3+4i)/5 has minimal polynomial x²−(6/5)x+1 (non-integral), so infinite order | finiteness needs the lattice; connectedness needed (Y(3) row) |
| §9.4 route | Noetherian minimum; n=2 | Z_m minimal ⇒ Z_m′=Z_m for m|m′; n=2 uses §9.2 with Sp_2g(ℤ) quotient, g=1+d | consistent with §9.1's full-isometry quotient |

# Notes for the maintainer

- **Gap changes, announced to suppliers.**
  - New: `rational-map-extension-to-abelian-varieties` (AbelianSchemesAndArithmeticModuli §A1.8) and `closed-extension-constructible-comparison` (EtaleCohomologyFoundations §F.4.6).
  - Narrowed: `ample-divisor-albanese` (Albanese only) and `geometric-character-comparisons` (π₁ only, section now F.0.2).
  - Reworded: `minuscule-weight-table` (nonzero weights).
  - Removed: the legacy records G1 and G3, now owned as targets §6.2 and §9.3.
- **Stale design prose.** The design nodes (not editable at the package stage) still mention "gap G1" and "G3" in their proof prose; the README is authoritative.
- **Renumbering.** Layer 9 now has §9.3 (transport relations, new) and §9.4 (the former §9.3, quasi-finiteness). Downstream text citing "SheafConvolutionOnAbelianVarieties §9.3" for quasi-finiteness should cite §9.4. No Lean name changed.
- **Ownership against open pull requests.** I searched the roadmap service by object (period maps and their fibres, rational-map extension, Eulerian comparisons, minuscule tables) at the open heads and on main. No other roadmap owns these.
- **Suspicious content.** The review contained no instructions directed at the worker.
