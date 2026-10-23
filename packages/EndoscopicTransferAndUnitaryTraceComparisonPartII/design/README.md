# Relative endoscopy for unitary Friedberg–Jacquet periods

This Part II extends ordinary unitary endoscopy to the infinitesimal symmetric
space for a product of two equal-dimensional unitary groups. The main target
is the unramified lattice-unit fundamental lemma: contraction turns its
relative orbital integrals into ordinary Hermitian orbital integrals; a
graded spherical calculation then reduces the theorem to an independent
Jacquet–Rallis product-group fundamental lemma. The local comparison also
develops reusable symmetric-space quotients, transfer relations, Hermitian
spherical modules, nilpotent germs and Weil-equivariant orbital images.

This reader is the definitive specification. The accompanying
[packet](../packets/EndoscopicTransferAndUnitaryTraceComparisonPartII.json)
records the dependency graph and the
[suggested Lean file](../suggested/EndoscopicTransferAndUnitaryTraceComparisonPartII.lean)
gives compact coordinate signatures over the pinned libraries. Every target
has implementation status `unchecked`; elaborating admitted signatures does
not implement the mathematics. All six stages have coverage `planned`.
Eight explicit gaps and two supplier requests prevent dependency closure.

The principal reference is Spencer Leslie, *The endoscopic fundamental lemma
for unitary Friedberg–Jacquet periods*, Annals of Mathematics 201 (2025),
551–645. All Leslie locators here mean the printed pages of
**arXiv:1911.07907v3, 12 March 2025**, the accepted version read. The distinction
matters for the normalization findings below: the published PDF was not
compared. Statements throughout this document are restatements in our own
words, organized by mathematical targets.

## Conventions and the final theorem

Let (F) be a nonarchimedean local field of characteristic zero and (E/F)
a quadratic **field** extension, with involution (z\mapsto\bar z) and
quadratic character (\eta_{E/F}). Hermitian forms are conjugate-linear in
their first variable. For nondegenerate Hermitian spaces (W_1,W_2) of the
same dimension (n), write (H=U(W_1)\times U(W_2)). The adjoint of
(X:W_2\to W_1) is characterized by

\[
h_1(Xv,w)=h_2(v,X^\tau w).
\]

The symmetric Lie representation and its two contractions are

\[
 X\longmapsto\begin{pmatrix}0&X\\-X^\tau&0\end{pmatrix},\qquad
 (g_1,g_2)X=g_1Xg_2^{-1},\qquad
 r_1(X)=-XX^\tau,\quad r_2(X)=-X^\tau X.
\]

Here (\operatorname{Herm}(W_i)) means **self-adjoint endomorphisms**; it
does not mean the skew-adjoint unitary Lie algebra. Multiplication by a fixed
nonzero trace-zero element of (E) identifies these representations when
importing Lie-algebra invariant theory from ordinary endoscopy. Standard-Gram
coordinates use `Matrix.conjTranspose` and `Matrix.IsHermitian`.

Write (C_c^\infty) for complex-valued locally constant compactly supported
functions. Fix Haar measures before taking quotient integrals. On each regular
centralizer choose maximal-compact volume one, transport the measure through
the specified stabilizer isomorphisms, and obtain quotient measures by
integration in stages. Changing a torus Haar measure by (c>0) changes its
orbital integral by (c^{-1}). In unramified comparisons the hyperspecial
subgroups also have volume one. Weil Fourier transforms use self-dual
additive measures and the trace pairing, rather than the norm of a pairing.

Stages FJ.2–FJ.4 additionally assume (E/F) unramified. Choose a common
uniformizer (\pi), put (q=\#k_F), and use
(V_n=(E^n,I_n)), (\Lambda_n=\mathcal O_E^n). Thus (q_E=q^2) and
(|\pi|_E=q^{-2}). No hypothesis excludes residue characteristic two.
All proper endoscopic decompositions (n=a+b) have (a,b>0). Rank zero
occurs only as the trivial factor in the rank-shifted comparison at (n=1).

The main theorem target, `FJ.4/unit-fundamental-lemma`, is Leslie's Theorem
2.12, pp. 21–22. For (W_1=W_2=V_n) and a relative elliptic datum with
form labels (\alpha,\beta), the source
(1_{\operatorname{End}(\Lambda_n)}) transfers to

\[
\begin{cases}
1_{\operatorname{End}(\Lambda_a)}\otimes
1_{\operatorname{End}(\Lambda_b)},&
(\alpha,\beta)=(I_a,I_b),\\
0,&\text{every other pair of Hermitian form classes}.
\end{cases}
\]

Transfer includes the matching orbital-integral identity with the
contraction-defined ordinary transfer factor **and** vanishing on unmatched
target regular orbits. There are four target form pairs. Vanishing on the
three nonreference pairs is part of the theorem, including when odd-dimensional
forms happen to have isomorphic unitary groups.

Unrestricted existence of relative smooth transfer for arbitrary source
support is a separate conjectural target in the references read: Leslie19,
Conjecture 4.4, p. 15. The unit theorem does not establish it. Remark 3.7,
p. 27 of Leslie25 motivates a full spherical extension, but does not specify
the transfer-factor augmentation needed for its orbital characterization.
FJ.5 constructs the precise Fourier-defined operator and records that missing
specification; the factor research question is not an executable theorem
statement until G8 is discharged.

## Ownership and dependencies

The first source route, `UnitaryFriedbergJacquetRelativeEndoscopy`, is realized
under this issue's fixed roadmap id. Ordinary endoscopy remains in the parent.
The independent Jacquet–Rallis analytic/spectral programme is a proposed
sibling, with no registered stage ids used as prerequisites here.

| Owner | Exact input used here |
| --- | --- |
| GeometryOfNumbersAndQuadraticArithmetic, GN.2 | `signed-hermitian-space`, `hermitian-space-classification`, `integral-hermitian-lattice`, `hermitian-dual-lattice`, `local-unimodular-hermitian-classification`, `unramified-hermitian-lattice-diagonalization` |
| GeometryOfNumbersAndQuadraticArithmetic, GN.3 | `hermitian-special-values`, including the normalized self-dual-overlattice count (m_0) |
| EndoscopicTransferAndUnitaryTraceComparison, ET.0 | `unitary-hermitian-matching`, `rational-classes-in-stable-class`, `unitary-elliptic-endoscopic-data`, `crossed-module-galois-cohomology`, `abelianized-cohomology` |
| EndoscopicTransferAndUnitaryTraceComparison, ET.2b | `chevalley-quotient`: ordinary characteristic-coefficient invariant theory, in characteristic zero |
| EndoscopicTransferAndUnitaryTraceComparison, ET.1 | Requested normalized Hermitian orbital integrals, factors and the Xiao germ/descent factor comparison |
| EndoscopicTransferAndUnitaryTraceComparison, ET.3 | Requested ordinary nonsingular smooth transfer and normalized squared-variable GL base change |
| AdelicAlgebraicGroups, AA.2 | `quotient-measure`, `quotient-integral-integrable`, `quotient-measure-transitivity` |
| SmoothRepresentationsOfLocalGroups, SR.4 | `satake-isomorphism` and **`parabolic-descent`**, already including the determinant-twisted Levi map and its Satake scaling |
| SchemeAndStackFoundations, SF.1 | `galois-descent-affine` for the split-coordinate quotient identifications |

These are references to the existing packet nodes, whose exact qualified ids
appear under each target. They are planned inputs, with their owners' proof
obligations; an import is not a claim that those roadmaps have already been
implemented. No generic form, lattice, quotient-measure, ordinary endoscopic
datum or spherical Levi map is rebuilt here. In particular, the SR.4 map
(\xi_E) already has normalized Satake substitution
(Z_i\mapsto q^{-b}X_i) on the first block and
(Z_j\mapsto q^{-a}Y_j) on the second. The corresponding (F)-map scales by
(q^{-b/2}), (q^{-a/2}). FJ.2 proves compatibility with base change;
FJ.3 constructs the different **additive Lie** descent and compares it to
this imported group descent.

The mathematical build order is:

1. Construct the symmetric representation, categorical quotients, stabilizers
   and supported contraction pushforward (FJ.0).
2. Pull ordinary data and factors back to relative matching and define transfer
   with its unmatched-zero clause (FJ.1).
3. Build the full Hermitian spherical module and Hironaka transform; compare
   the imported Levi map with squared-variable base change (FJ.2).
4. Specify the all-pure-form germ and Lie-descent reductions, and the Weil
   reduction from the rank-shifted group comparison (FJ.3).
5. Establish sign/pushforward comparisons; apply the independently supplied
   product-group theorem, then augmented and cyclic transfer; conclude the
   lattice theorem using compact determinant grades (FJ.4).
6. State the arbitrary-support existence target and construct the full-module
   Fourier extension with the factor question isolated (FJ.5).

The spectral supplier in step 5 must prove the product-group theorem
independently of the FJ result. Citing ET.3 as though it already contained a
Jacquet–Rallis fundamental lemma would make this reduction circular.

## Worked checks that determine the conventions

**Signed rank one.** With standard forms and (X=z), both contractions are
(-z\bar z); (z=1) gives (-1). In the unramified case there is an
integral unit (c) with norm (-1). Hence (r_-(cX)=r_+(X)), and the
lattice indicator is unchanged. This works in residue characteristic two by
the imported rank-one Hermitian lattice classification; no division by two
is involved. A categorical quotient must not be mistaken for surjectivity on
rational points: for (n=1), the nonzero image of signed contraction is the
single norm coset (-\operatorname{Nm}(E^\times)).

**The full spherical module.** For (n=1), its basis (e_j) is indexed by
all (j\in\mathbb Z). The (E^\times)-Hecke indicator at valuation (d)
sends (e_0) to (e_{2d}). Consequently (e_1) lies outside the cyclic
submodule, while (e_{-1}) is a valid compact function. One cannot obtain the
full module by silently restricting to the reference Hermitian orbit.

**Levi scaling and base change.** Write (T_{\lambda,L}) for a spherical
double-coset indicator over (L). At (n=2,a=b=1),

\[
\operatorname{Sat}_E(T_{(1,0),E})=q(Z_1+Z_2),\qquad
\xi_E(T_{(1,0),E})=T_{(1),E}\otimes1+1\otimes T_{(1),E}.
\]

The central monomial (Z_1Z_2) acquires (q^{-2}). Squaring variables
commutes with these scalings, but does **not** force every coweight in the
base-change support to be entrywise even. Indeed,

\[
\operatorname{BC}(T_{(1,0),E})
=T_{(2,0),F}-(q-1)T_{(1,1),F}.
\]

This follows by comparing (q(T_1^2+T_2^2)) with
\(\operatorname{Sat}_F(T_{(2,0),F})
=q(T_1^2+T_2^2)+(q-1)T_1T_2\).
For (q=2) the coefficient of the odd central coweight is (-1).

**Raw germ versus finite inversion.** In unramified rank one, with
(\operatorname{vol}(\mathcal O_F^\times)=1), the continuation at zero of
\(\int_{F^\times}1_{\mathcal O_F}(t)\eta(t)|t|^s\,d^\times t\)
is the value of (1/(1+q^{-s})), namely (1/2). The same raw distribution
on (1_{\mathcal O_F^\times}) is (1), and on
(1_{\pi\mathcal O_F^\times}) is (-1). Thus the raw distribution is not
already Fourier-normalized. Inversion on a group of order (2^r) requires
the average (2^{-r}\sum\), with the specified measures. G4 asks for the
complete comparison with the ordinary orbital measures; this coefficient is
a normalization target, not a closed general germ theorem. In the endoscopic
application the exponents add across the two blocks, so the proposed factors
cancel. This calculation does not refute the final unit theorem.

**Weil defect.** Agreement of two representations on their intersection
defines a representation on their sum: if (A+B=A'+B'), then
(A-A'=B'-B) lies in the intersection. The spherical defect belongs to that
sum before equality of orbital images is known. On the Hermitian side the
Fourier kernel is (\psi(\operatorname{Tr}_{E/F}h(u,w))), additive in both
variables; replacing the trace by a norm fails this check.

**Compact grading.** The contracted full lattice unit has infinitely many
nonzero determinant grades. Its rank-one pieces are (\Phi_{1,2d}=e_{2d})
for (d\ge0), and the odd and negative pieces vanish. At (n=2), the degree
one target is (\Phi_{1,2}\otimes\Phi_{1,0}+
\Phi_{1,0}\otimes\Phi_{1,2}). A fixed regular matching orbit has a fixed
determinant valuation, so it meets just one total grade. The proof needs no
interchange of an infinite sum and an orbital integral.

## Target specifications

Names below use namespace `TauCeti.UnitaryFJ`; they are proposed API names.
The qualified dependency ids in the packet are authoritative. Each numbered
proof outline specifies the intended mathematical construction or argument;
it does not claim a formal proof. “Check” items and the discriminating unit
tests are acceptance requirements. A gap associated to a target propagates
through its descendants in the dependency graph.


## FJ.0. The symmetric representation and contraction

Construct the off-diagonal representation for two equal-dimensional Hermitian spaces, its two adjoint contractions and affine invariant quotient. Prove regular semisimple elements are invertible, identify stabilizer tori and rational-class kernels under contraction, and compare relative orbital integrals with ordinary Hermitian orbital integrals through a correctly supported pushforward.

**Dependencies:** `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0`, `AdelicAlgebraicGroups:AA.2`, `SchemeAndStackFoundations:SF.1`, `EndoscopicTransferAndUnitaryTraceComparison:ET.2b`.

**Coverage:** `planned`. G1: analytic local sections, compact pushforward surjectivity and orbitwise cutoffs. ET.1 request: normalized convergence and local constancy of Hermitian orbital integrals.

**Planets:** Unitary symmetric representation; Contraction maps; Symmetric invariant quotient; Regular symmetric orbits; Contraction torsor; Relative orbital integrals.


### FJ.0/symmetric-representation: The off-diagonal unitary representation

**Construction target.** For nondegenerate Hermitian E-spaces W1,W2 of the same dimension n, put W=W1 orthogonal-sum W2 and theta=Ad(1,-1). Identify the (-1)-eigenspace in Lie U(W) with Hom_E(W2,W1) by X mapping to the block matrix [[0,X],[-X^tau,0]], where h1(Xv,w)=h2(v,X^tau w). Its fixed-group action is (g1,g2).X=g1 X g2^(-1).

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `GeometryOfNumbersAndQuadraticArithmetic:GN.2/signed-hermitian-space`, `mathlib:Matrix.conjTranspose`.

**Construction or proof:**

1. Use the adjoint anti-involution imported from GN.2 and solve the skew-adjoint block equations.

2. Transport the fixed-group conjugation action through the block identification.

**Sources:** [Leslie25] Section 2.1, pp. 13–14; Section 1.2, pp. 3–4. The source identifies the symmetric Lie representation with a Hom space using the Hermitian adjoint.

**Uses:** `FJ.0/torsor and FJ.1/relative-datum`: The action and its adjoints determine stabilizers and the endoscopic symmetric representations.

**API:**

- `TauCeti.UnitaryFJ.offDiagonal` (constructor): Send X to [[0,X],[-X^tau,0]] in Lie U(W).

- `TauCeti.UnitaryFJ.offDiagonal_equiv` (equivalence): The top-right projection and offDiagonal are inverse F-linear maps between the (-1)-eigenspace and Hom_E(W2,W1).

- `TauCeti.UnitaryFJ.symmetricAction` (structure): The formula (g1,g2).X=g1 X g2^(-1) defines an F-linear algebraic representation.

- `TauCeti.UnitaryFJ.adjoint_action` (compatibility): The adjoint of g1 X g2^(-1) is g2 X^tau g1^(-1).

**Unit tests:**

- `TauCeti.UnitaryFJ.offDiagonal_scalar` (computation): For n=1 with standard forms, offDiagonal(z)=[[0,z],[-bar(z),0]].

- `TauCeti.UnitaryFJ.offDiagonal_zero` (degenerate): The zero Hom map gives the zero Lie element and is fixed by every (g1,g2).

- `TauCeti.UnitaryFJ.offDiagonal_equivariance` (compatibility): Conjugation by diag(g1,g2) takes offDiagonal(X) to offDiagonal(g1 X g2^(-1)).

- `TauCeti.UnitaryFJ.offDiagonal_not_hermitian_block` (non-example): Over E=C, F=R as an algebraic matrix check, X=1 gives [[0,1],[-1,0]], rather than the symmetric off-diagonal matrix. This check concerns the algebraic construction only.

**Check:** The block has zero diagonal blocks and its lower-left block is minus the adjoint.


### FJ.0/contractions: The two signed contractions

**Construction target.** Define r1(X)=-X X^tau in Herm(W1) and r2(X)=-X^tau X in Herm(W2). Here Herm(Wi) is the space of self-adjoint endomorphisms for hi. Both are F-polynomial maps. r1 is equivariant for U(W1) and invariant under U(W2); r2 has the opposite equivariance. In standard Gram coordinates the formulas use Matrix.conjTranspose, not plain transpose.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/symmetric-representation`, `mathlib:Matrix.IsHermitian`, `mathlib:Matrix.isHermitian_mul_conjTranspose_self`, `mathlib:Matrix.isHermitian_conjTranspose_mul_self`.

**Construction or proof:**

1. Apply the adjoint to both products, using the involution and reversed multiplication.

2. Use adjoint_action to verify the two transformation laws.

**Sources:** [Leslie25] Section 2.1, equation (2.1), p. 14. The two moment-type contractions have a negative sign and take values in Hermitian endomorphisms.

**Uses:** `FJ.0/quotients, FJ.0/pushforward, FJ.1/matching-factor`: Contraction is the invariant quotient used to transport ordinary endoscopy.

**API:**

- `TauCeti.UnitaryFJ.leftContraction` (data): r1(X)=-X X^tau; with standard Gram matrix this is -(X * X.conjTranspose).

- `TauCeti.UnitaryFJ.rightContraction` (data): r2(X)=-X^tau X; with standard Gram matrix this is -(X.conjTranspose * X).

- `TauCeti.UnitaryFJ.leftContraction_equivariant` (functoriality): r1(g1 X g2^(-1))=g1 r1(X) g1^(-1); the right version is analogous.

- `TauCeti.UnitaryFJ.contraction_swap` (compatibility): r2(X)=r1(X^tau) when W1 and W2 are exchanged.

- `TauCeti.UnitaryFJ.contraction_zero` (simp): Both contractions send zero to zero.

- `TauCeti.UnitaryFJ.leftContraction_isHermitian` (compatibility): In standard Gram coordinates, leftContraction(X) is Matrix.IsHermitian.

- `TauCeti.UnitaryFJ.rightContraction_isHermitian` (compatibility): In standard Gram coordinates, rightContraction(X) is Matrix.IsHermitian.

- `TauCeti.UnitaryFJ.contractions_charpoly` (compatibility): For a square standard-coordinate X over a commutative star ring, the two signed contractions have the same Matrix.charpoly, by Matrix.charpoly_mul_comm applied to -X and X*.

**Unit tests:**

- `TauCeti.UnitaryFJ.leftContraction_one` (computation): For the standard space, r1(1)=-1.

- `TauCeti.UnitaryFJ.contractions_zero` (degenerate): r1(0)=0=r2(0).

- `TauCeti.UnitaryFJ.leftContraction_rankOne` (compatibility): For a one-by-one matrix [z], its only entry is -z*bar(z).

- `TauCeti.UnitaryFJ.contraction_diagonal` (computation): For diagonal X=diag(z_i) in standard coordinates, r1(X)=diag(-z_i*bar(z_i)).

**Check:** In dimension one r1(z)=r2(z)=-N_E/F(z).


### FJ.0/quotients: Invariant quotients of the symmetric representation

**Theorem target.** The morphism r1 realizes Hom_E(W2,W1)//U(W2) as Herm(W1), equivariantly for U(W1). Taking the quotient by both unitary groups gives affine n-space: the quotient map is the n nonleading coefficients of charpoly(r1(X)). These are categorical quotients of F-varieties, not assertions that every F-point has a preimage.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/contractions`, `SchemeAndStackFoundations:SF.1/galois-descent-affine`, `mathlib:Matrix.charpoly`, `EndoscopicTransferAndUnitaryTraceComparison:ET.2b/chevalley-quotient`.

**Construction or proof:**

1. After separable base change, E splits and the representation becomes a pair (A,B) with contraction -AB.

2. Use the split multiplication-map section and its generic transitive fibers in Igusa’s criterion (supplier request SF.1).

3. Import the GL_n characteristic-coefficient invariant quotient from ET.2b/chevalley-quotient and transport it along multiplication by a trace-zero scalar between the Hermitian and skew-Hermitian representations. Descend the coordinate-algebra identifications with SF.1/galois-descent-affine.

**Sources:** [Leslie25] Proposition 2.1 and Lemma 2.2, p. 14. One quotient is Hermitian endomorphisms and the full invariant quotient is given by characteristic coefficients.

**Check:** For n=1 the full quotient is the scalar -N(z), although its rational image can omit nonnorms.


### FJ.0/regular-invertible: Regular semisimplicity excludes singular Hom maps

**Theorem target.** For the symmetric representation, regular semisimple means a closed geometric orbit of maximal dimension. An element X is regular semisimple exactly when r1(X) is an invertible regular semisimple Hermitian endomorphism. In particular X is invertible and the stabilizer in U(W1) times U(W2) is a rank-n torus. The off-diagonal block has characteristic polynomial charpoly(r1(X))(T^2).

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/contractions`, `FJ.0/quotients`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/unitary-hermitian-matching`, `mathlib:Matrix.charpoly_mul_comm`.

**Construction or proof:**

1. In split coordinates identify closed regular orbits with separable nonzero eigenvalues of the product.

2. Compute the block characteristic polynomial by a Schur-complement identity; a zero product eigenvalue produces a repeated zero block root.

3. Descend the criterion and use the centralizer description from ET.0.

**Sources:** [Leslie25] Section 2.1 before Proposition 2.1 and Lemma 2.4, pp. 13–15. The closed maximal-dimensional orbits are regular in the block Lie algebra, and the even characteristic polynomial rules out zero eigenvalues.

**Check:** The zero map fails regular semisimplicity for n>0. A diagonal X with distinct nonzero norm squares yields a regular example.


### FJ.0/torsor: The contraction torsor and rational-class kernels

**Theorem target.** On invertible Hom maps, r1 is a U(W2)-torsor as a morphism of F-varieties over Herm(W1)^invertible. On F-points its image is the open-and-closed norm-form component Omega(W1,W2); no rational surjectivity onto all invertible Hermitian endomorphisms is asserted. At X, projection (g1,g2) to g1 identifies H_X with T_r1(X); its inverse sends t to (t,X^(-1)tX). For regular semisimple X it induces D(H_X,U(W1) times U(W2);F) isomorphic to D(T_r1(X),U(W1);F), compatibly with inv and the rational orbits inside a stable class.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/regular-invertible`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/crossed-module-galois-cohomology`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/abelianized-cohomology`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/unitary-hermitian-matching`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/rational-classes-in-stable-class`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/hermitian-space-classification`.

**Construction or proof:**

1. Check the geometric fibers are free transitive right U(W2)-orbits, then descend the torsor.

2. Solve tX=Xg2 to obtain the inverse stabilizer map.

3. Use the determinant description of unitary H1 to identify the two kernel conditions; the two component obstruction maps agree on H1(H_X).

**Sources:** [Leslie25] Lemma 2.3, p. 15; Leslie19 Lemmas 3.6 and 3.9, pp. 12–13. The source supplies the torsor, stabilizer projection and the equality of cohomological rational-class kernels.; [Leslie19] Lemmas 3.6 and 3.9, pp. 12–13. The earlier paper proves the stabilizer and kernel comparison explicitly.

**Check:** For n=1 the F-point image is one norm coset, although the geometric torsor is surjective. The induced map preserves the neutral rational orbit.


### FJ.0/relative-orbital-integral: Relative orbital integrals

**Definition target.** For f in C_c^infinity(Hom_E(W2,W1)), regular semisimple X, Haar measures dh1,dh2 and dt on H_X, define RO(f,X)=integral over H_X\(U(W1) times U(W2)) of f(h1^(-1) X h2) with quotient measure determined by dt and dh1 dh2. The integral is absolutely convergent. The torus measure is identified with the contraction centralizer measure through the specified projection.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/torsor`, `AdelicAlgebraicGroups:AA.2/quotient-measure`, `AdelicAlgebraicGroups:AA.2/quotient-integral-integrable`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`.

**Construction or proof:**

1. Form the invariant quotient measure using the imported modular condition and specify dt.

2. Obtain convergence from the closed regular orbit and compact support; transport the regular-orbit measure, as requested from ET.1.

**Sources:** [Leslie25] Equation (2.3), p. 15; Section 1.5.4, pp. 11–12. The integral is over the relative stabilizer quotient with fixed compatible Haar measures.

**Uses:** `FJ.1/kappa-orbital-integral and FJ.4/unit-fundamental-lemma`: Transfer compares stable and weighted sums of these quotient integrals.

**API:**

- `TauCeti.UnitaryFJ.relativeOrbitalIntegral` (data): The displayed quotient integral with the supplied Haar measures.

- `TauCeti.UnitaryFJ.relativeOrbitalIntegral_add` (structure): RO is a complex-linear functional in f.

- `TauCeti.UnitaryFJ.relativeOrbitalIntegral_conjugate` (compatibility): Replacing X by g1 X g2^(-1), and transporting its centralizer measure, leaves RO unchanged.

- `TauCeti.UnitaryFJ.relativeOrbitalIntegral_rescale` (compatibility): Rescaling dh1,dh2,dt by c1,c2,cT rescales RO by c1*c2/cT.

**Unit tests:**

- `TauCeti.UnitaryFJ.relativeOrbitalIntegral_zero` (degenerate): RO(0,X)=0.

- `TauCeti.UnitaryFJ.relativeOrbitalIntegral_torus_unit` (computation): For n=1, unramified E/F, standard forms, unit x, vol U(1)=1 and f=1_OE, RO(f,x)=1.

- `TauCeti.UnitaryFJ.relativeOrbitalIntegral_measure` (compatibility): Keeping group measures fixed and doubling the stabilizer measure divides RO by two.

**Check:** Changing dt by c multiplies RO by c^(-1).


### FJ.0/pushforward: Orbital pushforward along contraction

**Construction target.** For T=r1(X) in Omega(W1,W2), set r_!f(T)=integral over U(W2) of f(Xu) du. It is independent of X and is zero off Omega in the invertible Hermitian locus. For f supported compactly in the invertible Hom locus, r_!f is a compactly supported locally constant function on that locus. For arbitrary f on all Hom maps it is only locally constant on the invertible locus with relatively compact support in the ambient Hermitian space; it need not be compactly supported within the invertible locus. The map on compact nonsingular tests is onto C_c^infinity(Omega).

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/torsor`, `AdelicAlgebraicGroups:AA.2/quotient-measure`, `AdelicAlgebraicGroups:AA.2/quotient-integral-integrable`.

**Construction or proof:**

1. Use the torsor to compare two lifts by right multiplication and Haar invariance.

2. Use local analytic sections and a compact partition of unity to prove local constancy and surjectivity on Omega.

3. For arbitrary f use an orbitwise compact cutoff before applying the nonsingular assertion; request the local-section/cutoff input.

**Sources:** [Leslie25] Equation (2.4) and discussion, p. 16; Leslie19 Section 3.2, pp. 12–13. Fiber integration works on the norm-form image and preserves compact support only with support away from singular maps.; [Leslie19] Section 3.2, pp. 12–13. The distinction between compact support on the nonsingular locus and ambient relative compactness is explicit.; [Leslie19] Appendix A, Proposition A.3, pp. 25–26. Torsor pushforward from the sum over twists is onto the compact test functions on the base.

**Uses:** `FJ.0/orbital-comparison and FJ.4/contracted-lattice-function`: It turns the relative orbital integrals and the lattice unit into Hermitian functions.

**API:**

- `TauCeti.UnitaryFJ.contractionPushforward` (constructor): Integrate over the right-unitary fiber and extend by zero outside its F-point image.

- `TauCeti.UnitaryFJ.contractionPushforward_lift` (characterisation): At T=r1(X), the value is integral_U(W2) f(Xu) du, independently of the chosen lift.

- `TauCeti.UnitaryFJ.contractionPushforward_linear` (structure): Fiber integration is complex-linear.

- `TauCeti.UnitaryFJ.contractionPushforward_support` (other): For compact nonsingular support, support(r_!f) is contained in r1(support f), a compact subset of the invertible locus.

- `TauCeti.UnitaryFJ.contractionPushforward_surjective` (universal-property): Every compact locally constant function on Omega has a compact nonsingular lift.

**Unit tests:**

- `TauCeti.UnitaryFJ.contractionPushforward_zero` (degenerate): r_!(0)=0.

- `TauCeti.UnitaryFJ.contractionPushforward_rankOne` (computation): For unramified rank one and f=1_OE, r_!f(t)=1 if v_F(-t) is even and nonnegative, and is zero otherwise, with vol U(1)=1.

- `TauCeti.UnitaryFJ.contractionPushforward_no_false_compactness` (non-example): That rank-one pushforward is not compactly supported in F^times; its support accumulates at zero in F.

- `TauCeti.UnitaryFJ.contractionPushforward_unitShell` (computation): For rank one and f=1_OE^times, the pushforward is the indicator of OF^times, since -1 is an integral norm in the unramified case.

**Check:** For n=1 the unrestricted unit-lattice pushforward has infinitely many even nonnegative determinant degrees.

**Direct open obligations:** G1.


### FJ.0/orbital-comparison: Contraction preserves the orbital integral

**Theorem target.** For regular semisimple X and every compact locally constant f on the full Hom space, RO(f,X)=Orb(r_!f,r1(X)), with the torus measure transported by the stabilizer projection. The right integral converges even when r_!f is not compactly supported on the entire invertible locus. The comparison extends termwise to stable and kappa sums via the kernel bijection.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/pushforward`, `FJ.0/relative-orbital-integral`, `FJ.0/torsor`, `AdelicAlgebraicGroups:AA.2/quotient-measure-transitivity`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`.

**Construction or proof:**

1. Apply quotient integration in stages through the right-unitary fiber and the projected centralizer.

2. For an arbitrary f choose a compact nonsingular cutoff with the same values on the regular orbit in question.

3. Use the kernel comparison for the finite stable-class sums.

**Sources:** [Leslie25] Lemma 2.5, p. 16. Relative fiber integration and the stabilizer isomorphism give the ordinary orbital integral.

**Check:** The rank-one unit test gives one on both sides. No global compactness of r_!f is used.

**Direct open obligations:** G1.


## FJ.1. Relative endoscopic matching

Construct relative endoscopic data, their infinitesimal symmetric spaces, contraction-defined matching and transfer factors, finite kappa-weighted orbital sums, and the transfer relation including zero on unmatched orbits. Establish transfer for functions supported away from the singular locus. State the contraction-independence comparison with its required normalization transport.

**Dependencies:** `FJ.0`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`, `EndoscopicTransferAndUnitaryTraceComparison:ET.3`.

**Coverage:** `planned`. G2: nonisometric contraction-exchange normalization. Resolve FJ.0/G1 and the ordinary smooth-transfer export requested from ET.3.

**Planets:** Relative endoscopic datum; Relative transfer factor; Relative kappa orbital integrals; Relative smooth transfer.


### FJ.1/relative-datum: Relative endoscopic data and symmetric spaces

**Definition target.** For n=a+b with a,b positive, a relative datum Xi consists of an ordinary elliptic endoscopic datum (U(Va) times U(Vb),s,xi) for U(W1), together with Hermitian forms alpha on E^a and beta on E^b. Its symmetric representation is Hom_E(V_alpha,Va) direct-sum Hom_E(V_beta,Vb), with acting group (U(Va) times U(V_alpha)) times (U(Vb) times U(V_beta)). The reference spaces Va,Vb and the varying spaces V_alpha,V_beta are retained separately even if their unitary groups happen to be isomorphic.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/symmetric-representation`, `FJ.0/contractions`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/unitary-elliptic-endoscopic-data`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/hermitian-space-classification`.

**Construction or proof:**

1. Import the ordinary datum and local Hermitian isometry classes.

2. Apply symmetric-representation separately in ranks a and b; use the product contraction r_alpha,beta.

**Sources:** [Leslie25] Section 2.3, p. 20. Ordinary elliptic data are enriched by two Hermitian source forms; each summand is a new symmetric representation.

**Uses:** `FJ.1/matching-factor and FJ.4/unit-fundamental-lemma`: The form labels determine both relative matching and which target unit is nonzero.

**API:**

- `TauCeti.UnitaryFJ.RelativeDatum` (constructor): Construct Xi from the ordinary datum and representatives alpha,beta of Hermitian isometry classes.

- `TauCeti.UnitaryFJ.RelativeDatum.symmetricSpace` (projection): The associated representation is Hom(V_alpha,Va) direct-sum Hom(V_beta,Vb).

- `TauCeti.UnitaryFJ.RelativeDatum.contraction` (projection): Return (r1(delta_a),r1(delta_b)) in Herm(Va) direct-sum Herm(Vb).

- `TauCeti.UnitaryFJ.RelativeDatum.isometry_transport` (functoriality): Isometries of alpha or beta induce equivariant linear isomorphisms of the symmetric representations and preserve contraction.

**Unit tests:**

- `TauCeti.UnitaryFJ.RelativeDatum_rankTwo` (computation): For n=2,a=b=1, the four form pairs are distinct relative data over the same ordinary datum.

- `TauCeti.UnitaryFJ.RelativeDatum_standard` (compatibility): When alpha=Ia,beta=Ib, the Hom spaces identify with End(Va) direct-sum End(Vb).

- `TauCeti.UnitaryFJ.RelativeDatum_innerForm_matters` (non-example): In odd rank two nonisometric Hermitian spaces with isomorphic unitary groups still give different form labels in Xi.

**Check:** For a=b=1 there are four pairs of Hermitian isometry classes, with the same ordinary endoscopic group.


### FJ.1/matching-factor: Relative matching and the pullback factor

**Construction target.** Regular semisimple delta and (delta_a,delta_b) match for Xi exactly when r1(delta) and (r1(delta_a),r1(delta_b)) match under the ordinary Hermitian endoscopic relation. Define Delta_rel by evaluating the ET.1 normalized factor on that contracted pair, and zero on nonmatching pairs. The associated character kappa on D(H_delta/F) is the pullback, through the contraction kernel isomorphism, of the ordinary character trivial on a-components and nontrivial on b-components.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.1/relative-datum`, `FJ.0/torsor`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/unitary-hermitian-matching`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`.

**Construction or proof:**

1. Use the ordinary matching and factor exported by ET.0 and ET.1.

2. Pull back the factor along the pair of contractions and the character along torsor.

3. For nicely matching contractions the reference factor is eta(resultant)*absolute-value(resultant), with the ET.1 inv correction otherwise.

**Sources:** [Leslie25] Section 2.3, p. 20; Sections 2.2.2–2.2.3, pp. 18–19. Both the relative factor and the kappa character are transported from ordinary Hermitian endoscopy.

**Uses:** `FJ.1/smooth-transfer and FJ.4/unit-fundamental-lemma`: The ordinary normalization is exactly the multiplier in the relative transfer identity.

**API:**

- `TauCeti.UnitaryFJ.relativeMatches` (characterisation): Relative matching is ordinary matching of the two contractions, with source regularity and cross-block disjoint spectra.

- `TauCeti.UnitaryFJ.relativeTransferFactor` (data): Delta_rel(deltaH,delta)=Delta(r_alpha,beta(deltaH),r1(delta)).

- `TauCeti.UnitaryFJ.relativeKappa` (projection): Pull back the ET.0 endoscopic character to D(H_delta/F).

- `TauCeti.UnitaryFJ.relativeTransferFactor_change_orbit` (compatibility): Changing the source rational orbit multiplies the factor by the ordinary kappa(inv) correction, in the fixed ET.1 orientation.

**Unit tests:**

- `TauCeti.UnitaryFJ.relativeFactor_rankTwo` (computation): For a=b=1 a nicely matching pair of distinct nonzero scalars has factor eta(x-y)*|x-y|_F.

- `TauCeti.UnitaryFJ.relativeFactor_no_match` (degenerate): A nonmatching regular pair has relative factor zero.

- `TauCeti.UnitaryFJ.relativeFactor_not_discriminantOnly` (non-example): When eta(x-y)=-1 the factor is negative, so replacing it by the positive absolute resultant fails.

**Check:** For a=b=1 and distinct contracted scalars x,y, a nice-match factor is eta(x-y)*|x-y|_F.


### FJ.1/kappa-orbital-integral: Stable and weighted relative orbital sums

**Definition target.** For a regular semisimple delta in the fixed symmetric representation and a character kappa of D(H_delta/F), set RO^kappa(f,delta)=sum over rational orbits delta_prime in its stable class of kappa(inv(delta,delta_prime))*RO(f,delta_prime). Use inv transported from contraction with the ET.0 orientation. SRO is the case kappa=1. The sum ranges over the fixed symmetric space, not over all pure inner forms.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/relative-orbital-integral`, `FJ.0/torsor`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/rational-classes-in-stable-class`, `FJ.1/matching-factor`.

**Construction or proof:**

1. Use the rational-class kernel to index the finite sum.

2. Transport the centralizer measure consistently to each class and use ordinary inv functoriality.

**Sources:** [Leslie25] Section 2.3.1, p. 20. The weighted integral is a finite stable-class sum; the trivial character gives stable relative integration.

**Uses:** `FJ.1/smooth-transfer`: The source side is weighted, while the target side is stable.

**API:**

- `TauCeti.UnitaryFJ.relativeKappaOrbitalIntegral` (constructor): Sum RO over the finite D(H_delta/F)-torsor with the character weights.

- `TauCeti.UnitaryFJ.stableRelativeOrbitalIntegral` (data): Set kappa to the trivial character.

- `TauCeti.UnitaryFJ.relativeKappaOrbitalIntegral_linear` (structure): The weighted sum is complex-linear in the test function.

- `TauCeti.UnitaryFJ.relativeKappaOrbitalIntegral_basepoint` (compatibility): Changing the base rational orbit multiplies the sum by the inverse of its character value.

**Unit tests:**

- `TauCeti.UnitaryFJ.relativeKappa_trivial` (compatibility): For kappa=1 the sum equals SRO.

- `TauCeti.UnitaryFJ.relativeKappa_two_classes` (computation): For a stable class with D=C2 and RO-values A,B, the nontrivial character gives A-B.

- `TauCeti.UnitaryFJ.relativeKappa_two_classes_swap` (computation): In the same C2 example, changing the base orbit interchanges A,B and changes the weighted sum to B-A.

**Check:** If the stable class has one rational orbit, SRO=RO.


### FJ.1/smooth-transfer: The relative smooth-transfer relation

**Definition target.** A compact locally constant source function f and a compact locally constant target function f_Xi are transfers if SRO(f_Xi,deltaH)=Delta_rel(deltaH,delta)*RO^kappa(f,delta) for every matching regular pair, and SRO(f_Xi,deltaH)=0 for every target regular orbit having no source match. This is a relation on functions and a well-defined correspondence of orbital-integral classes; no preferred representative is selected.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.1/matching-factor`, `FJ.1/kappa-orbital-integral`, `FJ.0/orbital-comparison`.

**Construction or proof:**

1. Use the finite orbital sums and the transported factor; prove the identity is independent of source rational representative.

2. Retain the unmatched clause as a separate quantified condition.

**Sources:** [Leslie25] Definition 2.10, p. 21. The definition includes both matching identities and the zero condition on target orbits outside the image.

**Uses:** `FJ.4/unit-fundamental-lemma and FJ.5/full-smooth-transfer`: It separates the proved unit theorem from the unrestricted existence conjecture.

**API:**

- `TauCeti.UnitaryFJ.IsRelativeTransfer` (characterisation): The relation is the conjunction of the matching equality and the unmatched vanishing condition.

- `TauCeti.UnitaryFJ.IsRelativeTransfer.add` (structure): Adding two transfer pairs gives a transfer pair.

- `TauCeti.UnitaryFJ.IsRelativeTransfer.smul` (structure): Scaling both members by a complex scalar preserves the relation.

- `TauCeti.UnitaryFJ.IsRelativeTransfer.orbitalKernel` (compatibility): Changing the target by a function with all stable relative orbital integrals zero preserves the relation.

**Unit tests:**

- `TauCeti.UnitaryFJ.relativeTransfer_zero` (degenerate): The zero source and zero target form a transfer pair.

- `TauCeti.UnitaryFJ.relativeTransfer_unmatched` (non-example): A target function with nonzero SRO on a target orbit with no source match cannot transfer the zero source.

- `TauCeti.UnitaryFJ.relativeTransfer_kernel` (compatibility): Two target transfers of the same source have equal SRO on every target regular orbit.

**Check:** Matching identities on the image alone do not certify transfer.


### FJ.1/nonsingular-transfer: Transfer for tests supported on invertible maps

**Theorem target.** If f has compact support contained in the invertible Hom locus, then for every relative datum Xi there exists a compact locally constant target transfer supported in the invertible target Hom locus. On the ordinary endoscopic side choose a transfer of r_!f, restrict it to the image of the target contraction, and lift it through target fiber integration. This theorem concerns support away from the singular locus and does not prove general relative transfer.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/pushforward`, `FJ.0/orbital-comparison`, `FJ.1/smooth-transfer`, `EndoscopicTransferAndUnitaryTraceComparison:ET.3`.

**Construction or proof:**

1. Apply ordinary smooth transfer to the compact r_!f.

2. First multiply the ordinary target function by a compact determinant-valuation cutoff equal to one on the source invariant support; matching preserves determinant, so no relevant orbital integral changes. Restrict to the target norm-form component and lift by surjectivity of contractionPushforward.

3. Apply orbital-comparison on both sides and check unmatched vanishing.

**Sources:** [Leslie25] Definition 2.10 and the following discussion, p. 21; Leslie19 Proposition 1.3 and Proposition 4.5, pp. 4, 15. The earlier construction obtains relative transfer where the contraction pushforward remains a genuine compact test function.; [Leslie19] Proposition 1.3, p. 4, and Proposition 4.5, p. 15. Relative transfer is obtained from ordinary transfer for nonsingular support.

**Check:** The hypothesis excludes the full lattice indicator, whose support meets the singular locus.

**Direct open obligations:** G1.


### FJ.1/contraction-independence: Independence under exchanging the contractions

**Comparison target.** Compare the two relative transfer relations obtained from r1 and r2 after exchanging the two Hermitian summands, reindexing the endoscopic pure-inner-form data and transporting the centralizer measures and ordinary transfer-factor normalization. The intended assertion is equivalence of the resulting orbital-integral identities. The datum transport and its factor correction must be constructed explicitly; this is a comparison target with the normalization gap recorded below, not a claimed unqualified equality of factors.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.0/contractions`, `FJ.0/torsor`, `FJ.1/smooth-transfer`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`.

**Construction or proof:**

1. Use X^tau to exchange the two symmetric representations and X to identify the invertible contracted centralizers.

2. Track inv and the ordinary pure-inner-form transfer-factor corrections under this exchange.

3. Discharge the explicit datum/measure transport gap before claiming equivalence.

**Sources:** [Leslie25] Remark 2.11, p. 21. The source states contraction independence but supplies no complete normalization diagram.

**Check:** The check must treat nonisometric W1,W2; the equal-form case alone is insufficient.

**Direct open obligations:** G2.


## FJ.2. Spherical Hermitian functions and Hecke maps

Build the spherical module on all invertible Hermitian matrices, Hironaka’s normalized Fourier isomorphism and its rank 2^n consequence. Import the determinant-twisted Levi Hecke map and its Satake substitution from SR.4; prove its compatibility with quadratic base change. Keep its cyclic submodule distinct from the full spherical module.

**Dependencies:** `FJ.0`, `SmoothRepresentationsOfLocalGroups:SR.4`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2`, `EndoscopicTransferAndUnitaryTraceComparison:ET.3`.

**Coverage:** `planned`. ET.3 request: squared-variable unramified GL base-change export. Validate the chosen normalization of Hironaka against the supplied base-change map when the import is implemented.

**Planets:** Hermitian spherical module; Base change and Levi descent; Spherical Fourier transform.


### FJ.2/hermitian-spherical-module: The spherical module on all invertible Hermitian matrices

**Construction target.** Let Xn={y in GL_n(E): y*=y}, with g*y=g y g*. Retain both GL_n(E)-orbits of Hermitian forms. Define H(Xn)=C_c^infinity(Xn)^(K_n,E), where K_n,E=GL_n(OE), as an H(GL_n(E))-module by (phi*f)(y)=integral phi(g^(-1))*f(g*y) dg. Its basis consists of the indicators e_lambda of K_n,E*pi^lambda under congruence, for dominant integral lambda, including negative entries. Write e_0 for the integral unimodular orbit indicator. No convolution on Xn is implicit in this definition.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `GeometryOfNumbersAndQuadraticArithmetic:GN.2/signed-hermitian-space`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/hermitian-space-classification`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/local-unimodular-hermitian-classification`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/unramified-hermitian-lattice-diagonalization`, `SmoothRepresentationsOfLocalGroups:SR.4/satake-isomorphism`, `AdelicAlgebraicGroups:AA.2/quotient-integral-integrable`.

**Construction or proof:**

1. Use local integral Hermitian diagonalization to classify K_n,E-orbits by dominant integral tuples.

2. Every compact invariant test meets only finitely many such open orbits.

3. Obtain the module laws by group convolution and Fubini, with vol K_n,E=1.

**Sources:** [Leslie25] Section 3.2, equation (3.7), p. 26. The congruence-orbit decomposition supplies the basis and the spherical Hecke action.

**Uses:** `FJ.2/spherical-fourier and FJ.4/contracted-lattice-function`: The full module receives the Fourier isomorphism and the individual compact determinant pieces.

**API:**

- `TauCeti.UnitaryFJ.hermitianSphericalModule` (data): The complex vector space of compact locally constant K_n,E-invariant functions on all Xn.

- `TauCeti.UnitaryFJ.hermitianOrbitIndicator` (constructor): For dominant lambda in Z^n, e_lambda is the indicator of the congruence orbit of pi^lambda.

- `TauCeti.UnitaryFJ.hermitianOrbitBasis` (characterisation): The e_lambda are a basis, so each element has a unique finite expansion.

- `TauCeti.UnitaryFJ.hermitianHeckeAction` (structure): The displayed integral is a unital H(GL_n(E))-module action.

- `TauCeti.UnitaryFJ.hermitianSphericalModule_toTest` (coercion): Extend by zero to Herm(Vn); compact support in Xn makes this a compact locally constant Hermitian test.

**Unit tests:**

- `TauCeti.UnitaryFJ.hermitianOrbit_rankOne_odd` (non-example): For n=1, e_(1) is nonzero and belongs to the other GL_1(E)-orbit from e_(0).

- `TauCeti.UnitaryFJ.hermitianOrbit_negative` (computation): For n=1, e_(-1) is the indicator of pi^(-1)*OF^times and is a valid compact test.

- `TauCeti.UnitaryFJ.hermitianHecke_unit` (compatibility): The Hecke unit 1_K acts as the identity on every e_lambda.

- `TauCeti.UnitaryFJ.hermitianOrbit_disjoint` (characterisation): Distinct dominant lambda have disjoint supports; in particular e_(0) and e_(1) are linearly independent in rank one.

**Check:** For n=1, X1=F^times and its basis is indexed by every integer valuation, not just even valuations.


### FJ.2/base-change-compatibility: Quadratic base change commutes with the twisted Levi map

**Theorem target.** Define xi_F on spherical GL_n(F) by the same formula as xi_E with |.|_F in both twists and in normalized descent. Then BC_(a,b) composed with xi_E equals xi_F composed with BC_n. On normalized Satake coordinates, BC_n sends each E-variable Z_i to the square T_i^2; xi_F scales T_i by q^(-b/2) or q^(-a/2), so both composites substitute q^(-b)*X_i^2 or q^(-a)*Y_i^2. The equality does not imply that base change has support only on individually even coweights.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `SmoothRepresentationsOfLocalGroups:SR.4/parabolic-descent`, `EndoscopicTransferAndUnitaryTraceComparison:ET.3`, `SmoothRepresentationsOfLocalGroups:SR.4/satake-isomorphism`.

**Construction or proof:**

1. Request the unramified GL base-change Satake formula from ET.3.

2. Compute both composites on Laurent variables and descend to symmetric Laurent polynomials by injectivity of Satake.

3. Use the rank-two counterexample to rule out the source proof’s asserted support shortcut.

**Sources:** [Leslie25] Proof of Proposition 4.8, p. 39; Lemma 3.2, p. 24. The desired diagram follows directly from Satake substitutions, replacing the incorrect even-coweight support argument.

**Check:** In rank two BC(1_K_E diag(pi,1) K_E)=1_K_F diag(pi^2,1) K_F-(q-1)*1_(pi K_F), which has an odd (1,1) component.


### FJ.2/spherical-fourier: Hironaka’s normalized spherical Fourier isomorphism

**Construction target.** Normalize the spherical Fourier transform to obtain a complex-linear isomorphism H_n:H(Xn) -> H(GL_n(F)) such that H_n(e_0)=1_Kn and H_n(phi*f)=BC_n(phi)*H_n(f). It transports the GL_n(F) convolution algebra to an algebra structure on H(Xn). As an H_n,E-module H(Xn) is free of rank 2^n. The cyclic map phi -> phi*e_0 is injective, but for n>0 is not surjective.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.2/hermitian-spherical-module`, `FJ.2/base-change-compatibility`, `SmoothRepresentationsOfLocalGroups:SR.4/satake-isomorphism`, `EndoscopicTransferAndUnitaryTraceComparison:ET.3`.

**Construction or proof:**

1. Use the normalized spherical functions and Fourier image in Hironaka Theorem 2, matching q and the reference orbit.

2. Identify the image with the F-Satake algebra and normalize the reference orbit to the unit.

3. The symmetric Laurent algebra is free of rank 2^n over its squared-variable subalgebra, yielding freeness and cyclic injectivity.

**Sources:** [Leslie25] Proposition 3.4 and Remarks 3.6–3.7, pp. 26–27; Hironaka99 Theorem 2, p. 571. Hironaka’s transform identifies the full module with the F-Hecke algebra over the squared-variable E-Hecke algebra.; [Hironaka99] Section 2, Theorem 2, p. 571; normalization on pp. 570–571. The Fourier image is the full symmetric Laurent algebra and the module has rank 2^n.

**Uses:** `FJ.3/augmented-to-endoscopic and FJ.5/full-spherical-extension`: It relates the cyclic BC test to Hermitian tests and defines an extension on the full module.

**API:**

- `TauCeti.UnitaryFJ.hermitianSphericalFourier` (equivalence): The normalized isomorphism H_n between the full Hermitian module and the F-Hecke algebra.

- `TauCeti.UnitaryFJ.hermitianSphericalFourier_unit` (simp): H_n(e_0)=1_Kn.

- `TauCeti.UnitaryFJ.hermitianSphericalFourier_action` (compatibility): H_n(phi*f)=BC_n(phi)*H_n(f).

- `TauCeti.UnitaryFJ.hermitianSphericalFourier_inverse` (universal-property): The inverse sends BC_n(phi) to phi*e_0, and both composites with H_n are identities on the full spaces.

- `TauCeti.UnitaryFJ.hermitianCyclicEmbedding` (characterisation): phi -> phi*e_0 is injective and its image under H_n is exactly the base-change subalgebra.

**Unit tests:**

- `TauCeti.UnitaryFJ.sphericalFourier_rankOne_unit` (computation): H_1(e_(0))=1_OF^times.

- `TauCeti.UnitaryFJ.sphericalFourier_rankOne_shift` (compatibility): The pi^d OE^times Hecke indicator sends e_(0) to e_(2d), and H_1(e_(2d)) is the pi^(2d) OF^times Hecke indicator.

- `TauCeti.UnitaryFJ.sphericalFourier_not_cyclic_surjection` (non-example): In rank one e_(1) lies outside the image of phi -> phi*e_(0).

- `TauCeti.UnitaryFJ.sphericalFourier_inverse_all` (characterisation): For f=e_(1), H_1^(-1)(H_1(f))=f; the inverse identity includes the noncyclic part.

**Check:** For n=1 the action shifts valuations by even integers, so e_(0) and e_(1) give the two module generators.


## FJ.3. Local comparison reductions

Use Xiao’s pure-inner-form torsor, norm characters, regularized orbital distributions and germ identity to compare the endoscopic and Jacquet–Rallis transfer diagrams. Give additive Lie parabolic descent and its lattice/Jacobian computation. Deduce spherical endoscopic transfer from augmented Jacquet–Rallis transfer, and augmented transfer from the rank-shifted group comparison by the Weil representation. The local Jacquet–Rallis and Weil inputs have the explicit unresolved supplier contracts in the packet.

**Dependencies:** `FJ.1`, `FJ.2`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`, `EndoscopicTransferAndUnitaryTraceComparison:ET.3`, `SmoothRepresentationsOfLocalGroups:SR.4`.

**Coverage:** `planned`. G3: register and prove the local Jacquet–Rallis exports. G4: settle raw Tate versus finite Fourier averaging and the endoscopic factor/sign comparison. G5: register the Weil/orbital-image export with its self-dual trace pairing.

**Planets:** Generalized nilpotent orbital integrals; Xiao germ comparison; Lie parabolic descent; Augmented Jacquet–Rallis reduction; Weil representation reduction.


### FJ.3/pure-form-orbit-torsor: The orbit torsor across both Hermitian forms

**Comparison target.** For a regular semisimple Hermitian y with F[y]=product Fi, let Ei=E tensor_F Fi and S1={i:Ei is a field}. The union S of conjugacy classes with that characteristic polynomial across both n-dimensional Hermitian forms is a torsor for H1(F,T_y)=product_(i in S1) C2. In one fixed form the rational classes are the kernel of the sum map to C2. An auxiliary regular cyclic pair (v,v*) on a matching linear x chooses an origin in S and identifies it with F[x]^times/Nm(E[x]^times). For Sigma subset S1 the character is kappa_Sigma(zeta)=product_(i notin Sigma) eta_Ei/Fi(zeta_i).

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `EndoscopicTransferAndUnitaryTraceComparison:ET.0/unitary-hermitian-matching`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/rational-classes-in-stable-class`, `EndoscopicTransferAndUnitaryTraceComparison:ET.0/crossed-module-galois-cohomology`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/hermitian-space-classification`.

**Construction or proof:**

1. Import the ordinary torus and fixed-form kernel from ET.0.

2. Classify the one-dimensional Ei-Hermitian factors by their norm classes; all factors together give the pure-form union.

3. Use cyclic invariant matching to identify the norm quotient and evaluate the complementary-coordinate characters.

**Sources:** [Leslie25] Proposition 4.5, Lemma 4.6 and the definition of kappa_Sigma, pp. 35–36. The larger pure-form union is an H1 torsor; choosing cyclic auxiliary data gives the norm-quotient coordinates and all characters.; [Xiao18] Proposition 3.8, pp. 11–12, and Lemma 4.6, pp. 19–20. The pure-form orbit union and its cyclic norm coordinates have a compatible H1-torsor structure.

**Check:** For n=1 the union has two classes, while a single fixed form has one. If S1 is empty, the union is a singleton and the norm quotient is trivial.

**Direct open obligations:** G3.


### FJ.3/generalized-nilpotent-integral: Regularized generalized nilpotent orbital distributions

**Definition target.** Fix regular semisimple x in gl_n(F), cyclic v and v*, F[x]=product Fi and S1 as in pure-form-orbit-torsor. Let T=F[x]^times and T1=product_(i in S1) Fi^times. Set v_Sigma to v_i for i in Sigma and zero otherwise; v*_(S1\Sigma) is analogous, with every S2 component zero. Define G_Sigma(f) by integrating over GL_n(F)/T the value at s=0 of the meromorphic continuation of the T1 integral of f(gxg^(-1),g t v_Sigma,v*_(S1\Sigma)t^(-1)g^(-1))*eta(det t)*eta(det g)*product_(i in Sigma)|t_i|^s*product_(i in S1\Sigma)|t_i|^(-s). Use maximal-compact-volume-one multiplicative measures and their quotient measures. This is the raw regularized integral; it includes no finite-Fourier inversion factor.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.3/pure-form-orbit-torsor`, `AdelicAlgebraicGroups:AA.2/quotient-measure`, `AdelicAlgebraicGroups:AA.2/quotient-integral-integrable`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`.

**Construction or proof:**

1. Factor compact locally constant functions into finite sums of tensor products locally on the regular semisimple x-orbit.

2. Apply Tate continuation in each nonsplit factor; the nontrivial quadratic character removes the pole at zero.

3. At s=0 the value descends under changing the T-coset representative; compactness on GL/T gives a well-defined outer integral.

**Sources:** [Leslie25] Section 4.2, p. 36; Xiao18 Section 2.1, equation (2) and Lemma 2.1, pp. 3–5. Tate continuation defines distributions on singular vector orbits with complementary supports.; [Xiao18] Section 2.1, equation (2), Lemma 2.1, pp. 3–5; Section 4.1, p. 15. The continuation is holomorphic at zero and descends to a compactly supported function on GL/T.

**Uses:** `FJ.3/germ-inversion and FJ.3/augmented-to-endoscopic`: Its character transform recovers weighted ordinary orbital sums and passes through Lie parabolic descent.

**API:**

- `TauCeti.UnitaryFJ.generalizedNilpotentIntegral` (data): The displayed regularized integral for x,Sigma and the chosen cyclic reference data.

- `TauCeti.UnitaryFJ.generalizedNilpotentIntegral_linear` (structure): It is a complex-linear functional on the augmented linear test space.

- `TauCeti.UnitaryFJ.generalizedNilpotentIntegral_equivariant` (functoriality): Conjugating the triple by g changes the distribution by eta(det g) with the chosen action convention.

- `TauCeti.UnitaryFJ.generalizedNilpotentIntegral_reference` (compatibility): Changing v,v* by torus scalars transforms the value by their quadratic norm characters, consistently with the corresponding change of origin on S.

**Unit tests:**

- `TauCeti.UnitaryFJ.nilpotentIntegral_rankOne_unitShell` (computation): For n=1, Sigma={1}, x fixed and the vector test 1_OF^times, the raw Tate integral is 1.

- `TauCeti.UnitaryFJ.nilpotentIntegral_rankOne_piShell` (computation): For n=1 and vector test 1_(pi OF^times), the raw integral is eta(pi)=-1.

- `TauCeti.UnitaryFJ.nilpotentIntegral_rankOne_lattice` (computation): For n=1 and vector test 1_OF, the Tate expression is 1/(1+q^(-s)), so its raw value at zero is 1/2, not 1.

- `TauCeti.UnitaryFJ.nilpotentIntegral_zero` (degenerate): The zero augmented test gives zero.

**Check:** Distinguish this raw value from the normalized finite character sum in germ-inversion.


### FJ.3/germ-inversion: Germ inversion with an explicit finite-Fourier normalization

**Theorem target.** Suppose f and the family {f_V} are augmented Jacquet–Rallis transfers for the cyclic-vector factor omega and volume-one measures. For regular semisimple x with r=card S1, matching reference data (y,w), and Sigma subset S1, the target normalized identity is omega(x,v,v*)*G_Sigma(f)=2^(-r)*sum_(zeta in S) kappa_Sigma(zeta)*Orb_U(V_zeta)(f_V_zeta(-,0),y_zeta). Equivalently define the Fourier-normalized germ as 2^r*G_Sigma. The orbit sum includes both Hermitian forms. This is the corrected normalization target; verifying the displayed coefficient against all quotient-measure transports is an explicit gap, not a closed import of the source’s unnormalized formula.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.3/pure-form-orbit-torsor`, `FJ.3/generalized-nilpotent-integral`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`.

**Construction or proof:**

1. Use the augmented Jacquet–Rallis matching contract and the torus germ expansions in Xiao Sections 4.1–4.3.

2. Extract the constant term after the split-factor logarithmic terms.

3. Invert the r-dimensional C2 character table with factor 2^(-r); prove that its quotient measures agree with the ET.1 normalization.

**Sources:** [Leslie25] Theorem 4.7, p. 36; Xiao18 Theorem 4.7 and its preceding inversion, pp. 20–21. The source obtains a finite character transform of the nilpotent germs; its printed inverse omits the averaging factor under the stated volume-one conventions.; [Xiao18] Sections 4.1–4.5, pp. 15–21, especially Theorem 4.7. Torus germ expansions give the forward character identity; finite Fourier inversion determines its factor.

**Check:** For n=1 and the standard augmented unit, G=1/2 while the unaveraged pure-form sum is 1. Changing the reference orbit transports both the character sum and omega*G by the same character.

**Direct open obligations:** G3, G4.


### FJ.3/lie-parabolic-descent: Additive parabolic descent on augmented linear tests

**Construction target.** For n=a+b and an augmented linear test f(x,v,v*), define f_p(m1,m2,v,v*) as integral over Lie N_(a,b)(F) and K_n of f(k*[[m1,u],[0,m2]]*k^(-1),k v,v* k^(-1)) dk du. Here du is additive, Lie N(OF) and K_n have volume one, and no delta_P^(1/2) occurs in the definition. With L_n=OF^n direct-sum (OF^n)*, the descent of phi tensor 1_Ln equals xi_F(phi) tensor 1_(La times Lb) for spherical phi on GL_n(F), extended by zero to gl_n(F).

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `SmoothRepresentationsOfLocalGroups:SR.4/satake-isomorphism`, `SmoothRepresentationsOfLocalGroups:SR.4/parabolic-descent`, `AdelicAlgebraicGroups:AA.2/quotient-measure`, `AdelicAlgebraicGroups:AA.2/quotient-integral-integrable`, `FJ.2/base-change-compatibility`.

**Construction or proof:**

1. Define the integral on the additive nilpotent block and the compact K average.

2. Use K-stability of L_n to factor out the vector-lattice indicator.

3. Change u=m1*u_prime; its Jacobian is |det m1|_F^b. Compare with delta_P^(1/2) and the two half-power twists to identify xi_F.

**Sources:** [Leslie25] Definition 4.9, p. 38, and the Jacobian calculation in Proposition 4.8, p. 39. The additive Lie operation differs from normalized group descent, but its lattice-vector specialization produces the required determinant twists.

**Uses:** `FJ.3/augmented-to-endoscopic`: This descent carries the upper-rank BC augmented test to the lower-rank BC(xi_E) test.

**API:**

- `TauCeti.UnitaryFJ.lieParabolicDescent` (constructor): The additive Lie N and compact K double integral above.

- `TauCeti.UnitaryFJ.lieParabolicDescent_linear` (structure): It is a complex-linear map between the augmented test spaces.

- `TauCeti.UnitaryFJ.lieParabolicDescent_lattice` (simp): For phi spherical on GL_n(F), (phi tensor 1_Ln)_p=xi_F(phi) tensor 1_(La times Lb).

- `TauCeti.UnitaryFJ.lieParabolicDescent_vs_group` (compatibility): On invertible Levi matrices the additive integral is |det m1|_F^b times unnormalized group descent; after delta_P normalization this is xi_F.

**Unit tests:**

- `TauCeti.UnitaryFJ.lieDescent_integral_unit` (computation): For n=2,a=b=1, the descent of 1_M2(OF) tensor 1_L2 is 1_OF tensor 1_OF tensor 1_L1 tensor 1_L1.

- `TauCeti.UnitaryFJ.lieDescent_vector_outside` (non-example): If a vector coordinate has negative valuation, the descended lattice-vector test is zero even when both Levi matrices are integral.

- `TauCeti.UnitaryFJ.lieDescent_jacobian` (computation): For a=b=1 and m1=pi, replacing u by m1*u multiplies additive measure by q^(-1); omitting this factor fails xi_F compatibility.

**Check:** The descent of the full augmented integral matrix/lattice indicator is the product of the two lower-rank augmented integral indicators.


### FJ.3/augmented-to-endoscopic: From augmented Jacquet–Rallis to cyclic endoscopic transfer

**Theorem target.** Assume in every positive rank m that, for each phi in H_m,E, the augmented tests BC_m(phi) tensor 1_Lm and {(phi*e_0) tensor 1_Lambda_m,0} are Jacquet–Rallis transfers. Then for every n=a+b and phi in H_n,E, the functions phi*e_0 and xi_E(phi)*e_0 are ordinary endoscopic transfers on Herm(Vn) and Herm(Va) direct-sum Herm(Vb), with the ET.1 factor and unmatched-zero clause. The hypothesis is for all ranks needed by the two Levi blocks, not only rank n.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.1/smooth-transfer`, `SmoothRepresentationsOfLocalGroups:SR.4/parabolic-descent`, `FJ.2/base-change-compatibility`, `FJ.2/spherical-fourier`, `FJ.3/pure-form-orbit-torsor`, `FJ.3/germ-inversion`, `FJ.3/lie-parabolic-descent`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`, `EndoscopicTransferAndUnitaryTraceComparison:ET.3`.

**Construction or proof:**

1. Use F=(phi*e_0) tensor 1_Lambda_n; evaluation at zero is phi*e_0, correcting the mistyped upper test in the source.

2. Apply germ-inversion to source kappa and target stable sums. The character counts satisfy r_n=r_a+r_b, so the finite averaging factors cancel.

3. Use lie-parabolic-descent and base-change-compatibility to identify the descended linear test.

4. Use the ET.1 factor comparison for the two germ/descent paths. The nonreference lower-rank Hermitian tests are zero, so their Jacquet–Langlands correction terms disappear.

**Sources:** [Leslie25] Proposition 4.8, pp. 37–39. Xiao’s germ comparison and Lie parabolic descent identify the transfer diagram for the special spherical tests.

**Check:** For n=2,a=b=1 check that the two rank-one averaging factors equal the rank-two averaging factor. This conditional theorem does not assume or establish arbitrary relative smooth transfer.

**Direct open obligations:** G3, G4.


### FJ.3/weil-orbital-sum: The Weil action on the sum of orbital-image spaces

**Comparison target.** Let I_GL and I_U be the images of the augmented linear and reference-unitary test spaces as locally constant functions on their common regular invariant base A^rss(F); include the cyclic-vector factor omega in I_GL and extend the unitary image by zero off its matching image. Import the descended SL_2(F) Weil actions and their agreement on I_GL intersection I_U. There is then a unique action on I_GL+I_U extending both actions: W(g)(A+B)=W_GL(g)A+W_U(g)B. For the spherical defect D=O_U((phi*e_0) tensor 1_Lambda)-O_GL(BC(phi) tensor 1_L), use this sum, rather than assuming D belongs to the intersection.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two. psi has conductor OF; Fourier transforms use self-dual additive measures.

**Direct prerequisites:** `FJ.2/hermitian-spherical-module`, `EndoscopicTransferAndUnitaryTraceComparison:ET.1`, `AdelicAlgebraicGroups:AA.2/quotient-measure`.

**Construction or proof:**

1. Use the local Jacquet–Rallis invariant-base and orbital-image contracts.

2. If A+B=A_prime+B_prime, their difference lies in the intersection; agreement of the actions proves independence of decomposition.

3. Check the group law and uniqueness on the two generating subspaces.

**Sources:** [Leslie25] Proposition 5.1, p. 41; proof of Proposition 5.2, p. 43; Beuzart-Plessis21 Proposition 1, p. 7. The imported actions coincide on the intersection, which suffices to extend them to the sum containing the defect.; [BP21] Section 3, equations (4)–(5), pp. 5–6, and Proposition 1, p. 7. The trace pairing defines the Fourier operator; descended actions agree on the orbital-image intersection.

**Check:** The defect has a well-defined Fourier action even before transfer is proved. On the Hermitian side the Fourier pairing is psi(Tr_E/F h(u,w)), with self-dual measure; the printed norm kernel is not additive.

**Direct open obligations:** G3, G5.


### FJ.3/group-to-augmented: The Weil reduction from rank-shifted to augmented transfer

**Theorem target.** Fix n>=1 and phi in H_n,E. Suppose BC_n(phi) and {phi*e_0,0} match for the conjugation action of GL_(n-1)(F) on GL_n(F), against U(V_(n-1)) on the invertible part of Herm(V_(n-1) orthogonal-sum Ee0), in the block Jacquet–Rallis sense. Then BC_n(phi) tensor 1_Ln and {(phi*e_0) tensor 1_Lambda_n,0} are augmented Jacquet–Rallis transfers in rank n, including the nonreference-form zero clause.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.3/weil-orbital-sum`, `FJ.2/hermitian-spherical-module`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/local-unimodular-hermitian-classification`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/unramified-hermitian-lattice-diagonalization`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/integral-hermitian-lattice`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/hermitian-dual-lattice`.

**Construction or proof:**

1. The lattice-vector indicators force zero if |q(a)|>1. If |q(a)|=1, a primitive unit-norm vector splits off an integral orthogonal line without dividing by 2; its self-dual complement is isometric to the reference complement by GN.2. This proves integral unit-vector transitivity and reduces both augmented integrals to the rank-(n-1) group integrals, including the other form.

2. The lattice indicators are Fourier self-dual for the trace and hyperbolic pairings. On the orbital-image sum, the defect is fixed by the Weyl element.

3. Since the defect is supported where q(a) is in the maximal ideal, every upper unipotent with t in pi^(-1)OF fixes it. These and the Weyl element generate SL_2(F).

4. For q(a)!=0 choose t with psi(t q(a))!=1, forcing the defect to zero. Local constancy and density of this locus finish the proof.

**Sources:** [Leslie25] Proposition 5.2, pp. 42–43; Beuzart-Plessis21 Sections 2–3, pp. 3–8. The spherical defect vanishes on unit norm and is fixed by enough Weil generators to vanish everywhere.; [BP21] Section 2, Lemma 1, pp. 3–5, and Section 3, Proposition 1 and proof, pp. 5–8. The unit-norm reduction and Weil argument are available in all characteristic-zero residue characteristics.

**Check:** Keep the rank shift n-1 explicit. Check the unit-vector and self-dual-lattice claims also at residue characteristic two; no division by 2 occurs in the trace pairing.

**Direct open obligations:** G3, G5.


## FJ.4. The unit fundamental lemma

Deduce the rank-shifted spherical comparison from the product-group base-change fundamental lemma and its orbital-integral contraction formulas. Establish augmented transfer and cyclic spherical endoscopic transfer. Decompose the contracted lattice indicator by determinant valuation, prove the degree identities, and conclude the relative unit fundamental lemma, including vanishing for every other pair of Hermitian forms and residue characteristic two.

**Dependencies:** `FJ.3`, `GeometryOfNumbersAndQuadraticArithmetic:GN.3`.

**Coverage:** `planned`. G6: independent product-group spectral base-change theorem in the proposed sibling. Discharge the propagated FJ.0–FJ.3 analytic and normalization inputs; the unit theorem is not declared closed.

**Planets:** Spherical Jacquet–Rallis comparison; Cyclic spherical fundamental lemma; Contracted lattice unit; Determinant-degree Hecke identity; Unitary Friedberg–Jacquet fundamental lemma.


### FJ.4/contraction-sign-comparison: The sign convention for the lattice pushforward

**Comparison target.** In the unramified setting choose c in OE^times with Nm_E/F(c)=-1. Define r_plus(X)=X X* and r_minus(X)=-X X* in the reference coordinates. Then r_minus(cX)=r_plus(X); multiplication by c preserves every integral Hom lattice and its test indicator, all group actions and stabilizer measures. Consequently the signed-contraction pushforward of the lattice unit equals its positive-contraction pushforward. The same comparison applies separately in each endoscopic block.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.0/contractions`, `FJ.0/pushforward`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/integral-hermitian-lattice`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/hermitian-space-classification`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/unramified-hermitian-lattice-diagonalization`.

**Construction or proof:**

1. Apply rank-one unramified Hermitian lattice diagonalization to the unit form <-1> to obtain c in OE^times of norm -1, including residue characteristic two.

2. Compute -(cX)(cX)*=-Nm(c)XX*=XX*.

3. Use the invariant lattice indicator and unchanged fiber measures to identify the two pushforwards.

**Sources:** [Leslie25] Equation (2.1), p. 14, compared with equation (3.8) and Lemma 3.11, pp. 28–30. The initial contraction has a minus sign; the spherical calculations use the positive Gram map, which is reconciled by an integral norm of -1.

**Check:** For n=1 the two pushforwards are the same even-valuation indicator. The argument is not asserted for ramified E/F without an integral norm of -1.


### FJ.4/spherical-pushforward: The cyclic embedding is contraction pushforward

**Theorem target.** For every compact spherical phi on GL_n(E), viewed as a compact nonsingular matrix test, the positive-contraction pushforward r_plus,!phi equals phi*e_0 on all Xn, with zero on the other Hermitian congruence orbit. The signed pushforward gives the same function because multiplication by the unit c with norm -1 preserves a K_n,E-biinvariant phi.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.0/pushforward`, `FJ.2/hermitian-spherical-module`, `FJ.4/contraction-sign-comparison`.

**Construction or proof:**

1. Compute r_plus,!(1_K)=e_0 by vol U(Lambda_n)=1 and the unimodular Hermitian orbit description.

2. Prove r_plus,!(phi*phi1)=phi*r_plus,!phi1 by quotient Fubini.

3. Set phi1=1_K. For the signed comparison, c I_n belongs to K_n,E.

**Sources:** [Leslie25] Lemma 3.11, pp. 29–30. The fiber integral of the spherical group unit is e_0, and fiber integration intertwines group convolution.

**Check:** In rank one, the pi^d OE^times indicator pushes to e_(2d), with coefficient one.


### FJ.4/product-group-contraction: Contraction of the spherical product-group test

**Comparison target.** Set m=n-1 and embed GL_m in GL_n by h -> diag(h,1). For phi in H_n,E take Phi=1_Km,E tensor phi on GL_m(E) times GL_n(E). Its left-H contraction tilde(Phi)(g)=integral_GL_m(E) Phi(h^(-1),diag(h^(-1),1)g) dh equals phi. The corresponding Hermitian contraction at the reference pair (I_m,I_n) equals phi*e_0. The F-linear contraction of BC_(m,n)(Phi) equals BC_n(phi), and the product transfer factor Omega(gamma) is omega(diag(gamma1^(-1),1)gamma2). With compatible quotient measures, product relative orbital integrals become the rank-shifted GL_m and U(V_m) orbital integrals.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.2/spherical-fourier`, `FJ.2/hermitian-spherical-module`, `AdelicAlgebraicGroups:AA.2/quotient-measure-transitivity`, `EndoscopicTransferAndUnitaryTraceComparison:ET.3`, `FJ.4/spherical-pushforward`.

**Construction or proof:**

1. Apply the requested product-group orbital contraction formulas, with n there replaced by n-1.

2. For the unit tensor lift, K-invariance and vol K_m,E=1 give tilde(Phi)=phi.

3. Use r_!phi=phi*e_0 from the spherical pushforward identity for the Hermitian contraction.

4. Base change preserves the two units; factor compatibility is the cyclic determinant formula.

**Sources:** [Leslie25] Section 11.2, p. 86; equations (7.5)–(7.7) and Definition 7.4, pp. 50–51. The unit lift and the two contraction identities turn product-group transfer into the rank-shifted comparison.; [Leslie25] Equations (7.5)–(7.7), Definition 7.4, pp. 50–51. The product integrals contract to the conjugation integrals with the cyclic determinant factor.

**Check:** For n=1 interpret GL_0,U_0 and their hyperspecial subgroups as trivial. For the reference test, neither an extra torus volume nor an extra power of q is introduced.

**Direct open obligations:** G3, G6.


### FJ.4/rank-shifted-fundamental-lemma: Spherical rank-shifted Jacquet–Rallis comparison

**Theorem target.** For n>=1, phi in H_n,E and X in GL_n(F) regular semisimple under GL_(n-1)-conjugation, omega(X)*Orb_GL_(n-1),eta(BC_n(phi),X) equals Orb_U(V_(n-1))(phi*e_0,Y) when X matches Y in Xn for the reference block Hermitian form. It is zero when X matches a different (n-1)-dimensional Hermitian form. Here omega(X)=eta(det[e_n,Xe_n,...,X^(n-1)e_n]); regularity makes this determinant nonzero.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.4/product-group-contraction`.

**Construction or proof:**

1. Import the precise product-group base-change fundamental lemma in ranks (n-1,n), including all nonreference-form vanishing.

2. Apply it to Phi=1_K_(n-1),E tensor phi.

3. Use product-group-contraction and Omega=omega after taking matching lifts; transport the reference split forms to identity forms by integral isometries.

**Sources:** [Leslie25] Theorem 5.3, p. 43, proved in Section 11.2, p. 86, using Theorem 11.1, p. 78. The spherical product-group base-change fundamental lemma and the unit tensor lift prove the rank-shifted transfer identity and its zero clause.

**Check:** For n=1 this reduces to the squared-valuation rank-one base-change identity. The nonreference-form vanishing is a required assertion, not merely a consequence of testing reference matching pairs.

**Direct open obligations:** G3, G6.


### FJ.4/augmented-fundamental-lemma: Augmented spherical Jacquet–Rallis transfer

**Theorem target.** In every positive rank n and for every phi in H_n,E, the test BC_n(phi) tensor 1_Ln transfers to the family {(phi*e_0) tensor 1_Lambda_n,0} in the augmented Jacquet–Rallis comparison of gl_n(F) times F^n times (F^n)* with Herm(V) times V. The zero entry is the other Hermitian isometry class.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.4/rank-shifted-fundamental-lemma`, `FJ.3/group-to-augmented`.

**Construction or proof:**

1. Apply group-to-augmented in each rank using rank-shifted-fundamental-lemma.

2. Retain the same self-dual vector lattices and all reference/nonreference form labels.

**Sources:** [Leslie25] Proposition 5.2 and Theorem 5.3, pp. 42–43. The proved rank-shifted comparison supplies the hypothesis of the Weil reduction.

**Check:** The case phi=1_K gives the usual augmented integral-unit test family.


### FJ.4/cyclic-endoscopic-transfer: The cyclic spherical endoscopic fundamental lemma

**Theorem target.** For n=a+b with a,b positive and phi in H_n,E, the Hermitian functions phi*e_0 and xi_E(phi)*e_0 are ordinary smooth endoscopic transfers with the ET.1 matching and factor. The notation on the target means the tensor of the cyclic embeddings in ranks a,b, extended linearly; phi need not be a simple tensor after applying xi_E. This theorem covers the cyclic H_n,E-submodule of H(Xn), not all of H(Xn).

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.4/augmented-fundamental-lemma`, `FJ.3/augmented-to-endoscopic`, `FJ.2/spherical-fourier`, `SmoothRepresentationsOfLocalGroups:SR.4/parabolic-descent`.

**Construction or proof:**

1. Use augmented-fundamental-lemma in all three ranks in augmented-to-endoscopic.

2. For a finite tensor expansion of xi_E(phi), apply the target cyclic embeddings termwise.

3. Check unmatched vanishing by the corresponding ordinary-transfer clause.

**Sources:** [Leslie25] Theorem 3.5, p. 27; final paragraph of Section 5.2, p. 43. The two conditional reductions and the rank-shifted theorem establish spherical endoscopic transfer on the cyclic submodule.

**Check:** The unit test phi=1_K gives ordinary unramified unit transfer. The rank-one missing odd-valuation orbit shows why this theorem is not a statement about every spherical Hermitian function.

**Direct open obligations:** G4.


### FJ.4/contracted-lattice-function: The contracted lattice unit and its determinant grades

**Construction target.** Put Phi_n=r_minus,!1_End(Lambda_n), equivalently r_plus,!1_End(Lambda_n). For integer d let Xn,d={T in Xn:v_F(det T)=d} and Phi_n,d=Phi_n*1_Xn,d, where this star denotes pointwise multiplication only. Each Phi_n,d is a compact spherical function. It is zero if d<0 or d is odd. For d>=0, Phi_n,2d=sum_(lambda dominant,nonnegative,sum lambda=2d) m0(pi^lambda)*e_lambda, where m0 is the normalized self-dual-overlattice density imported from GN.3. Phi_n itself is only almost compact: it has infinitely many nonzero grades.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.0/pushforward`, `FJ.4/contraction-sign-comparison`, `FJ.2/hermitian-spherical-module`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/integral-hermitian-lattice`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/hermitian-dual-lattice`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/local-unimodular-hermitian-classification`, `GeometryOfNumbersAndQuadraticArithmetic:GN.3/hermitian-special-values`.

**Construction or proof:**

1. Integral Gram matrices have nonnegative elementary divisors; their determinant has even valuation for the reference norm component.

2. Fixing the determinant grade leaves finitely many nonnegative dominant tuples, giving compactness.

3. Identify the value with m0 by counting U(Vn)/U(Lambda_n) cosets and importing GN.3’s self-dual-overlattice formula.

**Sources:** [Leslie25] Equation (3.8), Lemma 3.8 and Remark 3.9, pp. 28–29. The lattice pushforward decomposes into compact even determinant grades, with coefficients given by the existing local density.

**Uses:** `FJ.4/graded-transfer and FJ.4/unit-fundamental-lemma`: The compact grades allow the proved cyclic spherical theorem to recover the noncompact contracted lattice unit.

**API:**

- `TauCeti.UnitaryFJ.contractedLatticeUnit` (constructor): The fiber integral of the full integral Hom indicator, defined on Xn.

- `TauCeti.UnitaryFJ.contractedLatticeGrade` (data): Restrict contractedLatticeUnit to determinant valuation d.

- `TauCeti.UnitaryFJ.contractedLatticeGrade_support` (characterisation): The support is contained in integral Hermitian matrices of determinant valuation d, and is empty for negative or odd d.

- `TauCeti.UnitaryFJ.contractedLatticeGrade_density` (compatibility): For nonnegative even d, the e_lambda coefficient is the GN.3 normalized local self-dual-overlattice density.

- `TauCeti.UnitaryFJ.contractedLatticeGrade_finite` (structure): Each grade is a finite basis expansion in H(Xn), although the total function is not in H(Xn).

**Unit tests:**

- `TauCeti.UnitaryFJ.contractedLattice_rankOne_even` (computation): Phi_1,2=e_(2), with coefficient one.

- `TauCeti.UnitaryFJ.contractedLattice_rankOne_odd` (non-example): Phi_1,1=0 even though e_(1) is a nonzero spherical Hermitian function.

- `TauCeti.UnitaryFJ.contractedLattice_negative` (degenerate): Phi_n,d=0 for d<0.

- `TauCeti.UnitaryFJ.contractedLattice_not_compact` (non-example): Phi_1 has value one at pi^(2d) for every d>=0, so it is not compactly supported within X1=F^times.

**Check:** For n=1, Phi_1,2d=e_(2d) for d>=0, and every other grade is zero.


### FJ.4/degree-hecke-identities: Determinant-degree identities in the spherical Hecke algebra

**Theorem target.** For d>=0 let c_n,d be the indicator of integral invertible E-matrices with v_E(det)=d, equivalently the sum of 1_K pi^lambda K over nonnegative dominant lambda with sum d. Its normalized Satake polynomial is q^(d(n-1))*h_d(Z1,...,Zn), where h_d is Mathlib’s complete homogeneous symmetric polynomial. Then Phi_n,2d=c_n,d*e_0 and xi_E(c_n,d)=sum_(da+db=d) c_a,da tensor c_b,db. All sums here are finite.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `SmoothRepresentationsOfLocalGroups:SR.4/parabolic-descent`, `FJ.2/hermitian-spherical-module`, `FJ.4/spherical-pushforward`, `FJ.4/contracted-lattice-function`, `SmoothRepresentationsOfLocalGroups:SR.4/satake-isomorphism`, `mathlib:MvPolynomial.hsymm`.

**Construction or proof:**

1. Use the Iwasawa decomposition in SR.4 to count upper-unipotent entries; for a diagonal valuation tuple m the measure is q^(sum 2(i-1)m_i).

2. The normalized Satake modulus combines with that count to give the uniform coefficient q^(d(n-1)).

3. Apply the two scalings of xi_E and split total monomial degree between the a and b blocks.

4. For the pushforward, determinant valuation doubles under the Gram map; apply spherical-pushforward to c_n,d.

**Sources:** [Leslie25] Proposition 3.12, equations (3.9)–(3.10), pp. 30–31. The Satake coefficient of an integral determinant shell is a complete homogeneous polynomial, and the Levi substitution splits its degree.

**Check:** For n=2,d=1 the Satake polynomial is q*(Z1+Z2), whose image is X1+Y1. For d=0 both identities reduce to units.


### FJ.4/graded-transfer: The lattice theorem is equivalent to compact graded transfer

**Theorem target.** The relative unit fundamental lemma for a fixed datum Xi is equivalent to the following family of compact ordinary endoscopic transfer identities: for every d>=0, Phi_n,2d transfers to sum_(da+db=d) Phi_a,2da tensor Phi_b,2db for the reference pair (I_a,I_b), and the corresponding target contribution for every other form pair is zero. Matching preserves the product of characteristic polynomials and hence determinant valuation, so each regular matching orbit tests exactly one total grade.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.0/orbital-comparison`, `FJ.1/smooth-transfer`, `FJ.4/contracted-lattice-function`, `FJ.4/contraction-sign-comparison`.

**Construction or proof:**

1. Compare relative and ordinary orbital integrals through orbital-comparison.

2. A regular orbit has one fixed determinant valuation; use the compact grade corresponding to that valuation.

3. For other form pairs the relevant contraction images do not intersect the reference norm components in at least one block; record the resulting zero condition.

**Sources:** [Leslie25] Corollary 3.10, p. 29; Lemma 2.5, p. 16. Contraction and the determinant decomposition recover the relative theorem from compact ordinary transfers grade by grade.

**Check:** No infinite sum of orbital integrals is exchanged with an integral. A negative or odd total valuation gives zero on both sides.


### FJ.4/unit-fundamental-lemma: The unitary Friedberg–Jacquet fundamental lemma

**Theorem target.** Let n=a+b with a,b positive, Vn=(E^n,I_n), Lambda_n=OE^n=Lambda_a orthogonal-sum Lambda_b and W1=W2=Vn. Fix a relative elliptic datum Xi=(U(Va) times U(Vb),s,xi,alpha,beta), using the unramified ordinary transfer normalization and hyperspecial Haar volumes one. The source test 1_End(Lambda_n) transfers, in IsRelativeTransfer, to 1_End(Lambda_a) tensor 1_End(Lambda_b) if (alpha,beta)=(I_a,I_b), and to the zero target test for every other pair of Hermitian isometry classes. The theorem holds for every characteristic-zero F, including residue characteristic two.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.1/smooth-transfer`, `FJ.4/cyclic-endoscopic-transfer`, `FJ.4/degree-hecke-identities`, `FJ.4/graded-transfer`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/integral-hermitian-lattice`, `GeometryOfNumbersAndQuadraticArithmetic:GN.2/local-unimodular-hermitian-classification`.

**Construction or proof:**

1. Apply cyclic-endoscopic-transfer to each determinant-shell test c_n,d.

2. Use degree-hecke-identities to identify the transferred compact grade pair.

3. Apply graded-transfer and the sign comparison to recover the full relative lattice indicators.

4. Use the nonreference-form clause throughout, with the same datum labels and factor normalization.

**Sources:** [Leslie25] Theorem 2.12, p. 22; Proposition 3.12, pp. 30–31; Section 11.2, p. 86. The cyclic spherical theorem, degree identities and contraction comparison imply the relative integral-unit matching and all other-form vanishing.

**Check:** For a=b=1 all four form pairs are tested: the reference pair receives the tensor unit and the other three receive zero. An odd residue characteristic hypothesis is not inserted. This theorem has no implication that every compact test has a relative transfer.

**Direct open obligations:** G4.


## FJ.5. Full transfer and the spherical extension

Specify the full relative smooth-transfer conjecture, construct the Fourier-defined extension of the Levi Hecke map to the whole Hermitian spherical module, and isolate the open orbital-integral characterization of that extension. The source does not specify the required augmented transfer factors; no full spherical fundamental lemma is asserted without that missing specification.

**Dependencies:** `FJ.1`, `FJ.2`, `FJ.4`.

**Coverage:** `planned`. G7: unrestricted relative smooth-transfer conjecture. G8: explicit transfer-factor augmentation and statement for the full spherical module.

**Planets:** Relative smooth-transfer conjecture; Full spherical Levi extension.


### FJ.5/full-smooth-transfer: The full relative smooth-transfer conjecture

**Theorem target.** For every pair of equal-dimensional nondegenerate Hermitian spaces W1,W2, every relative elliptic datum Xi and every f in C_c^infinity(Hom_E(W2,W1)), there exists f_Xi in C_c^infinity of the Xi-symmetric representation such that IsRelativeTransfer(f,f_Xi). This is a conjectural target for arbitrary support, including singular Hom maps. It is not supplied by the unit fundamental lemma or by the nonsingular-support theorem.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is a quadratic field extension. Hermitian forms are conjugate-linear in the first variable and linear in the second.

**Direct prerequisites:** `FJ.1/smooth-transfer`, `FJ.1/nonsingular-transfer`, `FJ.4/unit-fundamental-lemma`.

**Construction or proof:**

1. The nonsingular case is covered by nonsingular-transfer.

2. Construct transfer across the singular strata while controlling the noncompact contraction pushforward; a precise unresolved existence gap remains.

3. Prove matching and unmatched vanishing simultaneously for arbitrary compact tests.

**Sources:** [Leslie25] Definition 2.10 and discussion, p. 21; Leslie19 Conjecture 4.4, p. 15. The earlier paper formulates the unrestricted relative existence conjecture; the present source proves the lattice unit and the nonsingular case only.; [Leslie19] Conjecture 4.4 and Proposition 4.5, p. 15. The unrestricted relative transfer conjecture is distinguished from its nonsingular special case.

**Check:** The singular-source support case remains a genuine mathematical gap. A formal declaration must retain conjectural status until a proof or a stronger source is supplied.

**Direct open obligations:** G7.


### FJ.5/full-spherical-extension: The Fourier-defined extension to the full spherical module

**Construction target.** For n=a+b with a,b positive, define xi_X=(H_a^(-1) tensor H_b^(-1)) composed with xi_F composed with H_n on all H(Xn), using the normalized Hironaka isomorphisms. For the algebra structures transported by H, this is a unital complex algebra homomorphism. On the cyclic submodule it satisfies xi_X(phi*e_0)=xi_E(phi)*e_0. This specifies the extension as an operator. Its orbital-integral transfer characterization on arbitrary spherical Hermitian functions requires the separate augmented-factor target.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.2/spherical-fourier`, `FJ.2/base-change-compatibility`, `SmoothRepresentationsOfLocalGroups:SR.4/parabolic-descent`.

**Construction or proof:**

1. Transport xi_F across the three isomorphisms H_n,H_a,H_b.

2. Use their cyclic normalization and the BC/xi commuting square to identify the cyclic restriction.

3. Algebra laws follow from the transported convolutions and xi_F; no orbital transfer claim is needed to construct this map.

**Sources:** [Leslie25] Remark 3.7 and Remark 3.6, p. 27; the xi_F diagram in Proposition 4.8, p. 39. The Fourier isomorphisms and the F-Hecke Levi map give a canonical full-module extension whose cyclic restriction is the proved map.

**Uses:** `FJ.5/full-spherical-transfer-factors`: The operator to be characterized by a corrected full spherical transfer identity is already defined on the whole module.

**API:**

- `TauCeti.UnitaryFJ.fullHermitianLeviMap` (constructor): The composite (H_a inverse tensor H_b inverse) after xi_F after H_n.

- `TauCeti.UnitaryFJ.fullHermitianLeviMap_cyclic` (compatibility): xi_X(phi*e_0)=xi_E(phi)*e_0.

- `TauCeti.UnitaryFJ.fullHermitianLeviMap_unit` (simp): xi_X(e_0)=e_0 tensor e_0.

- `TauCeti.UnitaryFJ.fullHermitianLeviMap_mul` (structure): It preserves the convolution algebras transported by H.

- `TauCeti.UnitaryFJ.fullHermitianLeviMap_fourier` (characterisation): (H_a tensor H_b)(xi_X(f))=xi_F(H_n(f)) for every full spherical f.

**Unit tests:**

- `TauCeti.UnitaryFJ.fullLevi_unit` (degenerate): xi_X(e_0)=e_0 tensor e_0.

- `TauCeti.UnitaryFJ.fullLevi_cyclic_degreeOne` (computation): For n=2,a=b=1 and f=c_2,1*e_0, xi_X(f)=e_(2) tensor e_(0)+e_(0) tensor e_(2).

- `TauCeti.UnitaryFJ.fullLevi_fourier_nontautological` (characterisation): For the noncyclic f=H_n^(-1)(1_K_F diag(pi,1,...,1) K_F), applying H_a tensor H_b to xi_X(f) gives xi_F of that F-double-coset indicator; it is not forced to zero.

- `TauCeti.UnitaryFJ.fullLevi_central_twist` (compatibility): On f=1_(pi K_n,E)*e_0, the image is q^(-2ab) times the two central cyclic indicators.

**Check:** For n=2,a=b=1, the definition applies to H_2^(-1)(1_K_F diag(pi,1) K_F), which lies outside the cyclic BC submodule.


### FJ.5/full-spherical-transfer-factors: The augmented-factor boundary for full spherical transfer

**Comparison target.** Determine an explicit augmentation of the ordinary Langlands–Shelstad–Kottwitz transfer factors on the relative Hermitian spherical comparison such that xi_X(f) has the stated transfer identity for every f in the full H(Xn), with matching loci and unmatched vanishing specified. It must specialize on the cyclic image to the ET.1-normalized identity already proved. The source only suggests this augmentation and gives no formula or complete conjectural statement; neither a full transfer theorem nor the unchanged ordinary factor is asserted here.

**Hypotheses and conventions:** F is a nonarchimedean local field of characteristic zero; E/F is an unramified quadratic field extension, with common uniformizer pi and q=card(k_F). Use the reference Hermitian space Vn=(E^n,I_n), Lambda_n=OE^n, and hyperspecial Haar volumes one. This includes residue characteristic two.

**Direct prerequisites:** `FJ.5/full-spherical-extension`, `FJ.4/cyclic-endoscopic-transfer`, `FJ.1/matching-factor`.

**Construction or proof:**

1. Compute orbital integrals on basis elements outside the cyclic image, starting with the F-double-coset preimages under H.

2. Solve the factor/matching compatibility with cyclic transfer, rational-orbit change and the two pure-form components.

3. State and prove the full identity only after that missing normalization specification is supplied.

**Sources:** [Leslie25] Remark 3.7, p. 27. The source explicitly warns that the full-module extension needs additional transfer-factor modifications without defining them.

**Check:** Any proposed augmentation agrees with the known cyclic theorem. The construction of xi_X alone is not evidence that the ordinary transfer factor works on the full module.

**Direct open obligations:** G8.


## Precise closure obligations

All stages are planned, and none is declared closed. The two requests use existing supplier stages; the eight gaps name the unestablished analytic, normalization, unregistered-sibling or conjectural inputs.

### Requests to registered suppliers


**`EndoscopicTransferAndUnitaryTraceComparison:ET.1`.** For the Hermitian twisted Lie algebra of each local unitary pure inner form, export normalized regular orbital integrals and stable/kappa sums with centralizer maximal-compact volume one, their convergence and orbitwise local constancy, the ordinary transfer relation including unmatched vanishing, and the normalized Langlands–Shelstad–Kottwitz factor and rational-orbit correction. Also export the factor comparison for the two Xiao germ/Lie-descent paths: the resultant factor eta(D_ab)*|D_ab| and the inv correction must agree with this normalization. The raw Tate germ normalization in gap G4 must be accounted for.

**Consumers:** `FJ.0/relative-orbital-integral`, `FJ.0/orbital-comparison`, `FJ.1/matching-factor`, `FJ.1/smooth-transfer`, `FJ.3/germ-inversion`, `FJ.3/augmented-to-endoscopic`.


**`EndoscopicTransferAndUnitaryTraceComparison:ET.3`.** Export characteristic-zero ordinary Hermitian smooth transfer for every quadratic field extension and every test supported on the invertible locus, with the target chosen to have compact nonsingular support after an invariant determinant cutoff. For unramified GL_n(E)/GL_n(F), export the spherical base-change homomorphism normalized by Sat_E Z_i -> Sat_F T_i^2, preserving the hyperspecial unit and commuting with products. This is ordinary cyclic base change, not a Jacquet–Rallis fundamental lemma.

**Consumers:** `FJ.1/nonsingular-transfer`, `FJ.2/base-change-compatibility`, `FJ.2/spherical-fourier`, `FJ.4/product-group-contraction`.


### Gaps


**G1: Analytic sections, fiber integration and orbitwise cutoffs.** Export the p-adic analytic submersion/torsor integration theorem used in Leslie19 Appendix A, specifically: local analytic sections on the F-point norm component; surjectivity of C_c^infinity pushforward with its Haar normalization; and for a closed regular orbit, a compact nonsingular cutoff agreeing with the full compact test on that orbit. AA.2 quotient integration alone does not prove these analytic assertions. No exact supplier node or scoped stage was found; register the input with the local analytic integration owner before closing FJ.0.

**Consumers:** `FJ.0/pushforward`, `FJ.0/orbital-comparison`, `FJ.1/nonsingular-transfer`.


**G2: Normalized comparison under exchanging the two contractions.** Construct the map on relative endoscopic data when W1,W2 are interchanged, including nonisometric forms; prove the inv, centralizer Haar and transfer-factor diagram commutes with its explicit correction. Remark 2.11 states independence without this full normalization diagram.

**Consumers:** `FJ.1/contraction-independence`.


**G3: The local Jacquet–Rallis interface has no registered supplier stages.** The proposed sibling JacquetRallisRelativeTraceComparison must export: (A) the augmented and block/group matching quotients, their regular open loci and eta(det)-twisted orbital distributions on the common invariant base; (B) all-pure-form matching, local constancy and the precise two cyclic-vector factors; (C) local smooth transfer and the Xiao Lie-descent/orbital-factor comparison, with the change from ordinary to Jacquet–Langlands form labels made explicit; (D) the product-group to conjugation integral identities (7.5)–(7.7), Definition 7.4 and matching lifts. For the augmented model the invariants are charpoly coefficients and b_i=v*x^i v, and omega=eta(det[v,xv,...,x^(n-1)v]); for the block model add the bottom-right scalar and replace the factor by eta(det[e_n,Xe_n,...,X^(n-1)e_n]). The new sibling is not an existing roadmap id; it is deliberately not used as a prerequisite.

**Consumers:** `FJ.3/pure-form-orbit-torsor`, `FJ.3/germ-inversion`, `FJ.3/augmented-to-endoscopic`, `FJ.3/weil-orbital-sum`, `FJ.3/group-to-augmented`, `FJ.4/product-group-contraction`, `FJ.4/rank-shifted-fundamental-lemma`.


**G4: Finite germ averaging and the ordinary endoscopic normalization.** With maximal-compact-volume-one measures the raw rank-one Tate germ of 1_OF is 1/2. Reconcile every centralizer measure in Xiao Theorem 4.7/Leslie Theorem 4.7, prove the corrected 2^(-card S1) inversion identity stated here, and track these factors through Lie descent. Their exponents add across endoscopic blocks, so the proposed reduction cancels them. Check the sign convention in Xiao Theorem 6.1 against the different signed four-form sum on Leslie p. 38. The special spherical reduction has only the reference/reference lower-rank test nonzero, which avoids depending on an unspecified sign for the other three tests, but it still needs the factor comparison requested from ET.1.

**Consumers:** `FJ.3/germ-inversion`, `FJ.3/augmented-to-endoscopic`, `FJ.4/cyclic-endoscopic-transfer`, `FJ.4/unit-fundamental-lemma`.


**G5: Weil actions on orbital-image spaces and their measures.** The proposed Jacquet–Rallis sibling must supply the Beuzart-Plessis Proposition 1 export: actual SL_2(F) Weil actions on the two test spaces; descent to their orbital-image spaces; agreement on the intersection. Fix q_U(w)=h(w,w), q_GL(v,v*)=v*v, Hermitian Fourier kernel psi(Tr_E/F h(u,w)) and linear kernel psi(v*w+w*v), with self-dual measures and unramified lattice indicators fixed by Fourier. Include the unit-norm orbital reduction, Weyl/upper-unipotent generator argument, regular-base local constancy, and density of q!=0. The comparison target supplies the action on the sum without presupposing equality of the images.

**Consumers:** `FJ.3/weil-orbital-sum`, `FJ.3/group-to-augmented`.


**G6: Independent product-group base-change fundamental lemma.** The proposed Jacquet–Rallis sibling must plan and prove Leslie Theorem 11.1 (p. 78) from its local/global spectral comparison. For all m>=0, G=GL_m(F) times GL_(m+1)(F), Gprime=GL_m(E) times GL_(m+1)(E), H,Hprime diagonally embedded, and right Hprime_(x,y)=U(Vx) times U(Vy): every spherical Phi on Gprime transfers under BC to the reference (I_m,I_(m+1)) relative test Phi with all other pure-form pairs zero. The equality is Omega(gamma)*Orb_eta(BC(Phi),gamma)=Orb(Phi,delta), with fixed hyperspecial Haar volumes one. Its proof route must be independent of the FJ unit theorem: the dependency is product-group theorem -> rank-shifted theorem -> augmented theorem -> cyclic endoscopy -> relative unit theorem, never reversed. Sections 6–11 are not claimed decomposed here.

**Consumers:** `FJ.4/rank-shifted-fundamental-lemma`, `FJ.4/product-group-contraction`.


**G7: Relative smooth transfer across singular Hom maps.** Prove existence of compact target transfers for arbitrary compact source tests meeting the singular locus. Nonsingular fiber integration does not give a compact ordinary test there. Leslie19 Conjecture 4.4 supplies a target, not a proof. No proof of unrestricted existence is claimed from the sources read.

**Consumers:** `FJ.5/full-smooth-transfer`.


**G8: Specify the augmented full-spherical transfer factor.** Remark 3.7 supplies no formula for the augmentation, its matching range or unmatched-zero clause on the full H(Xn). Determine those data and show agreement with the cyclic theorem before formulating a full-module fundamental lemma. The Fourier-defined operator itself is precise and does not close this mathematical specification gap.

**Consumers:** `FJ.5/full-spherical-transfer-factors`.


## Source corrections and verification gates

These observations concern the versions actually read, not an asserted correction to the published edition. No source passage is reproduced. The first eight were already reported by the Leslie extraction; the packet preserves those cross-references. The locations checked for published corrections are recorded in every packet finding. No relevant correction was located on the checked article landing page or author page.


**E01 (misprint), Leslie arXiv:1911.07907v3, Lemma 1.8, p. 12.** The centralizer is labeled using U(W), although the surrounding datum is V. Use U(V). The lemma begins with delta in Herm(V), and the proof and cohomology map use that same V.

Previously reported as `PAPER-LESLIE-25/E1`.


**E02 (misprint), Leslie arXiv:1911.07907v3, Section 2.2.3, transfer-factor paragraph after Remark 2.8, p. 19.** The endoscopic triple changes its embedding symbol to eta in this display. Retain xi for the embedding in the fixed endoscopic datum. Eta is already the quadratic extension character; the definition transports the same datum fixed earlier.

Previously reported as `PAPER-LESLIE-25/E2`.


**E03 (misprint), Leslie arXiv:1911.07907v3, after Theorem 2.12, p. 22.** The reduction points to an unresolved proposition reference. The first reduction is Proposition 3.12, pp. 30–31. Its statement is exactly the implication from the spherical theorem to Theorem 2.12.

Previously reported as `PAPER-LESLIE-25/E3`.


**E04 (misprint), Leslie arXiv:1911.07907v3, Section 4.1.2, p. 32.** The Hermitian invariant formula uses powers of the linear-side variable. Use powers of the Hermitian variable y in h(w,y^i w). The invariant is a function on Herm(V) times V; no linear-side x is in its argument.

Previously reported as `PAPER-LESLIE-25/E4`.


**E05 (misprint), Leslie arXiv:1911.07907v3, Section 4.1.4, p. 33.** The upper-left block of the Hermitian embedding is labeled x. The block is y. The embedding takes the Hermitian pair (y,w); x labels the different linear-side pair.

Previously reported as `PAPER-LESLIE-25/E5`.


**E06 (misprint), Leslie arXiv:1911.07907v3, Remark 4.4, p. 35.** The surname of the characteristic-zero transfer contributor is misspelled. Use Julia Gordon. The bibliography reference is to Gordon’s transfer appendix.

Previously reported as `PAPER-LESLIE-25/E6`.


**E07 (misprint), Leslie arXiv:1911.07907v3, Proposition 4.8 proof, p. 38.** The chosen augmented upper test is written as phi tensor the vector-lattice indicator and its zero evaluation as phi. Use (phi*e_0) tensor 1_Lambda_n, whose zero evaluation is phi*e_0. Phi belongs to the GL_n(E) Hecke algebra; the upper test must be a function on Herm(Vn) times Vn. The surrounding hypothesis and desired orbital integral both use its cyclic image.

Previously reported as `PAPER-LESLIE-25/E7`.


**E08 (error), Leslie arXiv:1911.07907v3, Section 5.1 Hermitian Fourier formula, p. 40.** The character kernel is formed from the norm of a Hermitian pairing. Use psi(Tr_E/F h(u,w)) with the self-dual measure and keep the Hermitian matrix argument y fixed, as in Beuzart-Plessis arXiv:1901.02653v3, pp. 5–6. A norm is quadratic, so the displayed kernel is not a bilinear additive Fourier pairing. The trace is the polar form of h(w,w); it remains valid in residue characteristic two.

Previously reported as `PAPER-LESLIE-25/E8`.


**E09 (misprint), Leslie arXiv:1911.07907v3, Lemma 3.1, modular-character display, p. 23.** The E-parabolic modular character has F absolute-value subscripts on E-valued determinants. Use |det m1|_E^b*|det m2|_E^(-a); the F-group formula on p. 39 correctly uses |.|_F. The E-parabolic acts on the E-vector space Mat_(a,b)(E), so its additive Jacobian uses the normalized E absolute value. The adjacent twists and Lemma 3.2 then give q_E=q^2 powers.


**E10 (error), Leslie arXiv:1911.07907v3, Proposition 4.8 proof, p. 39.** The justification of BC/xi commutativity asserts support only on double cosets with every coweight entry even. Prove commutativity by normalized Satake substitutions, without that support assertion. For n=2, BC(T_(1,0),E)=T_(2,0),F-(q-1)T_(1,1),F: Sat_E(T_(1,0))=q(Z1+Z2), while Sat_F(T_(2,0))=q(T1^2+T2^2)+(q-1)T1*T2. Thus an odd (1,1) coset occurs. Squaring variables nevertheless commutes with the two Levi scalings.


**E11 (error), Leslie arXiv:1911.07907v3, Theorem 4.7, p. 36; Xiao arXiv:1802.07624v1, inversion preceding Theorem 4.7, pp. 20–21.** The raw regularized germ is equated to a finite character sum without averaging. For volume-one measures the finite inversion requires 2^(-card S1), or an explicitly rescaled germ. Verify all quotient-measure transports as gap G4. In unramified rank one, choose the integral augmented unit with x a fixed unit scalar, cyclic v=v*=1 and vol OF^times=vol U(1)=1. It transfers to the reference unit and zero on the other form. The Sigma={1} raw germ is the continuation of sum_(k>=0)(-q^(-s))^k, equal to 1/2 at zero, while the unaveraged unitary sum at w=0 is 1. The C2 character table inverse also has coefficient 1/2. Endoscopic block exponents add, so this does not by itself refute the final FJ theorem.


**E12 (gap), Leslie arXiv:1911.07907v3, Proposition 4.8 four-form sum, p. 38; Xiao arXiv:1802.07624v1, Theorem 6.1 construction, p. 23.** The displayed four-form signs differ between the cited construction and its use. Supply an explicit conversion between the ordinary/Jacquet–Langlands transfer-factor conventions before using the general four-form operator. Xiao’s written signs depend on the second form, while Leslie’s depend on the parity of the two split-form labels. Different conventions might explain this, but the conversion is not supplied. The special spherical reduction has only the reference/reference term nonzero. This is a normalization gap, not a claim that the two final theorems contradict each other.


**E13 (gap), Leslie arXiv:1911.07907v3, proof of Proposition 5.2, p. 43.** The defect is subjected to the common Weil action on the intersection of the two orbital-image spaces. Extend the agreeing actions from the intersection to the sum, then apply the action to the defect there. Before transfer is proved, the two orbital images need not coincide. Their difference belongs to the sum. Independence of a decomposition follows because its ambiguity lies in the intersection, where the actions agree.

The sum-space construction is explicit in Beuzart-Plessis arXiv:1901.02653v3, Section 4, p. 8; this repairs the stated location of the defect.


## Continuation routes and the proposed split

The issue permits independent directions to be separated after the first is
planned here. The packet's `restructure[0].routeRecords` preserves every input
route record, its complete brief and its item list. The records are the
extractions' mathematical routing specifications, not copied source passages.
The proposal is:

| Direction | Route items | Treatment |
| --- | ---: | --- |
| This roadmap, source alias `UnitaryFriedbergJacquetRelativeEndoscopy` | Leslie25: 35 | All 35 mapped to target nodes or the imported SR.4 descent node |
| `JacquetRallisRelativeTraceComparison` | Leslie25: 55; Zhang21: 60; BPLZZ21: 34; BPCZ22: 31 | Preserve the proposed id, title, parent, area and all four briefs; total 180 items; supplier contracts G3, G5, G6 |
| `EndoscopicTransferRigidInnerFormsPartII` | Kaletha16: 104 | Preserve its id and complete proposed record; independent rigid cohomology, factors and packets |
| Proposed `GeometricStabilisationViaPadicIntegration` | GWZ20-B: 124; GWZ20: 23 | Move both colliding geometric routes together, preserving their common title, area, parent, full briefs and confirmed finite-quotient corrections; total 147 items |

The eight records contain 466 route-item incidences. No sibling stage ids are
invented. The other seven routes are not claimed planned here, their full
source corpora are not claimed read, and no other roadmap or extraction file
is changed. In particular the geometric pair currently uses
the fixed id of this issue; moving both records is necessary to avoid
replacing the geometric programme with the FJ programme. The Jacquet–Rallis
direction includes its independent spectral proof, not just the interfaces
this roadmap consumes. Its proof of Leslie Theorem 11.1 must not assume
FJ.4/unit-fundamental-lemma.

The complete first-route assignment is in `routeCoverage` in the packet.
Items 23, 24 and 28 import SR.4/parabolic-descent. All other 32 first-route
items have targets here. This is route coverage, distinct from proof closure.

## Pinned libraries and compact Lean boundary

The baseline is Mathlib `082e2d37e8b0463410cdb532e111cd43d5a66174` and Tau Ceti
`f790474821cf4256814db967cb154e7af3d0c369`. The actual declarations were read
at those commits:

- `mathlib:Matrix.conjTranspose`, `Mathlib/LinearAlgebra/Matrix/ConjTranspose.lean`: Transpose followed by entrywise star, for rectangular matrices.

- `mathlib:Matrix.IsHermitian`, `Mathlib/LinearAlgebra/Matrix/Hermitian.lean`: A square matrix satisfies A.conjTranspose=A; no new self-adjoint matrix carrier is needed.

- `mathlib:Matrix.isHermitian_mul_conjTranspose_self`, `Mathlib/LinearAlgebra/Matrix/Hermitian.lean`: A*A.conjTranspose is Hermitian, including rectangular A.

- `mathlib:Matrix.isHermitian_conjTranspose_mul_self`, `Mathlib/LinearAlgebra/Matrix/Hermitian.lean`: A.conjTranspose*A is Hermitian, including rectangular A.

- `mathlib:Matrix.charpoly`, `Mathlib/LinearAlgebra/Matrix/Charpoly/Basic.lean`: The characteristic polynomial is det(TI-A).

- `mathlib:Matrix.charpoly_mul_comm`, `Mathlib/LinearAlgebra/Matrix/Charpoly/Basic.lean`: Over a commutative ring, square AB and BA have equal characteristic polynomial; the signed-contraction equality is a specialization.

- `mathlib:MvPolynomial.hsymm`, `Mathlib/RingTheory/MvPolynomial/Symmetric/Defs.lean`: Complete homogeneous symmetric polynomial as the sum over degree-d multisets of variables.

- `mathlib:MvPolynomial.bind₁`, `Mathlib/Algebra/MvPolynomial/Monad.lean`: The algebra homomorphism substituting polynomials for variables; the compact coordinate tests use this existing operation.


The current upstream roadmap checkout at
`0d144d044dacebca17b654695b6f1ad58f159b27` and current Tau Ceti at
`a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039` were also inspected for
duplication, read only. In particular IntegralLattices and OrthogonalSpinGroups
supply existing lattice/classical-group plans; no FJ or Jacquet–Rallis carrier
was located in the representation-theory searches. The reviewed library audit
records partial Hermitian arithmetic and absent density/quotient-integration
targets in GN.2/GN.3/AA.2; it has no audited ET.0/ET.1/ET.3 or SR.4 entry that
would supply the relative constructions. Importing the named owner nodes
keeps their existing material in one place.

The suggested file follows the 12 October 2026 compact-file rule in
WORKERS.md. Its two light definitions are signed matrix contractions. Its
five admitted milestones express their Hermitian, swap, equivariance and
characteristic-polynomial properties over existing carriers. Seven admitted
examples check zero, identity, scalar and diagonal contractions and three
Satake substitutions. All other API and unit-test requirements are specified
in this reader, where their absent mathematical carriers can be stated
honestly. There are no admitted data definitions or substitute predicates
for transfer. The file elaborated with `lean-check` at the baseline pins,
exit zero, with twelve expected admitted-proof warnings and no
other warnings. This checks signatures, not proofs.

## References and reading boundary

All references were accessed on 19 October 2026. The packet records PDF
SHA-256 hashes and the precise reading ranges. The principal accepted copy
was read in place in the maintainer's cleared library. Other listed copies
are public.


**[Leslie25]** Spencer Leslie, *The endoscopic fundamental lemma for unitary Friedberg–Jacquet periods*. Annals of Mathematics 201 (2025), 551–645; statements checked in arXiv:1911.07907v3, accepted version, 12 March 2025, 89 pages. [Source](https://arxiv.org/abs/1911.07907v3). Read: Sections 1.2–1.5, pp. 3–6, 10–12; Part 1, Sections 2–5, pp. 13–43, read in full; Sections 7.1–7.2.2, pp. 47–51, for the requested contraction contracts; Theorem 11.1 and Lemma 11.2, pp. 78–79; Section 11.2, p. 86; References, pp. 87–89; the intervening global proof is a separately owned, unread dependency.


**[Leslie19]** Spencer Leslie, *Endoscopy for unitary symmetric spaces*. arXiv:1910.09685v2, 6 April 2020, 27 pages. [Source](https://arxiv.org/pdf/1910.09685v2). Read: Proposition 1.3, p. 4; Section 3.2, Lemmas 3.6–3.9, pp. 12–13; Section 4.2, Conjecture 4.4 and Proposition 4.5, pp. 14–15; Appendix A, Propositions A.1 and A.3 and Corollary A.2, pp. 25–26.


**[Xiao18]** Jingwei Xiao, *Endoscopic transfer for unitary Lie algebras*. arXiv:1802.07624v1, 21 February 2018. [Source](https://arxiv.org/pdf/1802.07624v1). Read: Section 2.1, equation (2), Lemma 2.1, pp. 3–5; Section 3.2, Proposition 3.8, pp. 11–12; Sections 4.1–4.5, pp. 15–21; Section 5, Lie descent, pp. 21–22; Section 6, Theorem 6.1 and proof, pp. 23–24.


**[Hironaka99]** Yumiko Hironaka, *Spherical functions and local densities on Hermitian forms*. Journal of the Mathematical Society of Japan 51 (1999), 553–581. [Source](https://www.jstage.jst.go.jp/article/jmath1948/51/3/51_3_553/_pdf/-char/en). Read: Introduction, pp. 553–554; Section 2, normalization on pp. 570–571 and Theorem 2, p. 571.


**[BP21]** Raphaël Beuzart-Plessis, *A new proof of Jacquet–Rallis’ fundamental lemma*. Duke Mathematical Journal 170 (2021), no. 12; read arXiv:1901.02653v3, December 2020. [Source](https://arxiv.org/pdf/1901.02653v3). Read: Sections 1–4 and references, pp. 1–9; Lemma 1, pp. 3–5, Fourier formulas pp. 5–6, Proposition 1, p. 7, proof on p. 8.


Leslie25 Part 1 was read in full, together with the specified product-group contraction and theorem statements. The intervening global spectral proof is outside the first direction and was not read or decomposed here: it is precisely the independent supplier obligation G6. Source locators for that boundary identify the input, rather than certify its proof.
