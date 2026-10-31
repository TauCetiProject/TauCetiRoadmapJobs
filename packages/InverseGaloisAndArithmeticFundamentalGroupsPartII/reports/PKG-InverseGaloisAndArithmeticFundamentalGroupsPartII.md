# Package report: InverseGaloisAndArithmeticFundamentalGroupsPartII

Deliverables: `packages/InverseGaloisAndArithmeticFundamentalGroupsPartII/README.md`,
`Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml`, and the top-level `gaps`
list of `design/plan.json` (no other key of `plan.json` changed; checked by comparing every key
with the original).

## Headline theorems

| Headline | Source | Status |
| --- | --- | --- |
| Homological stability for marked, full-monodromy and unmarked Hurwitz spaces, constants uniform in the permitted field | EVW Theorem 6.1 ((6.1.1), (6.1.2)) and Corollary 6.2 | stated: `hurwitz_homological_stability` |
| Uniform Betti bound `dim H_i ≤ C^(i+1)` for the four Hurwitz variants, all `n` | EVW Proposition 2.5 and the topological part of Proposition 7.8 | stated: `uniform_betti_bound` |
| Stability of components (the case `p = 0`) | EVW Lemma 3.5 | contained in `hurwitz_homological_stability` at `p = 0`, since `H_0(B_n; k[c^n]) = R_n`; not stated separately |
| Uniform étale Betti bound for `Hn^c_{G,n} ⊗ 𝔽̄_q`, `ℓ > max(|G|, q, n)` | EVW Proposition 7.8 | not statable: no Hurwitz scheme at the pins (Mathlib has `AlgebraicGeometry.Scheme.EllAdicCohomology`, but nothing to apply it to) |
| Stabilization of a graded `R`-module from `H_0, H_1` of its K-complex | EVW Theorem 4.2 | not statable: no carrier for internally graded modules over the noncommutative component algebra with the K-complex |
| `(n − 2)`-connectivity of the disc arc complex | Hatcher–Wahl Proposition 7.2 | not statable: no carrier for isotopy classes of arcs in a marked disc |

The two stated theorems are written in braid-group-homology form: `H_p(Hur; k) = H_p(B_n; k[X])`
for the fibre `X`, which is the README target §0.5 (new, see below). This is an equivalent
formulation, not a weakening: `Conf_n` is a `K(B_n, 1)` and Hurwitz spaces are the associated
covering spaces.

## Elaboration

Command: `lake env lean <absolute path of Suggested.lean>` from the content checkout, after
`lake build TauCeti.GroupTheory.SpecificGroups.Braid.Basic` (the only `TauCeti.*` import).

Outcome: exactly **2** warnings, both `declaration uses 'sorry'` (lines 501 and 518, the two
headline theorems). No other message. The file has 40 declarations; all definitions have real
bodies and all auxiliary theorems are proved (the Hurwitz action is built from
`TauCeti.BraidGroup.lift`, with the braid relations proved; the stabilization operators are
morphisms of `Rep` with their intertwining proved). No `set_option`, single `import Mathlib` plus
one Tau Ceti module.

Binder check: a scratch copy of the file with `#check @name` for all 40 declarations was
elaborated once; the elaborated types of `hurwitz_homological_stability` and `uniform_betti_bound`
carry `{G : Type} [Group G] [Fintype G] (c : ConjClasses G)`, `IsNonsplitting c`, and the
quantifier order `∃ m, 0 < m ∧ (∀ g ∈ c.carrier, g ^ m = 1) ∧ ∃ A B, ∀ (k : Type) [Field k],
(Fintype.card G : k) ≠ 0 → ∀ full p n, A * p + B < n → …`, exactly as the README (§4.5, §5.2)
states. `markedStabilizer`, `unmarkedStabilizer`, `unmarkedGlueSum` carry `[Fintype G]`
explicitly. Nothing changed as a result of the check.

## Dependency check

```
depcheck: 56 roadmaps, 643 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. The full gate, run on a scratch copy of the content checkout
with the folder added (no build), reports every check at 0 except `dirty=1`, which is the
untracked folder of that scratch copy.

`roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. Since
it does not check library names on this host, every backticked Mathlib and Tau Ceti name of the
README was checked by `#check` in a scratch file at the pins: all elaborate.

## Changes relative to the design

- **Shape.** Rewritten into the TauCetiRoadmap form: Scope and ownership, Conventions, Exact
  supplier contracts per supplier with gap lines, How to read the build, Layers 0–5 with
  `### k.n` subsections, API bullets in prose, Checks, Examples, Dependencies per layer, Notes on
  the sources, Downstream consumers, Worked examples, References. All 44 targets, their Checks and
  worked examples are kept (the design's acceptance notes became Checks or proof-sketch clauses).
- **Notation aligned with the parent.** The design's `Hur_n` / `CHur_n` are the parent's
  `Hur^c_{G,n}` / `CHur^c_{G,n}` (§IG.5.2); the design's node ids (`IG.3/hurwitz-braid-action`,
  `IG.5/fixed-degree-mod-l-comparison`, …) are replaced by the parent's actual sections and target
  titles.
- **New target §0.5** (Hurwitz homology as braid-group homology), owned here: it makes the headline
  statable and records the identification the Lean statements rely on, with suppliers
  ClassifyingSpaces Stage 4 items 16–17, AlgebraicTopology Stages 5 (item 3) and 8, §IG.5.1–5.2.
- **§0.3 and §0.7 now carry the Lean definitions** (Hurwitz action on the pinned braid group,
  fibres, conjugation quotient, block inclusion, gluing, marked and unmarked stabilization
  operators). The design's Lean helpers that no headline needs (`SupportedLE`, the native tail
  subgroup, truncated coset families, the support-slope arithmetic milestone) are not in
  Suggested.lean: they would be padding under the acceptance-test rules; they remain README
  targets (§1.1, §2.3).
- **Unmarked stability without centrelessness.** EVW state Corollary 6.2 for centreless `G`; their
  proof (stabilizers locally constant, `|G|` invertible, coinvariants) does not use it, and in the
  braid-group form `H_p(B_n; k[X/G]) ≅ H_p(B_n; k[X])_G` holds for every finite `G` of invertible
  order. The README (§4.5) and Lean state the general version and say that EVW's hypothesis is the
  case where `CHur/G` is the complex Hurwitz scheme. Centrelessness is kept where it is needed, in
  §5.3.
- **Correction of a design acceptance note (§1.8).** The design said a lower bound on the grading
  is essential for graded Nakayama over `R̄`. Over `R̄` the augmentation ideal is nilpotent
  (finite degree), so the statement holds for every graded `R̄`-module; the lower bound is needed
  over `R` (counterexample `k[t, t⁻¹]` over `k[t]`), which is where §1.18 uses it. The Check now
  says this.
- **Sources.** The design read the Annals PDF; the sources service does not accept that host, so
  EVW is read in arXiv v4 (theorem and equation numbers agree with the published version, checked
  against every number the design used); page locators are arXiv pages and line locators refer to
  the cached text. Hatcher–Wahl is read in arXiv v4 (Lemma 7.1 and Proposition 7.2 on pp. 34–35,
  Definition 3.4 on p. 16). Charney–Davis is the author's copy (OCR); Theorem 1.4.1 p. 5,
  Lemma 2.2.1 p. 8, Corollary 2.2.3 p. 9.
- **All seven source corrections were re-verified in the text** (EVW16 lines 395–413, 852,
  1062–1067, 1325, 825–827 with 979–988, 872–885, 1599) and are stated in "Notes on the sources".

## Duplication sweep and ownership

Removed here and cited instead:

- The explicit type-A poset `W × S^f`, its order complex model and its permutohedral coarsening
  (design target `HS.5/finite-cell-model`, construction part): ReductiveGroups (main) Layer 11B
  builds the finite Salvetti model of every finite reflection arrangement with its good open-star
  cover and its quotient cells. §5.1 now specializes that model to `W = S_n` and keeps only the cell
  count and the lifting to Hurwitz covers. A gap asks ReductiveGroups for the full homotopy
  equivalence (its text allows stopping at the two-skeleton) and the cell count.
- The comparison of plane and disc configurations and the half-twist normalization: ReductiveGroups
  Layer 11A (which consumes IG.5.1 and checks against IG.3.2's convention).
- The design's request that AlgebraicTopology Stage 8 supply relative simplicial approximation:
  already owned there; no gap. Only join connectivity is requested.
- The design's routing of mapping classes through MappingClassGroupsAndCanonicalRepresentations C.0:
  that package imports generic surfaces and mapping class groups from MordellLawrenceVenkatesh LV.5,
  and its C.0 nodes concern hyperbolic pure-puncture monodromy. The README cites LV.5 §§5.1, 5.7,
  5.9, 5.17 directly; §2.1 (the braid group as the mapping class group of the marked disc, via the
  `n`-point evaluation fibration and the Alexander trick) is owned here.

Kept and owned here, with the reason: the Hurwitz representation, fibres and stabilization operators
(the parent owns the action on tuples as a README target; Suggested.lean must restate it on the
pinned braid group because roadmap modules cannot be imported, and says so); the component-ring
module theory of EVW §4 (specific to the component ring; the generic graded `Tor` and spectral
sequences are requested from DGAInfinity); the arc complex, coset model and stabilizers (no roadmap
on main or in the open pull requests listed defines them; checked by `roadmaps grep` for arc
complex, semisimplicial, Salvetti, Borel construction, Hurwitz stability, nonsplitting).

Ownership against open pull requests: checked with `roadmaps grep` over all open roadmap pull
requests at their heads (the index covers all 354) and main. Findings: InductionRestrictionPartII
cites the withdrawn EVW II for reduced Schur covers (no overlap); ArithmeticStatisticsPartI/IV/VII
cite EVW for Cohen–Lenstra measures (no overlap); ArithmeticStatisticsPartVIII §5.19 assumes the
uniform Betti hypothesis (HS) that §5.3 proves (recorded as a downstream consumer; it is earlier in
the merge order and does not depend on this roadmap). No declaration of Suggested.lean shares a
fully qualified name with a roadmap declaration.

Notions moved down from later roadmaps: none.

## Supplier gaps declared (`plan.json` `gaps`, and in the README supplier subsections)

| slug | supplier | section |
| --- | --- | --- |
| reductive-salvetti-homotopy-type | ReductiveGroups | Layer 11B |
| algtop-semisimplicial-realization | AlgebraicTopology | Stage 4 |
| algtop-borel-construction | AlgebraicTopology | Stage 5 |
| algtop-join-connectivity | AlgebraicTopology | Stage 8 |
| geomtop-arc-isotopy-extension | GeometricTopology | Layer 1 |
| geomtop-marked-disc-diffeomorphisms | GeometricTopology | Layer 3 |
| dga-internally-graded-modules | DGAInfinity | Layer 1 |
| dga-graded-tor-spectral-sequences | DGAInfinity | Layer 5 |

These replace the design's internal gap notes G1–G4, which described the same needs.

## What the README could not support

- The étale bound §5.3 is a README theorem only (no Hurwitz scheme at the pins).
- Layer 1 depends on the DGAInfinity gaps for internally graded modules, balanced `Tor` and the two
  spectral sequences; Layers 2–3 on the AlgebraicTopology and GeometricTopology gaps. The README
  states every target with its intended inputs; no statement is weakened to avoid them.

## Sources

`sources.toml` records EVW16 (arXiv v4, with DOI and version note), HW10 (arXiv v4, with DOI) and
CD95 (author page). Every source cited was read. `needs-references.toml`: none (a first EVW fetch
request for the Annals host was superseded by the arXiv copy and removed from the scratch file).

## Untrusted text

No passage in the design, the other roadmaps or the sources asked for anything outside this job.

## Adversarial pass

Notation: `R = k[t]` is the component ring of the trivial group; `S₃`, `c` = transpositions.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `IsNonsplitting` (§0.1) | trivial group; `S₃`; `S₄`; `C₆`; `A₄` | trivial: closure `{1}` = `⊤`, all intersections `{1}` → true. `S₃`: subgroups `S₃, A₃, C₂(×3), 1` give `c, ∅, {t}, ∅` → true. `S₄`: `H=⟨(12),(34)⟩` abelian, `c∩H` = 2 non-conjugate elements → false. `C₆`: `{s}` generates `C₂ ≠ C₆` → false. `A₄`: one 3-cycle class meets each `C₃` in one element, `V₄` in `∅` → true | consistent with EVW | none |
| Order `2s` lemma (§0.2) | `S₃`, `D₅`, `C₆`, `S₄` | `S₃`: involutions one class of 3, generate → nonsplitting. `C₆`: unique involution, does not generate. `S₄`: order 24 not `2·odd` | true; generation is an extra hypothesis | Check added for `S₄` |
| Hurwitz move convention (§0.3) | `a=(12), b=(23)` | move gives `((13),(12))`, product `(12)(23)=(123)` preserved; inverse returns `((12),(23))` | matches EVW (1.3.2) line 102 and IG.3.2 | none |
| Braid relation for moves | `(a,b,c)` | `σ1σ2σ1` and `σ2σ1σ2` both give `(abcb⁻¹a⁻¹, aba⁻¹, a)`; proved in Lean (`hurwitzMove_braid`) | true | none |
| Fibre counts (§0.3) | `S₃`, `n = 2` | `c²`: 9 points; braid orbits: 3 fixed constants + 2 orbits of size 3 (products `(123)`, `(132)`) = 5; generating: 6; conjugation classes: 2 | consistent across §0.3, §0.6 (`dim R_2 = 5`), §4.5 (coinvariants 2) | none |
| `n = 0` fibres | any `G` | marked: empty tuple (1 point); full: empty unless `G = 1` | correct | Check |
| Block inclusion (§0.4) | `m = 1`, `n = 2` | `σ_1 ∈ B_2 ↦ σ_2 ∈ B_3` (native `0 ↦ 1`) | on last strands, as required by left gluing | Check |
| Group-homology model (§0.5) | `G` trivial; `X = B_n`; degree 0 | trivial: `H_p(Conf_n) = H_p(B_n; k)`; free `X`: `H_p(B_n; k[B_n]) = 0`, `p > 0` (universal cover); `H_0 = k[X/B_n]`, dim 5 for `S₃`, `n=2` | consistent | none |
| Component ring relation (§0.6) | `S₃` | `r_(12)r_(23)` (product `(123)`) ≠ `r_(23)r_(12)` (product `(132)`); relation `r_g r_h = r_(ghg⁻¹) r_g` from the move `(g,h) ↦ (ghg⁻¹, g)` | noncommutative, as stated | none |
| Central sum (§0.7) | `C₂`; `S₃`, `D=1`; trivial | `C₂`: `d=2`, `U_D = r_s^(2D)`. `S₃`: `U_1 = Σ r_t²`, degree 2 (not 6); boundary product of `r_t²` is `t² = 1`. trivial: `t^D` | degree `Dd`, not `|c|Dd` | none |
| `U_(2D) ≠ U_D²` | `S₃`, `D = 1` | `U_1²` contains `r_(12)² r_(13)²` (`g ≠ h`), absent from `U_2` | Check confirmed | none |
| Component stability (§0.8) | trivial; `S₄`; diagonal coefficient for `|H| = 2` in `S₃` | trivial: `D=1, N=0`, `R/UR = k` degree 0; `S₄`: `dim R_n ≥ n+1` (EVW line 133); `S₃`, `H=⟨t⟩`: `c∩H = {t}`, coefficient `1`, invertible | consistent; EVW's "surjective ⇒ bijective" replaced by cardinality stabilization | none |
| Shift and degree (§1.1) | `k[1]` in degree 0; zero module | `k[1]_0 = 0` (natural subtraction would give `k`); `deg 0 = −∞` satisfies every bound | correct | none |
| Defects (§1.2) | `R`, `U=t`, `M=R`; `M=k` | `M=R`: `ker = 0`, `R/tR = k` → `A(R) = 0`; `M = k`: `M[U] = M/UM = k`, `Tor_1 = k[1]` | `A1 ≥ 1` needed separately | none |
| Torsion bound (§1.6) | `R`, `U = t`, `M = k` | `R[U] = 0`; `M[U] = k` (deg 0) → `Tor_1(R̄,M) = k[1]` (deg 1) by a map of degree `a = 1`; `A(M) = 0 ≤ δ + A1 = 1 + 1` | true | design's value corrected in my first draft (`A(M)` is 0, not 1) |
| Higher quotient Tor (§1.7) | splice degrees | `P_1 = R[a]`, `Q_j[a]` generated in `≤ (j+1)A1 + a`; induction term `(b−u−1)A1 + a + δ + A1u = (b−1)A1 + a + δ ≤ bA1 + δ` iff `a ≤ A1` | holds with `A1 ≥ a` | none |
| Graded Nakayama (§1.8) | `R̄` nilpotent ideal; `k[t,t⁻¹]` over `k[t]` | over `R̄`: `R̄_+^N = 0` gives `V = ΣR̄x_i` with no lower bound; over `R`: `k[t,t⁻¹]` has zero coinvariants, nonzero | design's acceptance claim was for the wrong ring | Check rewritten |
| Low Tor defect (§1.9) | `R`, `M = k`; `M = R` | `M=k`: `δ = 1 ≤ 1 + 4A1`; `M=R`: `δ = deg R̄ ≤ 4A1` | true | none |
| General Tor (§1.10) | `M = N = k` over `k[t]` | `Tor_1 = k[1]`, `1 ≤ 0 + 1 + 5A1` | true | none |
| K differential (§1.11) | `q = 1`; `S₃`; `A₄` | `d²((g,h)⊗m) = (r_h r_(h⁻¹gh) − r_g r_h)m = 0` by the move `(h, h⁻¹gh) ↦ (g, h)`. With `hgh⁻¹`: boundary products `h²gh⁻¹` vs `gh`. `S₃`, `g=(12), h=(23)`: `h⁻¹=h`, conventions agree (both products `(123)`, same orbit). `A₄`, `g=(123), h=(134)`: `h² = h⁻¹` does not commute with `g`, products differ, `d² ≠ 0` | convention `g^h = h⁻¹gh` forced, but only a non-involution class detects it | Check rewritten with the `A₄` witness |
| K(k[t]) homology (§1.15) | `G` trivial, `M = R` | `d: K_(q+1) → K_q` is `t·Σ_(i≤q)(−1)^i` = `t` for `q` even, `0` for `q` odd → `H_q = k[q]` for even `q`, `0` for odd `q`; bound `A2 + q = 2 + q` | bound holds; my first draft's "no higher homology" was wrong | Checks in §1.15, §4.1 and worked example corrected |
| K(k) (§1.11, §1.16) | `G` trivial, `M = k` | all differentials 0, `H_q = k[q]`; with EVW constants `A1 = 0, A2 = 1`: bound 2 < 3 at `q = 3` | EVW Prop 4.13 false as printed; fixed by `A1 ≥ 1` | Notes on the sources |
| Low K vs Tor (§1.17) | `G` trivial, `M = k` | `H_1 K(k) = k[1] → Tor_1 = k[1]` iso; `H_2 K(k) = k[2]` vs `Tor_2^(k[t]) = 0` | only degrees 0, 1 compare | Check replaced |
| Linear K bound (§1.18) | `M = k` | `h_0 = 0, h_1 = 1, h_q = q ≤ 1 + 7q` | true | none |
| Module stability (§1.19) | `M = R`, trivial | `h_0 = 0`, `h_1 = −∞`, `b = 0`; `t: R_n → R_(n+1)` bijective all `n` | true | none |
| Disc mapping classes (§2.1) | `n = 0, 1, 2` | `Mod(D²) = 1`; `B_1 = 1`; `B_2 = ℤ`, half twist squared = Dehn twist about both points (pure) | consistent with `permHom` kernel | none |
| Arc complex (§2.2) | `n = 0, 1, 2` | no vertex; one vertex; infinitely many vertices (winding), edges only between distinct endpoints | dimension `≤ n − 1` | none |
| Coset model (§2.3) | `n = 1`; `n = 3, q = 0`; `q = n−1` | `A(1)_1 = ∅` (EVW formula gives a point); `L_(3,0) = ⟨σ_2⟩` native `1`; `L_(n,n−1) = 1` | truncation needed | Notes on the sources |
| Coset faces (§2.4) | `q = 1` | `∂_0 = b σ_1 L_0`, `∂_1 = b L_0`; `n = 2`: `|A(2)|` = real line | semisimplicial, contractible for `n = 2` | example rewritten |
| Connectivity (§2.6) | `n = 1, 2` | nonempty; connected graph | `(n−2)`-connected conventions hold | none |
| Borel arc resolution (§3.2) | `n = 0, 1` | `n = 0`: empty vs point (no equivalence); `n = 1`: point fibre, equivalence though range `t < −1` empty | range statement correct | none |
| Rows (§3.3) | `q = 0, 1` | `q = 0`: `k[c] ⊗ H_p(Hur_(n−1))`; `q = 1` faces match `d((g_0,g_1)⊗m)` with conjugation `g_0^(g_1)` from `s_(q,i)^(−1)` | inverse action essential | Check |
| Missing column term (§3.4) | trivial, `M = R`, `n = 1` | `coker(K_2 → K_1)_1 = k`, `(H_1 K(R))_1 = 0` | column 0 is the cokernel | none |
| Edge sequence (§3.5) | trivial, `p = 0`, `n = 1` | `0 → 0 → k → k → 0 → 0`, middle map `t: R_0 → R_1` iso | exact | none |
| Inductive bound (§4.1) | constants | `A1 ≥ 1` ⇒ `A2 ≥ 2`, `A0 ≥ 7`; `n > 2 + 21P` ⇒ `P < n − 2` | used step valid | none |
| Marked stability (§4.2) | `G` trivial; `C₂` | braid group stability (Arnold, `n ≥ 2p`) is implied in the range `n > 3A0 p + B`; `C₂`: fibre a point, step `2D` | consistent | none |
| Full monodromy (§4.3) | `S₃`, `|H| = 2`; `n = 0` | diagonal coefficient 1 (EVW (6.1.6) prints 3); `CHur_0 = ∅` for `G ≠ 1` | EVW scalar corrected | Notes on the sources |
| Quotient homology (§4.4) | `C₂` trivial conjugation; `S₃` constant tuple; antipodal `S²` in char 2 | quotient = identity; stabilizer order 2; `H_1(ℝP²;𝔽₂) = 𝔽₂ ≠ 0 = H_1(S²)_(C₂)` | `|G|` invertible needed | Check made concrete |
| Unmarked stability (§4.5) | `S₃`, `n = 2` | `H_0(Hur_2) = k^5`, coinvariants under conjugation = 2 = `H_0(Hur_2/G)` | consistent; centrelessness unused | generalized (see above) |
| Lean `hurwitz_homological_stability` vacuity | `p = 0`; `full = true`, small `n` | for `p = 0` it asserts bijectivity for every `n > B` (nontrivial: Lemma 3.5); for empty fibres both sides are 0 | not vacuous; `m` constrained by `g^m = 1`, `m > 0` | none |
| Cell model (§5.1) | `n = 2, 3`; cover count | `Z_2`: 1+1 cells, circle; `Z_3`: 1+2+1 cells, relation `xyx = yxy`; `2^(n−1) |G|^n ≤ (2|G|)^n` | correct | none |
| Uniform Betti (§5.2) | reduction; `S₄` | `m ≤ Ai + B + a ≤ (A+B+a+1)(i+1)`; `S₄`: `b_0` unbounded, no `C` | correct; nonsplitting needed | Check |
| Lean `uniform_betti_bound` | `n = 0`; infinite dimension | `n = 0`: rank 1 in degree 0, needs `C ≥ 1` (existential); stated with `Module.rank` (cardinal), so an infinite-dimensional group cannot satisfy it by the `finrank = 0` junk value | not vacuous | `Module.rank` chosen deliberately |
| Étale bound (§5.3) | `ℓ` vs `n`; `ℝP²` | `ℓ > max(|G|, q, n)` depends on `n`; comparison at `n + a` would need `ℓ > n + a`; `H¹(ℝP²,𝔽₂) = 𝔽₂`, `H¹(ℝP²,ℚ) = 0` | upper bound only; centreless and rational class kept | none |
| Conventions: Frobenius/convention witnesses | — | not used: no Frobenius statement; Hurwitz convention pinned by the `(12),(23)` example; shift by `k[1]_0 = 0`; `g^h = h⁻¹gh` by the K-differential example | pinned | none |
