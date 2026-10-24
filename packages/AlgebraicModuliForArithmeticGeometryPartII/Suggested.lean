import Mathlib
import TauCeti.AlgebraicGeometry.LineBundle.Degree
import TauCeti.AlgebraicGeometry.LineBundle.Pullback

/-!
# Algebraic moduli for arithmetic geometry, Part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs.

The numerical Néron–Severi and relative finiteness theorems lack the geometric
numerical quotient and its degree pairing. Murre–Oort representability and finite
type of the torsion component lack the fppf Picard sheaf and Picard group scheme.
The affinization Brauer obstruction lacks the scheme units sheaf on the fppf site
and its Leray comparison. The positive-power criterion lacks the numerical Picard local system.
The semiample contraction dictionary and numerical uniqueness lack relative
global generation, the section algebra and relative Proj. Projective contraction
descent under constant numerical classes also lacks that local system.
Openness of ampleness lacks algebraic spaces and relative ampleness.
The pure-curve graph criterion lacks the numerical local system; geometric
exceptional negativity and Zariski's lemma lack the geometric intersection
pairing, although their matrix inequalities are supplied by Tau Ceti.
Negative-curve, fibre-graph and label descent and rationality of reducible-fibre
image points lack that pairing, the numerical local system and the proper
Hilbert algebraic space. The ampleness assertion for complete-DVR lifts lacks relative ampleness.
Cone identification lacks geometric numerical spaces and cones. Nef-and-big
specialization lacks the relative projective-morphism and positivity interfaces. Semiample numerical descent and
Cascini–Tanaka vertical descent lack those predicates and the relative Cartier
pullback theory. Independence and transformation of AHK rank lack numerical
Picard rank, exceptional prime divisor data and resolution comparison.
These headlines have no substitute declarations here.
-/

namespace TauCetiRoadmap.AlgebraicModuliForArithmeticGeometryPartII

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits

universe u

/-! ## Layer 0: degrees and relative numerical triviality -/

/-- An invertible sheaf on a proper k-scheme is numerically trivial when its
restriction to every integral closed curve has Euler-characteristic degree zero
over k. Singular integral curves are included. -/
def NumericallyTrivial (k : Type u) [Field k] (X : Scheme.{u})
    (x : X ⟶ Spec (CommRingCat.of k)) [IsProper x]
    (L : TauCeti.AlgebraicGeometry.InvertibleSheaf X) : Prop :=
  ∀ (C : Scheme.{u}) (_ : IsIntegral C) (i : C ⟶ X) (_ : IsClosedImmersion i),
    topologicalKrullDim C = 1 →
      letI : C.Over (Spec (CommRingCat.of k)) := ⟨i ≫ x⟩
      (((TauCeti.AlgebraicGeometry.InvertibleSheaf.pullback i).obj L).eulerDegree k) = 0

/-! ## Layer 2: proper Picard schemes and the numerical local system -/

/-- On a proper scheme over an algebraic extension of a finite field, every
numerically trivial invertible sheaf has finite order in the Picard group.
No reducedness, projectivity or geometric integrality is assumed.
Keel, Lemma 2.16, extended from projective to proper schemes by the proper
finite-type numerical Picard component. -/
theorem numericallyTrivial_torsion_of_algebraic_finiteField
    (p : ℕ) [Fact p.Prime] (k : Type u) [Field k]
    [Algebra (ZMod p) k] [Algebra.IsAlgebraic (ZMod p) k]
    (X : Scheme.{u}) (x : X ⟶ Spec (CommRingCat.of k)) [IsProper x]
    (L : TauCeti.AlgebraicGeometry.InvertibleSheaf X)
    (hL : NumericallyTrivial k X x L) :
    ∃ n : ℕ, 0 < n ∧ TauCeti.AlgebraicGeometry.LineBundleClass.mk L ^ n = 1 := by
  sorry

/-! ## Layer 3: contractions, semiampleness and descent -/

/-- A contraction is proper, and its canonical structure-sheaf map is an
isomorphism: on every open of the target the induced map on sections is an
isomorphism. -/
def IsContraction {X Y : Scheme.{u}} (f : X ⟶ Y) : Prop :=
  IsProper f ∧ ∀ U : Y.Opens, IsIso (f.app U)

/-- Every proper contraction after a purely inseparable field extension descends
to a proper contraction over the original field. The target square is cartesian
and the source square commutes under the prescribed identification of the source
with its base change. No projectivity or numerical constancy is assumed.
Schröer, proof of Theorem 1.3 and the following remark, pp. 7–8. -/
theorem contraction_descends_purelyInseparable
    (k K : Type u) [Field k] [Field K] [Algebra k K]
    [IsPurelyInseparable k K]
    (X : Scheme.{u}) (x : X ⟶ Spec (CommRingCat.of k)) [IsProper x]
    (Y' : Scheme.{u}) (y' : Y' ⟶ Spec (CommRingCat.of K)) [IsProper y']
    (f' : pullback x (Spec.map (CommRingCat.ofHom (algebraMap k K))) ⟶ Y')
    (hf' : IsContraction f')
    (hover : f' ≫ y' = pullback.snd x
      (Spec.map (CommRingCat.ofHom (algebraMap k K)))) :
    ∃ (Y : Scheme.{u}) (y : Y ⟶ Spec (CommRingCat.of k))
      (f : X ⟶ Y) (v : Y' ⟶ Y),
      IsProper y ∧ IsContraction f ∧ f ≫ y = x ∧
      IsPullback v y' y (Spec.map (CommRingCat.ofHom (algebraMap k K))) ∧
      f' ≫ v = pullback.fst x (Spec.map (CommRingCat.ofHom (algebraMap k K))) ≫ f := by
  sorry

/-! ## Layer 5: numerical theory in families and descent along contractions -/

/-- If a proper flat scheme over a complete DVR has H²(O)=0 on its special
fibre, every invertible sheaf on that fibre is the restriction of an invertible
sheaf on the total scheme. Completeness is adic completeness for the maximal
ideal. The special fibre is the native pullback along the residue-field map.
Hacon–Witaszek, Lemma 6.3, with the same obstruction/existence argument in all
characteristics. -/
theorem lineBundle_lifts_completeDVR_of_h2_zero
    (R : Type u) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    [IsAdicComplete (IsLocalRing.maximalIdeal R) R]
    (X : Scheme.{u}) (x : X ⟶ Spec (CommRingCat.of R)) [IsProper x] [Flat x]
    (h2 : Subsingleton (TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology
      (TauCeti.AlgebraicGeometry.InvertibleSheaf.trivial
        (pullback x (Spec.map (CommRingCat.ofHom (IsLocalRing.residue R))))).obj 2))
    (L : TauCeti.AlgebraicGeometry.InvertibleSheaf
      (pullback x (Spec.map (CommRingCat.ofHom (IsLocalRing.residue R))))) :
    ∃ M : TauCeti.AlgebraicGeometry.InvertibleSheaf X,
      Nonempty (((TauCeti.AlgebraicGeometry.InvertibleSheaf.pullback
        (pullback.fst x (Spec.map (CommRingCat.ofHom (IsLocalRing.residue R))))).obj M).obj
        ≅ L.obj) := by
  sorry

end TauCetiRoadmap.AlgebraicModuliForArithmeticGeometryPartII
