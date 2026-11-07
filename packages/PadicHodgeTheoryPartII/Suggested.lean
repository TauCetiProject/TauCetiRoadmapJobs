import Mathlib

/-!
# p-adic Hodge theory, Part II: generic crystalline monodromy: target signatures

The roadmap is `README.md`; this file is not the roadmap. It states the roadmap's headline
theorems against the pinned Mathlib and Tau Ceti, and none of them is statable at the pins, so
the file states nothing. For each headline, the missing carriers are:

* Generic admissibility (README §2.3; Gleason–Lim–Xu, Theorem 5.8(1)): for a connected
  reductive group `G` over `ℚ_p`, a decent `b ∈ G(Q̆_p)` with `[b] ∈ B(G, μ)` and a generic point
  `η` of the flag variety `Fl_μ` over a finite extension `K` of `Q̆_p`, every filtered isocrystal
  `(V ⊗ Q̆_p, ρ(b)σ, Fil_η)` is weakly admissible. Missing: reductive groups over `ℚ_p` with
  their representation categories and Galois-orbit invariants `B(G, μ)`, the flag variety
  `Fl_μ` as a scheme with its generic point, and filtered isocrystals over finite extensions of
  `Q̆_p` with their Hodge and Newton numbers (Mathlib's `WittVector.Isocrystal` has neither
  filtrations nor a Newton degree of a semilinear map).
* Generic derived monodromy (README §2.4; Gleason–Lim–Xu, Theorem 5.8(2)): if moreover `(b, μ)`
  is Hodge–Newton irreducible, the identity component of the Zariski closure of the image of
  the attached crystalline representation `Γ_K → G(ℚ_p)` contains `G_der`. Missing, in addition:
  crystalline representations with `G`-structure, the Colmez–Fontaine equivalence and the
  crystalline period comparison over `B_cris`.
* The crystalline period point with open derived image (README §3.2; Gleason–Lim–Xu,
  Proposition 5.9): some point of the admissible locus `Gr^b_μ` over a finite extension of
  `Q̆_p` has crystalline representation whose image meets `G_der(ℚ_p)` in an open subgroup.
  Missing, in addition: the `B_dR`-affine Grassmannian (Mathlib has the ring `BDeRhamPlus` but
  no Grassmannian over it), its admissible locus and its classical points, and the `p`-adic
  topology on `G(ℚ_p)` for an algebraic group `G` over `ℚ_p`.
* The z-extension comparison (README §3.5): such points exist for `(G, b, μ)` iff they exist for
  a lift `(G̃, b̃, μ̃)` along a z-extension `G̃ → G`. Missing: the carriers of README §3.2 for both
  groups, z-extensions and the lifting of `B(G, μ)`.
* Stabilizers of components of compact-image period torsors (README §§4.1–4.2; Gleason–Lim–Xu,
  Lemma 6.12): the connected components of the period torsor `T_ξ → Spd K` of a continuous
  `ξ : Γ_K → G(ℚ_p)` are indexed by `G(ℚ_p)/ξ(Γ_K)`, with stabilizers the conjugates of
  `ξ(Γ_K)`, and their images in an equivariant target have stabilizers with open derived part.
  Missing: diamonds, the diamond `Spd K` and locally profinite torsors over it.
-/

namespace TauCetiRoadmap.PadicHodgeTheoryPartII

end TauCetiRoadmap.PadicHodgeTheoryPartII
