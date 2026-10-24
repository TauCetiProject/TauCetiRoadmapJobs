import Mathlib

/-!
# Nonregular symplectic modularity lifting: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs whenever their carriers can be expressed
with a few elementary definitions on native objects.

The following headlines are not statable at the pins:
* Integral normalized Siegel p-actions (NR1.1), secondary Hasse geometry
  (NR3.1a), and corrected scalar/vector theta and injectivity (NR4.2) lack
  integral genus-two moduli, automorphic coefficients and differential operators.
* All-degree coherent interpolation and qualified crystalline specialization
  (NR2.3–4) lack Siegel coherent eigensystems and crystalline-period functors.
* Ordinary weight-two symplectic interpolation, its pure monodromy upgrade,
  dual-spin overconvergent interpolation and completed isotypy (NR2.5–8) lack
  automorphic local parameters, reductive pseudocharacters and higher-Coleman
  completed eigenspaces.
* Regular Hecke-valued representations (NR3.4), the two cuspidal Hasse-projection
  injections (NR4.8), and the singular minimal deformation (NR5.2) lack actual
  integral coherent Hecke images, geometric Hasse maps and local deformation data.
* Finite-coefficient Klingen comparison (NR6.4) lacks compactified Klingen covers,
  automorphic coefficients and their pullback/trace maps.
* Selected balance (NR7.4), minimal R=T with positive cuspidal freeness (NR8.2–3),
  and classical CG modularity (NR8.5) lack the selected coherent module, its
  integral p-idempotent, the universal symplectic deformation ring and Siegel forms.
* Variable-weight ordinary R=T and control (NR9.2), ordinary p-adic modularity
  (NR9.3), and parallel parabolic lifting (NR9.4) lack Siegel Hida families and
  their universal ordinary deformation rings.
* Regular ordinary unitary finiteness and symplectic component support
  (NR11.0a–NR11.0b) lack ordinary polarized deformation rings, Hilbert–Siegel
  and unitary Hida modules, and their component Hecke quotients.
* Characteristic-zero local freeness (NR10.8), regular-point multiplicity one
  (NR11.3), component support and four-chamber rank one (NR11.4–5), and classical
  weight-two modularity lifting (NR11.6) lack the actual four higher-Hida modules,
  their arithmetic specialization, Hecke support and higher-Coleman comparison.

NR10.5 is stated below on native four-dimensional matrix representations.
The residual matrix-span hypothesis is the absolute-irreducibility criterion:
its generated residue-field algebra is the entire matrix algebra.
-/

namespace TauCetiRoadmap.GSp4NonregularModularityLifting

/-! ## Layer NR10: Characteristic-zero higher-Hida patching -/

/-- The alternating form pairing the first coordinate with the fourth and the
second with the third, over any commutative ring, including characteristic two. -/
def standardAlternatingMatrix (A : Type*) [CommRing A] : Matrix (Fin 4) (Fin 4) A :=
  !![0, 0, 0, 1; 0, 0, 1, 0; 0, -1, 0, 0; -1, 0, 0, 0]

/-- A matrix representation has the specified full unit-valued multiplier when
its pullback of the standard alternating form is that scalar multiple. -/
def HasPrescribedMultiplier {Γ A : Type*} [Group Γ] [CommRing A]
    (ρ : Γ →* Matrix (Fin 4) (Fin 4) A) (ν : Γ →* Aˣ) : Prop :=
  ∀ g, (ρ g).transpose * standardAlternatingMatrix A * ρ g =
    (ν g : A) • standardAlternatingMatrix A

/-- Symplectic coefficient descent with prescribed multiplier, in every residue
characteristic (BCGP25, Lemma 7.4.8). For an injective local inclusion of complete
Noetherian local rings with common residue field, a continuous residually absolutely
irreducible rank-four representation with descended traces and multiplier has a
near-identity symplectic similitude conjugate over the smaller ring. -/
theorem symplecticCoefficientDescent
    (S R k Γ : Type*)
    [CommRing S] [IsLocalRing S] [IsNoetherianRing S]
    [CommRing R] [IsLocalRing R] [IsNoetherianRing R] [Field k]
    [IsAdicComplete (IsLocalRing.maximalIdeal S) S]
    [IsAdicComplete (IsLocalRing.maximalIdeal R) R]
    [TopologicalSpace S] [IsTopologicalRing S]
    [TopologicalSpace R] [IsTopologicalRing R]
    [Group Γ] [TopologicalSpace Γ] [IsTopologicalGroup Γ]
    [CompactSpace Γ] [T2Space Γ] [TotallyDisconnectedSpace Γ]
    (ι : S →+* R) (hι : Function.Injective ι)
    (s : S →+* k) (r : R →+* k)
    (hs : Function.Surjective s) (hr : Function.Surjective r)
    (hsker : RingHom.ker s = IsLocalRing.maximalIdeal S)
    (hrker : RingHom.ker r = IsLocalRing.maximalIdeal R)
    (hres : r.comp ι = s)
    (hS : IsAdic (IsLocalRing.maximalIdeal S))
    (hR : IsAdic (IsLocalRing.maximalIdeal R))
    (ρ : Γ →* Matrix (Fin 4) (Fin 4) R) (hρ : Continuous ρ)
    (ν : Γ →* Sˣ)
    (hmult : HasPrescribedMultiplier ρ ((Units.map ι.toMonoidHom).comp ν))
    (habs : Algebra.adjoin k (Set.range (fun g => (ρ g).map r)) = ⊤)
    (htr : ∀ g, Matrix.trace (ρ g) ∈ Set.range ι) :
    ∃ C : Matrix.GeneralLinearGroup (Fin 4) R,
      (C.val.map r = 1) ∧
      (∃ c : Rˣ, C.val.transpose * standardAlternatingMatrix R * C.val =
        (c : R) • standardAlternatingMatrix R) ∧
      ∃ ρS : Γ →* Matrix (Fin 4) (Fin 4) S,
        Continuous ρS ∧ HasPrescribedMultiplier ρS ν ∧
        ∀ g, (ρS g).map ι = C.val * ρ g * (↑C⁻¹ : Matrix (Fin 4) (Fin 4) R) := by
  sorry

end TauCetiRoadmap.GSp4NonregularModularityLifting
