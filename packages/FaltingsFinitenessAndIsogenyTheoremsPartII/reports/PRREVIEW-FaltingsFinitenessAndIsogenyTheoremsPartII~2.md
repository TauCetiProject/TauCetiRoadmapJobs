# Review of FaltingsFinitenessAndIsogenyTheoremsPartII (pull request #1738 at fca9497)

**Verdict:** needs changes

This is an incremental re-review of the 27 changed README lines since 5b87710. `Suggested.lean` and `metadata.toml` did not change, and nothing outside the folder changed. All three previous findings are repaired. One new P2 finding remains: the minimal period subvariety of §2.1 now has two owners, because EllipticCurveModularityPartII changed at its open head after this head was committed.

## R01 (P2) — The minimal period subvariety has two owners: §2.1 here and EllipticCurveModularityPartII §6.0f

**Location:** `TauCetiRoadmap/FaltingsFinitenessAndIsogenyTheoremsPartII/README.md:13`, “Layer 2 owns … the smallest abelian subvariety G_ω whose tangent space contains a given period ω, for every polarized G and every ω (§2.1)”, and “Its E²×E′² period graph is a theorem about one instance of G_ω”. Also line 360 (the §2.1 definition), line 362 (its existence route) and lines 368–386 (its API and Checks).

**Claim:** The new Scope paragraph assigns the general minimal period subvariety to Layer 2 and treats §6.0f's object as a single instance. At its open head, EllipticCurveModularityPartII §6.0f now defines that same object for every abelian variety and every tangent vector, proves it exists (owning Cartier's theorem for this purpose), and names this roadmap's §2.1 as its consumer. One object therefore has two owners, and the two READMEs contradict each other about who owns it. EllipticCurveModularityPartII is position 188 in the merge order and this roadmap is position 353, so the earlier roadmap is the owner and this one must cite it. The direction of supply is unchanged, because EllipticCurveModularityPartII already supplies Layer 6.

**Witness:** `TauCetiRoadmap/EllipticCurveModularityPartII/README.md:731` at its open head (51b297d) defines A_ω for every abelian A over algebraically closed K⊆ℂ and every ω∈t_A⊗ℂ. Line 1062 states that this roadmap's §2.1 G_ω “is the minimal period subvariety A_ω of §6.0f at K=ℚ̄”.

**Repair:**
- In §2.1, replace the definition of G_ω and its proof route with a citation. For G over ℚ̄, a complex embedding and a period ω∈ker(exp_G), G_ω is the minimal period subvariety A_ω of EllipticCurveModularityPartII §6.0f at K=ℚ̄.
- Keep only the normalized degree Δ_L(B)=c₁(L)^(dim B)[B]/(dim B)!, its Euler-characteristic API bullet, and the Δ_L-valued Checks: degree 2 for the diagonal, 1 for a factor, 1 for ω=0.
- Delete the API bullets that restate §6.0f's API: minimality, G_0=0, and transport by isomorphisms, which is a special case of φ(A_ω)=A′_(dφ(ω)).
- Add “EllipticCurveModularityPartII §6.0f (minimal period subvariety)” to the §2.1 *Needs:* line and to Layer 2's Dependencies.
- Add one sentence to the `From TauCetiRoadmap.EllipticCurveModularityPartII` contract. Section 6.0f supplies A_ω for every abelian variety over an algebraically closed K⊆ℂ and every ω∈t_A⊗ℂ, with minimality, A_0=0 and φ(A_ω)=A′_(dφ(ω)).
- At line 13, list §2.1 as “the normalized degree Δ_L of the minimal period subvariety A_ω, which §6.0f owns”. Replace the closing sentence with: §6.0f owns A_ω in every dimension and its E²×E′² period graph, and §2.1 consumes A_ω at K=ℚ̄. The sentence “consumes nothing from Layer 2” stays, and it is still true.

**Repair check:** On G=E×E, ω=(η,η) with η a nonzero period, both definitions give the diagonal of dimension 1. They agree for (η,0) (the first factor) and for ω=0 (the zero variety). This is EllipticCurveModularityPartII README lines 757 and 760 against §2.1 Checks at lines 378–386 here. The product-principal Δ_L of the diagonal is (D₁+D₂)·Δ=1+1=2. That value is this roadmap's own; the supplier's line 1062 says Δ_L stays here. Section 2.4, which cites §2.1, needs no other change.

## Previous findings

- R01 — repaired: README lines 59, 69, 71, 73, 75, 77, 120 and 126 now open “What <Supplier> must provide (gap:<slug>):”. The nine slugs are hom-specialization-saturation, the six Hermitian or cubist slugs, cyclic-maximal-subfield and fixed-siegel-cusp-family. Each matches a `design/plan.json` gap entry.
- R02 — repaired: line 124 reads “B5.1a, which is §12.2 in the supplier’s own numbering, `ScalarFourierJacobi.torsorDescription`, gives the torsor-level description …; the expansion itself is the `HodgeLineFJ` construction of ShimuraCompactifications §7.15”.
- R03 — repaired: line 957 reads “(mz20, Lemma 2.2, p. 644, for the D≥2 form; gr14, Theorem 1.4 p347, and EllipticCurveModularityPartII §6.0f for every degree D≥1, including D=1; mz20 line 397)”.

## Verified sound

### Gate, direction, elaboration and signatures

The gate was run on this head with `--base origin/main`. Its line:

```text
gate FaltingsFinitenessAndIsogenyTheoremsPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The worker's `gate.md` for this head also reports `build=0`.

The dependency check (`gate --depcheck … --movable`) printed:

```text
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
```

It printed no UPWARD, CYCLE or moved line.

`lake env lean` on `Suggested.lean` succeeded. Its only output was `declaration uses 'sorry'` at 47:8 (`class_index_bound`) and 68:8 (`elliptic_isogeny_j_height_bound`).

A scratch copy with `#check @name` for all three declarations elaborated, with these results:
- `regularOrderDiscriminant`: `{D} [Ring D] (O : Subring D) {m} (Module.Basis (Fin m) ℤ O) → ℤ`.
- `class_index_bound`: keeps `DivisionRing`, `Algebra ℚ D`, `FiniteDimensional ℚ D`, both full-span hypotheses, `Module.Finite ℤ M`, `0 < e`, and the clause `index ≠ 0`.
- `elliptic_isogeny_j_height_bound`: keeps `∃ C, 0 < C ∧ ∀ k [Field k] [NumberField k] …`, with the constant chosen before the field.

These are identical to the worker's `signatures.md` and to the README statements of §3.1 (line 575), §3.5 (line 693) and §6.1 (line 957). No binder was lost and nothing changed.

The diff since 5b87710 touches only the README: 15 insertions and 12 deletions. The diff outside the folder is empty, and the worktree is clean.

### Changed passages: sources and suppliers

| Changed passage | What was opened | Result |
|---|---|---|
| Line 13, gr14 Proposition 6.1, p. 369 | gr14 lines 1050 and 1089–1090 (PDF p. 27 is printed p. 369); lines 1074–1078 | The statement says no nonzero section of L^⊗n vanishes to order gT along t_A at 0. Its proof applies Nakamaye: T^(g−dim A′) deg_L A′ ≤ deg_L A · n^(g−dim A′). The locator and the description match. |
| Line 13, gr14 Proposition 6.9, p. 380 | gr14 lines 1587 and 1606–1620 | g=2 and deg_L A ≥ 10¹⁰, a variant of Théorème 4.5. The locator matches. |
| Line 13, gr14 Théorème 7.5, p. 385 | gr14 lines 1804 and 1813–1817 | k′ has degree 1 or 2 over k, A_ω≅E₁×E₂, and A_ω∩({0}²×E₂²) has cardinality Δ. The locator matches. |
| Line 13, ownership statements about §6.0f | EllipticCurveModularityPartII README lines 11 and 741 at 51b297d | §6.0f owns the auxiliary-section, jet-norm and slope bounds, the multiplicity estimate at the origin, Proposition 6.9 and the E²×E′² graph. The *Needs:* lines at 739 and 749 cite nothing from this roadmap. These statements are correct. The A_ω ownership is R01. |
| §2.2, new fourth Check (line 401) | bost95 Théorème 4.1, printed p. 128: cached PDF page 15 rendered, and line 100 for deg_L as the unnormalized c₁(L)^g | ℓ(p(S))·deg_L B ≤ deg_L A for some B≠A, which matches §2.2 and its unnormalized d_L. The Check's values are computed in the table below. |
| Lines 59–79, 120, 126: gap labels | `design/plan.json` gaps | The nine slugs are present. The metric-rescaling sign was recomputed in the table below. |
| Line 124: AutomorphicBundles | AutomorphicBundles README (open head, via `roadmaps show`) | Line 222 maps B4 to Layer 11, B5.1a to 12.2, and B5.n to 12.(n+1). Line 3837 is §11.2, line 4057 is §11.9, line 4568 is §12.2 with “Prove `ScalarFourierJacobi.torsorDescription`” at 4569, and line 5042 is §12.14. ShimuraCompactifications README line 2543 is §7.15 `HodgeLineFJ`. |
| §§2.5–2.6, which depend on the line 124/126 contract (seeded) | mz20 lines 937–958, Lemma 4.3, pp. 656–657 | Cusp forms on the full modular group with rational Fourier coefficients and no common zero; Lemma 8.4 p. 439, Lemma 8.6 p. 440 and (7.4) p. 436 of the periods paper; Igusa Lemma 20 p. 104 under the weak region y≥δy₀, y₀≥δ. These match §§2.5–2.6 and the fixed-family contract. |
| Line 957, §6.1 attribution | gr14 lines 177–182 (Théorème 1.4); mz20 lines 397–404 (Lemma 2.2) | gr14 Théorème 1.4 covers every number field, including ℚ. mz20 Lemma 2.2 assumes D≥2. The new attribution is exact. |

### Overlap and citation leads

- **IntegralLattices Layers 0–1 (line 11).** The overlap tool says only open revision #1239 defines these layers; that is a false positive. Main has `### Layer 0: lattices, …` at line 507 and `### Layer 1: dual lattices, discriminant groups, …` at line 590. The revision's head keeps the carrier in Layer 0 (line 536) and the dual lattice and discriminant group in Layer 1 (line 562). So the citation survives that merge, and no revision is a dependency.
- **AutomorphicBundles B4.2 (resolver lead).** Resolved through the supplier's own mapping at line 222: B4.2 is §11.2.
- **`ScalarFourierJacobi.torsorDescription` (resolver lead).** This is the planned target name of AutomorphicBundles §12.2 (its README line 4569). It is cited as a supplier target, not as a pinned declaration or a name of this roadmap.
- **Ownership by object.** `roadmaps grep -i 'minimal period subvariety|smallest abelian subvariety'` over main and all 466 open heads found the object only in EllipticCurveModularityPartII §6.0f and §2.1 here; the AbelianSchemesAndArithmeticModuli hit is the Albanese image of a curve. That is R01.
- **EllipticModularityEffectiveComparisons.** Its README line 122 at its open head (`gap:quantitative-abelian-periods`) asks ArakelovGeometryAndAbelianHeights for Gaudron–Rémond Theorems 1.1–1.2, 4.5 and Proposition 6.9. That is a request, not ownership, and it is an explicit estimate rather than §2.4's estimate with unspecified constants κ_g and C_(g,d). It is not a second owner of §§2.2–2.4.
- **No other open pull request changes this roadmap**, and no cited id is dropped (`overlaps.md`, checked).

### Settled items

The legacy gaps G1–G8 and `hermitian-maximal-slope` stay settled for the reason the previous report accepted. The content of G4 (gr14 Proposition 6.9) is now explicitly assigned to EllipticCurveModularityPartII §6.0f by line 13, which agrees with that roadmap's line 741. The nine live contracts are unchanged in mathematics; only their opening clause changed.

### Adversarial table

New rows, with computed values, for every changed statement:

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| Line 13: §2.2 at the origin counts binomial(T−1+c,c); gr14 Prop. 6.1 counts T^c | (g,c,T) = (2,2,2), (2,2,3), (2,1,2), (3,3,2) | Bost length 3, 6, 2, 4, against GR T^c 4, 9, 2, 8. Bost hypothesis order g(T−1)+1: 3, 5, 3, 4, against GR order gT: 4, 6, 4, 6 | Weaker hypothesis gives a weaker conclusion and vice versa; Bost alone covers translates. The claim that neither implies the other holds. | none |
| Line 13: §§2.3–2.4 constants and Prop. 6.9 dimension | §2.4 at line 436; gr14 line 1609 | κ_g and C_(g,d) carry no numerical value; Prop. 6.9 needs g=2 and deg_L A≥10¹⁰ | Holds; the 10⁷·989²=9,781,210,000,000 rate in Layer 6 comes from §6.0f (line 134) | none |
| Line 13: “consumes nothing from Layer 2” | EllipticCurveModularityPartII *Needs:* lines 739 and 749 | 0 citations of this roadmap; merge order 188 against 353 | Holds | none |
| Line 13 and §2.1: ownership of G_ω | E×E with ω=(η,η), (η,0), 0 | §6.0f A_ω: the diagonal (dim 1), E×0, 0. §2.1 G_ω: the same three. Δ_L under product principal L: 2, 1, 1 | Same object with two owners | R01 |
| §2.2 new Check: lengths | Surface; S=Spec O/m² | S has 3 monomials (1,x,y). S^[2]: x² ↦ 2x₁x₂≠0, xy ↦ x₁y₂+x₂y₁≠0, x³ ↦ 0 modulo (m₁²,m₂²), so length 6 | Holds | none |
| §2.2 new Check: degrees | L=L₀², L₀=O(E₁×0+0×E₂) | c₁(L₀)²=2, d_L(A)=4·2=8 (unnormalized, bost95 line 100; the normalized value would be 4). B=E₁×0: d_L(B)=2·1=2 and 2·2=4≤8. B=0: 3·1≤8 | Holds, and agrees with §2.2's unnormalized d_L | none |
| §2.2 new Check: the section | θ=s₁⊠s₂, locally xy | θ has order 2 and θ² has order 4≥3, so θ²∈m³ and it vanishes on S^[2]. Control: θ itself has order 2<3, so it does not vanish on S^[2]; for L₀, B=0 would give 3≤2, and only B=E₁×0 gives 2·1≤2 | The nonzero section on S^[2] and the hypotheses are essential | none |
| §2.2 new Check: T^c against binomial | T=2, c=2 | 4 against 3 | Agrees with EllipticCurveModularityPartII line 761 | none |
| §6.1 attribution | E: y²=x³+1 over ℚ, j=0 | Identity degree 1≤C·1·1·1. gr14 at [k:ℚ]=1: 10⁷·985²=9,702,250,000,000>0. mz20 unclamped at D=1: D²(log D)²=0, and its D≥2 hypothesis excludes this case | The attribution is exact | none |
| AutomorphicBundles contract | g=1 and g≥2 | B5.13 maps to §12.14 at line 5042 (rank one only); B5.1a maps to §12.2 at line 4568 (every genus) | Holds | none |
| gap:hermitian-metric-rescaling | c₀=4; rank r; field degree [K:ℚ] | ‖·‖×2, so c=−log 2 and the degree changes by −r[K:ℚ]log 2. Normalized slope change −log 2=−½ log 4 | Sign and factor agree | none |
| gap:fixed-siegel-cusp-family (label only) | τ=it with u=e^(−2); rescaled family e^(−N)u | log(1/\|u\|)=2 against N+2 | Fixed normalization is essential, as in the previous report | none |

Rows carried forward from the previous report (its “Adversarial calculation ledger”), for statements this diff leaves untouched. These cover the seeded sample, the headlines and the targets R01 touches:

| Statement | Values (previous report) | Result |
|---|---|---|
| 1.1 representations | Gaussian i: κ(i)P=(i,−1)=P[[0,−1],[1,0]]; ρ(0)=0, ρ(1)=I | sound (prev. row “1.1 representations”) |
| 1.8 coordinate bounds | τ=2i, κ=2i gives (0,4,−1,0), q=8; both bounds need C≥1/√2 | sound (prev. row “1.8”) |
| 2.1 minimal period subvariety | dimensions 1, 1, 0 and Δ=2, 1, 1 | values still correct; ownership is R01 |
| 2.4 period theorem | principal E: Δ=1; degree-three L: Δ=3, not 9 | sound (prev. row “2.4”) |
| 2.5 cusp height | e^(−2) gives 2; rescaled gives N+2 | sound (prev. row “2.5”) |
| 2.6 imaginary part | it and 100+it both give ct≤log M+log(1/\|u\|) | sound (prev. row “2.6”) |
| 2.8 short endomorphisms | δ=4: 3 order-two subgroups; δ=9: 4 order-three subgroups | sound (prev. rows “2.8”) |
| 3.1 regular discriminant | ℤ, ℤ[i], ℤ[2i], M₂(ℤ): 1, −4, −16, −16 | sound (prev. row “3.1”) |
| 3.5 class-index headline | ℤ with e=2: 1≤1; ℤ[2i]: 2≤4 | sound (prev. row “3.5”) |
| 4.1 cross-discriminant | 1, (−4)²=16, 6²=36 | sound (prev. row “4.1”) |
| 4.3 simple isogeny | 1≤1, 1≤16; deg(1+i)=2 | sound (prev. row “4.3”) |
| 4.6 stable subvariety | projection degree 1; multiplicities 1, 1 | sound (prev. row “4.6”) |
| 4.7 product-dual | degree 1; heights −1 and 2 sum to 1 | sound (prev. row “4.7”) |
| 5.1 simple-factor product | the projection E²→E is not a finite isogeny | sound (prev. row “5.1”) |
| 5.3 unpolarized estimate | degrees 1 and 4; N^(2g−1)=4 | sound (prev. row “5.3”) |
| 6.1 constants | C=9C₀=88,030,890,000,000 | sound (prev. row “6.1 constants”) |
| 8.1 Tate over finitely generated K | rank 1 at ℓ=2, 3; 2ℤ₂⊂ℤ₂ has index 2 | sound (prev. rows “8.1”) |
| 8.4 supported image | [V:V∩W′] is 1 or 2, at most 2 | sound (prev. row “8.4”) |
| 8.5 full-field bound | [2ℤ:6ℤ]=3=[ℤ:3ℤ] | sound (prev. row “8.5”) |

### Headlines and padding

`Suggested.lean` is unchanged. Its two native-carrier headlines and the one real-bodied definition stand as in the previous report. That report's one-tactic probe found no padding, and its headline inventory shows the other headlines named in the docstring with their missing carriers. Neither was redone, because the file did not change.

### Seeded sample, scope note

Of the seeded targets, only §§2.5–2.6 depend on a changed passage (the AutomorphicBundles contract), and their mz20 locators were rechecked above. The other seeded targets (§§1.1, 1.8, 2.8, 3.1, 4.1, 4.3, 4.6, 4.7, 5.1, 5.3, 8.1, 8.4, 8.5) lie outside the diff. Their sources were not reopened in this incremental round; their adversarial rows are carried forward above. The README flags no locator as unverified beyond the settled `igusa` and `fw84` entries.

## Not verifiable

- **mw93-periods** (waived), **mw95-refine** (waived), **igusa** (uncertified, Lemma 20 p. 104) and **fw84** (uncertified, Chapter VI §3). These are settled as in the previous report and were not requested again.
- **Nakamaye's multiplicity lemma.** It is read here only as gr14 applies it at lines 1076–1078. The primary paper was not opened. It is not consumed by this roadmap: line 13 assigns it to EllipticCurveModularityPartII §6.0f.

## Source issues

- none
