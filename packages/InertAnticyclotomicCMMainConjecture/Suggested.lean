import Mathlib

/-!
# Inert anticyclotomic CM main conjecture: target signatures

The roadmap is README.md; this file is not the roadmap. It is meant to state the roadmap's
headline theorems against the pinned Mathlib and Tau Ceti. None of them is statable at the pins,
so the file states nothing; the headline theorems and what each one lacks are listed below.

* Layer 4 (§4.6): the inert anticyclotomic CM main conjecture (BKO21 Theorem 6.1, over the
  coefficient ring R⟦Γ⁻⟧ for a Gross Q-curve over the Hilbert class field). Its statement needs
  the signed Selmer groups of the CM avatar over the anticyclotomic ℤ_p-tower, the Lubin–Tate
  formal module with its signed formal points and character logarithms, the anticyclotomic
  local-unit module with its Coates–Wiles derivatives and the primitive elliptic-unit class
  (which define Rubin's p-adic L-function), and Gross Q-curves with their p-adic avatars. The
  pins have Hecke characters, continuous cohomology, the completed group algebra and the
  characteristic ideal `TauCeti.Iwasawa.charIdeal`, but none of these other carriers; the pinned
  Selmer groups are the 2-descent groups `WeierstrassCurve.Affine.selmerGroup₂` and
  `WeierstrassCurve.Affine.selmerGroupA` and Mathlib's S-unit group
  `IsDedekindDomain.selmerGroup`, none of which is the p-primary Galois-cohomological Selmer
  carrier used here.
* Layer 4 (§4.2): torsion of the opposite signed Selmer dual and vanishing of the compact
  strict and opposite signed Selmer modules. It lacks the same signed Selmer carriers and the
  compact corestriction limits with their Cartier-dual local conditions.
* Layer 4 (§4.4): the opposite signed characteristic formula char(X_(−ε)) = char(H^ε/loc C).
  It lacks the signed Selmer carriers and the all-auxiliary elliptic-unit module; the
  characteristic ideal itself is the pinned `TauCeti.Iwasawa.charIdeal`.
* Layer 6 (§6.4): the finite-character CM rank bounds (BKO21 Theorem 6.2). It lacks the
  rational p-adic Selmer group of V_pE over the anticyclotomic layers, χ-isotypic parts of
  Mordell–Weil groups with CM coefficients, and Rubin's p-adic L-function, whose order of
  vanishing at χ is the bound.

The pinned carriers do not by themselves provide these arithmetic objects, and no abstract
module, assumed pairing or proposition-valued stand-in replaces them here.
-/

namespace TauCetiRoadmap.InertAnticyclotomicCMMainConjecture

end TauCetiRoadmap.InertAnticyclotomicCMMainConjecture
