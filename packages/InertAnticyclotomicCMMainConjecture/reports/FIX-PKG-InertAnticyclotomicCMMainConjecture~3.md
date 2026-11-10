# FIX-PKG-InertAnticyclotomicCMMainConjecture~3: resolution of REV-PKG-InertAnticyclotomicCMMainConjecture~2

I checked all nine findings against the sources, the supplier texts and the pinned libraries. All nine are right, and all nine are applied. Two files changed: `packages/InertAnticyclotomicCMMainConjecture/README.md` and `packages/InertAnticyclotomicCMMainConjecture/Suggested.lean` (module docstring only). `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged. No gap was added, removed or reworded in the plan.

## REV-PKG-InertAnticyclotomicCMMainConjecture~2/R01 (P3) — applied

Verified: rendering the cached legal BKO21 PDF shows φ̄χ at (3.4) p.952, (3.6) and Proposition 3.3(2) p.953, and δ_χ(ξ) p.961, with the bar over φχ in the p.961 interpolation formula. The extraction drops these bars (lines 478, 827).

Changed: §2.2's sentence "BKO21 prints the right-hand side as L(φχ,1)/Ω at both places …" deleted. Formulas of §§2.2 and 2.5 unchanged. `design/plan.json` records no BKO21 source issue.

## REV-PKG-InertAnticyclotomicCMMainConjecture~2/R02 (P2) — applied

Verified: for R=O[√π], (π)=(ϖ_R²) in R⟦T⟧ is not prime, and the length at (ϖ_R) is 2.

Changed: Conventions "retains the prime (π)" → ϖ_R and e=e(R/O) with πR=ϖ_R^eR; (ϖ_R) is the only height-one prime over p; μ is the exponent of (ϖ_R), so μ(Λ_R/(π))=e. Layer 4 example: μ=1 → μ=e. Same pattern repaired in §§2.4, 3.5, 4.4, 4.6, 5.3 (π^(−k)R/R → ϖ_R^(−k)R/R) and Downstream consumers. §1.3's local "degree e" → d_v.

## REV-PKG-InertAnticyclotomicCMMainConjecture~2/R03 (P3) — applied

Verified: Tr_(K/ℚ)(−p)=−2p. Since N_(H/K)𝔭=(p), the Frobenius at 𝔭 has characteristic polynomial (X+p)².

Changed: §0.1 Check "whose trace over ℚ is 0" → "residue field of p² elements; characteristic polynomial (X+p)², trace −2p (−10 at p=5); trace 0 is a_p of a model over ℚ, a different Frobenius". No other Frobenius-trace claim in the README.

## REV-PKG-InertAnticyclotomicCMMainConjecture~2/R04 (P3) — applied

Verified: AnticyclotomicLocalUnits §8.4 (open head) makes δ(v_+) an O-unit for Λ_O-generators. Two Λ_R-bases differ by u∈Λ_R×, and δ(uv)=u(1)δ(v).

Changed: §0.5 Check "δ(v_+) is a unit of O" → "a unit of R; an O-unit for a basis extended from Λ_O; for R=O[√π] and u=1+√π, δ(uv_+)=(1+√π)δ(v_+) and δ_1(uv_+)=6(1+√π)δ(v_+)/5 at p=5". §2.5 already said "unit of R".

## REV-PKG-InertAnticyclotomicCMMainConjecture~2/R05 (P3) — applied

Verified: NonordinaryCMSpecialValues §2.7 gives cor(z_ap)=z_a at fixed prime support. BKO21 p.952 builds level n from K(f l^m p^(n+1)).

Changed: §2.1 Check "extra factor p changes δ(ξ) by 6/5" → "raising the exponent shifts the cofinal indexing; ξ, δ(ξ) unchanged; 1+p⁻¹ relates δ_1(ξ), δ(ξ) of one class". Same pattern: "moduli f pⁿ" (which put modulus f, prime to p, at n=0) → "f p^(n+1)" in §2.1 and in §2.2's route.

## REV-PKG-InertAnticyclotomicCMMainConjecture~2/R06 (P3) — applied

Verified at Tau Ceti 2fd255d9 by reading the files:
- `TauCeti.Iwasawa.charIdeal` and its operations: Char/Ideal.lean:85, :132, :125, :152, :198.
- `TauCeti.Iwasawa.charDivisor`: Char/Divisor.lean:87.
- The UFD property of R⟦T⟧: RegularLocalRing/PowerSeries.lean and UniqueFactorization.lean.

Changed: Scope, Conventions and a new Tau Ceti contract paragraph cite these with their hypotheses. The PadicMeasuresIwasawaAlgebras §4.6 contract keeps only base change and restriction of scalars. The *Needs* lines of §§3.5, 4.3–4.5, 5.5, 6.1 and the Layer 3–6 dependencies are repointed. The `Suggested.lean` docstring no longer lists characteristic ideals as missing.

## REV-PKG-InertAnticyclotomicCMMainConjecture~2/R07 (P3) — applied

Verified: AHII05 Lemma 5.1 (pp.618–619) gives a finite cokernel only under Conjecture 3.5 (p.615), the splitting of §3.3. With H/H^s free, the dual of the target is Λ_R/(ω_n^s), which is R-free; the target is divisible, so the cokernel is zero.

Changed: §5.2 "injective with finite cokernel" → "an isomorphism". The route gains the divisibility argument (PadicMeasuresIwasawaAlgebras §4.3 added to *Needs*). The Check "not zero in general" → the corank 20/5 computation with Q=ϖ_R^kQ=0. Negative control added: a non-free dual (ϖ_R,T) forces a nonzero cokernel.

## REV-PKG-InertAnticyclotomicCMMainConjecture~2/R08 (P3) — applied

Verified: when loc(S_rel)=H^ε, the sequence is exact with zero cokernel.

Changed: §4.1 Check "which is nonzero for s=−ε (§4.4)" → "for s=−ε the cokernel is H^ε/loc(S_rel), which may be zero or nonzero: 0 when loc(S_rel)=H^ε, Λ_R/(T) when loc(S_rel)=T·H^ε; the sequence identifies it, it does not force it nonzero".

## REV-PKG-InertAnticyclotomicCMMainConjecture~2/R09 (P3) — applied

Verified with AnticyclotomicLocalUnits §3.2 (open head): A^ε is defined by vanishing of the same-parity λ_χ and is saturated, so F(Ψ_n)/A_n^s is O-free.

Changed: §1.1 Check "a single-character point has class outside L_n^s" → "Q⊗π⁻¹≠0 lies outside L_0⁺=0 while [π]Q⊗π⁻¹=0 despite λ([π]Q)≠0; y⊗π^(−j)∈L_n^s exactly when y's image in F(Ψ_n)/A_n^s is divisible by π^j; a point with every same-parity λ_χ zero lies in A_n^s".

## Checks run

- **Elaboration.** Ran `lake env lean` on `packages/InertAnticyclotomicCMMainConjecture/Suggested.lean` from the content checkout (Mathlib 1b1ccf4b, Tau Ceti 2fd255d9): exit 0, no output, no warnings. The file imports only `Mathlib` and declares nothing; only the docstring changed. So the `#check @name` signature comparison has zero cases, and no binder can disappear.
- **Library names.** `roadmaps resolve` reports no unresolved roadmap citation or Lean name, but it does not check library names on this host. I opened every newly cited Tau Ceti and Mathlib name at the pin and confirmed its namespace (files and lines above, plus Mathlib's `IsRegularLocalRing` instance for local principal ideal domains in Mathlib/RingTheory/RegularLocalRing/Defs.lean). The Char modules have no built object files, and nothing in `Suggested.lean` imports them, so they were confirmed by reading, not by elaboration.
- **Dependency check** (after all edits):

      depcheck: 236 roadmaps, 2140 edges, 0 problem(s)

  There is no UPWARD, CYCLE or moved line. No supplier was added: Tau Ceti is a pin, and PadicMeasuresIwasawaAlgebras is on main and was already cited.
- **Sources.** No source was added and `sources.toml` is unchanged. Read: BKO21 lines 470–480 plus rendered pp.952, 953 and 961; AHII05 lines 205–216 and 300–345. The rendered images were deleted after inspection.
- **Overlaps and ownership.** The overlap report lists no conflicting head and no dropped or revision-only id, and no heading changed here. No new construction was introduced. Generic characteristic-ideal operations now go to their existing owner at the pin (Tau Ceti), not to a roadmap. Ownership of the remaining targets is as before.
- **Gate failures listed in the brief:** none.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Conventions: ϖ_R, e, vertical prime, μ | R=O (e=1); R=O[√π] (e=2) | e=1: (π)=(ϖ_R), quotient 𝔽₂₅⟦T⟧ is a domain (p=5), μ(Λ/(π))=1. e=2: √π∉(π), (√π)²∈(π), length at (√π) is 2, μ=2. A height-one (f)∋p forces f∣ϖ_R^e, so f~ϖ_R | Correct both ways | Added |
| §0.1 Frobenius Check | p=5 | φ((5))=−5, (X+5)²=X²+10X+25, trace −10, Hasse \|−10\|≤2·5. Cross-check with a model over ℚ: a_{p²}=a_p²−2p=−10 | Agrees with NCM §3.4 | Replaced |
| §0.5 basis Check | u=1 (R=O); u=1+√π (R=O[√π]) | δ(uv)=u(1)δ(v): O-unit; (1+√π)δ(v), valuation 0, not in O. δ_1=(6/5)(1+√π)δ(v) at p=5 | "unit of O" fails, "unit of R" holds | Replaced |
| §1.1 Kummer Check | n=0,s=+; n=1,s=±; y=[π]Q | F(Φ)≅O via λ (e=1<p−1). Q⊗π⁻¹↦π⁻¹ mod O≠0, killed by π; [π]Q⊗π⁻¹=0 while λ=πλ(Q)≠0. n=1: A_1⁺=0, so F/A=F(Ψ_1)≅O⁵ and primitive y⊗π⁻¹∉L_1⁺; A_1⁻=F(Ψ_1), so every class is in L_1⁻ | Criterion "π^j divides image" exact (j>m iff outside) | Replaced |
| §2.1 modulus f p^(n+1) | n=0 | Modulus fp ⊇ field of H(E[p]) (BKO21 p.952, m=0); all moduli divisible by p | Matches source composite | Indexing fixed |
| §2.1 shift Check | (z_fp,z_fp²,…) vs its tail | cor(z_fp²)=z_fp at support {f,p}: multiplier 1, limit identical. 1+1/5=6/5 is δ_1/δ on one class. Modulus f→fp introduces p: an Euler operator, not in the family | Replaced claim was false | Replaced |
| §2.2 values after deletion | χ of order 5, ζ=χ(γ) | δ_(χ⁻¹)(ξ)=L(φ̄χ⁻¹,1)/Ω=L(conj(φχ),1)/Ω=L_p(χ)δ_(χ⁻¹)(v), matching p.961 printed with its bars | Consistent; no erratum | Sentence deleted |
| §2.4 Check | e=2 | Coordinate ϖ_R=√π; (√π)⊋(π)=(√π)² | Correct | ϖ_R notation |
| §3.5 Check | Λ_R/(π), e=1,2 | `charIdeal_quotient_span_singleton` with f=π≠0 gives (π)=(ϖ_R)^e; μ=1,2; zero after ⊗L | Correct | Reworded |
| §4.1 cokernel Check | loc S_rel=H^ε; =T·H^ε; =𝔪H^ε | Cokernels 0, Λ_R/(T) (char (T)), Λ_R/𝔪 (finite, char Λ_R) | "nonzero" overclaim refuted; "may be" holds | Replaced |
| §4.4 Check | C=πS_ε, e=1,2 | S_ε torsion-free of rank one; at (ϖ_R) it is free over the DVR, so length(S_ε/πS_ε)=e; zero at other height-one primes; char=(π) | Correct | Reworded |
| Layer 4 example | L_p=π with R=O and O[√π]; L_p=ϖ_R | μ=1, 2, 1 | Correct | μ=e |
| §5.2 isomorphism | n=0 (±), n=1 (±), n=2 (±), p=5 | Coranks: (0,1), (0,5), (20,5) = deg ω_n^s. ι(Φ_5(γ))=γ⁻⁴Φ_5(γ); Φ_25(1+T)≡T^20 mod 5 (distinguished). Divisible target, finite Q=ϖ^kQ=0. Negative control 𝔪=(ϖ_R,T), n=0, s=−: 𝔪/T𝔪≅R⊕R/ϖ_R ([T]≠0, ϖ[T]=0), cokernel ≅(R/ϖ_R)^∨≠0 | Strengthened statement true; freeness is used | Statement, route, Checks |
| §5.3 Check | R=O[√π] | ϖ_R⁻¹R/R has length 1, but π^(−k)R/R has length 2k, so the old list missed it | Old claim false at e=2 | ϖ_R |
| §1.3 Check symbol | bad place, degree d_v | No mathematical change; avoids the clash with e(R/O) | — | Renamed |
| Tau Ceti contract: `charIdeal`, `charDivisor` | M=0; M=Λ (not torsion); Λ/(T²); Λ/(p,T) | ⊤ (`charIdeal_of_subsingleton`); junk ⊤ (local length ∞ read as 0), so use is restricted to torsion modules; (T²); ⊤ (pseudo-null) | Hypotheses stated with the names | Added |
| Contract: `charIdeal_eq_mul_of_exact` | 0→Λ/(T)→Λ/(T²)→Λ/(T)→0 | (T²)=(T)(T); needs noetherian A, N f.g. torsion, exact, injective, surjective (pin :132) | Correct | Added |
| Contract: `LinearEquiv.charIdeal_eq_comap` | ι: T↦(1+T)⁻¹−1 on Λ/(T−5) | Root moves to −5/6; char(M^ι)=ι⁻¹(char M), as in the pinned ℚ[X] example (X)=σ⁻¹(X+1) | Direction pinned | Cited in §4.3 Needs |
| Suggested.lean docstring | Headlines §§4.2, 4.4, 4.6, 6.4 | charIdeal present at the pin, but X_(−ε), S_s, C, L_p and the signed Selmer groups are still absent | Verdict "not statable" stands | Docstring |

## For the maintainer

- No heading, section number or roadmap-owned Lean name changed. Other roadmaps' citations of this one stay valid, and `Suggested.lean` still declares nothing.
- For ModularIwasawaMainConjecturesPartII, the only consumer: §5.2 is now an isomorphism (stronger), and the μ-invariant of Λ_R/(π) is e, not 1, over ramified R.
- PadicMeasuresIwasawaAlgebras §4.6 on main plans the names `charIdeal_mul_of_exact`, `charIdeal_quotient_span`, `charIdeal_eq_of_pseudoIso` and `charIdeal_comap_of_semilinearEquiv`. Pinned Tau Ceti implements them as `charIdeal_eq_mul_of_exact`, `charIdeal_quotient_span_singleton`, `IsPseudoIsomorphism.charIdeal_eq` and `LinearEquiv.charIdeal_eq_comap`. That roadmap may want to record the implemented names; this package cannot edit it.
- The two PadicMeasuresIwasawaAlgebras gaps (`restriction-of-scalars-finite-extension`, `character-prime-multiplicity`) remain genuine: neither base change, restriction of scalars nor the character-prime multiplicity comparison is at the pin.
