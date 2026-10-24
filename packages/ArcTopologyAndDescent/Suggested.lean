import Mathlib
import TauCeti.RingTheory.MvPowerSeries.TateAlgebra.Basic

/-!
# Arc topology and descent: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs. Its real-bodied predicates only express
valuation lifting, finite Tate presentations and coefficient torsion on native
carriers; they do not construct replacement sites, topoi or cohomology theories.

The following headline theorems are not statable at the pins:
* The finitary arc-descent/excision/aic-excision equivalence and rank-one detection
  lack coherent infinity-categories, cotruncated mapping spaces, the scheme v/arc
  sheaf categories and coherent augmented totalizations.
* Unrestricted Milnor excision and formal glueing lack the coherent arc-topos,
  sheafified representable pushouts and small-limit-valued sheaf carriers.
* Arc-descent of separated etale objects and constructible finite-set sheaves
  lacks the general constructible-sheaf category and its categorical descent functor.
* Characteristic-zero h-differential and h-de Rham arc-descent lacks the h-form
  cohomology functor, its coherent finitary extension and filtered enhancement.
* Perfect-complex arc-hyperdescent and the universally effective epimorphism
  criterion lack the coherent symmetric monoidal Perf functor, scheme perfection
  and the general algebraic-space reconstruction interface.
* Arbitrary-parameter completed-generic-fibre hyperdescent and its Kunneth theorem
  lack coherent derived etale sections on the complete sites and the compatible
  monoidal totalization/completed-tensor functors.
* Finite-ideal complete-arc hyperdescent lacks the complete-arc site and the
  completed/punctured etale derived-sections functors on it.
* Integral perfectoid, tilt and A_inf hyperdescent lacks the integral perfectoid
  category with complete-arc hypercovers and its coherent derived section maps.

The torsion/constructible arc-descent and perfectoid-basis/structure-sheaf results
of PrismaticCohomology section 2.0 are supplier inputs, not additional targets here.
-/

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry Opposite
open scoped TensorProduct

universe u

namespace TauCetiRoadmap.ArcTopologyAndDescent

/-! ## Layer 2: Arc-covers and spectral submersions -/

/-- The affine rank-at-most-one valuative lifting predicate on a ring map. -/
def IsRingArcCover {A B : Type u} [CommRing A] [CommRing B] (f : A →+* B) : Prop :=
  ∀ (V : Type u) [CommRing V] [IsDomain V] [ValuationRing V] [Ring.KrullDimLE 1 V]
    (a : A →+* V),
    ∃ (W : Type u) (_ : CommRing W) (_ : IsDomain W) (_ : ValuationRing W)
      (_ : Ring.KrullDimLE 1 W) (e : V →+* W) (b : B →+* W),
      Function.Injective e ∧ IsLocalHom e ∧ b.comp f = e.comp a

/-- Universal injectivity after each rank-at-most-one valuation base change is equivalent to arc covering (BM21 Proposition 2.11). -/
theorem arc_affine_purity (A B : Type u) [CommRing A] [CommRing B] [Algebra A B] :
    IsRingArcCover (algebraMap A B) ↔
      ∀ (V : Type u) [CommRing V] [IsDomain V] [ValuationRing V]
        [Ring.KrullDimLE 1 V] [Algebra A V],
        ∀ (M : Type u) [AddCommGroup M] [Module V M],
          Function.Injective (fun m : M => m ⊗ₜ[V] (1 : V ⊗[A] B)) := by
  sorry

/-- The rank-at-most-one valuative lifting predicate on a scheme morphism. -/
def IsSchemeArcCover {X Y : Scheme.{u}} (f : Y ⟶ X) : Prop :=
  ∀ (V : Type u) [CommRing V] [IsDomain V] [ValuationRing V] [Ring.KrullDimLE 1 V]
    (a : Spec (CommRingCat.of V) ⟶ X),
    ∃ (W : Type u) (_ : CommRing W) (_ : IsDomain W) (_ : ValuationRing W)
      (_ : Ring.KrullDimLE 1 W) (e : V →+* W) (b : Spec (CommRingCat.of W) ⟶ Y),
      Function.Injective e ∧ IsLocalHom e ∧
        b ≫ f = Spec.map (CommRingCat.ofHom e) ≫ a

/-- A qcqs scheme map is an arc-cover precisely when all qcqs base changes reflect compact openness (BM21 Proposition 2.19). -/
theorem arc_spectral_characterization (X Y : Scheme.{u})
    [CompactSpace X] [QuasiSeparatedSpace X] [CompactSpace Y] [QuasiSeparatedSpace Y]
    (f : Y ⟶ X) [QuasiCompact f] [QuasiSeparated f] :
    IsSchemeArcCover f ↔
      ∀ (T : Scheme.{u}) [CompactSpace T] [QuasiSeparatedSpace T] (g : T ⟶ X),
        Function.Surjective (pullback.snd f g) ∧
          ∀ U : Set T,
            IsOpen ((pullback.snd f g) ⁻¹' U) →
            IsCompact ((pullback.snd f g) ⁻¹' U) → IsOpen U := by
  sorry

/-! ## Layer 10: Kunneth and affinoid vanishing -/

/-- The underlying algebra of a strict affinoid algebra has a finite Tate presentation. -/
def HasAffinoidPresentation (K A : Type u) [NontriviallyNormedField K]
    [IsUltrametricDist K] [CommRing A] [Algebra K A] : Prop :=
  ∃ n : ℕ, ∃ f : MvPowerSeries.IsRestricted.subring (R := K) (fun _ : Fin n => (1 : ℝ)) →ₐ[K] A,
    Function.Surjective f

/-- Torsion is tested on the affine basis of the small étale site. -/
def IsTorsionEtaleSheaf (X : Scheme.{u})
    (F : Sheaf X.smallEtaleTopology AddCommGrpCat.{u}) : Prop :=
  ∀ U : X.AffineEtale, ∀ x : F.obj.obj (op ((Scheme.AffineEtale.Spec X).obj U)),
    ∃ n : ℕ, 0 < n ∧ n • x = 0

/-- Prime-power torsion is tested on the same affine basis. -/
def IsPrimePowerTorsionEtaleSheaf (X : Scheme.{u})
    (F : Sheaf X.smallEtaleTopology AddCommGrpCat.{u}) (ℓ : ℕ) : Prop :=
  ∀ U : X.AffineEtale, ∀ x : F.obj.obj (op ((Scheme.AffineEtale.Spec X).obj U)),
    ∃ n : ℕ, ℓ ^ n • x = 0

/-- Arbitrary torsion étale cohomology of a d-dimensional affinoid vanishes above d+1 (BM21 Theorem 7.3(1)). -/
theorem affinoid_artin_grothendieck (K A : Type u) [NontriviallyNormedField K]
    [IsUltrametricDist K] [CompleteSpace K] [IsAlgClosed K]
    [CommRing A] [Algebra K A] (hA : HasAffinoidPresentation K A)
    (d : ℕ) [Ring.KrullDimLE d A]
    (F : Sheaf (Spec (CommRingCat.of A)).smallEtaleTopology AddCommGrpCat.{u})
    (hF : IsTorsionEtaleSheaf _ F) (q : ℕ) (hq : d + 1 < q) :
    Subsingleton (F.H q) := by
  sorry

/-- Residue-invertible prime-power torsion vanishes above d (BM21 Theorem 7.3(2)). -/
theorem affinoid_artin_grothendieck_prime_to_residue (K A : Type u)
    [NontriviallyNormedField K] [IsUltrametricDist K] [CompleteSpace K] [IsAlgClosed K]
    [CommRing A] [Algebra K A] (hA : HasAffinoidPresentation K A)
    (d : ℕ) [Ring.KrullDimLE d A] (ℓ : ℕ) [Fact ℓ.Prime] (hℓ : ‖(ℓ : K)‖ = 1)
    (F : Sheaf (Spec (CommRingCat.of A)).smallEtaleTopology AddCommGrpCat.{u})
    (hF : IsPrimePowerTorsionEtaleSheaf _ F ℓ) (q : ℕ) (hq : d < q) :
    Subsingleton (F.H q) := by
  sorry

end TauCetiRoadmap.ArcTopologyAndDescent
