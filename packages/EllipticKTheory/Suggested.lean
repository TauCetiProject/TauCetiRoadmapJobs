import Mathlib
import TauCeti.FieldTheory.FunctionField.Place.Residue
import TauCeti.FieldTheory.FunctionField.Divisor.Principal
import TauCeti.AlgebraicGeometry.EllipticCurve.PointCount
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.Finrank
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.PointPlace

/-!
# K-theory of curves and elliptic curves: representative target signatures

The roadmap is `README.md`; this file is not the roadmap and is not exhaustive. It records the
definitions and theorem signatures that can be stated against the pinned Mathlib and Tau Ceti, so
that contributors and reviewers converge on names and signatures. Proofs are `sorry` where the
mathematics is a target of the roadmap.

Scheme K-groups, the Weierstrass scheme and the localisation and coniveau sequences have no carrier
at the pinned commits; their statements are in the README. What the pins do carry is Tau Ceti's
theory of places of a function field and Mathlib's point group of a Weierstrass curve, and this file
uses them for three design choices.

* The tame value at a place takes values in the units of the residue field of that place
  (`TauCeti.Place.ResidueField`), not in the units of the base field. At a place of degree larger
  than one these differ, and certificates require triviality in the residue field.
* The tame value follows the convention `(−1)^{ord f · ord g} · (f^{ord g} / g^{ord f})‾`, the
  inverse of the symbol of Weibel's Lemma III.6.3.
* The even K-groups of an elliptic curve over a finite field are modelled by the twisted Frobenius
  kernel, an `AddSubgroup` of Mathlib's point group over an extension field, with `q`-power Frobenius
  `Point.map (FiniteField.frobeniusAlgHom k L)` and the extra Tate twist `q^i`.
-/

namespace TauCetiRoadmap.EllipticKTheory

open TauCeti

/-! ## Carriers of the headline statements -/

section TameValue

variable {k K : Type*} [Field k] [Field K] [Algebra k K]

/-- The quotient `f^{ord_P g} / g^{ord_P f}` has order zero at `P`, so its residue is defined.
This is the only input `tameValue` needs; it belongs to Layer 7 of the README. -/
theorem ord_tameQuotient (P : Place k K) (f g : Kˣ) :
    P.ord (((f ^ P.ord (g : K) / g ^ P.ord (f : K) : Kˣ)) : K) = 0 := by
  rw [Units.val_div_eq_div_val, Units.val_zpow_eq_zpow_val, Units.val_zpow_eq_zpow_val,
    P.ord_div (zpow_ne_zero _ f.ne_zero) (zpow_ne_zero _ g.ne_zero), P.ord_zpow, P.ord_zpow]
  ring

/-- The tame symbol of `{f, g}` at a place `P` (README §7.1):
`(−1)^{ord_P f · ord_P g}` times the residue of `f^{ord_P g} / g^{ord_P f}`, a unit of the residue
field of `P`. It is K2SymbolsBrauer's tame symbol at the valuation of `P`, and the inverse of the
symbol of Weibel's *K-book*, Lemma III.6.3. -/
noncomputable def tameValue (P : Place k K) (f g : Kˣ) : P.ResidueFieldˣ :=
  (-1) ^ (P.ord (f : K) * P.ord (g : K)) *
    P.residueUnit (f ^ P.ord (g : K) / g ^ P.ord (f : K)) (ord_tameQuotient P f g)

/-- A symbol candidate: a finite formal integer combination `Σ n_{(f,g)} {f, g}` of symbols of
units of the function field (README §7.1). Its class in `K₂` is a README target, since `K₂` of a
field has no carrier at the pins. -/
abbrev SymbolCandidate (K : Type*) [Field K] := (Kˣ × Kˣ) →₀ ℤ

/-- The tame value of a candidate at a place: `∏ tameValue P f g ^ n_{(f,g)}` (README §7.1). -/
noncomputable def SymbolCandidate.tame (P : Place k K) (α : SymbolCandidate K) :
    P.ResidueFieldˣ :=
  α.prod fun fg n => tameValue P fg.1 fg.2 ^ n

/-- Orientation witness (README §§7.1, 7.7): if `c` is a unit at `P` and `ord_P h = n`, then
`{c, h}` has tame value `c̄ⁿ` and `{h, c}` has `c̄⁻ⁿ`. For a uniformiser (`n = 1`) and residue `2`
the values are `2` and `1/2`; for the order-three function of Bloch's correction they are `8` and
`1/8`, which fixes the function-first order of the correction. -/
example (P : Place k K) (c h : Kˣ) (n : ℤ) (hc : P.ord (c : K) = 0)
    (hh : P.ord (h : K) = n) :
    tameValue P c h = P.residueUnit c hc ^ n ∧
      tameValue P h c = (P.residueUnit c hc ^ n)⁻¹ := by
  constructor
  · simp [tameValue, hh, hc]
  · simp [tameValue, hh, hc, P.residueUnit_inv]

/-- Sign witness: two copies of a uniformiser have tame value `−1`, including in characteristic
 two where this is one. -/
example (P : Place k K) (t : Kˣ) (ht : P.ord (t : K) = 1) :
    tameValue P t t = -1 := by
  simp [tameValue, ht]

/-- A two-term candidate records integer multiplicities: its tame value is a quotient. -/
example (P : Place k K) (f g h : Kˣ) :
    SymbolCandidate.tame P (Finsupp.single (f, g) 1 - Finsupp.single (f, h) 1) =
      tameValue P f g / tameValue P f h := by
  classical
  rw [SymbolCandidate.tame, sub_eq_add_neg, Finsupp.prod_add_index']
  · simp [Finsupp.prod_neg_index, div_eq_mul_inv]
  · intro a
    exact zpow_zero _
  · intro a n m
    exact zpow_add _ _ _

end TameValue

section TwistedFrobenius

variable {k : Type*} [Field k] [Fintype k] (W : WeierstrassCurve k)
variable (L : Type*) [Field L] [DecidableEq L] [Algebra k L]

/-- The twisted Frobenius kernel `B_i(W, L)` (README §5.10): the points of `W` over `L` that are
killed by a positive integer prime to the characteristic and satisfy `q^i • π(P) = P`, where `π` is
the `q`-power map on points. For `L` an algebraic closure it is the group of invariants of the
prime-to-`p` torsion with the extra `i`-th Tate twist, which is `K_{2i}` of the elliptic curve for
`i ≥ 1` (README §5.11). It is a subgroup of Mathlib's point group, with no second group law. -/
noncomputable def twistedFrobeniusKernel (i : ℕ) :
    AddSubgroup (WeierstrassCurve.Affine.Point (W.baseChange L)) where
  carrier := {P | (∃ m : ℕ, 0 < m ∧ Nat.Coprime m (ringChar k) ∧ m • P = 0) ∧
    (Fintype.card k ^ i) • WeierstrassCurve.Affine.Point.map (W' := W.toAffine)
      (FiniteField.frobeniusAlgHom k L) P = P}
  zero_mem' := ⟨⟨1, one_pos, Nat.coprime_one_left _, by simp⟩, by simp⟩
  add_mem' := by
    rintro P Q ⟨⟨m, hm, hmc, hmP⟩, hP⟩ ⟨⟨n, hn, hnc, hnQ⟩, hQ⟩
    refine ⟨⟨m * n, Nat.mul_pos hm hn, Nat.Coprime.mul_left hmc hnc, ?_⟩, ?_⟩
    · rw [smul_add, mul_smul, smul_comm m n P, hmP, mul_smul, hnQ, smul_zero, smul_zero, add_zero]
    · rw [map_add, smul_add, hP, hQ]
  neg_mem' := by
    rintro P ⟨⟨m, hm, hmc, hmP⟩, hP⟩
    exact ⟨⟨m, hm, hmc, by rw [smul_neg, hmP, neg_zero]⟩, by rw [map_neg, smul_neg, hP]⟩

end TwistedFrobenius

/-! ## Headline theorems -/

section Headline

/-- **The even K-groups of an elliptic curve over a finite field have order
`1 − a_q q^i + q^{2i+1}`** (README §5.11, `finiteFieldK_orders`; Weibel, *K-book*, Theorem VI.6.7).
Here `K_{2i}(E) ≅ B_i(E, F̄_q)` and `a_q = q + 1 − #E(F_q)` is Tau Ceti's `frobeniusTrace`. The
hypothesis `1 ≤ i` is needed: for `i = 0` the group is the prime-to-`p` part of `E(F_q)`. -/
theorem card_twistedFrobeniusKernel {k : Type*} [Field k] [Fintype k] [DecidableEq k]
    (W : WeierstrassCurve k) [W.IsElliptic] [DecidableEq (AlgebraicClosure k)]
    {i : ℕ} (hi : 1 ≤ i) :
    (Nat.card (twistedFrobeniusKernel W (AlgebraicClosure k) i) : ℤ) =
      1 - W.frobeniusTrace * (Fintype.card k : ℤ) ^ i + (Fintype.card k : ℤ) ^ (2 * i + 1) := by
  sorry

/-- **Reciprocity fixes the last rational point** (README §7.4): if a candidate has trivial tame
value at every place except one place `P₀` of degree one, it is trivial at `P₀` as well. The input
is Weil reciprocity for the tame symbol with residue-field norms (K2SymbolsBrauer §10.30); at a place
of degree larger than one only the norm of the value is forced to be one. -/
theorem tame_last_point {k K : Type*} [Field k] [Field K] [Algebra k K]
    (hK : IsFunctionField k K) (α : SymbolCandidate K) (P₀ : Place k K) (hP₀ : P₀.degree = 1)
    (h : ∀ P : Place k K, P ≠ P₀ → SymbolCandidate.tame P α = 1) :
    SymbolCandidate.tame P₀ α = 1 := by
  sorry

/-- **Bloch's correction** (README §7.6; algebraic extension of Young, Lemma 3.1). Let `T` be a finite group of rational points of an elliptic curve killed by `C`, let
`f, g` have zeros and poles only at points of `T`, let `f_P` have divisor `C(P) − C(O)` for each
non-zero `P ∈ T`, and let `c_P ∈ F^×` be the tame value of `{f, g}` at `P`. Then
`C{f, g} + Σ_{0 ≠ P ∈ T} {f_P, c_P}` has trivial tame value at every place. The finset `S` lists the
non-zero points of `T`. -/
theorem blochCorrection {F : Type*} [Field F] [DecidableEq F]
    (W : WeierstrassCurve.Affine F) [W.IsElliptic] (T : AddSubgroup W.Point)
    (S : Finset W.Point) (hS : ∀ P, P ∈ S ↔ P ∈ T ∧ P ≠ 0)
    (C : ℕ) (hCpos : 0 < C) (hC : ∀ P ∈ T, C • P = 0) (f g : W.FunctionFieldˣ)
    (hsupp : ∀ Q : Place F W.FunctionField,
      (Q.ord (f : W.FunctionField) ≠ 0 ∨ Q.ord (g : W.FunctionField) ≠ 0) →
        ∃ P ∈ T, Q = (W.pointEquivDegreeOnePlace P : Place F W.FunctionField))
    (fP : W.Point → W.FunctionFieldˣ)
    (hfP : ∀ P ∈ S, Divisor.principal (W.isFunctionField) (fP P) =
      (C : ℤ) • (TauCeti.AlgebraicGeometry.WeilDivisor.ofPoint
          (W.pointEquivDegreeOnePlace P : Place F W.FunctionField) -
        TauCeti.AlgebraicGeometry.WeilDivisor.ofPoint (Place.infinity W)))
    (c : W.Point → Fˣ)
    (hc : ∀ P ∈ S,
      ((tameValue (W.pointEquivDegreeOnePlace P : Place F W.FunctionField) f g :
          (W.pointEquivDegreeOnePlace P : Place F W.FunctionField).ResidueFieldˣ) :
        (W.pointEquivDegreeOnePlace P : Place F W.FunctionField).ResidueField) =
        algebraMap F _ (c P : F)) :
    ∀ Q : Place F W.FunctionField,
      SymbolCandidate.tame Q ((C : ℤ) • Finsupp.single (f, g) 1 +
        ∑ P ∈ S, Finsupp.single
          (fP P, Units.map (algebraMap F W.FunctionField).toMonoidHom (c P)) 1) = 1 := by
  sorry

end Headline

/-! ## Layer 5: Functoriality, isogenies and curves over finite fields -/

section Layer5

variable {k : Type*} [Field k] [Fintype k] (W : WeierstrassCurve k)
variable (L : Type*) [Field L] [DecidableEq L] [Algebra k L]

/-- Membership in the twisted Frobenius kernel is exactly the two defining conditions. -/
theorem mem_twistedFrobeniusKernel {i : ℕ} (P : WeierstrassCurve.Affine.Point (W.baseChange L)) :
    P ∈ twistedFrobeniusKernel W L i ↔
      (∃ m : ℕ, 0 < m ∧ Nat.Coprime m (ringChar k) ∧ m • P = 0) ∧
        (Fintype.card k ^ i) • WeierstrassCurve.Affine.Point.map (W' := W.toAffine)
          (FiniteField.frobeniusAlgHom k L) P = P :=
  Iff.rfl

/-- The twisted Frobenius kernel contains no non-zero point killed by the characteristic: a point
killed by `p` and by an integer prime to `p` is zero. A definition without the prime-to-`p`
condition would contain the rational 2-torsion point `(0, 1)` of `y² + xy = x³ + 1` over `𝔽₂`,
which Frobenius fixes. -/
theorem eq_zero_of_mem_twistedFrobeniusKernel_of_char_smul {i : ℕ}
    {P : WeierstrassCurve.Affine.Point (W.baseChange L)} (hP : P ∈ twistedFrobeniusKernel W L i)
    (hp : ringChar k • P = 0) : P = 0 := by
  obtain ⟨⟨m, -, hmc, hm⟩, -⟩ := hP
  have h := Nat.dvd_gcd (addOrderOf_dvd_of_nsmul_eq_zero hm) (addOrderOf_dvd_of_nsmul_eq_zero hp)
  rw [Nat.Coprime.gcd_eq_one hmc] at h
  exact AddMonoid.addOrderOf_eq_one_iff.mp (Nat.dvd_one.mp h)

/-- A rational point killed by an integer prime to `p` lies in `B_i(W, L)` after base change
exactly when `(q^i − 1) • P = 0`, since Frobenius fixes it (README §5.10). -/
theorem baseChange_mem_twistedFrobeniusKernel_iff [DecidableEq k] {i : ℕ}
    (P : WeierstrassCurve.Affine.Point (W.baseChange k)) {m : ℕ} (hm : 0 < m)
    (hmc : Nat.Coprime m (ringChar k)) (hmP : m • P = 0) :
    WeierstrassCurve.Affine.Point.map (W' := W.toAffine) (Algebra.ofId k L) P ∈
        twistedFrobeniusKernel W L i ↔
      (Fintype.card k ^ i - 1) • P = 0 := by
  sorry

/-- A `k`-algebra map of field extensions maps `B_i(W, L)` into `B_i(W, M)` through `Point.map`,
which commutes with the `q`-power map (README §5.10). -/
theorem map_mem_twistedFrobeniusKernel {i : ℕ} {M : Type*} [Field M] [DecidableEq M] [Algebra k M]
    (σ : L →ₐ[k] M) {P : WeierstrassCurve.Affine.Point (W.baseChange L)}
    (hP : P ∈ twistedFrobeniusKernel W L i) :
    WeierstrassCurve.Affine.Point.map (W' := W.toAffine) σ P ∈ twistedFrobeniusKernel W M i := by
  sorry

/-- The origin lies in every `B_i`, including `i = 0`. -/
example (i : ℕ) : (0 : WeierstrassCurve.Affine.Point (W.baseChange L)) ∈
    twistedFrobeniusKernel W L i :=
  (twistedFrobeniusKernel W L i).zero_mem

/-- A nonzero point killed by the characteristic cannot pass the prime-to-characteristic
condition, even if Frobenius fixes it (README §5.10, the rational 2-torsion example). -/
example {i : ℕ} {P : WeierstrassCurve.Affine.Point (W.baseChange L)}
    (hp : ringChar k • P = 0) (hP : P ≠ 0) : P ∉ twistedFrobeniusKernel W L i := by
  intro h
  exact hP (eq_zero_of_mem_twistedFrobeniusKernel_of_char_smul W L h hp)

end Layer5

/-! ## Layer 6: Regular models over S-integers and the integral part -/

section Layer6

open _root_.AlgebraicGeometry CategoryTheory Limits

universe u

variable (O F : Type u) [CommRing O] [Field F] [Algebra O F]

/-- A regular proper model over `O` of a curve `C` over the fraction field `F` (README §6.1;
Conrad, *Minimal models for elliptic curves*, Definition 3.1): a proper flat `O`-scheme with
regular local rings and a fixed identification of its generic fibre with `C`. The marking is part
of the data. -/
structure RegularProperModel (C : Scheme.{u}) (toField : C ⟶ Spec (CommRingCat.of F)) where
  /-- The total scheme. -/
  X : Scheme.{u}
  /-- The structure morphism to the base. -/
  toBase : X ⟶ Spec (CommRingCat.of O)
  /-- The structure morphism is proper. -/
  isProper : IsProper toBase
  /-- The structure morphism is flat. -/
  flat : Flat toBase
  /-- Every local ring of the total scheme is regular, including at closed points of the fibres. -/
  regular : ∀ x : X, IsRegularLocalRing (X.presheaf.stalk x)
  /-- The marking: the generic fibre is identified with `C`. -/
  genericIso : pullback toBase (Spec.map (CommRingCat.ofHom (algebraMap O F))) ≅ C
  /-- The marking is an isomorphism over the fraction field, not just of underlying schemes. -/
  genericIso_over : genericIso.hom ≫ toField = pullback.snd _ _

namespace RegularProperModel

variable {O F} {C : Scheme.{u}} {toField : C ⟶ Spec (CommRingCat.of F)}

/-- The inclusion of the marked generic fibre. -/
noncomputable def genericFibreInclusion (M : RegularProperModel O F C toField) : C ⟶ M.X :=
  M.genericIso.inv ≫ pullback.fst _ _

/-- The marked generic-fibre inclusion is over the fixed structure morphism of `C`.
This would fail for a scheme isomorphism that twists the fraction field (README §6.1). -/
example (M : RegularProperModel O F C toField) :
    M.genericFibreInclusion ≫ M.toBase =
      toField ≫ Spec.map (CommRingCat.ofHom (algebraMap O F)) := by
  dsimp [genericFibreInclusion]
  rw [Category.assoc, pullback.condition, ← Category.assoc, ← M.genericIso_over]
  simp

/-- A morphism of marked models (README §6.3): an `O`-morphism of total schemes inducing the
identity of `C`. -/
@[ext]
structure Hom (M N : RegularProperModel O F C toField) where
  /-- The underlying morphism of total schemes. -/
  hom : M.X ⟶ N.X
  /-- It lies over the base. -/
  hom_toBase : hom ≫ N.toBase = M.toBase
  /-- It respects the markings. -/
  generic : M.genericFibreInclusion ≫ hom = N.genericFibreInclusion

/-- The identity morphism of a marked model. -/
def Hom.id (M : RegularProperModel O F C toField) : Hom M M where
  hom := 𝟙 M.X
  hom_toBase := Category.id_comp _
  generic := Category.comp_id _

/-- Outgoing minimality (README §6.3; Conrad, Definition 3.8): every model morphism out of `M` is
an isomorphism of total schemes. -/
def IsMinimal (M : RegularProperModel O F C toField) : Prop :=
  ∀ (N : RegularProperModel O F C toField) (f : Hom M N), IsIso f.hom

/-- Between two marked regular proper models over a Dedekind domain there is at most one model
morphism: the source is reduced, its generic fibre is dense by flatness, and the target is separated
(README §6.3; Mathlib's `ext_of_isDominant_of_isSeparated`). -/
theorem Hom.subsingleton [IsDedekindDomain O] [IsFractionRing O F]
    (M N : RegularProperModel O F C toField) : Subsingleton (Hom M N) := by
  sorry

end RegularProperModel

end Layer6

/-! ## Layer 7: Symbol certificates and Bloch's classes -/

section Layer7

variable {k K : Type*} [Field k] [Field K] [Algebra k K]

/-- **Leading-unit formula** (README §7.1): for a uniformiser `t` with `f = t^a u` and `g = t^b w`,
the tame value is `(−1)^{ab} ū^b w̄^{−a}`; in particular it does not depend on `t`. -/
theorem tameValue_eq_leading (P : Place k K) (f g u w : Kˣ) (t : K) (ht : P.ord t = 1)
    (hu : P.ord (u : K) = 0) (hw : P.ord (w : K) = 0)
    (hf : (f : K) = t ^ P.ord (f : K) * u) (hg : (g : K) = t ^ P.ord (g : K) * w) :
    tameValue P f g = (-1) ^ (P.ord (f : K) * P.ord (g : K)) *
      P.residueUnit u hu ^ P.ord (g : K) * (P.residueUnit w hw)⁻¹ ^ P.ord (f : K) := by
  sorry

/-- Two units at `P` have trivial tame value at `P`. -/
theorem tameValue_of_ord_eq_zero (P : Place k K) {f g : Kˣ} (hf : P.ord (f : K) = 0)
    (hg : P.ord (g : K) = 0) : tameValue P f g = 1 := by
  sorry

/-- The tame value is antisymmetric: `tameValue P g f = (tameValue P f g)⁻¹`. -/
theorem tameValue_swap (P : Place k K) (f g : Kˣ) :
    tameValue P g f = (tameValue P f g)⁻¹ := by
  sorry

/-- The tame value is multiplicative in its first argument. -/
theorem tameValue_mul_left (P : Place k K) (f f' g : Kˣ) :
    tameValue P (f * f') g = tameValue P f g * tameValue P f' g := by
  sorry

/-- The Steinberg relation: `tameValue P f (1 − f) = 1` for `f ≠ 1`. -/
theorem tameValue_one_sub (P : Place k K) (f g : Kˣ) (hfg : (f : K) + g = 1) :
    tameValue P f g = 1 := by
  sorry

/-- `{f, f}` has tame value `(−1)^{ord_P f}`: the sign in the definition is visible at a simple
zero. -/
theorem tameValue_self (P : Place k K) (f : Kˣ) :
    tameValue P f f = (-1) ^ P.ord (f : K) := by
  sorry

variable (k) in
/-- A certificate for a candidate (README §7.2): a finite set of places outside which every
function involved is a unit, a uniformiser at each place of the set, and the proof that the tame
value of the candidate is one in the residue field at each place of the set. -/
structure SymbolCertificate (α : SymbolCandidate K) where
  /-- The named finite set of places at which the tame value is computed. -/
  support : Finset (Place k K)
  /-- Off the support every function in the candidate has order zero. -/
  unit_outside : ∀ P ∉ support, ∀ fg ∈ α.support, P.ord (fg.1 : K) = 0 ∧ P.ord (fg.2 : K) = 0
  /-- A uniformiser at each place of the support. -/
  uniformizer : Place k K → K
  /-- The uniformisers have order one. -/
  ord_uniformizer : ∀ P ∈ support, P.ord (uniformizer P) = 1
  /-- The tame value is one in the residue field at each place of the support. -/
  tame_eq_one : ∀ P ∈ support, SymbolCandidate.tame P α = 1

/-- A certified candidate has trivial tame value at every place. -/
theorem SymbolCertificate.tame_eq_one_everywhere {α : SymbolCandidate K}
    (c : SymbolCertificate k α) (P : Place k K) : SymbolCandidate.tame P α = 1 := by
  sorry

/-- **Completeness of certificates** (README §7.2): over a function field, a candidate has a
certificate exactly when its tame value is one at every place; the zeros and poles of the functions
involved form an admissible support. -/
theorem SymbolCertificate.nonempty_iff (hK : IsFunctionField k K) (α : SymbolCandidate K) :
    Nonempty (SymbolCertificate k α) ↔ ∀ P : Place k K, SymbolCandidate.tame P α = 1 := by
  sorry

/-- The zero candidate has a certificate with empty support. -/
example : Nonempty (SymbolCertificate k (0 : SymbolCandidate K)) :=
  ⟨{ support := ∅
     unit_outside := fun _ _ _ h => by simp at h
     uniformizer := fun _ => 0
     ord_uniformizer := fun _ h => by simp at h
     tame_eq_one := fun _ h => by simp at h }⟩

end Layer7

/-!
## Statements not typed at the pins

The following README targets need carriers that neither Mathlib nor Tau Ceti has at the pinned
commits, and are stated only in the README.

* The Weierstrass scheme `E_W` (ModularCurves' `projModel`): Layer 1 (`EllipticScheme.charts`,
  `EllipticScheme.cover`, `geometricallyIntegral`, `isRegular`, `closedPointEquivPlace_compat`,
  `pointsDivisor_compat`, `Isogeny.toSchemeHom`, `zeroHom`).
* K-groups of schemes, their pullback and pushforward: Layers 2–6 (`K0Curve.*`, `eulerChar`,
  `pushforwardToBase`, `classGroupEquivPic_functionField`, `picardDecomposition`, `lineBundleDescent_*`,
  `rankDet_ringEquiv`, `K0Elliptic.addEquiv`, `curveLocalisation`, `curveBoundary_two_eq_tame`,
  `curveLocalisation_restrict`, `_pullback`, `_transfer`, `K2_curve_injective_rat`,
  `K2_curve_injective_finite`, `curveSK1` and its API, `basePoint_*`, `curveConiveau`,
  `curveK3_extension`, `regularCurveMotivicTower` and its layer, convergence, Adams and
  smooth-comparison API, `weightComponent` and its API, `K3ind_eq_weight_two`, `KPullback`,
  `KPushforward`, `isogeny_pushPull`, `pushforwardStructureSheaf_class`, `isogeny_rankDet_action`,
  `projectiveLine_finiteField`, `harder`, `geometricK_galoisModule`, `positiveK_descent`,
  `finiteFieldK_odd`, `finiteFieldK_even`).
* `K_n` of fields, Milnor K-theory and étale cohomology: `BMS_functionField`,
  `curveFiniteGeneration`, `reciprocitySequence_exact`, `tameKernel_finite`, `geisserLevine`, `geisserLevine_filteredColimit`, `cohomologyDescent`, `closedPoints_coprimeDegrees`, `degreeOneZeroCycle`,
  `zeroCycle_splitting`,
  `SymbolCandidate.toK2`, `SymbolCertificate.sound`, `blochClassLift`, `blochClass` and its well-definedness,
  `blochClass_eq_Bloch` (README §7.7: the integral ICM class maps to `C • blochClass a`),
  `blochRho`, `torsionFunction_divisor_compat`,
  `transfer_tame`, `galoisDescent`.
* The positive-genus theorems on regular models, which need the genus of the generic curve, and
  the integral part of `K₂`: Layer 6 (`exists_regularProperModel`, `exists_locallyMinimal`,
  `locallyMinimal_terminal`, `minimality_local_criterion`, `minimal_unique`,
  `minimal_localisation`, `regularModels_linked`, `integralPart`,
  `integralPart_model_independent`, `goodPrime_no_condition`, `integralPart_iff_vertical`), and
  `IntegralCertificate` in Layer 7.
* The worked examples of Layer 8, which need the explicit places of the curves involved.
-/

end TauCetiRoadmap.EllipticKTheory
