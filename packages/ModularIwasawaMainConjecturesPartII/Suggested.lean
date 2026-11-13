import Mathlib

/-!
# Main conjectures for modular forms and their families, part II: target signatures

The roadmap is `README.md`; this file is not the roadmap. It states, against the pinned Mathlib
and Tau Ceti, the headline theorems of the roadmap that are statable at the pins. None is, so
the file declares nothing. The headline theorems and the carrier each one lacks at the pins:

* Kato's main conjecture for every CM newform and every prime (Burungale–Tian, Theorem 2.6;
  README §8.6). It needs the `p`-adic Galois representation of a newform
  (`HeckeRing.GL2.Newform` carries no Galois representation at the pins), Kato's cyclotomic
  Iwasawa cohomology of `ℤ[ζ_{p^n}, 1/p]` with `j_*` coefficients, and Kato's zeta morphism
  and zeta submodule; none exists in Mathlib or Tau Ceti.
* The rational equivariant main conjecture over `ℤ_p[[Gal(K(p^∞f)/K)]] ⊗ ℚ`, with its Euler
  factors (Burungale–Tian, Theorem 2.1, corrected; README §6.2). The fields `K(p^n f)` exist at
  the pins (`TauCeti.ClassFieldTheory.rayClassField`, a number field, with the Artin isomorphism
  `TauCeti.ClassFieldTheory.rayClassArtinEquiv`), but the statement needs the norm-limit modules
  of their `p`-units and `p`-primary class groups over the whole tower with their action of the
  completed group algebra, and the elliptic units, which need CM elliptic curves over those
  fields with a torsion point of exact level, and Kato's theta functions; none exists in Mathlib
  or Tau Ceti.
* The generation of the CM ray-tower and cyclotomic Iwasawa cohomology by elliptic units at
  height zero (Kato, 15.15; README §7.8). It needs the ray-tower Iwasawa cohomology, the
  elliptic-unit element and Kato's comparison map, none of which exists at the pins.
* Johnson-Leung and Kings' main conjecture for every finite-order character at every prime
  (their Theorem 5.2; README §4.5). It needs arithmetic Iwasawa cohomology over the
  `ℤ_p²`-extension of `K`, Knudsen–Mumford determinants of perfect complexes over the
  two-variable Iwasawa algebra, and the elliptic-unit zeta element.
* Rubin's two-variable main conjecture and its all-prime classical form (Rubin 1991,
  Theorem 4.1; README §4.8). It needs the norm limits of local units, closed global and
  elliptic units and the `𝔭`-ramified Galois groups over abelian towers of `K`, which need
  the norm-limit constructions and elliptic units above.
* The Katz form of the main conjecture at a split prime, its one-variable specializations and
  its anticyclotomic `θ`-components (README §§5.3–5.4). They need Katz's two-variable measure and
  the two-variable Coleman map, neither of which exists at the pins, besides the modules above.
* The functional equation of the Katz `p`-adic `L`-function and the resulting equality of
  `λ`-invariants of the branches `θ` and `θ⁻¹ω` (Kriz, Theorem 27; README §5.5). Both are
  statements about the Katz measure itself, which is absent at the pins.
-/

namespace TauCetiRoadmap.ModularIwasawaMainConjecturesPartII

end TauCetiRoadmap.ModularIwasawaMainConjecturesPartII
