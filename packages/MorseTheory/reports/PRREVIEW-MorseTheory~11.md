# Review of MorseTheory (pull request #1682 at 9a916c5)

**Verdict:** needs changes

:robot: Independent AI incremental re-review of `TauCetiRoadmap/MorseTheory/` at head 9a916c5a1002428a5aa844fa86ca2df5045549d2: 22 changed lines since 2790aed. The four edits in the diff are correct, and the previous finding is repaired. One blocking finding is new and does not come from the diff. Main's MorseTheory changed under this pull request: the degenerate-sphere revision (commit 53021f19, merged 2026-11-05, after the previous review read main at dd4b28f) now conflicts with this head in both files, and this head would discard it.

## R01 (P2) — The head is not rebased onto main and drops main's M4.1 degenerate two-critical-point sphere theorem

**Location:** `TauCetiRoadmap/MorseTheory/Suggested.lean:149–155` ("theorem nonempty_homeomorph_sphere_of_two_criticalPoints [CompactSpace M] (hdim …) (f : M → ℝ) (hf : TauCeti.IsMorse I f) (hcrit : (criticalPoints (I := I) f).encard = 2)"). Also `README.md` §4.3, line 970 ("The sphere proof uses Morse nondegeneracy at both extrema") and line 974 (the h−h³/3 Check "the two-handle hypothesis fails"). The README has no counterpart of main's M4.1.

**Claim:** This head revises the MorseTheory roadmap as it is on main.

**Witness:** Main eaf17b1, `MorseTheory/README.md:613`, "### M4.1. Two critical points with arbitrary degeneracy". Main's `Suggested.lean:295–299` states the theorem with only `ContMDiff` and `totalCriticalCount f = 2`. `git merge-tree --write-tree origin/main 9a916c5` reports CONFLICT in README.md and Suggested.lean.

**Why it blocks.** Main now owns several targets that this head lacks entirely:
- the degenerate Reeb–Milnor/Rosen theorem (exactly two critical points, any degeneracy);
- the two-Euclidean-open cover;
- Brown's bicollared generalized Schoenflies theorem, with the open-map step of invariance of domain;
- the two-open-cell lemma `nonempty_homeomorph_sphere_of_two_euclidean_opens`.

If this head merged as it stands, it would replace main's smooth-only sphere headline with a Morse-only one. That narrows the statement below what main states and what its sources support (Milnor 1959, Corollary 1, p. 442; Brown 1960, Theorem 5, p. 76). It would also delete the section that another roadmap expects. The open GeometricTopology revision (rev 903), `GeometricTopology/README.md:12996–12997`, says MorseTheory consumes its Layer 2.2 Schoenflies theorem as "the topological input of its target M4.1". The section-id map at README lines 156–161 omits main's `#m41-two-critical-points-with-arbitrary-degeneracy`.

**Instance:** f = h − h³/3 on S².
- df = (1−h²)dh vanishes only at the poles, so there are exactly 2 critical points.
- Near the north pole, f ≈ 2/3 − r⁴/4, so the Hessian is 0 and `IsMorse` fails.
- The head's theorem says nothing about this f; main's theorem gives S².

**Exact repair:**
1. Rebase onto current main and resolve both files toward main's content.
2. Carry main's M4.1 forward as a Layer 4 subsection, for example "### 4.4 Two critical points with arbitrary degeneracy". Keep its three targets, their *Needs:* lines and Checks, and its locators: Brown 1960 Thm 5 p. 76, Hatcher Thm 2B.3 p. 172, Milnor 1959 Cor 1 p. 442. Add those works to References.
3. Restore main's ownership sentences for Brown's theorem and for the open-map step of invariance of domain, in Scope and ownership and in the Tau Ceti contract. The contract cites `natCard_zerothHomotopy_sphere_compl_range_eq_two`, `isZero_reducedSingularHomologyFunctor_compl_range_closedBall` and `isZero_reducedSingularHomologyFunctor_sphere_compl_singleton`. All three exist at this pin, in `AlgebraicTopology/Singular/{JordanBrouwer,CubeComplement,Sphere}.lean`. GeometricTopology's Layer 2.2 exists only in an open revision, which is not a dependency, so MorseTheory keeps the ownership.
4. In `Suggested.lean`, state `nonempty_homeomorph_sphere_of_two_criticalPoints` with `hf : ContMDiff I 𝓘(ℝ) ∞ f` in place of `TauCeti.IsMorse I f`. Restore `nonempty_homeomorph_sphere_of_two_euclidean_opens`. Connectedness may stay dropped: on a compact component of positive dimension, min = max would make f constant there, so every point of the component would be critical.
5. In §4.3, reword the h−h³/3 Check and the *Needs:* sentence so the Morse proof is presented as the nondegenerate route to the same theorem.
6. Add the line `#m41-two-critical-points-with-arbitrary-degeneracy` → (the new subsection's id) to the map.
7. Main's `exists_cwComplex_homotopyEquiv`, `morse_inequalities`, `minimumCriticalCount` and its two M6 theorems are cited by no other roadmap (`roadmaps grep` on main and at all open heads), so the head's names for them may stand.
8. Re-run the gate at main's pins. Main moved to Tau Ceti 2fd255d, Mathlib 1b1ccf4 and Lean v4.36.0-rc2.

Tested on f = h − h³/3: the repaired hypotheses hold (smooth, `encard = 2`, dimension 2 > 0), so the repaired theorem gives S².

## Previous findings

- R01 — repaired: line 17 now reads "following HomotopySpheres §4B." with no hyperlink. The other two mentions (lines 1037 and 1133) were already plain text. §4B resolves at the open HomotopySpheres head, `HomotopySpheres/README.md:1401`.

No repair report marks a finding not actionable in this package.

## Verified sound

**Head, gate and dependency check.**
- Head 9a916c5a1002428a5aa844fa86ca2df5045549d2. This pull request's pins: Mathlib 6b7abb3c, Tau Ceti a91d3aaf, Lean v4.35.0-rc3. Main is eaf17b1.
- `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/MorseTheory'` is empty, and the worktree is clean.
- The gate, rerun on this head, printed:

```text
gate MorseTheory: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

- The worker's gate also reports `build=0`.
- The dependency check printed `depcheck: 239 roadmaps, 2369 edges, 0 problem(s)`, with no UPWARD, CYCLE or moved line. MorseTheory is on main.
- The citation resolver found nothing missing.
- The gate does not test mergeability with main, which is why it passes despite R01.

**The changed passages.**
1. *Section-id map* (README lines 153–161). I computed GitHub slugs of every heading:
   - all 6 old ids are slugs of main's headings at eaf17b1 (`## M1.` … `## M6.`, lines 110–895);
   - all 6 new ids are slugs of this head's layer headings (lines 170, 294, 679, 759, 989, 1064).
   
   This covers the two ids that `overlaps.md` reports as cited, HeegaardFloer main lines 647 (m2) and 1064 (m5). The only missing id is m41 (R01).
2. *K7 link* (line 943). The citation "ComplexKahlerGeometry K7.1 and K7.2" resolves on main (K7 at line 1405, K7.1 at 1407, K7.2 at 1444). It also resolves at the open ComplexKahlerGeometry head rev 1398, which relabels these as "### 7.1 … (K7.1)" (2241) and "### 7.2 … (K7.2)" (2298). Dropping the anchor makes the link robust to that relabelling. The supplier contract (lines 140–144) agrees.
3. *HomotopySpheres line*: see Previous findings. HomotopySpheres is line 66 of the merge order and is cited as a consumer only.
4. *`letI` removal* (`Suggested.lean` lines 77–84 and 109–115). I built a scratch copy that keeps the 2790aed statements as `…_old` and added `example : type_of% @X_old.{v1,v2,v3} = type_of% @X.{v1,v2,v3} := rfl`, with four universes for the CW model.
   - Both examples elaborate.
   - A control with `⊥` in place of the bound topology is rejected ("Type mismatch").
   - So the existentially bound `cs`, `t` and `cw` are the instances used, and the meaning is unchanged.

**Elaboration and padding.**
- `lake env lean TauCetiRoadmap/MorseTheory/Suggested.lean` exits 0 with exactly 12 `declaration uses sorry` warnings (lines 53, 59, 74, 94, 107, 122, 136, 149, 158, 173, 185, 198) and nothing else.
- `scratch/signatures.md` was unavailable because a shared olean was missing; direct elaboration from this worktree succeeded.
- Only the two statements above changed, so the r10 `#check @name` comparison stands for the other 14 declarations, and the two changed ones are tied to it by `rfl`.
- One-tactic probe: replacing each `sorry` with `first | rfl | simp | infer_instance | (intro x; simp) | exact ⟨⟩ | aesop` gave 12 errors, one per theorem; none closes.

**Sources.** I fetched cohen-iga-norbury into a scratch manifest from the author's page and re-read Application 5.13 at cohen-iga-norbury line 1617–1619 (printed p. 43, PDF p. 56). It states: closed manifold, Morse function, exactly two critical points, homeomorphic to Sⁿ. This matches §4.3 as written. The other sampled locators (§§1.1–3.2, 4.1, 4.2, 5.1, 6.1) lie outside the changed passages; their r10 verification stands.

**Ownership by object.**
- Brown's generalized Schoenflies theorem currently has two owners: main's MorseTheory M4.1 and the open GeometricTopology revision (rev 903, §2.2, line 1176), which also says MorseTheory consumes it. This head owns neither, so this is not a finding against it. Repair step 3 keeps main's ownership. Whichever of the two pull requests lands second should cite the other.
- No other roadmap cites main's M4.1 declarations or anchor (`roadmaps grep` on main and at all open heads).
- `overlaps.md`: no other open pull request changes this roadmap, and no cited id is dropped elsewhere.

**Adversarial table.**
- Rows 1–57 are carried from the previous report (PRREVIEW-MorseTheory~10) for statements the diff leaves untouched.
- Rows 58–64 are computed this round for the changed statements and passages and for R01.

| # | Statement | Instances | Values on each side | Result | Basis |
| --- | --- | --- | --- | --- | --- |
| 1 | §1.1 transport of derivatives (sample) | f(x)=x, rechart y=2x | derivative in x: 1; in y: 1/2; chain (1/2)·2=1 | transport, not equality; sound | carried from r10, untouched |
| 2 | §1.1 boundaryless hypothesis (sample) | half-line model | range I=[0,∞)≠ℝ; `range I=univ` fails | excluded as stated | carried from r10, untouched |
| 3 | §1.2 Hessian convention (sample) | f=−x²+y² | d²f=diag(−2,2); index 1 (one negative square); one critical point | matches Check; no factor 1/2 | carried from r10, untouched |
| 4 | §1.2 complementary index premise (sample) | f=0 on ℝ; f=x² | 0+0=0≠1; 0+1=1 | nondegeneracy needed; pinned theorem has it | carried from r10, untouched |
| 5 | `criticalCount` on infinite locus (headline) | constant on S¹ | encard=⊤; `Nat.card` would give 0 | ℕ∞ essential | carried from r10, untouched |
| 6 | §1.3 normalized chart (sample, headline) | f=2x² | ψ=√2·x gives f=ψ²; Hess f=4, normalized Hess 2 | √2 division correct | carried from r10, untouched |
| 7 | §1.3 persistence (sample) | f_t=x²+tx; f_t=x³−tx | x_t=−t/2, value −t²/4, index 0; second: 0 roots for t<0, Hess 0 at t=0 | branch cannot cross birth–death | carried from r10, untouched |
| 8 | §1.3 compact Cᵏ seminorms (sample) | h=δx² on [−1,1] and [−1/2,1/2] | suprema (δ,2δ,2δ) and (δ/4,δ,2δ) (computed with δ=1: 1,2,2 and 0.25,1,2) | restriction need not shrink every order | carried from r10, untouched |
| 9 | `finite_criticalPoints_inter` (headline) | x² on [−1,1]; constant on S¹ | 1 point; constant fails `IsMorse` (Hessian 0 on a 1-dimensional space) | compactness plus isolation | carried from r10, untouched |
| 10 | §2.1 regular level (sample, headline) | f(x,y)=x, c=0 | level ℝ, Di(v)=(0,v), range=span e₂=ker(1,0) | sound | carried; statement changed by `letI` removal only, recomputed in row 58 |
| 11 | §2.1 dimension 0 (sample, headline) | point, f=0, any c | 0→ℝ not onto, level ∅; model `Fin (0−1)=Fin 0` | empty level, vacuous atlas | carried; recomputed in row 58 |
| 12 | §2.1 dimension 1 (headline) | ℝ, f=x, c=0 | level {0}, model Fin 0→ℝ, tangent range 0=ker(1) | sound | carried; recomputed in row 58 |
| 13 | §2.1 Fredholm index (sample) | D(x,y)=x | ker dim 1, coker 0, index 1=2−1 | integer and natural index agree | carried from r10, untouched |
| 14 | §2.1 outward sign (sample) | [a,b] with dx | outward −∂ₓ at a: sign −; +∂ₓ at b: sign + | matches Check | carried from r10, untouched |
| 15 | §2.2 strong retraction (sample, headline) | f=x², a=1, b=4 | r(x)=max(−1,min(x,1)); r∘incl=id on [−1,1] | matches Milnor 3.1 | carried from r10, untouched |
| 16 | §2.2 normalized field (sample) | x² on [a,b], a>0, x=0.7 | X=−1/(2x); d(x²)/dt=2x·X=−1.0 | denominator ≥4a>0 | carried from r10, untouched |
| 17 | §2.2 adapted field sign (sample) | −u²+v², X=(2u,−2v) | df(X)=−4(u²+v²)<0; (−2u,−2v) gives +4u² on v=0 | sign pinned | carried from r10, untouched |
| 18 | §2.2 dimension 0 band (sample, headline) | discrete M | every point critical, critical-free band ∅; r=id | sound | carried from r10, untouched |
| 19 | `sublevelInclusion` laws (headline) | x², levels 1→4→9, x=1 | 1↦1 both ways; a=b: id | sound | carried from r10, untouched |
| 20 | §2.2 escape vs completeness | X=x² on ℝ | x=x₀/(1−x₀t), blowup at 1/x₀ | smooth field need not be complete | carried from r10, untouched |
| 21 | §2.3 double-well chart (sample) | (x²−1)², y=x√(2−x²) | 1−y² = f at x=0, 0.3, 0.7, −0.9: 1, 0.8281, 0.2601, 0.0361 both sides | chart identity exact | carried from r10, untouched |
| 22 | §2.3 attaching values (sample) | ε=1/2 | α₊(1)=0.541196, f=0.500000; α₋(1)=−0.541196 | different components; reflection needed | carried from r10, untouched |
| 23 | §2.3 RP² normalized chart (sample) | (u,v)=(0.2,0.5),(1.3,−0.4) | f=1.744186, 0.757895 = 2−X²−Y² | chart formula exact | carried from r10, untouched |
| 24 | §2.3 Milnor comparison seams (sample) | h=−id, λ=1 | at |x|=1/2 inner h(2x) has norm 1 and outer parameter 2−2|x|=1 agree; at |x|=1 parameter 0 gives α₁ | seams match Lemma 3.6 | carried from r10, untouched |
| 25 | §2.3 orientation law (sample) | λ=1,2, reflection | λ=1 swaps ±1; λ=2 degree −1; λ=0 empty boundary | exceptional low indices stated | carried from r10, untouched |
| 26 | `exists_morseCWModel` (sample, headline) | S² height; ℝ, x²; ∅; discrete ℕ, f(n)=n | cells (1,0,1); one 0-cell; no cells; ℵ₀ 0-cells; X in any universe u_4 by lifting a Type-0 model | proper noncompact and empty cases hold | carried; statement changed by `letI` removal only, recomputed in row 59 |
| 27 | §2.4 empty start (sample) | x², a₀=−1 | M_(−1)=∅ | tower starts at the empty complex | carried from r10, untouched |
| 28 | §3.1 strong vs compact-open (sample) | ℝ, tolerance e^(−x²), constant δ | at large x e^(−x²)<|δ|; on [−1,1] |δ|<e⁻¹ passes | distinction correct | carried from r10, untouched |
| 29 | §3.1 restriction to open sets (sample) | δψ, ψ=1 near 0, on (0,1) | at x<δ with ψ=1, error δ>x; on [a,b]⊂(0,1), δ<a passes | only clopen restriction asserted | carried from r10, untouched |
| 30 | `exists_proper_boundedBelow_morse` (sample, headline) | ℝ; point; ∅; discrete ℕ | x²; constant 0; empty function; f(n)=n; constant on ℕ not proper | sound | carried from r10, untouched |
| 31 | §3.2 perturbation bound (sample) | x², |g−f|<1 | g≥−1; g≤b⇒x²<b+1 | exhaustion preserved | carried from r10, untouched |
| 32 | `bettiNumber` (headline) | point; ∅; S¹ | (1,0,…),(0,0,…),(1,1,0,…) | native finrank | carried from r10, untouched |
| 33 | `strong_morse_inequalities` (sample, headline) | S²; RP² over ℚ and 𝔽₂; ∅; r points | 1+t²=1+t²+0; 1+t+t²=1+(1+t)t; 𝔽₂: Q=0; 0=0; r=r; k and M share universe u_3 | sound | carried from r10, untouched |
| 34 | §4.1 negative control (sample) | c=(2,0,0,2), b=(1,0,0,1) | weak true; Euler 0=0; degree-1 strong −2≥−1 false | Check correct | carried from r10, untouched |
| 35 | §4.1 Q coefficient (sample) | CIN proof line 1588 | c_k=d_(k+1)+b_k+d_k ⇒ Q_k=d_(k+1)=rank ∂_(k+1); RP²/ℚ: rank ∂₂=1 ⇒ Q=t | matches README 781 | carried from r10, untouched |
| 36 | §4.1 free subgroups (sample) | ⊕ₙ2ℤ⊂⊕ₙℤ | basis {2eₙ}, infinite rank; pinned PID.lean covers finite generation only | ownership correct | carried from r10, untouched |
| 37 | §4.2 LS bound (sample) | S¹ height; constant; T²; ∅ | 2≤2; 2≤∞; 3≤4; 0≤0 | sound | carried from r10, untouched |
| 38 | `exists_criticalCategoricalCover` (headline) | ∅; nonempty compact M | Fin 0 cover, vacuous; crit≥1 by extreme value | sound | carried from r10, untouched |
| 39 | §4.2 minimum c(M) (sample) | ∅; point; r points; S¹ with 2- and 4-critical witnesses | 0; 1; r; min{2,4,…}=2 | witness independence | carried from r10, untouched |
| 40 | `exists_degenerateCriticalLevelDeformation` (headline) | x⁴ at 0, U=(−r,r), r=1/2, ε=0.05; no critical point at c; U=⊤ | ε^(1/4)=0.473<0.5 so {x⁴≤ε}⊂U; empty hypotheses, flow below c−ε; Φ=id | both disjuncts used | carried from r10, untouched |
| 41 | `exists_noCriticalOpenSublevelDeformation` (headline) | S¹ height, a=−1/4, b=1/4, δ=1/4 | no critical value in [−1/2,1/2]; endpoint f<−1/4 | buffer makes strict target achievable | carried from r10, untouched |
| 42 | §4.2 boundary exclusion (sample) | f(t)=t on [0,1] | df=1, no interior critical point | boundaryless premise needed | carried from r10, untouched |
| 43 | `nonempty_homeomorph_sphere_of_two_criticalPoints` (sample, headline, finding) | S² height; h−h³/3; point; two S² copies | 2 nondegenerate points, S²; poles with Hessian 0 excluded; count 1≠2; 2·2=4≠2 | connectedness forced; R05 repair sound | carried; statement untouched, compared with main in row 60 (R01) |
| 44 | §4.3 CP¹ (sample) | f=|z₁|²/(|z₀|²+|z₁|²) | near [1:0]: g(r)=r²/(1+r²), g″(0)=2.0000; values 0,1; indices 0,2 | denominator positive, z≠0 | carried from r10, untouched |
| 45 | §4.3 parity (sample) | S²; T²; S¹ | 2≡χ=2; 4≡0; c(−f)=(1,1), χ=0 | sound | carried from r10, untouched |
| 46 | §5.1 Morse–Bott definition (sample) | y² vs y⁴ on ℝ² | kernel span e₁ vs ℝ² | second not Morse–Bott | carried from r10, untouched |
| 47 | §5.1 constant function (sample) | f=0 on compact M | normal rank 0, contribution B(M) | isolated points not inferred | carried from r10, untouched |
| 48 | §5.1 Thom shift (sample) | point base, rank λ | H_j(D^λ,S^(λ−1))=ℤ iff j=λ | recovers ordinary Morse | carried from r10, untouched |
| 49 | §5.1 orientation system (sample) | negative Möbius line over S¹ | twisted H₀=ℤ/2; constant ℤ gives ℤ | Check correct | carried from r10, untouched |
| 50 | §5.1 E¹ convention (sample) | RP² cells | E¹=(ℤ,ℤ,ℤ), d=2 on the 2-cell; E²=(ℤ,ℤ/2,0) | relative groups are E¹ | carried from r10, untouched |
| 51 | §6.1 trapped convergence (sample, headline) | x², γ=x₀e^(−2t) | E=x₀²e^(−4t), E′(0)=−4x₀²=−‖grad‖²=−(2x₀)² | constants consistent | carried from r10, untouched |
| 52 | §6.1 metric rescaling (sample, headline) | 4dx², x², x₀=1, t=1 | grad=x/2, γ=x₀e^(−t/2); tail length numeric 1.21315 vs closed form 2e^(−1/2)=1.21306 | rate depends on metric, as the Check says | carried from r10, untouched |
| 53 | §6.1 equilibrium (sample, headline) | γ≡0 | E=0, distance 0≤C e^(−ct) | no division by E | carried from r10, untouched |
| 54 | §6.1 non-Morse rate (sample) | x⁴, γ=(x₀⁻²+8t)^(−1/2) | decay t^(−1/2), Hess 0 | nondegeneracy needed | carried from r10, untouched |
| 55 | §6.1 extended distance (sample, headline) | two copies of ℝ, x² | cross-component ∞; in-component |x₀|e^(−2t); γ(t) and p share a chart for t≥T | `riemannianEDist` handles it | carried from r10, untouched |
| 56 | §6.1 non-trapping examples (finding) | f=x; e^(−x), γ=log(e^(x₀)+t) | γ=x₀−t leaves every compact set, no critical point; e^(−x): bounded below, no critical point, γ→∞ | hypothesis fails, not conclusion; R01 boundary correct | carried from r10, untouched |
| 57 | Scope paragraph (finding) | f(x,y)=x on ℝ² | ‖grad‖=1, PS vacuous, band [0,1]×ℝ noncompact | no target here covers it, as the paragraph says | carried from r10, untouched |
| 58 | `exists_scalarRegularLevelData` without `letI` (sample 2.1, headline) | old vs new statement; f(x,y)=x on ℝ², c=0; dim 0 | `type_of%` equality at universes v1–v3 closes by `rfl`; ⊥-topology control rejected; f=x: level {0}×ℝ, model `Fin (2−1)→ℝ`=ℝ, tangent range span e₂ = ker(1,0); dim 0: `Fin (0−1)`=`Fin 0`, and `hregular` forces an empty level | bound `cs` used; meaning unchanged | computed this round |
| 59 | `exists_morseCWModel` without `letI` (sample 2.4, headline) | old vs new; S² height; x² on ℝ; ∅ | `rfl` at universes v1–v4 closes; cells by index (1,0,1) ↔ {S} at index 0, {N} at index 2; one 0-cell; no cells | bound `t`, `cw` used; meaning unchanged | computed this round |
| 60 | sphere theorem, head vs main (R01) | f=h−h³/3 on S²; two copies of S² | df=(1−h²)dh: 2 critical points; f(N)=2/3, f(S)=−2/3, f≈2/3−r⁴/4, Hessian 0 so `IsMorse` fails; the head's theorem is silent, main's gives S²; each positive-dimensional component has min≠max, so 2 components give ≥4 | head narrower than main: R01 | computed this round |
| 61 | section-id map (changed) | slugs of main eaf17b1 and head headings | old ids in main: 6/6; new ids in head: 6/6; main slug `m41-two-critical-points-with-arbitrary-degeneracy` mapped: 0/1 | m41 missing: R01 step 6 | computed this round |
| 62 | K7 citation (changed) | main CKG; rev 1398 CKG | K7.1 at 1407 and K7.2 at 1444 (main); "(K7.1)" at 2241 and "(K7.2)" at 2298 (rev 1398) | resolves under both | computed this round |
| 63 | HomotopySpheres §4B (r10 R01) | rev 1287; merge order | heading at line 1401; merge-order line 66; 3 plain mentions at lines 17, 1037, 1133 | repaired; consumer only | computed this round |
| 64 | §4.3 locator (sample 4.3) | cohen-iga-norbury line 1617 | p. 43 = PDF 56 − 13; hypotheses: closed manifold, Morse function, two critical points; conclusion: homeomorphic to Sⁿ | matches §4.3 | computed this round |

## Not verifiable

- `hirsch-differential-topology` (Ch. 2 §1, Ch. 6 Thm 1.2): paywalled, recorded `uncertified` last round. It lies outside the changed passages.
- Thomas Mark, Math240 Homework 11: no legal text. The README uses it only for bibliographic attribution.
- Main's pins (Tau Ceti 2fd255d, Mathlib 1b1ccf4) were not available in this worktree, so I could not elaborate the head against them. Repair step 8 asks for this.
- Ownership against open pull requests whose files the brief does not supply was not checked.

## Source issues

- none
