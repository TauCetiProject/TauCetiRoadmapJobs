# Design report: DESIGN-ConstructiveFieldTheoryPhi4

Deliverables: `packages/ConstructiveFieldTheoryPhi4/design/README.md`, `packages/ConstructiveFieldTheoryPhi4/design/plan.json` (38 targets in 9 layers, no gaps), `packages/ConstructiveFieldTheoryPhi4/sources.toml` (locators and `cited_for` brought in line with the README; no new keys). Pins: Mathlib f6090c7095e1e56b3464c1daba5f24631f1290d2, Tau Ceti 358314d4ab97483df4fc4cb8adcc02e74a8d9f5a. Suppliers: StochasticCalculus §1.1 and StandardDistributions §5.3. No source text was missing, so no `needs-references.toml` was written.

## What the design covers

- Layer 0: admissible single-site measures (with evenness taken from Mathlib's `MeasureTheory.Measure.IsNegInvariant` and admissibility shown equal to `integrableExpSet (fun φ ↦ φ²) ρ = univ`), the φ⁴, Gaussian and Ising measures.
- Layer 1: finite-volume Gibbs measures for an arbitrary symmetric coupling, stability, symmetries, derivative in the couplings, continuity in the single-site measure under uniform exponential-square bounds, Gaussian lattice fields (Dirichlet Green functions and their monotone limits).
- Layer 2: Ising-block measures, the block-spin representation, the Griffiths–Simon class, φ⁴ measures as Curie–Weiss limits.
- Layer 3: Griffiths I/II (Ginibre), monotonicity in couplings and volume, FKG, random currents and the switching lemma, Lebowitz/Gaussian/Simon–Lieb for Ising and the Griffiths–Simon class, Messager–Miracle-Solé, the φ⁴ integration-by-parts identity with a volume-uniform second-moment bound, Newman's exponential bound.
- Layer 4: free-boundary monotone limits, the infinite-volume law under a uniform exponential-moment condition (proved for bounded-support and φ⁴ single-site measures), two-point function, susceptibility, β_c, axis monotonicity.
- Layer 5: periodic measures, reflection positivity, chessboard, Gaussian domination, infrared bound, sum rule, long-range order of the d ≥ 3 Ising model.
- Layer 6: random fields indexed by `C_c(ℝ^d)`, Schwinger functions (a.e. uniqueness), Gaussian processes with an arbitrary positive semidefinite kernel, Wick's law ⇔ Gaussianity for centred fields.
- Layer 7: rescaled lattice field and block variance, reachability (ADC Definition 1.1), structure theorems, reachability of the massive (all d) and massless (d ≥ 3) Gaussian free field from Gaussian lattice fields.
- Layer 8: the summit statements (ADC Theorem 1.2 and its Griffiths–Simon extension), stated for d ≥ 4.

## Changes against the triaged target, with reasons

1. **Gaussian single-site measures are not admissible.** The target calls `ρ_{0,b}` "admissible but outside the next class". With admissibility meaning `∫e^{cφ²}dρ < ∞` for every c, `γ_b` fails at c = |b|. The design treats Gaussian lattice fields separately (1.5): stable iff `2|b|I − J⁰ ≻ 0`, which holds for `b ≤ −dJ` on every box.
2. **The Griffiths–Simon class as printed admits non-members of the inequalities.** ADC Definition 2.1 allows block coefficients `b_n ∈ ℝ`. With weights (1, −1) and pair coupling K > (ln 2)/2 (unordered convention), the law of σ₁ − σ₂ is `(1 − ε)δ₀ + ½ε(δ₂ + δ₋₂)` with `ε = 1/(1 + e^{2K}) < 1/3`, and `∫φ⁴ = 16ε > 48ε² = 3(∫φ²)²`. That violates the single-site Lebowitz inequality, which every member must satisfy. ADC's own transfer argument (line 2031) uses nonnegative `Q_i`. The design requires nonnegative weights.
3. **Uniform growth along the approximating sequence.** ADC's (2.2) constrains only the limit. Transferring finite-volume statements needs uniform exponential-square bounds along the sequence (1.4; the Check there shows that weak convergence alone gives `Z(ρ_k) → ∞` while `Z(δ₀) = 1`). The design's class therefore asks for `sup_k ∫exp(|φ|^α)dρ_k < ∞`. It is contained in ADC's class and contains Ising, every Ising-block measure and every φ⁴ measure (2.3, with α ∈ (2, 4)). For ADC's printed class the uniform bound probably follows from (2.2) through Newman's Lee–Yang product representation and Hurwitz's theorem, but that would need the Lee–Yang theorem. It is not planned.
4. **The infrared-bound constant.** ADC (5.9) prints `E(p)Ŝ(p) ≤ 1/(2|J|β)` with `|J| = 2dJ`. The torus Gaussian field gives `E(p)Ŝ(p) → 1/(βJ)`, and the two-site Ising torus at J = 0.375 gives 1.46 against ADC's 0.67. Peled–Spinka (52) gives 1/(βJ), which the design adopts (Conventions; 5.4 Checks). ADC (5.14) also omits the factor (2π)^{−d}; the design's `I_d` carries it.
5. **The infinite-volume infrared consequences go to a Part II.** ADC Proposition 5.2 identifies the free, periodic and boundary-condition limits below β_c and is stated there without proof ("standard arguments that we omit"). The transfer of the torus infrared bound to the free-boundary state depends on it, and so do Theorem 5.6, Corollary 5.8, the position-space bound (5.37) and the uniform local integrability. Its proof needs sharpness of the phase transition for the Griffiths–Simon class. Griffiths monotonicity gives free ≤ periodic pointwise, but that does not transfer a Fourier-space bound. All of this is assigned to ConstructiveFieldTheoryPhi4PartII. The torus statements (Layer 5) are fully planned here.
6. **Kolmogorov extension is imported, not owned.** StochasticCalculus §1.1 (earlier in the merge order) constructs the unique law on an arbitrary product of standard Borel spaces from consistent finite-dimensional laws. The target recommended owning it; owning it here would duplicate that section.
7. **Summit generalised to d ≥ 4.** ADC lines 122–128 attribute the d > 4 case to Aizenman 1982 and Fröhlich 1982 in the same form. The source supports d ≥ 4, so the summit is not narrowed to d = 4.
8. **The summit needs a two-point Schwinger function as a hypothesis.** ADC's (1.10) presupposes that S_2 is a function, which they get from uniform local integrability (Part II). The design states the summit with "has a two-point Schwinger function satisfying (1.10)", with (1.10) in an almost-everywhere form (equivalent to pointwise decay of a representative). This hypothesis is genuinely restrictive: white noise is reachable but has no S_2.
9. **Reachable-field statements are kept only where provable.** Kept: existence and uniqueness up to finite-dimensional distributions, linearity, symmetry for even classes, invariance under the hyperoctahedral group W_d, and Fatou for variances. Not kept, because each needs uniform local integrability (Part II): translation invariance, and the continuum identity `Var T_{1_Q}(Φ) = 1` (1_Q is not a test function). The lattice identity `⟨T_{1_Q,L}²⟩ = 1` is kept (7.1).
10. **Uniform moment bounds.** The target says the uniform bound holds "for the Griffiths–Simon class by the block-spin representation". For weak-limit members this does not follow: the block-spin bound `|φ| ≤ Σq_n` blows up along the sequence. The design states the infinite-volume law under an explicit uniform exponential-moment condition (4.2). It proves that condition for bounded-support measures and for φ⁴ measures (integration by parts plus Newman's bound), and for Griffiths–Simon members whenever the second moments are uniformly bounded.
11. **Wick's law needs centring.** A non-centred Gaussian field is a Mathlib `IsGaussianProcess` but violates (1.7) as written (6.4 Check).
12. **Torus convention at L = 1.** For 2L = 2, `x + e_j = x − e_j`; Peled–Spinka's formula λ_k = 2Σ(1 − cos k_j) holds only if each vertex–direction pair carries one bond. The design fixes "one bond per vertex and direction", so L = 1 is a legitimate, fully computed test case.
13. **Citations of the Duminil-Copin lecture notes.** Its Theorem 1.6 (FKG) and Theorem 1.12 are random-cluster statements, not spin-measure FKG or uniqueness below β_c. The design cites the notes only for Corollary 1.9.
14. **RelativisticQuantumFieldTheory is not a supplier.** It is an open pull request that is not earlier in the merge order. The Gaussian free field covariance is defined directly in Fourier space (Mathlib's 𝓕), and the comparison with RQFT's d = 4 covariance is listed under consumers.
15. **MMS gets a self-contained proof route.** ADC [30, 37, 41] are not in the manifest. The design's route uses the variables (φ_x ± φ_{Rx}): the pair law is symmetric under s ↦ −s and t ↦ −t, and the coupling coefficients are nonnegative under `J_{xy} ≥ J_{x,Ry}`. A 4-site Check shows that this hypothesis is necessary.

## Notions moved down from later roadmaps

None. The Gaussian process with a prescribed positive semidefinite kernel on an arbitrary index set (6.3) is owned here. Searches by object found no roadmap planning it: StochasticCalculus 1.3 builds only an isonormal map from deterministic L² integrands, and §8.1 a Cameron–Martin space. The Green function of `−Δ + m²` is planned by RelativisticQuantumFieldTheory, which is not earlier in the merge order. It is not moved down: the design avoids needing it by defining C_m in Fourier space.

## Proposed Part II

**ConstructiveFieldTheoryPhi4PartII** (marginal triviality). Its introduction would say that this roadmap stops at finite-volume and torus inequalities, the free-boundary state and the summit statements. It would own:

- current intersection probabilities and the monotonicity of random currents (ADC Appendix);
- the tree diagram and improved tree diagram bounds (ADC Theorems 1.3, 7.1) and the mixing property of currents (Theorem 6.4);
- the transfer-matrix spectral representation (Propositions 5.3–5.4, Corollary 5.5);
- sharpness and exponential decay below β_c for the Griffiths–Simon class, and from it ADC Proposition 5.2;
- the infinite-volume and sliding-scale infrared bounds (Theorem 5.6, (5.36)–(5.37));
- the lower bound (Corollary 5.8);
- uniform local integrability and translation invariance of reachable fields;
- the proofs of 8.1 and 8.2.

## Gaps

None. Every prerequisite is a pinned declaration (each read at the pin, file and line in the README), an earlier target, StochasticCalculus §1.1 or StandardDistributions §5.3.

## Sources

All cited works are in `sources.toml`; no new key was added.

- Read at the cited lines: aizenman-duminilcopin-2021, sokal-1982, peled-spinka-2017, simon-2020-twelve-tales, frohlich-1982 and duminilcopin-2017-lectures (all certified). The Sokal and Fröhlich extractions have OCR-lost displays, so they are cited for statements made in words and by equation number.
- Settled as uncertified and cited by locator only: griffiths-simon-1973 (the proof of 2.3; the design gives its own Curie–Weiss route), aizenman-1982, frohlich-simon-spencer-1976, glimm-jaffe-1987, fernandez-frohlich-sokal-1992, friedli-velenik-2017 (Section 3.6 and Chapter 10, located through Peled–Spinka's pointers at lines 312 and 1205), and simon-1974 (Chapter I).
- Nothing was requested.

## Ownership checks

Run with `roadmaps grep` over main and the 455 open roadmap pull requests at their heads. Patterns: Ising (word), reflection positivity, Schwinger, random field, Gaussian free field / free field, infrared bound, correlation inequalities, lattice field / spin system, Wick, Kolmogorov extension, projective limit / `IsProjectiveMeasureFamily`, `IsGaussianProcess` / positive-semidefinite kernel / Gaussian process with given covariance.

Findings:

- **OperatorAlgebraDynamics D9:** quantum spin systems only.
- **RelativisticQuantumFieldTheory** (open): Euclidean axioms, the Green function of `−Δ + m²`, functional integrals only as formal series.
- **StochasticCalculus §1.1** (open; earlier in the merge order): arbitrary-index Kolmogorov extension. Imported.
- **QuantumFoundations** (open): cites Mathlib's extension on standard Borel spaces.
- **Completed/DenseGraphLimits:** reflection positivity for graph parameters, unrelated.
- **Board packages:** only DimerModelsAndLozengeTilings mentions Ising/φ⁴, and only to defer them to this roadmap.

No other roadmap plans lattice φ⁴ or Ising measures, their correlation inequalities, the free-boundary state, the torus infrared bound, random fields indexed by test functions, Schwinger functions or reachable fields.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Conv: unordered-pair Hamiltonian | two Ising sites | ⟨σσ⟩ = tanh J (unordered) vs tanh 2J (ordered) | pinned | witness in Conventions |
| Conv: φ⁴ sign of b | ρ_{0,−1/2} | = N(0,1); Simon's convention needs b = +½ | pinned | witness |
| Conv: IR constant | Gaussian torus field; Ising L=1 | Ŝ = 1/(2(\|b\|−dJ)+JE); 4J(1−tanh2J) ≤ 0.557 < 1; ADC 1/(4J) fails at J=0.375 (1.46 > 0.67) | ADC (5.9) wrong | constant 1/J adopted |
| Conv: torus at L=1 | d=1 | x+e₁ = x−e₁; coupling 2J; E(π) = 4 | consistent only with one-bond-per-direction | convention fixed |
| Conv: C_m normalisation | d=1 | 𝓕(e^{−m\|x\|}/2m) = 1/(m²+4π²ξ²) | pinned | witness |
| 0.1 admissible | δ_a; N(0,1); Cauchy; e^{−φ²log(1+φ²)} | e^{ca²}; ∞ at c=½; no 2nd moment; admissible but fails (2.2) | strictly between "some c" and (2.2) | sentence corrected |
| 0.1 Gaussian vs stability | N(0,1), two sites, J=1 | quadratic form ½(x²+y²)−xy not PD, Z=∞ | "every c" needed | Check |
| 0.2 φ⁴ moments | b=0, k=1,2 | ⟨φ²⟩ = Γ(3/4)/(Γ(1/4)√λ) ≈ 0.338/√λ; ⟨φ⁴⟩ = 1/(4λ) | agree with IBP (3.7) | — |
| 0.2 hard limit | ρ_{λ,2λ} | −λφ⁴+2λφ² = −λ(φ²−1)²+λ; ⟨e^{cφ²}⟩ → e^c | uniform bound for λ ≥ 1 | — |
| 0.2.1 Gaussian identification | b=−½; \|b\| | variance 1/(2\|b\|) = 1 | ok | target's admissibility claim rejected |
| 1.1 Gibbs measure | 2 sites; 3-site triangle; V=∅ | Z = cosh J; Z = (e^{3J}+3e^{−J})/4, ⟨σ₁σ₂⟩ < 0 for J<0; Z=1 | ok | — |
| 1.2 symmetry/spin flip | chain {0,1,2}; (δ₀+δ₁)/2 | tanh J both sides; ⟨φ⟩ = ½ ≠ 0 | evenness needed | Check |
| 1.3 coupling derivative | 2 sites; J=0; diagonal | 1−tanh²J; (∫φ²)² = 1; 0 | ok | diagonal convention noted |
| 1.4 continuity in ρ | ρ_k = (1−e^{−k})δ₀ + ½e^{−k}(δ_{±k}) | Z(ρ_k) ≥ ¼e^{k²−2k} → ∞, Z(δ₀) = 1 | uniform bound necessary | hypothesis kept |
| 1.5 Gaussian lattice | 1 site; 2 sites; d=1 limit; d=2 μ=0 | γ_b; ⟨φφ⟩ = J/(4b²−J²), stable iff J<2\|b\|; G_μ(0) = 1/(μ√(4+μ²)); diverges | ok | massless only d ≥ 3 |
| 2.1 Ising-block | Griffiths trick; q=(1,−1); N=1, q=(s) | K=(ln2)/2 gives uniform on {−1,0,1}; ε = 1/(1+e^{2K}) < 1/3 violates Lebowitz; s²tanh(Js²) | mixed signs defective | nonnegative weights |
| 2.2 GS class | N(0,1); (1−ε)δ₀+½ε(δ_{±1}), ε<1/3 | ∫e^{\|φ\|^α}dN = ∞; ε > 3ε² | both excluded | uniform growth required |
| 2.3 φ⁴ ∈ GS | Curie–Weiss scaling; b>0, b<0 | exponent −(1−g)φ²N^{1/2}/(2c²) − φ⁴/(12c⁴) = bφ² − λφ⁴; I(m) ≥ m²/2 + m⁴/12; g_N>0 iff N > 4b²c⁴ | ok | explicit c, g_N stated |
| 3.1 GKS | 2 sites; (2δ₋₁+δ₁)/3; J<0; Ginibre m=n=2 | tanh J ≥ 0; −1/3; tanh J<0; E[(x²−y²)²] = 0 | evenness and J ≥ 0 needed | Checks |
| 3.2 monotonicity | chain; V={0,2}; biased ρ | tanh J₀₁tanh J₁₂; 0 ≤ tanh²J; ⟨φ₀⟩: −1/3 → −3e^J/(5e^J+4e^{−J}) (−0.541 at J=1) | evenness needed | Check |
| 3.3 FKG | lattice gas 2 sites; antiferro | (e^J−1)/(3+e^J)² ≥ 0 iff J ≥ 0 | ok | — |
| 3.4 currents/switching | 2 sites, A=B={x,y} | Σ_even = cosh J, Σ_odd = sinh J; sinh²J = cosh²J − 1 | identity checked | — |
| 3.5 Lebowitz/Gaussian | ρ_I; ρ_{λ,0}; Gaussian; ε=¼ | 1 ≤ 3; 0.25/λ ≤ 0.3427/λ; equality; ¼ > 3/16 | GS hypothesis needed | Check |
| 3.5 Simon–Lieb | chain, Λ={0} | tanh²J ≤ J tanh J | ok | route rephrased |
| 3.6 MMS | open chain of 4; crossing J₀₂=J₁₃=K; site reflection | tanh J ≥ tanh²J, 1 ≥ tanh³J; 0 < tanh K (fails); 1 ≥ tanh²J | J_{xy} ≥ J_{x,Ry} necessary | hypothesis explicit |
| 3.7 IBP and bound | 1 site J=b=0 | ⟨φ⁴⟩ = 1/(4λ); M = 1/(2√λ) ≥ 0.338/√λ | ok | — |
| 3.7 Newman | ρ_I; ε=¼ | cosh a ≤ e^{a²/2}; a=2: 1.691 > 1.649; a⁴ coefficients ε/24 vs ε²/8 | fails off the class | Check corrected (range) |
| 4.1 monotone limits | d=1 chain; W_n = {−n..2n}; δ₀ | tanh^{\|x\|}J for all R ≥ \|x\|; same; 0 | ok | — |
| 4.2 infinite-volume law | d=1 Ising; J=0; log-normal | P(same) = (1+tanh J)/2; `infinitePi`; moment indeterminacy | (UE) needed for identification | hypothesis explicit; target's GS claim restricted |
| 4.3 χ, β_c | d=1; δ₀; Ising high temperature | χ = (1+t)/(1−t), β_c=∞; 0; χ ≤ 1/(1−2dJ) | ok | finite-volume form of the argument noted |
| 4.4 axis monotonicity | d=1; d=2 to O(t²) | tⁿ decreasing; t ≥ 2t² ≥ t² | ok | — |
| 5.1 torus | L=1; 4-cycle | tanh 2J, Ŝ(0)=1+tanh2J; (t+t³)/(1+t⁴) | ok | — |
| 5.2 RP | L=1 edge reflection | matrix [[e^{2J},e^{−2J}],[e^{−2J},e^{2J}]] PSD iff J ≥ 0 | J ≥ 0 needed | — |
| 5.3 Gaussian domination | L=1 Ising | f''(0) = −4J + e^{−4J}(32J²−4J); max of e^{−4J}(8J−1) is 2e^{−3/2} ≈ 0.446 < 1 | consistent | — |
| 5.4 IR and sum rule | L=1 Ising; Gaussian torus | max 0.557 < 1; ½((1+t)+(1−t)) = 1 | ok; ADC constant fails | evenness not needed (first-order term vanishes by translation invariance) |
| 5.5 long-range order | d=3; d=1,2 | I₃ = W/2 ≈ 0.2527 (= G(0)/6, G(0) ≈ 1.516); I_d = ∞ | agrees with Peled–Spinka Thm 2.13 | — |
| 6.1 random field | zero; deterministic; \|∫f\| | Dirac fdd; T_{−f} = T_f | non-linear map excluded | — |
| 6.2 Schwinger | white noise; h = e^{−\|x\|²}; h ≡ 1 | no S₂ (vanishes off diagonal); e^{−\|x\|²−\|y\|²} ≤ e^{−\|x−y\|²/2}; S₂ ≡ 1 | first draft Check false (claimed decay forces h = 0) | Check corrected |
| 6.3 Gaussian process | [[1,r],[r,1]]; [[1,2],[2,1]]; min(s,t) | bivariate normal; Var(X₁−X₂) = −2; Brownian family | PSD needed | — |
| 6.4 Wick | M₄; random sign; non-centred | 3M₂²; (∫fh)⁴ ≠ 3(∫fh)⁴; M₁ ≠ 0 | centring needed | hypothesis added |
| 7.1 rescaled field | J=0 Ising; d=1 L=R=1; δ₀ | 2^{−d}∫f²; Σ = 3+4t+2t²; Σ=0 ⇒ T≡0 | junk value documented | — |
| 7.2 reachability | J=0; {δ₀}; telegraph | white noise 2^{−d}∫fg; zero field; κ^{−1/2}∫fX bounded | ok | — |
| 7.3 structure | non-even class; variance escape | (δ₀+δ₁)/2: T_f = 2^{−d}∫f (not symmetric); 2^{−d}∫f² vs 2^{−d−1}∫f² | evenness needed; Fatou can be strict | Checks corrected (first draft had a false divergence claim) |
| 7.4 C_m | d=1; m→0; d=4 | C_m(1_Q,1_Q) = 2/m² − (1−e^{−2m})/m³ ~ 2/m; G_0 = Γ(d/2−1)/(4π^{d/2}\|x\|^{d−2}) = 1/(4π²\|x\|²) in d=4 | ok | — |
| 7.4.1 GFF reachable | b_n = −(d+m²/2L²), J=1 | covariance (m²/L² − Δ_R)⁻¹ ↑ G_{m/L}; L²E(q/L) ≥ (4/π²)\|q\|² | ok for m>0, and for m=0 when d ≥ 3 | proof-route wording corrected |
| 8.1 summit | d=1 telegraph; white noise; d=4 GFF | non-Gaussian with S₂ decaying; no S₂; Gaussian | d ≥ 4 necessary; hypotheses not vacuous | generalised to d ≥ 4 |
| 8.2 GS summit | containment | GS (2.2) ⊆ ADC class; ρ_I, ρ_{λ,b} ∈ GS | 8.2 ⇒ 8.1 | — |

Context check (standing hypotheses in scope): every inequality of Layer 3 carries J ≥ 0. Griffiths I/II and MMS carry evenness; FKG and the infrared bound do not need it, and the Checks show that Griffiths does. The infinite-volume results carry translation invariance and finite range. Layer 5 carries admissibility, which also makes `ρ̃ = e^{dJφ²}ρ` finite. The summits carry d ≥ 4.

Generality: the README and plan.json state the same hypotheses. Couplings are general symmetric (signed) where the sources allow it (1.1–1.5, 3.7(a)), and ferromagnetic only for the inequalities. Single-site measures are general admissible ones, not just φ⁴ and Ising, wherever the proofs allow.

## Dependency check (output)

```
candidate: ConstructiveFieldTheoryPhi4 is not in the merge order yet; checked as if placed after StochasticCalculus (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2181 edges, 0 problem(s)
```

No UPWARD or CYCLE line.

`roadmaps resolve` reports no cross-roadmap citation and no Lean name found nowhere. Mathlib and Tau Ceti names are not checked by that tool on this host, so each backticked name was checked by a grep of the pinned sources; all were found at the stated files.

## Untrusted text

Nothing read during the job (sources, roadmap READMEs, the target brief) contained instructions to run commands, change procedure or handle credentials.
