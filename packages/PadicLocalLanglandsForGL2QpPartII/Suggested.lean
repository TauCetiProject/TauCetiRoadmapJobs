import Mathlib

/-!
# p-adic local Langlands for GL₂(ℚ_p), Part II: target signatures

The roadmap is `README.md`; this file is not the roadmap. It is the acceptance test of the
roadmap: it states, against the pinned Mathlib and Tau Ceti, those headline theorems of the
roadmap that are statable at the pins. None of them is, so the file states nothing. Each
headline theorem, and the carrier it lacks, is listed below; the README states each one in full.

* The Galois-socle theorem (README §4.14): for an absolutely irreducible continuous
  representation `V` of `Gal(ℚ̄_p/ℚ_p)`, the multiplicity of `V` in the p-adic étale cohomology
  `H¹_ét(M^p_{n,C}, L(1))` of the p-central Drinfeld tower is `Π(V)′ ⊗ JL(M)` when
  `V ≅ V_{M,ℒ}` for a supercuspidal type `M`, `(St^cont ⊗ δ)′ ⊗ δ∘Nrd` for a character `δ` of
  Steinberg type, and `0` otherwise, in particular `0` when `dim V ≥ 3`. It lacks the Drinfeld
  tower as a rigid analytic space over `ℚ_p` with its `GL₂(ℚ_p) × D^× × Gal`-action, étale
  cohomology of rigid analytic spaces, admissible unitary Banach representations of `GL₂(ℚ_p)`
  and the correspondence `V ↦ Π(V)`.
* The Banach multiplicities (README §§4.12–4.13) of an absolutely irreducible admissible
  unitary Banach representation `Π` in differentials and in étale cohomology of the tower. They
  lack the same carriers, and the strong dual of a Banach representation as a representation.
* The factorisation of the arithmetic completed cohomology (README §6.6): for `p > 3`,
  `H¹_ét(M^p_{n,ℚ̄_p}, L(1))` is the finite sum over types `M` of the completed sums over blocks
  `B` of `Π*(ρ_{B,M}) ⊗ ρ_{B,M} ⊗ Ř_{B,M}`, tensored with `JL(M)`. It lacks, besides the
  carriers above, the blocks of the category of locally admissible representations, their
  projective envelopes, the full Weil–Deligne type rings `R_{B,M}` with their universal Galois
  families, and the interpolated Banach dual `Π*(ρ_{B,M})`.
* The realisation for every supercuspidal type in the p-central sector (README §3.3): the strong
  dual of the `M`-multiplicity of the functions on `M^p_n` is `Π_{M,ℒ}^an / π` for every line
  `ℒ`, and the de Rham multiplicity is `M_dR ⊗ π′` with the preimages of the lines the analytic
  duals. It lacks rigid analytic functions and de Rham cohomology of the tower, locally analytic
  representations and the analytic vectors of a Banach representation.
* The discharge of the global hypotheses of the base comparison (README §3.1). It lacks, besides
  the carriers above, completed cohomology of definite quaternion algebras and the
  Čerednik–Drinfeld uniformisation of Shimura curves.
* The topological irreducibility of `Π(π,0)` (README §2.3) and Colmez's weight change
  (README §2.4). They lack locally analytic representations of `GL₂(ℚ_p)` on spaces of compact
  type, the Robba ring with its `(φ,Γ)`-modules and the sheaf `Δ ⊠ ℙ¹(ℚ_p)`.
* The Iwasawa invariants of Drinfeld functions (README §7.4): `(O(Σ_r)^ρ)^{diag(p,1)=1}` is free
  of rank two over the distribution algebra `D(Γ)` and is the space of Iwasawa classes whose
  specialisations lie in the image of the Bloch–Kato exponential. It lacks rigid analytic
  functions on the tower, the distribution algebra of `ℤ_p^×` and Iwasawa cohomology of
  p-adic Galois representations with its Bloch–Kato exponential.
* The infinitely primitivable functions (README §7.5) lie in `H⁰_dR(Σ_n) · O(Ω)`. It lacks the
  Drinfeld half-plane and its coverings as rigid analytic spaces with their functions.
* The filtered derived realisation (README §7.6):
  `Hom((Π(V)^an)′, RΓ_dR(Σ_r)^ρ[1]) ≅ D_dR(V)` as filtered spaces. It lacks coadmissible modules
  over the distribution algebra of `GL₂(ℚ_p)` with their derived category, the de Rham complex of
  a rigid analytic space and the functor `D_dR` of a de Rham Galois representation.

The pinned Mathlib has the period rings `B_dR⁺` and `B_dR` of a perfectoid field and the
linear-algebra and locally convex carriers the README cites, but none of the carriers named
above; the pinned Tau Ceti has none of them either.
-/

namespace TauCetiRoadmap.PadicLocalLanglandsForGL2QpPartII

end TauCetiRoadmap.PadicLocalLanglandsForGL2QpPartII
