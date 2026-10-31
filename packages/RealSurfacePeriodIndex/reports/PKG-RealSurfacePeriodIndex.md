# PKG-RealSurfacePeriodIndex

Package of the accepted design `packages/RealSurfacePeriodIndex/design/` into `packages/RealSurfacePeriodIndex/README.md`, `Suggested.lean`, `metadata.toml`, with `sources.toml` and the `gaps` list of `design/plan.json` updated.

## Headline theorems

| Headline (B19) | Status | Lean name / what is missing |
|---|---|---|
| de Jong's theorem in characteristic 0 (Theorem 0.1 / 1.1; README §2.9) | stated | `index_eq_orderOf_of_isAlgClosed` |
| Norm bound ind \| 2 per over real closed fields (§0.1; README §2.10) | stated | `index_dvd_two_mul_orderOf_of_isRealClosed` |
| Theorem 0.3 (README §7.4) | stated (field form: f.g. of trdeg 2 over ℝ, nonreal) | `index_eq_orderOf_of_not_isSemireal` |
| Theorem 0.4 (README §7.5) | stated in birational form; scheme form not statable | `index_eq_orderOf_of_forall_isRealClosed`; the scheme form needs Br(U) of a scheme and evaluation at real points, absent at the pins |
| Theorem 0.5 | not statable | needs Br(S), Borel equivariant cohomology H²_G(S(ℂ), 𝔽₂), the real Kummer sequence and real-locus components |
| Theorem 0.6 | not statable | needs real Enriques surfaces, halves of the real locus, w₁ of the real locus, Br(S) |
| Proposition 0.7 | not statable | needs K3 surfaces, semialgebraic cohomology over a non-archimedean real closed field, Br(S) |
| Theorem 0.10 (README §7.11) | stated (field form) | `not_anisotropic_of_not_isSemireal` |
| Theorem 0.12, u ≤ 4 (README §7.8) | stated | `not_anisotropic_of_hasZeroTotalSignature` (with the definition `HasZeroTotalSignature`) |
| Theorem 0.12, u(ℝ(S)) = 4 (README §7.10) | stated | `exists_anisotropic_hasZeroTotalSignature` |
| Theorem 0.13 (README §7.13) | stated as the pair-of-quadrics theorem that proves it; del Pezzo form not statable | `exists_common_zero_of_not_isSemireal`; del Pezzo surfaces are not at the pins |

The field forms are not weakenings: for a smooth projective model S of K, K nonreal ⟺ S(ℝ) = ∅ (Laurent-series embedding at a real point; Artin–Lang), and the birational form of Theorem 0.4 is equivalent to the scheme form through §§0.5, 1.1 and 7.7 (README §7.5, step 4). The pair-of-quadrics statement is the source's own route (Amer–Brumer + Theorem 0.10) and implies Theorem 0.13 through the anticanonical model §7.12; its hypothesis "K nonreal" is weaker than C(ℝ) = ∅.

## Repair of the gate refusal (TeX residue)

The worker's checks refused the README with `tex=220`: 220 occurrences of the TeX-only braces `_{` and `^{` outside code spans (for example `H^{1,1}`, `p_{b*}β`, `X_{F_i}`, `C_{i+1}-field`, `·1_{Θ(α)}`, `Σ_{4 ∤ m_i}`). Every one is now inside a code span, and the mathematics is unchanged: 136 README lines changed and no word changed. Each formula was wrapped as a whole, not as a fragment. For example `(β mod 2)|_{T_U} = p*α̃`, `[ξ]₁|_{Θ(α)} = 0`, `S ∖ ⋃_{m_i odd} Δ_i`, `ε̂ + Σ_{4 ∤ m_i} ι*cl_R(Δ_i)` and `f = (√a · t^{q/2} · (1 + ε)^{1/2})²` each became a single code span. No heading contained a hit, so no anchor changed. The gate's own text scanners were then re-run on the README and Suggested.lean: latex 0, tex 0, prnum 0, sorry-data 0, sorry-examples 0, residue 0, private-paths 0, imports 0, set_option 0, readme-ids-missing 0, empty-sections 0, round-labels 0, long-fences 0, layer-ids 0, target-ids 0. Every line has an even number of backticks. No statement changed, so the adversarial-pass table below still applies unchanged.

## Corrections and changes relative to the design

- **Review note F01 (corestriction).** The design's construction PI.0/brauer-corestriction is deleted. Its uses (§0.12 step 4, §7.2, §9.3) consume HeightsRationalPointsAndObstructions §2.19a (`finiteFlatBrauerCorestriction`, `pullback_comp`) for Spec L → Spec K, read on Br(K) through SchemeAndStackFoundations §2.22 (`brauer_field`). ProfiniteCohomology Layer 6 is no longer needed.
- **Review note F02 (pins).** The README names the manifest pins (Mathlib `6b7abb3c…`, Tau Ceti `a91d3aaf…`); every library declaration cited was elaborated at these pins (a scratch file of `#check`s of all 47 Mathlib/Tau Ceti names: no error).
- **Review note F03 (lattice step).** §6.13 step 5 now takes δ in the subgroup H²_G(T(ℂ), ℤ(1))_van and derives that its image is a full lattice of the vanishing summand (finite index m of the image in Λ, then m(Λ ∩ V) lies in the image of _van); step 6 uses that δ has no constant component. A Check records why an unconstrained δ fails.
- **Moved down: Tsen–Lang.** The design cited QuadraticFormInvariantsPartII Q2.5 (gap:q2-tsen-lang). QuadraticFormInvariantsPartII is at line 328 of the merge order, after this roadmap (line 153), and no earlier roadmap, main roadmap or open pull request states C_i fields (`roadmaps grep 'Tsen.Lang|C_i.field|quasi.algebraically closed'`: no match; only `tsen_theorem` for transcendence degree 1 in SchemeAndStackFoundations §2.16). It is now target §0.7 (EKM §97, Theorem 97.2, Corollaries 97.5–97.6, Theorem 97.7, pp. 385–386; B19 Theorem 0.8, p. 65), and the gap is dropped. QuadraticFormInvariantsPartII may import §0.7.
- **Gaps resolved by the supplier.** AlgebraicTopologyPartII's packaged README now states 21 of the 22 targets the design requested: §7.6, §9.2, §9.3, §10.3, §10.5, §12.3, §12.4, §14.1–§14.4, §15.1–§15.6, §16.1, §16.3, §16.4 (each read and compared with the gap's `needs`: hypotheses and conclusions agree, including the minus sign of §15.4, the plus sign and indeterminacy of §16.4, and n/2 mod 2 in §15.5). Free descent is AlgebraicTopologyPartII Layer 6, which consumes it from MotivesAndAlgebraicCycles §7.6a (its supplier contract states the i > 2d isomorphism). These are now citations, not gaps. §16.2 assumes invariant control data as a hypothesis, so gap:at2-stratified-pair-transport stays, narrowed to the existence of invariant f-compatible control data.
- **Remaining gaps (plan.json and README).** `real-artin-comparison` (ComplexComparisonPartII §C6.3; no real or equivariant comparison at head 2d50a88), `picard-cokernel-torsion-free` (MotivesAndAlgebraicCycles §7.8; still used inside the divisor theorem without a named statement at head 79b02f6), `at2-stratified-pair-transport` (AlgebraicTopologyPartII §16.2, narrowed). Each is stated in its supplier subsection of "Exact supplier contracts" as "What <Supplier> must provide (gap:<slug>): …".
- **Generalisations.** §7.7 is stated for α ∈ Br(U) of any period (Br(ℝ[[z₁, z₂]]) ≅ Br(ℝ) has order 2 whatever the period; the design's restriction to Br(U)[2] was unnecessary). §§7.4, 7.11 and 7.13 add the field forms over nonreal finitely generated fields.
- **New definition.** `HasZeroTotalSignature` (§0.6): zero total signature phrased as half-dimensional total isotropy of the base change to every real closed field, equivalent to the signature definition for nondegenerate forms; degenerate forms are harmless in the u-invariant statements.
- **Form.** The field lists, Lean API names, target ids and "suggested home" lines of the design are rewritten as prose sections k.n with API bullets and Checks that carry no Lean names of this roadmap other than `HasZeroTotalSignature`; source misprints and gaps are kept as "Source corrections" E1–E25 and cited from the targets.

## What the README could not support

Nothing in the design was dropped. Theorems 0.5, 0.6 and Proposition 0.7 remain README targets only (carriers missing at the pins, listed above). The classical inputs cited only by locator (BCR, BRO80, CTP90, ARA75, SPR55, EL73, DK96, DIK00, SER06, SCH94, GG73, BRE97, DIM85) are settled as uncertified in the manifest and were not reopened.

## Duplication removals

| Object | Where it already lives | Action |
|---|---|---|
| Corestriction Br(L) → Br(K) with cor ∘ res = [L : K] | HeightsRationalPointsAndObstructions §2.19a (`finiteFlatBrauerCorestriction`, `pullback_comp`) | design target deleted; three uses re-pointed |

Swept by object with `roadmaps grep` over main and the 354 open heads, and over the board packages: Harrison topology, signatures at orderings, the Elman–Lam u-invariant, Amer–Brumer, Springer's theorem, Albert forms, Pfister's criterion, de Jong's theorem, period/index of Brauer classes, Green's criterion, Voisin's cone, degree-four del Pezzo models, halves of real Enriques surfaces, real closedness of the Puiseux field, Tsen–Lang. No other owner found (QuadraticFormInvariants has Pfister forms, not the criterion; EnriquesSurfaces mentions a quartic del Pezzo as a different object). Ownership against open pull requests was checked through the `roadmaps` index (all 354 open heads); the brief's sibling list carried names but no checkout paths, so no sibling files beyond that index were read.

## Adversarial pass (statements written or changed)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `HasZeroTotalSignature` (§0.6) | ⟨1,−1⟩, ⟨1,1⟩, ⟨1,1,−1⟩, ⟨1,0⟩ over ℝ; ⟨1,−t⟩ over ℝ(t); ⟨1,x,y,xy⟩ over ℂ(x,y) | Witt index of p⟨1⟩⊥m⟨−1⟩ is min(p,m) = (n−\|s\|)/2; ⟨1,−1⟩: W = line x=y, 2·1 = 2 ✓; ⟨1,1⟩: index 0 ≠ 1 ✗; ⟨1,1,−1⟩: 2·dim W = 3 impossible ✗ (though isotropic); ⟨1,0⟩: W = span e₂ ✓ with signature 1 (degenerate, isotropic anyway: radical vector v has 2q(v)=b(v,v)=0); ⟨1,−t⟩ at t<0 positive definite ✗; ℂ(x,y): no map to a real closed field, holds | predicate = zero signature on nondegenerate forms; degenerate case harmless | Checks added |
| Tsen–Lang (§0.7) | ℝ; ℂ(x); ℂ(x,y); d = 0; step-3 count | x₁²+⋯+x_N² anisotropic over ℝ for all N; ⟨1,x⟩ anisotropic over ℂ(x) (−x non-square), ternary forms isotropic (3 > 2¹); ⟨1,x,y,xy⟩ anisotropic, 5 > 2² forces isotropy; d = 0: nonzero constant has no zero, so d ≥ 1 required; N(m+1) > (dm+c+1)dⁱ for large m iff N > d^{i+1} | holds (EKM 97.2–97.7 read, EKM line 20208–20295) | new target |
| §0.12 step 4 (per \| ind via §2.19a) | ℍ/ℝ with L = ℂ; Sylow step | ind·α = cor(α_ℂ) = cor(0) = 0 = 2·[ℍ]; [L:F] = l^k kills α_F, gcd with per(α) is 1 | holds | re-pointed |
| `index_eq_orderOf_of_isAlgClosed` | k = ℂ, K = ℂ(x,y), A = (x,y); A = M_n(K); k = ℚ̄ | index 2 = order 2; index 1 = order 1; (x,y) over ℚ̄(x,y): 2 = 2 (two Springer steps) | holds | — |
| `index_dvd_two_mul_orderOf_of_isRealClosed` | R = ℝ, K = ℝ(x,y): Albert class, (−1,−1); K ⊇ ℂ | 4 \| 2·2; 2 \| 2·2; K = ℂ(x,y): ind = per divides 2per | holds | — |
| §6.13 step 5–6 (F03) | δ ∈ _van vs unconstrained; lattice | constant component of 2δ is 0 for δ ∈ _van (else p*p_*δ); image I of index m in Λ, y ∈ Λ∩V ⇒ my ∈ I ∩ V = image of _van ⇒ m(Λ∩V) ⊂ image, full lattice of V | holds | rewritten |
| §7.4 / `index_eq_orderOf_of_not_isSemireal` | K = ℝ(x,y,z \| x²+y²+z² = −1); K = ℂ(x,y); negative control K = ℝ(x,y) | −1 = x²+y²+z²: nonreal, model the anisotropic quadric with S(ℝ) = ∅; ℂ(x,y): de Jong; real ℝ(x,y): Albert class per 2, ind 4 | holds; hypothesis needed | field form added, negative Check added |
| §7.5 / `index_eq_orderOf_of_forall_isRealClosed` | K = ℝ(x,y): (−1,−1), (x,y), (1+x², y), (−1, 1+x²); nonreal K | (−1,−1)_R ≠ 0: hypothesis fails; (x,y) at x,y<0 equals (−1,−1): fails; (1+x², y): 1+x² > 0 at every ordering so trivial over every R, nontrivial over K (residue 1+x² along y = 0), per = ind = 2; (−1,1+x²) = 0; nonreal K: vacuous, reduces to 0.3; any K → R factors through the relative algebraic closure, a real closure | holds | birational form and route added |
| §7.7 any period | α of period 4 at x ∈ U(ℝ) | Br(ℝ[[z₁,z₂]]) ≅ Br(ℝ) = ℤ/2 (henselian), so α restricted there is 2-torsion; injectivity into Br(K) independent of per | holds | hypothesis Br(U)[2] → Br(U) |
| `not_anisotropic_of_hasZeroTotalSignature` | K = ℝ(x,y): ⟨1,1,−1,−1,1,−1⟩; §7.9 form ⊥ ⟨1,−1⟩; K = ℂ(x,y); dim 4 | dim 6, signature 0, contains a hyperbolic plane: isotropic; ⊥⟨1,−1⟩ isotropic; ℂ(x,y): C₂, 5-dim forms isotropic; dim 4 anisotropic allowed (§7.9), bound is strict | holds | — |
| `exists_anisotropic_hasZeroTotalSignature` | K = ℝ(x,y) at the point (i, 0) | y₁, y₂ sums of two squares; signature 1+1−1−1 = 0; anisotropic over ℂ((y₁))((y₂)) by two Springer steps; anisotropic ⇒ nondegenerate, so predicate = zero signature | holds | — |
| `not_anisotropic_of_not_isSemireal` (§7.11) | K = ℝ(x,y,z \| x²+y²+z² = −1): ⟨1,1,1,1,a⟩; negative control ℝ(x,y): 5⟨1⟩ | isotropic; 5⟨1⟩ anisotropic over real ℝ(x,y), so nonreality needed | holds | statement generalised to nonreal K |
| `exists_common_zero_of_not_isSemireal` (§7.13) | K = ℝ(C), C: x²+y² = −1; negative control K = ℝ(t), q₁ = Σxᵢ², q₂ = 0; q₁ = q₂ = 0 | −1 = x²+y² in K: nonreal; K(t) f.g. trdeg 2 nonreal, Theorem 0.10 + Amer–Brumer; over real ℝ(t), Σxᵢ² has no nonzero zero; zero forms trivial | holds; hypothesis needed | pair form stated |
| Conventions: K nonreal ⟺ S(ℝ) = ∅ (smooth projective model) | x ∈ S(ℝ) | K ⊂ Frac ℝ[[z₁,z₂]] ⊂ ℝ((z₁))((z₂)), ordered by leading coefficients, −1 not a sum of squares; converse by Artin–Lang | holds | — |
| Supplier re-pointing AT2 §§ | each of the 21 sections | read at the package head: statements agree with the gaps' `needs` (§15.4: b = p*η − ψ(ζ); §16.4: g(δ)+ζ∪ω = g(η₀∪ω) modulo image; §15.5: n = 2,4,6 → H² reduction 1,0,1; §16.2 needs control data as hypothesis) | holds; §16.2 partial | 21 gaps → citations, 1 gap narrowed |
| §6.11 wording | — | the hypotheses listed are those of AT2 §16.2 except the control data | holds | reworded |

The untouched targets keep the design's statements; their computed rows are those of the two design reviews (`reports/REV-DESIGN-RealSurfacePeriodIndex*.md`).

## Lean file

- `lake env lean packages/RealSurfacePeriodIndex/Suggested.lean` (run from the content checkout, re-run after the repair; the file is unchanged): exit 0, exactly **8** warnings, all ``declaration uses `sorry` `` (lines 76, 85, 97, 107, 118, 128, 136, 148, one per theorem), no other message. The modules `TauCeti.Algebra.BrauerGroup.BaseChange`, `TauCeti.Algebra.BrauerGroup.Group` and `TauCeti.Algebra.CentralSimple.Index` were built first with `lake build <module>`.
- `#check @name` of all nine declarations in one scratch file: every binder appears in the declaration's own signature (no section variables are used), and each elaborated type matches its README statement (generality: §7.8 has no finite-generation hypothesis, as in the README; §§2.9, 2.10, 7.4, 7.5, 7.10, 7.11, 7.13 carry `Algebra.EssFiniteType`). Nothing changed after the comparison.
- One definition (`HasZeroTotalSignature`, real body on Mathlib carriers), no sorry'd data, no `set_option`, imports `Mathlib` plus three Tau Ceti modules that exist at the pin.

## Dependency check

```
$ tauceti-roadmap … gate --depcheck packages/RealSurfacePeriodIndex/README.md --name RealSurfacePeriodIndex --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 650 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved: line. All suppliers precede line 153 of the merge order (AlgebraicTopologyPartII 118, ComplexComparisonPartII 42, MotivesAndAlgebraicCycles 82, ShimuraData 128, WeilConjectures 140, HeightsRationalPointsAndObstructions 152, ResolutionOfSingularitiesCharacteristicZero and AlgebraicModuliForArithmeticGeometry earlier) or are on main (SchemeAndStackFoundations, QuadraticFormInvariants, RealAlgebraicGeometry, FormalLaurentPuiseux, AffineMorseLefschetz, AlgebraicTopology, StableReduction, ModularCurves, PurityOfBranchLocus, RepresentationTheory/SemisimpleAlgebras); EnriquesSurfaces is another author's open pull request adding a new folder (E1a, E1c, E1d resolved at head dd61167). QuadraticFormInvariantsPartII appears only under "Downstream consumers".

`roadmaps resolve` lists one lead: "AlgebraicTopologyPartII Layer 6: no roadmap AlgebraicTopologyPartII on main or in an open pull request". This is a false positive for the resolver's scope: AlgebraicTopologyPartII is a board package earlier in the merge order (line 118; this roadmap is line 153), read at `packages/AlgebraicTopologyPartII/README.md`; no Lean name is unresolved.

## Sources

`sources.toml`: EKM locator extended by Theorem 97.2 and Corollaries 97.5–97.6 (Theorem 97.7 was recorded); `cited_for` relabelled from design layer ids to "Layer k". `sources check`: 0 problems. No new source was fetched and no `needs-references.toml` was written: every cited text is in the manifest (certified or settled as uncertified).
