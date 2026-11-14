# FIX-PKG-ShimuraVarietiesPartII~5: repair report

Review settled: `REV-PKG-ShimuraVarietiesPartII~4` (one finding).

## F01 (P2) — applied

**Verification.** The claim is right. HT line 1051–1055 descends D_x and its tensors to every Q_(q^m) with m>0. HT line 1056–1062 chooses the tensor frame (2.1.7.1) only "for m sufficiently divisible", and (2.1.7.2) at HT line 1065 is a norm of length rm. HT line 1606–1614 (proof in §2.3) gets the frame over Q_(q^m) from Steinberg's theorem for Q_p^ur, which shows the same thing. The scheme of tensor frames over Q_q is a G-torsor. Its class lies in H¹(Q_q,G). By PadicHodgeTheory §5.5's local torsor theorem that set is `(π₁(G)_Γ)_tors`, and it can be nonzero (for example for a norm-one torus). So the old text's δ∈G(W(F_q)[1/p]) was not justified in general. K17 §2.1.2 does fix a frame over W(F_q) (K17 line 1288–1292), but only in its hyperspecial setting with k finite (K17 line 1268–1271).

**What changed** (`packages/ShimuraVarietiesPartII/README.md`):

- Conventions paragraph. Old: frame over W(F_q)[1/p], N_r(δ) realizes γ_x. New: tensor frames over Q_q form a possibly nontrivial G-torsor. It becomes trivial over Q_(q^m₀) for a "framing degree" m₀≥1. In a frame over K₀=Q_(q^m₀), N_(rm₀)(δ) realizes γ_x^(m₀), and its dual realizes π_x^(m₀). N_r(δ) realizes γ_x only when m₀=1. The exact q-Frobenius γ_x and its ℓ-adic conclusions do not depend on m₀.
- §4.9 Construction. Same repair. Stabilizing exponents are now positive, sufficiently divisible multiples of m₀, and I_p is the finite-period centralizer of δ over Q_(q^m). The locator now cites HT equations (2.1.7.1)–(2.1.7.2) and says that K17 §2.1.2 frames over W(F_q) at hyperspecial level.
- §4.9 Proof sketch. The route is now: the frame torsor has an L-point (§4.1); Steinberg over Q_q^ur kills its Galois class; finite type then gives a Q_(q^m₀)-point; apply BunGAndNewtonStrata §1.16 over K₀, of degree rm₀. *Needs* adds §4.1, PadicHodgeTheory §5.5 and ReductiveGroupsPartII §RG2.1.
- §4.9 API. Norm of length rm₀. A new bullet says a frame over Q_q exists exactly when the class in H¹(Q_q,G) is trivial. The extension bullet now uses multiples of m₀.
- §4.9 Checks.
  - New Check, the field/frame control: the norm-one-torus torsor N(z)=5 has no Q₅-point but has the point (5,1) over Q₂₅; for GL_n and GSp_(2g), H¹=1, so m₀=1.
  - The rank-one ζ Check and the GL₂ Check now say why m₀=1 there (Hilbert 90; H¹(Q₅,GL₂)=1).
  - The Remark now says "length rm₀".
- Conventions Checks.
  - New witness: framing E: y²=x³+x over Q₂₅ (m₀=2) gives γ_x², with trace −6/25 and determinant 1/25, and π_x², with trace −6 and determinant 25, not (2/5,1/5).
  - The ζ witness notes m₀=1.
- §4.13 proof sketch: the p-adic field is W(F_(q^m))[1/p] with m a multiple of the m₀ chosen in §4.9.
- Supplier contracts:
  - ReductiveGroupsPartII §RG2.1 now names Steinberg's theorem (*steinberg-quasi-split*, `TauCetiRoadmap/ReductiveGroupsPartII/README.md` on main, §RG2.1.1). It applies to complete or henselian discretely valued fields with algebraically closed residue field, which covers the maximal unramified extension of Q_q.
  - PadicHodgeTheory §5.5 now also names the tensor torsor over a field, its Galois class and the local torsor theorem.

**How the suggested repair was modified.** I applied it as written, with one addition. The review said no new supplier was needed. The proof route still needs Steinberg's theorem as an input (adversarial rule 8), so I cite it from ReductiveGroupsPartII §RG2.1, which is already a supplier of this package and is on main. No new gap and no new supplier. The conclusions of §5.10 and §7.6 are unchanged: γ_x=π_x⁻¹ and the exact q-Frobenius, with no powers.

**Pattern search.** I searched the whole README for `W(F_q)`, `N_r`, `δ∈G`, `frame`, `length-r` and `W(F_(q^m))`. Every occurrence of the length-r norm or of a frame over Q_q is in the Conventions paragraph and §4.9 (Construction, Proof sketch, API, Checks, Remark), all repaired. §4.13 uses W(F_(q^m))[1/p]; I added the multiple-of-m₀ condition there. The other frame statements are left as they are because they are about different objects:
- §4.1: a frame over L, which exists by Steinberg over L.
- §§1.4, 3.9–3.10, 6.2 and the Check at §3.10: integral de Rham frame torsors under a smooth connected special-fibre group over F_q, where Lang's theorem applies.
- §§0.4, 7.1–7.2: ℓ-adic frames.

## Checks run

- **Elaboration.** `lake env lean packages/ShimuraVarietiesPartII/Suggested.lean`, run from the content checkout: exit 0, no output, no warnings. `Suggested.lean` is unchanged. It has one `import Mathlib`, no TauCeti module to build, and declares nothing. With 0 declarations there is nothing for `#check @name` to compare, so the mechanical signature comparison is empty: no name was added, deleted or changed.
- **Dependency check.** The prescribed command (`gate --depcheck … --name ShimuraVarietiesPartII --order … --movable --content …`) printed exactly:

  ```text
  depcheck: 236 roadmaps, 2156 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or moved line.
- **Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citations found nowhere, and no Lean names found nowhere.
- **Package gate, run on a scratch copy.** Every check is 0 except `stray-files=1` and `git=1`. `stray-files=1` is `sources.toml`, which I copied into the scratch folder only for the run. `git=1` is because the scratch folder is not a git repository. Both come from the scratch copy, not from the package.
- **Gate failures listed in the brief:** none.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Frame torsor over Q_q need not be trivial (Conventions, §4.9) | T=ker(N:Res_(Q₂₅/Q₅)G_m→G_m), torsor N(z)=5 | v₅(N(z))=2v(z) is even, v₅(5)=1, so no Q₅-point; over Q₂₅, uv=5 has (5,1) | True; kept as the new §4.9 Check |
| Torsor trivial over Q_q^ur, hence over some Q_(q^m₀) | Hypotheses of ReductiveGroupsPartII *steinberg-quasi-split* on Q_q^ur | Q_q^ur is henselian (an algebraic extension of a henselian field), its value group is Z and its residue field F̄_p is algebraically closed; G_Qp is connected reductive. P(Q_q^ur)=∪_m P(Q_(q^m)) because P is of finite type | Holds; Needs updated |
| Multiples of m₀ also frame | P(Q_(q^m₀))⊂P(Q_(q^(km₀))) | Inclusion of fields, k≥1 | Holds; m=0 is excluded ("positive") |
| N_(rm₀)(δ) realizes γ_x^(m₀); its dual realizes π_x^(m₀) | F_D=ρ∨(δ)σ on D over K₀, σ^(rm₀)=id on K₀ | F_D^(rm₀)=ρ∨(δσ(δ)⋯σ^(rm₀−1)(δ)), the linear q^(m₀)-Frobenius = pullback by π_x^(m₀); standard rep = γ_x^(m₀) | Agrees with HT (2.1.7.2) with m=m₀ |
| m₀=1 case gives N_r(δ) and γ_x | r=1 (q=p), m₀=1 | N_1(δ)=δ; standard realization γ_x | Holds; reduces to the old formula |
| E: y²=x³+x / F₅ framed over Q₂₅ (new Conventions Check) | π trace 2, det 5 | γ²: (2/5)²−2/5=−6/25, det 1/25; π²: 4−10=−6, det 25; versus γ: 2/5, 1/5 | Values as stated |
| H¹(Q_q,GL_n)=H¹(Q_q,GSp_(2g))=1, so m₀=1 | π₁(GL_n)=Z; π₁(GSp_(2g))=X_*(G/Sp)=Z, trivial Γ-action | (Z_Γ)_tors=0 by PadicHodgeTheory §5.5's local torsor theorem; g=0 gives G_m, also Z | Holds |
| ζ-check, rank one over F₂₅ | G_m, Hilbert 90 | m₀=1; ζσ(ζ)=ζ·ζ⁵=ζ⁶; standard scalar ζ⁻⁶; δ²=ζ² | Unchanged values; m₀=1 noted |
| GL₂ check over F₅ | δ_D=[[0,−1],[5,0]] | m₀=1; δ_D²=−5I; δ_D⁻ᵀ squared −I/5; centralizer Q₅(√−5)^× of dimension 2 vs J_δ of dimension 4 | Unchanged values; m₀=1 noted |
| Stable groups at m a sufficiently divisible multiple of m₀ (§4.9) | E/F₃ supersingular, e=2; suppose m₀=1 or 2 | m=2 is divisible by e and by m₀: Z(γ_ℓ²)=GL₂ of dimension 4, stable | Combined divisibility is consistent with the earlier positivity Checks |
| API: frame over Q_q ⇔ class in H¹(Q_q,G) trivial | Norm-one torus control; GL₂ | Nontrivial class: no frame; H¹=1: frame | Holds both ways |
| §4.13 field W(F_(q^m))[1/p], m₀ divides m | m₀=2, m=2 vs m=1 | δ∈G(Q₂₅) is not in G(Q₅) in general; m=2 contains K₀ | Condition needed; added |
| §5.10 / §7.6 exact q-Frobenius (unchanged) | Elliptic point over F₅ | Quotient coordinates (2/5,1/5); over F₂₅, (−6/25,1/25) | No power substituted; unchanged |

## Ownership, sources and other files

- **Ownership.** No new object is owned here. Steinberg's theorem is ReductiveGroupsPartII §RG2.1.1 (*steinberg-quasi-split*), on main. Tensor torsors, their Galois class and the local torsor theorem are PadicHodgeTheory §5.5, checked at the head of its open pull request. The finite-period norm centralizer is BunGAndNewtonStrata §1.16, for any unramified K₀ of degree r, applied here with degree rm₀, also checked at its head. I searched `roadmaps grep` for a second statement of Steinberg's theorem or of unramified torsor triviality and found none.
- **Sources.** No new source. HT (`§§1.3–2.1`) and K17 (`§§2.1.1–2.1.7`) already cover the new locators in `sources.toml`. No missing-reference request.
- **`design/plan.json`.** Unchanged: no new supplier gap is needed, because Steinberg's theorem is supplied on main. The node text for §4.9 in the plan still has the old design wording; the brief allows edits to its `gaps` list only.
- **`Suggested.lean`, `metadata.toml`, `sources.toml`.** Unchanged.

## For the maintainer

- No Lean name, section id or heading changed, so no consumer roadmap is affected. The term "framing degree" (m₀) is new; it is defined in Conventions and in §4.9.
- ReductiveGroupsPartIII Layer 5, the downstream KZ §6 application, uses only §7.6's exact q-Frobenius quotient point, which is unchanged.
- Ownership against open pull requests was checked with the brief's `roadmaps grep` and `roadmaps show` tools at the heads they index.
- No suspicious instructions were found in the review text.
