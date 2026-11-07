# PKG-KloostermanMomentsAndPotentialAutomorphy: package report

Deliverables: `packages/KloostermanMomentsAndPotentialAutomorphy/README.md` (twelve layers, 0–11),
`Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml`, and the top-level `gaps`
list of `design/plan.json` (nothing else in that file changed; `git diff` touches only `gaps`).

Inputs: the design README and `plan.json` were read in full. The brief names
`design/review.json` and `reports/` as the accepting review; neither exists in the package folder.
The only review material is the `review` block of `plan.json` (status accepted, 2026-10-19), whose
notes contain no open non-blocking item beyond the gaps and source issues, all of which are handled
below.

## Headline theorems

| Headline theorem | Status |
| --- | --- |
| `Z_k(p;T)` is an integer polynomial with constant term 1 and degree given by Fu–Wan/Yun (FSY (1.5), (5.1)–(5.4)) | stated: `momentSeries_eq_intPolynomial` |
| `Z_k(p;T) = (1−T)Q` with roots of `Q` of absolute value `p^{−(k+1)/2}`, or `p^{−k/2}` for even `k` (FSY §1.1, (5.2)–(5.4)) | stated: `momentSeries_weights` |
| Odd moment functional equation (FSY Theorem 1.2) | stated: `oddMoment_functionalEquation` |
| Even moment functional equation with unknown `2`-adic invariants (FSY Theorem 1.3) | stated: `evenMoment_functionalEquation` (existence of `r_k`, `P_k ∈ ℚ[T]`, `ε_k`; their identification with the `2`-adic invariants of `V_{k,ℓ}` lacks étale cohomology over `ℚ`) |
| Hodge numbers of `H¹(𝔾_m, Sym^k Kl₂)` (FSY Theorem 1.8) | not statable: no algebraic de Rham cohomology of connections, no exponential mixed Hodge structures, no irregular Hodge filtration at the pins |
| Monodromy groups of `Kl_r⁰` (Katz table, XZ (1.1.2.3)); differential Galois groups (FSY Prop. 2.7) | not statable: no `ℓ`-adic sheaves on curves over finite fields, no monodromy groups, no differential Galois groups |
| Classicality and hypersurface realization; the Nori motive `M_k` (FSY Thms 3.2, 3.8) | not statable: no Nori motives, no exponential pair cohomology |
| Local structure at bad primes, regular polarized compatible systems, potential automorphy (FSY Thms 5.8, 5.17, 5.38) | not statable: no étale cohomology of varieties over number fields with Galois action, no regular algebraic cuspidal automorphic representations |

Each not-statable item is named in the module docstring of `Suggested.lean` with its missing
carrier. The definitions in the file (`kloostermanSum`, `traceChar`, `symmetricTrace`, `moment`,
`momentSeries`, `momentDegree`, `thetaPlus`, `thetaMinus`, `oddEulerFactorInv`, `oddEulerFactor`,
`oddConductor`, `evenEulerFactorInv`, `evenEulerFactor`, `evenConductor`, `middleDim`, `paperGamma`,
`eulerCoeff`) all have real bodies (finite sums over `GaloisField`, formal power series, finite
products) and exist only to state the four theorems; no `sorry`'d data.

## What the README could not support

- The `2`-adic Euler factor, conductor exponent and sign for even `k` are proved to exist but not
  computed (as in the source). The Broadhurst–Roberts predictions are recorded as Checks only.
- The original proofs of Deligne, Katz, Fu–Wan and Yun are cited through FSY's and XZ's records of
  their statements (locators in FSY and XZ), not through the original papers.
- Saito's root-number theorem is cited by locator only (`Saito-orthogonal`, uncertified,
  paywalled); its exact hypotheses are left to the supplier contract.

## Notions moved down from later roadmaps

None. KloostermanSheavesAndBesselIsocrystals (later in the order) is only a consumer.

## Duplication removals (by object)

| Design target | Owner found | Disposition |
| --- | --- | --- |
| KM.0/raw-sum (all-rank raw Kloosterman sum) | CongruenceSpectralGap §4.2a `hyperKloosterman` (with eliminated-variable comparison) | deleted; cited in Scope and supplier contracts; rank-two sum kept in Lean only as `kloostermanSum`, documented as that supplier's rank-two case |
| KM.1/deligne-sheaf (construction, concentration, trace sign) | CongruenceSpectralGap §4.2b (Kloosterman realization, `L_ψ`) | deleted; §1.1 keeps only the projection presentation and the weight-zero normalization |
| KM.1/sheaf-structure: rank, tameness, Swan one, purity | CongruenceSpectralGap §4.2b | deleted from the target; §1.2 keeps single unipotent block, geometric irreducibility and the rank-two pairing |
| KM.4/rigid-realization | PadicDifferentialEquationsAndRigidCohomology §RD.6.98 (and §§RD.6.94–RD.6.97) | deleted; cited |
| KM.9/padic-comparison (conclusions of FSY Prop. 5.23) | PadicDifferentialEquationsAndRigidCohomology §RD.7.21 (conditional on geometric hypotheses) | conclusions cited; §9.1 is kept as the target that discharges §RD.7.21's hypotheses |
| KM.9/newton-polygon (FSY Cor. 5.27) | PadicDifferentialEquationsAndRigidCohomology §RD.7.22 | deleted as a separate target; its filtered hypotheses are discharged inside §9.1 |
| KM.8/degree-formulas, odd-`p` factorization | PadicDifferentialEquationsAndRigidCohomology §RD.7.21a (rigid) | odd-`p` factorization cited; §8.2 keeps degrees, `p = 2` (Yun) and the `ℓ`-adic middle factor |
| Gap G1 (holonomic operations, Fourier) | SpringerResolutionAndCharacteristicCycles Layers D, H; MixedHodgeModulesAndIrregularHodgeTheory Layers D, F | dissolved into supplier citations; only irregular stationary phase remains (new gap below) |
| Gap G2 (MHM, EMHS, A.13, A.24, A.27, A.30–A.31, Newton, blow-up invariance, E₁) | MixedHodgeModulesAndIrregularHodgeTheory Layers H.0–H.1, E, I, C, P, G, T, N | dissolved into supplier citations |
| Gap G4 (char-2 nonordinary quadratic vanishing cycles) | LefschetzPencilsAndVanishingCycles §6.6 (states exactly the FSY characteristic-two case) | dissolved; §7.2 adds the regularity check it needs (`g(1,…,1) = 2k`, valuation one) |
| Gap G7 (arithmetic toric models) | ShimuraCompactifications §§C0.15–C0.18 | dissolved |
| Logarithmic extension for de Rham bases | ComplexComparisonPartII §§C5.6–C5.7 | cited |
| Trace formula, GOS | InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3; CongruenceSpectralGap §4.2b | cited (design's SF.2 request) |
| Pure-graded WD / epsilon invariance (FSY Lemma 5.40) | ArithmeticGaloisRepresentations §§2.6–2.7 | cited |
| Archimedean Hodge recipe | PotentialModularityAndCompatibleSystems §1.15 | cited (design's ML.0) |
| Patrikis–Taylor and its `L`-function consequences | ModularityAndLanglandsExtensions §§2.42, 2.49 | cited |
| Symmetric-power trace polynomial | Mathlib `MvPolynomial.hsymm` (in root variables) | `symmetricTrace` kept as the trace/determinant expression; relation stated as API |

Mathlib and Tau Ceti at the pins contain no Kloosterman sum, no `D`-module, no Nori motive and no
irregular Hodge object (grep of both trees for `Kloosterman`, `DModule`, `Holonomic`, `Nori`,
`irregular`).

Citation re-resolution: every design supplier id was re-resolved against the supplier as it is at
its head (or main), because the design's ids no longer match: EDC.1/EDC.2/EDC.4/EDC.5/EDC.6 →
EtaleCohomologyFoundations §§F.5–F.7 and EtaleDualityAndPerverseSheaves §§2.3, 2.8, 3.3; DWP.7 node →
DeligneWeightsAndPurity §7.12; R01.2/R01.3/R01.5 → ArithmeticGaloisRepresentations §§2.5–2.7, 3.3, 5.3;
G7 → ArithmeticGaloisRepresentations §7.4; R06.2 → PadicHodgeTheory §3.2; CP.2–CP.4 →
CohomologyComparisons §§2.13, 3.4–3.5, 4.3–4.4; MC.5 → MotivesAndAlgebraicCycles Layer 5; LPV.2 nodes →
§§2.4–2.8 and the LPV.2 Examples; RD.4/RD.6/RD.7 → §§RD.6.94–RD.6.98, RD.7.20–RD.7.22.

## Supplier gaps (declared in `plan.json` and in the README supplier contracts)

- `higher-thickness-picard-lefschetz` → PadicDifferentialEquationsAndRigidCohomology §RD.7.20
  (design G6/E9: FSY's proof of Prop. 5.23 assumes unit thickness; `k = 9, p = 3, a = 3` has constant
  `18`, valuation two).
- `irregular-stationary-phase` → MixedHodgeModulesAndIrregularHodgeTheory Layer T (it states only
  regular stationary phase at eigenvalue one; FSY Cor. 4.10 needs the irregular case).
- `nori-weight-filtration` → MotivesAndAlgebraicCycles Layer 5 (design G3).
- `orthogonal-motive-root-number` → MotivesAndAlgebraicCycles §2.7 (design G9).
- `semisimplification-similitude-form` → ArithmeticGaloisRepresentations §7.4 (design G5; Serre
  Theorem 4.2.1, read).

## Ownership against open work

Checked by object with `roadmaps grep` over main and all 354 open roadmap pull requests at their heads
(Kloosterman, stationary phase, canonical extension, symmetric-power connections, Patrikis–Taylor,
orthogonal motive, Serre's semisimplification), and in the board packages (design folders of
MixedHodgeModulesAndIrregularHodgeTheory, SpringerResolutionAndCharacteristicCycles,
LefschetzPencilsAndVanishingCyclesPartII, MotivesAndAlgebraicCyclesPartII,
AnalyticToricGeometryPartII, PotentialAutomorphy*PartII, KloostermanSheavesAndBesselIsocrystals).
MixedHodgeModulesAndIrregularHodgeTheory states explicitly that this roadmap owns the Kloosterman
connections, symmetric powers, Newton polytopes, bases and Hodge counts. No declaration of
`Suggested.lean` reuses a fully qualified name of another roadmap (`kloostermanSum` lives in
`TauCetiRoadmap.KloostermanMomentsAndPotentialAutomorphy`, distinct from
`TauCetiRoadmap.CongruenceSpectralGap.hyperKloosterman`).

## Corrections relative to the design

- Twelve-layer catalogue rewritten as prose layers 0–11; KM.x ids replaced by §k.n.
- The design's Suggested file (light representative signatures) is replaced by the four headline
  statements above; the even functional equation keeps the source's existential form.
- §1.2: the design's route for geometric irreducibility is replaced by the inertia argument at `∞`
  (break `1/r` on rank `r`), and the single Jordan block is derived from `dim H¹_c = 1`.
- §9.1: restricted to `k ≥ 2` as in FSY Prop. 5.23 (the design said `k ≥ 1`; `V_{1,p} = 0`).
- §10.2 Check: `Γ_ℝ(s−1)Γ_ℝ(s−2) = Γ_ℂ(s−2)` exactly (duplication formula).
- Source issues E1–E9 are kept, in timeless form, in "Corrections to the sources".

## Adversarial pass

Numerical values below were computed by an independent script (scratch, finite fields
`𝔽_{p^m}` built from irreducible polynomials, `ψ = exp(2πi·Tr/p)`), for `p = 2` (`m ≤ 7`, `k ≤ 12`),
`p = 3` (`m ≤ 6`, `k ≤ 12`), `p = 5` (`m ≤ 4`, `k ≤ 9`).

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `symmetricTrace` | `h₂(3,2)`; `h₃(2,1)`; `h₀(0,0)`; `t=−1,d=2` | `7` (vs `9`); `4 = (3+1)·1`; `1`; `h₂=−1, h₃=3` | correct | none |
| `kloostermanSum` | `𝔽₂, a=1`; `𝔽₃, a=1,2` | `1`; `−1, 2` (matches CongruenceSpectralGap §4.2a Checks) | correct | none |
| first moment `= −1` | `𝔽₃`; trivial `ψ` over `𝔽₅` | `1+(−2) = −1`; `−16` | correct; needs `ψ≠1` | added the `𝔽₅` negative Check |
| `momentSeries` | `p=2,k=3` | `1+3T−4T²`; `m(4)=−17` | correct | none |
| `momentSeries`, `k=0` | any `p` | `(1−T)/(1−pT)`, `[T²]=p²−p≠0` | not polynomial | Lean theorems require `0<k` |
| `momentDegree` (FSY (5.1)–(5.4)) | `p=2`: `k=1..12`; `p=3`: `k=1..12`; `p=5`: `k=1..9` | degrees `1,1,2,1,3,2,4,2,5,3,6,3`; `1,1,1,2,2,2,3,3,3,4,4,4`; `1,1,2,2,2,3,3,4,4` | all equal the formula | none |
| even-`k` identity `k/2−⌊k/4⌋ = ⌊(k+2)/4⌋` | `k=2,4,6,8,10,12` | `1,1,2,2,3,3` both sides | correct | added as API fact |
| (5.3) odd-`p` factorization | `k=8,p=3`; `k=12,p=3`; `k=4,p=5`; `k=8,p=5` | `(1−T)(1+81T)(1−81T)`; `(1−T)(1+3⁶T)(1−3⁶T)²`; `(1−T)(1−25T)`; `R=(1−625T)` | match | none |
| (5.4) `p=2` factorization | `k=6,8,10,12` | `(1−T)(1+8T)`, `(1−T)(1−16T)`, `(1−T)(1+24T+2048T²)`, `(1−T)(1−64T)(1+64T)`; `a,b,deg M` as in (5.4) | match | none |
| `momentSeries_weights` | `k=3,p=2`; `k=5,p=2`; `k=7,p=3`; `k=6,p=3`; `k=4`, odd `p` | root `−1/4`; `|·|=2^{−3}`; `|·|=3^{−4}`; root `−1/27` (weight `k`); root `p^{−2}` (weight `k`) | all within the stated set | none |
| `evenEulerFactorInv` vs (5.22) | `p≡1`, `p≡3 (4)`, `k=6,p=3`, `k=4` | both cases reduce to `Z/((1−T)(1−p^{k/2}T)^{δ})`; `1+27T`; `1` | match | Lean uses the reduced form; README states both |
| `oddEulerFactorInv` vs (5.13) | `p=2` (`Θ⁺₂=∅`); `k=9,p=3,a=3` | `M_k(2;T)`; `ε=(−2/3)=1`, line `1−243T` | match | none |
| `oddConductor` vs `Π sf(j)` | `k=3,5,9` | `3`, `15`, `105` both ways | match | none |
| `evenConductor` vs `Π oddRad(j)` | `k=6,8` | `3`, `3` both ways | match | none |
| `middleDim` | `k=1..8` | `0,0,1,0,2,2,3,2` | matches FSY (4.13) | none |
| `paperGamma` vs standard | `d=1`, `d=2`, `d=0` | ratio `π^{1/2}`, `π^{3/2}`, `1` | matches `π^{d(d+1)/4}` | Check corrected (exact `Γ_ℂ`) |
| `oddMoment_functionalEquation` | `k=1`; `k=3` | `Λ₁≡1`; `Λ₃ = 3^{s/2}π^{−s/2}Γ((s−1)/2)L(s−2,χ_{−3})`, reflection `s↦5−s` = Dirichlet FE | consistent | none |
| `evenMoment_functionalEquation` | `k=2,4`; `k=6` | `Λ′=1`, take `r=0,P=1,ε=1`; level-6 newform gives `r₆=1` | consistent | hypothesis `0<k` |
| §1.2 rank-two pairing | `𝔽₂, a=1` | char. poly `1+T+2T²`, roots `|·|=2^{−1/2}` | consistent | none |
| §1.4 involution | `k=3,p=2` | `16/(−4)=−4` vs `4/(−4)=−1` | `p^{k+1}/α` correct | E3 kept |
| §2.2 deck action | `r=3`, `y↦ζy` | `t·y₁ ↦ ζ²t·y₁` | not invariant | Check added |
| §3.5 pairing parity | `r=2`: `k=6,7`; `r=3,k=2` | alternating on `d₆=2`; `d₇=3` odd excludes alternating; `(−1)⁵` | consistent | none |
| §4.2 hypersurface | `k=2` factorization; `k=3` over `ℚ` and `𝔽₃` | `(y₁+y₂)(1+y₁y₂)`; `±2±2±2≠0`; `2+2+2=0` in `𝔽₃` | consistent | `𝔽₃` point added |
| §6.1 fan | `k=1,2` | rays `2, 8`; cones `2, 8`; `g₁ = 1+z₁+z₁²z₂²+z₁z₂²` recovers `g` | consistent | none |
| §6.5–6.6 Hodge tables | `k=2..9` | totals `⌊(k+1)/2⌋` and middle `d_k` (e.g. `k=8`: `2+1+1=4`) | consistent with §5.5 | none |
| §7.2 orbit counts and thickness | `k=9,p=3`; `k=6,p=3`; `p=2`, odd `k` | `a=1,3`, constants `6,18`, `18 = 2(√−3)⁴`; `b=0,2`; `g(1,…,1)=2k`, `v₂=1` | consistent; regularity at `p=2` holds | regularity added to §7.2 |
| §8.3 Frobenius on `E⁺` | `k=9,p=3,a=3` | `((−1)⁵·2/3)·3⁵ = 243` | consistent | none |
| §10.1 determinant | `k=3`; `k=1` | `χ_{−3}χ_cyc^{−2}`, matches `1−(p/3)p²T`; trivial | consistent | none |
| §10.3 epsilon | `k=6,p=3`; `k=3` at `∞` | `u=1,v=0`, sign `+1`; `i` | consistent | none |
| §11.2 two-adic bound | `k=3`: `Z₃(2;T)=1+3T−4T²` | `v₂(c₂)=2≥2` | consistent | none |
| §11.5 conjectural sign | `k=8` | `t₈ = 1+0+0+1 = 2`, `ε₈=+1` | consistent with design | none |
| Context of Lean statements | all four theorems | every hypothesis (`Fact p.Prime`, `0<k`, `Odd k`/`Even k`) is in the declaration's own signature; no section `variable`s | correct | none |

`#check @name` was run in one scratch copy for all 21 declarations; each elaborated type matches its
README statement (real powers `↑p ^ (−(↑k+1)/2)`, the half-plane `(↑k+3)/2 < s.re`, `P.coeff 0 = 1`
over `ℚ`, the existential order `r, P, ε, Λ`). Nothing changed as a result.

## Elaboration

`lake env lean packages/KloostermanMomentsAndPotentialAutomorphy/Suggested.lean` (run from the
content checkout): exactly 4 warnings, all `declaration uses 'sorry'` (lines 91, 110, 190, 205); no
errors and no other messages. Single `import Mathlib`, no `TauCeti.*` import, no `set_option`.

The worker's gate run on a scratch copy of the folder reported every check `0` except `git=1`,
which comes from the scratch copy not being a git repository.

## Dependency check

```
depcheck: 56 roadmaps, 659 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `roadmaps resolve` on the README: no cross-roadmap citation and no
Lean name found nowhere.

## Sources

`FSY` (arXiv v5), `XZ` (arXiv v2) and `Serre-orthogonal` (arXiv v3) fetched and certified;
`Saito-orthogonal` recorded as uncertified (paywalled, cited by locator). No
`needs-references.toml` was written: no text the README depends on is missing.

## Suspicious text

None found in the inputs read.
