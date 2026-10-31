# Repair report: red-team round 1 of TriangulineVarietyAndItsLocalModel

There were two reviews: pass a, with eight findings, and pass b, with three. Pass a F05 and pass b F03 ask for the same docstring repair, so that repair is settled once and the report gives the outcome under both ids.

## F01 (P1) — applied

Review pass a, finding F01.

The finding is correct. NT21 line 261–263 (Notation, p. 7) fixes Art_K so that uniformizers go to *geometric* Frobenius. The README's own witness in the Conventions confirms this: the cyclotomic character corresponds to R(x|x|) only when Art_K(u) acts on μ_{p^∞} through u, which is the geometric normalization.

What changed:
- Conventions: "NT reciprocity Art_K is arithmetic … uniformizer value a" was replaced by the geometric normalization, the relation Art_K = rec_arith⁻¹, and the rule that η(Frob_arith)=a gives δ(ϖ_K)=a⁻¹. The ℚ₃ value is given (δ(3)=1/2), with the cyclotomic consistency remark.
- §4.1: "arithmetic reciprocity normalization of NT" became "NT's geometric normalization of Art_K".
- §4.1: added a Check (over ℚ₃, η(Frob_arith)=2 gives δ(3)=1/2).

Other places using this convention:
- §4.4: `delta_i=(chi_i o Art_K)…` is NT21 line 1214 verbatim and is correct once Art_K is geometric.
- §4.5 and §8.6: these use `unr(phi)` with φ the crystalline eigenvalue. That is independent of the reciprocity map, so no change was needed.
- A matching Check was added to §8.6 under pass a F06.

## F02 (P2) — applied

Review pass a, finding F02.

The finding is correct. Ding25 line 1197–1201 defines the subscript as the ordered tuple ϕ₁⊠⋯⊠ϕ_{n−1}, with maps from Ext¹_g into Hom_sm(T₁(K),E). In the README, φ₁ names a single character.

What changed in §13.3: "`kappa_(phi_1)(iota^(-)M)` and `kappa_(phi_1)(iota^(+)M)` agree for de Rham M∈Ext¹(C₁,D₁)" became a statement using:
- φ_end=(φ₁,…,φₙ₋₁) and T_end=(G_m)^(n−1);
- the maps κ_end,D₁ and κ_end,C₁ of §11.2, restricted to Ext¹_g;
- the identity κ_end,D₁(ι⁻M)=κ_end,C₁(ι⁺M) for every M∈Ext¹_g(C₁,D₁), as ordered (n−1)-tuples.

I also added the n=3 Check (ψ,ψ) versus the excluded reversal (ψ₂,ψ₁). No other occurrence of `kappa_(phi` exists.

## F03 (P2) — applied

Review pass a, finding F03.

The finding is correct. BHS19 line 2251 assumes W⁺_dR(D) almost de Rham before Proposition 3.5.1. BHS19 line 2305 adds a locally algebraic parameter before line 2321 adds T₀ⁿ. The witness holds: a Sen weight of 1/2 gives D_pdR=0, and T₀¹ is vacuous.

What changed:
- §6.1: "For D with M=D[1/t]" became "For D such that W⁺=W_dR⁺(D) is almost de Rham". It now also says that the frames exist because W is almost de Rham. The proof route already restricted the free-lattice consequence to almost de Rham period realizations.
- §6.2: "a parameter in T₀ⁿ" became "W_dR⁺(D) almost de Rham and a locally algebraic parameter δ∈T₀ⁿ", with the locators.
- Added a negative-control Check to §6.1 and a T₀¹-vacuity Check to §6.2.

§6.3 onward already assume a locally algebraic parameter. §7.1 uses only the W_dR flag, which needs no D_pdR, so it was not changed.

## F04 (P2) — applied

Review pass a, finding F04.

The finding is correct. Ding25 line 450–457 defines ΦΓ_nc(ϕ,h) for weakly decreasing h ("hσ,1 ≥ ⋯ ≥ hσ,d") and defines regularity separately. Line 554 defines 𝔗σ(h), and line 586 maps into ΦΓ_nc(ϕ,𝔗σ(h)).

What changed in §10.1: "Fix φ and strictly decreasing h …" became:
- generic φ and h weakly decreasing at every embedding;
- noncritical spelled out as "graded weights exactly h_i";
- a definition of "regular";
- the statements that D is regular and that D_σ∈ΦΓ_nc(φ,T_σh), with T_σh defined (Ding25 line 554).

I added the (3,1,0)→(0,0,0) negative-control Check. The standing paragraphs of Layers 10–13 already require strictly decreasing h of D only, and §10.8's target now lies in the defined class.

## F05 (P3) — applied

Review pass a, finding F05.

This finding is the same as pass b F03. In the Suggested.lean module docstring, three bullets were added to the list of headlines that are not statable:
- §§4.1–4.2, the ordinary-flag dictionary and ordered-regular strictness and uniqueness. Missing: the coefficient Robba realization, saturated integral triangulations and ordered parameters.
- §4.5, the rank-two de Rham cases. Missing: the de Rham and WD realization.
- §10.8, surjectivity of single-embedding modification. Missing: crystabelline Robba modules and the selective modification.

The Layer 4 bullets were moved into README order. No declaration was added.

## F06 (P3) — applied

Review pass a, finding F06.

The finding is correct. LocalGaloisDeformationRings §3.5, at its current head, supplies "the finite-projective filtered period modules with descent data and their comparison isomorphisms, compatible with these specializations". §3.6 is the deformation theory of filtered modules.

What changed:
- §8.6: the families now come from LocalGaloisDeformationRings §3.5 (trivial inertia type, L=K), §3.6 supplies their deformation theory, and §3.10 supplies the spaces.
- §3.5 was added to the §8.6 Needs line, to the Layer 8 Dependencies and to the LocalGaloisDeformationRings supplier contract.
- Added the Check that arithmetic Frobenius 1+T gives crystalline Frobenius (1+T)⁻¹, which is 1−ε at T=ε. This is consistent with pass a F01.

## F07 (P3) — applied

Review pass a, finding F07.

The finding is correct: no object D₂,σ is defined anywhere. In §13.13 the bullet "replacing it by an unrelated D₂,σ does not type-check" was replaced by a mathematical Check. For d=2, ψ=log_τ (τ≠σ) has τ-derivative 1, so ψ∉Hom_σ(K×,E) and (ψ,−ψ) is not in V_σ, even though the coordinates cancel. ψ=log_σ is admissible.

## F08 (P3) — applied

Review pass a, finding F08.

The finding is correct. With ν=0, f=α′α⁻¹=α(1+εB)α⁻¹ commutes with ν, reduces to the identity and transports the frame, so the two framed objects are isomorphic. This is exactly the discreteness asserted in §1.2.

What changed in §1.1: "matrix equality alone does not identify arbitrary markings" was replaced by:
- the explicit transport f for N=0;
- the general criterion that the matrices N and N+ε[N,B] differ exactly when no compatible isomorphism exists;
- the rank-one non-isomorphic pair 0 and ε.

The neighbouring Check ("changing α by 1+εB changes the framed object unless it is induced by a compatible equivariant isomorphism") agrees with this and was kept.

## F01 (P3) — applied

Review pass b, finding F01.

The finding is correct. PadicLocalLanglandsForGL2QpPartII design §1.2 (board main) states that P(∇) is injective for absolutely irreducible two-dimensional nontrianguline V, with no de Rham hypothesis. Bijectivity of ∂ holds "if moreover V is de Rham", through PadicDifferentialEquationsAndRigidCohomology §RD.2.43.

What changed in the Scope bullet: "for an absolutely irreducible two-dimensional de Rham V that is not trianguline, … injective … and ∂ … bijective" became "for … V over ℚₚ that is not trianguline, P(∇) injective, and, when V is moreover de Rham, ∂ bijective (through PadicDifferentialEquationsAndRigidCohomology §RD.2.43 as that roadmap records)". No target here consumes it.

## F02 (P3) — applied

Review pass b, finding F02.

The finding is correct. In §9.4, "each cycle has ambient dimension 3 and codimension 5" became "each cycle has dimension 3 in the ambient framed ring of dimension 8, hence codimension 5=1·2·3/2+2". The computation is n²+dn²=8, dn(n+1)/2+n=5 and 8−5=3, which agrees with the §9.1 Check (ambient 8) and the fourth §9.4 Check.

## F03 (P3) — applied

Review pass b, finding F03.

This is the same repair as pass a F05 (see above). Both requested Layer 4 headlines (§4.2 strictness and uniqueness, §4.5 rank-two cases) are now named, and §10.8 surjectivity was added as well.

## Checks run

- `lake env lean packages/TriangulineVarietyAndItsLocalModel/Suggested.lean`, run from the content checkout: exit 0, no output. No `TauCeti.*` imports are used.
- Signature check: Suggested.lean declares nothing, so the `#check @name` comparison has no cases and no scratch file was elaborated.
- Dependency check: `depcheck: 56 roadmaps, 651 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- No `gaps` entry was added or changed in design/plan.json. The new supplier citation, LocalGaloisDeformationRings §3.5, is a section that already exists, and LocalGaloisDeformationRings is earlier in the merge order. sources.toml and metadata.toml were not changed. The new locators fall in texts already recorded: NT21 line 261, BHS19 lines 2305 and 2321, and Ding25 line 554.
- Ownership: the repairs add no new construction, so no new ownership question arises. PadicLocalLanglandsForGL2QpPartII is cited only in Scope, as owner of statements no target uses. It is not a supplier.

## Adversarial pass on changed statements

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| Art_K normalization (Conventions) | ℚ₃, unramified η with η(Frob_arith)=2; cyclotomic χ | Art(3)=Frob_geom gives δ(3)=η(Frob_geom)=1/2. D_cris(η): σ(b)=2⁻¹b gives Frobenius 1/2, which matches R(δ) with φ=1/2. χ∘Art(u)=u and χ∘Art(p)=1 give x|x|, matching the line-29 witness. The arithmetic normalization would give x⁻¹|x|⁻¹. | geometric normalization consistent |
| §4.1 Check | the same η | δ∘Art⁻¹(Frob_arith)=δ(3⁻¹)=2 | holds on both sides |
| §4.4 formula | NT21 line 1214 | δ_i=(χ_i∘Art_K)∏τ^(−k) taken with geometric Art_K, verbatim | unchanged |
| §6.1 domain | n=1, ℚ₃: weight 1/2 and δ=x² | weight 1/2: Sen weight not an integer, so D_pdR=0 and there is no frame. x²: D_pdR has rank 1 and the frame is (A⊗K)¹. | domain excludes the first, admits the second |
| §6.2 hypotheses | n=1; n=2,d=2 | n=1: T₀¹ vacuous, so local algebraicity is the operative condition. n=2,d=2: 6−4=2=n is unchanged. | consistent |
| §10.1 class | d=2, n=3, h_τ=(3,1,0) | T_σh_τ=(0,0,0): weakly decreasing (0≥0≥0) but not strict. The original (3,1,0) is strict. | D regular, D_σ in the class |
| §10.1 noncritical | n=2, refinement w=s | graded weights exactly (h₁,h₂) with labels (φ₂,φ₁) | as stated |
| §13.3 ordered tuple | n=3, scalar ψ; general (ψ₁,ψ₂) | both endpoints give (ψ,ψ); a reversed map gives (ψ₂,ψ₁)≠(ψ₁,ψ₂) when ψ₁≠ψ₂ | order matters |
| §13.3, n=2 | rank-one endpoints | T_end=G_m, giving a one-coordinate comparison, consistent with the §10.2 Check (D₁ parameter φ₁z^(h₁), C₁ parameter φ₁z^(h₂)) | consistent |
| §13.13 Check | d=2: log_σ, log_τ | τ-derivative of log_τ is 1, so it is not in Hom_σ. log_σ has τ-derivative 0. The sum ψ−ψ is 0 in both cases. | discriminates |
| §1.1 Check | rank 2, N=0, B arbitrary; rank 1, 0 versus ε; N=[[0,1],[0,0]], B=diag(1,0) | f=I+εB: fN=Nf=0. [N,B]=[[0,−1],[0,0]]≠0, so the matrices differ and there is no isomorphism. 0≠ε. | agrees with §1.2 |
| §8.6 Check | family 1+T, T=ε | (1+ε)⁻¹=1−ε in E[ε]/ε² | consistent with F01 |
| §9.4 Check | n=2,d=1; n=2,d=2 | 4+4=8 and 8−5=3. d=2: 12 and 6+2=8, giving 4. | consistent |

## Notes for the maintainer

- No Lean names changed and no gap slugs changed.
- The reciprocity correction in the Conventions affects only this roadmap's dictionary.
- PadicHodgeParametersInLocallyAnalyticRepresentations imports TR1–TR5 from this package. ΦΓ_nc(φ,h) is now defined for weakly decreasing h, with "regular" as a separate condition. A consumer that read ΦΓ_nc as implicitly regular should add "regular" where it needs it.
- None of the reviews or fetched text contained suspicious instructions.
