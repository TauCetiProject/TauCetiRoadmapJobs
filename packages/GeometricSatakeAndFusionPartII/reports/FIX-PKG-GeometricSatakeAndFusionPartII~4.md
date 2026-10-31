# Repair report: GeometricSatakeAndFusionPartII

## F01 (P2) — applied

“Make the given point hyperspecial” → choose x′ with the same full fixer, then make x′ hyperspecial. Added p>2, tame classical type without triality and the division-index condition explicitly in §2.1; propagated the point, lattices and hypotheses through §§2.2 and 3.3. Added the irrational GL₂ apartment Check. Final all-prime theorems retain their generality.

## F02 (P2) — applied

Minuscule-only polynomial closures → arbitrary dominant Schubert-bound closures in §1.2. Section 2.3 names ν=ρ∘μ and its possibly nonminuscule target, with the closure-factorization and closedness argument. Rank sums require weights 0,1. Added the quadratic-torus Checks; updated §0.1’s Check, the Layer 1 dependencies, Layer 2 description and the acceptance docstring.

## F03 (P2) — applied

Smooth pullback from the complete integral model → the ambient special-fibre inverse image X_I, its smooth surjection, reducedness descent and separate component-generic-point lifting. Added its moduli API and boundary Checks, including the nonsmooth GL₂ forgetful map. Recorded compatible affine-Schubert splitting as a supplier gap, used by both GL and GSp routes, with matching plan entry and source locators.

## F04 (P3) — applied

An unspecified detecting minimum → a minimum over the finite nonempty pair set D_H^S, with weight incidence explicit. Added attainment, nonnegative integral values, nonzero-scalar invariance and the excluded empty-set boundary. README Checks compute {1,1}→1, {0,2}→0, the empty detecting set at H=0, and characteristic-three rescaling. No acceptance declaration was added.

## Mathematical evidence and source audit

All four findings are correct. The repairs use the existing certified legal extractions. No additional work or source key was required. The 21 manifest records remain certified, with no duplicate keys or missing-reference request. The added LEV, GORGL and GORSP locators and LEV uses are recorded under their existing keys in packages/GeometricSatakeAndFusionPartII/sources.toml.

| Finding or added input | Evidence read | Consequence |
| --- | --- | --- |
| F01: range of the existence theorem | KPZ line 418; KPZ line 464; KPZ line 475 | The theorem retains p>2, classical type without triality, tame splitting and prime-to-p division index. |
| F01: point and fixer | KPZ line 480; polynomial application at KPZ line 906 | The conclusion supplies x′ with equal fixer schemes; it does not make every original point a vertex. ReductiveGroupsPartII RG2.3.5 states exactly this replacement. |
| F02: arbitrary polynomial closures | LEV line 949; LEV line 960; LEV line 1007 | Definition 4.2.1 takes an arbitrary geometric cocharacter class and closes its affine Schubert variety; Proposition 4.2.6 gives flatness and projectivity. Numbering is that of the manifest’s arXiv v2. |
| F02: restriction morphism | KPZ line 1046; KPZ line 1052; KPZ line 1078; KPZ line 1085; KPZ line 1092 | The unrestricted minuscule wording does not imply minuscule image. The polynomial modification map, special-fibre immersion and Nakayama argument are bound-independent inputs. Closing the generic source inside the target bound gives the corrected target here. |
| F03: actual smooth map | GORGL line 1325; GORGL line 1330; GORGL line 1345; GORGL line 1414 | The smooth map is the base change of the ambient full-to-partial affine-flag projection to the partial special fibre. Omitted lattice bounds are not imposed on its refinements. |
| F03: reducedness and flatness | GORGL line 643; GORGL line 1351; GORGL line 1360; GORGL line 1406 | Compatible Schubert ideals control schematic intersections. Reducedness descends, and lifting maximal component generic points supplies the separate flatness argument. |
| F03: symplectic occurrence of the same input | GORSP line 149; GORSP line 155; GORSP line 175; GORSP line 352 | The GSp route also uses compatible splitting and component lifting; the new supplier contract covers split SL_n and Sp_(2n) in positive characteristic, including 2. Theorem 3.3 is on printed p. 9. |
| F04: detecting condition | KPZ line 1761; KPZ line 1769; KPZ line 1804 | Detection means dω′(H)≠0; the proof chooses detecting pairs among the finite minuscule test representations. The helper here restricts ω′ to a weight of V(ω). |
| F04: scalar invariance and candidate arithmetic | Linearity of a weight differential; integral coroot order | dω′(cH)=c dω′(H), so c≠0 preserves detection. Write the candidate as 〈μ−λ,ω〉+〈λ,ω−ω′〉: both terms are nonnegative integers, using the coroot coset and dominance. |

The source wording at KPZ Proposition 3.3.20 is not used to identify a general target with a finite flag. For μ=(2,0) on the quadratic restriction torus, the source flag has dimension 0, the target affine Schubert bound has dimension 2, and the finite target flag has dimension 1. The corrected statement is a geometric target of this package with its explicit polynomial-map route, rather than an assertion that the source’s wording resolves this distinction.

## Ownership and supplier citations

Read TauCetiRoadmap/AdicSpacesPartIII/README.md and TauCetiRoadmap/HeightsAndUnits/README.md as main-branch shape references. Read the supplier sections below in the content checkout at bbed953 or through the roadmap service’s available open heads, and read the two supplied board designs directly. The service’s object searches covered its indexed main and open roadmap files; local object searches covered the content roadmaps, board packages and both pinned libraries. Queries concerned polynomial local models and schematic closures, affine flags, partial chains, detecting weights and compatible Frobenius splitting. These searches do not constitute a line-by-line ownership review of every unrelated sibling.

| Supplier | Resolved sections and scope |
| --- | --- |
| GeometricSatakeAndFusion | GS0 “Generic Schubert bounds”, “Equal-characteristic Schubert models and coefficient comparison”, “Integral parahoric ind-properness”, “Bounded admissible affine flag loci”, “Relative-position flag correspondences”; GS2 convolution and rigidity; GS4 normalized equivalence and Weil action. Its polynomial construction and algebraic extensions are explicit gaps, not assertions that those extensions are already present. |
| ReductiveGroupsPartII | RG2.0a.1–.2 finite-flat affine restriction; RG2.1.2–.5 valued roots and central covers; RG2.2.2–.4 buildings, descent and chains; RG2.3.3–.5 parahorics and full fixers, with the precise tame-hyperspecial replacement in RG2.3.5; RG2.3.7 Lang/lifting; RG2.4.1–.3 affine Weyl/admissibility; RG2.5 integral dual data. |
| RootSystemsPartII | packages/RootSystemsPartII/design/README.md, RS2.4 “Existential dominant orbit-sum step” and “Coroot step with central directions retained”; “Independent continuation briefs”, MB.1–MB.3. The three minuscule requests remain gaps and are not presented as supplied theorems. |
| DiamondsAndVStacksPartII | packages/DiamondsAndVStacksPartII/design/README.md, D10.8–.9, D10.12–.15 and D11.5, D11.11–.14, D11.16–.20. D11.20 requires algebraically closed residue field, provided before descent in §7.6. |
| SchemeAndStackFoundations | TauCetiRoadmap/SchemeAndStackFoundations/README.md, §§0.8, 0.17–.21, 0.26, 0.28, 0.30, 1.1, 4.6–.10 and 4.13: flatness, depth, excellence/normalization, weak normality, ideal comparison, descent, completion, algebraization and Serre criteria. The additional criteria remain separately declared gaps. |
| ModularCurves | TauCetiRoadmap/ModularCurves/README.md, §0G constructs the relative quotient Grassmannian, charts, gluing and universal quotient; the subspace rank d uses quotient rank h−d. |
| PELModuli | M0 rational involution, order, alternating trace form, duality, determinant and reflex data. Arbitrary ramified local order/chain data remain gap:ramified-local-pel-data. |
| EtaleDualityAndPerverseSheaves | §§2.1–.3 and 2.6–.10, including the finite-coefficient perverse and IC calculus. The tube proof uses F_ℓ and does not consume rational decomposition. |
| LefschetzPencilsAndVanishingCycles | LPV.0 §§0.1–.8, LPV.1 §1.10 and LPV.6 §§6.1–.2. All three cited VanishingCycles.semisimpleTrace names occur in §1.10; they are supplier targets, not pinned declarations. |
| ClassicalAdicEtaleCohomology | §4.5a gives the inertia-compatible scheme/formal/adic comparison with normalized bounded coefficient systems and uniform amplitude/Tor conditions. |
| SmoothRepresentationsOfLocalGroups | SR.1 convolution, SR.3.2 categorical Bernstein centre, SR.4.1 normalized spherical Satake. The six parahoric/inner-form/level extensions remain separately named gaps. |

The resolver’s two remaining cross-roadmap leads are RootSystemsPartII and DiamondsAndVStacksPartII; both are present in the supplied board designs at the sections above. Its library-name pass reported that it could not inspect pinned Lake packages on its host; the local pinned checks below therefore supply that evidence. No citation was declared absent on the strength of resolver output.

The new prerequisite is gap:algebraic-compatible-schubert-splitting, assigned to GeometricSatakeAndFusion GS0’s affine-flag extension of “Equal-characteristic Schubert models and coefficient comparison”. Its one-sentence needs text matches the new top-level gaps entry. SchubertGeometry S5 on main constructs compatible splitting for finite reductive flag varieties G/B; it does not state the affine-flag extension used here. The local-model incidence and flatness targets remain owned here, while generic affine-Schubert infrastructure stays with GS0. No supplier file was edited, and no generic flag-splitting theorem was replanned here.

## Adversarial mathematics pass

Each row records actual boundary values or equations, not an inference that examples prove a general theorem. Changed definitions, their API and their consumers are separated below; the remaining rows cover the target statements and conventions throughout the roadmap. The rows use the hypotheses in the README; arbitrary-bound polynomial closures do not enlarge the hypotheses of the minuscule normality or canonical-representative theorems.

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| Integral coroot order | PGL₂: endpoints 0,2 and 0,1 | 2−0=2·1; 1−0 is not in 2ℤ | Integral congruence distinguishes the cases | None |
| Apartment translation sign | diag(t,t⁻¹) | Cocharacter (1,−1), displacement (−1,1), determinant valuation 0 | Opposite apartment sign retained | None |
| Subspace/quotient conventions | h=3,d=1 | Subspace rank 1; quotient and SW kernel ranks 2 | Opposite/dual dictionary required | None |
| Period multiplicity | h=3,d=1,r=2 | Total dimensions (rh,rd)=(6,2); quotient rank 4 | Positive period has the stated ranks | None |
| Derived Cartan sign | E,H,F and u=((1,0),(1,1)) | uEu⁻¹=((−1,1),(−1,1))=E−H−F | Sign agrees through §§4.8–4.9 | None |
| Tate/Frobenius normalization | q=9,d=0,1 | (φ,τ)=(1,1),(1,−1/3); opposite exponent gives −3 | Half twist has the negative exponent | None |
| Nonzero denominators | q=2,3,9; Dᴴ m=1 | q≠0 in ℚ_ℓ; −2=1 in F₃ and 0 in F₂ | Rational trace and odd-characteristic Cartan scopes differ | None |
| §0.1 minuscule datum and composition | GL₂ μ=(1,0),(2,0),0; identity | Root pairings 1,2,0; flag dimensions 1, excluded,0; id∘id=id | General bound is available separately | Check now points also to §1.2 |
| §0.2 Hodge weights and powers | Standard GL₂, multiplicities 2,0 | Weights {1,0}; doubled ranks (4,2); empty representation rank 0 with kernel GL₂ | m=0 fails faithfulness | None |
| §0.3 quasi-tame and exclusions | Wild K/F, H=GL₂; index 3 at p=3 | Splitting degree of H over K is 1; 3 divides 3 | Wild restriction allowed; forbidden division index excluded | None |
| §0.4 v-closure and central lifts | μ=0; SL₂→PGL₂ | Zero closure Spd O_E; cocharacter map n↦2n, so 2n=1 has no integral solution | Lift hypothesis is substantive | None |
| §0.5 specified representative | P¹ and blow-up at a special point | Special component counts 1 and 2; exceptional P¹ maps to one point | Blow-up comparison is not a monomorphism | None |
| §0.6 goodness and period-total criterion | Identity GL₂; cusp normalization | Identity ranks (2,1); t is in k[t] but not k[t²,t³] | Normalization of image alone does not give goodness | None |
| §1.1 polynomial modification input | GL₁ degrees 0,1; P=1; additive group | t⁰=1,t¹=t; empty divisor gives neutral modification; t⁻¹a gives an affine-line family for G_a | Ind-projectivity uses polynomial parahoric hypotheses | None |
| §1.2 closure definition | Hyperspecial GL₂ bounds (1,0),(2,0),0 | Generic dimensions 1,2,0; finite flags have dimensions 1,1,0 | General bound cannot mean finite flag | General Schubert closures |
| §1.2 flatness/projectivity and density | One-lattice line model, zero bound; extra vertical component | P¹_O and Spec O are O-torsion-free; vertical component has π=0 | Closure has no additional vertical component | API uses Schubert generic fibre |
| §1.2 product API | Two GL₂ line factors | Generic dimension 1+1=2, product P¹×P¹; zero factor contributes 0 | Product and central-bound boundaries agree | Retained for arbitrary bounds |
| §1.3 minuscule normality and components | GL₂ node xy=π | Total dimension 2; special fibre xy=0 has two normal one-dimensional branches, with zero divisors x,y | Whole special-fibre normality is not inferred | None |
| §1.4 central comparisons | SL₂→PGL₂ at zero; p=2 | Zero models Spec O; central kernel order 2 is divisible by p=2 | No prime-to-p argument at excluded prime | None |
| §1.5 auxiliary Hodge cover | Type-D kernel order 2, p=3 | gcd(2,3)=1; μ-trivial factor contributes dimension 0 | Odd-characteristic cover scope retained | None |
| §1.6 one-lattice representative | h=3,d=1; μ=0 | Grassmannian dimension 1·2=2; SW kernel rank 2; zero-bound model Spec O | Kernel convention agrees with §0.2 | None |
| §2.1 hyperspecial realization | GL₂/Q₃, s=√2−1, s′=1/4 | es irrational for every positive integer e; 4s′=1 | Given x need not become a vertex; equal fixer permits replacement | Added x′ and exact range |
| §2.1 tame extension witness | Q₃(ζ₄,3^(1/4)) | Unramified degree 2 supplies ζ₄; ramification index 4 is prime to 3; both points lie in (0,1) | x and x′ have the same Iwahori fixer, while x′ becomes hyperspecial | Added negative control |
| §2.1 division-index bounds | PGL₂(D), p=3, indices 3,2 | Relative rank 1 in both cases; divisibilities 3∣3 and 3∤2 | Matrix size does not replace division index | Existing Checks retained |
| §2.2 Weyl-lattice embedding | Identity split GL₂; two standard summands | Lattice ranks 2 and 4; GL₂ centralizer acts on multiplicity space of dimension 2 | Lattice comparison allows centralizer changes; uses x′’s model | Point/lattice propagated |
| §2.3 generic target | Unramified quadratic torus, μ=(2,0) | Source dimension 0; target ν=(2,0), root pairing 2 and dimension 2; finite target flag dimension 1 | All inputs have a defined Schubert target | Added general-bound interface |
| §2.3 minuscule specialization | Same torus, μ=(1,0) | Source dimension 0; target dimension 1; weight-one rank 1 | Point maps into P¹, rather than being identified with P¹ | Added Check |
| §2.3 rank API | Extension degree 2, n=3, d=1,0 | Total ranks 6; subspace ranks 2,0; quotient ranks 4,6 | Rank sum needs 0/1 weights and chosen convention | Corrected both rank conventions |
| §2.3 closure factorization and equivariance | K=F, identity; quadratic torus at diag(t²,1) | Identity sends t^μ to t^μ; torus source sends to GL₂ bound ν=(2,0) with determinant valuation 2 | Generic map lands in specified bound; closure uses density | Route made explicit |
| §2.4 powers and full fixer | GL₂ standard, m=1,2 | Dimension/rank (2,1),(4,2); empty power gives (0,0) with full kernel | Positive power and permitted fixer change remain necessary data | No new narrowing |
| §2.5 symplectic chain embedding | Rank 2; quaternion centralizer multiplicity 2 | GSp₂=GL₂; two rank-2 summands have dimension 4, one has dimension 2 | Division-centralizer multiplicity retained | None |
| §2.6 GL incidence and flatness | Two-lattice rank-2 line model | Both transitions give x₁y₀−πx₀y₁=0; at x₀=y₁=1, xy=π; special fibre xy=0 | Flat node and reduced special fibre retained | Corrected proof route |
| §2.6 ambient inverse-image definition | Full I; one-lattice I in rank 2 | Full I: X_I=M_(I,k), fibre dimension 0; one lattice: refinement fibre P¹, dimension 1 | Smooth ambient projection has the right source | Defined X_I |
| §2.6 empty-bound boundary of X_I | Rank 2,d=0,one retained lattice | M_(I,k)=Spec k; X_I=P¹, not Spec k | Omitted bounds are not minuscule-incidence conditions | Added Check |
| §2.6 cartesian API on nilpotents | R=k[ε]/ε², refinement lines | [1:0]≠[1:ε], but both reduce to [1:0] over k | Geometric-point equality cannot specify X_I | Added Check |
| §2.6 smoothness negative control | Forget F₁ above F₀=[1:0],[0:1] | First equation is 0=0, fibre P¹; second is x₁=0, fibre a point; generic fibre is a point | Integral forgetful map is not smooth | Added Check |
| §2.6 extremal ranks and incidence API | d=0,h; incompatible lines | Unique zero/full summand; for F₀=e₂,F₁=e₁ the incidence determinant is 1 | Extremal models Spec O; product points need compatibility | Retained |
| Compatible affine-Schubert splitting gap | Rank-one bound P¹; point ideal; nilpotent thickening | Split point ideal gives quotient k, intersection of point with itself k; k[ε]/ε² has ε²=0 but ε≠0 and cannot be Frobenius split | Schematic ideal compatibility, not support equality, is the required input | New supplier gap |
| §2.6 GSp incidence | Rank 2 at p=2; rank 4 symplectic space | Rank-2 equation xy=π; LGr(2,4) dimension 3, Gr(2,4) dimension 4; ψ(e₁,f₁)=1 | Annihilator equations remain essential at 2 | Same splitting gap recorded |
| §2.7 period-total map | Two rank-2 lattices, each d=1 | Total rank 4, subspace rank 2; idempotent image ranks (1,1) versus wrong (2,0) | Fixed component ranks exclude wrong plane | None |
| §2.8 trace symplectic restriction | K=F,r=1; r=0; inseparable degree p | Standard pairing 1; zero-dimensional radical 0; inseparable trace 0 gives zero pairing with positive radical | Separability and positive-dimensional faithfulness separated | None |
| §2.8 common multiplier | Two split planes, multipliers 1,2 | Alternating blocks ψ and 2ψ cannot have one common multiplier | Full independent product is excluded | None |
| §3.1 canonical classical model | GL₂ line times a μ=0 factor | Generic dimensions 1+0=1; zero factor gives Spec O | Nontrivial-factor reduction does not exclude zero bounds | None |
| §3.2 normalization of image | k[t²,t³]⊂k[t] | Same fraction field k(t); t missing in image ring | Finite birational normalization need not be closed immersion | None |
| §3.3 descent cutout | Split GL₂, Γ=1, K=F | Invariant chain is π^iΛ; Γ equations are empty, scalar equations automatic, total one-lattice rank 2 | Correct split specialization uses hyperspecial model at x′ | Added tameness, non-triality, replacement |
| §3.4 companion/perfect/Witt comparison | Affine line in characteristic p | a↦a^p is bijective on algebraically closed points; k[t]→k[t],t↦t^p is not surjective | Perfection does not identify unperfected schemes | None |
| §3.5 general-bound kimberlite | GL₂ ν=(2,0), ν=0 | Generic dimensions 2,0; zero tube has one point | Nonminuscule bound and zero bound both admitted | None |
| §3.6 weak normal representative | Characteristic-zero cusp | k[t²,t³]≠k[t] although normalization has singleton geometric fibres | Weak-normality step is separate from a closed embedding claim | None |
| §4.1 curve span | A¹; dual numbers; xy=0 | Dimensions (tangent,span)=(1,1),(1,0),(2,2); (1,1) is not a nodal curve derivative | Linear span differs from individual derivatives | None |
| §4.2 tangent-cone obstruction | x²+xyz=0 at 0 | f(f+gh)=0 implies f=0 or −gh∈(a²); tangent dimension 3, curve-span dimension 2 | Reduced cone x=0 gives the same plane | None |
| §4.3 big-cell coordinates | SL₂ λ=0,α∨ and j=1 | Root exponents −1 and 2−1=1; Cartan starts at −1 | Translation and root-pairing signs agree | None |
| §4.4 minuscule tests | B₃ μ=(2,0,0),ν=(1,1,0); μ=(1,0,0),ν=0 | First differences have tests (1,0,0); second has odd sum 1, outside coroot lattice | Both order directions retain coroot-coset hypothesis | None |
| §4.5 root curves | SL₂ λ=0,μ=α∨; j=0,1,2 | |−j|≤1 gives k_α=1; derivative t⁻¹X_α at j=1; j=2 exceeds bound; j=0 is zero tangent in quotient | Positive exponent interval is correct | None |
| §4.6 FM definition | Torus point λ=μ; μ=0 | For a weight η, exponent 〈μ,η〉 lies between −〈μ,−w₀ν〉 and 〈μ,ν〉; μ=0 gives both bounds 0 | Both inclusions hold; zero bound fixes tested lattice | None |
| §4.7 root equality | SL₂ λ=0,μ=α∨ | Minuscule weights ±ω yield j_α=1=k_α; root coefficient ±1 stays nonzero at p=2 | Minuscule differentiation avoids false modular duality | None |
| §4.8 Cartan curve span | SL₂ λ=0,μ=α∨ and μ=0 | C^cur=t⁻¹kH and 0; H coefficient in E−H−F equals −1, also nonzero at p=2 | Lower bound and sign survive both characteristics | None |
| §4.9 detecting pair definition | SL₂ H=H_α; H=0 | d(±ω)(H_α)=±1; d(±ω)(0)=0 | Two pairs versus empty set; zero is outside domain | Explicit finite pair set |
| §4.9 attainment and nonnegativity | λ=0,μ=α∨; λ=μ=α∨ | Candidates (1,1), minimum 1 attained twice; candidates (0,2), minimum 0 attained once; all values in ℕ | Both API assertions match actual values | Added API and Checks |
| §4.9 scalar invariance | c=2 in characteristic 3; c=0 | Derivatives (1,2)→(2,1), same detecting pairs and minima 1,0; c=0 gives no pairs | Nonzero-scalar hypothesis excludes wrong extension | Added API and Check |
| §4.9 Cartan upper bound/equality | SL₂ λ=0,μ=α∨; λ=μ=α∨ | k_(−α)=1 and 0 respectively, equal to l_H^S; allowed i are {1} and ∅ | Equality agrees with §4.8 | README only |
| §4.9 Dᴴ endpoint argument | m=1 at p=3,2 | −2m=1,0 respectively | Characteristic-two coefficient cannot detect this term | Existing boundary retained |
| §4.10 curve spanning | SL₂ zero translation and μ=0 | For μ=α∨: two root vectors plus H give tangent dimension 3; μ=0 gives 0 | Root and Cartan calculations recombine | None |
| §4.11 summed special bound | Two ramified GL₂ embeddings, each (1,0) | Sum (2,0), Schubert dimension 2 rather than minuscule dimension 1 | Special bound differs from generic minuscule factors | None |
| §5.1 invariant orbit step | A₂ reversal; D₄ triality example | A₂ sum α₁+α₂ once; wrong D₄ orbit has central coefficient 3>2, highest root has (1,2,1,1) | Existential step and distinct orbit members retained | None |
| §5.2 rank-one formulas | SL₂ a=0,1; unitary a=1 in F₃ | SL₂ values 1 and x_−(u⁻¹); unitary relation 1+1+1=0; at 0 all parameters 0 | Polynomial origin and higher orbit distinguished | None |
| §5.3 rank-one central comparison | μ₂ kernel at p=3 and p=2 | Order 2 prime to 3, not to 2; over F₂[ε]/ε², (1+ε)²=1 | Nilpotent test explains prime-to-p condition | None |
| §5.4 positive-loop lift | λ≠0 versus λ=0 | diag(t,t⁻¹) has a pole; identity conjugator has coefficients in k[[t]] | Translation is Laurent; conjugator is positive | None |
| §5.5 same-field curve | SL₂ over F₃, λ=0 | C=A¹_F₃,c=0 has residue field F₃; a=1,2 lie in G_m | No extension of the marked field | None |
| §6.1 chain type and periodicity | b=π; quaternion quotient over split residue algebra | Period isomorphism carries basis to π-basis; composite mod π=0. Factor ranks (1,1) and (2,0) both total 2 | Period and module type distinguish wrong models | None |
| §6.2 chain torsors | Standard chain; full fixer with two components | Standard isomorphism torsor has identity section; component counts 2 versus 1 for neutral subgroup | Torsors retain full stabilizer and polarization line | None |
| §6.3 naive quotient | h=3,d=1; square-zero perturbation | Kernel rank 2; determinant T−(a+ε) differs from T−a by −ε although reductions agree | Polynomial-law identities retain nilpotents | None |
| §6.4 de Rham kernel | Quotient onto e₁ in rank 3 | Kernel ξe₁⊕e₂⊕e₃, determinant ξ; polarization ideal ξB_dR⁺ | Divisor-ring kernel, not residue vector-space kernel | None |
| §6.5 EL Drinfeld comparison | n=2, distinguished weights (1,0) | Adjoint flag P¹, dimension 1; O_D-quotient R-rank 2 | Specified model agrees with minuscule type | None |
| §6.6 unitary comparison | p=2 unramified; ramified chart xy=ϖ² | Signature (1,1) yields weights (1,0), flag dimension 1; xy=ϖ² has dimension 2, embedding dimension 3, reduced special fibre xy=0 | Normal base change need not be regular | None |
| §7.1 tube component formula | Zero model; GL₂ smooth point and node | Component counts 1,1,1; corresponding lowest stalk dimensions 1,1,1 | Point, disc and annulus all connected | None |
| §7.2 codimension-one translations | GL₂ Iwahori node | Exactly two maximal branches above node, dimensions 1; node dimension 0 | Bound is local to codimension one | None |
| §7.3 S₂ criterion | Node k[x,y]/xy; two planes meeting at a point | Node depth=dim=1; punctured strict local two-plane union disconnects, depth 1<min(2,2)=2 | Codimension-one connectivity is stronger than total connectivity | None |
| §7.4 Wakimoto stalk bound | Extremal translation and adjacent divisor | Extremal multiplicity 1; after choosing Borel, one boundary contribution 0 and the other ≤1 | Lowest stalk dimension 1 matches §7.1 | None |
| §7.5 arbitrary-bound tubes | Smooth points of the top strata for GL₂ bounds 0,(1,0),(2,0) | Tube dimensions 0,1,2; point and smooth open balls have component count 1 | Nonminuscule smooth-stratum test agrees with the general theorem | None |
| §7.6 normality and reducedness | xy=π; xy=ϖ² after base change | Special fibre xy=0 reduced in both; total embedding dimensions 2 and 3 | Normality does not assert regularity or all-case CM | None |
| §7.7 acceptable good embeddings | Identity GL₂; cusp as negative control | Identity ring map surjective; cusp inclusion misses t | Closedness still requires its explicit supplier gap | None |
| §7.8 lattice admissibility | g=diag(π⁻¹,1), g=diag(π⁻²,1) | πgΛ gives quotient span(e₁) in first case; second has π⁻¹e₁ outside Λ | Lattice bounds make reduction defined exactly where used | None |
| §8.1 monodromy | Smooth GL₂; two-dimensional nonzero N | Smooth inertia 1; unipotent block has N²=0 but rank N=1 | Unipotence alone is not triviality | None |
| §8.2 semisimple trace | q=9 unipotent block | Graded trace 1+1/9=10/9, raw-invariant trace 1/9 | Admissible graded trace differs from raw invariants | None |
| §8.3 centrality and signs | μ=0; d=1,q=9 | Zero bound gives central unit; τ=−1/3, κ^ss=1/3, φ=1 | Sign conversion agrees with conventions | None |
| §8.4 Satake/Bernstein normalization | Hyperspecial GL₂,q=9; μ=0 | z^ss spherical coefficient 1/3; q^(1/2)z coefficient 1; trivial representation trace 1 | Level normalization and zero-bound unit agree | None |

The two-lattice worked example still gives πad−bc=0, special branches b=0 and c=0, intersection ([1:0],[0:1]), and chart bc=π at a=d=1. Its forgetful fibres now explicitly test F03. The surface, D₄ orbit and q=9 worked examples retain respectively dimensions (3,2), central coefficients (3,2), and traces (−1/3,1/3,1). These are consistent with every occurrence of those objects in the repaired layers.

## Acceptance file, pins and checks

The pins in content/lake-manifest.json are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Object searches at these pins found no polynomial BD/local-model, affine-Schubert scheme, represented lattice-chain or local-model nearby-cycle carrier that makes the geometric headlines statable with only simple definitions. The module-valued Grassmannian is not such a represented scheme.

Read the pinned definitions used by the README: Mathlib/LinearAlgebra/Span/Defs.lean:46; Mathlib/RingTheory/Trace/Defs.lean:70; Mathlib/RingTheory/Grassmannian.lean:66; Mathlib/RingTheory/Trace/Basic.lean:501; Mathlib/AlgebraicGeometry/Scheme.lean:40; Mathlib/AlgebraicGeometry/ZariskisMainTheorem.lean:392; TauCeti/AlgebraicGeometry/TangentSpace/Basic.lean:65; TauCeti/Algebra/AlgebraicGroup/Tangent/RootSpace.lean:100. The Grassmannian fields require finite projective quotient and rank at each prime, without a nonzero-ring hypothesis. The tangent definition is a residue-field dual without regularity. The adjoint-weight definition carries the finite-projective Hopf cotangent assumptions; it supplies no loop chart.

After stripping the module docstring, packages/GeometricSatakeAndFusionPartII/Suggested.lean has zero declarations. Therefore the required mechanical #check @name audit of every own declaration has zero names, zero dropped binders and zero README/Lean signature mismatches. A scratch audit was elaborated once successfully with #check on the five Mathlib inputs: Submodule.span, Algebra.trace, Module.Grassmannian, traceForm_nondegenerate and AlgebraicGeometry.IsClosedImmersion.iff_isProper_and_mono. Its printed trace-form type includes both FiniteDimensional and Algebra.IsSeparable. An initial scratch audit guessed the wrong namespace Algebra.traceForm_nondegenerate and exited 1; reading the namespace boundary and using the existing global name corrected it, with no package declaration change.

| Required check | Exact outcome |
| --- | --- |
| Elaborate packages/GeometricSatakeAndFusionPartII/Suggested.lean from the content checkout with lake env lean, using its absolute path as instructed | Final run exit 0; no output and no warnings. An earlier run also exited 0. |
| Missing TauCeti import object build | Not needed: the acceptance file imports Mathlib once and has no TauCeti imports. No module build or broad Lake build was run. |
| Own-declaration elaborated signature comparison | Zero declarations after stripping the docstring; no signature or retained-binder change required. Scratch library audit final exit 0, as described above. |
| Dependency check with the specified name, order and --movable | Exit 0; exact output below. No UPWARD, CYCLE or moved line. |
| Gap/plan integrity | 41 exact supplier-contract slugs equal the 41 top-level plan gap slugs; the new needs text matches. Parsed plan outside top-level gaps equals the original. |
| Source integrity | 21 certified records, unique keys; no new fetch and no unresolved reference. |
| Diff/format inspection | git diff --check exits 0. Metadata unchanged; no changes outside the authorized package files and report. |

    depcheck: 54 roadmaps, 605 edges, 0 problem(s)

No gate failures were listed in the repair brief. The supplied signature diagnostic was a scratch-input parse failure, not an acceptance-file elaboration failure; the final elaboration and zero-declaration audit replace it. The citation leads are resolved above or covered by the local pinned audit. The merge-order file was not edited. Nothing was committed or pushed.

## Maintainer consequences

The only new supplier request is gap:algebraic-compatible-schubert-splitting, for GeometricSatakeAndFusion GS0’s affine-flag extension; the package does not edit or assert completion of that supplier. Polynomial local-model notation now permits arbitrary dominant bounds, but minuscule scheme/v-sheaf comparison and final all-prime statements retain their original scopes. Consumers of §§2.1–2.2 and 3.3 must use x′ and its hyperspecial lattices, with equality of full fixers, rather than claim the original x becomes hyperspecial. No Lean declaration was added, renamed or deleted, so no downstream Lean name changes.
