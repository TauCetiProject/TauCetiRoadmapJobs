# Repair report: red-team round 1 of ExcursionOperatorsAndSpectralActionPartII

Two reviews were merged. Review r1a has findings F01–F03 and review r1b has F01–F04; each is reported under its own review heading with its own id. Two pairs make the same claim and are settled once:
- r1a F01 and r1b F02: the §0.0(b) Levi comparison for every G rests on an input stated only for quasi-split G. Settled under r1a F01.
- r1a F02 and r1b F01: character independence is not supplied by EndoscopicTransferAndUnitaryTraceComparison §2.16. Settled under r1a F02.

# Review r1a

## F01 (P1) — applied

The witness holds. HeckeStacksAndLocalShtukas §HS4.6 (README at its open head) assumes G quasi-split. FS24 gets Corollary IX.7.3 for every G only through the z-embedding reduction in the proof of Theorem IX.7.2 (FS24 line 12996–13011). SL₂(D) is simply connected, so 1 is its only basic class and no basic twist reaches SL₄.

Old → new: §0.0(b) used §HS4.6 directly → it uses the new gap:general-parabolic-excursion-comparison (HeckeStacksAndLocalShtukas, "§HS4.6, general parabolic excursion comparison"; FS24 line 12973, 12996, 13097). The gap is in `design/plan.json` and the HS contract. The *Needs:* and Layer 0 Dependencies were updated. Three Checks were added: SL₂(D), SL₂(D)↪GL₂(D)=(GL₄)_(b₀), and the twist direction at q=4 (trace 11/2 against 7).

## F02 (P1) — applied

The witness holds. ET §2.16 (open head) states (a)–(d) and elliptic orthonormality. "Linear independence" appears only in a Check, and that Check asserts only that each Θ_π is nonzero. `roadmaps grep` finds no owner.

Old → new: "consumed from … §2.16" → gap:irreducible-character-independence (ET, "§2.16, irreducible-character independence"; H26 line 218 and line 318). The gap is in `design/plan.json` and the ET contract, with three Checks: GL₁ det −vol², the dependent pair (1,1),(2,2), and the singleton case. The change was made at all four places: SR contract, §1.1, §4.1 and both *Needs:* lines. The gap was added to the Layer 1 and Layer 4 Dependencies. §2.16 is kept where it is cited for (b)–(d).

## F03 (P3) — applied

The finding is correct. GS4 gives S(1_(KμK))=q^⟨ρ,μ⟩χ_μ with ⟨ρ,(1,0)⟩=1/2. Computed: (Tf)(1)=q·η₁(ϖ)+η₂(ϖ). With η=χδ^(1/2) this is √q(2+3)=5√q. With η=χδ^(−1/2) it is 11/√2 at q=2.

Old → new: the Conventions Check and the §0.0 Check said the "normalized eigenvalue 5√q" → now raw 5√q (5√2 at q=2), normalized q^(−1/2)·1_(K diag(ϖ,1) K) eigenvalue 5. The inverse-modulus control is now the computed value 11/√2.

# Review r1b

## F01 (P1) — applied

This is the same defect as r1a F02 and is settled there, with the same repair. Of the two proposed slugs, `irreducible-character-independence` was used; the GL₁ [[2,3],[1,1]] test proposed here is one of the gap's Checks.

## F02 (P2) — applied differently

This is the same defect as r1a F01 and is settled there. The proposed local reduction is flawed, because two of its inputs have no supplier:
- ReductiveGroupsPartII §RG2.1.5 supplies z-extensions G̃→G, not z-embeddings G↪G′ with connected centre; its scope assigns z-embeddings elsewhere.
- No supplier owns the spectral-centre consequence of FS24 Theorem IX.6.1; HS4.3 gives only the geometric diagram.

The step is therefore a supplier gap. The README contract names the ingredients of the reduction: BunGAndNewtonStrata §1.44, HS4.3 and HS0.6. The GL₂(D) instance is the second new Check.

## F03 (P3) — applied

The finding is correct. *admissibility-of-irreducibles* sits under SR.3a.1 at the SmoothRepresentationsOfLocalGroups open head. Old → new: "§SR.3a.2" → "§SR.3a.1 (*admissibility-of-irreducibles*)" in the SR contract, the FS-parameter paragraph and the Layer 0 Dependencies. SR.3a.1 is stated over ℂ, so the text now says that ℚ̄_ℓ is reached through ι.

## F04 (P3) — applied differently

- (i) Applied. U(G) is now defined as the common kernel of the SO_γ of ET §2.4, and stability as annihilating U(G) (H26 line 39). Agreement with `TauCeti.IsStableDistribution` is the bipolar theorem for the weak-* closure. The "weak closed-span duality of §§2.4 and 2.11" sentence is removed, in Conventions and §0.1.
- (ii) Applied. The §0.2 GL_n Check now cites gap:kazhdan-cuspidal-decomposition.
- (iii) Applied. "and algebraic representations" is dropped from the RG2.5 import; V_μ comes from ReductiveGroups Layer 10B.
- (iv) The substance is disputed. An E-rational Ad(x)|_T needs x⁻¹σ(x)∈Z_G(T)=T, so "geometrically conjugate" and "stably conjugate" give the same set. The wording is now that explicit parametrization by D(T,G;E) through §1.14(a)–(b), in the ET contract and §3.1.

## Checks run

- **Elaboration.** `lake env lean packages/ExcursionOperatorsAndSpectralActionPartII/Suggested.lean` exited 0, with one warning: `declaration uses 'sorry'` at line 44. `Suggested.lean` is unchanged.
- **Binder check.** A scratch file ran `#check @TauCetiRoadmap.ExcursionOperatorsAndSpectralActionPartII.weightPushforward_sum_abs_sub_uniform_le`. Its elaborated type has the following, matching README §2.4(a):
  - every binder explicit;
  - `Function.Surjective φ`;
  - `∃ C, 0 ≤ C ∧ ∀ m, 1 ≤ m → ∀ M …`;
  - the highest-weight and `lieSpan = ⊤` hypotheses.
  
  No binder was lost and nothing changed.
- **Dependency check.** Output:

```text
depcheck: 56 roadmaps, 648 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The new citations point only to roadmaps earlier in the merge order: HeckeStacksAndLocalShtukas, EndoscopicTransferAndUnitaryTraceComparison and BunGAndNewtonStrata.

## Adversarial pass on new and changed statements

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| gap:general-parabolic-excursion-comparison, twist direction | GL₂ ⊃ B, unramified σ with values (2,3), q=4 | Ind σ = i_B(σδ^(−1/2)) gives values (2·2, 3/2) = (4, 3/2), trace 11/2. FS twist diag(√q, 1/√q)·diag(2,3) = diag(4, 3/2). Opposite twist gives diag(1,6), trace 7. | Agrees with FS24 line 12973 |
| same, P=G | any G | 2ρ_Ĝ − 2ρ_Ĝ = 0, so the twist is trivial and Ind = σ | Tautology holds |
| same, non-quasi-split | SL₂(D); GL₂(D) | π₁(SL₂(D)) = 0, so only b=1. Nrd: GL₂(D)(E)→E^× is onto and Z = G_m is connected. κ(b₀)=2 in B(GL₄) gives J = GL₂(D). | The reduction applies; quasi-split HS4.6 alone does not |
| gap:irreducible-character-independence | GL₁ with χ(ϖ)=2,3; a single π; a dependent pair | det [[2,3],[1,1]]·v² = −v² ≠ 0. Θ_π ≠ 0. (1,1) and (2,2) are dependent. | True; nonvanishing ≠ independence |
| Stable = annihilator of U(G) | ℂ² model with U = span(1,−1); torus | Weak-* span of (1,1) is {a=b} = U^⊥. Torus: U = 0, so every z is stable. | Bipolar theorem holds for σ(H*, H) |
| Raw vs normalized spherical eigenvalue | q=2, values (2,3) | s=1/2: 2·2·2^(−1/2) + 3·2^(1/2) = 5√2. Normalized: 5. s=−1/2: 11/√2. | Checks corrected |
| ET §1.14 embedding parametrization | SL₂, elliptic T; GL_n | D(T,SL₂) = ℤ/2 gives two embedding classes. D(T,GL_n) = 0 gives one. | Finite, as used in §3.1 |

## Ownership and citations

- **Z-embeddings and the FS24 Theorem IX.6.1 centre consequence.** `roadmaps grep` for "z-embedding" and "IX.6.1" finds no owner. ReductiveGroupsPartII defers z-embeddings, and HeckeStacksAndLocalShtukas HS4.3 supplies only the geometric diagram. They are therefore requested of HeckeStacksAndLocalShtukas, inside the new gap.
- **Character independence.** No owner on main or at the open heads, so it is requested of ET §2.16.
- **Scope of the ownership search.** Open pull requests were checked through the roadmaps index of 2026-10-27 and the sibling checkouts listed in the brief.
- **Citations checked at the open heads:** HS4.3, HS4.6, HS0.6 (HeckeStacksAndLocalShtukas, 48d21c7); BunG §1.44 (0d1e747); ET §§1.14, 2.4, 2.11, 2.16 (40d60b6); SR.3a.1 (1383569); RG2.1.5 (1383569).

No source text was missing, and `needs-references.toml` was not written.

## Notes for the maintainer

- There are two new supplier gaps:
  - HeckeStacksAndLocalShtukas must state the general (non-quasi-split) parabolic excursion comparison.
  - EndoscopicTransferAndUnitaryTraceComparison §2.16 must state independence of irreducible characters.
- The ET README has two slips outside this package:
  - It cites SR.3a.2 for admissibility (it belongs to SR.3a.1).
  - It labels a nonvanishing Check as "linear independence".
- HeckeStacksAndLocalShtukas HS4.3 assigns the spectral-centre consequences to "ExcursionOperatorsAndSpectralAction, ES6", a roadmap that does not exist. The new gap puts that consequence, as far as this package needs it, back on HeckeStacksAndLocalShtukas.
- No Lean names changed.
