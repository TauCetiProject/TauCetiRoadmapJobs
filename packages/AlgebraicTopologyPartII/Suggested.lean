import Mathlib
import TauCeti.Topology.WedgeSum
import TauCeti.AlgebraicTopology.Cohomology.Basic

/-!
# Algebraic topology, Part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's headline
theorems against the pinned APIs.

Not statable at the pins:
* Arrangement purity, the twisted configuration trace formula, configuration multiplicities
  and the stable diagonal lack the étale/compact-support configuration cohomology representation
  and its coefficient comparison.
* The finite-join bouquet and the homeomorphism of the Pham skeleton with that join lack
  the topological finite-join carrier (the combinatorial simplicial join is a different carrier).
* The tame-fibre bouquet with its total Milnor number lacks the local Milnor-number carrier;
  Hilton's full basic-product decomposition lacks the basic Whitehead-product maps and indexing.
* The general rational double-loop algebra lacks the graded cup-product/minimal-model comparison.
  The numerical bouquet Betti theorem below uses the existing singular cohomology carrier.
* Both support splittings, low-coordinate surjectivity, complement duality,
  corrected-localization self-duality, affine/Lefschetz and
  near-top cup-omega theorems lack the arbitrary-real-closed semialgebraic site, derived equivariant
  supports and their purity/trace maps.
* The all-degree semialgebraic Wu theorem and gamma/Stiefel--Whitney comparison lack supported
  cohomology operations and the characteristic-class carrier. Transverse surface representatives
  lack the class map from an embedded circle to the specified singular homology group.
* The real-empty quartic rank lacks the real-variety equivariant Betti carrier.
* The ramified double-cover triangle, corrected trace-quotient lift, circle obstruction and
  common-lift chase lack the equivariant sheaf cokernel, trace and derived comparison maps.
* Equivariant Ehresmann lacks the suppliers' regular-level smooth-fibre carrier and its smooth
  local trivialization data; stratified pair transport lacks invariant control-data interfaces; the finite-index image lacks the
  equivariant topological cohomology comparison map.

Finite coefficient products in the Betti theorem are the exact coefficients of the locally
finite infinite product: for n >= 4 a factor with index r > j cannot affect degree j.
-/

noncomputable section

namespace TauCetiRoadmap.AlgebraicTopologyPartII

open scoped TensorProduct Topology.Homotopy

/-! ## Layer 3: Euler exponents and stable configuration diagonals -/

/-- The signed integral Möbius exponent, for positive r; at r = 0 it is assigned zero.
Its agreement with the integral Euler factorization is a README target (BS equation (7.2)). -/
def eulerExponent (n N r : ℕ) : ℤ :=
  -(∑ d ∈ r.divisors, ArithmeticFunction.moebius d *
    (((-1 : ℤ) ^ n * (N : ℤ)) ^ (r / d))) / (r : ℤ)

/-! ## Layer 4: tame bouquets and rational homotopy -/

/-- The unit s-sphere in real Euclidean space of dimension s + 1. -/
abbrev unitSphere (s : ℕ) :=
  ↥(Metric.sphere (0 : EuclideanSpace ℝ (Fin (s + 1))) 1)

/-- A bouquet of N copies of the unit s-sphere, with the specified point as each wedge point. -/
abbrev sphereBouquet (s N : ℕ) (x : unitSphere s) :=
  TauCeti.WedgeSum (fun _ : Fin N => x)

/-- Serre's rational sphere ranks: the fundamental degree, and the additional degree
2s - 1 for even s, are precisely the nonzero rational homotopy degrees, for s >= 2. -/
theorem rationalSphereRanks (s k : ℕ) (x : unitSphere (s + 2)) :
    let P := ℚ ⊗[ℤ] Additive (HomotopyGroup (Fin (k + 2)) (unitSphere (s + 2)) x)
    FiniteDimensional ℚ P ∧ Module.finrank ℚ P =
      if k + 2 = s + 2 ∨ (Even (s + 2) ∧ k + 2 = 2 * (s + 2) - 1)
      then 1 else 0 := by
  sorry

/-- Hilton and Serre give all rational ranks of a finite bouquet of spheres of dimension
s + 2. The rank is zero off the indicated divisibility progression (BS Lemma 7.6). -/
theorem rationalBouquetRanks (s N k : ℕ) (x : unitSphere (s + 2))
    (Y : Type) [TopologicalSpace Y] (y : Y)
    (hY : Nonempty (ContinuousMap.HomotopyEquiv Y (sphereBouquet (s + 2) N x))) :
    let P := ℚ ⊗[ℤ] Additive (HomotopyGroup (Fin (k + 2)) Y y)
    FiniteDimensional ℚ P ∧ Module.finrank ℚ P =
      if s + 1 ∣ k + 1 then
        (((-1 : ℤ) ^ k * eulerExponent (s + 3) N ((k + 1) / (s + 1))).toNat)
      else 0 := by
  sorry

/-! ## Layer 5: double loops and Fermat connectivity -/

/-- The formal factor (1 - (-t)^(r*(n-2)-1))^(-e_r), with the signed exponent
interpreted by the integral binomial series. Only positive degrees enter the headline theorem. -/
def doubleLoopFactor (n N r : ℕ) (_hn : 4 ≤ n) (_hr : 0 < r) : PowerSeries ℚ :=
  PowerSeries.subst
    (PowerSeries.C ((-1 : ℚ) ^ (r * (n - 2))) *
      PowerSeries.X ^ (r * (n - 2) - 1))
    (PowerSeries.binomialSeries ℚ (-eulerExponent n N r))

/-- The full double-loop Betti product for a finite sphere bouquet, in dimensions n >= 4.
Finite dimensionality is included, so finrank cannot hide an infinite-dimensional group.
The coefficient is taken from exactly the factors that can contribute (corrected BS Lemma 7.6). -/
theorem doubleLoopBetti (s N j : ℕ) (x : unitSphere (s + 3))
    (Y : Type) [TopologicalSpace Y] (y : Y)
    (hY : Nonempty (ContinuousMap.HomotopyEquiv Y (sphereBouquet (s + 3) N x))) :
    let H := (TopCat.of (Ω^ (Fin 2) Y y)).singularCohomology
      (ModuleCat.of ℚ ℚ) ℚ (ModuleCat.of ℚ ℚ) j
    FiniteDimensional ℚ H ∧
      (Module.finrank ℚ H : ℚ) = PowerSeries.coeff j
        (∏ r ∈ Finset.range j, doubleLoopFactor (s + 4) N (r + 1) (by omega) (by omega)) := by
  sorry

/-- The complex Fermat fibre with exponent k and n coordinates, carrying the subspace topology. -/
abbrev fermatFiber (n k : ℕ) :=
  {z : Fin n → ℂ // ∑ i, z i ^ k = 1}

/-- The Pham skeleton of the Fermat fibre: every coordinate kth power is real and nonnegative. -/
def fermatSkeleton (n k : ℕ) : Set (fermatFiber n k) :=
  {z | ∀ i, (z.val i ^ k).im = 0 ∧ 0 ≤ (z.val i ^ k).re}

/-- Pham's strong deformation retraction onto the positive-power skeleton.
The homotopy fixes the entire skeleton, and the retraction is the identity there. -/
theorem fermatDeformationRetraction (n k : ℕ) (hn : 2 ≤ n) (hk : 2 ≤ k) :
    ∃ r : C(fermatFiber n k, ↥(fermatSkeleton n k)),
      (∀ z : ↥(fermatSkeleton n k), r z.val = z) ∧
      Nonempty (ContinuousMap.HomotopyRel (ContinuousMap.id (fermatFiber n k))
        ((⟨Subtype.val, continuous_subtype_val⟩ :
          C(↥(fermatSkeleton n k), fermatFiber n k)).comp r) (fermatSkeleton n k)) := by
  sorry

/-- The Fermat fibre has the homotopy type of a bouquet of (k - 1)^n spheres
of dimension n - 1, with any specified base point on the model sphere. -/
theorem fermatBouquet (n k : ℕ) (hn : 2 ≤ n) (hk : 2 ≤ k)
    (x : unitSphere (n - 1)) :
    Nonempty (ContinuousMap.HomotopyEquiv (fermatFiber n k)
      (sphereBouquet (n - 1) ((k - 1) ^ n) x)) := by
  sorry

/-- The double-loop space of the Fermat fibre is connected and simply connected
for n >= 5, at every point of that fibre. -/
theorem fermatDoubleLoopSimplyConnected (n k : ℕ) (hn : 5 ≤ n) (hk : 2 ≤ k)
    (x : fermatFiber n k) : SimplyConnectedSpace (Ω^ (Fin 2) (fermatFiber n k) x) := by
  sorry

end TauCetiRoadmap.AlgebraicTopologyPartII
