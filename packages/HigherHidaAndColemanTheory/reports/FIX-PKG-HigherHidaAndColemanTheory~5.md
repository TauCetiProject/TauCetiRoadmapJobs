# FIX-PKG-HigherHidaAndColemanTheory~5

Repair of the three findings of `REV-PKG-HigherHidaAndColemanTheory~4`. Only `packages/HigherHidaAndColemanTheory/README.md` changed. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged: no declaration, source or supplier gap was added, renamed or removed.

## F01 (P1) — applied

Verified. BP-Hida takes S to be any noetherian affine scheme only for the compactification formalism (BP-Hida line 302, §2.1, p. 7). From §2.5 on every scheme lies over S=Spec A (line 955), and Theorem 2.5.1(2) gives finite A-cohomology for Artinian A in that setting (lines 958–961). The same identification is made for Proposition 2.6.2 (line 1042), Theorem 2.6.8 (line 1104), Theorem 2.6.10 (lines 1114–1120), Proposition 2.6.13 (line 1133), Proposition 2.7.2 (line 1159), Theorem 2.7.4 (line 1202), and for finite rank through Lemma 2.10.1(4) (Y→Spec A, lines 1477–1488, p. 29). The review's witness is right. Over the base Spec 𝔽₂[t], with A=𝔽₂, the identity correspondence of the line satisfies every stated condition, but H⁰=𝔽₂[t] has infinite 𝔽₂-dimension.

What changed:
- **Layer 2 standing setting.** It was "noetherian affine base S of finite type over ℤ … in the Artinian case A=ℤ_p/p^s". It now says: A is ℤ/p^s or a finite flat extension of it (the coefficient ring of §2.1), S=Spec A, and Xbar and Cbar are proper over S. All finiteness, perfectness, finite-rank and duality statements are over this A. A change of coefficients A→A′ base-changes the schemes. The §2.2 definition stays valid over any noetherian affine S and is applied here with S=Spec A.
- **§2.4.** "If A is Artinian it has bounded finite …" now reads "over S=Spec A … finite A-modules". The two inputs are named: properness over Spec A and Artinian A. Three Checks are added: the affine-line negative control, the ℙ¹ compactification with p1=p2=id that fails to be strict, and the proper point (𝔽₂[0], dimension 1, perfect).
- **§2.5.** The geometric base change is now stated in full: S′=Spec A′, X′=X×_S S′, the correspondence and its compactification are base-changed, X and S′ are Tor independent, and RΓ^ord(X,F)⊗^L_A A′≃RΓ^ord(X′,F′). This is BP-Hida Proposition 2.6.13, lines 1132–1143.
- **§2.6 and §2.7.** "Over an Artinian local A" and "smooth over Artinian A" now say "S=Spec A".
- **§2.8(a).** "bounded finite cohomology over the proper core" now reads "finite rank over A, through cohomology supported in Cbar∖(int p1*D+ ∪ int p2*D−), which is proper over Spec A", citing Lemma 2.10.1(4), p. 29. The proof route is changed to match, and an affine-line Check is added.
- **Same pattern elsewhere.** The Scope sentence on solid operations, the Layer 2 line of Conventions, and the Layer 2 Examples sentence "empty boundaries recover …" were changed the same way.

The general relative form the review offers, A noetherian of finite type over ℤ with the Artinian restriction only where needed, was not adopted. The Scope section already says that six operations over larger noetherian bases are not used, and §2.1 specializes the supplied operations to Artinian A only. So the Artinian A of §2.1 is the coefficient ring of the whole layer. Every consumer works at that level: §§3.3–3.5 and 3.8 over ℤ/p^s[ζ], §4.1, §8.1 modulo p^s, and §9.8 through §2.6. The review's repair test holds: Spec 𝔽₂[t] is excluded, and the point gives 𝔽₂ in degree 0, of dimension 1 and perfect.

## F02 (P2) — applied

Verified. Take GL₂, p=3, κ=(2,0) in the lower-Borel convention, and t=diag(2,6). Then ν_id(κ)(t)=2⁻¹6⁻¹=1/12 and ν_long(κ)(t)=6⁻²=1/36. The ratio character (−1,1) gives 6/2=3=p¹. But diag(2,6) is not λ′(3) for any cocharacter λ′, because its first coordinate is the unit 2. So the "only when" claim is false.

What changed:
- **§3.2.** "Only when t=λ′(p) … is c_w′(t) the pure power" now writes t=λ′(p)u with u∈T(ℤ_p). Then n_w′=⟨ν_(w₀)(κ)−ν_(w′)(κ),λ′⟩ and ε_w′(t)=(ν_(w₀)(κ)−ν_(w′)(κ))(u). The scalar is a pure power when u=1, and in general exactly when that character equals 1 at u, which can happen with u≠1. This is the exact equivalence the review offers.
- **§3.2 unit-part Check.** It now also does diag(2,6)=diag(1,3)·diag(2,2): c=3, and (−1,1)(diag(2,2))=1.
- **Same pattern elsewhere.** Source issue E12 said "for t with a nontrivial unit part … a power of p times a unit". It now says: for every t∈T++, a power of p times the character's value at the unit part, which is 1/2 for diag(2,3) and 1 for diag(2,6).

The consumers §3.6 (positive valuation only) and the API bullet c_w′(t)=p^(n_w′)ε_w′(t) are unaffected.

## F03 (P3) — applied

Verified. Under the all-ones assignment, the relation [K diag(1,2) K]²=[K diag(1,4) K]+3[K 2 K] reads 1=1+3=4, which is false modulo 9. So the assignment is not a ring homomorphism from T^S.

What changed: the §3.8 Check "with every Hecke operator acting by 1" now uses the degree character reduced modulo 3^s (g=1, p=3, tame level hyperspecial at 2). It sends the three double cosets to 3, 6 and 1, and 3²=9=6+3·1, both sides 0 modulo 9. The Check states that the all-ones assignment fails (1 versus 4). The limit is ℤ₃[0] with the degree action. The rest of the Check (3·1=3≠0 in ℤ₃, End(ℤ₃[0])=lim End(ℤ/3^s[0])) is unchanged. The same degree character is already used in the §4.7 Check, so the two now agree.

## Checks run

- **Lean elaboration.** `lake env lean packages/HigherHidaAndColemanTheory/Suggested.lean`, run from the content checkout, exited with code 0 and printed nothing. No `TauCeti.*` import needed building.
- **`#check @name` comparison.** `Suggested.lean` has no declarations; its namespace is empty and the module docstring says why none of the headlines is statable. So the scratch `#check @name` set is empty and there are no elaborated signatures to compare. The file is unchanged this round, and no README backticked own-name was added.
- **Dependency check** (`gate --depcheck … --movable`), exact output:

  ```text
  depcheck: 236 roadmaps, 2154 edges, 0 problem(s)
  ```

  There are no UPWARD, CYCLE or moved lines.
- **`roadmaps resolve` on the README.** Cross-roadmap citations found nowhere: none. Lean names found nowhere: none.
- **Gate failures.** None were listed for this round.

## Adversarial pass on changed statements

| Statement | Instance | Values computed | Result | Change |
|---|---|---|---|---|
| Layer 2 setting, S=Spec A | A=𝔽₂; X=𝔸¹ over Spec 𝔽₂[t] versus over Spec 𝔽₂; X=point | H⁰ has 𝔽₂-dimension ∞ over Spec 𝔽₂[t] (excluded, since S≠Spec A); over Spec 𝔽₂, 𝔸¹ is not proper; point: dimension 1 | False before the fix, true after | Setting restated |
| Layer 2 setting, coefficient class | A=ℤ/9, A′=ℤ/9[ζ₃] (finite flat), A=ℤ/9→ℤ/3 | All Artinian and finite: orders 9, 81, 3 | In class | None |
| §2.4 finiteness | ℙ¹_(𝔽₂), p1=p2=id, ∞∈D±, local ideal (u^k) | (u^(ka))⊂(u^(kb)) needs ka≥kb; a=1, b=2, k=1: u∉(u²) | Not strictly dynamical, so excluded | Check added |
| §2.4 finiteness | Point over 𝔽₂, T=id / T=0; point over ℤ/9, T=3 | 𝔽₂[0] (dim 1), 0; T²=9=0, ordinary part 0 | Finite and bounded | Check added |
| §2.5 base change | X=Spec ℤ/9 → A′=ℤ/3, F=O, T=id | Left: ℤ/9⊗^L ℤ/3=ℤ/3; right: RΓ(Spec ℤ/3)=ℤ/3 | Equal | Statement made explicit |
| §2.5 Tor independence | X=Spec ℤ/3 over A=ℤ/9, A′=ℤ/3 | ℤ/3⊗^L_(ℤ/9) ℤ/3 has H^(−i)=ℤ/3 for every i≥0; X′=Spec ℤ/3 has only H⁰ | Fails without Tor independence (and F is not A-flat) | Hypotheses kept |
| §2.6 perfectness | A=ℤ/9, point; F=O versus F=ℤ/3 | ℤ/9[0] is perfect; ℤ/3 has an infinite periodic resolution (multiplication by 3) | A-flatness is needed | None |
| §2.7 duality | d=0 point, A=ℤ/9 | RHom_A(A,A)=A, degree 0 pairs with 0 | Consistent | Wording only |
| §2.8(a) finite rank | Identity of 𝔸¹ over Spec 𝔽₂[t]; point over 𝔽₂ | Identity of 𝔽₂[t] would need an injection into a finite-dimensional H⁰, impossible; point has rank 1 | Holds only with S=Spec A | Restated, Check added |
| §3.2 c_w′(t)=p^(n)ε | GL₂, κ=(2,0), p=3: diag(2,3), diag(2,6), diag(1,3), diag(1,9) | λ′=(0,1),(0,1),(0,1),(0,2); u=diag(2,1),diag(2,2),1,1; n=1,1,1,2; ε=1/2,1,1,1; c=3/2,3,3,9 = ratio ν_id/ν_long: (1/6)/(1/9), (1/12)/(1/36), (1/3)/(1/9), (1/9)/(1/81) | All agree | Necessity replaced by exact criterion |
| §3.2 pure-power criterion (both directions) | u=1 ⇒ ε=1; diag(2,6) has ε=1 with u≠1 | (−1,1)(diag(2,2))=1 | "If" holds, "only if" fails | Fixed |
| E12 | Same instances | Units 1/2 and 1 | Consistent with §3.2 | Restated |
| §3.8 degree character | ℓ=2: 3,6,1; ℓ=5: 6,30,1 | 3²=9=6+3; 6²=36=30+6 | Ring homomorphism | Check uses it |
| §3.8 all-ones (negative) | ℓ=2 mod 9; ℓ=7 mod 3 | 1 vs 4 (≢ mod 9); 1 vs 1+8=9≡0 (≢ mod 3) | Not an action | Stated as non-example |
| §3.8 limit | ℤ₃[0] with degree action | T₂ ↦ 3 ≠ 0 in ℤ₃; End=ℤ₃=lim ℤ/3^s | ℤ₃-linear, not ℤ/3-linear | None |

## Notes for the maintainer

- **Names.** No Lean names, section numbers, target ids or gap slugs changed. Other roadmaps cite nothing that moved.
- **Consumers within this roadmap.** §§3.3–3.5, 3.8, 4.1–4.3, 8.1–8.2 and 9.8 use Layer 2 at ℤ/p^s[ζ] levels. Those are coefficient rings of the restated setting, with their degree models proper over that ring, so no consumer statement changed. The only other finite-over-A claim in the README is §6.3, on affinoid slope blocks; that finiteness comes from compact operators, not from properness, so it is a different pattern.
- **Ownership.** No new construction, carrier or target was introduced. The edits add hypotheses and Checks to existing targets, so this round needed no ownership comparison against open pull requests. `scratch/overlaps.md` lists no open pull request that changes this roadmap, no dropped cited ids, and no ids defined only by an open revision.
- **Untrusted text.** The review contained no instructions outside its mathematical claims.
