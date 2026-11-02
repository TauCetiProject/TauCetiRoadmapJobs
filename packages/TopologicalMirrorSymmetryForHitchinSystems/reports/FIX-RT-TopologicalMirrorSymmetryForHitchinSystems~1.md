# FIX-RT-TopologicalMirrorSymmetryForHitchinSystems~1

Findings of red-team passes a (F01–F08, headed by their own ids, each marked "Review r1a") and b (F01–F04, marked "Review r1b"); cross-references in the text write them `a-Fnn` and `b-Fnn`. Two pairs overlap and are settled together: a-F04 with b-F02 (where Br(O_F)=0 comes from), and a-F06 with the "Lemma 6.7" item of b-F03.

## F01 (P3) — applied

Review r1a.

HT03 §6 (HT03 lines 680–691, 709–715) compares Dolbeault and de Rham spaces at one fixed degree. Its purity argument is for the compactified fibres, not for the open moduli space. It supports neither degree independence nor the SL/PGL comparison. Old: §4.3 and §5.2 cited "HT03 §6, numbered pp.17–18". New: GWZ20 Corollary 7.17 and Corollary 7.22 respectively. Purity is already the declared `gap:higgs-sector-purity`. The §6 locator is also gone from References and from the HT03 `locator` in `sources.toml`.

## F02 (P1) — applied

Review r1a.

Checked: in §0.1, [X/G] with G finite and ℓ invertible is not tame when p divides |G|. The trace formula still holds, because |G| is a unit in ℚ̄ℓ. Old: the gap `tame-stack-trace` covered "tame finite quotient stacks". New: the gap `finite-quotient-stack-trace` covers quotients of separated finite-type schemes by finite étale group schemes, with ℓ-adic coefficients and stabilizer orders divisible by p allowed. A note explains why averaging is exact; tameness is kept for ages and integration. Added the Check BC₂/𝔽₂ (1/2+1/2=1). Also fixed the §0.1 route, which attributed the trace to the orbifold contract. The slug is renamed in all 19 places in the README and in `plan.json` `gaps`.

## F03 (P2) — applied

Review r1a.

Checked: with V nodal and U=E×V, Split′=E∨×V is not a manifold. Old (§1.5): "the manifold of flat unitary splittings". New: "the relative analytic space over V^an of flat unitary splittings; its total space is a complex manifold when V is smooth". The nodal case replaces the administrative Check of §1.5.

## F04 (P3) — applied

Review r1a.

Merged with b-F02. Verified: the ClassFieldTheory Layer 5 text on main does not mention Br of a ring of integers. SchemeAndStackFoundations §2.22 (README line 4491) proves `brauer_henselian_local`. Tau Ceti `TauCeti.subsingleton_brauerGroup_of_finite` is at `TauCeti/Algebra/BrauerGroup/Trivial.lean:247` (namespace `TauCeti`). What changed:
- The ClassFieldTheory contract keeps only the invariant and Kummer evaluation.
- Br(O_F)=0 is now attributed to the §2.22 lemma plus the Tau Ceti declaration, which is added to the Tau Ceti contract.
- The §4.6 text and `*Needs:*`, the §1.4 `*Needs:*` and the Layer 1 and Layer 4 Dependencies now cite them.
- The §1.4 Check now computes ℤ₅ and 𝔽₅[[t]].

## F05 (P2) — applied

Review r1a.

Verified at the head of ComplexComparisonPartII (README line 2046): §C3.2e `picardTorsionComponent` takes a locally noetherian base and a morphism that is flat, Zariski-locally projective, with geometrically integral fibres. This covers the smooth projective geometrically connected families used here. ComplexComparisonPartII comes earlier in ORDER.txt. What changed:
- New contract section "From TauCetiRoadmap.ComplexComparisonPartII" (§§C3.2e, C3.2f.1 `picardZeroSheaf`).
- The `relative-picard-norm-duality` `needs` no longer asks for Picτ itself, in both README and `plan.json`.
- §1.3 text and `*Needs:*` and the Layer 1 Dependencies cite the new owner.

## F06 (P1) — applied differently

Review r1a.

Verified: the ArithmeticGaloisDuality D7.6 square covers only the Ext² gerbe α_t. Its own Check rules out constant Brauer additions. Nothing supplied the formula for an arbitrary gerbe. The principal splitting torsor is owned here, so the bridge becomes a new target of this roadmap: §1.6 "Evaluation of arithmetic gerbes on abelian varieties over local fields" (GWZ20 §6.1, Lemma 6.7).
- Statement: inv(x*β)−inv(0*β)=⟨x,t⟩, with t=[Split′].
- Route: Hochschild–Serre edge map of α_t, then middle exactness, then the D7.6 square.
- Four Checks; equal characteristic goes through the existing `gap:equal-characteristic-abelian-duality`.

It goes in Layer 1, not before §2.6, so §§2.6–2.8 keep their numbers. §2.6 now cites §1.6 instead of "the imported Lemma 6.7". Its fibre point is only there to make A(F) nonempty.

## F07 (P3) — applied

Review r1a.

Removed the repeated or instruction-only Checks at old lines 168, 193, 196, 271, 298, 354, 384, 441, 478, 505, 506, 802, 803, 903, 921 and 950. Replacements:
- §4.5: the order-three equivariance test (f(s+t)=f(s)+t versus f(s)−t; at order 2 the test is blind).
- §4.7: n=1 gives the trivial pair. In canonical genus one with n=2, d=1, every stable trace-free θ vanishes (otherwise an eigen- or kernel line has slope ≥1/2), and E is Atiyah's unique bundle. So the quotient is BΓ with |Γ|=4 and an empty free locus.
- §1.5: the nodal case (a-F03).
- §0.1: the 𝔽₂ case (a-F02).

Every definition section still has at least 4 Checks (counted by script: 0.1:6, 0.2:4, 0.6:6, 0.7:5, 1.1:10, 1.2:5, 1.3:5, 2.1:4, 2.2:4, 2.3:10, 3.1:5, 3.3:7, 3.7:5, 4.4:4).

## F08 (P2) — applied differently

Review r1a.

The suggested target would rest on an unproved step: "computing and killing the Pic/n Kummer residues". The source is uncertified, and the README's own Check (§2.2, root gerbe of a line that is not r-divisible) shows that Brauer neutrality does not give μr-neutrality. A target we cannot vouch for is not added. Instead the promise is cut, as the brief allows ("a named target … or is cut"):
- Scope now says the literal μr-neutrality condition of GWZ20 Definition 6.9 is not a target, and that every comparison uses the sufficient Brauer condition, which that condition implies.
- The promises in §2.2, §4.6 and §4.7 (statement and route) are rewritten to match.
- No converse is asserted.

## F01 (P2) — applied

Review r1b.

Verified on the README's own routes:
- §§4.1, 5.1 and 5.3–5.6 never consume §4.2.
- The degree class used in §4.6 holds without parity. The label L^a M^(1−a) has degree ≡ e mod n, because n | deg M for odd n, and for even n the unit a is odd. This sentence is added to §4.6.

What changed:
- Conventions, §4.1 and §5.1 drop "even".
- §4.2 and the SL half of §4.3 assume exactly "(n−1)deg D even", which is equivalent to n | deg M. That is sharper than "deg D even": for n=3 and deg D=1, deg Q=−1 works, and this is a new Check.
- §3.9 now covers emptiness for every allowed D of degree ≤0 (ω, O(−1), O); the block argument is recomputed. Every "D=ω or deg D=0" becomes "deg D≤0", in 6 places.
- The rank-one GL₁ values are corrected for O(−1).

## F02 (P2) — applied

Review r1b.

Settled together with a-F04: same evidence, same edits.

## F03 (P3) — applied

Review r1b.

- `§§A¹.3, A¹.5` → `§§A1.3, A1.5`; headings verified at the AbelianSchemesAndArithmeticModuli head, line 766.
- Br(X)_K is now defined in §1.4 as ker(Br X→Br X_Ks).
- "corrected χ-counts" → "χ-counts".
- §4.1: claim about the source → "uses gcd(d,n)=gcd(e,n)=1; coprimality of e with d is not used".
- §4.2: "printed sign … corrected" → "sign fixed by §3.10". Also removed "source's assumptions", "corrected N" and "the source's lifting setup".
- §4.5: "Layer 3's corrected ones" → "those of Layer 3".
- §2.5 sentence that did not parse is rewritten.
- Lemma 6.7: see a-F06.

## F04 (P3) — applied

Review r1b.

Pinned signature checked at `CharacterOrthogonality.lean:133,143,182`: `[CommRing M] [IsDomain M] [HasEnoughRootsOfUnity M (Monoid.exponent G)]`, with no characteristic hypothesis. The contract now says this, and that the roadmap applies it with M=ℚ̄ℓ.

## Checks run

- `lake env lean packages/TopologicalMirrorSymmetryForHitchinSystems/Suggested.lean`: exit 0, no output. The file still has zero declarations; the docstring gains the §1.6 headline with the carriers it lacks (Brauer groups and gerbes on schemes — the pinned Brauer group is that of a field — the principal splitting torsor, and abelian local duality). The `#check @name` comparison had nothing to elaborate: there are no declarations, so no signature changed.
- Dependency check, exact output: `depcheck: 56 roadmaps, 653 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `roadmaps resolve`: one lead, line 579, LogicAndDefinabilityInNumberTheory §2.11. It is a board package outside the resolver's index (both reviews say so); the same lead was there before this round. Lean names found nowhere: none.
- A script confirms that all 13 gap slugs and `needs` agree between `plan.json` and the README. In `plan.json` only `gaps` changed.

## Adversarial pass (statements added or changed)

| Statement | Instances | Values | Result |
|---|---|---|---|
| finite-quotient trace gap / §0.1 | BC₂ over 𝔽₂, trivial χ | torsors 2, mass 1/2+1/2=1; Tr Fr on H⁰(pt)=1 | holds without tameness |
| §1.5 relative form | U=E×V, V nodal, α=0 | both sides E∨×V^an; not a manifold at the node; manifold for smooth V | consistent |
| §1.4 Check | ℤ₅, 𝔽₅[[t]], inv c=1/2 | Br(O_F)≅Br(𝔽₅)=0 forces inv c=0 | contradiction for 1/2, as stated |
| §1.6 | t=0, β=c with inv 1/2 | LHS 1/2−1/2=0=⟨x,0⟩; fα≡−1; without the subtraction 1/2≠0 | holds; normalization needed |
| §1.6 | A=0 | A(F)={0}, H¹=0: 0=0 | holds |
| §1.6 | E/ℚ_ℓ, t≠0 | nonzero character; Haar integral 0 times fα(0) | consistent with §2.6 |
| §1.6 | t of order 3, ⟨x,t⟩=1/3 | exp(2πi/3) versus the reversed exp(−2πi/3) | sign fixed; order 2 blind |
| §1.6 route | α_t∈Br(A)_F? | Ext²_{F^s}(A,Gₘ)=H¹(F^s,A∨)=0, so α_t dies over F^s | route well-typed |
| Picτ import | E/k; ℙ¹ | Pic0≅E∨; 0 | matches C3.2e Checks |
| §4.6 degree class | n=2,d=1,e=1,a=1; n=4,d=1,e=3,a=3, deg D=1 | deg M=−1: (1−a)deg M=0; deg M=−6: (−2)(−6)=12≡0 mod 4 | no parity needed |
| §4.2 parity | n=2,deg D=1; n=3,deg D=1; n=4,deg D=1; n=4,deg D=2 | deg M=−1 (fails), −3 (deg Q=−1), −6 (4∤6, fails), −12 (deg Q=−3) | (n−1)deg D even ⇔ n∣deg M |
| §3.9 genus zero | D=O(−1), n=2, d=1, E=O(a)⊕O(1−a) | component in H⁰(O(−2a))=0, a≥1>1/2 | empty, invariants 0=0 |
| §3.9 genus zero, rank 1 | D=O, O(−1), ω | GL₁=A¹, pt, pt; SL₁=PGL₁=pt | stated values |
| scope after b-F01 | elliptic X, deg D=1, n=2 | dim M_SL=3; g_Y=2, Prym 1, base 2: total 3 | consistent |
| §4.5 Check | t of order 3 vs 2 | f(s)+t versus f(s)−t; equal iff 2t=0 | discriminates at order 3 |
| §4.7 Check | g=1, D=O, n=2, d=1 | θ≠0 forces a line of slope ≥1/2; E unique; Γ order 4 fixes it | BΓ, free locus empty |
| §4.7 Check | n=1 | all objects points, band μ₁ | trivial pair |

## Ownership and citations

- New owner cited: ComplexComparisonPartII §§C3.2e, C3.2f.1, read from its open head through the roadmap service.
- §1.6 is owned here: it concerns this roadmap's principal splitting torsor and only consumes D7.6.
- Both new citations of SchemeAndStackFoundations §2.22 resolve on main.
- No roadmap later in the order is cited. No Lean name changed, and no other roadmap cites a name of this package.

## Notes for the maintainer

- The gap slug is renamed `tame-stack-trace` → `finite-quotient-stack-trace`. The EtaleDualityAndPerverseSheaves contract now asks for the wild-stabilizer case.
- The AbelianSchemesAndArithmeticModuli gap `relative-picard-norm-duality` is narrower: Picτ is now imported from ComplexComparisonPartII.
- No text needed from `needs-references.toml`: GWZ20 is still cited by locator, as uncertified.
- No suspicious instructions were found in the reviews.
