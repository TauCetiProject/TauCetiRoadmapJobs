# GATE-GrossZagierAndArithmeticHeights~11: answers to human review (head ed7ee12 → ab881992)

## H01 (rwst) — applied differently
The upward edge to LubinTateFormalModulesAndQuasiCanonicalLifts (merge order 321, after this roadmap at 317; it is a board design, not a pull request) is gone. README lines 125, 2983, 3648, 3654, 3667 and 4738 no longer cite it. LT.3 (marked and universal deformations of finite-height formal O-modules) is replaced by EndoscopicTransferAndUnitaryTraceComparison §10.2 and §12.3 (merge order 132), at height two over O_(K_v) or O_(F_v) and height one over O_L. §10.2 gives marked deformation rings of one-dimensional strict formal O-modules, noncanonically O[[T₁,…,T_(n−1)]], for arbitrary ramification over ℚ_p, with Drinfeld level covers. §12.3 gives the framed tower over the completed maximal unramified extension, one open (n−1)-ball per quasi-isogeny height. That is exactly the ⊔_ℤ Spf O_(F̆_v)⟦t⟧ of §7.46a item 4.

LT.6 is not replaced by another supplier. §7.2 already constructs the canonical lift, the level-s quasi-canonical lifts, their orders O_s, orbit sizes and fields of definition M′ (README lines 2944–2950). Its *Needs:* line (2983) now says these are owned there, alongside the filtration End(F_n) = O_L + π_L^n O_D and the lengths n_ℓ. Neither of the reviewer's two repairs was taken. Naming LubinTate as a dependency would keep an upward edge. Restating LT.3 here would duplicate what EndoscopicTransfer §10.2 already plans.

The board design of LubinTate still lists GrossZagierAndArithmeticHeights:GZ.7 as a consumer. That line is now stale, and it lives in that package, outside this job.

## H02 (rwst) — answered
The pull-request description lies outside the roadmap folder and cannot be edited in a repair round. The README confirms the corrections:
- Scope line 9 says EffectiveClassNumbers §2.8 "is not a supplier of §§8.15 and 8.19", so the description should drop EffectiveClassNumbers from the direct suppliers.
- ArithmeticGaloisRepresentations is a direct supplier (§2 at README line 465), so the description should add it.
- After H01, LubinTateFormalModulesAndQuasiCanonicalLifts is no longer a supplier, so it should not be added, nor listed in the `merge-order` block. EndoscopicTransferAndUnitaryTraceComparison (§§10.2, 12.3) should be named as a direct supplier instead.

## H03 (rwst) — answered
This confirms that the false-elliptic transport in §7.46a item 4 (Serre–Tate A4.9, then Morita, then level through e) is fixed. No change was needed. This round makes Step 2 more precise; see H05.

## H04 (rwst) — answered
This confirms the dimension Check for discriminant 6 at p = 5: 4 parameters unrestricted, 3 polarized, 1 after the idempotent. It stays unchanged. The new Rosati Check (H05) sits next to it.

## H05 (rwst) — applied
The question was whether Step 2 needs the Rosati compatibility spelled out. It does: the old wording, "an M₂(ℤ_p)-compatible alternating self-duality", left the involution unstated. Step 2 of §7.46a item 4 (README line 3654) now writes A[p^∞] = G ⊗ ℤ_p² and uses the PEL involution b* = t⁻¹ b̄ t, where t ∈ O_𝔅 ⊗ ℤ_p has trace zero and is a unit because the polarization has degree prime to p. With the Rosati condition b^∨ ∘ λ = λ ∘ b* (PELModuli M1.2), it proves λ = e_G ⊗ β with β(x, y) = ω(x, t⁻¹y), using ω(bx, t⁻¹y) = ω(x, b̄t⁻¹y) = ω(x, t⁻¹b*y). β is symmetric and perfect, and both factors are unique up to ℤ_p^×. A new Check (after line 3663) computes this at p = 5:
- with t = [[0,1],[−6,0]], β = x₁y₁ + x₂y₂/6, of determinant 1/6, a 5-adic unit;
- e* = e, so G = e·A₀[5^∞] is self-dual and λ restricts to its Weil pairing;
- the wrong model, Rosati = canonical involution, gives β = ω and a symmetric e_G ⊗ ω, which is not a polarization, and there ē = 1 − e.

PELModuli M1.2 is added to the supplier row (line 124) and to both *Needs* lists (lines 3667 and 4738). I have not compared this with Buzzard's or Carayol's treatment of false elliptic curves. The step rests only on the PEL Rosati condition as PELModuli M1.2 states it.

## Adversarial pass (changed statements)

| statement | instances | values | result | change |
|---|---|---|---|---|
| adjointness ω(bx,t⁻¹y)=ω(x,t⁻¹b*y) | t trace 0, t² scalar | b̄t⁻¹ = (t²)⁻¹b̄t = t⁻¹·t⁻¹b̄t = t⁻¹b* | holds | added |
| β symmetric | t̄ = −t | ω(y,t⁻¹x) = −ω(x,\overline{t⁻¹}y) = ω(x,t⁻¹y) | holds | added |
| β perfect at p | t=[[0,1],[−6,0]], p=5 | det diag(1,1/6) = 1/6 ∈ ℤ_5^× | holds; fails at p=2,3, which are excluded since 𝔅 is ramified there | added |
| e Rosati-symmetric | e=[[1,0],[0,0]] | ē=[[0,0],[0,1]], t⁻¹ēt = [[1,0],[0,0]] | e* = e | Check |
| wrong model b* = b̄ | same | β = ω alternating; e_G⊗ω symmetric | excluded | Check |

## Adversarial pass (H01 repair)

| statement | instances | values | result | change |
|---|---|---|---|---|
| §7.46a item 4 chart = ET §12.3 tower at n=2 | n=2, level 0 | ET: each quasi-isogeny-height component is an (n−1)=1-dimensional open ball; README: ⊔_ℤ Spf O_(F̆_v)⟦t⟧, 1 variable per component | agree | citation replaced |
| ET §10.2 covers dyadic and ramified F_v | F/ℚ_2 ramified | ET §10.2 is stated "for arbitrary ramification of F/ℚ_p"; its strictness hypothesis (O acts on Lie H through the structure map) matches "formal O_(K_v)-module" | holds | none |
| §7.2 canonical lift via ET §10.2 at n=1 over O_L | n=1 | ET Check: at n=1, R_β has no deformation variables, so the marked O_L-lift is unique, which fixes the canonical lift | holds | citation replaced |
| quasi-canonical orbit sizes now owned here | q=3, s=1 | unramified: q^(s−1)(q+1) = 4 = #(O_L×/O_s×); ramified: q^s = 3 | as stated in 7.2 | ownership sentence only |
| F=ℚ branch independent of ET | F=ℚ | item 4 uses ModularCurves 7F ST-2/ST-4; line 3654 says the ET deformations are not used then | consistent | wording |

## Build and gate

- `lake build TauCetiRoadmap.GrossZagierAndArithmeticHeights.Suggested`: Build completed successfully (8981 jobs), with the single expected `declaration uses sorry` warning at Suggested.lean:39. Suggested.lean is unchanged, so no `#check` comparison was needed this round.
- Gate (at ab881992): `gate GrossZagierAndArithmeticHeights: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`.
- Movable depcheck: `depcheck: 204 roadmaps, 1437 edges, 0 problem(s)`, with no UPWARD, CYCLE or moved line for this roadmap.
- Commits 8d44ba87 and ab881992, not pushed. EndoscopicTransferAndUnitaryTraceComparison §§10.2 and 12.3 were read at their open head through `roadmaps show`. No sources were fetched and needs-references.toml was not written. The added citation, PELModuli M1.2, was checked against PELModuli as shown by `roadmaps show`.
