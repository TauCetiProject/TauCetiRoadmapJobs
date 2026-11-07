# Roadmap: modular curves, part III — the Bakker–Tsimerman route

**Summary.** This roadmap continues ModularCurves and ModularCurvesPartII in the direction of Bakker and Tsimerman's function-field analogue of the Frey–Mazur conjecture: for every gonality bound `N` there is `M_N` such that, over an algebraically closed field of characteristic zero, two nonisotrivial elliptic families over a smooth curve of gonality less than `N` whose `p`-torsion local systems are isomorphic, for a prime `p > M_N`, are isogenous over the same base (BT16, Theorems 1–2; BT16 lines 51–63). The proof passes through the diagonal quotient surface `Z(p) = (X(p) × X(p))/PGL₂(𝔽_p)` and the theorem that every curve of bounded gonality on `Z(p)` is a Hecke curve once `p` is large (BT16, Theorem 3 and Theorem 29; BT16 lines 69–70 and 1337). Every target of that route — the surface and its special strata, the compact metric and systole estimates, the small-height and repulsion arguments, the four multiplicity bounds, the gonality-pencil construction, ramification decay, Abramovich's gonality bound, full monodromy, the descent to an actual isogeny and the bounded-genus and minimal-model corollaries — is owned by the roadmap GeometricFreyMazur, on which this roadmap builds. This roadmap therefore owns no definition and no theorem: it records, result by result, where each step of the route is developed, and it adds nothing to that development.

## Scope and ownership

This roadmap owns no targets. Each result of BT16, its erratum BTE and ABR96 used by the route is a target of GeometricFreyMazur, in the following sections.

- The nonisotrivial elliptic family (nonconstant `j` on a connected base) and its `p`-torsion as a rank-two `𝔽_p` local system with its linear action are inputs of GeometricFreyMazur, taken from ModularCurves §0D (finite étale schemes and Galois actions) and §5B (full ordered bases and fixed pairing) through its "Exact supplier contracts"; the projective scalar-framed level curve `X(p)` is ModularCurvesPartII §4.7, imported there.
- The projective `p`-frames with left action by inverse precomposition, the diagonal quotient surface `Z(p)` with its two determinant-square-class components, the Heegner and anti-Heegner strata `CM⁺`, `CM⁻`, the singular bicusps, the exhaustive branch locus with orders 2, 3 and `p`, and the cyclic Hecke images `H_m` with degree `ψ(m)` are GeometricFreyMazur §§0.1–0.6 (BT16 §§2.3–2.4).
- Compact triangle uniformization of a component of `X(p)` for `p > 5`, triangle coordinates, a systolic witness surviving cusp filling, the cusped systole, cusp separation, the comparison `tanh²(r/2) h_Y ≤ h_X ≤ h_Y` of compact and cusped metrics, the compact injectivity radius `2 log p + O(1)` and the cusp-coordinate and Hecke-enlargement estimates are GeometricFreyMazur §§1.1–1.8 (BT16 §3, Lemmas 5–6, Proposition 7, Corollary 8, Lemma 9).
- The integral height on `M₂(ℤ)`, small integral lifts of short elliptic and cusp displacements, the cusp double-coset bound, uniqueness of a nearby cusp lift, the intersection of cusp balls and the count of nearby cusps are GeometricFreyMazur §§2.1–2.7 (BT16 Lemmas 10–11, Proposition 12).
- Signed small-height reconstruction, the rank of the distinct-Heegner centralizer equations, Heegner repulsion, conjugate Hecke loci, the absence of anti-Heegner points on Hecke curves and three-bicusp repulsion with both determinant signs are GeometricFreyMazur §§3.1–3.6 (BT16 Lemma 15, Remark 16, Proposition 17; BTE Proposition 2.1).
- Big diagonals and small Hecke curves, the logarithmic quadratic-centralizer count, the diagonal-overlap dichotomy and the cusp-rotation overlap bound are GeometricFreyMazur §§4.1–4.4 (BT16 Proposition 18).
- The canonical-degree convention `vol(C) = 2π Deg C`, the Heegner, anti-Heegner and `p`-weighted singular-bicusp multiplicity bounds, the projectionwise cusped-volume measure and its error, Hecke tubes away from cusps and the big-diagonal multiplicity bound for nonconstant non-Hecke projections are GeometricFreyMazur §§5.1–5.8 (BT16 Propositions 25–27, Lemma 28; BTE Propositions 4.1–4.2).
- Symmetric powers of `Z(p)`, reduction to the normalization of the image, the gonality-pencil cycle map `ℙ¹ → Symⁿ Z(p)`, the normalized wreath pullback and the weighted projection cycles are GeometricFreyMazur §§6.1–6.5 (BT16, proof of Theorem 29).
- Ramification support, the bound `6·n!·p` on cyclic local indices with a single factor `p`, ramification decay, the contradictory Hurwitz inequalities and bounded-gonality rigidity over `ℂ` are GeometricFreyMazur §§7.1–7.5 (BT16 Theorem 29).
- Abramovich's bound `gon(X_Γ) ≥ 7[PSL₂(ℤ) : Γ]/800` for congruence subgroups, growth of proper-subgroup indices, full `SL₂(𝔽_p)` torsion monodromy on a bounded-gonality base and the absence of a quadratic self-twist are GeometricFreyMazur §§8.1–8.4 (ABR96 Theorem 0.1; BT16 remark after Theorem 2).
- The classifying map of an actual torsion isomorphism, the rank-one geometric Hom lattice, the geometric prime-to-`p` isogeny from Hecke containment, the descent removing the quadratic twist for odd `p`, uniform rigidity and full monodromy over every algebraically closed field of characteristic zero, geometric Frey–Mazur over the original base and its function-field form are GeometricFreyMazur §§9.1–9.8 (BT16 Theorems 1–3).
- Bounded-genus rigidity, the Hecke property of rational and elliptic curves on `Z(p)`, the resolution of its cyclic quotient singularities and its known curves, the classification of rational curves on the resolution and a minimal model reached by contracting known curves are GeometricFreyMazur §§10.1–10.5 (BT16 Corollaries 30–32).

The surface-theoretic, analytic and abelian-scheme inputs of these sections (SchemeAndStackFoundations, AlgebraicCurves, FuchsianOrbifolds, ComplexKahlerGeometry, RiemannianGeometry, ComplexComparisonPartII, AbelianSchemesAndArithmeticModuli, NeronModelsAndSemistableAbelianVarieties, CongruenceSpectralGap) are GeometricFreyMazur's suppliers and are cited there with their sections.

## Conventions

The conventions are those of GeometricFreyMazur, "Conventions": `k` is algebraically closed of characteristic zero; a curve is a nonempty smooth geometrically connected quasiprojective `k`-curve whose genus and gonality are those of its smooth proper model; `p` is a prime, greater than 5 unless a statement says otherwise; `X(p)` is the two-component scalar-framed coarse level curve, `G = PGL₂(𝔽_p)` acts on frames on the left by `g·φ = φ ∘ g̃⁻¹`, and `Z(p) = (X(p) × X(p))/G`; every Hecke index `m` is a positive integer prime to `p`, with cyclic degree `ψ(m) = m ∏_(ℓ | m) (1 + 1/ℓ)` (so `ψ(4) = 6`, against `σ₁(4) = 7` for all subgroups of index 4); hyperbolic metrics have curvature −1 and `vol(C) = 2π Deg C`.

## Exact supplier contracts

### From TauCetiRoadmap.GeometricFreyMazur

All of Layers 0–10, with the definitions, API, Checks and theorems stated there. In particular this roadmap relies on the following acceptance statements of GeometricFreyMazur's `Suggested.lean`:

- `TauCetiRoadmap.GeometricFreyMazur.gonality`, the least finite degree `[K : k(f)]` over a transcendental `f ∈ K`, which on a one-variable function field is the gonality of the smooth proper model (GeometricFreyMazur, "Conventions").
- `TauCetiRoadmap.GeometricFreyMazur.geometric_frey_mazur`: for every `N` there is `M` such that, for every algebraically closed field `k` of characteristic zero, every one-variable function field `K/k` of gonality less than `N`, nonisotrivial elliptic curves `W`, `W′` over `K`, a prime `p > M` and a Galois-equivariant additive isomorphism of geometric `p`-torsion, `W` and `W′` are isogenous over `K` (GeometricFreyMazur §9.8; BT16 Theorem 2).
- `TauCetiRoadmap.GeometricFreyMazur.full_monodromy`: under the same hypotheses on `k`, `K` and `W`, every prime `p` with `p > 5` and `800N < 7p` has full determinant-one geometric `p`-torsion image (GeometricFreyMazur §9.6, with §8.3).

The family form over the original open base (GeometricFreyMazur §9.7; BT16 Theorem 1) and the rigidity theorem on `Z(p)` (GeometricFreyMazur §§7.5 and 9.5; BT16 Theorem 3) are README targets there.

### From Mathlib and Tau Ceti

Nothing is consumed directly; the native carriers used by the route are listed in GeometricFreyMazur's "Exact supplier contracts", "From Mathlib" and "From Tau Ceti".

## How to read the build

There are no layers here. The build is GeometricFreyMazur's: Layer 0 constructs `Z(p)` and its special loci; Layers 1–5 prove the metric, height, repulsion, overlap and multiplicity estimates; Layer 6 turns a curve of gonality `n` into a normalized wreath pullback; Layer 7 shows that its ramification is negligible against canonical degree and derives bounded-gonality rigidity; Layer 8 gives Abramovich's bound and full monodromy independently; Layer 9 descends Hecke containment to an actual isogeny over the original base; Layer 10 derives the bounded-genus and minimal-model corollaries.

## Downstream consumers

A roadmap that uses the geometric Frey–Mazur theorem, bounded-gonality rigidity on `Z(p)`, full torsion monodromy or the classification of rational curves on `Z(p)` cites GeometricFreyMazur by section, as listed in "Scope and ownership".

## References

- **BT16.** Benjamin Bakker and Jacob Tsimerman, *p-torsion monodromy representations of elliptic curves over geometric function fields*, Annals of Mathematics 184 (2016), 709–744, DOI 10.4007/annals.2016.184.3.2; read as [arXiv:1403.7168v2](https://arxiv.org/abs/1403.7168v2), whose numbering of Theorems 1–3, Theorem 29 and Corollaries 30–32 agrees with the published version. Line locators are to the arXiv text.
- **BTE.** Benjamin Bakker and Jacob Tsimerman, *Erratum to p-torsion monodromy representations of elliptic curves over geometric function fields*, five-page [author erratum](https://benjamin-bakker.github.io/P.torsion.erratum.pdf), Propositions 2.1, 4.1 and 4.2.
- **ABR96.** Dan Abramovich, *A linear lower bound on the gonality of modular curves*, International Mathematics Research Notices 1996, 1005–1011, DOI 10.1155/S1073792896000621; read as [arXiv:alg-geom/9609012v1](https://arxiv.org/abs/alg-geom/9609012v1), Theorem 0.1.
