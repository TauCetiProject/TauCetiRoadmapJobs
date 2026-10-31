import Mathlib

/-!
# Gross–Zagier formulas and arithmetic heights, Part II: target signatures

The roadmap is `README.md`; this file is not the roadmap. It is the roadmap's acceptance test:
it states, against the pinned Mathlib and Tau Ceti, those headline theorems of the roadmap that
are statable there, each with `sorry`, together with the few definitions they need.

The headline theorems are:

* the unramified Kudla–Rapoport identity `Int(L) = ∂Den(L)` for full-rank lattices in the
  nonsplit unramified special Hom space (Li–Zhang, Theorem 3.4.1; README §3.5);
* the almost self-dual identity `(q+1)·Int_Y(L) = ∂Den_Λ(L) − Den(L)` (Li–Zhang, Theorem 10.5.1,
  with Li–Rapoport–Zhang, Theorem 14.6.2; README §4.5);
* the exotic smooth Kudla–Rapoport identity in even rank (Li–Liu II, Theorem 2.7; README §6.8);
* the Kudla–Rapoport identity for Krämer models (He–Li–Shi–Yang, Theorem 1.3; README §8.7);
* the unramified and the modified arithmetic Siegel–Weil formulas (Li–Zhang, Theorem 15.5.1;
  He–Li–Shi–Yang, Theorems 10.1–10.2; README §§13.8, 13.10);
* the modularity of the CM intersection series over `ℚ` (Zhang, §9.1 and Corollary 10.4;
  README §12.7);
* the arithmetic fundamental lemma for strongly regular semisimple elements over `ℚ_p` with
  `p ≥ n` (Zhang, Theorem 15.1; README §14.6).

None of them is statable at the pins, so this file states no theorem:

* the four local identities need unitary Rapoport–Zink spaces, which are formal schemes over
  `Spf O_F̆`, their special cycles and the derived Euler characteristic of coherent sheaves on
  formal schemes; neither pinned library has formal schemes. Their analytic sides need hermitian
  local representation densities over local fields, unramified and ramified, which are not at the
  pins either (Mathlib's `IsNonarchimedeanLocalField` supplies no quadratic extension, hermitian
  form or density);
* the arithmetic Siegel–Weil formulas need integral models of unitary Shimura varieties, their
  arithmetic degrees with Green currents, and the derivatives of Siegel Eisenstein series on
  `U(n,n)`; none of these is at the pins;
* the modularity of the CM intersection series needs arithmetic Chow groups of these integral
  models and derived CM cycles;
* the arithmetic fundamental lemma needs the intersection numbers of graphs on products of
  Rapoport–Zink spaces and the Jacquet–Rallis orbital integrals on `S_n` with their transfer
  factors; neither is at the pins.

No weakened substitute, bounded stand-in or data definition is stated in their place.
-/

namespace TauCetiRoadmap.GrossZagierAndArithmeticHeightsPartII

end TauCetiRoadmap.GrossZagierAndArithmeticHeightsPartII
