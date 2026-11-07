import Mathlib

/-!
# Shimura varieties, Part II: target signatures

The roadmap is `README.md` in this folder; this file is not the roadmap. It states the
roadmap's headline theorems against the pinned Mathlib and Tau Ceti, each with `sorry`, where
the objects of the statement exist at the pins.

No headline theorem of this roadmap is statable at the pins, so the file states none. Each
headline, with the carrier its statement lacks:

* Common rational Frobenius class (Kisin–Zhou, Theorem 5.1.4; README §7.6): for a strongly
  acceptable triple `(G, X, G°)`, `p > 2` and a point `y` of the integral model over `𝔽_q`, there
  is a unique point of `Conj(G)(ℚ)` whose image in `Conj(G)(ℚ_ℓ)` is the geometric `q`-Frobenius
  class of the `G(ℚ_ℓ)`-local system at `y`, for every `ℓ ≠ p`. Lacks integral models of Shimura
  varieties and their special fibres, the group-valued tower local systems, and the conjugacy
  quotient of a reductive group: Tau Ceti has reductive groups over a field as finite-type
  commutative Hopf algebras (`TauCeti.reductiveCommHopfAlgProperty`), but no conjugation
  coaction, invariant subalgebra or quotient map `χ_G`.
* Integral models of abelian type (Kisin–Pappas–Zhou, Theorem 7.2.21; README §3.8): lacks
  Shimura data of abelian type, Bruhat–Tits parahoric group schemes, integral Shimura models and
  local models.
* Ordinary special lifts with the isogeny action (Kisin–Zhou, Theorem 4.4.6; README §5.9): lacks
  integral Shimura models, their `μ`-ordinary locus and the tensor-preserving quasi-isogeny group
  of a point.
* Rational Frobenius at an ordinary point (Kisin–Zhou, Corollary 4.4.13; README §5.10): lacks the
  ordinary locus of an integral Shimura model and the `ℓ`-adic realizations of its points.
* Tate comparison for tensor quasi-isogeny groups (Kisin–Madapusi Pera–Shin, Corollary 2.1.9;
  README §4.13): lacks the canonical Hodge tensors of a Shimura model, the group `I_x` and the
  finite-period crystalline centralizer it is compared with.
* Density of the ordinary locus (Kisin–Madapusi Pera–Shin, Corollary 1.3.16, with the existence
  of the ordinary class; README §4.7): lacks `B(G)`, the universal `G`-isocrystal on a Shimura
  special fibre and its Newton strata.
* Curves over the original residue field (Kisin–Zhou, Corollary 5.2.7; README §6.3): lacks
  integral Shimura models and their Kottwitz–Rapoport strata.
-/

namespace TauCetiRoadmap.ShimuraVarietiesPartII

end TauCetiRoadmap.ShimuraVarietiesPartII
