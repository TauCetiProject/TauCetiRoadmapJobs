import Mathlib

/-!
# Global Galois deformations, part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs.

The infinite-family theorem of Layer 8 is statable on native representations and
native degree-one group cohomology. Its short exact sequence predicate records
actual extensions, including their extension classes.

The following headline theorems are not statable at the pins:
* Controlled G-valued finite-level towers: the fixed-quotient arithmetic lifting
  datum, its local lifting conditions and the derived congruence image interface
  are missing.
* Finite-prime annihilation of relative Selmer images: the arithmetic finite
  adjoint coefficient systems, Selmer kernels and root local conditions are missing.
* Finitely ramified geometric lifts with prescribed components and approximation,
  the sl2 refinement and nongeometric lifts: the G-valued deformation spaces,
  their local components and regular de Rham conditions are missing.
* Derived-dense lifts of Levi-valued residual representations: the arithmetic
  reductive-group lifting datum and its integral lattice comparison are missing.
* Actual reducible modularity at every weight and prime-to-p level at Serre weight:
  newform Galois attachments, their stable integral lattices and the
  extension-sensitive local Serre weight interface are missing.
* The stable-lattice segment and fixed-weight-level finiteness: the arithmetic
  action on the lattice tree and the newform attachment interface are missing.
* Actual function-field automorphy, including the block applications: the global
  function-field automorphic representation and Lafforgue attachment carriers
  with their integral lattices are missing.
* Ordinary symplectic lifts at two Steinberg places and their ANT automorphy
  application: the ordinary local deformation and automorphic attachment
  interfaces are missing.
* The strictly pure symplectic compatible-system consequence: the compatible
  system, strict purity and all-coefficient monodromy comparison interfaces are
  missing. Their general construction belongs to the named suppliers in README.md.
-/

namespace TauCetiRoadmap.GlobalGaloisDeformationsPartII

universe u

/-! ## Layer 8: actual reductions of modular forms -/

/-- An actual extension of the line representation `τ` by the line representation
`σ` is a short exact sequence with the given two-dimensional middle representation.
The injection and quotient are equivariant maps, rather than trace identities. -/
def IsCharacterExtension {L Γ : Type u} [Field L] [Group Γ]
    (σ τ : Representation L Γ L) (ρ : Representation L Γ (L × L)) : Prop :=
  ∃ (i : Representation.IntertwiningMap σ ρ)
    (q : Representation.IntertwiningMap ρ τ),
    Function.Injective i ∧ Function.Surjective q ∧
      LinearMap.range i.toLinearMap = LinearMap.ker q.toLinearMap

/-- If a line representation of a finite group, or its dual, has degree-one
cohomology of dimension greater than one over an infinite field, there is a
field-indexed family of pairwise inequivalent actual two-dimensional extensions
with constituents the trivial line and that line. This is FKP22, Lemma 7.6,
arXiv v5, pp.36–37. -/
theorem infinitely_many_actual_extensions
    (L Γ : Type u) [Field L] [Infinite L] [Group Γ] [Finite Γ]
    (χ : Representation L Γ L)
    (h : 1 < Module.finrank L (groupCohomology.H1 (Rep.of χ)) ∨
      1 < Module.finrank L (groupCohomology.H1 (Rep.of χ.dual))) :
    ∃ ρ : L → Representation L Γ (L × L),
      (∀ a, IsCharacterExtension χ (Representation.trivial L Γ L) (ρ a) ∨
        IsCharacterExtension (Representation.trivial L Γ L) χ (ρ a)) ∧
      ∀ a b, a ≠ b → IsEmpty (Representation.Equiv (ρ a) (ρ b)) := by
  sorry

end TauCetiRoadmap.GlobalGaloisDeformationsPartII
