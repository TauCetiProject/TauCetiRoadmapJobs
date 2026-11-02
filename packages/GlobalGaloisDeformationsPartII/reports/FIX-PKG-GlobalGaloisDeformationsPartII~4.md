# Repair report: GlobalGaloisDeformationsPartII

## F01 (P1) — applied

§8.11 "a finite quotient of `Γ_{Q,S}` with dim H¹>1" → for a fixed odd χ̄, a finite enlargement S′⊃S by χ̄-trivial primes (S′ depending on χ̄) and a finite quotient of `Γ_{Q,S′}` through which χ̄ factors. Added the injectivity reason, a route through §7.2 (d=[k:𝔽_p]), the Lemma 6.2 locator and the S={5} Check.

## F02 (P2) — applied

Conventions: very-good only → fixed root-datum bound B_G≥2 covering very-good/kernel and the four root contracts plus §5.2; p≫G is defined as p>B≥B_G. Added p>B_G in §§2.5, 2.6, 3.4, 3.6, 4.6 API, 5.2–5.5, 6.1, 6.3, 6.5; p≫G in §§6.6, 7.5, 7.7. §0.3: C4 is the cohomological clause of Assumption 3.1. §6.4: B_G=2 for sl₂. Added the SL₄/𝔽₃ Check.

## F03 (P3) — applied

§3.2: no API → three API bullets (restriction to stages with the same ε, transport along isomorphisms of lifting data, enlarging the finite excluded set), each following from the quantified form. Added an ε=1 Check, including s=0. §6.6: K′ gained an API: finite elementary abelian over K, Galois over F, unramified outside T; absorbs each defining extension; monotone in T.

## Evidence

- **F01.** FKP22 Remark 7.8 takes "S a sufficiently large finite set of places" (FKP22 line 1702). The witness holds. For p=5, χ̄=κ̄ and S={5}, Kummer theory gives H¹(`Γ_{Q,{5}}`,𝔽₅(1)) as an extension of Pic(ℤ[1/5])[5]=0 by ⟨−1,5⟩ modulo fifth powers. Since −1=(−1)⁵, the dimension is 1. Inflation from any finite quotient through which κ̄ factors is injective on H¹, and coefficient extension to k̄ preserves dimension, so the dimension stays ≤1. For S′={5,11} (11≡1 mod 5) the classes 5 and 11 are independent, with valuation matrix the identity, and Pic(ℤ[1/55])=0, so the dimension is 2. Quantifier order: S′ depends on χ̄. For fixed k one could take a common S′ for the finitely many χ̄, but the README does not need that and does not claim it. §8.10 is unchanged: it is conditional on a given Γ ("a finite quotient Γ of Γ_Q with dim>1").
- **F02.** The source assumes p≫G⁰, and this includes very-good and the kernel condition (FKP22 line 390–391). Assumption 3.1 is p≫G⁰ plus H¹(Gal(K/F),M*)=0 (FKP22 line 457–461). Assumption 4.1 is Assumption 3.1 plus C1 and C3 (FKP22 line 851–854). Assumption 5.1 and Theorems 4.4, 5.2 and 5.6 all retain p≫G⁰ (FKP22 lines 891, 1001, 1008, 1193). The bound is used for:
  - root vectors outside a proper 𝔽_p-subspace (FKP22 line 575, line 734);
  - general-position toral lifts (FKP22 line 936, line 986);
  - the (T,α) pair (FKP22 line 1162).

  Corollary 5.5 (FKP22 line 1152–1160) checks each use for sl₂ at p≥3. The new §6.4 wording (B_G=2) is verified input by input:
  - A₁ is very good at odd p, and the kernel lies in μ₂.
  - The unipotent radicals are 0 or Gₐ.
  - The adjoint expansion needs 2! invertible.
  - xE₁₂, xE₂₁ and x·[[−1,1],[−1,1]] span sl₂(k) over 𝔽_p, since xh=xE₁₂−xE₂₁−xX.
  - H=(a/2)h gives prescribed root value a with −a≠0.
  - §5.2 is p≥3 for A₁.

  The prime bounds in Layer 1 and Layers 7–10 are already root-datum bounds ("sufficiently large in G", p≫G, p≫n). The new convention makes their meaning precise. The supplier-contract wording "characteristic sufficiently large in its root datum" in the plan's gaps was left unchanged.
- **F03.** FKP19 Definition 5.8 (FKP19 line 1298–1302) builds K′ as a compositum of elementary abelian p-extensions L/K, Galois over F, unramified outside T, with Gal(L/K) one of the simple constituents Wᵢ. Its finiteness, the absorption of each L and monotonicity in T follow from that definition. The finiteness input is the existing ArithmeticGaloisDuality R02.3.1 citation.

## Adversarial mathematics pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §8.11 fixed S (old) | p=5, χ̄=κ̄, S={5} | dim H¹=1, not >1 | false | restated with S′ |
| §8.11 enlarged S′ (new) | S′={5,11}; k=𝔽₂₅ | valuation vectors (1,0),(0,1): dim 2. dim_𝔽₅>2 forces dim_k≥2 (dim_𝔽₅=2·dim_k) | true | Check added |
| §8.11 route via §7.2 | W⁰=0; d=[k:𝔽_p] | W⁰=0 gives increment 0 and is excluded by §7.2's W⁰≠0. dim_𝔽p>[k:𝔽_p] forces dim_k≥2 | sound | route added |
| §8.11 cocycle quotient | two cocycles c₁,c₂ | g↦(χ̄(g),c₁(g),c₂(g)) is a homomorphism to k²⋊k× with (a,x)(b,y)=(a+xb,xy) and cocycle law c(gh)=c(g)+χ̄(g)c(h); its kernel is open | sound | none |
| B_G convention | SL₄/𝔽₃; SL₄/𝔽₇; SL₂/𝔽₃; Gₘ | regular trace-zero tuples: 0 over 𝔽₃ and 840/7=120 over 𝔽₇, e.g. (0,1,2,4) with sum 7≡0. dα(h)=2≠0 for SL₂/𝔽₃. Gₘ has no roots, so its root contracts are vacuous and B_G=2 works | very-good is insufficient; B_G≥3 for A₃ | Check added |
| B_G implies standing hypotheses | A₁ at p=3; A₃ at p=2 | 3∤2, so very good; 2∣4, so p=2 is not very good for A₃ and is excluded since B_G≥2 | consistent | none |
| §0.3 identification | FKP22 Assumptions 3.1, 4.1, 5.1 | 3.1 = {p≫G⁰, C4}; 4.1 = 3.1+{C1, C3}; 5.1 = 4.1+{μ geometric, C2, local lifts} | old "C4 is Assumption 3.1" omitted the prime clause | restated |
| §2.5 spanning classes | coker 𝔽₃² at p>B_G; SL₄/𝔽₃ | rank 2 versus rank 1 for repeated direction (unchanged). 𝔽₃ is now outside the hypothesis | sound | p>B_G added |
| §2.6 prescribed vector | Z∈𝔽₉, Z≠0 | 2 nonzero line elements versus 8 in kZ (unchanged) | sound | p>B_G added |
| §3.4 doubling | p=5,3,2 | coefficients (4,2), (2,2), (1,0); p=2 excluded by B_G≥2 | sound | p>B_G added |
| §3.6 towers | e=2, D=1; SL₄/𝔽₃ | cutoff 2, first noncentral level 3. A₃ over 𝔽₃ has 0 regular toral elements and is now excluded | sound | p>B_G added |
| §4.6 Q_N nonempty (API) | Gₘ; SL₂/ℤ₃, M=2 | Gₘ: Q_N empty, density 0 (rank 0 excluded). Norm 19 passes and 109 fails the exact depth | sound | "standing hypotheses" → p>B_G |
| §5.2 root position | sl₂(𝔽₃), A=h, B=E₁₂* | dα(h)=2, B(E₁₂)=1, Gram determinant −2=1; char 2 gives 0 | sound | bound tied to B_G |
| §§5.3–5.5, 6.1 given tower | 𝔽₃² projections; C₂ factor swap | (1,1) value pair (1,1); r=2 gives values 2,1; fibre product order 2 versus 4 | sound | p>B_G added |
| §6.3 | Gₘ; GL₂; t=2, e′=3 | kernel size 1; derived Lie dimension 3; exponent 6 | sound | "sufficiently large" → p>B_G |
| §6.4 sl₂ (B_G=2) | p=3 versus p=2; GL₂ and PGL₂ | dα(h)=2 versus 0; 1/2=2 in 𝔽₃; span check xh=xE₁₂−xE₂₁−xX. PGL₂: dα(diag(a,0))=a at every p | p≥3 preserved | restated as B_G=2 |
| §6.5 | fixed-det GL₂/ℚ_p; real C₂ at p=3 | (1+1)·3=6 versus 3+1=4; positive-degree H=0 | sound | p>B_G and the kept hypotheses made explicit |
| §6.6 | r=0; two fields sharing K′ | K′=K; degrees p³ over K and p² over K′ | sound | p≫G made precise; K′ API added |
| K′ API | T⊂T′; L defining | L⊂K′_T⊂K′_T′; a K′-split prime splits in L | sound | added |
| §3.2 API and ε=1 | ε=1, s=1; repeated binary test; s=0; finite X′ | (1−1)¹=0; success proportion 1/2<1, so rejected; (1−ε)⁰=1; finite sets have Dirichlet density 0, so the upper densities are unchanged | sound | API and Check added |
| §§7.5, 7.7 | FKP22 Lemma 6.5 hypotheses; SL₂ torus | Lemma 6.5 assumes p≫G⁰ (FKP22 line 1316). Invariant dimension drops 1→0 (unchanged) | bound was missing | p≫G added |

## Required checks

- `lake env lean packages/GlobalGaloisDeformationsPartII/Suggested.lean`, run from the content checkout: exit 0, no output. `Suggested.lean` is unchanged and declares nothing. Its docstring states why no headline is statable. With zero declarations, the `#check @name` comparison had nothing to check. No `TauCeti.*` import is used, so no module build was needed.
- `gate --depcheck … --movable`, complete output:

```text
depcheck: 54 roadmaps, 616 edges, 0 problem(s)
```

The README before these edits gives the same count, so the change from the earlier 52/603 comes from the current index and merge order, not from these edits. There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README found no cross-roadmap citation and no Lean name missing.
- No new supplier is cited. The B_G convention consumes the four ReductiveGroupsPartII gaps already declared in `design/plan.json`, so the plan's `gaps` list and `sources.toml` are unchanged. The FKP22 entry's locator covers §§2–9, including Lemma 6.2 and Remark 7.8.
- Ownership: no new construction or carrier was introduced. B_G is a convention, and the §3.2 and K′ API bullets are properties of this roadmap's own targets. No ownership search against open pull requests was needed for these edits.

## Notes for the maintainer

- No name cited by another roadmap changed. Downstream readers of §§6.3–6.5 should note that the prime hypothesis is now stated explicitly as p>B_G, with B_G=2 when g^der=sl₂.
- The worker's `signatures.md` failure ("unexpected token 'in'" at line 46) does not come from `Suggested.lean`, which has 44 lines and elaborates cleanly. It lies in the worker's generated scratch wrapper.
