# Review of GeometricQuantization (pull request #1186 at ddba4b9)

**Verdict:** accepted

Incremental re-review of the 21 changed README lines since 25d4909 (scope paragraph and the Downstream consumers section). No blocking finding remains; the two findings below are the unrepaired P3 items of the previous review, carried forward as notes.

## R01 (P3) — Delete the character-wrapper companion

**Location:** `TauCetiRoadmap/GeometricQuantization/HomogeneousCharacterTargets.lean:1`–91, in particular line 10: “flag dictionaries are specified in Q2A and S3P” and line 20: “def restrictCharacter … := χ.comp i”.

**Claim:** The file is unchanged since the previous review. It still carries six generic wrappers over native character operations, eight theorems closed by `rfl`, `Iff.rfl` or extensionality, four `Mathlib.<submodule>` imports, no target-signature module docstring and no README correspondence for its fourteen names. Its docstring now also points at a section (S3P) that exists on no roadmap on main: it lives only in the SchubertGeometry revision pull request, which this roadmap does not and may not cite.

**Witness:** `git diff 25d4909..ddba4b9 -- TauCetiRoadmap/GeometricQuantization` touches README.md only. Pinned owners of the six operations: `ContinuousMonoidHom.comp` (`Mathlib/Topology/Algebra/ContinuousMonoidHom.lean:152`), `MonoidHom.ker` (`Mathlib/Algebra/Group/Subgroup/Ker.lean:238`), `QuotientGroup.lift` (`Mathlib/GroupTheory/QuotientGroup/Defs.lean:249`), `continuous_quot_lift` (`Mathlib/Topology/Constructions.lean:729`).

**Repair:** Delete the file from the folder. Keep the three character Checks of §3.1 in the README (S₃ sign has kernel A₃ of order 3 and sends the nonidentity coset to −1; restriction along multiplication by 2 sends the integral character 3 to 6); the README already says these are Mathlib operations, not new wrappers. Do not move the declarations into `Suggested.lean`.

## R02 (P3) — Record the fifteen references in the source manifest

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:1828`–1874, “## References”; the folder has no `sources.toml`.

**Claim:** The folder still lists README.md, Suggested.lean, HomogeneousCharacterTargets.lean and metadata.toml only. None of the fifteen cited works has a `tauceti-roadmap-sources/v1` entry with its version, locator, retrieval route and legal status. The Schottenloher, Tuynman and Ma–Marinescu locators depend on specific versions (15.6, arXiv v2, arXiv v1 respectively) and the Demailly page numbers on the author-page PDF, so the record matters.

**Witness:** This round's service fetches of Demailly (author page, `www-fourier.univ-grenoble-alpes.fr`) and Graham–Vogan (author page, `math.mit.edu`) succeeded only with an explicit `--licence-class author-page`; nothing records that classification in the folder.

**Repair:** Add one entry per work with the keys of the previous report (graham-vogan, demailly, schottenloher, tuynman, ma-marinescu, cannas, vergne, meinrenken, meinrenken-sjamaar, sjamaar, kostant, sniatycki, woodhouse, kodaira, knutson), the version actually read, `locator_scheme`/`locator`/`cited_for`, and the service's `fetched_from`, `sha256`, `licence_class` and `status` (`uncertified` for Kostant, Sniatycki, Woodhouse, Kodaira; the Knutson notes unfound). Published and preprint versions share one key. No source text enters the folder.

## Previous findings

- R01 — repaired: “These ordinary Picard and fundamental-line degree comparisons have their single owner in §3.3, including the harmonic/root-weight vanishing argument. The SchubertGeometry, Part II application consumes them” (README:21–25) and “These are outputs of Layer 3 for that application; no result of the application is a premise of Layer 3” (README:1809–1810). The allocation the previous review asked for is recorded in both the scope and the downstream contract. The README cites no S3P section (grep count 0), keeps SchubertGeometry S9.1/S9.7 as the only SchubertGeometry supplier, and depcheck reports no problem. The SchubertGeometry revision pull request still plans S3P.1–S3P.2 independently at its head (`TauCetiRoadmap/SchubertGeometry/README.md:233`–279 there, with S3P.3 at 281 consuming this roadmap's Q2A.1/Q2A.3); that duplicate is for that revision to remove, since a revision of an existing roadmap is never a dependency of this one and cannot be edited from this pull request. Nothing in this package depends on how it is resolved.
- R02 — not repaired: `HomogeneousCharacterTargets.lean` is byte-for-byte the file the previous review read; this report's R01.
- R03 — not repaired: no `sources.toml` in the folder; this report's R02.

No repair report marks any finding “not actionable in this package”; nothing is re-raised against a settled disposition.

## Verified sound

**Scope of this round.** I read the previous report in full, the change set (`changes.md`: README.md only, 18 insertions and 3 deletions, no file outside the folder), and the changed passages with everything they cite: the scope paragraph (README:9–27), the Downstream consumers section (README:1800–1826), and the sections those passages describe, §3.1 (README:470–517), §3.3 (README:624–678), §3.4 (README:680–748), the SchubertGeometry supplier contract (README:200–207) and the AlgebraicTopology contract (README:209–213). `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/GeometricQuantization'` is empty. No worktree file was changed. The companion and `Suggested.lean` are unchanged since 25d4909 and were not re-reviewed beyond confirming that.

**Gate, dependency direction, elaboration.** The worker's gate at ddba4b9 reports every counter zero and `OK` (text scanners, depcheck, stray-files, outside-folder, targeted build). I ran the prescribed dependency check myself; its complete output was

```text
depcheck: 204 roadmaps, 1457 edges, 0 problem(s)
```

with no UPWARD, CYCLE or moved line. I ran `lake env lean` on `Suggested.lean` from the worktree root: exit 0, no output (the file declares nothing, so there is no `sorry` warning and no `#check` scratch to compare; the module docstring's list of non-statable headlines is unchanged from the previous review, whose statability audit stands). Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, as in `lake-manifest.json`; no library declaration is newly cited by the diff, so the previous report's sixteen-group pin audit is carried unchanged.

**Cross-roadmap citations in the changed passages, resolved this round.**

| Citation | Resolved at | Outcome |
|---|---|---|
| SchubertGeometry S9.1 | main `fa41b374`, `TauCetiRoadmap/SchubertGeometry/README.md:109` (item 1 of S9: analytic/algebraic flag comparison, compact homogeneous flag model through LieGroups) | exists; supplies the flag model the scope paragraph names |
| SchubertGeometry S9.7 | main, same file, line 122 (item 7: K/H ≃ G/P⁻ with Levi roots vanishing on μ, invariant complex structure J_flag, positive K-invariant KKS Kähler metric, comparison with HamiltonianReduction R2a) | exists; supplies exactly the “complex structure, positive invariant KKS metric and coefficient +1” inputs §3.3 lists; no integrality of μ assumed there, matching README:637–639 |
| SchubertGeometry's position | not in `merge-order-candidate.txt` (it is on main), so it is an eligible supplier at every position | earlier supplier, as the scope paragraph says |
| ComplexComparisonPartII C5.4, C0.3 | merge order line 38, before GeometricQuantization at line 137 | downward |
| “SchubertGeometry, Part II” (consumer only) | no roadmap of that name on main, in the board packages index or among the open pull-request folders; the application the paragraph describes is carried as layer S3P of the SchubertGeometry revision pull request | a downstream name, not a supplier citation; it is not on any `*Needs:*` line and creates no edge. The wording follows the previous review's repair. A reader should know that the roadmap does not exist yet. |
| §§3.1/3.4 “homogeneous fibre-character and global-form forgetful maps” | README:474–477 (evaluation on the fibre at eH and the associated-line inverse); README:688–690 (forgetful map X^*(T)→P by restriction/pairing, kernel the characters of K) | both maps are stated where the downstream paragraph says |
| §3.3 “degree matrix, H^q(K/H,𝒪)=0 for q>0, Picard–Chern isomorphism” | README:634–635, 643–650 | all three are targets of §3.3 |

**Sources at the sampled locators that fall in the changed passages.** The sample's §3.3, §3.1 and §3.4 targets cite Demailly and Graham–Vogan; both were fetched through the sources service (author-page licence class) and read at the locators.

| Target | Source passage | Result |
|---|---|---|
| 3.3 Picard comparison | demailly lines 15564–15572 (VI §9.1, printed p. 314): exponential sequence of a connected compact Kähler manifold, exact segment H¹(X,ℤ)→H¹(X,𝒪)→H¹(X,𝒪*)→H²(X,ℤ)→H²(X,𝒪), labelled (9.1) | supports the segment §3.3 applies; §3.3's conclusion Pic ≃ H² needs H¹(𝒪)=H²(𝒪)=0, which §3.3 proves, not assumes |
| 3.3 Dolbeault/sheaf dictionary | demailly lines 13141–13215 (V §11, printed pp. 267–268): canonical (0,1)-connection, Dolbeault complex, Proposition 11.5 H^{0,q}(X,E)≃H^q(X,𝒪(E)), Dolbeault isomorphism 11.7 | supports the identification of harmonic (0,q)-forms with H^q(𝒪) used in the vanishing argument |
| 3.1 and 3.4 associated quotient | graham-vogan lines 1083–1086 (Example 5.8, printed p. 25): total space G×H modulo (gh,v)∼(g,τ(h)v), left G-action | the README's relation (g,z)·h=(gh,λ(h)⁻¹z) is the same quotient: substituting v=λ(h)⁻¹z gives (gh,λ(h)⁻¹z)∼(g,z) |

The remaining twelve sampled targets are untouched by the diff; their locator checks are those of the previous report (schottenloher 7.15–7.16, 10.18–10.21, 11.4–11.5; tuynman 7.9; sjamaar 2.2, 2.8, 2.11, 2.15; meinrenken (3)–(5), 2.1; vergne §3, 3.2; ma-marinescu §5.2).

**Adversarial table.** New rows carry computed values for every statement the diff adds or changes; untouched statements are carried from the previous report's table by section, with their values there.

| Statement | Instances tried and values on each side | Result; change |
|---|---|---|
| Scope: §3.3's harmonic/root-weight vanishing H^q(K/H,𝒪)=0, q>0 | ℂP¹ = SU(2)/T, chamber element H with α(H)=2: the (0,1) fibre at eH has the single weight −α (one negative root), pairing −2≠0, so no invariant harmonic (0,1)-form, h^{0,1}=0. SU(3)/T, regular element with (α₁,α₂)(H)=(2,2): (0,1) weights −α₁,−α₂,−(α₁+α₂) pair to −2,−2,−4; (0,2) weights −(α₁+α₂),−(2α₁+α₂),−(α₁+2α₂) pair to −4,−6,−6; (0,3) weight −2(α₁+α₂) pairs to −8; none zero. Point (I=Δ): no (0,q)-forms for q>0. Negative control: an elliptic curve has trivial T-action on H^{0,1}, h^{0,1}=1, and Pic⁰≠0. | Agrees in both directions; retain. |
| Scope/Downstream: fundamental-line degree matrix (1) on ℂP¹ and ((1,0),(0,1)) on SU(3)/T | Fundamental weights against simple coroots: ⟨ϖ,α∨⟩=1 for SU(2); ⟨ϖᵢ,αⱼ∨⟩=δᵢⱼ for SU(3). Wrong model (roots instead of fundamental weights): ⟨αᵢ,αⱼ∨⟩ is the Cartan matrix ((2,−1),(−1,2)), and (2) for SU(2), which would lose O(1), as the §3.3 Check says. Pullback to a maximal-parabolic ℂP²: surviving row (1,0) for ϖ₁, and ϖ₂ has (0,1) with no descent. | Same values on both sides of the shared contract; retain. |
| Downstream: ordinary Picard–Chern isomorphism Pic_hol(K/H)≃H²(K/H;ℤ)≃P_I | ℂP¹: Pic=ℤ·O(1), H²=ℤ, c₁(O(k))=k, bijective. SU(3)/T: b₂=rank=2, H²=ℤ², P=ℤ² (weight lattice), Pic≃ℤ². Point: Pic=0=H². Elliptic curve: c₁ has kernel Pic⁰≠0, so the vanishing hypothesis is essential. | Agrees; retain. |
| Downstream: forgetful map X^*(T)→P and its kernel | SO(3): a↦2a, kernel 0, image 2ℤ (O(1) on S² not SO(3)-linearized); SU(2): a↦a. U(2) at [e₂]: (a,b)↦a−b, kernel ℤ(1,1)=determinant characters, (0,−1)↦1 with central phase −1. Torus: ordinary lattice 0, every character in the kernel. | Values of §3.4's Checks reproduce; retain. |
| Downstream: “no result of the application is a premise of Layer 3” | Count of `S3P` in README: 0; SchubertGeometry citations on `*Needs:*` lines: S9.1/S9.7 only (lines 563, 674); depcheck 0 problems, 1457 edges, no CYCLE. Reverse direction: the SchubertGeometry revision's S3P.3 consumes Q2A.1/Q2A.3 of this roadmap (its README:281, 292 at that head), which is the consumer direction the paragraph states. | Direction is as stated; retain. |
| Scope: “SchubertGeometry S9.1/S9.7 remains the earlier supplier of the flag geometry” | S9.1 and S9.7 exist on main (lines 109, 122); SchubertGeometry is on main and absent from the merge-order candidate, so it precedes every listed roadmap. The §3.3 inputs named (complex structure, positive KKS metric, coefficient +1 of each characteristic map) are the S9.7 item's outputs; integrality of μ is not assumed there. | Supplier exists and precedes; retain. |
| Conventions (5 rows: curvature/Chern sign, Hamiltonian sign, quantum commutator, antiunitary dictionary, zero-dimensional object) | carried from the previous report's table, values unchanged | untouched by the diff |
| 1.1 (5 rows: integral existence, exact line, holonomy dictionary, tensor/dual/power, flat twists) | carried from the previous report | untouched |
| 2.1–2.3 (12 rows: connection-preserving lift, rejected lift, uniqueness, Hamiltonian vs symplectic, operator/Leibniz, unitary flow, compact-support domain, incomplete flow, invariant-domain core, moment cocycle, descent of integrated lift, constant gauges, complete-field integration) | carried from the previous report | untouched |
| 3.1 (5 rows: quotient convention, tensor/unit, full stabilizer vs differential, nonabelian descent, compact holomorphic gauge) | carried from the previous report; the quotient convention row re-verified above against graham-vogan lines 1083–1086 | untouched |
| 3.1a (4 rows: su(2) brackets, coroot/reflection, quotient/collapsed curve, root-norm denominator) | carried from the previous report | untouched |
| 3.2 (5 rows: Maurer–Cartan connection, fixed-moment criterion, rank-one calibration, central twist, ordinary vs equivariant integrality) | carried from the previous report | untouched |
| 3.3 (4 rows: degree basis, flag cohomology/vanishing, Picard comparison, pullback to finer flag) | carried from the previous report; recomputed above with the SU(3)/T weight list | untouched in statement; ownership text changed and checked above |
| 3.4 (4 rows: exact character lattice, central kernel, projective central obstruction, boundary dimensions) | carried from the previous report; forgetful-map values recomputed above | untouched |
| 4.1–4.3 (11 rows) | carried from the previous report | untouched |
| 5.1–5.3 (11 rows) | carried from the previous report | untouched |
| 6.1–6.11 (48 rows, including 6.3a, 6.6 abelian complexification and 6.8 curvature bound) | carried from the previous report, including the exhaustive (0,1,2) and (0,1,−2) monomial counts at n=0,1,2,3,6 | untouched |
| Companion file (14 rows) | carried from the previous report; each remains padding under R01 | untouched |

**Headline theorems and padding.** The headline inventory is the previous report's (§§2.1–2.3 lifts and complete-flow quantization, §§3.1–3.4 homogeneous descent, calibrated roots, fixed-moment integrality and the period/Picard/global-form comparisons, §§4.1–4.3 polarizations, §§5.1–5.3 cotangent/projective/theta realizations, §§6.1–6.10 index bridge, equivariant Riemann–Roch, distribution limit, reduced lines, semistability, Kostant bound, orbifold index, chamber quasi-polynomials, support transport). The diff changes none of them and adds no carrier. `Suggested.lean` still declares nothing and its docstring names each missing carrier; the previous report's object searches at the pins found no absent headline statable with a few simple definitions, and nothing in the diff changes that. There is no sorried declaration to probe; the companion's eight proved theorems remain the padding of R01.

**Ownership against open work.** Checked by object for the one construction the diff reallocates (fundamental-line degree basis, flag vanishing of H^q(𝒪), ordinary Picard–Chern comparison): on main, SchubertGeometry S9 owns the flag geometry and no section owns the ordinary Picard comparison; among the open pull requests whose files the brief supplies, only the SchubertGeometry revision at its head plans it (S3P.1–S3P.2), and that pull request revises an existing roadmap, so it is not a candidate supplier. The board packages index lists no competing package. This roadmap is therefore the owner of the ordinary Picard application, as its scope now states; the residual duplicate at the revision head is noted under Previous findings. Ownership against open pull requests not supplied with files was not checked beyond the roadmaps index.

**Shape.** The two changed passages are prose in the Scope and Downstream sections, name roadmaps by name and section only, contain no process words, pull-request numbers, LaTeX, paths or round labels, and leave every Needs line unchanged. The Downstream paragraph's second sentence keeps the previous consumers (compact-group representation, cotangent/theta realizations, torus index) intact.

## Not verifiable

- The SchubertGeometry revision pull request's intention for its S3P.1–S3P.2 layer after this reallocation: only its author can remove the duplicate; this review reads that head as data and records the overlap under Previous findings R01.
- The five access limitations of the previous report (kostant and sniatycki uncertified; woodhouse HTTP 403; kodaira JSTOR landing page only; knutson notes unfound) are unchanged and were not re-attempted: none of their locators falls in the changed passages.

## Source issues

- none (the eight items recorded by the previous review stand; no new source passage was read this round beyond Demailly V §11/VI §9.1 and Graham–Vogan Example 5.8, where no further mistake was found)
