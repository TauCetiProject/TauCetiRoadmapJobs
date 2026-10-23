# Siegel and PEL moduli problems, Part II: unitary integral and formal moduli

This roadmap constructs the integral and formal unitary moduli that arithmetic applications use. It starts from PELModuli’s generic PEL data, determinant condition, levels, canonical models and CM moduli. Its new objects are the principal, almost self-dual, exotic and Krämer framed spaces, the integral CM-pair models, and their formal basic-locus comparisons. A polarization kernel, a signature convention, an integral Lie annihilation equation and a coefficient field are part of each statement: they cannot be recovered from a generic Shimura variety alone.

The order is local objects and comparisons (U0–U5), global CM and lattice data (U6), integral models (U7–U8), then effective basic-locus uniformization (U9). Every definition and construction below has a named API and discriminating checks. These are mathematical specifications of work to build, rather than implementation claims.

General abelian schemes, deformation theory, relative displays, Hermitian local/global arithmetic, formal schemes, quotient stacks, Grassmannians and integral Drinfeld level keep their existing owners. The exact additional supplier contracts appear after the layers. The separate proposed PELModuliPartIII owns unitary special-fibre incidence, Deligne–Lusztig geometry, cohomological correspondences and geometric reciprocity; it imports the ambient models here. This prevents the moduli supplier from depending on its cycle applications.

## Conventions and ranges

Locally, K is a finite extension of Q_p, L/K is quadratic, p>2, and a-bar denotes the nontrivial automorphism. Write ϖ for a ground-field uniformizer and q for the ground residue cardinality. In a ramified quadratic extension choose u with u-bar=−u. A breve denotes the completion of a maximal unramified extension. Unless specified otherwise, formal moduli are evaluated on locally noetherian schemes over the appropriate coefficient ring on which p is locally nilpotent. The framing is defined on the uniformizer-zero subscheme, which need not be reduced. A formal space is locally formally of finite type; global quasi-compactness and a globally p-adic topology are not presumed.

Strict O_K-modules have structural O_K-action on Lie. Relative height 2n means absolute p-height 2n[K:Q_p], while the dimension of the strict object is n. Relative duality uses the inverse different when compared with absolute Cartier duality. For a Hermitian Hom pairing h(x,y), the first argument is L-linear and the second conjugate-linear. Exact preservation of a polarization, preservation up to an O_K-unit, and a common rational scalar on a pair are three separately specified arrow conventions.

The unramified local branch U1–U2 uses signature (1,n−1), with rank-one source bar ℰ of signature (0,1). The global Zhang convention is (n−1,1); switching conventions conjugates the target action, source action and framing together. U3–U4 use the even-rank exotic convention (n−1,1) with a separate principal CM source of signature (1,0). U5 uses the Krämer convention (1,n−1), with conjugate rank-(n−1) subbundle and structural rank-one quotient. The local U5 comparison with the global Krämer model conjugates these actions.

Globally, F/F⁺ is CM, Φ is the selected CM type, r the unitary signature, v₀ the distinguished finite place, and E the indicated reflex field. An auxiliary CM reflex compositum K is used only with its stated admissibility and unramifiedness hypotheses. Nonempty CM components and their polarization ideals are input data. Neatness is imposed on both factors when a scheme rather than a stack is required. A claimed regular or semistable model is always over the named coefficient DVR.

### Worked checks that fix the definitions

1. At n=3 and [K:Q_p]=2, a strict local object has relative height 6, absolute height 12 and dimension 3. Absolute height 6 would specify a different carrier.
2. In the unramified mixed construction at n=2, signatures add as (1,1)+(0,1)=(1,2). Adding the unconjugated rank-one source gives (2,1). In the same construction at q=3, the source product polarization has degree 9·9 and the principal target forces the isogeny degree to be 9. The first generic projection instead has degree 4. For a global representative retain away-p degree factors as well.
3. On the special fibre, the nonzero matrix [[0,1],[0,0]] over F₃ has characteristic polynomial T² and square zero. Thus the characteristic polynomial T² does not imply that the action itself is zero. The actual Eisenstein endomorphism equations in U0 and U6 must be imposed.
4. A crossing over a DVR is uv=ϖ. After a ramified coefficient extension ϖ=tᵉ with e>1, uv=tᵉ has embedding dimension 3 and local dimension 2 at (u,v,t), so is not regular there. Smoothness can transfer under arbitrary base change, but this regularity argument cannot.
5. In the rank-two Krämer chart y(1+x²)=2u, every geometric root of 1+x² is simple because p is odd. Taking z=(1+x²)/2 gives yz=u étale locally. This proves the local rank-two crossing; it does not identify a global rank-two reflex-field model after ramified base change.
6. For U1’s graph with n=4, relative dimensions are 2 and 5, whereas arithmetic dimensions are 3 and 6. The half-dimensional assertion uses the latter convention.
7. For a complex smooth model of rank N=3, the source Hodge subspace at τ∞ is zero. Requiring maps to carry it into the target Hodge subspace imposes no condition and leaves dimension 3. The period line is instead Hom_C(H₁^dR(A₀)_{τ∞},ω_{A∨,τ∞}), of dimension 1.
8. A full split Drinfeld level is an equality of effective Cartier torsion divisors. In characteristic p its sections may coincide in support; replacing fullness by distinctness incorrectly removes special-fibre points. The CM twist is formed at finite torsion level and then passed to a direct limit.

## Existing carriers and imports

The reference pins are Mathlib `082e2d37e8b0463410cdb532e111cd43d5a66174` and Tau Ceti `f790474821cf4256814db967cb154e7af3d0c369`. The declarations below were read at those pins. The current Tau Ceti library and the current TauCetiRoadmap tree were also checked to avoid assigning already existing work to this continuation. The newer AlgebraicVectorBundles, DifferentialGeometry, IntegralLattices, LocalGaloisGroups, OperatorTheory, OrthogonalSpinGroups, PeripheralActions, ProfiniteArithmetic and RealAlgebraicGeometry roadmaps do not provide the missing polarized unitary formal-moduli carriers. In particular, symmetric integral lattices do not supply O_L-Hermitian multichain automorphism schemes.

**`mathlib:LinearMap.charpoly`** — Characteristic polynomial of an endomorphism of a finite free module over a commutative ring. Module: `Mathlib/LinearAlgebra/Charpoly/Basic.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Finite and free are typeclass hypotheses; its carrier is reused for local signature equations, not an integral PEL determinant theory.

**`mathlib:LinearMap.charpoly_monic`** — The characteristic polynomial is monic. Module: `Mathlib/LinearAlgebra/Charpoly/Basic.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Applies to the preceding finite free endomorphism.

**`mathlib:LinearMap.charpoly_natDegree`** — With StrongRankCondition, the degree equals the module finrank. Module: `Mathlib/LinearAlgebra/Charpoly/Basic.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Degree cannot determine the eigenmultiplicities in a signature.

**`mathlib:AlgebraicGeometry.Scheme`** — Schemes as locally ringed spaces locally isomorphic to affine spectra. Module: `Mathlib/AlgebraicGeometry/Scheme.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. This is the actual scheme carrier; formal schemes and Deligne–Mumford stacks require suppliers.

**`mathlib:AlgebraicGeometry.Flat`** — Scheme morphisms whose affine restriction ring maps are flat. Module: `Mathlib/AlgebraicGeometry/Morphisms/Flat.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. This predicates an actual representing scheme morphism, and supplies neither a moduli functor nor flatness of a normalization.

**`mathlib:AlgebraicGeometry.Smooth`** — Scheme morphisms whose affine restriction ring maps are smooth. Module: `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Formal smoothness of a formal moduli space is a separate supplier notion.

**`tauceti:TauCeti.AlgebraicGeometry.AbelianVariety`** — Proper geometrically integral group objects over Spec of a field. Module: `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Its base is a field; it does not supply abelian schemes over integer rings or nilpotent thickenings.

**`mathlib:Matrix.charpoly`** — Characteristic polynomial det(TI−M) for a finite square matrix over a commutative ring. Module: `Mathlib/LinearAlgebra/Matrix/Charpoly/Basic.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Definition at line 134 and assumptions at lines 130–156; used for the explicit 2×2 signature counterexample.

**`mathlib:ZMod`** — The existing integer residue-ring carrier; at positive n its underlying type is Fin n. Module: `Mathlib/Data/ZMod/Defs.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Definition at line 142 and surrounding lines 130–155; ZMod 3 is the actual commutative-ring example carrier.

**`mathlib:MvPolynomial.C`** — Constant-polynomial ring homomorphism over a commutative semiring. Module: `Mathlib/Algebra/MvPolynomial/Basic.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Definition at line 105 and assumptions in lines 90–132; reused in the explicit crossing polynomial.

**`mathlib:MvPolynomial.X`** — Variable polynomial, the monomial with exponent one in the specified variable. Module: `Mathlib/Algebra/MvPolynomial/Basic.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Definition at line 126 and surrounding lines 90–132; the examples use two variables over the displayed coefficient rings.

**`mathlib:MvPolynomial.eval`** — Evaluation ring homomorphism into the coefficient ring for a chosen variable valuation. Module: `Mathlib/Algebra/MvPolynomial/Eval.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Definition at line 256 and surrounding lines 245–264; no formal-scheme interpretation is asserted by evaluation alone.

**`tauceti:TauCeti.AlgebraicGeometry.AbelianVariety.smooth`** — An existing abelian variety over a field has a smooth structural morphism. Module: `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean`. 2026-10-19: full declaration and surrounding assumptions read at the pinned source. Full structure and instance read in lines 78–130; the companion only checks reuse of this field-based fact.

The field-based abelian-variety carrier does not supply abelian schemes over a DVR. FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2’s perfect-field Dieudonné theory does not supply all relative polarized windows used here. ReductiveGroupsPartII:RG2.3’s GL/GSp lattice stabilizers do not prove smoothness of the full polarized unitary multichain automorphism group. AlgebraicModuliForArithmeticGeometry:R09.1 supplies the coherent Grassmannian and its tangent Hom formula; the unitary equations and deformation comparison are this roadmap’s application. AbelianSchemesAndArithmeticModuli:A4 owns Grothendieck–Messing, Serre–Tate and effectivity, and A6 owns general characteristic-polynomial theorems. LubinTateFormalModulesAndQuasiCanonicalLifts:LT.3 owns strict one-dimensional deformation and its requested integral full-level extension. These imports are used rather than reconstructed.

## Layers and targets

All statements inherit the conventions above and the hypotheses of the objects in their prerequisites. “Check” below is an acceptance specification, including the named unit tests of each definition or construction. A proof outline describes the mathematical route; it does not assert that its supplier requests have already been implemented.

## U0 — Relative unitary conventions

Strict relative height, relative Cartier duality, principal Hermitian modules and simultaneous conjugation of signature/source/framing. For unramified L/K and Q_p⊂K₀⊂K construct Mihatsch’s supersingular relative comparison using the full P(r,s) determinant and structural-action clause; compare framed deformations and the rank-r Grassmannian local model of relative dimension rs.

**Layer imports:** `AbelianSchemesAndArithmeticModuli:A4`, `AlgebraicModuliForArithmeticGeometry:R09.1`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.1`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `PELModuli:M0`, `SchemeAndStackFoundations:SF.4`.

### Strict polarized unitary modules

**Target:** `PELModuliPartII:U0/principal-hermitian-module` (definition).

For a quadratic extension L/K of p-adic fields with p odd, fix an embedding L into the completed maximal unramified extension breve L. A principal hermitian O_L-module of signature (r,s), r+s=n>0, is a strict formal O_K-module X of relative K-height 2n and dimension n, with O_L-action i and principal relative polarization λ satisfying λ i(a)=i(a-bar)^∨ λ and det(T−i(a)|Lie X)=(T−a)^r(T−a-bar)^s for every a∈O_L. Strictness refers to the O_K-action on the Lie algebra. The absolute p-height is 2n[K:Q_p]. The relative dual and polarization are those of strict modules, compared to absolute Cartier duality through the chosen inverse different; they are not silently the absolute dual.

**Additional hypotheses:** p>2; L/K quadratic; r,s nonnegative; n=r+s>0. All local moduli are evaluated on locally noetherian schemes over the completed maximal unramified coefficient ring on which the residue characteristic is locally nilpotent; reduction means the scheme cut out by the uniformizer, not the reduced scheme.

**Prerequisites:** `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.1/p-divisible-group`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `PELModuli:M0/determinant-condition`, `mathlib:LinearMap.charpoly`.

**Source:** Mih19, Definitions 2.2 and 2.8, pp. 7, 9 (unramified quadratic case); Appendix §11, pp. 41–43 (strict modules and duality); LL22 Definition 2.1, pp. 9–10 (ramified conventions).

**Construction or proof:**

1. Specialize the strict-module and relative-duality supplier to L/K, keeping the structural O_K-action on Lie X.
2. Impose the two-embedding determinant equation and the relative adjoint equation; inherit base change and isomorphisms from the supplier.
3. Record the absolute-height conversion and its distinction from absolute dimension.

**API:**

- `PrincipalHermitianModule.ofData` (constructor): Construct from a strict module, integral O_L-action, principal relative polarization and the two displayed equations.
- `PrincipalHermitianModule.absoluteHeight` (compatibility): For relative height 2n, the underlying p-divisible group has p-height 2n[K:Q_p].
- `PrincipalHermitianModule.baseChange` (functoriality): Base change preserves strictness, signature and relative polarization; identity and iterated base changes have canonical compatible isomorphisms.
- `PrincipalHermitianModule.lieCharpoly` (characterisation): For every a∈O_L the existing finite-free characteristic polynomial on Lie X is the stated two-factor polynomial.

**Named checks:**

- `PrincipalHermitianModule.heightDegreeTwo`: For [K:Q_p]=2 and n=3 the relative height is 6 and absolute height 12; the dimension is 3.
- `PrincipalHermitianModule.rankOneConjugate`: For n=1, signature (1,0) gives Lie action a, while signature (0,1) gives a-bar.
- `PrincipalHermitianModule.rejectLinearRosati`: An action whose adjoint fixes a with a≠a-bar fails the polarization condition.

**Uses:**

- LZ22 §2.1, p. 10; HLSY23 Definition 2.1, p. 10: Supplies the common principal-polarization object underlying the unramified and Krämer framed functors.
- PELModuliPartII:U0/signature-conjugation: Supplies this datum to the consumer’s construction or proof: Substitute a-bar in the determinant and Rosati equations.
- PELModuliPartII:U0/relative-comparison-functor: Supplies this datum to the consumer’s construction or proof: Use the requested polarized relative display/window equivalence and normal decompositions.
- PELModuliPartII:U1/unramified-rz: Supplies this datum to the consumer’s construction or proof: Form the structured p-divisible-group groupoid and reduce only the framing map.
- PELModuliPartII:U2/almost-self-dual-rz: Supplies this datum to the consumer’s construction or proof: Replace the principal condition in the U1 framed construction by the prescribed finite flat kernel type.
- PELModuliPartII:U3/exotic-relative: Supplies this datum to the consumer’s construction or proof: Use the strict-module carrier, keeping the nonprincipal polarization instead of inheriting the principal condition.
- PELModuliPartII:U5/kramer-filtration: Supplies this datum to the consumer’s construction or proof: Form the relative Grassmannian of rank-(n−1) locally direct summands of Lie X.
- PELModuliPartII:U5/kramer-rank-one-source: Supplies this datum to the consumer’s construction or proof: Use the strict CM deformation supplier for the rank-one signature and chosen framing component.
- PELModuliPartII:U3/rank-one-source: Supplies this datum to the consumer’s construction or proof: Use the strict CM deformation theorem with the structural O_L Lie character.

**Acceptance:**

- An unramified quadratic extension with K ramified over Q_p still has relative height 2n.
- The polarization adjoint is conjugation on O_L.

**Atlas name:** Hermitian formal modules.

### Mihatsch relative comparison

**Target:** `PELModuliPartII:U0/relative-comparison-functor` (construction).

Suppose L/K is unramified quadratic and Q_p⊂K0⊂K. On locally noetherian nilpotent bases, construct Mihatsch’s equivalence C from supersingular hermitian O_L–O_K0-modules with signature P(r,s) and its structural-action Eisenstein clause to supersingular strict O_K hermitian O_L-modules of signature (r,s). For K/K0 unramified, contract the embedding-graded display by a full Frobenius round trip. For K/K0 totally ramified, lift the pairing through the inverse-different trace, pass through the Lubin–Tate frame and rescale by the frame-change unit. Compose along the unramified/totally ramified factorization. C is compatible with Rosati adjoints and polarized quasi-isogenies. Write Ψ for the K₀-embeddings of the maximal subfield Lᵘ⊂L unramified over K₀, split into conjugate halves Ψ₀,Ψ₁ with distinguished ψ₀∈Ψ₀. Put P₀₁(a;T)=∏_{ψ∈Ψ₁}ψ(charpoly_{L/Lᵘ}(a;T)), P₁₀=P₀₁(T−a)/(T−a-bar), and P(r,s)=P₁₀^r P₀₁^s; the indicated quotient is polynomial. Require this characteristic polynomial on Lie and (i(a)−a)|Lie_{ψ₀}=0 for every a∈O_L. This last zero-endomorphism equation is part of the input. On the O_K₀ side the relative height and dimension are 2n[K:K₀] and n[K:K₀]; the strict O_K side has height 2n and dimension n.

**Prerequisites:** `PELModuliPartII:U0/principal-hermitian-module`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`.

**Source:** Mih19, Definitions 2.7–2.8, pp. 8–9; Theorem 3.3, Propositions 3.4 and 3.6, Lemma 3.9 and Corollary 3.10, pp. 11–18.

**Construction or proof:**

1. Use the requested polarized relative display/window equivalence and normal decompositions.
2. In the totally ramified case keep the inverse-different generator and the unit correcting the change of frame.
3. Identify contracted Hodge crystals and homomorphism lifting across square-zero thickenings, then induct along the nilpotent nilradical of a noetherian base.

**API:**

- `RelativeUnitaryComparison.toRelative` (projection): Extract C(X) and its transported O_L-action and relative principal polarization.
- `RelativeUnitaryComparison.inverse` (equivalence): The display reconstruction is a quasi-inverse, with unit and counit natural on the nilpotent base category.
- `RelativeUnitaryComparison.adjoint` (compatibility): C(f†)=C(f)† for polarized quasi-homomorphisms.
- `RelativeUnitaryComparison.baseChange` (functoriality): The equivalence commutes with coefficient/base changes allowed by its chosen embeddings and frame data.

**Named checks:**

- `RelativeUnitaryComparison.identity`: For K0=K choose the identity frame data; C is naturally the identity.
- `RelativeUnitaryComparison.height`: For [K:K0]=e f, contraction divides the K0-relative height 2n e f to K-relative height 2n.
- `RelativeUnitaryComparison.eisenstein`: An absolute Lie action satisfying only multiplicity ranks but violating the structural-action clause is not an input to C.

**Uses:**

- LZ22 §13.1, footnote 5, pp. 80–81; Zhang21 §7.3, p. 908: Replaces the absolute PEL local factor by the relative unitary Rapoport–Zink factor, including a ramified K/Q_p.
- PELModuliPartII:U0/relative-framed-comparison: Supplies this datum to the consumer’s construction or proof: Choose an identification of C of the absolute framing with the relative framing.
- PELModuliPartII:U6/eisenstein-condition: Supplies this datum to the consumer’s construction or proof: Construct the embedding summands over a common unramified splitting coefficient ring.
- PELModuliPartII:U0/relative-local-model: Supplies this datum to the consumer’s construction or proof: Use the embedding decomposition and actual structural-action equation, not just multiplicities.

**Acceptance:**

- The comparison applies when K/Q_p is ramified; this is distinct from the exotic comparison in U4.
- On the relative side the height is 2n, not the absolute height.

**Atlas name:** Relative unitary comparison.

### Equivariance and deformation comparison

**Target:** `PELModuliPartII:U0/relative-framed-comparison` (theorem).

With the data of U0/relative-comparison-functor and a fixed polarized supersingular framing, C induces an isomorphism of the height-zero framed moduli functors and their formally locally finite type representing spaces, equivariant for the quasi-isogeny group identified through C. C identifies the relevant Hodge filtrations and the condition that an O_L-linear homomorphism lifts across a square-zero thickening.

**Prerequisites:** `PELModuliPartII:U0/relative-comparison-functor`, `SchemeAndStackFoundations:SF.4`.

**Source:** Mih19, Theorem 3.1 and its proof, pp. 11–12, 18; Lemma 3.9 and Corollary 3.10, pp. 17–18.

**Construction or proof:**

1. Choose an identification of C of the absolute framing with the relative framing.
2. Transport every framing quasi-isogeny using the unit/counit and identify quasi-isogeny actions by conjugation.
3. Use the Hodge-crystal comparison for infinitesimal compatibility and Yoneda for the representing isomorphism.

**Acceptance:**

- The result is an isomorphism of formal spaces, not just of geometric point sets.
- State dependence on the framing identification; changing it conjugates equivariance.

**Atlas name:** Mihatsch comparison theorem.

### Relative unitary Grassmannian chart

**Target:** `PELModuliPartII:U0/relative-local-model` (comparison).

For unramified quadratic L/K, intermediate K₀⊂K and the signature P(r,s) with structural-action clause on the distinguished maximal-unramified L-embedding summand, the polarized local-model functor is the Grassmannian of rank-r quotients of a free rank-n module on that summand. The remaining Hodge submodules are fixed on banal summands and determined by orthogonal complement on the conjugate summand. It is smooth of relative dimension rs, including when K/K₀ is ramified.

**Prerequisites:** `PELModuliPartII:U0/relative-comparison-functor`, `AlgebraicModuliForArithmeticGeometry:R09.1/grassmann-smoothness`, `AlgebraicModuliForArithmeticGeometry:R09.1/coherent-grassmannian`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`.

**Source:** Mih19, Definition 2.11 and Proposition 2.12, pp. 9–10.

**Construction or proof:**

1. Use the embedding decomposition and actual structural-action equation, not just multiplicities.
2. Keep the distinguished quotient, fix the banal summands, and reconstruct the conjugate summand by the perfect pairing.
3. Identify the two functors and apply the imported Grassmannian graph charts and tangent formula.

**Acceptance:**

- At (r,s)=(1,n−1) the dimension is n−1.
- At r=0 or s=0 the local model is the base.

### Comparison of signature conventions

**Target:** `PELModuliPartII:U0/signature-conjugation` (comparison).

Precomposing i with the nontrivial automorphism of L/K gives an involutive equivalence between principal hermitian modules of signatures (r,s) and (s,r), carrying λ and every polarized framing along the same relabelling. Thus Zhang21 signature (n−1,1) and LZ22 signature (1,n−1) define corresponding spaces only after conjugating both the O_L-action and the rank-one source; the underlying p-divisible group is unchanged.

**Prerequisites:** `PELModuliPartII:U0/principal-hermitian-module`.

**Source:** Zhang21, §3.1, equations (3.1)–(3.6), pp. 879–881; compare LZ22 §2.1, p. 10.

**Construction or proof:**

1. Substitute a-bar in the determinant and Rosati equations.
2. Conjugate source and framing actions as well; verify equivariance of quasi-isogenies.
3. Apply conjugation twice to obtain the identity equivalence.

**Acceptance:**

- For n=1 the two rank-one Lie characters are interchanged.
- Do not identify the signatures while retaining the old special-Hom source.

## U1 — Unramified unitary formal moduli

Construct the exact-polarization height-zero unitary framed functor for unramified quadratic L/K, p>2, signature (1,n−1); prove formal representability and smoothness of dimension n−1. Construct its canonical principal rank-one source, nonsplit Hermitian special-Hom space, rank-raising closed immersion and equivariant diagonal graph, keeping relative and arithmetic dimensions distinct.

**Layer imports:** `AbelianSchemesAndArithmeticModuli:A4`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuli:M0`, `PELModuli:M2`, `PELModuliPartII:U0`, `SchemeAndStackFoundations:SF.4`.

### Unramified unitary framed functor

**Target:** `PELModuliPartII:U1/unramified-rz` (definition).

Fix a supersingular principally polarized strict hermitian O_L-module 𝕏 of signature (1,n−1). N_n(S) consists of (X,i,λ,ρ), with X of the same type and ρ:X over the uniformizer-zero subscheme →𝕏 a height-zero O_L-linear quasi-isogeny such that ρ*λ_𝕏=λ. Arrows are O_L-linear isomorphisms preserving λ and commuting with ρ. The exact polarization normalization selects this component; a moduli problem allowing arbitrary similitude factors is a different functor.

**Additional hypotheses:** L/K unramified quadratic; p>2; n≥1; NIL base category of U0; fix a supersingular framing of the indicated signature and polarization.

**Prerequisites:** `PELModuliPartII:U0/principal-hermitian-module`, `SchemeAndStackFoundations:SF.4`.

**Source:** LZ22, §2.1, p. 10; compare Zhang21 §3.1, pp. 879–881.

**Construction or proof:**

1. Form the structured p-divisible-group groupoid and reduce only the framing map.
2. Use quasi-isogeny rigidity for descent and to kill automorphisms fixing ρ.
3. Transport along U0/signature-conjugation when the opposite convention is required.

**API:**

- `UnitaryRZ.ofData` (constructor): Construct a point from X,i,λ and a height-zero polarized framing on the uniformizer-zero subscheme.
- `UnitaryRZ.forget` (projection): Recover X with its O_L-action and principal polarization.
- `UnitaryRZ.pullback` (functoriality): Pullback gives a nilpotent-base functor, with canonical identity and composition isomorphisms.
- `UnitaryRZ.ext` (extensionality): A polarized O_L-linear isomorphism commuting with ρ determines the arrow; an automorphism inducing identity under ρ is identity.

**Named checks:**

- `UnitaryRZ.rankOne`: For n=1 the deformation has no relative parameters; its representing space is Spf O_breveL.
- `UnitaryRZ.rejectHeight`: An O_L-linear quasi-isogeny of nonzero height does not define a point of N_n.
- `UnitaryRZ.rejectSimilitude`: Replacing λ by cλ with c≠1 while fixing ρ fails the exact polarization equation.

**Uses:**

- PELModuliPartII:U1/unramified-smoothness: Supplies this datum to the consumer’s construction or proof: Apply the requested formal PEL representability theorem to the polarized height-zero component.
- PELModuliPartII:U1/product-embedding: Supplies this datum to the consumer’s construction or proof: Form products using the abelian/p-divisible supplier and check signatures add.
- PELModuliPartII:U2/mixed-framed-space: Supplies this datum to the consumer’s construction or proof: Choose once the framing isogeny matching W_n⊥Lx_0.
- PELModuliPartII:U9/inert-uniformization: Supplies this datum to the consumer’s construction or proof: Apply Θ with the exact good/almost self-dual integral conditions.

**Acceptance:**

- For n=1 the deformation has no relative parameters; its representing space is Spf O_breveL.
- An O_L-linear quasi-isogeny of nonzero height does not define a point of N_n.

**Atlas name:** Unramified unitary Rapoport–Zink space.

### Representability and smoothness

**Target:** `PELModuliPartII:U1/unramified-smoothness` (theorem).

The functor N_n is represented by a separated formal scheme locally formally of finite type over Spf O_breveL, formally smooth of relative dimension n−1. The topology is the representing Rapoport–Zink topology, not an assertion that the whole space is quasi-compact or p-adic.

**Additional hypotheses:** L/K unramified quadratic; p>2; n≥1; NIL base category of U0; fix a supersingular framing of the indicated signature and polarization.

**Prerequisites:** `PELModuliPartII:U1/unramified-rz`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`, `SchemeAndStackFoundations:SF.4`, `PELModuli:M2/unitary-deformation`, `PELModuliPartII:U0/relative-local-model`.

**Source:** LZ22, §2.1, p. 10; RZ96 Theorem 3.25, p. 88.

**Construction or proof:**

1. Apply the requested formal PEL representability theorem to the polarized height-zero component.
2. Use strict-module Grothendieck–Messing theory: the unramified two-character Hodge filtration is determined by a line in a rank-n summand.
3. The local Grassmannian is smooth of dimension n−1; descend formal charts.

**Acceptance:**

- For n=1 obtain Spf O_breveL.
- For n=2 completed local charts at geometric points have one formally smooth parameter.

**Atlas name:** Unramified deformation theorem.

### Canonical rank-one source

**Target:** `PELModuliPartII:U1/rank-one-lift` (construction).

For a fixed supersingular signature-(1,0) principal module 𝔈, construct its unique deformation ℰ over O_breveL with framing. Conjugating the O_L-action gives bar ℰ of signature (0,1), and its special fibre bar 𝔈. Uniqueness is in the framed groupoid; changing the framing is retained as an automorphism-group action.

**Prerequisites:** `PELModuliPartII:U1/unramified-smoothness`, `PELModuliPartII:U0/signature-conjugation`.

**Source:** LZ22, §2.1, p. 10.

**Construction or proof:**

1. Apply the dimension-zero deformation calculation to n=1.
2. Glue the unique compatible Artin-level lifts using formal representability.
3. Conjugate the integral action and framing.

**API:**

- `UnitaryRankOne.lift` (constructor): Return the unique framed lift ℰ of 𝔈.
- `UnitaryRankOne.conjugate` (compatibility): Conjugation yields signature (0,1) and preserves the principal polarization.
- `UnitaryRankOne.unique` (characterisation): Every framed deformation is uniquely isomorphic to the base change of ℰ.

**Named checks:**

- `UnitaryRankOne.relativeHeight`: Both ℰ and bar ℰ have relative height 2 and dimension 1.
- `UnitaryRankOne.doubleConjugate`: Conjugating twice recovers the framed lift.
- `UnitaryRankOne.lieAction`: The Lie action on bar ℰ is conjugate to the structural embedding.

**Uses:**

- PELModuliPartII:U1/special-hom: Supplies this datum to the consumer’s construction or proof: Use the supplier rational Dieudonné classification to identify Hom^0 and rank.
- PELModuliPartII:U1/product-embedding: Supplies this datum to the consumer’s construction or proof: Form products using the abelian/p-divisible supplier and check signatures add.
- PELModuliPartII:U2/split-special-hom: Supplies this datum to the consumer’s construction or proof: Compute rational Hom from the same isocrystal supplier with the new polarization lattice.

**Acceptance:**

- Both ℰ and bar ℰ have relative height 2 and dimension 1.
- Conjugating twice recovers the framed lift.

**Atlas name:** Canonical rank-one lift.

### Rank-raising framed embedding

**Target:** `PELModuliPartII:U1/product-embedding` (construction).

After fixing 𝕏_{n+1}=𝕏_n×bar 𝔈 and product principal polarization, define δ:N_n→N_{n+1} by X↦X×bar ℰ, with product action, polarization and framing. Its signature is (1,n), and δ is a closed immersion. Under conjugate Zhang conventions the added source is ℰ of signature (1,0).

**Prerequisites:** `PELModuliPartII:U1/rank-one-lift`, `PELModuliPartII:U1/unramified-rz`, `PELModuliPartII:U1/unramified-smoothness`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`.

**Source:** LZ22, §4.5, p. 23; Zhang21 §3.2, pp. 881–882.

**Construction or proof:**

1. Form products using the abelian/p-divisible supplier and check signatures add.
2. Recover the fixed factor by its integral projection; its liftability cuts out a closed subfunctor.
3. Use the framed rigidity and formal representability suppliers to identify the closed immersion.

**API:**

- `UnitaryRZ.productEmbedding` (constructor): Construct δ with its fixed product-framing identification.
- `UnitaryRZ.productEmbedding_pullback` (functoriality): The product construction commutes with base change.
- `UnitaryRZ.productEmbedding_polarization` (compatibility): The pullback object carries λ_X×λ_barℰ, not a rescaled second factor.

**Named checks:**

- `UnitaryRZ.productSignature`: At n=1 the product has signature (1,1) and relative height 4.
- `UnitaryRZ.productNoSwap`: Adding ℰ in the (1,n−1) convention gives (2,n−1), hence fails the target signature when n≥2.
- `UnitaryRZ.productClosed`: For a deformation on the target, membership is equivalent to lifting the specified fixed direct factor and its orthogonal projection.

**Uses:**

- PELModuliPartII:U1/diagonal-graph: Supplies this datum to the consumer’s construction or proof: Take the graph of the closed product-embedding map.

**Acceptance:**

- At n=1 the product has signature (1,1) and relative height 4.
- Adding ℰ in the (1,n−1) convention gives (2,n−1), hence fails the target signature when n≥2.

**Atlas name:** Rank-raising embedding.

### Unramified Hermitian special Hom space

**Target:** `PELModuliPartII:U1/special-hom` (construction).

Set V_n=Hom^0_{O_L}(bar 𝔈,𝕏), with h(x,y)=λ_bar𝔈^−1 y^∨ λ_𝕏 x, viewed as an element of L through End^0_{O_L}(bar 𝔈)=L. Use the convention linear in x and conjugate-linear in y. This is an n-dimensional nonsplit nondegenerate L/K-Hermitian space; composition identifies U(V_n) with the O_L-linear polarized self-quasi-isogenies of 𝕏.

**Prerequisites:** `PELModuliPartII:U1/rank-one-lift`, `PELModuli:M0/hermitian-space`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`.

**Source:** LZ22, §2.1, pp. 10–11.

**Construction or proof:**

1. Use the supplier rational Dieudonné classification to identify Hom^0 and rank.
2. Apply the Rosati equation to prove sesquilinearity and Hermitian symmetry.
3. Calculate the determinant invariant of the supersingular framing; faithful action on Hom identifies the isometry group.

**API:**

- `UnitarySpecialHom.form` (projection): Expose the displayed polarization pairing on rational homomorphisms.
- `UnitarySpecialHom.adjoint` (compatibility): h(ax,by)=a h(x,y) b-bar and h(y,x)=h(x,y)-bar.
- `UnitarySpecialHom.quasiIsogenyGroup` (equivalence): Composition induces an isomorphism from framing isometries to U(V_n).
- `UnitarySpecialHom.action` (functoriality): An isometry g acts on N_n by ρ↦g∘ρ, with (gh) acting as g after h.

**Named checks:**

- `UnitarySpecialHom.rank`: For n=2 the L-dimension is 2, while the framing has relative height 4.
- `UnitarySpecialHom.sourceMatters`: Replacing bar 𝔈 by 𝔈 without conjugating the framing is not the declared special-Hom convention.
- `UnitarySpecialHom.scalarAction`: For a∈L with a a-bar=1, scalar composition is an isometry and acts through the same quasi-isogeny on ρ.

**Uses:**

- PELModuliPartII:U2/split-special-hom: Supplies this datum to the consumer’s construction or proof: Compute rational Hom from the same isocrystal supplier with the new polarization lattice.
- PELModuliPartII:U9/nearby-framing-datum: Supplies this datum to the consumer’s construction or proof: Invoke the exact two-place Landherr existence and uniqueness supplier, not merely classification of a generic PEL datum.
- PELModuliPartII:U1/diagonal-graph: Supplies this datum to the consumer’s construction or proof: Take the graph of the closed product-embedding map.

**Acceptance:**

- For n=2 the L-dimension is 2, while the framing has relative height 4.
- Replacing bar 𝔈 by 𝔈 without conjugating the framing is not the declared special-Hom convention.

**Atlas name:** Unitary special Hom space.

### Unitary diagonal graph

**Target:** `PELModuliPartII:U1/diagonal-graph` (construction).

For n≥2 and the chosen recursive framings, let δ:N_{n−1}→N_n be U1/product-embedding and set Δ=(id,δ):N_{n−1}→N_{n−1}×N_n. It is a closed immersion, equivariant for the diagonal copy of U(V_{n−1}) through the fixed unit-vector inclusion V_{n−1}→V_n. Its image has relative dimension n−2 in an ambient product of relative dimension 2n−3. In the arithmetic dimension convention including the coefficient DVR, its dimension n−1 is half the ambient dimension 2n−2; this distinction is retained for consumers.

**Prerequisites:** `PELModuliPartII:U1/product-embedding`, `PELModuliPartII:U1/special-hom`, `PELModuliPartII:U1/unramified-smoothness`, `SchemeAndStackFoundations:SF.4`.

**Source:** Zhang21, §3.1, equations (3.3)–(3.6), pp. 880–881.

**Construction or proof:**

1. Take the graph of the closed product-embedding map.
2. Use the chosen unit-vector summand to verify diagonal equivariance of its two components.
3. Compute relative and absolute dimensions separately.

**API:**

- `UnitaryDiagonal.graph` (constructor): Construct (id,δ) with its graph closed-immersion structure.
- `UnitaryDiagonal.first` (projection): The first projection restricted to Δ is the identity on N_{n−1}.
- `UnitaryDiagonal.second` (compatibility): The second projection restricted to Δ is δ.
- `UnitaryDiagonal.equivariant` (functoriality): The graph action is compatible with the diagonal subgroup inclusion determined by the unit vector.

**Named checks:**

- `UnitaryDiagonal.nTwo`: For n=2 the graph has relative dimension zero in relative dimension one.
- `UnitaryDiagonal.absolute`: For n=3 absolute dimensions are 2 and 4, while relative dimensions are 1 and 3.
- `UnitaryDiagonal.factor`: The graph uses the canonical conjugate rank-one factor in the (1,n−1) convention.

**Uses:**

- Zhang21 §3.1, equations (3.3)–(3.6), pp. 880–881: Provides the level-compatible object or comparison used by the geometric cycle consumers; its explicit arrows and transported polarizations are required before forming their incidence or lifting loci.

**Acceptance:**

- For n=2 the graph has relative dimension zero in relative dimension one.
- For n=3 absolute dimensions are 2 and 4, while relative dimensions are 1 and 3.

## U2 — Almost self-dual and mixed moduli

For n≥2 define the signature-(1,n−1) framed functor with polarization kernel killed by ϖ of order q², and prove flat regular semistable geometry over its natural coefficient ring. Construct its split Hermitian special-Hom space and the mixed isogeny functor using the conjugate source bar ℰ, fixed rational framing, unique lift and pullback λ_Y×ϖλ_barℰ. Prove the first projection generically finite étale of degree q+1 and the second generically an isomorphism onto its image; the local isogeny degree is q².

**Layer imports:** `AbelianSchemesAndArithmeticModuli:A4`, `AdicSpacesPartII:R2`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.1`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuliPartII:U0`, `PELModuliPartII:U1`, `SchemeAndStackFoundations:SF.4`.

### Almost self-dual framed functor

**Target:** `PELModuliPartII:U2/almost-self-dual-rz` (definition).

N_n^1(S) classifies signature-(1,n−1) strict hermitian O_L-modules Y with relative polarization λ whose kernel is contained in Y[ϖ] and is finite locally free of order q², and a height-zero framing ρ to 𝕐 with ρ*λ_𝕐=λ. Here ϖ is a uniformizer of K and q=#k_K. Keep the kernel containment and its order as independent clauses; this is not the principal-polarization functor.

**Additional hypotheses:** Assume the U1 local field conditions and n≥2. Fix a supersingular signature-(1,n−1) framing 𝕐 with the polarization kernel specified below.

**Prerequisites:** `PELModuliPartII:U0/principal-hermitian-module`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.1/p-divisible-group`, `SchemeAndStackFoundations:SF.4`.

**Source:** LZ22, §10.2, pp. 64–65; Cho18 Theorem 1.2, p. 4.

**Construction or proof:**

1. Replace the principal condition in the U1 framed construction by the prescribed finite flat kernel type.
2. Check duality and Rosati on the isogeny rather than assuming an everywhere perfect Hodge pairing.
3. Descend the kernel and framing conditions along the base site.

**API:**

- `AlmostSelfDualRZ.ofData` (constructor): Construct from Y,i,λ,ρ and the order-q² kernel contained in Y[ϖ].
- `AlmostSelfDualRZ.kernel` (projection): Return the finite locally free polarization kernel with its containment.
- `AlmostSelfDualRZ.baseChange` (functoriality): Kernel type, signature and framed polarization commute with base change.
- `AlmostSelfDualRZ.exactPolarization` (characterisation): The framing carries λ exactly to the fixed almost self-dual polarization.

**Named checks:**

- `AlmostSelfDualRZ.order`: For q=3 the required kernel order is 9, independent of n≥2.
- `AlmostSelfDualRZ.notPrincipal`: A principal polarization has kernel order 1 and is rejected.
- `AlmostSelfDualRZ.killedByUniformizer`: A kernel of order q² not killed by ϖ is rejected.

**Uses:**

- PELModuliPartII:U2/almost-self-dual-geometry: Supplies this datum to the consumer’s construction or proof: Use formal representability with fixed kernel type.
- PELModuliPartII:U2/split-special-hom: Supplies this datum to the consumer’s construction or proof: Compute rational Hom from the same isocrystal supplier with the new polarization lattice.
- PELModuliPartII:U2/mixed-framed-space: Supplies this datum to the consumer’s construction or proof: Choose once the framing isogeny matching W_n⊥Lx_0.
- PELModuliPartII:U8/ltxzz-asd-moduli: Supplies this datum to the consumer’s construction or proof: Keep the same CM factor and arrows as in the smooth adapter.
- PELModuliPartII:U9/inert-uniformization: Supplies this datum to the consumer’s construction or proof: Apply Θ with the exact good/almost self-dual integral conditions.

**Acceptance:**

- For q=3 the required kernel order is 9, independent of n≥2.
- A principal polarization has kernel order 1 and is rejected.

**Atlas name:** Almost self-dual Rapoport–Zink space.

### Almost self-dual deformation theorem

**Target:** `PELModuliPartII:U2/almost-self-dual-geometry` (theorem).

N_n^1 is a separated locally formally finite type formal scheme, regular and flat of relative dimension n−1 with semistable reduction over O_breveL. This assertion is over its natural unramified local coefficient ring. A ramified extension of the coefficient ring need not preserve regularity or semistability.

**Additional hypotheses:** Assume the U1 local field conditions and n≥2. Fix a supersingular signature-(1,n−1) framing 𝕐 with the polarization kernel specified below.

**Prerequisites:** `PELModuliPartII:U2/almost-self-dual-rz`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `SchemeAndStackFoundations:SF.4`.

**Source:** Cho18, Theorem 1.2, p. 4; §3.9; compare LZ22 §10.2, p. 64.

**Construction or proof:**

1. Use formal representability with fixed kernel type.
2. Apply the requested unitary local-model input and its smooth deformation comparison.
3. Read the semistable local equations over the natural coefficient ring; use them for flatness and regularity.

**Acceptance:**

- At a crossing a completed local chart is an étale/formally smooth extension of uv−ϖ.
- Under ramified base change uv−t^e for e>1 is not a regular crossing chart.

**Atlas name:** Almost self-dual deformation theorem.

### Almost self-dual special Hom space

**Target:** `PELModuliPartII:U2/split-special-hom` (construction).

Put W_n=Hom^0_{O_L}(bar 𝔈,𝕐) with h(x,y)=λ_bar𝔈^−1 y^∨λ_𝕐 x. It is the split n-dimensional Hermitian space. Choose the rank-one vector x_0 of norm ϖ in a nonsplit V_{n+1} and a framing identification V_{n+1}=W_n⊥Lx_0. Use the same conjugate rank-one source bar 𝔈 as in U1; the changed target polarization type and norm scaling are part of this identification.

**Prerequisites:** `PELModuliPartII:U1/rank-one-lift`, `PELModuliPartII:U2/almost-self-dual-rz`, `PELModuliPartII:U1/special-hom`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`.

**Source:** LZ22, §10.2, equations (10.2.1)–(10.2.2), pp. 64–65.

**Construction or proof:**

1. Compute rational Hom from the same isocrystal supplier with the new polarization lattice.
2. Use Hermitian discriminant classification to identify the split invariant.
3. Choose an isometry of the orthogonal sum with V_{n+1}; retain the chosen identification.

**API:**

- `AlmostSelfDualHom.form` (projection): Return h using the conjugate source bar 𝔈 of signature (0,1), as in U1.
- `AlmostSelfDualHom.orthogonalExtension` (equivalence): Identify W_n⊥⟨ϖ⟩ with the selected V_{n+1}.
- `AlmostSelfDualHom.unitaryEmbedding` (functoriality): An isometry of W_n extends by identity on x_0 and gives a homomorphism U(W_n)→U(V_{n+1}).

**Named checks:**

- `AlmostSelfDualHom.norm`: The distinguished vector in the extension has norm ϖ, not 1.
- `AlmostSelfDualHom.discriminant`: The split invariant of W_n differs from the nonsplit invariant of the principal-framing V_n.
- `AlmostSelfDualHom.fixVector`: The extended isometry fixes x_0 and preserves its orthogonal complement.

**Uses:**

- PELModuliPartII:U2/mixed-framed-space: Supplies this datum to the consumer’s construction or proof: Choose once the framing isogeny matching W_n⊥Lx_0.
- PELModuliPartII:U9/nearby-framing-datum: Supplies this datum to the consumer’s construction or proof: Invoke the exact two-place Landherr existence and uniqueness supplier, not merely classification of a generic PEL datum.

**Acceptance:**

- The distinguished vector in the extension has norm ϖ, not 1.
- The split invariant of W_n differs from the nonsplit invariant of the principal-framing V_n.

**Atlas name:** Split special Hom space.

### Auxiliary isogeny space

**Target:** `PELModuliPartII:U2/mixed-framed-space` (construction).

Construct Ñ_n with points (Y,X,α), where Y∈N_n^1, X∈N_{n+1}, and α:Y×bar ℰ→X is an O_L-linear isogeny with kernel contained in (Y×bar ℰ)[ϖ], compatible with the fixed rational framings, and satisfying α*λ_X=λ_Y×ϖλ_barℰ. Write π_1 and π_2 for the two forgetful maps. In the induced rational special-Hom description the distinguished rank-one direction has norm ϖ. For a fixed pair (Y,X) and the chosen rational framing isogeny, the integral lift α is unique if it exists; Ñ is a closed subfunctor of N_n^1×N_{n+1}. The source has signature (1,n), since bar ℰ has signature (0,1), and deg α=q².

**Prerequisites:** `PELModuliPartII:U2/almost-self-dual-rz`, `PELModuliPartII:U2/split-special-hom`, `PELModuliPartII:U1/unramified-rz`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.1/p-divisible-group`, `SchemeAndStackFoundations:SF.4`.

**Source:** LZ22, §10.2, p. 65.

**Construction or proof:**

1. Choose once the framing isogeny matching W_n⊥Lx_0.
2. Represent the prescribed finite flat kernel and pullback-polarization conditions by the requested isogeny/local-model supplier.
3. Construct the two projections and verify their base changes.

**API:**

- `MixedUnitaryRZ.ofIsogeny` (constructor): Construct a point from α with its killed-by-ϖ kernel and exact polarization equation.
- `MixedUnitaryRZ.first` (projection): Forget X and α to obtain Y∈N_n^1.
- `MixedUnitaryRZ.second` (projection): Forget Y and α to obtain X∈N_{n+1}.
- `MixedUnitaryRZ.pullback` (functoriality): Both projections commute with nilpotent-base pullback.
- `MixedUnitaryRZ.liftUnique` (extensionality): For the same pair (Y,X) and fixed rational framing isogeny, two integral lifts agree by rigidity; this is not uniqueness of the target given Y alone.

**Named checks:**

- `MixedUnitaryRZ.degree`: The polarization degree equation forces deg α=q²: deg λ_Y=q² and deg(ϖλ_barℰ)=q², so (deg α)²=q⁴.
- `MixedUnitaryRZ.scaling`: Replacing ϖλ_barℰ by λ_barℰ changes the polarization equation and does not define the same auxiliary functor.
- `MixedUnitaryRZ.projections`: Two objects with the same Y can have distinct isogeny choices; π_1 does not discard a uniqueness datum.
- `MixedUnitaryRZ.signature`: At n=2, Y×bar ℰ has signature (1,2). Substituting ℰ gives (2,1) and cannot be isogenous in characteristic zero to the specified N₃ target.

**Uses:**

- PELModuliPartII:U2/mixed-generic-projections: Supplies this datum to the consumer’s construction or proof: Invert the coefficient uniformizer and describe the isogeny choices by the residual two-dimensional Hermitian quotient.
- PELModuliPartII:U8/mixed-global-moduli: Supplies this datum to the consumer’s construction or proof: Choose V♯, u₀, the local self-dual overlattice and the other levels exactly as in §13.4; impose the isogeny relation in the localized abelian-scheme category.
- PELModuliPartII:U9/mixed-uniformization: Supplies this datum to the consumer’s construction or proof: Use Serre–Tate full faithfulness for the finite-kernel isogeny α as well as its source and target.

**Acceptance:**

- The polarization degree equation forces deg α=q^(n+1); ker λ_Y has order q² and deg(ϖλ_barℰ)=q².
- Replacing ϖλ_barℰ by λ_barℰ changes the polarization equation and does not define the same auxiliary functor.

**Atlas name:** Auxiliary isogeny space.

### Generic projection comparison

**Target:** `PELModuliPartII:U2/mixed-generic-projections` (theorem).

On rigid/adic generic fibres of the representing spaces, π_1:Ñ_n→N_n^1 is finite étale of degree q+1 and π_2 is an isomorphism onto its image. These generic assertions do not supply an integral isomorphism or integral closed immersion for π_2.

**Prerequisites:** `PELModuliPartII:U2/mixed-framed-space`, `AdicSpacesPartII:R2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`.

**Source:** LZ22, §10.2, Remark 10.2.1, p. 65; Conjecture 10.4.1, p. 67.

**Construction or proof:**

1. Invert the coefficient uniformizer and describe the isogeny choices by the residual two-dimensional Hermitian quotient.
2. There are q+1 admissible isotropic directions; in characteristic zero the finite torsion is étale.
3. Recover the isogeny from its target and the fixed distinguished direction to identify the second map with its generic image.

**Acceptance:**

- For q=3 the first generic projection has degree 4.
- The generic assertions follow without an integral resolution theorem; LRZ26 Theorem 14.6.2 now proves integral finite flatness of π₁ and a proper resolution by π₂, not an integral isomorphism of Ñ with its lifting divisor.

**Atlas name:** Generic isogeny projections.

## U3 — Relative exotic ramified moduli

For ramified quadratic L/K, p>2 and even n≥2 impose the exact exotic polarization kernel X[i(u)], signature, wedge and nonzero-spin conditions; distinguish the symmetric principal factor. Construct the relative framed space, smooth of relative dimension n−1, its principal rank-one CM source and u^−2-normalized nonsplit special-Hom form. Certify the two components for K=Q_p and record G1 for arbitrary K.

**Layer imports:** `AbelianSchemesAndArithmeticModuli:A4`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.1`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuli:M0`, `PELModuliPartII:U0`, `SchemeAndStackFoundations:SF.4`.

### Relative exotic unitary modules

**Target:** `PELModuliPartII:U3/exotic-relative` (definition).

Define Exo(n−1,1) over the nilpotent base category by strict formal O_K-modules of relative height 2n and dimension n with O_L-action, determinant (T−u)^(n−1)(T+u) on Lie, wedge equation Λ²(i(u)−u)=0, and spin condition that i(u) is nonzero on Lie at every geometric point. The O_L-compatible relative polarization λ satisfies ker λ=X[i(u)] and Rosati conjugation. Morphisms pull λ back exactly. Define Exo(n,0) by structural O_L-action on Lie and the same height, dimension and polarization-kernel condition. Restrict to supersingular objects for the framed basic functor.

**Additional hypotheses:** L/K ramified quadratic, p>2, u a uniformizer of L with u-bar=−u, n even and n≥2; strict relative O_K-module conventions as in U0.

**Prerequisites:** `PELModuliPartII:U0/principal-hermitian-module`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.1/p-divisible-group`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `PELModuli:M0/determinant-condition`.

**Source:** LL22, §2.1, Definition 2.1 and Remark 2.2, pp. 9–10.

**Construction or proof:**

1. Use the strict-module carrier, keeping the nonprincipal polarization instead of inheriting the principal condition.
2. Impose determinant, wedge, spin and exact finite-kernel conditions separately.
3. Verify that each condition is preserved under the permitted base changes.

**API:**

- `ExoticModule.ofData` (constructor): Construct from the strict module with all four Lie/polarization conditions.
- `ExoticModule.kernel` (projection): Identify ker λ with X[i(u)], as finite flat subgroup schemes.
- `ExoticModule.baseChange` (functoriality): Base change preserves the defining conditions and exact-polarization arrows.
- `ExoticModule.spin` (characterisation): At each geometric point i(u) on Lie is nonzero, in addition to the wedge equation.

**Named checks:**

- `ExoticModule.height`: At n=2 the relative height is 4 and dimension 2.
- `ExoticModule.rejectZeroSpin`: A geometric Lie action i(u)=0 satisfying determinant and wedge equations is excluded by spin.
- `ExoticModule.notPrincipal`: Since X[i(u)] has nontrivial order, a principal polarization is not the required exotic polarization.

**Uses:**

- PELModuliPartII:U3/exotic-symmetrization: Supplies this datum to the consumer’s construction or proof: Factor λ through i(u) using equality of their kernels.
- PELModuliPartII:U3/exotic-rz: Supplies this datum to the consumer’s construction or proof: Apply polarized formal PEL representability on the fixed-height component.
- PELModuliPartII:U4/absolute-exotic: Supplies this datum to the consumer’s construction or proof: Use the unramified idempotent decomposition of the polarized display supplier.

**Acceptance:**

- At n=2 the relative height is 4 and dimension 2.
- A geometric Lie action i(u)=0 satisfying determinant and wedge equations is excluded by spin.

**Atlas name:** Exotic unitary modules.

### Symmetric principal form comparison

**Target:** `PELModuliPartII:U3/exotic-symmetrization` (comparison).

For an exotic module λ there is a unique O_L-compatible symmetric principal isomorphism σ:X→X^∨ with λ=σ∘i(u). Thus σ^∨=σ, whereas λ is the relative alternating polarization. This comparison does not turn λ into a principal polarization.

**Prerequisites:** `PELModuliPartII:U3/exotic-relative`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`.

**Source:** LL22, §2.1, Remark 2.2, p. 10.

**Construction or proof:**

1. Factor λ through i(u) using equality of their kernels.
2. The quotient factor is principal; use Rosati conjugation and u-bar=−u to compute its transpose.
3. Use surjectivity of i(u) to obtain uniqueness.

**Acceptance:**

- The factor σ is symmetric, not alternating.
- Reconstruct λ by multiplication by i(u), retaining its original kernel.

### Relative exotic framed space

**Target:** `PELModuliPartII:U3/exotic-rz` (construction).

Fix a supersingular framing 𝕏∈Exo(n−1,1). N^exo classifies X∈Exo(n−1,1) with a height-zero O_L-linear framing ρ to 𝕏 on the uniformizer-zero subscheme and ρ*λ_𝕏=λ_X. Arrows preserve the action, exact polarization and framing. This functor is represented by a separated formal scheme locally formally of finite type over O_breveL.

**Prerequisites:** `PELModuliPartII:U3/exotic-relative`, `PELModuliPartII:U3/exotic-symmetrization`, `SchemeAndStackFoundations:SF.4`.

**Source:** LL22, §2.1, Definitions 2.3–2.4, pp. 10–11.

**Construction or proof:**

1. Apply polarized formal PEL representability on the fixed-height component.
2. Impose wedge and spin and the fixed kernel condition in the local-model chart.
3. Use rigidity to identify the representing groupoid with the framed set-valued functor.

**API:**

- `ExoticRZ.ofFraming` (constructor): Attach a height-zero exact-polarization framing to an exotic module.
- `ExoticRZ.forget` (projection): Return the relative exotic module.
- `ExoticRZ.baseChange` (functoriality): Pullback transports both the integral module and its reduced framing.
- `ExoticRZ.action` (functoriality): A polarized framing self-quasi-isogeny acts by postcomposition on ρ.

**Named checks:**

- `ExoticRZ.rejectSimilitude`: A framing with multiplier c≠1 is rejected in this normalization.
- `ExoticRZ.specialFibre`: The framing is required only over the uniformizer-zero subscheme, while X is defined over S.
- `ExoticRZ.heightZero`: An O_L-linear quasi-isogeny with nonzero height is not an allowed framing.

**Uses:**

- PELModuliPartII:U3/exotic-smoothness: Supplies this datum to the consumer’s construction or proof: Use the even-rank exotic local-model smoothness calculation.
- PELModuliPartII:U3/exotic-special-hom: Supplies this datum to the consumer’s construction or proof: Compute Hom and adjoints in the rational relative Dieudonné category.
- PELModuliPartII:U4/exotic-framed-comparison: Supplies this datum to the consumer’s construction or proof: Transport framed objects and the two framings under the categorical equivalence.

**Acceptance:**

- A framing with multiplier c≠1 is rejected in this normalization.
- The framing is required only over the uniformizer-zero subscheme, while X is defined over S.

**Atlas name:** Exotic Rapoport–Zink space.

### Exotic good reduction theorem

**Target:** `PELModuliPartII:U3/exotic-smoothness` (theorem).

N^exo is formally smooth of relative dimension n−1. For K=Q_p it has exactly two connected components N^+ and N^−, distinguished by the parity/Kottwitz invariant. The two-component assertion for an arbitrary ramified ground field K is a separate recorded gap, rather than an inference from the absolute comparison in U4.

**Additional hypotheses:** L/K ramified quadratic, p>2, u a uniformizer of L with u-bar=−u, n even and n≥2; strict relative O_K-module conventions as in U0.

**Prerequisites:** `PELModuliPartII:U3/exotic-rz`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`, `SchemeAndStackFoundations:SF.4`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`.

**Source:** LL22, §2.1, p. 11 and footnote 8; Wu16 Theorems 5.17–5.18, pp. 30–31.

**Construction or proof:**

1. Use the even-rank exotic local-model smoothness calculation.
2. For K=Q_p use Wu’s decomposition by Kottwitz parity and the connectivity proof via the incidence complex.
3. For general K retain the source claim as a target whose component proof requires the gap recorded in this packet.

**Acceptance:**

- At n=2 each smooth component has relative dimension 1.
- No arbitrary-K connectivity conclusion is justified just by the unramified absolute-to-relative equivalence.
- Resolve G1 before accepting the arbitrary-K two-component assertion; only the K=Q_p assertion is source-certified here.

**Atlas name:** Exotic good reduction.

### Principal ramified CM source

**Target:** `PELModuliPartII:U3/rank-one-source` (construction).

Fix a supersingular strict O_K-module X₀ of relative height 2 and dimension 1, with O_L-action of signature (1,0) and principal relative polarization λ₀ with conjugate Rosati involution. Its chosen exact-polarization, height-zero framed deformation has a unique canonical lift over O_breveL. This is a principal CM source; it is not an object of the even-rank exotic category and does not have polarization kernel X₀[i(u)]. Its rational O_L-linear endomorphism algebra is L.

**Prerequisites:** `PELModuliPartII:U0/principal-hermitian-module`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `SchemeAndStackFoundations:SF.4`.

**Source:** LL22, §2.1, paragraph preceding equation (2.3), pp. 10–11; §2.8, paragraph preceding (2.25), p. 43.

**Construction or proof:**

1. Use the strict CM deformation theorem with the structural O_L Lie character.
2. Choose the framing component and transport the principal polarization through the unique CM lift.
3. Compute rational endomorphisms from the rank-one CM display.

**API:**

- `ExoticCMSource.lift` (constructor): Construct the canonical principal lift of the chosen framed CM source.
- `ExoticCMSource.endomorphisms` (equivalence): Identify End⁰_{O_L}(X₀) with L.
- `ExoticCMSource.principal` (compatibility): The source polarization is principal, even though the target exotic polarization is not.
- `ExoticCMSource.baseChange` (functoriality): The framed CM lift commutes with nilpotent base change.

**Named checks:**

- `ExoticCMSource.rankOne`: The relative height is 2 and dimension is 1.
- `ExoticCMSource.kernel`: The principal source has trivial polarization kernel, so the target exotic kernel equation is rejected.
- `ExoticCMSource.character`: The source Lie character is structural; replacing it by the conjugate character changes the chosen source.

**Uses:**

- PELModuliPartII:U3/exotic-special-hom: Supplies this datum to the consumer’s construction or proof: Compute Hom and adjoints in the rational relative Dieudonné category.
- PELModuliPartII:U4/principal-source-comparison: Supplies this datum to the consumer’s construction or proof: Contract the principal CM display around its embedding cycle, keeping its principal pairing.

**Acceptance:**

- The relative height is 2 and dimension is 1.
- The principal source has trivial polarization kernel, so the target exotic kernel equation is rejected.

### Exotic normalized special Hom space

**Target:** `PELModuliPartII:U3/exotic-special-hom` (construction).

On V^exo=Hom^0_{O_L}(X_0,𝕏), use h(x,y)=u^−2 λ_0^−1 y^∨λ_𝕏 x. It is a nondegenerate nonsplit L/K-Hermitian space of dimension n. The u^−2 normalization, the principal rank-one CM source and the target’s symmetric principal factor are retained when identifying its unitary group with the framing isometries.

**Prerequisites:** `PELModuliPartII:U3/exotic-symmetrization`, `PELModuliPartII:U3/exotic-rz`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `PELModuliPartII:U3/rank-one-source`.

**Source:** LL22, §2.1, equation (2.3) and Remark 2.4, pp. 10–11.

**Construction or proof:**

1. Compute Hom and adjoints in the rational relative Dieudonné category.
2. Use the principal source polarization and target adjoint relation to prove Hermitian symmetry; retain the declared u^−2 scalar and the target symmetric factor.
3. Compute the Hermitian invariant and identify the group action by composition.

**API:**

- `ExoticSpecialHom.form` (projection): Expose the u^−2-normalized form.
- `ExoticSpecialHom.unitaryGroup` (equivalence): Composition identifies framing isometries with the unitary group of h.
- `ExoticSpecialHom.baseChange` (functoriality): Isomorphisms of both polarized framings induce isometries of the resulting Hom space.

**Named checks:**

- `ExoticSpecialHom.scaling`: Omitting u^−2 multiplies h by u²; it is not equality of the declared forms.
- `ExoticSpecialHom.dimension`: The L-dimension is n, not 2n.
- `ExoticSpecialHom.symmetry`: The normalized pairing obeys h(y,x)=h(x,y)-bar despite the alternating λ factors.

**Uses:**

- PELModuliPartII:U4/exotic-framed-comparison: Supplies this datum to the consumer’s construction or proof: Transport framed objects and the two framings under the categorical equivalence.
- PELModuliPartII:U9/nearby-framing-datum: Supplies this datum to the consumer’s construction or proof: Invoke the exact two-place Landherr existence and uniqueness supplier, not merely classification of a generic PEL datum.
- PELModuliPartII:U9/exotic-uniformization: Supplies this datum to the consumer’s construction or proof: Fix the CM point and basic pair before defining the global Hom space, its normalization and the framing.

**Acceptance:**

- Omitting u^−2 multiplies h by u²; it is not equality of the declared forms.
- The L-dimension is n, not 2n.

**Atlas name:** Exotic special Hom space.

## U4 — Absolute and relative exotic comparison

With K/Q_p unramified, construct the absolute embedding-graded exotic category and banal Frobenius contraction with all pairing units. Prove the supersingular display equivalence and identify framed formal moduli. Contract the principal CM source separately and prove the normalized Hermitian rational-Hom isometry, retaining integral Hom lifting and chosen framing identifications.

**Layer imports:** `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `PELModuli:M0`, `PELModuliPartII:U3`, `SchemeAndStackFoundations:SF.4`.

### Absolute exotic module category

**Target:** `PELModuliPartII:U4/absolute-exotic` (definition).

Assume K/Q_p is unramified of degree f and L/K is ramified quadratic as in U3. For an admissible local CM type Φ, define Exo_Φ(n−1,1) using absolute p-divisible groups of height 2nf and dimension nf with O_L-action and the exotic polarization kernel. Decompose the display by the f embeddings of O_K. The distinguished summand has the signature, wedge and spin clauses of U3; every other summand has the prescribed banal O_L Lie character. Exact-polarization arrows and the supersingular subcategory are retained.

**Additional hypotheses:** L/K ramified quadratic, p>2, u a uniformizer of L with u-bar=−u, n even and n≥2; strict relative O_K-module conventions as in U0. K/Q_p unramified; Φ satisfies the local admissibility convention of LL22 §2.8.

**Prerequisites:** `PELModuliPartII:U3/exotic-relative`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `PELModuli:M0/generalized-cm-type`.

**Source:** LL22, §2.8, Definition 2.58, pp. 37–38.

**Construction or proof:**

1. Use the unramified idempotent decomposition of the polarized display supplier.
2. Impose the distinguished and banal conditions on the appropriate summands.
3. Verify that the absolute height and dimension sum over f embeddings.

**API:**

- `AbsoluteExotic.ofData` (constructor): Construct the absolute object from the full embedding-indexed Lie and polarization data.
- `AbsoluteExotic.summand` (projection): Extract each embedding component and its distinguished/banal status.
- `AbsoluteExotic.baseChange` (functoriality): Base change preserves the labeled decomposition and all conditions.
- `AbsoluteExotic.height` (compatibility): The absolute height and dimension are 2nf and nf.

**Named checks:**

- `AbsoluteExotic.degreeTwo`: For f=2 and n=2 the absolute height is 8 and dimension 4.
- `AbsoluteExotic.banalRestriction`: An object with a nonbanal Lie action at a nondistinguished embedding is rejected.
- `AbsoluteExotic.degreeOne`: For f=1 the absolute data have the single relative signature and kernel condition.

**Uses:**

- PELModuliPartII:U4/banal-display-contraction: Supplies this datum to the consumer’s construction or proof: Use the banal Lie condition to identify Q_i modulo I(R).
- PELModuliPartII:U7/exotic-global-model: Supplies this datum to the consumer’s construction or proof: Apply the unitary local-model diagram with the π-modular wedge and spin conditions.

**Acceptance:**

- For f=2 and n=2 the absolute height is 8 and dimension 4.
- An object with a nonbanal Lie action at a nondistinguished embedding is rejected.

**Atlas name:** Absolute exotic modules.

### Banal display contraction

**Target:** `PELModuliPartII:U4/banal-display-contraction` (lemma).

For a nondistinguished component i of an Exo_Φ object, Q_i=(u⊗1−1⊗[φ_i(u)])P_i+I(R)P_i and the normalized Frobenius F_i′ used by LL22 is a Frobenius-linear isomorphism. Its pairing correction is the unit ε_i defined by Vε_i=[ψ_i(u²)]−ψ̂_i(u²). These identities permit contraction without losing the integral display lattice.

**Prerequisites:** `PELModuliPartII:U4/absolute-exotic`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`.

**Source:** LL22, §2.8, Lemma 2.60, pp. 38–39.

**Construction or proof:**

1. Use the banal Lie condition to identify Q_i modulo I(R).
2. Apply the display relations and the ε_i unit to normalize F_i.
3. Check integrality in a normal decomposition, not solely after inverting p.

**Acceptance:**

- For f=1 there are no nondistinguished components to contract.
- A rational Frobenius isomorphism alone does not prove this integral statement.

### Exotic relative functor

**Target:** `PELModuliPartII:U4/exotic-relative-functor` (construction).

Choose μ in the coefficient Witt units satisfying F^f(μ)/μ=∏_{i=1}^{f−1}F^{f−1−i}(ε_i). Define rel by retaining (P_0,Q_0), contracting F_0 through the normalized banal Frobenius maps F′_1,…,F′_{f−1}, and multiplying the retained pairing by μ. This gives a functor rel:Exo_Φ,b(n−1,1)→Exo_b(n−1,1) over noetherian nilpotent bases, preserving polarized morphisms and rational homomorphisms.

**Prerequisites:** `PELModuliPartII:U4/banal-display-contraction`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `PELModuliPartII:U3/exotic-symmetrization`.

**Source:** LL22, §2.8, equations (2.20)–(2.22), pp. 39–40, in the dated author copy.

**Construction or proof:**

1. Solve the Frobenius difference equation for a unit μ in the chosen unramified coefficient ring.
2. Compose the normalized maps around the embedding cycle to obtain the relative display.
3. Check its display relations and pairing identities, using μ to cancel the ε-product.

**API:**

- `ExoticRelativeFunctor.apply` (constructor): Construct the contracted display and its μ-scaled pairing.
- `ExoticRelativeFunctor.morphism` (functoriality): Restrict a compatible display morphism to P_0 and preserve identities and composition.
- `ExoticRelativeFunctor.polarization` (compatibility): The μ correction gives the required relative polarization and kernel.
- `ExoticRelativeFunctor.quasiHom` (compatibility): Contraction commutes with inversion of p and sends rational homomorphisms to rational homomorphisms.

**Named checks:**

- `ExoticRelativeFunctor.fOne`: For f=1 choose μ=1; contraction and pairing correction are identities.
- `ExoticRelativeFunctor.height`: For f=2 relative height is 2n, while absolute height is 4n.
- `ExoticRelativeFunctor.rejectRamifiedK`: A ramified K/Q_p has no input to this unramified-idempotent construction.

**Uses:**

- PELModuliPartII:U4/exotic-relative-equivalence: Supplies this datum to the consumer’s construction or proof: Use a normal decomposition of the retained display to reconstruct each omitted component.
- PELModuliPartII:U4/principal-source-comparison: Supplies this datum to the consumer’s construction or proof: Contract the principal CM display around its embedding cycle, keeping its principal pairing.

**Acceptance:**

- For f=1 choose μ=1; contraction and pairing correction are identities.
- For f=2 relative height is 2n, while absolute height is 4n.

**Atlas name:** Exotic relative functor.

### Exotic display equivalence

**Target:** `PELModuliPartII:U4/exotic-relative-equivalence` (comparison).

The functor rel is an equivalence of the supersingular exotic module categories on noetherian nilpotent bases. A quasi-inverse reconstructs the banal components, and the equivalence identifies endomorphisms, adjoints and polarized rational Hom spaces. The hypotheses K/Q_p unramified and the noetherian nilpotent base are retained.

**Prerequisites:** `PELModuliPartII:U4/exotic-relative-functor`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`.

**Source:** LL22, §2.8, Proposition 2.62 and Lemma 2.63, pp. 40–42; Remark 2.68, p. 43.

**Construction or proof:**

1. Use a normal decomposition of the retained display to reconstruct each omitted component.
2. Check the unit and counit are integral display isomorphisms.
3. Descend endomorphisms through the component equations and check compatibility of the pairing.

**Acceptance:**

- The equivalence has a quasi-inverse on morphisms, not just a map of isomorphism classes.
- The source does not establish the ramified-K/Q_p version.

### Absolute principal CM source comparison

**Target:** `PELModuliPartII:U4/principal-source-comparison` (construction).

With unramified K/Q_p of degree f, let X₀,Φ be the principal CM source of absolute height 2f and dimension f: each ψ_i Lie summand has rank one and O_L acts through φ_i∈Φ. The principal polarized display contraction constructed as in LL22 (2.21) sends it to U3/rank-one-source and gives End_{O_L}(X₀,Φ)≅O_L and the matching rational Hom map into an exotic target. It is a separate principal-source comparison, not an application of the even-rank exotic category to rank one. Contracting source and target compatibly gives the isometry of the u^−2-normalized forms in (2.25).

**Prerequisites:** `PELModuliPartII:U3/rank-one-source`, `PELModuliPartII:U4/exotic-relative-functor`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`.

**Source:** LL22, §2.8, paragraph preceding equation (2.25) and Corollary 2.66, p. 43.

**Construction or proof:**

1. Contract the principal CM display around its embedding cycle, keeping its principal pairing.
2. Identify its retained rank-one relative source and O_L endomorphisms.
3. Restrict a Hom display morphism to the distinguished component and compare the source and target pairing corrections to obtain (2.25).

**API:**

- `PrincipalSourceComparison.contract` (constructor): Construct the relative principal source and its framed identification.
- `PrincipalSourceComparison.height` (compatibility): Absolute height 2f and dimension f become relative height 2 and dimension 1.
- `PrincipalSourceComparison.hom` (compatibility): The induced Hom map agrees with restriction to the distinguished display component and preserves the normalized form.
- `PrincipalSourceComparison.baseChange` (functoriality): The source comparison and its Hom map commute with allowed base changes.

**Named checks:**

- `PrincipalSourceComparison.fOne`: For f=1 and compatible choices the source comparison is the identity.
- `PrincipalSourceComparison.principal`: A source with kernel X₀[i(u)] is excluded from this principal comparison.
- `PrincipalSourceComparison.heightTwo`: For f=2 the absolute source has height 4 and dimension 2, while its relative source has height 2 and dimension 1.

**Uses:**

- PELModuliPartII:U4/exotic-framed-comparison: Supplies this datum to the consumer’s construction or proof: Transport framed objects and the two framings under the categorical equivalence.

**Acceptance:**

- For f=1 and compatible choices the source comparison is the identity.
- A source with kernel X₀[i(u)] is excluded from this principal comparison.

### Absolute and relative exotic spaces

**Target:** `PELModuliPartII:U4/exotic-framed-comparison` (comparison).

After choosing an identification rel(𝕏_Φ)≅𝕏 and the principal-source contraction of X_{0,Φ}≅X_0, rel induces an equivariant isomorphism N_Φ≅N^exo of framed formal schemes and an isometry V_Φ≅V^exo for the normalized u^−2 special-Hom forms. It transports the condition that a rational homomorphism is integral on a deformation; changing the chosen framing identifications conjugates the comparison.

**Prerequisites:** `PELModuliPartII:U4/exotic-relative-equivalence`, `PELModuliPartII:U3/exotic-rz`, `PELModuliPartII:U3/exotic-special-hom`, `SchemeAndStackFoundations:SF.4`, `PELModuliPartII:U4/principal-source-comparison`.

**Source:** LL22, §2.8, Corollaries 2.65–2.66, pp. 42–43.

**Construction or proof:**

1. Transport framed objects and the two framings under the categorical equivalence.
2. Use Lemma 2.63 for quasi-homomorphism descent and the polarization calculation for its isometry.
3. Apply formal Yoneda and compare the postcomposition actions.

**Acceptance:**

- For f=1 and identity framing choices the comparison is identity.
- Integrality of a rational homomorphism is preserved; no intersection-number theorem is needed.

## U5 — Krämer formal moduli

At a ramified quadratic odd prime construct the principal-polarization Krämer framed functor with its rank-(n−1) conjugate Lie filtration and unit-compatible framing. Prove flat regular semistable geometry via the actual Krämer charts, treating rank two directly. Construct the canonical ramified rank-one source, Hermitian isocrystal fixed space, its trace recovery and scaled evaluation comparison; retain odd/even framing signs.

**Layer imports:** `AbelianSchemesAndArithmeticModuli:A4`, `AlgebraicModuliForArithmeticGeometry:R09.1`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuliPartII:U0`, `SchemeAndStackFoundations:SF.4`.

### Krämer filtration

**Target:** `PELModuliPartII:U5/kramer-filtration` (definition).

For a principal hermitian module X of signature (1,n−1), a Krämer filtration is an O_L-stable locally direct summand F_X⊂Lie X of rank n−1 on which O_L acts by the conjugate structural embedding, with structural O_L-action on the rank-one quotient. The structural/conjugate assignment is exactly that of HLSY23 Definition 2.2; comparing another signature convention requires conjugating both actions. The filtration is integral extra data, not just the determinant condition.

**Additional hypotheses:** L/K ramified quadratic, p>2, u-bar=−u, n≥2; fixed supersingular principal hermitian framing of signature (1,n−1).

**Prerequisites:** `PELModuliPartII:U0/principal-hermitian-module`, `PELModuliPartII:U0/signature-conjugation`.

**Source:** HLSY23, Definition 2.2, p. 10.

**Construction or proof:**

1. Form the relative Grassmannian of rank-(n−1) locally direct summands of Lie X.
2. Impose stability and the two scalar-action equations on subbundle and quotient.
3. Check local freeness and descent under the base site.

**API:**

- `KramerFiltration.ofSubbundle` (constructor): Construct from an O_L-stable rank-(n−1) subbundle with the two specified scalar actions.
- `KramerFiltration.quotient` (projection): Return the locally free rank-one quotient with its structural action.
- `KramerFiltration.baseChange` (functoriality): Pullback preserves the subbundle and quotient conditions.
- `KramerFiltration.genericUnique` (characterisation): On the characteristic-zero fibre the two distinct eigencharacters determine the filtration uniquely.

**Named checks:**

- `KramerFiltration.rankThree`: At n=3 the filtration has rank 2 and quotient rank 1.
- `KramerFiltration.rankOneWrong`: A rank-one subbundle at n=3 fails the Krämer condition even when it is stable.
- `KramerFiltration.genericEigen`: After inverting u the filtration is the prescribed conjugate eigenspace, not the structural one.

**Uses:**

- PELModuliPartII:U5/kramer-rz: Supplies this datum to the consumer’s construction or proof: Construct the principal polarized framed groupoid with the unit-similitude normalization.
- PELModuliPartII:U7/ramified-kramer-model: Supplies this datum to the consumer’s construction or proof: Construct the global relative Grassmannian of the prescribed embedding ranks.

**Acceptance:**

- At n=3 the filtration has rank 2 and quotient rank 1.
- A rank-one subbundle at n=3 fails the Krämer condition even when it is stable.

**Atlas name:** Krämer filtration.

### Ramified rank-one source

**Target:** `PELModuliPartII:U5/kramer-rank-one-source` (construction).

Fix a supersingular strict principal hermitian O_L-module Y of relative height 2 and dimension 1, of signature (0,1). Its chosen height-zero exact-polarization deformation component has a canonical lift G over O_breveL with conjugate structural Lie action. Distinguish this chosen component from Howard19’s full rank-one space, which permits arbitrary quasi-isogeny height and is a countable disjoint union of Spf O_breveL. Fix a generator e of the associated Hermitian fixed line; its norm is an O_K-unit and rescale λ_Y by that unit to normalize (e,e)_Y=1 when an isometry is required.

**Prerequisites:** `PELModuliPartII:U0/principal-hermitian-module`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `SchemeAndStackFoundations:SF.4`.

**Source:** HLSY23, §§2.2–2.3, pp. 11–12; Howard19 Proposition 2.1, p. 6.

**Construction or proof:**

1. Use the strict CM deformation supplier for the rank-one signature and chosen framing component.
2. Compute its Hermitian fixed line using relative Dieudonné theory.
3. Retain the polarization normalization and its effect on the source-line norm.

**API:**

- `KramerSource.lift` (constructor): Construct the chosen canonical lift with conjugate Lie action.
- `KramerSource.reduce` (compatibility): Its special fibre with framed polarization is the chosen Y.
- `KramerSource.normalize` (constructor): Rescale the source polarization by its unit norm to arrange (e,e)=1.
- `KramerSource.baseChange` (functoriality): Pullback of the canonical lift is compatible with its framing and source action.

**Named checks:**

- `KramerSource.signature`: The Lie action of a∈O_L is a-bar, not a.
- `KramerSource.height`: The relative height is 2 and the absolute height is 2[K:Q_p].
- `KramerSource.components`: The chosen height-zero component does not equal the countable union allowing arbitrary height.

**Uses:**

- PELModuliPartII:U5/kramer-special-hom: Supplies this datum to the consumer’s construction or proof: Use relative Dieudonné full faithfulness to form the rational O_L-linear Hom space.

**Acceptance:**

- The Lie action of a∈O_L is a-bar, not a.
- The relative height is 2 and the absolute height is 2[K:Q_p].

### Krämer framed formal space

**Target:** `PELModuliPartII:U5/kramer-rz` (construction).

Construct N_n^Kra from quintuples (X,i,λ,ρ,F_X), with X principal hermitian of the indicated signature, a Krämer filtration, and height-zero O_L-linear framing to 𝕏 carrying λ to the fixed framing polarization locally up to a unit in O_K×. Morphisms commute with the framing and carry polarization to a unit multiple, as in HLSY23. The polarization compatibility of ρ is required explicitly even though it is omitted in the printed definition.

**Additional hypotheses:** L/K ramified quadratic, p>2, u-bar=−u, n≥2; fixed supersingular principal hermitian framing of signature (1,n−1).

**Prerequisites:** `PELModuliPartII:U5/kramer-filtration`, `SchemeAndStackFoundations:SF.4`.

**Source:** HLSY23, Definition 2.2, pp. 10–11; Howard19 §2 and Proposition 2.2, pp. 5–6.

**Construction or proof:**

1. Construct the principal polarized framed groupoid with the unit-similitude normalization.
2. Adjoin the Krämer Grassmannian filtration and its scalar equations.
3. Use formal PEL representability and rigidification of the framing.

**API:**

- `KramerRZ.ofData` (constructor): Construct from X,i,λ,ρ,F and the unit-polarization compatibility of ρ.
- `KramerRZ.forgetFiltration` (projection): Forget F to the wedge/principal ramified framed functor.
- `KramerRZ.pullback` (functoriality): The full quintuple and its unit-similitude arrow relation commute with base change.
- `KramerRZ.polarizationClass` (characterisation): Replacing λ by an O_K-unit multiple leaves the declared polarized class; arbitrary nonunits do not.

**Named checks:**

- `KramerRZ.rejectUnpolarizedFraming`: An O_L-linear height-zero framing failing unit-polarization compatibility is rejected.
- `KramerRZ.units`: For c∈O_K×, λ and cλ represent the same polarization class with corresponding data.
- `KramerRZ.principal`: A polarization with kernel X[i(u)] is not a principal Krämer object.

**Uses:**

- PELModuliPartII:U5/kramer-geometry: Supplies this datum to the consumer’s construction or proof: Use the Krämer local-model filtration calculation for the representing formal chart.
- PELModuliPartII:U5/kramer-dieudonne-space: Supplies this datum to the consumer’s construction or proof: Use the relative covariant isocrystal and compute τ as a slope-zero descent operator.
- PELModuliPartII:U9/kramer-formal-comparison: Supplies this datum to the consumer’s construction or proof: Apply the formal deformation comparison to the underlying polarized ramified pair.
- PELModuliPartII:U5/kramer-special-hom: Supplies this datum to the consumer’s construction or proof: Use relative Dieudonné full faithfulness to form the rational O_L-linear Hom space.
- PELModuliPartII:U5/kramer-local-charts: Supplies this datum to the consumer’s construction or proof: Choose the invertible Hodge minor and normalize the kth coordinate of the extra line.

**Acceptance:**

- An O_L-linear height-zero framing failing unit-polarization compatibility is rejected.
- For c∈O_K×, λ and cλ represent the same polarization class with corresponding data.

**Atlas name:** Krämer Rapoport–Zink space.

### Krämer Hermitian isocrystal

**Target:** `PELModuliPartII:U5/kramer-dieudonne-space` (construction).

Let N be the relative covariant rational Dieudonné module of the framing, Π=i(u), and τ=ΠV^−1 with the covariant convention fixed by the supplier. Set C=N^{τ=1}. Choose δ in O_breveK× with σ(δ)=−δ. The formula (x,y)=δ(⟨Πx,y⟩+u⟨x,y⟩) on C is a nondegenerate L/K-Hermitian form, and ⟨x,y⟩=(2δ)^−1 Tr_{L/K}(u^−1(x,y)) recovers the alternating form. C has dimension n over L.

**Prerequisites:** `PELModuliPartII:U5/kramer-rz`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`.

**Source:** HLSY23, §2.2, equations (2.1)–(2.2), pp. 11–12.

**Construction or proof:**

1. Use the relative covariant isocrystal and compute τ as a slope-zero descent operator.
2. Apply descent for the fixed vectors, retaining Π and V conventions.
3. Verify Hermitian symmetry and the inverse trace identity, including the factor 2δ.

**API:**

- `KramerIsocrystal.fixedSpace` (constructor): Construct C from τ-fixed vectors with its L-action.
- `KramerIsocrystal.form` (projection): Return the δ-normalized Hermitian form.
- `KramerIsocrystal.traceRecovery` (compatibility): Recover the original alternating form by the displayed trace formula.
- `KramerIsocrystal.framingIsometry` (functoriality): Polarized framing isomorphisms induce Hermitian isometries of C.

**Named checks:**

- `KramerIsocrystal.dimension`: For n=3 the L-dimension of C is 3 and the relative K-isocrystal dimension is 6.
- `KramerIsocrystal.traceFactor`: Omitting the factor 2 changes recovery of the alternating form when p is odd.
- `KramerIsocrystal.covariance`: Replacing V^−1 by F^−1 without changing conventions is not the stated τ.

**Uses:**

- PELModuliPartII:U5/kramer-hom-comparison: Supplies this datum to the consumer’s construction or proof: Identify O_L-linear rational homomorphisms by Dieudonné full faithfulness.
- PELModuliPartII:U5/kramer-framing-sign: Supplies this datum to the consumer’s construction or proof: Apply ramified Hermitian determinant classification.
- PELModuliPartII:U5/kramer-special-hom: Supplies this datum to the consumer’s construction or proof: Use relative Dieudonné full faithfulness to form the rational O_L-linear Hom space.

**Acceptance:**

- For n=3 the L-dimension of C is 3 and the relative K-isocrystal dimension is 6.
- Omitting the factor 2 changes recovery of the alternating form when p is odd.

**Atlas name:** Krämer Hermitian isocrystal.

### Krämer framing parity

**Target:** `PELModuliPartII:U5/kramer-framing-sign` (theorem).

The two determinant signs χ((-1)^{n(n−1)/2}det C) give the two framing polarization classes. Their resulting ramified unitary formal moduli spaces are isomorphic for n odd; for n even they are not isomorphic. Keep a specified sign when comparing them to a global basic locus; a self-dual lattice alone does not select the sign at a ramified place.

**Prerequisites:** `PELModuliPartII:U5/kramer-dieudonne-space`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`.

**Source:** HLSY23, §2.1–2.2, pp. 11–12; RSZ21 Remark 6.9, p. 33.

**Construction or proof:**

1. Apply ramified Hermitian determinant classification.
2. Check the effect of unit rescaling on the determinant sign in odd and even rank.
3. Compare the framing categories, retaining the selected sign in the global input.

**Acceptance:**

- For n=3 unit rescaling relates the two formal spaces.
- For n=2 the sign choice cannot be discarded.

**Atlas name:** Krämer framing sign.

### Krämer normal-crossing charts

**Target:** `PELModuliPartII:U5/kramer-local-charts` (theorem).

Over the natural ramified coefficient DVR with p odd, the principal Krämer local-model charts meeting the exceptional locus have equation y(Σ_{i=1}^n x_i²)=2u with x_k=1, for some k. At an intersection point the residue quadric Σx_i²=0 is smooth, so this is étale locally yz=u times n−2 smooth parameters. For n≥3 this is the chart in Krämer03 (4.11). For n=2 the same equations give y(1+x²)=2u; at either geometric root of 1+x² the derivative 2x is invertible, giving the same crossing chart. This rank-two extension asserts local normal crossings and does not assert the global irreducibility of the n≥3 quadric.

**Prerequisites:** `PELModuliPartII:U5/kramer-rz`, `AlgebraicModuliForArithmeticGeometry:R09.1/grassmann-smoothness`, `AlgebraicModuliForArithmeticGeometry:R09.1/coherent-grassmannian`, `SchemeAndStackFoundations:SF.4`.

**Source:** Kraemer03, Definition 4.1, p. 7; proof of Theorem 4.5, equations (4.3)–(4.11), pp. 11–13; rank-two chart extension explained in this target.

**Construction or proof:**

1. Choose the invertible Hodge minor and normalize the kth coordinate of the extra line.
2. Eliminate the symmetric matrix A and γ using A+uI=λγᵗ and λ_k=1 to obtain yΣx_i²=2u.
3. At quadric points use its nonzero gradient for an étale coordinate z=Σx_i²/2; away the quadric or y=0 use the smooth equation.
4. For n=2 check the two geometric roots explicitly, without importing the n≥3 geometric irreducibility assertion.

**Acceptance:**

- The n=2 crossing is étale locally yz=u over O_breveL.
- The n=2 residue quadric consists of two geometric points, so it is not claimed irreducible.
- The chart after u=t^e with e>1 need not be regular.

### Krämer regularity theorem

**Target:** `PELModuliPartII:U5/kramer-geometry` (theorem).

N_n^Kra is flat, regular and locally formally of finite type over O_breveL, of relative dimension n−1, and has semistable reduction over this natural coefficient ring. Its forgetful map to the wedge-model framed functor is proper and an isomorphism on the generic fibre. Global models after a ramified coefficient extension require a separate regularity check; the global n=2 case is not obtained from RSZ21 Theorem 6.7(ii).

**Additional hypotheses:** L/K ramified quadratic, p>2, u-bar=−u, n≥2; fixed supersingular principal hermitian framing of signature (1,n−1).

**Prerequisites:** `PELModuliPartII:U5/kramer-rz`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`, `SchemeAndStackFoundations:SF.4`, `PELModuliPartII:U5/kramer-local-charts`.

**Source:** HLSY23, §2.1, p. 11; Howard19 Proposition 2.2, p. 6; RSZ21 Theorem 6.7 and Remark 6.8, pp. 32–33.

**Construction or proof:**

1. Use the Krämer local-model filtration calculation for the representing formal chart.
2. The filtration resolves the isolated wedge-model singularity; check the normal-crossing local equation over O_breveL.
3. Transfer flatness and regularity through the smooth local-model chart; record coefficient base change separately.

**Acceptance:**

- The absolute dimension over the DVR is n, and relative dimension is n−1.
- For n=2 the global local-model reflex field and ramified base change in RSZ21 Remark 6.8 must be distinguished from the formal Krämer model.

**Atlas name:** Krämer regularity theorem.

### Krämer special Hom space

**Target:** `PELModuliPartII:U5/kramer-special-hom` (construction).

For the ramified principal framing 𝕏 and the rank-one source Y of U5, define V=Hom^0_{O_L}(Y,𝕏) with h(x,y)=λ_Y^−1 y∨λ_𝕏x in End^0_{O_L}(Y)=L. This is a nondegenerate dimension-n Hermitian space. The group of exact-polarization framing quasi-isogenies acts by postcomposition and identifies with U(V)(K). The fixed-space comparison includes the source-line norm and becomes an isometry only in U5’s normalized choice.

**Prerequisites:** `PELModuliPartII:U5/kramer-rank-one-source`, `PELModuliPartII:U5/kramer-rz`, `PELModuliPartII:U5/kramer-dieudonne-space`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`.

**Source:** HLSY23, §2.2, equations (2.3)–(2.6), p. 11.

**Construction or proof:**

1. Use relative Dieudonné full faithfulness to form the rational O_L-linear Hom space.
2. Compute the adjoint formula for h and prove its nondegeneracy.
3. Identify the postcomposition isometries, retaining the precise source polarization normalization.

**API:**

- `KramerSpecialHom.form` (projection): Expose the λ_Y-normalized rational Hom pairing.
- `KramerSpecialHom.dimension` (compatibility): The L-dimension is n and the endomorphism field of the source is L.
- `KramerSpecialHom.unitary` (equivalence): Identify exact-polarization framing self-quasi-isogenies with U(V)(K).
- `KramerSpecialHom.transport` (functoriality): Isomorphisms of both polarized source and target induce the corresponding Hom-space isometry.

**Named checks:**

- `KramerSpecialHom.conjugation`: h(y,x)=h(x,y)-bar.
- `KramerSpecialHom.rankTwo`: For n=2 this space has L-dimension 2, not relative-isocrystal dimension 4.
- `KramerSpecialHom.sourceScale`: Rescaling λ_Y by c multiplies h by c^−1, which is tracked in the comparison.

**Uses:**

- PELModuliPartII:U5/kramer-hom-comparison: Supplies this datum to the consumer’s construction or proof: Identify O_L-linear rational homomorphisms by Dieudonné full faithfulness.

**Acceptance:**

- h(y,x)=h(x,y)-bar.
- For n=2 this space has L-dimension 2, not relative-isocrystal dimension 4.

### Special Hom and fixed-space comparison

**Target:** `PELModuliPartII:U5/kramer-hom-comparison` (comparison).

Fix a principal rank-one source Y and a basis e of its Hermitian fixed-space line. Evaluation b:x↦x(e) identifies Hom^0_{O_L}(Y,𝕏) with C as L-vector spaces, and (b(x),b(y))_C=h(x,y)(e,e)_Y. It is an isometry only after normalizing (e,e)_Y=1, which may require rescaling the chosen source polarization. Do not silently replace a similarity by an isometry.

**Prerequisites:** `PELModuliPartII:U5/kramer-dieudonne-space`, `PELModuliPartII:U5/kramer-special-hom`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`.

**Source:** HLSY23, §2.2, pp. 11–12.

**Construction or proof:**

1. Identify O_L-linear rational homomorphisms by Dieudonné full faithfulness.
2. Evaluate at the chosen basis of the source line.
3. Compute adjoints and keep its Hermitian norm factor.

**Acceptance:**

- The norm factor is 1 exactly in the chosen normalization.
- Changing e to ae multiplies the factor by a a-bar.

## U6 — Global CM and unitary comparison data

Specialize the imported PEL and torus data to the RSZ fibre-product group, integral lattice/polarization levels and CM component. Define local admissibility at every p-place, justify the unramified coefficient compositum under its actual hypotheses, and impose the crystalline/Tate sign and actual Eisenstein annihilation conditions. Compare the auxiliary CM product conventions with RSZ arrows without discarding the common scalar quotient.

**Layer imports:** `AbelianSchemesAndArithmeticModuli:A4`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuli:M0`, `PELModuli:M1`, `PELModuli:M3`, `PELModuli:M4`, `PELModuliPartII:U0`, `PadicHodgeTheory:R06.2`, `PadicHodgeTheory:R06.5`, `ShimuraVarieties:V4`, `ShimuraVarieties:V5`, `ShimuraVarieties:V6`.

### Strict fake Drinfeld datum

**Target:** `PELModuliPartII:U6/rsz-datum` (construction).

From the existing rank-one CM datum W₀ and unitary PEL datum V, specialize the positive norm torus Z^Q={z∈Res_{F/Q}G_m:Nm_{F/F⁺}(z)∈G_m} and rational-similitude group G^Q={g∈Res_{F⁺/Q}GU(V):c(g)∈G_m}. Construct G̃=Z^Q×_{G_m}G^Q and the isomorphism (z,g)↦(z,z^−1g) with Z^Q×Res_{F⁺/Q}U(V). Transport the existing Shimura cocharacter, whose φ-component has z and z-bar eigenspaces of dimensions r_φ and r_φbar. Its reflex field is E=E_Φ E_r, containing φ₀(F). Generic torus canonical models and generic PEL data are imported, not reconstructed.

**Additional hypotheses:** F/F⁺ CM, Φ a CM type with distinguished φ₀, n≥2; signature (n−1,1) at φ₀ and (n,0) at the other members of Φ. Use the PELModuli carriers, rational similitude convention and positive CM norm torus.

**Prerequisites:** `PELModuli:M0/rational-pel-datum`, `PELModuli:M0/similitude-group`, `PELModuli:M0/skew-hermitian-space`, `PELModuli:M0/reflex-field`, `ShimuraVarieties:V4/plan/torus-model`, `ShimuraVarieties:V6/plan/abelian-canonical`.

**Source:** Zhang21, §6.1, equations (6.1)–(6.6), pp. 901–902; LZ22 §11.1, p. 73.

**Construction or proof:**

1. Restrict the existing similitude character to rational multipliers and form the fibre product with the norm torus.
2. Verify the product isomorphism and its inverse (z,u)↦(z,zu).
3. Compute the stabilizer of the labeled signature and CM type to identify the compositum reflex field.

**API:**

- `RSZDatum.fibreProduct` (constructor): Return G̃ with its two projections and equality of multiplier characters.
- `RSZDatum.productEquiv` (equivalence): Give the displayed algebraic-group isomorphism with Z^Q×Res U(V).
- `RSZDatum.reflexField` (compatibility): Identify the existing reflex-field construction with E_ΦE_r and the specified embedding of F.
- `RSZDatum.level` (functoriality): Transport product compact open levels through the product isomorphism.

**Named checks:**

- `RSZDatum.multiplier`: For (z,g) the equation c(g)=Nm(z) is necessary; arbitrary independent factors in Z^Q×G^Q are rejected.
- `RSZDatum.inverse`: The inverse of (z,u) is (z,zu), rather than (z,u).
- `RSZDatum.signature`: Exactly one real place has signature (n−1,1); the others have (n,0).

**Uses:**

- Zhang21 Definition 6.1, p. 904; LZ22 §11.2, p. 74: Identifies the generic fibre and its compact-open indexing for every integral model below.
- PELModuliPartII:U6/local-level-data: Supplies this datum to the consumer’s construction or proof: Import generic lattice/dual/stabilizer operations from their supplier.
- PELModuliPartII:U6/admissible-cm-type: Supplies this datum to the consumer’s construction or proof: Use the existing generalized CM type and its embeddings at p.
- PELModuliPartII:U6/sign-condition: Supplies this datum to the consumer’s construction or proof: Apply the Tate-Hom pairing away from the residue characteristic.
- PELModuliPartII:U6/auxiliary-cm-generic-comparison: Supplies this datum to the consumer’s construction or proof: Apply the generic PEL/CM equivalence with the common multiplier on both factors.
- PELModuliPartII:U7/localized-rsz: Supplies this datum to the consumer’s construction or proof: Use the localized abelian-scheme PEL carrier and select the CM component.
- PELModuliPartII:U7/semiglobal-rsz: Supplies this datum to the consumer’s construction or proof: Assemble the generic PEL/CM pair with prime-to-p quasi-isogeny arrows.
- PELModuliPartII:U9/nearby-framing-datum: Supplies this datum to the consumer’s construction or proof: Invoke the exact two-place Landherr existence and uniqueness supplier, not merely classification of a generic PEL datum.

**Acceptance:**

- For (z,g) the equation c(g)=Nm(z) is necessary; arbitrary independent factors in Z^Q×G^Q are rejected.
- The inverse of (z,u) is (z,zu), rather than (z,u).

**Atlas name:** Strict fake Drinfeld datum.

### Admissible CM coefficient data

**Target:** `PELModuliPartII:U6/admissible-cm-type` (definition).

For a chosen p-adic embedding and distinguished place u, retain an admissible CM type Φ in the sense used by Li–Liu: at a split v|p all embeddings inducing the selected F-place lie on the same side of Φ; at an inert v the local type is pulled back from the maximal unramified subfield. In the exotic extension, each ramified v additionally has compositum of E_u with the local CM-type reflex field unramified over E_u. Set K=E_u E_Φ. The exotic condition is imposed at every ramified v above p, not only at u.

**Prerequisites:** `PELModuli:M0/generalized-cm-type`, `PELModuli:M0/reflex-field`, `PELModuliPartII:U6/rsz-datum`.

**Source:** LL21, Notation 5.6, p. 28; LL22 Definition 1.1, p. 3, and Notation 4.19, p. 57.

**Construction or proof:**

1. Use the existing generalized CM type and its embeddings at p.
2. Impose the three place-type clauses and compute the local reflex field by its stabilizer.
3. Form the compositum in the chosen algebraic closure of Q_p.

**API:**

- `AdmissibleCMData.ofType` (constructor): Construct from Φ, the selected p-adic embedding and all local admissibility proofs.
- `AdmissibleCMData.coefficientField` (projection): Return K=E_uE_Φ with the fixed embeddings.
- `AdmissibleCMData.localReflex` (projection): Return the local CM-type reflex field and the ramified-place unramifiedness proof.
- `AdmissibleCMData.conjugate` (functoriality): Transport the type and place data under simultaneous relabeling of embeddings.

**Named checks:**

- `AdmissibleCMData.splitMixed`: A split local CM type choosing embeddings on both sides is rejected.
- `AdmissibleCMData.otherRamified`: Admissibility can fail because of a ramified place v≠u above the same p.
- `AdmissibleCMData.compositum`: When E_Φ⊂E_u, the coefficient field is E_u.

**Uses:**

- PELModuliPartII:U6/cm-coefficient-unramified: Supplies this datum to the consumer’s construction or proof: Express the stabilizer of the global CM type as the intersection of its local stabilizers and embed its reflex field in their compositum.
- PELModuliPartII:U6/eisenstein-condition: Supplies this datum to the consumer’s construction or proof: Construct the embedding summands over a common unramified splitting coefficient ring.
- PELModuliPartII:U6/auxiliary-cm-generic-comparison: Supplies this datum to the consumer’s construction or proof: Apply the generic PEL/CM equivalence with the common multiplier on both factors.
- PELModuliPartII:U7/split-drinfeld-level: Supplies this datum to the consumer’s construction or proof: Use the matched CM type to make A₀[w^m] étale locally free of rank one over O_{F,w}/ϖ^m, and trivialize its Tate module étale locally.

**Acceptance:**

- A split local CM type choosing embeddings on both sides is rejected.
- Admissibility can fail because of a ramified place v≠u above the same p.

**Atlas name:** Admissible CM types.

### Auxiliary CM product comparison

**Target:** `PELModuliPartII:U6/auxiliary-cm-generic-comparison` (comparison).

For the Li–Liu even-rank unitary canonical model X_L and auxiliary positive-CM canonical model Y at neat rational-norm torus level, identify the generic moduli of sextuples with (X_L×_E Y) over E′=EE_Φ. Retain the Li–Liu equivalence by paired quasi-isogenies (A₀,A) pulling both polarizations back by one common rational scalar. It is compared to the RSZ groupoid through its torus fibre product and rigidifications; it is not identified objectwise with the groupoid whose A₀ arrows are exact isomorphisms. Change-of-complex-embedding maps are compatible with the transported level and CM actions.

**Prerequisites:** `PELModuliPartII:U6/rsz-datum`, `PELModuli:M1/char-zero-adelic-moduli`, `PELModuli:M4/canonical-model-identification`, `ShimuraVarieties:V5/plan/main-cm`, `PELModuliPartII:U6/admissible-cm-type`.

**Source:** LL21, §5, Lemmas 5.2 and 5.5, pp. 26–28.

**Construction or proof:**

1. Apply the generic PEL/CM equivalence with the common multiplier on both factors.
2. Use the product group isomorphism and CM reciprocity to descend the complex identification to E′.
3. Track the torus rigidification and the embedding change, rather than discarding the scalar equivalence relation.

**Acceptance:**

- The same scalar is used for both λ₀ and λ in the Li–Liu arrows.
- The CM factor Y remains in the generic-fibre identification.

### Unramified CM coefficient extension

**Target:** `PELModuliPartII:U6/cm-coefficient-unramified` (lemma).

Let Φ satisfy U6/admissible-cm-type at every v|p. Then K=E_uE_Φ is unramified over E_u: split factors contribute only unramified embedding data, inert factors come from unramified subfields, and each ramified factor has E_uE_{Φ_v}/E_u unramified by the actual admissibility clause. The local reflex field E_Φ lies in the compositum of these fields. In the split/inert distinguished range the Galois-closure condition of LL22 Definition 1.1 is a sufficient existence criterion for such a Φ. At a ramified exotic distinguished u retain existence of an admissible Φ as an explicit datum; no membership of u in the split/inert set is asserted. Smoothness and semistability transfers use the resulting unramified K/E_u.

**Prerequisites:** `PELModuliPartII:U6/admissible-cm-type`, `PELModuli:M0/reflex-field-comparison`.

**Source:** LL21, Notation 5.6, p. 28; LL22 Definition 1.1 and Remark 1.2, p. 3, Notation 4.19, p. 57.

**Construction or proof:**

1. Express the stabilizer of the global CM type as the intersection of its local stabilizers and embed its reflex field in their compositum.
2. Use the single-side split and unramified-pullback inert conditions.
3. Use E_uE_{Φ_v}/E_u unramified at every ramified v; finite composita and subextensions of unramified local extensions remain unramified.

**Acceptance:**

- The conclusion includes all ramified factors above p, not just the distinguished one.
- A ramified coefficient extension is not declared semistability-preserving.

### Integral Eisenstein conditions

**Target:** `PELModuliPartII:U6/eisenstein-condition` (definition).

After the maximal-unramified embedding decomposition Lie A=⊕_{w,ψ}Lie_{w,ψ}A, at a banal factor form Q_{A_ψ}(T)=∏_{φ∈A_ψ}(T−φ(π_w)), where A_ψ is the set of embeddings extending ψ with r_φ=n, and require Q_{A_ψ}(i(π_w))=0 as an endomorphism of that Lie summand. At the unique fake-Drinfeld factor for an unramified quadratic extension, impose Mihatsch’s P(r,s) structural-action condition, equivalently the relative-comparison Lie condition of U0. These are actual annihilation/subquotient conditions, independent of the uniformizer and descended to O_{E,ν}; a determinant polynomial or the ranks alone is insufficient in ramified absolute extensions.

**Prerequisites:** `PELModuliPartII:U0/relative-comparison-functor`, `PELModuliPartII:U6/admissible-cm-type`, `PELModuli:M0/determinant-condition`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`.

**Source:** RSZ21, §5.2, cases (1)–(2), p. 25 and footnote 11; Mih19 §2, pp. 7–10; RSZ20 equation (4.10), pp. 16–17.

**Construction or proof:**

1. Construct the embedding summands over a common unramified splitting coefficient ring.
2. Impose the actual polynomial zero-endomorphism condition on banal factors and the P(r,s) condition on the distinguished factor.
3. Use the uniformizer-independence argument and faithfully flat descent to the reflex coefficient ring.

**API:**

- `UnitaryEisenstein.banal` (constructor): Construct the banal condition as the zero-endomorphism equation Q_{A_ψ}(i(π_w))=0.
- `UnitaryEisenstein.distinguished` (constructor): Construct the fake-Drinfeld clause from the supplier’s precise P(r,s) structural-action condition.
- `UnitaryEisenstein.changeUniformizer` (compatibility): The resulting condition is unchanged by replacing π_w by another uniformizer.
- `UnitaryEisenstein.baseChange` (functoriality): Pullback preserves the annihilation equations and their descended formulation.

**Named checks:**

- `UnitaryEisenstein.emptyBanal`: If A_ψ is empty, Q=1 forces the banal Lie summand to vanish.
- `UnitaryEisenstein.unramified`: When the local absolute field is unramified, the Kottwitz condition already implies this clause.
- `UnitaryEisenstein.rankInsufficient`: A nonzero nilpotent Jordan block with the correct characteristic polynomial can fail the required zero-endomorphism equation.

**Uses:**

- PELModuliPartII:U7/localized-rsz: Supplies this datum to the consumer’s construction or proof: Use the localized abelian-scheme PEL carrier and select the CM component.
- PELModuliPartII:U7/semiglobal-rsz: Supplies this datum to the consumer’s construction or proof: Assemble the generic PEL/CM pair with prime-to-p quasi-isogeny arrows.
- PELModuliPartII:U7/ramified-kramer-model: Supplies this datum to the consumer’s construction or proof: Construct the global relative Grassmannian of the prescribed embedding ranks.
- PELModuliPartII:U9/banal-local-factors: Supplies this datum to the consumer’s construction or proof: Split the absolute p-divisible group by the p-adic places and the CM torus component.

**Acceptance:**

- If A_ψ is empty, Q=1 forces the banal Lie summand to vanish.
- When the local absolute field is unramified, the Kottwitz condition already implies this clause.

**Atlas name:** Eisenstein condition.

### Integral unitary level data

**Target:** `PELModuliPartII:U6/local-level-data` (definition).

Fix O_F-lattices Λ_v and their Hermitian duals Λ_v^♯, a CM polarization ideal a prime to p when working semi-globally, and a selected nonempty CM component ξ. Record for every v|p whether F_v/F⁺_v is split, unramified quadratic or ramified quadratic, and its self-dual, almost self-dual or π-modular lattice type. K_v is the lattice stabilizer, except at explicitly named split Drinfeld congruence levels. Record separately the alternating trace-dual lattice used by the global polarization; its relation to the Hermitian dual involves the different and the chosen trace scalar.

**Additional hypotheses:** F/F⁺ CM, Φ a CM type with distinguished φ₀, n≥2; signature (n−1,1) at φ₀ and (n,0) at the other members of Φ. Use the PELModuli carriers, rational similitude convention and positive CM norm torus.

**Prerequisites:** `PELModuliPartII:U6/rsz-datum`, `PELModuli:M0/hermitian-space`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuli:M0/symplectic-o-lattice`, `PELModuli:M4`.

**Source:** RSZ21, §§3.3, 4.1, pp. 14–19; Remark 6.5, pp. 30–31; LZ22 §11.2, pp. 74–75.

**Construction or proof:**

1. Import generic lattice/dual/stabilizer operations from their supplier.
2. Specify the local dual quotient and the trace-duality conversion for each chosen polarization.
3. Store the local coefficient extension and CM component as part of the level datum.

**API:**

- `UnitaryIntegralLevel.ofLattices` (constructor): Construct with local lattice types, stabilizers, trace scalar and CM component.
- `UnitaryIntegralLevel.kernelOrder` (projection): Return #Λ_v^♯/Λ_v and the prescribed polarization-kernel containment.
- `UnitaryIntegralLevel.traceDual` (compatibility): Compare the alternating dual with the Hermitian dual using the specified inverse different and scalar.
- `UnitaryIntegralLevel.changeAwayP` (functoriality): Changing compact open level away p keeps the local p-type and coefficient data fixed.

**Named checks:**

- `UnitaryIntegralLevel.unramifiedASD`: For an unramified quadratic extension with length-one Λ_v^♯/Λ_v over k_{F_v}, the kernel order is q_v².
- `UnitaryIntegralLevel.rejectGoodNonsplit`: At an unramified inert place, a nonsplit Hermitian space is not assigned a good self-dual hyperspecial lattice.
- `UnitaryIntegralLevel.traceNotHermitian`: If the local different is nontrivial, omitting its factor does not give the stated alternating-dual comparison.

**Uses:**

- PELModuliPartII:U7/localized-rsz: Supplies this datum to the consumer’s construction or proof: Use the localized abelian-scheme PEL carrier and select the CM component.
- PELModuliPartII:U7/semiglobal-rsz: Supplies this datum to the consumer’s construction or proof: Assemble the generic PEL/CM pair with prime-to-p quasi-isogeny arrows.
- PELModuliPartII:U7/unitary-local-model-diagram: Supplies this datum to the consumer’s construction or proof: Associate to the polarization isogeny the self-dual periodic chain of de Rham modules and Hodge quotients.

**Acceptance:**

- For an unramified quadratic extension with length-one Λ_v^♯/Λ_v over k_{F_v}, the kernel order is q_v².
- At an unramified inert place, a nonsplit Hermitian space is not assigned a good self-dual hyperspecial lattice.

**Atlas name:** Integral unitary level data.

### Adjusted unitary sign condition

**Target:** `PELModuliPartII:U6/sign-condition` (definition).

For a polarized CM pair (A₀,A) and nonsplit finite place v, define inv_v using (−1)^{n(n−1)/2} times the determinant of the Hermitian Tate-Hom space when reschar(v) is invertible. In characteristic reschar(v), use the Frobenius-fixed determinant line Λⁿ Hom_{F_v}(D(A₀),D(A)) with its induced Hermitian form; multiply its raw invariant by (−1)^{Σ_{φ∈Φ_{ν,v}}r_φ} in RSZ20’s opposite-CM convention. For the positive CM convention transport both r₀ and Φ as in RSZ20 Remark A.2. Impose inv_v^r(A₀,A)=inv_v(V) at every geometric point. The split-place condition is vacuous. Explicitly, the convention-independent parity exponent is Σ_{φ∈Φ_v}(n r₀,φ−r_φ), where r₀,φ is the CM source multiplicity. It becomes Σr_φ in the opposite-CM convention r₀|Φ=0, and Σ(n−r_φ)=Σ_{bar Φ_v}r_φ in the positive-CM convention r₀|Φ=1.

**Prerequisites:** `PELModuli:M3/hermitian-hom-space`, `PELModuliPartII:U6/rsz-datum`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `AbelianSchemesAndArithmeticModuli:A4/etale-tate-module`, `PadicHodgeTheory:R06.5/plan/abelian-scheme-dcris`, `PadicHodgeTheory:R06.2/plan/admissible-category-tannakian`.

**Source:** RSZ20, Appendix A, equations (A.1)–(A.8), Remarks A.2–A.3 and Proposition A.1, pp. 54–58.

**Construction or proof:**

1. Apply the Tate-Hom pairing away from the residue characteristic.
2. Construct the determinant isocrystal and its slope-zero fixed line in residue characteristic.
3. Include the CM/signature adjustment and prove base-change invariance and local constancy by the integral comparison in Proposition A.1.

**API:**

- `UnitarySign.tate` (constructor): Compute the determinant norm class from the Hermitian Tate realization when v is invertible.
- `UnitarySign.crystalline` (constructor): Compute the adjusted fixed-line invariant in characteristic reschar(v).
- `UnitarySign.locallyConstant` (compatibility): The adjusted sign is locally constant in a connected family, including specialization between the two realization regimes.
- `UnitarySign.isometry` (functoriality): A polarized CM-pair isomorphism preserves the sign; exact comparison includes the chosen CM convention.

**Named checks:**

- `UnitarySign.split`: For a split quadratic algebra the norm quotient is trivial and the sign condition imposes nothing.
- `UnitarySign.adjustmentOdd`: In the opposite-CM convention an odd Σr_φ changes the raw crystalline sign.
- `UnitarySign.ramifiedEven`: For even n at a ramified place, self-duality of a lattice alone does not force the required sign.

**Uses:**

- PELModuliPartII:U7/semiglobal-rsz: Supplies this datum to the consumer’s construction or proof: Assemble the generic PEL/CM pair with prime-to-p quasi-isogeny arrows.
- PELModuliPartII:U9/nearby-framing-datum: Supplies this datum to the consumer’s construction or proof: Invoke the exact two-place Landherr existence and uniqueness supplier, not merely classification of a generic PEL datum.
- PELModuliPartII:U9/banal-local-factors: Supplies this datum to the consumer’s construction or proof: Split the absolute p-divisible group by the p-adic places and the CM torus component.

**Acceptance:**

- For a split quadratic algebra the norm quotient is trivial and the sign condition imposes nothing.
- In the opposite-CM convention an odd Σr_φ changes the raw crystalline sign.

**Atlas name:** Unitary sign invariant.

## U7 — RSZ integral models and local geometry

Construct localized and semi-global CM-pair models, the polarized multichain local-model diagram and their self-dual/ASD geometry with exact coefficient restrictions. Construct the split Drinfeld level through the finite Hom twist and Cartier-divisor fullness equation; prove finite flat regular level models using the owner’s integral Drinfeld theorem. Construct ramified wedge/Krämer and exotic even-rank models, their certified geometry and global level gluing. Keep the rank-two global reflex/base comparison as G2; normalizations alone imply no regularity.

**Layer imports:** `AbelianSchemesAndArithmeticModuli:A4`, `AlgebraicModuliForArithmeticGeometry:R09.1`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.1`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `LubinTateFormalModulesAndQuasiCanonicalLifts:LT.3`, `PELModuli:M1`, `PELModuli:M2`, `PELModuli:M4`, `PELModuliPartII:U0`, `PELModuliPartII:U1`, `PELModuliPartII:U2`, `PELModuliPartII:U3`, `PELModuliPartII:U4`, `PELModuliPartII:U5`, `PELModuliPartII:U6`, `ReductiveGroupsPartII:RG2.3`, `SchemeAndStackFoundations:SF.1`, `SchemeAndStackFoundations:SF.4`, `ShimuraCompactifications:C5`.

### Localized RSZ moduli

**Target:** `PELModuliPartII:U7/localized-rsz` (definition).

Let D contain all places of residual characteristic 2, all ramified quadratic places, and all inert places where V_v is nonsplit; enlarge it to the pullback of a finite rational-prime set, with product d. Away d choose self-dual lattices and hyperspecial levels; at d choose compact open levels. Over O_E[1/d], define the groupoid of CM pairs (A₀,i₀,λ₀;A,i,λ;η_d) in Zhang21 Definition 6.1: A₀ lies on a chosen nonempty principal CM component, A has the fake-Drinfeld Kottwitz signature and Rosati conjugation, λ is principal in the category localized at d, η_d is the prescribed Hermitian Hom-Tate level, and the Eisenstein clauses hold at every remaining place. Arrows have A₀ an exact polarized isomorphism and A an O_F-linear d-isogeny pulling back λ and the level exactly.

**Additional hypotheses:** F/F⁺ CM, Φ a CM type with distinguished φ₀, n≥2; signature (n−1,1) at φ₀ and (n,0) at the other members of Φ. Use the PELModuli carriers, rational similitude convention and positive CM norm torus.

**Prerequisites:** `PELModuliPartII:U6/rsz-datum`, `PELModuliPartII:U6/local-level-data`, `PELModuliPartII:U6/eisenstein-condition`, `PELModuli:M4`, `PELModuli:M1/moduli-problem`, `PELModuli:M1/prime-to-box-quasi-isogeny`.

**Source:** Zhang21, Definition 6.1, pp. 904–905, with §6.2.2, pp. 903–904.

**Construction or proof:**

1. Use the localized abelian-scheme PEL carrier and select the CM component.
2. Impose the exact Hom-Tate level and Eisenstein conditions at the places not inverted.
3. Specify the arrow relation in the localized category and verify descent.

**API:**

- `LocalizedRSZ.ofPair` (constructor): Construct an integral point from the full polarized CM pair and d-level data.
- `LocalizedRSZ.cmProjection` (projection): Forget A and η_d to the selected CM component.
- `LocalizedRSZ.generic` (compatibility): Over E the groupoid identifies with the canonical RSZ Shimura model at the chosen level.
- `LocalizedRSZ.pullback` (functoriality): Pullback preserves the localized polarization and d-isogeny arrows.

**Named checks:**

- `LocalizedRSZ.badPrimeSet`: An inert nonsplit Hermitian place belongs to D and is not assigned good self-dual reduction.
- `LocalizedRSZ.emptyCM`: If the selected principal CM moduli component is empty, so is the pair moduli; nonemptiness is not automatic.
- `LocalizedRSZ.arrowScalar`: An arrow scaling λ by c≠1 without the corresponding exact localized polarization equality is rejected.

**Uses:**

- PELModuliPartII:U7/localized-smoothness: Supplies this datum to the consumer’s construction or proof: Apply the abelian/CM moduli representability suppliers and impose the local conditions.
- PELModuliPartII:U9/inert-uniformization: Supplies this datum to the consumer’s construction or proof: Apply Θ with the exact good/almost self-dual integral conditions.

**Acceptance:**

- An inert nonsplit Hermitian place belongs to D and is not assigned good self-dual reduction.
- If the selected principal CM moduli component is empty, so is the pair moduli; nonemptiness is not automatic.

**Atlas name:** Localized RSZ model.

### Localized smoothness and representability

**Target:** `PELModuliPartII:U7/localized-smoothness` (theorem).

The localized RSZ functor is a smooth separated finite-type Deligne–Mumford stack over O_E[1/d] of relative dimension n−1. For sufficiently small levels on both the CM and unitary factors it is represented by a quasi-projective scheme. The theorem uses the prescribed good local types and Eisenstein condition, not just the generic Kottwitz signature.

**Prerequisites:** `PELModuliPartII:U7/localized-rsz`, `PELModuliPartII:U0/relative-framed-comparison`, `PELModuli:M2/representability`, `SchemeAndStackFoundations:SF.1`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`, `ShimuraCompactifications:C5`.

**Source:** Zhang21, Theorem 6.2, p. 905.

**Construction or proof:**

1. Apply the abelian/CM moduli representability suppliers and impose the local conditions.
2. Compute formal deformations through the relative comparison and the line-Grassmannian chart.
3. Kill stabilizers by sufficiently small levels on both factors; use the supplier polarization/Hodge-ampleness argument for quasi-projectivity.

**Acceptance:**

- For n=2 relative dimension is 1.
- Small unitary level alone does not remove a nontrivial CM automorphism.

### Semi-global RSZ moduli

**Target:** `PELModuliPartII:U7/semiglobal-rsz` (definition).

Fix ν|p of E and distinguished v₀ of F⁺. Over O_{E,(ν)}, the semi-global functor has a CM abelian scheme (A₀,i₀,λ₀) in M₀^{a,ξ}, a unitary abelian scheme A with O_{F,(p)}-action, Kottwitz signature and Rosati quasi-polarization λ, a prime-to-p Hermitian Hom-Tate K^p-level, and at split v≠v₀ above p the specified étale Hom-level at the CM-selected factor. Require ker λ_v⊂A[ϖ_v] of order #Λ_v^♯/Λ_v at every v|p; impose Eisenstein at the distinguished fake-Drinfeld factor and sign plus Eisenstein at all other p-factors. At v₀ impose the matching sign when needed. Arrows are polarized CM isomorphisms on A₀ and prime-to-p O_F-linear quasi-isogenies on A pulling λ and all levels back exactly.

**Additional hypotheses:** F/F⁺ CM, Φ a CM type with distinguished φ₀, n≥2; signature (n−1,1) at φ₀ and (n,0) at the other members of Φ. Use the PELModuli carriers, rational similitude convention and positive CM norm torus. All v|2 are unramified in F; at v₀ use one of the stated local cases below; K^p sufficiently small when a scheme rather than a stack is asserted.

**Prerequisites:** `PELModuliPartII:U6/rsz-datum`, `PELModuliPartII:U6/local-level-data`, `PELModuliPartII:U6/eisenstein-condition`, `PELModuliPartII:U6/sign-condition`, `PELModuli:M4`, `PELModuli:M1/level-structure`, `PELModuli:M1/prime-to-box-quasi-isogeny`.

**Source:** LZ22, §11.2, conditions (M1)–(M9), pp. 74–75; §11.3, p. 75; RSZ21 Definition 4.1, pp. 18–19.

**Construction or proof:**

1. Assemble the generic PEL/CM pair with prime-to-p quasi-isogeny arrows.
2. Use the local kernel types and the split étale Hom-levels; retain their chosen CM-side orientation.
3. Impose the descended sign and Eisenstein clauses and the selected CM component.

**API:**

- `SemiGlobalRSZ.ofPair` (constructor): Construct a point with all local p-type, prime-to-p and split-Hom levels.
- `SemiGlobalRSZ.cmProjection` (projection): Return the point of M₀^{a,ξ}; a is prime to p.
- `SemiGlobalRSZ.generic` (compatibility): The generic functor recovers the chosen RSZ canonical model.
- `SemiGlobalRSZ.changeAwayP` (functoriality): Changing K^p gives the forgetful/Hecke maps of the generic PEL level system while retaining p-data.

**Named checks:**

- `SemiGlobalRSZ.principalCM`: Since a is prime to p, λ₀ induces a principal polarization on the local CM p-divisible factor.
- `SemiGlobalRSZ.kernelQSquare`: An almost self-dual length-one Hermitian quotient has polarization-kernel order q_v².
- `SemiGlobalRSZ.otherPlaces`: An object satisfying the distinguished-place condition but violating the sign at another nonsplit p-place is rejected.

**Uses:**

- PELModuliPartII:U7/unitary-local-model-diagram: Supplies this datum to the consumer’s construction or proof: Associate to the polarization isogeny the self-dual periodic chain of de Rham modules and Hodge quotients.
- PELModuliPartII:U7/split-drinfeld-level: Supplies this datum to the consumer’s construction or proof: Use the matched CM type to make A₀[w^m] étale locally free of rank one over O_{F,w}/ϖ^m, and trivialize its Tate module étale locally.
- PELModuliPartII:U7/ramified-kramer-model: Supplies this datum to the consumer’s construction or proof: Construct the global relative Grassmannian of the prescribed embedding ranks.
- PELModuliPartII:U7/exotic-global-model: Supplies this datum to the consumer’s construction or proof: Apply the unitary local-model diagram with the π-modular wedge and spin conditions.
- PELModuliPartII:U8/mixed-global-moduli: Supplies this datum to the consumer’s construction or proof: Choose V♯, u₀, the local self-dual overlattice and the other levels exactly as in §13.4; impose the isogeny relation in the localized abelian-scheme category.
- PELModuliPartII:U8/ltxzz-smooth-moduli: Supplies this datum to the consumer’s construction or proof: Use the existing CM/PEL carriers with the two prescribed neat levels and special inert coefficient field.

**Acceptance:**

- Since a is prime to p, λ₀ induces a principal polarization on the local CM p-divisible factor.
- An almost self-dual length-one Hermitian quotient has polarization-kernel order q_v².

**Atlas name:** Semi-global RSZ model.

### Exotic integral model

**Target:** `PELModuliPartII:U7/exotic-global-model` (construction).

For n even, a ramified quadratic distinguished place u with F⁺_u/Q_p unramified, an admissible Φ and K/E_u unramified as in U6, construct the unitary integral model over O_K with π-modular exotic local polarization. Require (A[u^∞],i,λ)∈Exo_Φ(n−1,1) and (A[v^∞],i,λ)∈Exo_Φ(n,0) at other ramified v|p, while A₀ remains the rank-one CM factor. Impose the split/banal/inert conditions at the other p-places and retain the chosen CM component or auxiliary CM product according to its arrow convention. In the dated LL22 author copy the displayed A₀[u^∞] in this condition must be A[u^∞] by dimension.

**Prerequisites:** `PELModuliPartII:U4/absolute-exotic`, `PELModuliPartII:U7/semiglobal-rsz`, `PELModuliPartII:U6/cm-coefficient-unramified`, `PELModuliPartII:U6/auxiliary-cm-generic-comparison`.

**Source:** LL22, §4.5, pp. 65–66; RSZ21 Theorem 5.4(e) and Theorem 5.7, pp. 26–27.

**Construction or proof:**

1. Apply the unitary local-model diagram with the π-modular wedge and spin conditions.
2. Identify the absolute distinguished and banal ramified factors with Exo_Φ, respecting their different ranks.
3. Use the generic CM-product comparison to identify the chosen canonical model.

**API:**

- `ExoticIntegralModel.ofPair` (constructor): Construct from A₀,A with the exotic conditions on the rank-n A factors.
- `ExoticIntegralModel.distinguished` (projection): Return the absolute exotic object A[u^∞] of height 2nf and dimension nf.
- `ExoticIntegralModel.generic` (compatibility): Identify the generic fibre with the auxiliary-CM unitary canonical model.
- `ExoticIntegralModel.changeAwayP` (functoriality): At fixed p-type the permitted prime-to-p split-level changes give the integral Hecke/forgetful system.

**Named checks:**

- `ExoticIntegralModel.rankMismatch`: For n≥2 the rank-one A₀[u^∞] cannot satisfy the height and dimension of Exo_Φ(n−1,1).
- `ExoticIntegralModel.kernel`: The distinguished kernel is A[i(u)] and is not principal.
- `ExoticIntegralModel.otherRamified`: Omitting the banal Exo_Φ(n,0) condition at another ramified v|p changes the functor.

**Uses:**

- PELModuliPartII:U7/exotic-global-smoothness: Supplies this datum to the consumer’s construction or proof: Use the even-rank π-modular local-model smoothness theorem at the distinguished place.
- PELModuliPartII:U9/exotic-uniformization: Supplies this datum to the consumer’s construction or proof: Fix the CM point and basic pair before defining the global Hom space, its normalization and the framing.

**Acceptance:**

- For n≥2 the rank-one A₀[u^∞] cannot satisfy the height and dimension of Exo_Φ(n−1,1).
- The distinguished kernel is A[i(u)] and is not principal.

**Atlas name:** Exotic integral model.

### Global Krämer modification

**Target:** `PELModuliPartII:U7/ramified-kramer-model` (construction).

Assume p odd, F_{v₀}/F⁺_{v₀} ramified quadratic, F⁺_{v₀}/Q_p unramified and Λ_{v₀} self-dual. Impose the wedge equations for signature (n−1,1) on the distinguished Lie factor and Eisenstein on banal factors. Construct the global Krämer enhancement by a stable locally direct summand P⊂Lie A whose embedding-summand ranks are r^Φ_{w,ψ}=Σ_{φ∈Hom_{w,ψ}∩Φ}r_φ and which is annihilated on P and Lie A/P by the respective products ∏(T−φ(π_w)) for the two CM halves with nonzero r_φ. This is the Krämer–Eisenstein condition of RSZ21 (6.10), independent of π_w. At the distinguished rank-n factor P has structural rank n−1 and quotient conjugate rank 1; compare U5 by conjugating the local actions.

**Prerequisites:** `PELModuliPartII:U7/semiglobal-rsz`, `PELModuliPartII:U5/kramer-filtration`, `PELModuliPartII:U6/eisenstein-condition`, `SchemeAndStackFoundations:SF.4`, `AlgebraicModuliForArithmeticGeometry:R09.1/coherent-grassmannian`.

**Source:** RSZ21, Definition 6.10, equations (6.6)–(6.10) and Lemma 6.11, pp. 33–34; LZ22 §11.6, p. 77.

**Construction or proof:**

1. Construct the global relative Grassmannian of the prescribed embedding ranks.
2. Impose the two annihilator equations on the subbundle and quotient, with faithfully flat descent.
3. Identify its local distinguished factor with the U5 filtration after the stated conjugation.

**API:**

- `GlobalKramer.enhance` (constructor): Attach the embedding-indexed P and its Krämer–Eisenstein equations.
- `GlobalKramer.forget` (projection): Forget P to the wedge RSZ model.
- `GlobalKramer.relativeComparison` (compatibility): After the local convention adapter, the distinguished formal factor is U5’s Krämer functor.
- `GlobalKramer.baseChange` (functoriality): The filtration and uniformizer-independent annihilator equations commute with base change.

**Named checks:**

- `GlobalKramer.rank`: On the distinguished global rank-n factor, P has rank n−1 with structural action.
- `GlobalKramer.conjugation`: The U5 comparison swaps the local structural/conjugate labels, rather than imposing both contradictory rank conditions.
- `GlobalKramer.banal`: On a banal factor the equation reduces to the corresponding Eisenstein annihilator clause.

**Uses:**

- PELModuliPartII:U7/ramified-global-geometry: Supplies this datum to the consumer’s construction or proof: Identify the distinguished wedge local-model factor and the trivial banal factors.
- PELModuliPartII:U7/global-integral-gluing: Supplies this datum to the consumer’s construction or proof: Specify the global integral abelian-scheme groupoid with all local conditions and sign components.

**Acceptance:**

- On the distinguished global rank-n factor, P has rank n−1 with structural action.
- The U5 comparison swaps the local structural/conjugate labels, rather than imposing both contradictory rank conditions.

**Atlas name:** Krämer integral model.

### Split Lubin–Tate and Drinfeld data

**Target:** `PELModuliPartII:U7/split-drinfeld-level` (definition).

At a split v₀ choose the factor w at which A[w^∞] is one-dimensional with structural O_{F,w}-Lie action and A₀[w^∞] is étale of O_{F,w}-rank one. This is the matched-CM-type condition after transporting the global signature convention; the other factor is its polarized dual. Define T[ϖ^m]=Hom_{O_{F,w}}(A₀[w^m],A[w^m]) as a finite flat Hom group scheme. Its direct limit under the transition maps determined by ϖ is a one-dimensional strict formal O_{F,w}-module T of local height n; étale locally a trivialization of the rank-one CM Tate module identifies it with A[w^∞]. This direct limit of finite Hom schemes is not Hom of the two entire p-divisible groups. For m≥1 a full Drinfeld level is an O_{F,w}-linear map ϖ^{−m}Λ_w/Λ_w→T[ϖ^m] whose sum of section Cartier divisors equals the full ϖ^m-torsion divisor on T. At m=0 the level datum is unique. Fullness does not require distinct sections on the special fibre.

**Prerequisites:** `PELModuliPartII:U7/semiglobal-rsz`, `PELModuliPartII:U6/admissible-cm-type`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.1/p-divisible-group`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `LubinTateFormalModulesAndQuasiCanonicalLifts:LT.3`, `LubinTateFormalModulesAndQuasiCanonicalLifts:LT.3/marked-deformation`.

**Source:** RSZ20, RSZ20 §4.3, pp. 19–20, especially (4.19)–(4.21); LZ22 §11.5, p. 76; RSZ21 Remark 5.6, p. 27.

**Construction or proof:**

1. Use the matched CM type to make A₀[w^m] étale locally free of rank one over O_{F,w}/ϖ^m, and trivialize its Tate module étale locally.
2. Construct the finite Hom twists and uniformizer-dependent direct system; descend the local identifications with A[w^∞] and its strict structural Lie action.
3. Apply the supplier full Drinfeld torsion-divisor construction to T.
4. Relate generic full level to the principal congruence subgroup of the lattice stabilizer.

**API:**

- `SplitDrinfeldLevel.ofFullDivisor` (constructor): Construct from the O-linear level map and the equality of effective Cartier divisors.
- `SplitDrinfeldLevel.levelMap` (projection): Return the map from ϖ^{−m}Λ/Λ to torsion sections.
- `SplitDrinfeldLevel.genericBasis` (compatibility): Over characteristic zero the full level is a basis of the étale torsion module.
- `SplitDrinfeldLevel.forget` (functoriality): Restriction from m+1 to m agrees with the congruence-level forgetful map.
- `SplitDrinfeldLevel.cmTwist` (compatibility): After trivializing the rank-one étale CM Tate module, identify T with A[w^∞] and T[ϖ^m] with its ϖ^m-torsion; changing trivialization gives the natural O_{F,w}^× action.

**Named checks:**

- `SplitDrinfeldLevel.zero`: At m=0 there is one level datum over each base object.
- `SplitDrinfeldLevel.genericZeroFails`: At m>0 in characteristic zero the zero map fails the full Cartier-divisor equation.
- `SplitDrinfeldLevel.nonEtale`: At a characteristic-p point the definition allows coincident section supports when their sum is the full nonreduced torsion divisor.
- `SplitDrinfeldLevel.finiteHom`: For m=1, Hom_{O_{F,w}}(O_{F,w}/ϖ,A[w])≅A[w] as finite group schemes after the CM trivialization. Replacing this by the abstract group of homomorphisms between entire p-divisible groups gives a different carrier.

**Uses:**

- PELModuliPartII:U7/split-integral-geometry: Supplies this datum to the consumer’s construction or proof: Use the one-dimensional strict Lubin–Tate deformation theorem and full Drinfeld-level regularity supplier.

**Acceptance:**

- At m=0 there is one level datum over each base object.
- At m>0 in characteristic zero the zero map fails the full Cartier-divisor equation.

**Atlas name:** Split Drinfeld level.

### Unitary local-model comparison

**Target:** `PELModuliPartII:U7/unitary-local-model-diagram` (construction).

For the semi-global functor, construct its torsor of trivializations of the polarized de Rham lattice multichain generated by Λ_p and its dual, and its Hodge-filtration map to the corresponding unitary Grassmannian local model times the CM base. The torsor group is the smooth automorphism group of the polarized multichain. The torsor map and Hodge map are smooth of equal relative dimension, with the imposed Eisenstein, wedge/spin or Krämer equations on the local model. This is the particular unitary local-model diagram, built using the generic deformation and Grassmannian suppliers.

**Prerequisites:** `PELModuliPartII:U7/semiglobal-rsz`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`, `AbelianSchemesAndArithmeticModuli:A4/abelian-h1-de-rham`, `SchemeAndStackFoundations:SF.4`, `PELModuliPartII:U6/local-level-data`, `AlgebraicModuliForArithmeticGeometry:R09.1/grassmann-smoothness`, `AlgebraicModuliForArithmeticGeometry:R09.1/coherent-grassmannian`, `ReductiveGroupsPartII:RG2.3`.

**Source:** RSZ21, §5.1, diagram (5.5) and decompositions (5.6)–(5.7), pp. 23–24; Theorem 5.4, pp. 26–27.

**Construction or proof:**

1. Associate to the polarization isogeny the self-dual periodic chain of de Rham modules and Hodge quotients.
2. Represent its trivialization torsor under the existing smooth lattice-chain automorphism group supplier.
3. Apply Grothendieck–Messing to lifting of a trivialization and Hodge filtration; compare their relative dimensions.

**API:**

- `UnitaryLocalModel.trivializationTorsor` (constructor): Construct the torsor and its map to the integral moduli.
- `UnitaryLocalModel.hodgeMap` (projection): Return the equivariant map to the selected local model and CM base.
- `UnitaryLocalModel.baseChange` (functoriality): The diagram and the two smooth maps commute with coefficient base change.
- `UnitaryLocalModel.singularityComparison` (compatibility): Étale/formally smooth charts transfer the local-model flatness and geometric singularity type to the moduli, with the CM factor retained.

**Named checks:**

- `UnitaryLocalModel.principal`: For a self-dual unramified type the local model is the rank-one Grassmannian chart of dimension n−1.
- `UnitaryLocalModel.nonprincipal`: An almost self-dual polarization gives a lattice multichain, not the perfect-pairing single-lattice chart.
- `UnitaryLocalModel.coefficient`: After ramified base change the diagram still exists, but a chart uv−ϖ becomes uv−t^e and cannot certify regularity.

**Uses:**

- PELModuliPartII:U7/semiglobal-local-types: Supplies this datum to the consumer’s construction or proof: Apply the local-model diagram, using the Eisenstein comparison on any ramified absolute base field.
- PELModuliPartII:U7/split-integral-geometry: Supplies this datum to the consumer’s construction or proof: Use the one-dimensional strict Lubin–Tate deformation theorem and full Drinfeld-level regularity supplier.
- PELModuliPartII:U7/ramified-global-geometry: Supplies this datum to the consumer’s construction or proof: Identify the distinguished wedge local-model factor and the trivial banal factors.
- PELModuliPartII:U7/exotic-global-smoothness: Supplies this datum to the consumer’s construction or proof: Use the even-rank π-modular local-model smoothness theorem at the distinguished place.
- PELModuliPartII:U8/asd-completed-local-rings: Supplies this datum to the consumer’s construction or proof: Normalize the local polarization pairing to diag(p,1,…,1).

**Acceptance:**

- For a self-dual unramified type the local model is the rank-one Grassmannian chart of dimension n−1.
- An almost self-dual polarization gives a lattice multichain, not the perfect-pairing single-lattice chart.

**Atlas name:** Unitary local-model diagram.

### Exotic integral smoothness

**Target:** `PELModuliPartII:U7/exotic-global-smoothness` (theorem).

Under U7/exotic-global-model’s hypotheses and sufficiently small/neat levels, the model is smooth over O_K of relative dimension n−1; it is projective in the compact Li–Liu setting F⁺≠Q. Changes of split prime-to-p level are finite étale. The absolute-to-relative identification used for its formal basic factor requires F⁺_u/Q_p unramified and is U4’s comparison.

**Prerequisites:** `PELModuliPartII:U7/exotic-global-model`, `PELModuliPartII:U7/unitary-local-model-diagram`, `PELModuliPartII:U3/exotic-smoothness`, `PELModuliPartII:U4/exotic-framed-comparison`, `PELModuliPartII:U6/auxiliary-cm-generic-comparison`, `SchemeAndStackFoundations:SF.1`, `ShimuraCompactifications:C5`.

**Source:** LL22, §4.5, p. 66; RSZ21 Theorem 5.7, p. 27.

**Construction or proof:**

1. Use the even-rank π-modular local-model smoothness theorem at the distinguished place.
2. Use the banal smooth factors and the étale CM base at the other p-places.
3. Apply the properness supplier in the compact case, and the prime-to-p level torsor for finite étaleness.

**Acceptance:**

- Smooth relative dimension is n−1, not the absolute p-divisible-group dimension nf.
- The projectivity assertion retains the compact global hypotheses.

### Ramified wedge and Krämer geometry

**Target:** `PELModuliPartII:U7/ramified-global-geometry` (theorem).

The self-dual ramified wedge model is flat, with isolated singularities; the global model is smooth away from ramified quadratic places (subject to its other local types). For n≥3 the Krämer enhancement is the blowup of those isolated singularities, and is regular with semistable reduction at ν when E_ν/F_{v₀} is unramified. For n=2 RSZ21 Remark 6.8 has local reflex field F⁺_{v₀}; its semistable local model loses semistability under the ramified extension containing F_{v₀}. The rank-two global enhanced comparison is retained as a gap, not included in the n≥3 blowup theorem.

**Prerequisites:** `PELModuliPartII:U7/ramified-kramer-model`, `PELModuliPartII:U7/unitary-local-model-diagram`, `PELModuliPartII:U5/kramer-geometry`, `SchemeAndStackFoundations:SF.4`.

**Source:** RSZ21, Theorem 6.7(ii), its proof and Remark 6.8, pp. 32–33; LZ22 §11.6, p. 77.

**Construction or proof:**

1. Identify the distinguished wedge local-model factor and the trivial banal factors.
2. Use the explicit Krämer local-model resolution and the equal-dimension smooth chart.
3. Verify the local reflex field and unramifiedness of its coefficient extension; isolate n=2.

**Acceptance:**

- For n≥3 the resolved relative dimension is n−1.
- Do not transfer the n≥3 global blowup statement to n=2.
- Resolve G2 before asserting the global rank-two coefficient/reflex comparison.

### Self-dual and almost self-dual geometry

**Target:** `PELModuliPartII:U7/semiglobal-local-types` (theorem).

If v₀ is inert, V_{v₀} is split and Λ_{v₀} self-dual, the semi-global model is smooth of relative dimension n−1; F⁺_{v₀}/Q_p may be ramified when the structural-action Eisenstein clause is retained. If v₀ is inert, V_{v₀} nonsplit, Λ_{v₀} almost self-dual and F⁺_{v₀}/Q_p unramified, the model is flat of relative dimension n−1; it is regular and semistable when E_ν/Q_p is unramified. At the other p-places assume the banal or permitted local types of LZ22 §11.2. For sufficiently small K^p it is representable over the CM stack by a scheme; after neat CM level it is a scheme.

**Prerequisites:** `PELModuliPartII:U7/unitary-local-model-diagram`, `PELModuliPartII:U1/unramified-smoothness`, `PELModuliPartII:U2/almost-self-dual-geometry`, `PELModuliPartII:U0/relative-framed-comparison`, `SchemeAndStackFoundations:SF.1`.

**Source:** LZ22, §11.2, p. 75; §11.3, p. 75; Cho18 Proposition 4.2 and Theorem 4.3, pp. 41–43.

**Construction or proof:**

1. Apply the local-model diagram, using the Eisenstein comparison on any ramified absolute base field.
2. Use the self-dual smooth chart or the almost self-dual semistable chart.
3. Check unramifiedness of the coefficient extension before transferring the latter regularity assertion.

**Acceptance:**

- The split self-dual inert case and nonsplit almost self-dual inert case have different polarization kernels.
- Flatness survives coefficient extension; regularity is asserted only with the stated unramified base hypothesis.

### Split level representability

**Target:** `PELModuliPartII:U7/split-integral-geometry` (theorem).

At split v₀ the m=0 model is smooth of relative dimension n−1. Under CM-type matching, and for m>0 with E_ν/E_{r,v₀} unramified, the full Drinfeld-level model is regular and finite flat over the m=0 model and has the specified generic principal congruence level. Keep the unramified local-reflex-field extension hypothesis for regularity. The equality with the normalization in its generic finite cover is proved using normality, not assumed from the generic moduli description.

**Prerequisites:** `PELModuliPartII:U7/split-drinfeld-level`, `PELModuliPartII:U7/unitary-local-model-diagram`, `PELModuli:M4/higher-level-normalization`, `SchemeAndStackFoundations:SF.4`, `LubinTateFormalModulesAndQuasiCanonicalLifts:LT.3`, `LubinTateFormalModulesAndQuasiCanonicalLifts:LT.3/universal-deformation`.

**Source:** LZ22, §§11.4–11.5, pp. 76–77, conditions (D)(a)–(b); RSZ20 Theorem 4.5, p. 20.

**Construction or proof:**

1. Use the one-dimensional strict Lubin–Tate deformation theorem and full Drinfeld-level regularity supplier.
2. Pull the deformation description through the unitary local-model/Serre–Tate comparison.
3. Prove finite flatness and generic-level agreement; identify the normal finite model by the normalization universal property.

**Acceptance:**

- For m=0 no Drinfeld cover is introduced.
- For m>0 arbitrary ramified coefficient base change is not declared regular.

### Global integral gluing and levels

**Target:** `PELModuliPartII:U7/global-integral-gluing` (construction).

Under LZ22’s global lattice conditions: at 2 the CM extension is unramified; inert split V has self-dual lattice; inert nonsplit V is unramified over Q_p with almost self-dual lattice; split places have self-dual lattice; ramified quadratic places are unramified over Q_p with self-dual lattice, construct the O_E-model by integral CM pairs and all corresponding local clauses. At ramified quadratic places use the Krämer enhancement with its rank/base restrictions when a regular model is required. Introduce principal congruence levels only at split places satisfying CM matching and E_ν/E_{r,v} unramified, by normalization in the generic cover. Keep the ramified coefficient exceptions for both almost self-dual and Krämer regularity.

**Prerequisites:** `PELModuliPartII:U7/split-integral-geometry`, `PELModuliPartII:U7/ramified-kramer-model`, `PELModuliPartII:U7/ramified-global-geometry`, `PELModuliPartII:U7/semiglobal-local-types`, `PELModuli:M4/higher-level-normalization`, `PELModuli:M4`, `SchemeAndStackFoundations:SF.1`.

**Source:** LZ22, §14.1–14.2, pp. 84–85; HLSY23 §10.2, pp. 77–79; RSZ21 Theorems 6.2 and 6.7, pp. 30, 32.

**Construction or proof:**

1. Specify the global integral abelian-scheme groupoid with all local conditions and sign components.
2. Identify each localization with its semi-global moduli via the canonical lattice-defined level orbit.
3. Use finite normalization for the selected generic level covers and the local Drinfeld comparison to prove finite flatness and the stated regular loci.

**API:**

- `GlobalUnitaryModel.ofPair` (constructor): Construct from a global integral CM pair satisfying each local clause.
- `GlobalUnitaryModel.localize` (compatibility): Localization at ν is the corresponding semi-global functor with its lattice-defined levels.
- `GlobalUnitaryModel.normalizeLevel` (constructor): Construct the finite normal cover for permitted split congruence levels.
- `GlobalUnitaryModel.forgetLevel` (functoriality): Level restrictions compose and agree with both generic and semi-global forgetful maps.

**Named checks:**

- `GlobalUnitaryModel.goodLocal`: At a self-dual unramified inert place localization is the smooth U7 model.
- `GlobalUnitaryModel.asdBase`: At an almost self-dual place a ramified E_ν/Q_p is not certified regular by the semistable local theorem.
- `GlobalUnitaryModel.congruenceRestriction`: A split congruence level failing CM matching or the unramified reflex extension is not covered by the regular-level theorem.

**Uses:**

- LZ22 §14.1–14.2, pp. 84–85; HLSY23 §10.2, pp. 77–79; RSZ21 Theorems 6.2 and 6.7, pp. 30, 32: Provides the level-compatible object or comparison used by the geometric cycle consumers; its explicit arrows and transported polarizations are required before forming their incidence or lifting loci.

**Acceptance:**

- At a self-dual unramified inert place localization is the smooth U7 model.
- At an almost self-dual place a ramified E_ν/Q_p is not certified regular by the semistable local theorem.

## U8 — Integral isogenies and neat model adapters

Construct the mixed global isogeny model using an actual totally positive F⁺ scalar and prove its required local degree q². In the special inert LTXZZ setting construct neat principal and almost self-dual pair models with the common-scalar arrow relation and retained CM factor. Prove the rank-one tangent formula and explicit smooth/crossing local equations, identify the correctly chosen generic Hermitian datum and integral tame Hecke system.

**Layer imports:** `AbelianSchemesAndArithmeticModuli:A4`, `AbelianSchemesAndArithmeticModuli:A6`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuli:M0`, `PELModuli:M1`, `PELModuli:M2`, `PELModuli:M3`, `PELModuli:M4`, `PELModuliPartII:U2`, `PELModuliPartII:U6`, `PELModuliPartII:U7`, `SchemeAndStackFoundations:SF.4`, `ShimuraCompactifications:C5`, `ShimuraVarieties:V1`, `ShimuraVarieties:V2`, `ShimuraVarieties:V6`.

### Neat smooth unitary moduli

**Target:** `PELModuliPartII:U8/ltxzz-smooth-moduli` (construction).

Use the special inert setting of LTXZZ22 Definition 3.3.4: p is odd, inert and unramified in F, and F⁺_𝔭=Q_p; take the unramified coefficient ring Z_{p,Φ}, N≥1, a Hermitian space V of signature (N−1,1) at the distinguished embedding and definite at the others, self-dual p-lattice and neat tame unitary/CM levels. Over the fixed finite étale CM level scheme T_p, define pairs (A₀,i₀,λ₀,η₀;A,i,λ,η^p) with A of Kottwitz type NΦ−τ∞+τ∞^c, λ p-principal, and Hermitian Hom-Tate level η^p. Arrows are prime-to-p quasi-isogenies φ₀,φ on both factors with the SAME c∈Z_(p)^× multiplying λ₀ and λ, and with transported CM and Hom levels. This arrow relation differs from RSZ’s exact CM-isomorphism convention and must be related through the explicit U6 quotient adapter.

**Prerequisites:** `PELModuliPartII:U6/auxiliary-cm-generic-comparison`, `PELModuliPartII:U7/semiglobal-rsz`, `PELModuli:M0/determinant-condition`, `PELModuli:M1/level-structure`, `PELModuli:M4`.

**Source:** LTXZZ22, Definition 3.3.4, p. 147; Lemma 4.2.1 and Definition 4.2.2, pp. 159–161.

**Construction or proof:**

1. Use the existing CM/PEL carriers with the two prescribed neat levels and special inert coefficient field.
2. Impose the p-principal polarization and Hom-level while using the common-scalar quasi-isogeny arrow relation on both factors.
3. Compare the resulting quotient to the RSZ or auxiliary-CM generic functor through the actual quotient maps.

**API:**

- `SmoothUnitaryModel.ofPair` (constructor): Construct a full pair with p-principal λ and the common-scalar arrow convention.
- `SmoothUnitaryModel.cmProjection` (projection): Return its CM level point in T_p.
- `SmoothUnitaryModel.generic` (compatibility): The generic fibre is Sh(V,K^pK_p)×(T_p)_η with the chosen embedding conventions.
- `SmoothUnitaryModel.levelChange` (functoriality): Neat prime-to-p level changes act on both CM and Hom-Tate factors as specified in U8/integral-hecke-system.
- `SmoothUnitaryModel.periodLine` (compatibility): At a complex point identify the negative period line with Hom_C(H₁^dR(A₀)_{τ∞},ω_{A∨,τ∞}); the source has rank one and the displayed target has rank one.

**Named checks:**

- `SmoothUnitaryModel.rankOne`: For N=1 its relative deformation dimension is zero.
- `SmoothUnitaryModel.commonScalar`: Scaling λ₀ and λ by different rational p-units is not the stated arrow relation.
- `SmoothUnitaryModel.specialInert`: An inert place with [F⁺_𝔭:Q_p]>1 is excluded from this source-specific adapter, even when another RSZ theorem applies.
- `SmoothUnitaryModel.periodLineRank`: For N=3, the condition that a map carry ω_{A₀∨,τ∞}=0 into ω_{A∨,τ∞} is vacuous and gives dimension 3, whereas the required period line has dimension 1.

**Uses:**

- PELModuliPartII:U8/smooth-geometry-tangent: Supplies this datum to the consumer’s construction or proof: Compute the polarized Hodge deformation using the rank-one distinguished quotient; the other factors are banal.
- PELModuliPartII:U8/ltxzz-asd-moduli: Supplies this datum to the consumer’s construction or proof: Keep the same CM factor and arrows as in the smooth adapter.
- PELModuliPartII:U8/integral-hecke-system: Supplies this datum to the consumer’s construction or proof: Restrict the existing adelic level category to prime-to-p compact opens preserving the chosen integral local type.

**Acceptance:**

- For N=1 its relative deformation dimension is zero.
- Scaling λ₀ and λ by different rational p-units is not the stated arrow relation.

**Atlas name:** Neat smooth unitary model.

### Neat almost self-dual moduli

**Target:** `PELModuliPartII:U8/ltxzz-asd-moduli` (construction).

Under the same special inert and neat coefficient hypotheses, fix the standard definite Hermitian space V° of rank N≥1 and a self-dual p-lattice; its away-p Hom-Tate data index the moduli. Define the LTXZZ22 almost self-dual CM pair with Kottwitz type NΦ−τ∞+τ∞^c and ker λ[p^∞]⊂A[p] of rank p², keeping the common p-unit scalar on both polarization arrows. At p this polarization has defect one, rather than the principal type of the fixed tame reference space. For N=1 retain the zero-dimensional smooth boundary case. The generic unitary space is a separately chosen indefinite uniformization datum, not V° itself.

**Prerequisites:** `PELModuliPartII:U8/ltxzz-smooth-moduli`, `PELModuliPartII:U2/almost-self-dual-rz`, `PELModuli:M1/prime-to-box-quasi-isogeny`.

**Source:** LTXZZ22, §5.1 and Definition 5.2.1, pp. 188–189; Remark 5.2.4, p. 190.

**Construction or proof:**

1. Keep the same CM factor and arrows as in the smooth adapter.
2. Replace the principal local polarization condition by the rank-p² kernel bound, with the prescribed tame Hermitian reference datum.
3. Treat N=1 separately from the n≥2 mixed local functor.

**API:**

- `ASDUnitaryModel.ofPair` (constructor): Construct from the CM pair with the defect-one polarization and fixed tame level.
- `ASDUnitaryModel.cmProjection` (projection): Return its point of T_p.
- `ASDUnitaryModel.kernelType` (characterisation): The p-primary polarization kernel is killed by p and has rank p².
- `ASDUnitaryModel.levelChange` (functoriality): Permitted tame Hecke changes preserve the local defect-one kernel type.

**Named checks:**

- `ASDUnitaryModel.notPrincipal`: A p-principal polarization fails this kernel-rank condition.
- `ASDUnitaryModel.rankOne`: For N=1 the moduli has zero relative dimension; no crossing stratum is introduced.
- `ASDUnitaryModel.referenceSpace`: The definite tame V° is not used as the archimedean datum of its generic Shimura variety.

**Uses:**

- PELModuliPartII:U8/asd-completed-local-rings: Supplies this datum to the consumer’s construction or proof: Normalize the local polarization pairing to diag(p,1,…,1).
- PELModuliPartII:U8/asd-generic-datum: Supplies this datum to the consumer’s construction or proof: Use the Hermitian local/global supplier to obtain V′ with the prescribed archimedean and p-adic invariants.
- PELModuliPartII:U8/integral-hecke-system: Supplies this datum to the consumer’s construction or proof: Restrict the existing adelic level category to prime-to-p compact opens preserving the chosen integral local type.

**Acceptance:**

- A p-principal polarization fails this kernel-rank condition.
- For N=1 the moduli has zero relative dimension; no crossing stratum is introduced.

**Atlas name:** Neat almost self-dual model.

### Almost self-dual local equations

**Target:** `PELModuliPartII:U8/asd-completed-local-rings` (theorem).

Over a perfect residue field k of a point of T_p, the completed local ring of the almost self-dual model is either W(k)[[t₁,…,t_{N−1}]], or, for N≥2, W(k)[[x₁,…,x_N]]/(x₁x_N−p). Thus the model is quasi-projective, regular and strictly semistable of relative dimension N−1 over the unramified coefficient ring. The N=1 model has only the first type. The balloon/ground/link geometry and tangent exact sequences of Theorem 5.2.5(2)–(5) are separate continuation targets; the present target supplies only the ambient local equations.

**Prerequisites:** `PELModuliPartII:U8/ltxzz-asd-moduli`, `PELModuliPartII:U7/unitary-local-model-diagram`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`, `SchemeAndStackFoundations:SF.4`.

**Source:** LTXZZ22, Theorem 5.2.5(1) and its local-model proof, pp. 190–193.

**Construction or proof:**

1. Normalize the local polarization pairing to diag(p,1,…,1).
2. Describe simultaneous Hodge line/hyperplane lifts and their orthogonality relation by Grothendieck–Messing.
3. In the crossing chart eliminate the remaining variables to obtain x₁x_N=p; in the other admissible charts solve for one variable to obtain a smooth power-series ring.
4. Check the impossible fourth rank case and the N=1 boundary before concluding semistability.

**Acceptance:**

- For N=2 the crossing ring is W(k)[[x₁,x₂]]/(x₁x₂−p).
- The ambient local rings are reduced and regular although the special fibre can cross.
- After a ramified coefficient extension p=t^e with e>1, this argument supplies flatness but not regularity.

**Atlas name:** Almost self-dual local equations.

### Almost self-dual generic comparison

**Target:** `PELModuliPartII:U8/asd-generic-datum` (construction).

Choose an indefinite Hermitian V′ with the distinguished signature, an away-p isometry j:V°⊗A_f^p≅V′⊗A_f^p and an almost self-dual p-lattice Λ′_p of length-one defect, with its stabilizer K′_p. The generic fibre of the almost self-dual model is Sh(V′,jK^pK′_p)×(T_p)_η. This comparison depends on the uniformization datum (V′,j,Λ′_p); changing it gives the corresponding transported comparison. Its existence uses the Hermitian local/global classification supplier and the two-place invariant change.

**Prerequisites:** `PELModuliPartII:U8/ltxzz-asd-moduli`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuli:M3/hermitian-hom-space`, `ShimuraVarieties:V6/plan/abelian-canonical`.

**Source:** LTXZZ22, Definition 5.2.6 and formula (5.2), pp. 192–193.

**Construction or proof:**

1. Use the Hermitian local/global supplier to obtain V′ with the prescribed archimedean and p-adic invariants.
2. Compare the rational Hom-Tate and polarization datum with its stabilizer lattices.
3. Apply the canonical PEL comparison, retaining the independent CM level point.

**API:**

- `ASDGenericDatum.ofLocalGlobal` (constructor): Construct from V′,j,Λ′_p with all prescribed signatures and local isometries.
- `ASDGenericDatum.identify` (equivalence): Identify the generic moduli with the displayed Shimura product.
- `ASDGenericDatum.level` (compatibility): The transported tame compact open is jK^p and the p-level is Stab(Λ′_p).
- `ASDGenericDatum.change` (functoriality): An isomorphism of uniformization data transports the generic comparison and Hecke maps.

**Named checks:**

- `ASDGenericDatum.archimedean`: A wholly definite V′ is invalid when N>1 and the chosen signature is (N−1,1).
- `ASDGenericDatum.localDefect`: Replacing Λ′_p by a self-dual lattice changes the generic level comparison.
- `ASDGenericDatum.cmFactor`: For two different CM level points the product comparison retains two separate components.

**Uses:**

- PELModuliPartII:U8/integral-hecke-system: Supplies this datum to the consumer’s construction or proof: Restrict the existing adelic level category to prime-to-p compact opens preserving the chosen integral local type.

**Acceptance:**

- A wholly definite V′ is invalid when N>1 and the chosen signature is (N−1,1).
- Replacing Λ′_p by a self-dual lattice changes the generic level comparison.

**Atlas name:** Almost self-dual generic fibre.

### Integral level and Hecke system

**Target:** `PELModuliPartII:U8/integral-hecke-system` (construction).

For fixed allowable integral p-type, form the system over sufficiently small prime-to-p unitary and CM compact opens. The Hecke map indexed by g in U(V)(A_{F⁺,f}^p) and a in the CM torus transports η^p to η^p∘g and η₀ to η₀∘a, with the source/target compact opens satisfying the usual inclusion; correspondences are indexed by K^p\U(V)(A_{F⁺,f}^p)/K′^p. The permitted level-forgetful maps are finite étale and compose compatibly. For the LTXZZ almost self-dual case use V° for the tame system and transport it through j in the generic comparison. At p only the separately constructed split Drinfeld tower is included.

**Prerequisites:** `PELModuliPartII:U8/ltxzz-smooth-moduli`, `PELModuliPartII:U8/ltxzz-asd-moduli`, `PELModuliPartII:U8/asd-generic-datum`, `PELModuliPartII:U7/split-integral-geometry`, `PELModuli:M1/hecke-action`, `ShimuraVarieties:V1/level-index`.

**Source:** LTXZZ22, §4.2, pp. 161–162; §5.2, p. 189; compare LL22 §4.5, p. 66.

**Construction or proof:**

1. Restrict the existing adelic level category to prime-to-p compact opens preserving the chosen integral local type.
2. Transport the two level structures on the same polarized abelian pair and verify the common-scalar arrow equivalence.
3. Use the prime-to-p étale Tate torsors to prove finite étaleness, and compare the generic Hecke composition with the imported level category.

**API:**

- `IntegralHeckeSystem.change` (constructor): Construct the change-of-level map for the indicated compact-open inclusion.
- `IntegralHeckeSystem.correspondence` (constructor): Construct the correspondence indexed by the displayed unitary double coset and CM torus action.
- `IntegralHeckeSystem.generic` (compatibility): On generic fibres these maps are the canonical adelic Hecke maps.
- `IntegralHeckeSystem.compose` (functoriality): Transport by g then h agrees with composition of the associated level maps, with the imported category’s ordering convention.

**Named checks:**

- `IntegralHeckeSystem.identity`: At g=1,a=1 and identical levels the transport is the identity.
- `IntegralHeckeSystem.baseField`: The unitary finite adeles are those of F⁺, not of the CM field F.
- `IntegralHeckeSystem.pLevel`: A nonsplit change of parahoric p-type is not declared finite étale by this theorem.

**Uses:**

- PELModuliPartII:U9/cm-partition-and-product: Supplies this datum to the consumer’s construction or proof: Project the full quotient to its CM torus factor and compute the stabilizer of each chosen component.

**Acceptance:**

- At g=1,a=1 and identical levels the transport is the identity.
- The unitary finite adeles are those of F⁺, not of the CM field F.

**Atlas name:** Integral unitary Hecke system.

### Mixed integral isogeny moduli

**Target:** `PELModuliPartII:U8/mixed-global-moduli` (construction).

At the inert almost self-dual distinguished place v₀, choose the totally positive global scalar u₀=(x₀,x₀)∈F⁺ with valuation one at v₀ and zero at the other v|p, and the rank-(n+1) Hermitian extension V♯=V⊥⟨u₀⟩ with the lattices and compact opens of LZ22 §13.4. Enhance the semi-global CM pair by a principal-at-v₀ target A♯ and an O_{F,(p)}-linear isogeny α:A×A₀→A♯ in the prime-to-p isogeny category, with ker α⊂(A×A₀)[u₀], α*λ♯=λ×u₀λ₀, and transported tame and other-p levels. Fix the selected CM component and framing isogeny. The v₀-primary degree is q²: the two source polarization factors each have degree q² there, and the target is principal there. Any degree statement for an actual global representative must also retain its away-p factors. The printed global degree q is incompatible with this necessary local equation. Conjugating the global signature (n−1,1) to U1’s (1,n−1) sends the local CM source to bar ℰ of U2.

**Prerequisites:** `PELModuliPartII:U2/mixed-framed-space`, `PELModuliPartII:U7/semiglobal-rsz`, `PELModuli:M2/isogeny-kernel-ranks`, `AbelianSchemesAndArithmeticModuli:A6/degree-of-an-endomorphism`.

**Source:** LZ22, §13.4, pp. 82–83, with §10.2, pp. 64–65.

**Construction or proof:**

1. Choose V♯, u₀, the local self-dual overlattice and the other levels exactly as in §13.4; impose the isogeny relation in the localized abelian-scheme category.
2. Impose the displayed polarization pullback and transported levels; derive its degree rather than the incompatible printed degree.
3. Fix the basic framing component so that its distinguished deformation problem is the mixed local functor.

**API:**

- `MixedIntegralModel.ofIsogeny` (constructor): Construct a point from the global scalar u₀, the isogeny in the prime-to-p category, its kernel bound, the exact polarization equation and all transported levels.
- `MixedIntegralModel.source` (projection): Forget A♯ and α to the almost self-dual pair.
- `MixedIntegralModel.target` (projection): Return the principal rank-(n+1) pair with induced level.
- `MixedIntegralModel.generic` (compatibility): The two generic projections identify with the prescribed unitary isogeny correspondence after the CM/generic adapters.

**Named checks:**

- `MixedIntegralModel.degree`: For q=3, the two local source polarization degrees are 9, and the v₀-primary degree of α is 9 rather than 3; no assertion about its away-p degree is inferred.
- `MixedIntegralModel.level`: An α with correct polarization but wrong transported tame level is not a point.
- `MixedIntegralModel.local`: The formal distinguished isogeny has the same fixed reduction as U2; merely specifying its degree is insufficient.

**Uses:**

- PELModuliPartII:U9/mixed-uniformization: Supplies this datum to the consumer’s construction or proof: Use Serre–Tate full faithfulness for the finite-kernel isogeny α as well as its source and target.

**Acceptance:**

- For q=3, deg λ=9, deg(ϖλ₀)=9, and deg α=9 rather than 3.
- An α with correct polarization but wrong transported tame level is not a point.

**Atlas name:** Mixed unitary isogeny model.

### Smooth integral geometry and tangent space

**Target:** `PELModuliPartII:U8/smooth-geometry-tangent` (theorem).

The neat smooth unitary model is a smooth quasi-projective scheme over T_p of relative dimension N−1. At a geometric point its relative tangent space is Hom(ω_{A∨,τ∞},H₁^dR(A)_{τ∞}/ω_{A∨,τ∞}), with source rank 1 and target rank N−1. Its generic fibre is the canonical unitary Shimura variety times the CM factor. Projectivity from properness of the generic fibre requires the separate integral properness supplier; it does not follow just from smoothness and quasi-projectivity. Here H₁^dR is the dual of the imported H¹_dR. On complex points the negative period line is Hom_C(H₁^dR(A₀)_{τ∞},ω_{A∨,τ∞}); the condition on the zero subspace ω_{A₀∨,τ∞} cannot define that line.

**Prerequisites:** `PELModuliPartII:U8/ltxzz-smooth-moduli`, `PELModuliPartII:U7/localized-smoothness`, `AbelianSchemesAndArithmeticModuli:A4/grothendieck-messing`, `AbelianSchemesAndArithmeticModuli:A4/abelian-h1-de-rham`, `ShimuraVarieties:V2/plan/baily-borel`, `SchemeAndStackFoundations:SF.4`, `ShimuraCompactifications:C5`.

**Source:** LTXZZ22, Theorem 4.2.3 and formula (4.2), pp. 161–163; Remark 4.2.5, p. 163 (corrected period line).

**Construction or proof:**

1. Compute the polarized Hodge deformation using the rank-one distinguished quotient; the other factors are banal.
2. Use neat levels and the polarized moduli ampleness supplier for scheme representability and quasi-projectivity.
3. Identify the generic canonical model; invoke an integral valuative/boundary argument separately for the conditional projectivity clause.

**Acceptance:**

- For N=2 the tangent dimension is one.
- The CM tangent contribution is zero because T_p is étale over the coefficient ring.

## U9 — Basic-locus formal uniformization

Construct the nearby Hermitian framing datum, all CM/banal local factors and the effective arithmetic quotient morphism Θ to the selected basic completion. Prove the inert principal/ASD, mixed-isogeny and exotic comparisons; compare Krämer completions in the certified rank/base range. Prove the framing-class partition and Hasse condition needed for the full basic locus; compare the auxiliary CM product and its level changes without deleting discrete factors.

**Layer imports:** `AbelianSchemesAndArithmeticModuli:A4`, `FaltingsFinitenessAndIsogenyTheorems:R28.4`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuli:M3`, `PELModuli:M4`, `PELModuliPartII:U0`, `PELModuliPartII:U1`, `PELModuliPartII:U2`, `PELModuliPartII:U3`, `PELModuliPartII:U4`, `PELModuliPartII:U5`, `PELModuliPartII:U6`, `PELModuliPartII:U7`, `PELModuliPartII:U8`, `SchemeAndStackFoundations:SF.1`, `SchemeAndStackFoundations:SF.4`.

### Nearby unitary framing datum

**Target:** `PELModuliPartII:U9/nearby-framing-datum` (construction).

For the global unitary V and distinguished nonsplit finite place v₀, use the existing Hermitian classification to choose V′, definite at all real places, with the invariant at v₀ switched and all other finite local spaces unchanged. Fix the away-v₀ isometry and a basic CM pair realizing these local data. Identify its exact-polarization quasi-isogeny group with U(V′) and the rational-similitude pair group with G̃′=Z^Q×_{G_m}G′^Q. A framing choice selects an isogeny component; the full basic locus requires the Hasse/principal-homogeneous-space partition, rather than assuming every basic point is in that component.

**Prerequisites:** `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `PELModuli:M3/hermitian-hom-space`, `PELModuliPartII:U6/rsz-datum`, `PELModuliPartII:U6/sign-condition`, `PELModuliPartII:U1/special-hom`, `PELModuliPartII:U2/split-special-hom`, `PELModuliPartII:U3/exotic-special-hom`, `PELModuliPartII:U5/kramer-hom-comparison`, `FaltingsFinitenessAndIsogenyTheorems:R28.4`.

**Source:** Zhang21, §2.1, nearby spaces, pp. 870–871; §7.3, pp. 908–909; RZ96 §6.27–6.30, pp. 292–295.

**Construction or proof:**

1. Invoke the exact two-place Landherr existence and uniqueness supplier, not merely classification of a generic PEL datum.
2. Use the requested basic rational Tate–Dieudonné comparison to identify the self-quasi-isogenies with the Hermitian isometry group.
3. Check the signatures, all finite signs and the CM component; retain the partition if the group Hasse kernel is nontrivial.

**API:**

- `NearbyFraming.ofBasicPair` (constructor): Construct V′ and its global group from a chosen basic pair and the two-place classification.
- `NearbyFraming.local` (compatibility): The v₀ realization is the Hermitian special-Hom space of the selected local framing.
- `NearbyFraming.away` (equivalence): The chosen away-v₀ identification matches the original adelic group and compact-open levels.
- `NearbyFraming.change` (functoriality): A polarized quasi-isogeny between framing pairs conjugates the group identification and induced quotient presentation.

**Named checks:**

- `NearbyFraming.twoPlaces`: Flipping only the finite v₀ invariant violates the product formula; the distinguished real signature must change as well.
- `NearbyFraming.principalASD`: At an inert principal place V′_v₀ is nonsplit; at an inert almost self-dual place it is split.
- `NearbyFraming.component`: Choosing a different admissible global framing class must retain its component label until the Hasse comparison is proved.

**Uses:**

- PELModuliPartII:U9/banal-local-factors: Supplies this datum to the consumer’s construction or proof: Split the absolute p-divisible group by the p-adic places and the CM torus component.
- PELModuliPartII:U9/uniformization-morphism: Supplies this datum to the consumer’s construction or proof: Construct the polarized abelian quasi-isogeny pushout for every finite locally closed framed chart; retain the exact CM factor.

**Acceptance:**

- Flipping only the finite v₀ invariant violates the product formula; the distinguished real signature must change as well.
- At an inert principal place V′_v₀ is nonsplit; at an inert almost self-dual place it is split.

**Atlas name:** Nearby unitary framing.

### Banal and CM local factors

**Target:** `PELModuliPartII:U9/banal-local-factors` (construction).

In the RSZ uniformization hypotheses, the full absolute p-local framed space N′ is the product (Z^Q(Q_p)/K_{Z,p})×N_{O_breveEν}×∏_{v|p,v≠v₀}U(V_v)/K_v, where the other p-factors are banal and satisfy sign and Eisenstein and N is the matching principal or almost self-dual relative framed space. The two coset factors are formal discrete étale spaces. For an exotic model replace N by its absolute exotic factor and then use U4. This decomposition is equivariant for the identified local framing group; none of the discrete factors is discarded before quotienting.

**Prerequisites:** `PELModuliPartII:U9/nearby-framing-datum`, `PELModuliPartII:U6/eisenstein-condition`, `PELModuliPartII:U6/sign-condition`, `PELModuliPartII:U0/relative-framed-comparison`, `PELModuliPartII:U4/exotic-framed-comparison`, `SchemeAndStackFoundations:SF.4`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`.

**Source:** LZ22, §13.1, pp. 80–81; RSZ20 Lemma 8.16 and Remark 8.18, p. 53, Appendix B, pp. 59–60.

**Construction or proof:**

1. Split the absolute p-divisible group by the p-adic places and the CM torus component.
2. Use the strict Eisenstein condition and banal deformation rigidity to identify each nondistinguished factor with its discrete lattice-coset functor.
3. Apply the relative comparison only to the distinguished factor and verify the actions on every factor.

**API:**

- `BanalFactors.decompose` (equivalence): Identify the full local framed functor with the displayed distinguished and discrete product.
- `BanalFactors.distinguished` (projection): Extract N after the chosen absolute/relative framing identification.
- `BanalFactors.groupAction` (compatibility): The product decomposition intertwines the framing-group actions on all factors.
- `BanalFactors.level` (functoriality): Changing a compact-open level in a discrete factor gives its coset-forgetful map.

**Named checks:**

- `BanalFactors.cm`: A nontrivial Z^Q(Q_p)/K_{Z,p} factor is retained even when N is connected.
- `BanalFactors.emptyProduct`: If v₀ is the only place above p, the other-unitary-place product is a one-point factor.
- `BanalFactors.eisenstein`: A nonbanal de Rham deformation cannot be identified with a discrete coset merely because its generic signature matches.

**Uses:**

- PELModuliPartII:U9/uniformization-morphism: Supplies this datum to the consumer’s construction or proof: Construct the polarized abelian quasi-isogeny pushout for every finite locally closed framed chart; retain the exact CM factor.

**Acceptance:**

- A nontrivial Z^Q(Q_p)/K_{Z,p} factor is retained even when N is connected.
- If v₀ is the only place above p, the other-unitary-place product is a one-point factor.

**Atlas name:** Banal local factors.

### Unitary uniformization morphism

**Target:** `PELModuliPartII:U9/uniformization-morphism` (construction).

For a chosen basic global CM pair and sufficiently small integral level, construct Θ from the arithmetic quotient G̃′(Q)\[N′×G̃(A_f^p)/K^p] to the completion of the integral model along the basic isogeny component. Starting from the framed p-divisible deformation and the away-p lattice/level data, use Serre–Tate effectivity and the quasi-isogeny pushout construction to recover the polarized abelian pair. Descent through quasi-isogenies makes the map independent of representatives. RZ96 Theorem 6.30 identifies the image with an open-and-closed basic sublocus Z′; equality with the full basic locus Z requires its Hasse hypothesis or a disjoint union over framing classes.

**Prerequisites:** `PELModuliPartII:U9/nearby-framing-datum`, `PELModuliPartII:U9/banal-local-factors`, `AbelianSchemesAndArithmeticModuli:A4/serre-tate-equivalence`, `AbelianSchemesAndArithmeticModuli:A4/polarized-effectivity`, `SchemeAndStackFoundations:SF.4`, `SchemeAndStackFoundations:SF.1`, `FaltingsFinitenessAndIsogenyTheorems:R28.4`.

**Source:** RZ96, §§6.13–6.16, pp. 282–284; Theorems 6.24, 6.27 and 6.30, pp. 291–295.

**Construction or proof:**

1. Construct the polarized abelian quasi-isogeny pushout for every finite locally closed framed chart; retain the exact CM factor.
2. Use the generic formal effectivity/completion suppliers to identify its infinitesimal functor with the local p-divisible deformation functor.
3. Show fully faithful descent modulo the global quasi-isogeny group and compatibility with the tame level torsor.
4. Use the basic rational comparison and Hasse partition for essential surjectivity; apply the formal quotient supplier to obtain an isomorphism onto the indicated completion.

**API:**

- `UnitaryUniformization.construct` (constructor): Construct Θ on a framed deformation with its discrete and tame level data.
- `UnitaryUniformization.representative` (characterisation): Changing by G̃′(Q) yields canonically isomorphic polarized abelian data.
- `UnitaryUniformization.deformation` (compatibility): On formal deformation rings Θ is the Serre–Tate/local-model comparison.
- `UnitaryUniformization.hecke` (functoriality): Θ commutes with permitted tame Hecke maps and the associated changes of level.

**Named checks:**

- `UnitaryUniformization.direction`: The RZ96 framing convention points from the fixed object to the deformation; use inversion to compare with the local ρ:X→𝕏 convention.
- `UnitaryUniformization.hasse`: Without the Hasse hypothesis the theorem concludes Z′⊂Z open and closed, rather than equality with all Z.
- `UnitaryUniformization.cm`: Forgetting the CM torus coset before descent changes the source of Θ.

**Uses:**

- PELModuliPartII:U9/inert-uniformization: Supplies this datum to the consumer’s construction or proof: Apply Θ with the exact good/almost self-dual integral conditions.
- PELModuliPartII:U9/mixed-uniformization: Supplies this datum to the consumer’s construction or proof: Use Serre–Tate full faithfulness for the finite-kernel isogeny α as well as its source and target.
- PELModuliPartII:U9/kramer-formal-comparison: Supplies this datum to the consumer’s construction or proof: Apply the formal deformation comparison to the underlying polarized ramified pair.
- PELModuliPartII:U9/exotic-uniformization: Supplies this datum to the consumer’s construction or proof: Fix the CM point and basic pair before defining the global Hom space, its normalization and the framing.

**Acceptance:**

- The RZ96 framing convention points from the fixed object to the deformation; use inversion to compare with the local ρ:X→𝕏 convention.
- Without the Hasse hypothesis the theorem concludes Z′⊂Z open and closed, rather than equality with all Z.

**Atlas name:** Unitary uniformization morphism.

### Exotic basic-locus uniformization

**Target:** `PELModuliPartII:U9/exotic-uniformization` (theorem).

In the compact even-rank LL22 setting and at a ramified distinguished u with F⁺_u/Q_p unramified, fix P₀∈Y(O_breveK), a basic point P in the P₀ fibre and the induced definite Hermitian V′ with h=ϖ^−1 λ₀^−1 y∨λ_Ax. The completion of that fibre is U(V′)(F⁺)\[N^exo×U(V)(A_f^{u})/∏_{v∈U}L_v] over O_breveK, with the precise other-local/tame cosets of LL22 (4.8). The quotient is initially built with N_Φ and identified with N^exo by U4. This is the first assertion of Proposition 4.30; its special-divisor identity belongs to the cycle consumers.

**Prerequisites:** `PELModuliPartII:U7/exotic-global-model`, `PELModuliPartII:U9/uniformization-morphism`, `PELModuliPartII:U4/exotic-framed-comparison`, `PELModuliPartII:U3/exotic-special-hom`, `PELModuliPartII:U6/cm-coefficient-unramified`, `PELModuliPartII:U6/auxiliary-cm-generic-comparison`.

**Source:** LL22, §4.5, equation (4.8), Remark 4.29 and Proposition 4.30, pp. 67–68.

**Construction or proof:**

1. Fix the CM point and basic pair before defining the global Hom space, its normalization and the framing.
2. Choose a polarized height-zero quasi-isogeny by the basic rational comparison; use it to construct the absolute framed point and every away-u coset.
3. Show independence under the global unitary group and apply the RZ96 basic uniformization argument.
4. Compose with the full absolute/relative exotic equivalence and check level equivariance.

**Acceptance:**

- The source’s base-point dependence is retained, as in Remark 4.29.
- A proof of the divisor formula is not used to establish this moduli isomorphism.
- The CM fibre is fixed before writing the unitary quotient.

**Atlas name:** Exotic basic uniformization.

### Inert basic-locus uniformization

**Target:** `PELModuliPartII:U9/inert-uniformization` (theorem).

For the localized or semi-global RSZ model with p>2 at the distinguished inert place and the other p-types as in U7, after base change to O_breveEν the basic completion is G̃′(Q)\[N_{O_breveEν}×G̃(A_f^{v₀})/K^{v₀}], with the notation G̃(A_f^{v₀})/K^{v₀} including the CM p-coset and all other p-local cosets from U9/banal-local-factors. N is U1 in the principal self-dual case and U2 in the almost self-dual case. In the principal case ramified F⁺_{v₀}/Q_p is allowed by the actual Eisenstein/Mihatsch comparison. In the almost self-dual case keep the source’s unramified F⁺_{v₀}/Q_p hypotheses. Include the framing-class partition from Θ until the stated unitary Hasse argument identifies the full basic locus.

**Prerequisites:** `PELModuliPartII:U9/uniformization-morphism`, `PELModuliPartII:U7/semiglobal-local-types`, `PELModuliPartII:U7/localized-rsz`, `PELModuliPartII:U1/unramified-rz`, `PELModuliPartII:U2/almost-self-dual-rz`, `PELModuliPartII:U0/relative-framed-comparison`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`.

**Source:** LZ22, §13.1, equation (13.1.0.1) and footnote 5, pp. 80–81; Zhang21 equations (7.3)–(7.6), pp. 908–909; Cho18 Theorem 4.3, pp. 42–43.

**Construction or proof:**

1. Apply Θ with the exact good/almost self-dual integral conditions.
2. Identify the principal absolute factor by Mihatsch and the almost self-dual factor by Cho’s specified comparison.
3. Absorb the discrete product factors in the away-v₀ notation and prove its equivariance.
4. Use the imported Hermitian Hasse theorem and the selected CM/sign components to account for all framing classes.

**Acceptance:**

- For n=1 the principal distinguished factor has no relative formal parameter.
- A ramified principal base-field comparison does not imply the same extension of the almost self-dual theorem.
- The displayed quotient and level maps agree on formal functors, not only geometric points.

**Atlas name:** Inert basic uniformization.

### CM partition and Li–Liu product

**Target:** `PELModuliPartII:U9/cm-partition-and-product` (comparison).

For the RSZ completion the CM projection is the discrete quotient Z^Q(Q)\Z^Q(A_f)/K_Z; each fibre has the corresponding nearby-unitary quotient presentation with chosen transported level. For the unramified compact Li–Liu auxiliary model, the comparison of U6 gives a level-compatible isomorphism X̂_L≅(U(V′)(F⁺)\[N×U(V)(A_f^u)/L^u])×_{Spf O_K}Ŷ after base change to O_breveK, as in LL21 (8.2). For the exotic case use the fibrewise U9/exotic-uniformization and the CM tower descent to reassemble the auxiliary CM factor. This states the product only in the specified auxiliary-model conventions; a single chosen fibre does not by itself identify the entire RSZ completion.

**Prerequisites:** `PELModuliPartII:U9/inert-uniformization`, `PELModuliPartII:U9/exotic-uniformization`, `PELModuliPartII:U6/auxiliary-cm-generic-comparison`, `PELModuliPartII:U8/integral-hecke-system`, `PELModuli:M4`, `SchemeAndStackFoundations:SF.1`.

**Source:** Zhang21, Equations (7.5)–(7.6), p. 909; LL21 equation (8.2), p. 37; LL22 equation (4.8), pp. 67–68.

**Construction or proof:**

1. Project the full quotient to its CM torus factor and compute the stabilizer of each chosen component.
2. Use the auxiliary CM product comparison to identify the corresponding fibre family.
3. Prove naturality over the CM tower and tame level changes, then descend the fibrewise identifications.

**Acceptance:**

- When the CM class set has two elements the RSZ completion retains two labelled fibres.
- The Ŷ factor in the Li–Liu formula is preserved by all level-forgetful maps.

### Krämer completion compatibility

**Target:** `PELModuliPartII:U9/kramer-formal-comparison` (comparison).

In the n≥3 unramified-coefficient ramified setting of U7/ramified-global-geometry, the global Krämer enhancement completed along a selected basic component is the corresponding principal ramified framed completion with the U5 Krämer filtration, times its CM and other discrete local factors and modulo the global framing group. The comparison conjugates the local Lie labels as specified in U7 and preserves the forgetful map to the wedge model. The n=2 global coefficient/reflex-field issue remains a separate gap.

**Prerequisites:** `PELModuliPartII:U7/ramified-global-geometry`, `PELModuliPartII:U5/kramer-rz`, `PELModuliPartII:U9/uniformization-morphism`, `PELModuliPartII:U0/signature-conjugation`.

**Source:** HLSY23, §10.1–10.2, pp. 76–79; RSZ21 Definition 6.10 and Lemma 6.11, pp. 33–34.

**Construction or proof:**

1. Apply the formal deformation comparison to the underlying polarized ramified pair.
2. Transport the Hodge filtration to the precisely labeled Krämer subbundle through the local-model diagram.
3. Check descent of the enhancement and compatibility with the wedge forgetful maps.

**Acceptance:**

- The completed subbundle has rank n−1 with the declared local conjugate action.
- The comparison is restricted to the rank/base range certified in U7.

### Mixed basic-locus comparison

**Target:** `PELModuliPartII:U9/mixed-uniformization` (theorem).

The completion of the corrected mixed integral isogeny model at its chosen basic framing component is the arithmetic quotient of the mixed local framed space Ñ¹_n with the same CM, other-p and tame factors as in U9. The two forgetful maps to the almost self-dual and principal rank-(n+1) completions correspond to π₁ and π₂ of U2, equivariantly for the embedded nearby group. On generic fibres they recover the stated isogeny correspondence. Its proof uses the moduli functor and generic projections. For context, LRZ26 Theorem 14.6.2 proves that π₁ is integrally finite flat of degree q+1 and π₂ is proper and an isomorphism away from a zero-dimensional center, with exceptional projective spaces. There is no integral identification Ñ¹_n≅Z(x₀). That divisor-resolution and its intersection consequences belong to the cycle consumer, rather than being a hypothesis of this moduli uniformization.

**Prerequisites:** `PELModuliPartII:U8/mixed-global-moduli`, `PELModuliPartII:U9/uniformization-morphism`, `PELModuliPartII:U2/mixed-framed-space`, `PELModuliPartII:U2/mixed-generic-projections`, `PELModuliPartII:U9/inert-uniformization`.

**Source:** LZ22, §13.4, pp. 82–83; §10.2 and Remark 10.2.1, pp. 64–65; distinguish Conjecture 10.4.1, p. 67.

**Construction or proof:**

1. Use Serre–Tate full faithfulness for the finite-kernel isogeny α as well as its source and target.
2. Identify the local framing isogeny and the two transported level structures.
3. Apply Θ to the enhanced functor and verify that forgetting α commutes with both quotient maps.

**Acceptance:**

- The local isogeny has degree q² consistent with the polarization identity.
- The first generic projection has degree q+1; this is not the degree of α.

**Atlas name:** Mixed isogeny uniformization.

## Exact supplier contracts

These contracts request additional mathematics from the named owners. Where the extension exceeds the owner’s present scope, the restructuring proposals specify an extension in that direction. Their dependent targets or routed input items are listed explicitly.

### `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`

**need:** Extend the existing perfect-field covariant Dieudonné theory to strict formal O_K-modules, relative Cartier duality and its inverse-different comparison with absolute duality; polarized windows/displays over locally noetherian nilpotent bases, normal decompositions, Frobenius-graded contractions and Lubin–Tate frame change; integral Hom lifting, rational full faithfulness, and rigidity. Supply the canonical framed principal CM lift with structural or conjugate Lie character. Keep relative K-height distinct from absolute p-height and duality conventions explicit.

**usedBy:** `PELModuliPartII:U0/principal-hermitian-module`, `PELModuliPartII:U0/relative-comparison-functor`, `PELModuliPartII:U1/special-hom`, `PELModuliPartII:U2/almost-self-dual-geometry`, `PELModuliPartII:U2/split-special-hom`, `PELModuliPartII:U3/exotic-relative`, `PELModuliPartII:U3/exotic-symmetrization`, `PELModuliPartII:U3/exotic-special-hom`, `PELModuliPartII:U4/absolute-exotic`, `PELModuliPartII:U4/banal-display-contraction`, `PELModuliPartII:U4/exotic-relative-functor`, `PELModuliPartII:U4/exotic-relative-equivalence`, `PELModuliPartII:U5/kramer-dieudonne-space`, `PELModuliPartII:U5/kramer-hom-comparison`, `PELModuliPartII:U6/sign-condition`, `PELModuliPartII:U6/eisenstein-condition`, `PELModuliPartII:U7/split-drinfeld-level`, `PELModuliPartII:U9/banal-local-factors`, `PELModuliPartII:U5/kramer-rank-one-source`, `PELModuliPartII:U5/kramer-special-hom`, `PELModuliPartII:U3/rank-one-source`, `PELModuliPartII:U4/principal-source-comparison`

**reason:** R07.2 currently exports perfect-field modules and deformation targets, not the full relative polarized display contracts used by Mih19 §§3,11–13 and LL22 §2.8. This is a general integral-Hodge extension, not a new unitary object here.

### `SchemeAndStackFoundations:SF.4`

**need:** Represent polarized PEL framed p-divisible deformation functors with quasi-isogenies on the uniformizer-zero base by separated formal schemes locally formally of finite type (RZ96 Theorem 3.25); allow fixed-height components, closed Lie/kernel conditions, canonical Artin-level effectivity and formal Yoneda/completion comparisons. Supply generic formal local-model charts, blow-up and infinitesimal smoothness transfer; do not assume the whole RZ space quasi-compact or p-adic.

**usedBy:** `PELModuliPartII:U0/relative-framed-comparison`, `PELModuliPartII:U1/unramified-rz`, `PELModuliPartII:U1/unramified-smoothness`, `PELModuliPartII:U2/almost-self-dual-rz`, `PELModuliPartII:U2/almost-self-dual-geometry`, `PELModuliPartII:U2/mixed-framed-space`, `PELModuliPartII:U3/exotic-rz`, `PELModuliPartII:U3/exotic-smoothness`, `PELModuliPartII:U4/exotic-framed-comparison`, `PELModuliPartII:U5/kramer-rz`, `PELModuliPartII:U5/kramer-geometry`, `PELModuliPartII:U7/unitary-local-model-diagram`, `PELModuliPartII:U7/split-integral-geometry`, `PELModuliPartII:U7/ramified-kramer-model`, `PELModuliPartII:U7/ramified-global-geometry`, `PELModuliPartII:U8/smooth-geometry-tangent`, `PELModuliPartII:U8/asd-completed-local-rings`, `PELModuliPartII:U9/banal-local-factors`, `PELModuliPartII:U9/uniformization-morphism`, `PELModuliPartII:U1/diagonal-graph`, `PELModuliPartII:U5/kramer-rank-one-source`, `PELModuliPartII:U5/kramer-local-charts`, `PELModuliPartII:U3/rank-one-source`

**reason:** SF.4 is the generic formal moduli owner; its algebraic deformation carrier alone is insufficient for the full framed formal moduli theorem.

### `SchemeAndStackFoundations:SF.1`

**need:** Supply effective descent and formal arithmetic quotients by discrete quasi-isogeny groups under the RZ proper-discontinuity and sufficiently-small-level hypotheses, with stabilizers, fibrewise CM partition and changes of level retained. The quotient must represent the orbit/sheaf functor, not just its geometric point set.

**usedBy:** `PELModuliPartII:U7/localized-smoothness`, `PELModuliPartII:U7/semiglobal-local-types`, `PELModuliPartII:U7/exotic-global-smoothness`, `PELModuliPartII:U7/global-integral-gluing`, `PELModuliPartII:U9/uniformization-morphism`, `PELModuliPartII:U9/cm-partition-and-product`

**reason:** Generic descent and stacks are existing SF.1 targets; this requests the formal discrete-action interface needed by Θ.

### `PELModuli:M4`

**need:** Extend the CM moduli construction to specified polarization ideal a prime to p and selected ξ-components, including primes ramified in the global CM field. Under the stated local CM/reflex and maximal p-level hypotheses prove finite étaleness over the actual coefficient ring; permit an empty component and state nonemptiness separately. Supply CM torus cosets and canonical principal local CM lifts, without asserting all-prime smoothness for an arbitrary CM moduli problem.

**usedBy:** `PELModuliPartII:U6/local-level-data`, `PELModuliPartII:U7/localized-rsz`, `PELModuliPartII:U7/semiglobal-rsz`, `PELModuliPartII:U7/global-integral-gluing`, `PELModuliPartII:U8/ltxzz-smooth-moduli`, `PELModuliPartII:U9/cm-partition-and-product`

**reason:** The existing M4 cm-moduli-scheme node assumes p unramified in the CM field and one neutral component; LL21 Notation 5.6, LL22 Notation 4.19 and RSZ21 §3.3 need a more precise extension.

### `GeometryOfNumbersAndQuadraticArithmetic:GN.2`

**need:** Supply Hermitian local determinant/norm-class classification, rational isocrystal-Hermitian realizations and their lattice types; Landherr existence/uniqueness with exactly the distinguished real and finite local invariants switched, product formula and the relevant unitary Hasse principle. Include self-dual versus length-one dual-quotient lattices, the rank-one source norm and odd/even determinant scaling.

**usedBy:** `PELModuliPartII:U1/special-hom`, `PELModuliPartII:U2/split-special-hom`, `PELModuliPartII:U2/mixed-generic-projections`, `PELModuliPartII:U3/exotic-smoothness`, `PELModuliPartII:U3/exotic-special-hom`, `PELModuliPartII:U5/kramer-dieudonne-space`, `PELModuliPartII:U5/kramer-framing-sign`, `PELModuliPartII:U6/local-level-data`, `PELModuliPartII:U6/sign-condition`, `PELModuliPartII:U8/asd-generic-datum`, `PELModuliPartII:U9/nearby-framing-datum`, `PELModuliPartII:U9/inert-uniformization`, `PELModuliPartII:U5/kramer-special-hom`

**reason:** GN.2 owns general Hermitian local/global arithmetic; the new IntegralLattices roadmap concerns symmetric quadratic lattices and does not replace these O_L-Hermitian contracts.

### `ReductiveGroupsPartII:RG2.3`

**need:** Extend lattice-chain stabilizer schemes to the full automorphism group of a polarized O_L-linear periodic multichain over the stated odd-residue-characteristic DVRs, including the Weil-restricted factors when the ground extension is ramified. Prove the smoothness needed for its trivialization torsor and distinguish that group from its connected parahoric. Reuse RG2.3/lattice-chain-stabilizer-schemes (currently GL/GSp) and hodge-type-fixer-immersion; neither exact statement supplies smoothness of this full unitary multichain automorphism group.

**usedBy:** `PELModuliPartII:U7/unitary-local-model-diagram`

**reason:** RSZ21 §5.1 uses this general reductive integral-model input. The unitary torsor/Hodge diagram remains U7’s application.

### `LubinTateFormalModulesAndQuasiCanonicalLifts:LT.3`

**need:** Export full integral Drinfeld level on a strict one-dimensional formal O_K-module of height n as an equality of effective Cartier torsion divisors. Prove representability, finite flatness over level zero, regularity of its universal finite-level deformation rings and the generic principal-congruence identification. Keep unramified coefficient extensions explicit; import LT.3/universal-deformation for level zero.

**usedBy:** `PELModuliPartII:U7/split-drinfeld-level`, `PELModuliPartII:U7/split-integral-geometry`

**reason:** The current LT.3 marked universal deformation has no full Drinfeld-level theorem. ET.6a consumes the same formal-module owners for its tower; requesting the integral extension here avoids constructing a second tower.

### `AdicSpacesPartII:R2`

**need:** For the locally finite-type formal charts of U2, supply generic fibres, coefficient base change, finite étale comparisons and the functor-to-generic-space identification used to prove π₁ generic finite étale of degree q+1 and π₂ an isomorphism onto its image. Glue on admissible charts without claiming the full RZ space quasi-compact.

**usedBy:** `PELModuliPartII:U2/mixed-generic-projections`

**reason:** Only the generic-fibre interface is imported. The proper integral resolution of the lifting divisor is now known by LRZ26 Theorem 14.6.2; this interface neither asserts an integral equality nor needs that divisor theory.

### `ShimuraCompactifications:C5`

**need:** Extend the polarized-moduli ampleness/quasi-projectivity and valuative or flat-boundary properness argument to the particular unitary CM-pair integral models at the Eisenstein, almost self-dual and exotic local types used here. Under a proper generic Shimura fibre prove the integral pair model proper, then projective by the Hodge ample bundle. Keep the actual coefficient and neat-level hypotheses; generic properness alone is insufficient.

**usedBy:** `PELModuliPartII:U7/localized-smoothness`, `PELModuliPartII:U7/exotic-global-smoothness`, `PELModuliPartII:U8/smooth-geometry-tangent`

**reason:** C5 supplies good-prime integral PEL compactifications and explicitly excludes arbitrary bad-prime extensions. This is the exact extra export behind U7 and LTXZZ22 Theorem 4.2.3’s last assertion.

### `FaltingsFinitenessAndIsogenyTheorems:R28.4`

**need:** Extend the number-field isogeny-theorem exports with finite-field Tate’s theorem and the basic CM/PEL rational Tate–Dieudonné comparison over an algebraically closed residue field under the commutative-center/basic-isotypic hypotheses of RZ96 Corollary 6.29. Identify polarized quasi-isogenies and global rational Hom with the relevant Hermitian realization; do not infer the algebraically closed statement from a single finite-field Galois-equivariance condition.

**usedBy:** `PELModuliPartII:U9/nearby-framing-datum`, `PELModuliPartII:U9/uniformization-morphism`

**reason:** The nearby inner form and essential surjectivity of Θ use the basic comparison in RZ96 §§6.27–6.30, beyond the current number-field R28.4 contract.

### `AbelianSchemesAndArithmeticModuli:A6`

**need:** Export Zhang21 Lemma 7.10(b): for an O_F-linear rational endomorphism of an abelian variety, the characteristic polynomial on its F⊗Q_ℓ Tate module is in F[T] and independent of ℓ≠char(k), with each embedding component recovered by trace pairing. Export Lemma 7.11: both ordinary rational and F-linear polynomials are constant over a connected family, clearing denominators and descending coefficients across connected étale covers. Reuse A6/degree-of-an-endomorphism, charpoly-of-endomorphism and charpoly-on-Tate for Lemma 7.10(a).

**reason:** These are general abelian-scheme theorems from the Zhang route, not new PEL definitions. Newton identities plus trace nondegeneracy give F-valued coefficients; geometric connectedness of each invertible-ℓ open is not assumed. This owner export accounts for the two routed general theorems; no extra local-moduli target is invented merely to consume them.

**routedItems:** `PAPER-ZHANG-21/57`, `PAPER-ZHANG-21/58`

## Unresolved mathematical assertions

### PELModuliPartII/G1 — Two exotic components over a general ground field

U3/exotic-smoothness includes the general-K two-component target stated by LL22 Lemma 2.4 and footnote 8. Wu16 Theorems 5.17–5.18 prove connectedness for K=Q_p. No source or complete reduction proving connectedness for arbitrary K was established. Formal smoothness and the parity labels are separate from connectivity. Resolve by extending Wu’s lattice-incidence connectivity proof to the relative K setting; U4 only covers K/Q_p unramified and does not itself prove connectedness.

Affected targets: `PELModuliPartII:U3/exotic-smoothness`.

Sources: LL22 §2.1, footnote 8, p. 11; Wu16 Theorems 5.17–5.18, pp. 30–31.

### PELModuliPartII/G2 — Global rank-two Krämer reflex/base comparison

U5/kramer-local-charts derives local rank-two normal crossings over the natural ramified coefficient DVR. The RSZ21 global rank-two reflex field can instead be the ground F⁺ field, and passing to the ramified quadratic coefficient field need not preserve regularity. U7/ramified-global-geometry and U9/kramer-formal-comparison certify n≥3 with unramified coefficient extension. A precise rank-two global model and descent/base-change theorem is needed to remove this restriction; the n≥3 exceptional-quadric irreducibility argument cannot be imported in rank two.

Affected targets: `PELModuliPartII:U7/ramified-global-geometry`, `PELModuliPartII:U9/kramer-formal-comparison`.

Sources: RSZ21 §6.1 and Theorems 6.2, 6.7, pp. 28–32; Kraemer03 Theorem 4.5, pp. 8–13.

The certified ranges in the target statements exclude these unresolved extensions. Neither gap is filled by a generic-fibre identification or a pointwise comparison.

## Ownership and continuation

### 1. split — PELModuliPartII, PELModuliPartIII

The six routes share local and global integral-moduli objects. The 213-item LTXZZ route also adds an independent special-fibre, incidence, cohomological and geometric-reciprocity development. Mixing that direction into the moduli supplier would make cycle consumers depend on their own applications. Every routed item has an explicit disposition in routing.

Keep PELModuliPartII U0–U9 as the common unitary integral/formal-moduli and basic-completion roadmap. Create PELModuliPartIII, title “Siegel and PEL moduli problems, Part III: unitary special fibres and geometric reciprocity”, parent PELModuliPartII, area arithmeticgeometry. Its first pass must cover every item assigned to it in routing, importing all ambient moduli and uniformization from Part II. Proposed D0: admissible finite-field semilinear pairs, right orthogonals and unitary Deligne–Lusztig incidence varieties, with smoothness, tangent sequences, dimensions and special embeddings (LTXZZ22 Appendix A, pp. 352–363); ordinary Hermitian linear algebra stays with GN.2. D1: basic correspondence fibres, their Dieudonné inverse and normal bundle (Theorem 4.3.5, pp. 166–171). D2: balloon/ground/link strata, projective and Deligne–Lusztig fibre descriptions, tangent and normal sequences (Theorems 5.2.5(2)–(5), 5.3.4, 5.4.4 and 5.5.3, pp. 190–206). D3: finite basic source uniformization, definite Shimura-set and Hecke compatibility (Propositions 4.4.4, 4.4.6, pp. 173–178, and Constructions 5.3.6, 5.4.6, 5.5.5, 5.6.1, pp. 198–208), distinct from the formal basic completion in U9. D4: rank-increase maps and Cartesian diagrams on sources, correspondences and fibres (Propositions 4.5.5–4.5.9 and 5.10.6–5.10.14, pp. 181–187, 229–242). D5: intersections, excess bundles, primitive cohomology and specialization interfaces (Theorems 5.7.7–5.7.8, pp. 215–224; Lemmas 4.2.4, 5.2.7, 5.6.2); generic Chow, Gysin, blow-up, nearby-cycle and cycle-class theories remain with their existing scheme/motive/étale owners. D6: resolved product, graph and incidence operators and first geometric reciprocity law (Lemma 5.11.3, Construction 5.11.4 and Theorem 5.11.5, pp. 244–260); derive the potential-map and coinvariant factorization with the existing weight/spectral-sequence suppliers. The page ranges in this design brief are input-extraction locators for the new design to recheck, not a declaration that the continuation was source-closed in this run. Preserve all corrected statements and sourceIssues of PAPER-LIU-ETAL-22, especially descent restrictions on middle cohomology, rank-two primitive H⁰, parity of excess formulas, and the exceptional bundle in the product blow-up. Do not import the source’s printed trivial-bundle or untwisted-Galois claims without checking those findings.

### 2. rescope — PELModuliPartII, FiniteFlatGroupsAndIntegralPadicHodgeTheory

R07.2 currently exports perfect-field modules and deformation targets, not the full relative polarized display contracts used by Mih19 §§3,11–13 and LL22 §2.8. This is a general integral-Hodge extension, not a new unitary object here.

Keep the general input with FiniteFlatGroupsAndIntegralPadicHodgeTheory; extend its named stage or create “FiniteFlatGroupsAndIntegralPadicHodgeTheory, Part II” for the precise additional contract. Extend the existing perfect-field covariant Dieudonné theory to strict formal O_K-modules, relative Cartier duality and its inverse-different comparison with absolute duality; polarized windows/displays over locally noetherian nilpotent bases, normal decompositions, Frobenius-graded contractions and Lubin–Tate frame change; integral Hom lifting, rational full faithfulness, and rigidity. Supply the canonical framed principal CM lift with structural or conjugate Lie character. Keep relative K-height distinct from absolute p-height and duality conventions explicit. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 3. rescope — PELModuliPartII, SchemeAndStackFoundations

SF.4 is the generic formal moduli owner; its algebraic deformation carrier alone is insufficient for the full framed formal moduli theorem.

Keep the general input with SchemeAndStackFoundations; extend its named stage or create “SchemeAndStackFoundations, Part II” for the precise additional contract. Represent polarized PEL framed p-divisible deformation functors with quasi-isogenies on the uniformizer-zero base by separated formal schemes locally formally of finite type (RZ96 Theorem 3.25); allow fixed-height components, closed Lie/kernel conditions, canonical Artin-level effectivity and formal Yoneda/completion comparisons. Supply generic formal local-model charts, blow-up and infinitesimal smoothness transfer; do not assume the whole RZ space quasi-compact or p-adic. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 4. rescope — PELModuliPartII, SchemeAndStackFoundations

Generic descent and stacks are existing SF.1 targets; this requests the formal discrete-action interface needed by Θ.

Keep the general input with SchemeAndStackFoundations; extend its named stage or create “SchemeAndStackFoundations, Part II” for the precise additional contract. Supply effective descent and formal arithmetic quotients by discrete quasi-isogeny groups under the RZ proper-discontinuity and sufficiently-small-level hypotheses, with stabilizers, fibrewise CM partition and changes of level retained. The quotient must represent the orbit/sheaf functor, not just its geometric point set. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 5. rescope — PELModuliPartII, PELModuli

The existing M4 cm-moduli-scheme node assumes p unramified in the CM field and one neutral component; LL21 Notation 5.6, LL22 Notation 4.19 and RSZ21 §3.3 need a more precise extension.

Keep the general input with PELModuli; extend its named stage or create “PELModuli, Part II” for the precise additional contract. Extend the CM moduli construction to specified polarization ideal a prime to p and selected ξ-components, including primes ramified in the global CM field. Under the stated local CM/reflex and maximal p-level hypotheses prove finite étaleness over the actual coefficient ring; permit an empty component and state nonemptiness separately. Supply CM torus cosets and canonical principal local CM lifts, without asserting all-prime smoothness for an arbitrary CM moduli problem. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 6. rescope — PELModuliPartII, GeometryOfNumbersAndQuadraticArithmetic

GN.2 owns general Hermitian local/global arithmetic; the new IntegralLattices roadmap concerns symmetric quadratic lattices and does not replace these O_L-Hermitian contracts.

Keep the general input with GeometryOfNumbersAndQuadraticArithmetic; extend its named stage or create “GeometryOfNumbersAndQuadraticArithmetic, Part II” for the precise additional contract. Supply Hermitian local determinant/norm-class classification, rational isocrystal-Hermitian realizations and their lattice types; Landherr existence/uniqueness with exactly the distinguished real and finite local invariants switched, product formula and the relevant unitary Hasse principle. Include self-dual versus length-one dual-quotient lattices, the rank-one source norm and odd/even determinant scaling. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 7. rescope — PELModuliPartII, ReductiveGroupsPartII

RSZ21 §5.1 uses this general reductive integral-model input. The unitary torsor/Hodge diagram remains U7’s application.

Keep the general input with ReductiveGroupsPartII; extend its named stage or create “ReductiveGroupsPartII, Part II” for the precise additional contract. Extend lattice-chain stabilizer schemes to the full automorphism group of a polarized O_L-linear periodic multichain over the stated odd-residue-characteristic DVRs, including the Weil-restricted factors when the ground extension is ramified. Prove the smoothness needed for its trivialization torsor and distinguish that group from its connected parahoric. Reuse RG2.3/lattice-chain-stabilizer-schemes (currently GL/GSp) and hodge-type-fixer-immersion; neither exact statement supplies smoothness of this full unitary multichain automorphism group. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 8. rescope — PELModuliPartII, LubinTateFormalModulesAndQuasiCanonicalLifts

The current LT.3 marked universal deformation has no full Drinfeld-level theorem. ET.6a consumes the same formal-module owners for its tower; requesting the integral extension here avoids constructing a second tower.

Keep the general input with LubinTateFormalModulesAndQuasiCanonicalLifts; extend its named stage or create “LubinTateFormalModulesAndQuasiCanonicalLifts, Part II” for the precise additional contract. Export full integral Drinfeld level on a strict one-dimensional formal O_K-module of height n as an equality of effective Cartier torsion divisors. Prove representability, finite flatness over level zero, regularity of its universal finite-level deformation rings and the generic principal-congruence identification. Keep unramified coefficient extensions explicit; import LT.3/universal-deformation for level zero. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 9. rescope — PELModuliPartII, AdicSpacesPartII

Only the generic-fibre interface is imported. The proper integral resolution of the lifting divisor is now known by LRZ26 Theorem 14.6.2; this interface neither asserts an integral equality nor needs that divisor theory.

Keep the general input with AdicSpacesPartII; extend its named stage or create “AdicSpacesPartII, Part II” for the precise additional contract. For the locally finite-type formal charts of U2, supply generic fibres, coefficient base change, finite étale comparisons and the functor-to-generic-space identification used to prove π₁ generic finite étale of degree q+1 and π₂ an isomorphism onto its image. Glue on admissible charts without claiming the full RZ space quasi-compact. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 10. rescope — PELModuliPartII, ShimuraCompactifications

C5 supplies good-prime integral PEL compactifications and explicitly excludes arbitrary bad-prime extensions. This is the exact extra export behind U7 and LTXZZ22 Theorem 4.2.3’s last assertion.

Keep the general input with ShimuraCompactifications; extend its named stage or create “ShimuraCompactifications, Part II” for the precise additional contract. Extend the polarized-moduli ampleness/quasi-projectivity and valuative or flat-boundary properness argument to the particular unitary CM-pair integral models at the Eisenstein, almost self-dual and exotic local types used here. Under a proper generic Shimura fibre prove the integral pair model proper, then projective by the Hodge ample bundle. Keep the actual coefficient and neat-level hypotheses; generic properness alone is insufficient. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 11. rescope — PELModuliPartII, FaltingsFinitenessAndIsogenyTheorems

The nearby inner form and essential surjectivity of Θ use the basic comparison in RZ96 §§6.27–6.30, beyond the current number-field R28.4 contract.

Keep the general input with FaltingsFinitenessAndIsogenyTheorems; extend its named stage or create “FaltingsFinitenessAndIsogenyTheorems, Part II” for the precise additional contract. Extend the number-field isogeny-theorem exports with finite-field Tate’s theorem and the basic CM/PEL rational Tate–Dieudonné comparison over an algebraically closed residue field under the commutative-center/basic-isotypic hypotheses of RZ96 Corollary 6.29. Identify polarized quasi-isogenies and global rational Hom with the relevant Hermitian realization; do not infer the algebraically closed statement from a single finite-field Galois-equivariance condition. Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

### 12. rescope — PELModuliPartII, AbelianSchemesAndArithmeticModuli

These are general abelian-scheme theorems from the Zhang route, not new PEL definitions. Newton identities plus trace nondegeneracy give F-valued coefficients; geometric connectedness of each invertible-ℓ open is not assumed. This owner export accounts for the two routed general theorems; no extra local-moduli target is invented merely to consume them.

Keep the general input with AbelianSchemesAndArithmeticModuli; extend its named stage or create “AbelianSchemesAndArithmeticModuli, Part II” for the precise additional contract. Export Zhang21 Lemma 7.10(b): for an O_F-linear rational endomorphism of an abelian variety, the characteristic polynomial on its F⊗Q_ℓ Tate module is in F[T] and independent of ℓ≠char(k), with each embedding component recovered by trace pairing. Export Lemma 7.11: both ordinary rational and F-linear polynomials are constant over a connected family, clearing denominators and descending coefficients across connected étale covers. Reuse A6/degree-of-an-endomorphism, charpoly-of-endomorphism and charpoly-on-Tate for Lemma 7.10(a). Part II here owns only the stated unitary specialization; no existing upstream roadmap file is changed.

## Source corrections

Each correction below is stated in our own words against the identified edition. Existing extraction findings were independently checked at the source; their presence here does not supply an independent review verdict. Corrected mathematical statements are used in the targets.

### PELModuliPartII/E1 — HLSY23 (gap)

**Locator:** Definition 2.2(2), p. 10, arXiv:2208.07988v2

**Assertion in the source:** The framing condition specifies a height-zero O_L-linear quasi-isogeny without relating the two polarizations.

**Correction:** Require its pullback of the framing polarization to be locally an O_K-unit multiple of the object polarization, and use polarization-compatible arrows.

**Check:** The framed Hermitian isocrystal and its lattice pairing are not fixed by O_L-linearity and height alone. Howard19 §2 imposes the missing compatibility, which is used to identify the lattice moduli.

**Effect:** nothing

**Existing correction:** Previously recorded as PAPER-HE-LI-SHI-ETAL-23/E16; no claim of a published corrigendum.

**Correction search:**

- The existing extraction E16, independently checked against Definition 2.2 and Howard19 §2.
- arXiv:2208.07988 version history and the current author-hosted Kramer.pdf listing, checked 19 October 2026.

### PELModuliPartII/E2 — HLSY23 (misprint)

**Locator:** Introduction §1.2, p. 2, arXiv:2208.07988v2

**Assertion in the source:** The introductory description gives the Krämer filtration rank one.

**Correction:** In signature (1,n−1), use a rank-(n−1) conjugate-character subbundle and a rank-one structural-character quotient.

**Check:** Definition 2.2(3) and the Lie decomposition have that rank; the introductory rank agrees only when n=2.

**Effect:** nothing

**Existing correction:** Previously recorded as PAPER-HE-LI-SHI-ETAL-23/E17.

**Correction search:**

- The existing E17 and the actual introduction and Definition 2.2(3).
- arXiv v2 and the author-copy listing, checked 19 October 2026.

### PELModuliPartII/E3 — LTXZZ22 (misprint)

**Locator:** Definition 4.2.2, published p. 160

**Assertion in the source:** The unitary Hecke parameter is written using adeles of F rather than of F⁺.

**Correction:** Use U(V)(A_{F⁺}^{∞,p}) and the corresponding unitary double cosets.

**Check:** U(V) is a group over F⁺; extension to the CM-field adeles changes its points to a different group. Definition 3.1.11 and the surrounding level data fix the intended base.

**Effect:** nothing

**Existing correction:** Previously recorded as PAPER-LIU-ETAL-22/E36.

**Correction search:**

- Existing extraction E36 and the published Definitions 3.1.11 and 4.2.2, read directly.
- Author publication page and arXiv listing checked 19 October 2026; no separate correction located.

### PELModuliPartII/E4 — LTXZZ22 (gap)

**Locator:** Theorem 4.2.3, last assertion and proof, published p. 161

**Assertion in the source:** The theorem identifies projectivity of the integral model with projectivity of its generic fibre, while the displayed proof treats representability and tangent spaces.

**Correction:** Add a valuative or flat-boundary proof of integral properness under proper generic fibre, then use the ample Hodge bundle for projectivity; request this exact export from ShimuraCompactifications:C5.

**Check:** A smooth quasi-projective model with proper generic fibre need not be proper. RSZ21 Theorem 4.4 supplies the representability/smoothness input, but is not a replacement for the missing integral properness argument.

**Effect:** the proof

**Existing correction:** Previously recorded as PAPER-LIU-ETAL-22/E37; the plan treats it as an upstream proof obligation.

**Correction search:**

- Existing extraction E37; published proof read directly.
- RSZ21 Theorem 4.4 and its proof; current ShimuraCompactifications C5 scope.
- Author publication page and arXiv listing checked 19 October 2026.

### PELModuliPartII/E5 — LZ22 (misprint)

**Locator:** §13.4, p. 82, arXiv:1908.01701v3

**Assertion in the source:** The auxiliary global isogeny is assigned degree q alongside the product pullback-polarization equation.

**Correction:** The necessary v₀-primary degree is q², with q=#k_{F⁺,v₀}; the degree of an actual global representative also includes any away-p factors. Distinguish it from the degree q+1 of the first mixed projection.

**Check:** Locally at v₀ both source polarization factors have degree q² and the target is principal, so (deg α_{v₀})²=q⁴. In particular a global isogeny of degree q cannot satisfy the equation. For q=3 its required v₀-primary degree is 9.

**Effect:** nothing

**Existing correction:** new

**Correction search:**

- arXiv:1908.01701v3 §13.4 and its current author-hosted KRProof.pdf counterpart.
- The original local definition in §10.2 and LRZ26 §3.8 and Theorem 14.6.2.
- Author publication page and journal correction search on 19 October 2026; no separate correction located.

### PELModuliPartII/E6 — LL22 (misprint)

**Locator:** §4.3, p. 58, and §4.5, p. 66, author copy dated 16 January 2022

**Assertion in the source:** The exotic conditions at ramified p-places are applied to the CM source A₀[v^∞], including A₀[u^∞] at the distinguished place.

**Correction:** Apply the rank-n exotic condition to A[v^∞] (and to A[u^∞] at the distinguished place); the source is the separately specified principal rank-one CM object.

**Check:** The target has the required absolute height 2nf and mixed signature; the CM source has height 2f and cannot satisfy the rank-n exotic condition for even n≥2.

**Effect:** nothing

**Existing correction:** new

**Correction search:**

- Author copy dated 16 January 2022, p. 66, read as text and image.
- Definition 2.59 and Corollaries 2.65–2.66 in that same edition.
- Author publication page and journal correction search on 19 October 2026; no separate correction located.

### PELModuliPartII/E7 — LTXZZ22 (misprint)

**Locator:** Remark 4.2.5, published p. 163

**Assertion in the source:** The proposed negative period line is defined by requiring a Hom map to send the source Hodge subspace into the target Hodge subspace.

**Correction:** At τ∞ use Hom_C(H₁^dR(A₀)_{τ∞},ω_{A∨,τ∞}) inside the corresponding Hom realization.

**Check:** The source Hodge subspace at τ∞ has rank zero, so the printed condition is vacuous. For N>1 it defines the full N-dimensional Hom space instead of the rank-one period line.

**Effect:** nothing

**Existing correction:** Previously recorded as PAPER-LIU-ETAL-22/E38.

**Correction search:**

- Existing extraction E38; the published Remark 4.2.5 and Hodge ranks in §3.4 read directly.
- Author publication page and arXiv listing checked 19 October 2026.

## Source editions

Locators throughout use the following editions, not an unlabelled mixture of author copies and published texts. Only the listed mathematical portions were read; the separate special-fibre continuation has its own source-verification obligation. The published LTXZZ text was consulted in the maintainer’s cleared library. No source passage or restricted file is reproduced.

### Zhang21

Wei Zhang. *Weil representation and Arithmetic Fundamental Lemma*. Annals of Mathematics 193 (2021), 863–978; published PDF. [Source](https://archive.ymsc.tsinghua.edu.cn/pacm_download/21/12000-annals.2021.193.3.5.pdf). Read 2026-10-19.

Read locators: §3.1, pp. 879–881; §6, pp. 901–905; §7.3 and Lemmas 7.10–7.11, pp. 908–913.

SHA-256: `6f8ac537b4f95cf26ba907dc1d25c1b9d9157a3a4006a311b114a522177d3b45`.

### LZ22

Chao Li and Wei Zhang. *Kudla–Rapoport cycles and derivatives of local densities*. arXiv:1908.01701v3, 2 December 2020; locators use its printed pagination. [Source](https://arxiv.org/pdf/1908.01701v3). Read 2026-10-19.

Read locators: §§2.1–2.2, pp. 10–12; §§4.3, 4.5, pp. 21, 23; §10, pp. 63–65; §11, pp. 73–77; §13, pp. 80–83; §14, pp. 84–85.

SHA-256: `7db1843f90c3e79741f8d58d92b6bb42b0a3b7ae001c8f9419f43b08c2119d49`.

### LL21

Chao Li and Yifeng Liu. *Chow groups and L-derivatives of automorphic motives for unitary groups*. Author final copy, 20 October 2021; Annals of Mathematics 194 (2021); author-copy page numbers. [Source](https://www.math.columbia.edu/~chaoli/AIPF.pdf). Read 2026-10-19.

Read locators: §4 and §6, pp. 22, 28; §5, pp. 26–28; §7, pp. 32–33; §8, pp. 36–38; §9, pp. 40–42, footnotes 18–19.

SHA-256: `6ef2d63ea2cf55d8a2648f71ed7ac84e4d32f77e9e7eaeb62b47e584e4e5e566`.

### LL22

Chao Li and Yifeng Liu. *Chow groups and L-derivatives of automorphic motives for unitary groups, II*. Author copy dated 16 January 2022; Forum of Mathematics, Pi 10 (2022), e5; author-copy pagination and equation numbering. [Source](https://www.math.columbia.edu/~chaoli/AIPF2.pdf). Read 2026-10-19.

Read locators: Definition 1.1 and Remark 1.2, p. 3; §2.1, pp. 9–11; §2.8, pp. 37–43; Notation 4.19 and §4.3, pp. 57–59; §4.5 and Proposition 4.30, pp. 65–68.

SHA-256: `ebc12f4ddc2dc8b998f91bbfa3329364b075240c4ee53be1bf409a4361be7d88`.

### HLSY23

Qiao He, Chao Li, Yousheng Shi and Tonghai Yang. *A proof of Kudla–Rapoport conjecture for Krämer models*. arXiv:2208.07988v2, 25 June 2023; locators are for this version, not the longer current author copy. [Source](https://arxiv.org/pdf/2208.07988v2). Read 2026-10-19.

Read locators: Definitions 2.1–2.2 and §2.2, pp. 10–12; §10.1–10.2, pp. 76–79.

SHA-256: `00e096d6e9b511934382db1e41dc4cf22419a021df06af58d2689dfb60b98b17`.

### LTXZZ22

Yifeng Liu, Yichao Tian, Liang Xiao, Wei Zhang and Xinwen Zhu. *On the Beilinson–Bloch–Kato conjecture for Rankin–Selberg motives*. Inventiones Mathematicae 228 (2022), 107–375; cleared published NSF copy. [Source](https://par.nsf.gov/servlets/purl/10323568). Read 2026-10-19.

Read locators: Definition 3.3.4, p. 147; §§4.1–4.2, pp. 159–163; §§5.1–5.2, pp. 188–193.

SHA-256: `dd821abd2b06233cb69cdc88de242b689686d5f2ce0c2072128abcd54ec89d97`.

### RSZ20

Michael Rapoport, Brian Smithling and Wei Zhang. *Arithmetic diagonal cycles on unitary Shimura varieties*. arXiv:1710.06962, version served 19 October 2026; dated source recorded by digest; locators use its printed pages. [Source](https://arxiv.org/pdf/1710.06962). Read 2026-10-19.

Read locators: §3, pp. 8–14; §§4.1–4.4, pp. 15–27; §5, pp. 27–30; Lemma 8.16 and Remark 8.18, p. 53; Appendices A–B, pp. 54–60.

SHA-256: `eee08e2004bb46afecd7c71768a19816de829d35b7c52db6bacad3e13b04a185`.

### RSZ21

Michael Rapoport, Brian Smithling and Wei Zhang. *On Shimura varieties for unitary groups*. Author copy dated 16 April 2020; Pure and Applied Mathematics Quarterly 17 (2021). [Source](https://www.math.uni-bonn.de/people/rapoport/myalggeom/preprints/unitshim.pdf). Read 2026-10-19.

Read locators: §§3–4, pp. 13–22; §5, pp. 24–27; §6, pp. 28–35.

SHA-256: `4ba9a81a1fcbdbf167395b5f5da02d65b67c4a38366187608b9127993b25cdc5`.

### Mih19

Andreas Mihatsch. *Relative unitary RZ-spaces and the Arithmetic Fundamental Lemma*. arXiv:1611.06520v2, 23 July 2019; Theorems 3.1 and 3.3 in this version. [Source](https://arxiv.org/pdf/1611.06520v2). Read 2026-10-19.

Read locators: §2, pp. 6–11; §3, pp. 11–18; Appendix §§11–13, pp. 41–50.

SHA-256: `1df1463952e54d98a6fe4c63ae04ec46ae03dc54648d841a53f3aae64af4fb97`.

### Cho18

Sungyoon Cho. *The basic locus of the unitary Shimura variety with parahoric level structure, and special cycles*. arXiv:1807.09997, version served 19 October 2026; source digest fixes text. [Source](https://arxiv.org/pdf/1807.09997). Read 2026-10-19.

Read locators: Theorem 1.2, p. 4; §3.9, local-model and relative comparison arguments; Proposition 4.2 and Theorem 4.3, pp. 41–43.

SHA-256: `2dbfdd6d7c5e44eb561ac4cc9dae47a9b2c7810e17c63b66ca5279895976d521`.

### Howard19

Benjamin Howard. *Linear invariance of intersections on unitary Rapoport–Zink spaces*. arXiv:1811.01482, source served 19 October 2026; Forum Mathematicum 31 (2019), 1265–1281. [Source](https://arxiv.org/pdf/1811.01482). Read 2026-10-19.

Read locators: §2 and Proposition 2.2, pp. 5–7.

SHA-256: `2364b23e456a8a6cad4ad5ffc7971e24e20619953cff342d8d24274f24938742`.

### RZ96

Michael Rapoport and Thomas Zink. *Period Spaces for p-divisible Groups*. Annals of Mathematics Studies 141, Princeton University Press, 1996; public author-hosted scan. [Source](https://www.math.uni-bonn.de/people/rapoport/myalggeom/preprints/Rapoport_Period%20spaces.pdf). Read 2026-10-19.

Read locators: Definition 3.21, pp. 81–82; Theorem 3.25, p. 88; local-model definition 3.27, p. 89; §§6.13–6.16, pp. 282–284; Theorems 6.24, 6.27 and 6.30, pp. 291–295.

SHA-256: `8ced3dfc636857d2bdd98b06f33586a30735a0820523fa1d001e6aa21cfa5a66`.

### Wu16

Haifeng Wu. *The supersingular locus of unitary Shimura varieties with exotic good reduction*. arXiv:1609.08775, version served 19 October 2026; ground field Q_p. [Source](https://arxiv.org/pdf/1609.08775). Read 2026-10-19.

Read locators: §3.4, Kottwitz components; Theorems 5.17–5.18 and proof, pp. 30–31.

SHA-256: `df0c71312bb35ed0255397d0114ecf152ddc994a1c695d90c41ca48780612123`.

### Kraemer03

Nicole Krämer. *Local models for ramified unitary groups*. arXiv:math/0302025v1, 3 February 2003; printed page numbers; Theorem 4.5 assumes n≥3. [Source](https://arxiv.org/pdf/math/0302025v1). Read 2026-10-19.

Read locators: Definition 4.1, p. 7; Proposition 4.3, pp. 7–8; Theorem 4.5 and its chart calculation (4.11), pp. 8–13.

SHA-256: `52a003a9ded4edf81f184c5e1138d2a499a0fefd6737ede4e5192d1f1393bcb8`.

### LRZ26

Chao Li, Michael Rapoport and Wei Zhang. *Quasi-canonical AFL and Arithmetic Transfer conjectures at parahoric levels*. arXiv:2404.02214v2, revised 1 May 2026; PDF dated 5 May 2026. [Source](https://arxiv.org/pdf/2404.02214v2). Read 2026-10-19.

Read locators: Theorem 14.6.2, pp. 60–61; §§15–16.5, pp. 62–71.

SHA-256: `4e687dfc505fb8555f0155c486ec849508f7c1af384446ed155c506a894a1bba`.

## Routed-item ownership ledger

Every one of the 264 input items is assigned below. An existing supplier keeps its general statement; a target here supplies its indicated unitary application. Items assigned to the proposed Part III are its complete intake, with its design brief above. This ledger is a map of ownership, rather than a summary of a source’s sections.

| Item | Owner or targets | Disposition |
| --- | --- | --- |
| `PAPER-ZHANG-21/14` | `PELModuliPartII:U1/unramified-rz`, `PELModuliPartII:U0/signature-conjugation` | planned here |
| `PAPER-ZHANG-21/15` | `PELModuliPartII:U1/unramified-smoothness` | planned here |
| `PAPER-ZHANG-21/16` | `PELModuliPartII:U1/special-hom`, `PELModuliPartII:U1/diagonal-graph` | planned here |
| `PAPER-ZHANG-21/41` | `PELModuliPartII:U6/rsz-datum` | planned here |
| `PAPER-ZHANG-21/42` | `PELModuliPartII:U6/local-level-data` | planned here |
| `PAPER-ZHANG-21/43` | `PELModuli:M4` | existing supplier |
| `PAPER-ZHANG-21/44` | `PELModuliPartII:U7/localized-rsz` | planned here |
| `PAPER-ZHANG-21/45` | `PELModuliPartII:U7/localized-smoothness` | planned here |
| `PAPER-ZHANG-21/50` | `PELModuliPartII:U9/inert-uniformization` | planned here |
| `PAPER-ZHANG-21/56` | `AbelianSchemesAndArithmeticModuli:A6/degree-of-an-endomorphism`, `AbelianSchemesAndArithmeticModuli:A6/charpoly-of-endomorphism`, `AbelianSchemesAndArithmeticModuli:A6/charpoly-on-Tate` | existing supplier |
| `PAPER-ZHANG-21/57` | `AbelianSchemesAndArithmeticModuli:A6` | existing supplier |
| `PAPER-ZHANG-21/58` | `AbelianSchemesAndArithmeticModuli:A6` | existing supplier |
| `PAPER-ZHANG-21/157` | `PELModuliPartII:U9/nearby-framing-datum`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2` | planned here |
| `PAPER-ZHANG-21/158` | `PELModuli:M1`, `PELModuliPartII:U7/localized-rsz` | planned here |
| `PAPER-LI-ZHANG-22-B/29` | `PELModuliPartII:U1/unramified-rz`, `PELModuliPartII:U1/unramified-smoothness` | planned here |
| `PAPER-LI-ZHANG-22-B/30` | `PELModuliPartII:U1/rank-one-lift` | planned here |
| `PAPER-LI-ZHANG-22-B/31` | `PELModuliPartII:U1/special-hom` | planned here |
| `PAPER-LI-ZHANG-22-B/32` | `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `PELModuliPartII:U0/relative-comparison-functor` | planned here |
| `PAPER-LI-ZHANG-22-B/33` | `PELModuliPartII:U2/almost-self-dual-rz`, `PELModuliPartII:U2/almost-self-dual-geometry` | planned here |
| `PAPER-LI-ZHANG-22-B/34` | `PELModuliPartII:U2/mixed-framed-space`, `PELModuliPartII:U2/mixed-generic-projections` | planned here |
| `PAPER-LI-ZHANG-22-B/35` | `PELModuliPartII:U6/rsz-datum` | planned here |
| `PAPER-LI-ZHANG-22-B/36` | `PELModuliPartII:U7/semiglobal-rsz`, `PELModuliPartII:U7/semiglobal-local-types` | planned here |
| `PAPER-LI-ZHANG-22-B/37` | `PELModuliPartII:U7/semiglobal-local-types` | planned here |
| `PAPER-LI-ZHANG-22-B/38` | `PELModuliPartII:U7/split-drinfeld-level`, `PELModuliPartII:U7/split-integral-geometry` | planned here |
| `PAPER-LI-ZHANG-22-B/39` | `PELModuliPartII:U7/ramified-kramer-model`, `PELModuliPartII:U7/ramified-global-geometry` | planned here |
| `PAPER-LI-ZHANG-22-B/40` | `PELModuliPartII:U8/mixed-global-moduli` | planned here |
| `PAPER-LI-ZHANG-22-B/41` | `PELModuliPartII:U7/global-integral-gluing` | planned here |
| `PAPER-LI-ZHANG-22-B/42` | `PELModuliPartII:U9/inert-uniformization`, `PELModuliPartII:U9/mixed-uniformization` | planned here |
| `PAPER-LI-LIU-21/35` | `PELModuliPartII:U6/auxiliary-cm-generic-comparison` | planned here |
| `PAPER-LI-LIU-21/36` | `PELModuliPartII:U6/auxiliary-cm-generic-comparison` | planned here |
| `PAPER-LI-LIU-21/37` | `PELModuliPartII:U6/admissible-cm-type`, `PELModuli:M4` | planned here |
| `PAPER-LI-LIU-21/38` | `PELModuliPartII:U7/split-drinfeld-level`, `PELModuliPartII:U7/split-integral-geometry` | planned here |
| `PAPER-LI-LIU-21/39` | `PELModuliPartII:U7/semiglobal-local-types` | planned here |
| `PAPER-LI-LIU-21/40` | `PELModuliPartII:U9/cm-partition-and-product` | planned here |
| `PAPER-LI-LIU-21/41` | `PELModuliPartII:U7/semiglobal-local-types`, `PELModuliPartII:U8/asd-completed-local-rings` | planned here |
| `PAPER-LI-LIU-21/85` | `PELModuli:M0/rational-pel-datum`, `PELModuliPartII:U6/rsz-datum` | planned here |
| `PAPER-LI-LIU-22/1` | `PELModuliPartII:U3/exotic-relative`, `PELModuliPartII:U3/exotic-symmetrization` | planned here |
| `PAPER-LI-LIU-22/2` | `PELModuliPartII:U3/exotic-rz`, `PELModuliPartII:U3/exotic-smoothness` | planned here |
| `PAPER-LI-LIU-22/3` | `PELModuliPartII:U3/rank-one-source`, `PELModuliPartII:U3/exotic-special-hom` | planned here |
| `PAPER-LI-LIU-22/4` | `PELModuliPartII:U4/absolute-exotic` | planned here |
| `PAPER-LI-LIU-22/5` | `PELModuliPartII:U4/exotic-relative-functor`, `PELModuliPartII:U4/exotic-relative-equivalence` | planned here |
| `PAPER-LI-LIU-22/6` | `PELModuliPartII:U4/principal-source-comparison`, `PELModuliPartII:U4/exotic-framed-comparison` | planned here |
| `PAPER-LI-LIU-22/7` | `PELModuliPartII:U6/admissible-cm-type`, `PELModuliPartII:U6/cm-coefficient-unramified` | planned here |
| `PAPER-LI-LIU-22/8` | `PELModuliPartII:U6/auxiliary-cm-generic-comparison`, `PELModuli:M4` | planned here |
| `PAPER-LI-LIU-22/9` | `PELModuliPartII:U7/split-drinfeld-level`, `PELModuliPartII:U7/split-integral-geometry` | planned here |
| `PAPER-LI-LIU-22/10` | `PELModuliPartII:U7/exotic-global-model`, `PELModuliPartII:U7/exotic-global-smoothness` | planned here |
| `PAPER-LI-LIU-22/11` | `PELModuliPartII:U9/exotic-uniformization` | planned here |
| `PAPER-HE-LI-SHI-ETAL-23/4` | `PELModuliPartII:U5/kramer-filtration`, `PELModuliPartII:U5/kramer-rz`, `PELModuliPartII:U5/kramer-geometry`, `PELModuliPartII:U5/kramer-framing-sign` | planned here |
| `PAPER-HE-LI-SHI-ETAL-23/5` | `PELModuliPartII:U5/kramer-dieudonne-space`, `PELModuliPartII:U5/kramer-special-hom`, `PELModuliPartII:U5/kramer-hom-comparison` | planned here |
| `PAPER-HE-LI-SHI-ETAL-23/41` | `PELModuliPartII:U6/rsz-datum` | planned here |
| `PAPER-HE-LI-SHI-ETAL-23/42` | `PELModuliPartII:U7/global-integral-gluing`, `PELModuliPartII:U7/ramified-global-geometry` | planned here |
| `PAPER-LIU-ETAL-22/def-3-1-11-category` | `ShimuraVarieties:V1/level-index` | existing supplier |
| `PAPER-LIU-ETAL-22/def-3-1-11-sp` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-3-2-1-definite` | `PELModuli:M0/hermitian-space` | existing supplier |
| `PAPER-LIU-ETAL-22/def-3-2-1-indefinite` | `PELModuli:M0/hermitian-space` | existing supplier |
| `PAPER-LIU-ETAL-22/def-unitary-shimura-variety` | `PELModuli:M1`, `ShimuraVarieties:V6/plan/abelian-canonical` | existing supplier |
| `PAPER-LIU-ETAL-22/unitary-shimura-sets` | `ShimuraVarieties:V6/plan/abelian-canonical` | existing supplier |
| `PAPER-LIU-ETAL-22/setup-4-1` | `PELModuliPartII:U8/ltxzz-smooth-moduli` | planned here |
| `PAPER-LIU-ETAL-22/datum-4-2` | `PELModuliPartII:U8/ltxzz-smooth-moduli` | planned here |
| `PAPER-LIU-ETAL-22/lemma-4-2-1` | `PELModuli:M0/reflex-field`, `PELModuliPartII:U8/ltxzz-smooth-moduli` | planned here |
| `PAPER-LIU-ETAL-22/moduli-smooth` | `PELModuliPartII:U8/ltxzz-smooth-moduli` | planned here |
| `PAPER-LIU-ETAL-22/G02` | `PELModuliPartII:U8/smooth-geometry-tangent` | planned here |
| `PAPER-LIU-ETAL-22/G03` | `PELModuliPartII:U8/smooth-geometry-tangent` | planned here |
| `PAPER-LIU-ETAL-22/iso-4-2` | `PELModuliPartII:U8/ltxzz-smooth-moduli` | planned here |
| `PAPER-LIU-ETAL-22/G04` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-4-2-5` | `PELModuliPartII:U8/smooth-geometry-tangent`, `PELModuliPartII:U6/auxiliary-cm-generic-comparison` | planned here |
| `PAPER-LIU-ETAL-22/G05` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/source-finite-etale` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/pairing-s-star` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-4-3-2` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-4-3-3` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-4-3-4` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-4-3-5-1` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/G07` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/G06` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-dieudonne-inverse` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-4-3-6` | `PELModuliPartIII:D1` | proposed continuation |
| `PAPER-LIU-ETAL-22/G08` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/hasse-hermitian` | `GeometryOfNumbersAndQuadraticArithmetic:GN.2` | existing supplier |
| `PAPER-LIU-ETAL-22/constr-4-4-2` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-4-4-3` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-4-4-3-1` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-4-4-3-2` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/kr-positivity` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-4-4-4-iso` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-4-4-4-galois` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-4-4-5` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-4-4-6-1` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-4-4-6-2` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-4-4-7` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-4-4-8` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/setup-4-5` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/sh-up` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/G46` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-4-5-1` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-4-5-2-1` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-4-5-2-2` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-4-5-3` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-4-5-4` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/diagram-4-9` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-4-5-5` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-delta-up` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/G47` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/notation-4-5-7` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-4-5-8-odd` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-4-5-8-even` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-4-13` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-4-5-9` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/rsz-thm-4-4` | `PELModuliPartII:U7/localized-smoothness` | planned here |
| `PAPER-LIU-ETAL-22/setup-5-1` | `PELModuliPartII:U8/ltxzz-asd-moduli` | planned here |
| `PAPER-LIU-ETAL-22/moduli-special` | `PELModuliPartII:U8/ltxzz-asd-moduli` | planned here |
| `PAPER-LIU-ETAL-22/forgetful-5-1` | `PELModuliPartII:U8/ltxzz-asd-moduli` | planned here |
| `PAPER-LIU-ETAL-22/G11` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/rem-5-2-4` | `PELModuliPartII:U8/ltxzz-asd-moduli` | planned here |
| `PAPER-LIU-ETAL-22/G12` | `PELModuliPartII:U8/asd-completed-local-rings` | planned here |
| `PAPER-LIU-ETAL-22/local-model-5-2-5` | `PELModuliPartII:U8/asd-completed-local-rings` | planned here |
| `PAPER-LIU-ETAL-22/G13` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-2-5-3` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-2-5-4` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-2-5-5` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-2-6` | `PELModuliPartII:U8/asd-generic-datum` | planned here |
| `PAPER-LIU-ETAL-22/iso-5-2` | `PELModuliPartII:U8/asd-generic-datum` | planned here |
| `PAPER-LIU-ETAL-22/G14` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/lan-stroh-cor-5-20` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/rem-5-2-8` | `PELModuliPartII:U7/semiglobal-local-types` | planned here |
| `PAPER-LIU-ETAL-22/def-5-3-1` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-pairing-balloon` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/G15` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-3-3` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/G16` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-3-4-1` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-3-4-2` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/G17` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-5-3-6-uniformization` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-5-3-6-hecke` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/G18` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-pairing-ground` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-4-2` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-4-3` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-4-4-1` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/G20` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-4-4-3` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/G19` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-4-4-5` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/eq-5-6-ranks` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/eq-5-7-5-8` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/rem-5-4-5-1` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/G21` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-5-4-6` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/G22` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-5-2` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-5-3-1` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-5-3-2` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/rem-5-5-4` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-5-5-5` | `PELModuliPartIII:D2` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-K-p1` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/G23` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-5-6-1-balloon` | `PELModuliPartIII:D3` | proposed continuation |
| `PAPER-LIU-ETAL-22/G24` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/G25` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/G26` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-xi-tautological` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/G27` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/G29` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/rem-5-7-2` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-ker-im-p-phi` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-7-3-1-2` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-7-3-3-4` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-7-3-5` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-hdr-phi-pairing` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-7-4` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-B-s1-s2` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-7-5` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-7-6` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/G30` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-7-7-1` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-7-7-2` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-B-dagger` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/G31` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/count-max-isotropic` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-7-8-1` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/thm-5-7-8-2` | `PELModuliPartIII:D5` | proposed continuation |
| `PAPER-LIU-ETAL-22/setup-5-10` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/notation-5-10-1` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/sh-prime-up` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/m-up-5-21` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/m-up-strata-5-22` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/diagram-5-23` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/diagram-5-24` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/s-circ-up` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-5-10-2` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/b-circ-up` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-10-3` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/s-bullet-sp-maps` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-10-4-1` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-10-4-2` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-10-5` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-5-10-6` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-10-7` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-10-8-1` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-10-8-2` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-5-10-9` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-5-10-10` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-5-10-11` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/fourth-stage-fibres` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/G48` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-5-10-12-ground-iso` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/notation-5-10-13` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/sh-maps-5-10-13` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/uniformization-sp` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-5-10-14` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-5-10-15` | `PELModuliPartIII:D4` | proposed continuation |
| `PAPER-LIU-ETAL-22/setup-5-11` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/G50` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/notation-5-11-1-strata` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/notation-5-11-1-graphs` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-11-2` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-11-3-semistable` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-11-3-2-offdiag` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-11-3-2-diag` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/G51` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-11-3-2-sections` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-11-3-4` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-11-3-5` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/construction-5-11-4-xi` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/construction-5-11-4-circ-dagger` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/construction-5-11-4-circ-bullet` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/construction-5-11-4-bullet-dagger` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/construction-5-11-4-bullet-bullet` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/G54` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/theorem-5-11-5-2` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/theorem-5-11-5-3` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/graph-intersection-formula` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/inc-alpha` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-5-11-6` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/G53` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/construction-5-11-7-nabla` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/potential-map-5-28` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/remark-5-11-8` | `PELModuliPartIII:D6` | proposed continuation |
| `PAPER-LIU-ETAL-22/def-a-sesquilinear-pair` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/D01` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/D02` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/D03` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-a-1-3-2` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-a-1-3-3` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/D04` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-a-1-4-2` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-a-1-4-3` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/lemma-a-1-4-4` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-a-1-5` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-a-1-6` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-a-1-7` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/D05` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-a-2-2-1` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/D06` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-a-2-2-3` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-a-2-3` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/D07` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/prop-a-2-4-2` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/constr-a-2-4-correspondence` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/claim-a-2-4-special-points` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/claim-a-2-4-pi-bullet-degree` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/claim-a-2-4-line-bundles` | `PELModuliPartIII:D0` | proposed continuation |
| `PAPER-LIU-ETAL-22/formula-a-2-4-chern` | `PELModuliPartIII:D0` | proposed continuation |

## Suggested Lean companion

The companion in `research/blueprint/suggested/PELModuliPartII.lean` uses existing polynomial, matrix, residue-ring and field-valued abelian-variety carriers. It states the signature relabelling, literal Jordan and crossing checks, degree/dimension arithmetic, and reuse of the existing smooth structural morphism. The strict relative module, framed formal-space, integral pair-stack and arithmetic-quotient carriers required for the heavy targets are absent at the pins. Their full specifications, 167 API items and 129 named checks remain above. The companion follows the compact shape prescribed on 12 October 2026: it does not construct substitute carriers or encode missing conditions as arbitrary propositions. It elaborates at the reference pins; this does not formalize the roadmap’s theorems.
