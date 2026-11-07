# Repair report: exponential sums and the circle method, part II

## F01 (P1) — applied differently

Unowned G3/G6 → explicit SharpMinorArcBound proposition and StrongGermData, with no existence or sharp-bound target. Updated §§9.5, 10.3, 12.4–12.5, 13.1, 13.3, Summary and build description. Removed both gap entries, including G3's irreducibility dependency. The arithmetic witness remains 192 versus 188 (BS20 line 1856). Existing target records outside `plan.json.gaps` are immutable under this brief.

## F02 (P1) — applied

G4/G5 process descriptions → deleted gap entries. Universal monodromy now has only the residual finite-image exclusion request; unpublished topology inputs have individual mathematical contracts. No claim about another package's review status remains in the editable supplier list.

## F03 (P1) — not actionable in this package: the remaining AT2 exports require supplier work

Implicit AT2 supply → six declared gaps for arrangement cohomology, stable diagonal, tameness, bouquet comparison, double-loop Betti series and Fermat connectivity. Updated every use, retaining m+1≤a≤2m, n≥4, d(n−3)≥j and n≥5. Configuration carriers/torsors instead use the existing IG.5.1 owner. This package cannot publish or implement AlgebraicTopologyPartII; the resolver still correctly identifies that missing roadmap.

## F04 (P2) — applied

The duplicate mapping-restriction gap → DGFloer Layer 2 items 2–3 in supplier contracts, §12.3 and Layer 12 dependencies. The based restriction is explicitly the pullback of the unbased restriction. Added the constant-boundary fibre calculation Map_*(D²/S¹,X)≅Ω²X. DGFloer's main-branch README, Layer 2 item 2, contains the required compact-Hausdorff closed-cofibration theorem.

## F05 (P2) — applied differently

FunctionFieldArithmetic's specialized contracts → local §§8.7–8.10, with the native finite-field headline `minor_arc_polar_count`. Generic symmetric shrinking alone is requested from GeometryOfNumbersAndQuadraticArithmeticPartII's function-field lattice section. Dimension detection uses existing trace/weight suppliers. Updated §3.4, §9.1, Scope and dependencies without renumbering layers. Evidence: BS20 line 1950, line 2014, line 2118; BV15 line 530.

## F06 (P2) — applied

Compound universal/product contract → LPV §§5.1, 5.8, 5.10 plus a single residual infinitude gap for even-dimensional hypersurfaces in ℙ^N, excluding cubic surfaces. Goursat and the rank calculation now belong to §6.5. Added ranks 6 and 21 as boundary checks; updated all monodromy dependencies. Evidence: BS20 line 1406, line 1420 and line 1439.

## F07 (P2) — applied

The duplicate ECF fundamental-group gap → IG.5.7, *Finite-cover criteria for full monodromy image*. Section 6.4 now factors through smooth connected-fibre maps and dense opens in normal hypersurface parameter spaces, retaining the nonzero-vector cone. Explicit n≥3 excludes disconnected binary-form cones. Updated supplier contracts and Layer 6 dependencies. Evidence: IG.5.7's finite-cover criterion; BS20 line 1406.

## F08 (P2) — applied

Compound character/vanishing contract → the character-sheaf package and a separate one-variable Fourier-sheaf gap. The degree-above-two vanishing is proved locally in §5.8's route using duality and the absence of a constant quotient. Added linear, constant and Artin–Schreier degree-p controls; updated Layer 5 dependencies. Evidence: BS20 line 1161 through line 1172.

## F09 (P3) — applied

Ambiguous contextual locators → explicit attribution of original statements in §§11.4–11.12, 12.1–12.5 and 13.2. Scope identifies the new examples and counterexample. BS20 remains the setting, not a claimed source of these conclusions (BS20 line 2149 through line 2194). The mathematical targets are retained; a publication-policy decision, if required, belongs to the maintainer.

## F10 (P3) — applied differently

An unnamed arithmetic predecessor → a direct description of the BS20 §6 polar-count argument and this package's geometric work. No dependency on a nonexistent ExponentialSumsAndCircleMethod roadmap remains. The assigned package name is unchanged; renaming is outside the editable scope. The roadmap index and board search supplied no base roadmap to import.

## F11 (P3) — applied

Incomplete grid locator → LR14v2 Theorem 2.1, p. 3, line 144, alongside Bézout and the slicing proof. Section 0.2 explicitly calls the arbitrary-grid statement an adaptation. Repaired the repeated §1.1 locator, References and the existing manifest key. Evidence: LR14v2 line 144 and line 231; the proof uses an inequality, avoiding the erroneous affine-section equality.

## F12 (P3) — applied differently

Restored n≥2 in §5.12 and d≥1,n≥2 in §7.2; removed the large-n, large-d and coefficient-order restrictions from parity. Kept n≥3 in §7.4: for a binary cubic the punctured boundary cone has three components, so the surjection used at BS20 line 1416 fails. Added both the curve check and odd-order-prime parity check. No n=2 parity extension is asserted without a proof.

## F13 (P3) — applied

All design-node citations → section titles with declared gap slugs, or the existing IG.5.1 configuration owner. Added the Scope distinction between §4.4's finite rectangular Hankel rank/Padé error condition and ClassicalArithmeticCompletion §6.44's infinite eventual determinant criterion. Checked that main-branch section and every AT2 title against the supplied design.

## R09 (P2) — applied

The sorried sharpness control `small_degree_excess_dimension` → deleted from `Suggested.lean`, with its README name removed and the full §10.9 mathematical example retained. Updated the module docstring to identify the retained deep headlines. No boundary-case declaration or example was added. The dimension computation below confirms the retained counterexample (BS20 line 209).

## Verification outcomes

- `lake env lean` on `packages/ExponentialSumsAndCircleMethodPartII/Suggested.lean`, run from the pinned content checkout: **exit 0**, exactly two warnings, at lines 98 and 123: `declaration uses sorry`. There are two headline theorems and seven real-bodied definitions. No Tau Ceti module import or prerequisite build is needed.
- Elaborated one scratch copy containing `#check @name` for **all nine** remaining declarations: **exit 0**, the same two warnings. Compared every elaborated type with §§3.1, 3.4, 4.1, 8.1, 8.8–8.9 and 10.8. All field, finiteness, algebraic-closedness, degree, geometric Jacobian, rank, incidence and range binders remain explicit; **zero lost binders**. The original irreducibility signature is unchanged; the new count has its own hypotheses, with smoothness over AlgebraicClosure K rather than only rational points. The removed theorem is absent from the README.
- Required dependency-direction command: **exit 0**. Its complete output after the substantive edits was:

```text
depcheck: 50 roadmaps, 583 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The final rerun has the same output.

- `git diff --check`: **exit 0**, no output.
- Parsed old/new `design/plan.json`, deleted the top-level `gaps` field from both and compared: **equal**. No other design field changed. The twelve gap slugs agree exactly between the README and plan; no undeclared or unused gap remains.
- Citation resolution found **no missing Lean names**. Its only roadmap lead remains AlgebraicTopologyPartII AT2.2, now explicitly a supplier gap. The tool's generic warning that it cannot locate pinned packages is not evidence about this worker: all sixteen referenced pinned declarations were independently opened at the supplied paths.
- No separate gate failures were listed in the brief. The missing AT2 citation is handled under F03, not represented as an existing export.

The pinned manifest identifies Mathlib revision `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti revision `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Read the sixteen library declarations at the README's exact file/line locators, including the minimal-prime hypothesis on Krull height, the coprime-residue hypothesis for prime progressions, and the local-closedness hypothesis in closed-point detection. `ContinuousMap.curry` and `Matrix.rank` provide carriers/maps, not the additional geometric or compactness assertions used by the applications.

## Ownership and source audit

Read the main-branch forms of AlgebraicTopology, DGFloer and ClassicalArithmeticCompletion before editing. Re-resolved main SchemeAndStackFoundations §§0.2–0.3, 0.7–0.9, 5.12 and EtaleCohomologyFoundations §§0.6–0.7, F.0–F.6. Read the relevant open-head sections of EtaleDualityAndPerverseSheaves, InverseGaloisAndArithmeticFundamentalGroups, LefschetzPencilsAndVanishingCycles, DeligneWeightsAndPurity and FunctionFieldArithmetic. The last has divisor lattices, self-dual measures and Fourier transforms at §§2.1–2.3, not this package's polar count. ArithmeticStatisticsPartIII §2.23 supplies a hypersurface point bound; it was not misrepresented as an arbitrary finite-type count-to-dimension theorem.

Used the supplied roadmap tools to search main and the indexed open heads by object: configuration schemes and torsors, affine cumulative degree, Hankel/Padé, mapping schemes, Weyl differencing, Artin–Schreier sheaves, shrinking, Lang–Weil, Hurewicz fibrations and double loops. This includes the named sibling roadmaps accessible through that index. Read the board designs for AlgebraicTopologyPartII and GeometryOfNumbersAndQuadraticArithmeticPartII, especially *FunctionFieldLatticesAndShrinking*, FL.0–FL.4. Board-wide object searches were also performed. Generic configurations/torsors already have the IG.5.1 owner; generic shrinking is therefore a supplier gap, while the specialized residue/polar system and its count are owned here. No retained Lean name appears in another indexed roadmap's Lean file.

All cited works retain their original manifest keys. Read the supplied legal cached texts; no missing-reference request was needed. In particular, the new arithmetic targets use BS20 line 1732, line 1745, line 1942, line 1950, line 1981, line 2014 and line 2114. LR14v2 line 144 supplies the finite-field-grid antecedent, while line 231 supplies the slicing argument. The arbitrary-grid and cohomological dimension-detection routes are explicitly adaptations. No unavailable Katz/Katz–Sarnak book is claimed to have been read; the relevant foundational requests remain supplier gaps. No source extraction or source passage was copied into the package.

## Adversarial mathematics pass

The table records recomputed witnesses for every numbered target and convention, with rows for the Lean definitions and new supplier interfaces. Values in hypothesis-only rows test the definition or implication; they do not certify existence of StrongGermData or SharpMinorArcBound. Smooth hypersurfaces use fields and nonzero leading vectors, so zero rings, nonabelian groups and arbitrary DVRs are not silently substituted for those carriers. Zero algebras and square-zero test algebras are included in the representing-functor checks.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: signed D and strict range | n=40,k=3,d=2; n=24,k=3,d=4 | D=74, tδ=3>2; D=84, tδ=2=2 excluded | strict boundary retained | sharp input separate |
| Conventions: coefficients | p=5,ℓ=2; p=7,ℓ=2 | ord₅2=4; ord₇2=3, with 2³=1 and 2,4≠−1 | second case cannot give coefficient inversion | parity no longer needs inversion |
| Conventions: shifts and Frobenius | 𝔸¹ and point | sole groups H_c²=E(−1), trace Q; H_c⁰=E, trace 1 | agrees with [−2] versus [0] | none |
| Conventions: absolute value | 0,1,T; height 0 | 0,1,Q; only 0 has norm <1 | strict ball correct | none |
| Conventions: configuration action/sign | transposition; n=4,5 | inverse reindexing squared is identity; (−1)³=−1, (−1)⁴=1 | left action and Koszul sign agree | none |
| Conventions: winding | exponential and reciprocal | lifted increments +1 and −1 | orientation fixed | none |
| Generic shrinking gap | n=1,γ=T⁻¹,a=2,c=1,s=1 over 𝔽₂; a=0; n=0 | N=2, smaller N=1, bound 2·1=2; N=1=smaller N; rank-zero count 1=1 | strict boundaries and zero rank consistent | generic contract replaces specialized request |
| Character-sheaf gap | zero and nonzero linear phase over 𝔽₅ | zero phase has trace sum 5 and top degree 2; nonzero phase has sum 0 and acyclic complex | zero frequency excluded from cancellation | split package |
| Fourier gap | g=a and g=a⁵−a at h=1 | linear fibre zero; degree-5 phase zero at h=1, giving H_c²=E(−1) | degree <p needed for degree-one sheaf argument | separate input |
| Residual orthogonal gap | cubic surface and quartic surface | primitive ranks 2(2³+1)/3=6 and 3(3³+1)/4=21, contradicting the initially proposed 20 | boundary computation detected mismatch | corrected all rank witnesses to 21 |
| AT2 arrangement gap | m=0,1,2 | degrees {0}, {2}, {3,4}; for m=2, PConf₂≅𝔸¹×𝔾_m | matches m+1…2m | explicit gap |
| AT2 stable diagonal gap | n=4,N=1,d=1,j=1 | only m=1 contributes H_c²(PConf₁)=ℚ; coefficient of t in 1+t is 1 | 1=1, j=d(n−3) | explicit gap |
| AT2 tame-polynomial gap | scalar f=z³−1; f=x²y−x | gradient size 3abs(z)²; at x=t,y=1/(2t), gradient (0,t²)→0 | positive and negative models distinguished | explicit gap |
| AT2 bouquet gap | n=3 cubic Fermat; nonconstant linear polynomial | Milnor number 2³=8, eight S²; linear fibre affine, sphere count 0 | regular-value/tameness controls | explicit gap |
| AT2 loop-series gap | n=4,N=1; n=5,N=1 | series 1+t; (1+t⁵)/(1−t²) has coefficients 1 at degrees 0,2,4,5 | connected formula in n≥4 | explicit gap |
| AT2 Fermat connectivity gap | n=5,k=2; n=4,k=2 | S⁴ gives π₂=π₃=0; S³ gives π₃=ℤ | lower dimension fails simple connectivity after two loops | n≥5 retained |
| 0.1 intersection | coordinate planes in 𝔸³; parallel lines | intersection dimension 1=2+2−3; empty intersection has no claimed component | nonempty hypothesis needed | none |
| 0.2 finite grid | line plus off-line point, S={0,1}; parabola sliced at x=0 | count 3=1·2+1·1≤2·2; slice degree 1≤2 | cumulative degree and inequality necessary | locator/adaptation corrected |
| 0.3 fibre strata | axes union projected to first coordinate | at 0 dimension 1; elsewhere dimension 0; empty inverse pieces −∞ | dim preimages 1=0+1 and 1=1+0 | none |
| 1.1 polynomial box | 𝔽₂[T],h=2, coordinate line/plane; h=0 | counts 4=2² and 16=2⁴; zero vector count 1 | positive height and strict boundary agree | repeated grid locator corrected |
| 2.1 coefficient prime | p=5,ℓ=19; p=2 | 19≡4, 4²≡1 and 4≠1; −1≡1 mod2 | order 2 versus 1 | none |
| 2.2 residue prime | ℓ=2,p=13; ℓ=3,p=5 | 2⁶≡−1, order 12; 3²≡−1, order 4 | even order, distinct primes | none |
| 3.1 mappingPolynomial | d=2,x_j=1; d=0; n=0 | T²+a₁T+a₀; constant 1; empty coordinate tuple | coefficients fixed exactly, not up to scale | retained definition |
| 3.1 mappingEquation | f=0,1,Y₁; d=1,x₁=1 | 0,1,T+a₀ | leading equation retained without incidence | retained definition |
| 3.1 mappingIdeal | f=0,1; square-zero test for f=Y₁²,x=0,d=1 | ideals ⊥,⊤; a₀=ε gives ε²=0 | full affine space, empty scheme, and nilpotent direction | retained definition |
| 3.1 representing functor | nonzero algebra versus zero algebra | x_j=1 keeps tuple degree d; zero algebra has exactly one tuple, spectrum empty | no degree assertion on zero algebra | none |
| 3.2 dimension lower bound | n=40,k=3,d=2 | 80 variables−6 equations=74 | componentwise, including possible empty locus | none |
| 3.3 smooth closure | Y₁(Y₁−1); cubic Fermat | first leading form Y₁² has zero gradient at [0:1]; Fermat gradient vanishes only at origin | reducible affine countermodel excluded | none |
| 3.4 residuePhase | f=Y₁³−Y₂³+1,d=1; b=0 | coefficients a³−c³+1,3(a²−c²),3(a−c); zero frequency gives 0 | constant term changes phase by b₁ | supplier wording updated |
| 3.5 exponential complex | zero frequency with dn=2; nonzero linear phase | E[−4](−2), trace Q²; zero complex | geometric normalization agrees | none |
| 3.6 orthogonality | L=3; zero and nonzero equation coefficient vectors | zero vector gives E[−6](−3), then [6](3) gives E; nonzero vector gives 0 | shift and scheme support agree | none |
| 4.1 hankelMatrix | L=9,b₅=1,m=4; m=L=0 | anti-identity determinant +1, rank 5>4; empty matrix rank 0 | odd-length threshold detected | none |
| 4.2 nesting | b=(1,2,4) in length 3 | H₁=[[1,2],[2,4]], determinant 0; A₀ requires all entries 0 | geometric progression belongs to A₁, not A₀ | none |
| 4.3 full threshold | L=9,m=4,5 | rank 5>4; next matrix has 4 rows≤5 | ceiling 5, not floor 4 | none |
| 4.4 Padé equivalence | α=0; α=1/(T−2) truncated at L=3 | h₁=0,h₂=1; coefficients 1,2,4, next error exponent −4 | finite error condition agrees both ways | scope distinction added |
| 4.5 uniqueness | L=3,m=1; rescale denominator | contradiction would require L+1=4≤2m=2; monic coefficient fixes scalar 1 | rank-stratum/monicity hypotheses essential | none |
| 4.6 good open | m=0,1; cancelled pair | (0,1); c/(T−a) gives c,ca,ca²; (T−a)/((T−a)(T−b)) reduces to denominator degree 1 | exact degree excludes common factors | none |
| 4.7 dimension | m=2,m′=0,1,2 | parameter bounds 2,3,4≤2m=4 | lower denominator strata included | none |
| 5.1 boundary cancellation | d=m and m′<m | translation exponent d−m=0; λ variation nonzero from ∇f₀(x) | no negative polynomial power | none |
| 5.2 remainder | xT²+a₁T+a₀ modulo T−b | remainder xb²+a₁b+a₀; at m=d quotient rank n(d−m)=0 | affine-bundle rank and phase descent agree | none |
| 5.3 residue complex | modulus T−a; m=0 | phase h f(g(a)); unique pair (0,1), value E | zero numerator excluded at positive degree | none |
| 5.4 affine integration | quotient rank 1 and 0 | E[−2](−1), trace Q; E, trace 1 | sign remains negative | none |
| 5.5 CRT | l₁=T,l₂=T−1,h₁=h₂=1 | numerator 2T−1, denominator T(T−1); 1/T+1/(T−1)=(2T−1)/(T(T−1)) | adds numerators crosswise | none |
| 5.6 repeated modulus | local f(a)=a and f(a)=a²+1 at a=0, p>3 | first derivative 1; second derivative 0 but f(0)=1 | respective translations have nonzero λ coefficients | none |
| 5.7 trace fibre | 𝔸¹ and two copies of 𝔸¹ | E(−1)→E(−1) fibre 0; E²(−1)→E(−1) fibre E(−1) | top class removed only once | none |
| 5.8 one-variable vanishing | g=a; g=0; n=3 generic/exceptional strata | first total complex 0; constant g gives H_c⁴=E(−2); 2·2+2=6=2·1+4 | nonconstant case degree ≤2, constant excluded | local Fourier application |
| 5.9 linear modulus | Fermat cubic n=3, roots 0 and 1 | common rank 8 in degree 4, outer twist −1; translation changes no fibre | complex retained, not just trace | none |
| 5.10 descent | m=0,1; ℓ=2,m=2 | E, RΓ_(c,red)(X)[−4](−2); 1/2 exists in ℚ₂ | invariants remain exact | IG.5.1 supplies torsor |
| 5.11 stratum | m=0; m=d | E[−2nd](−nd); quotient rank 0 | all affine contributions retained | none |
| 5.12 middle degree | affine cubic curve with three points at infinity | dim H_c¹=2g+3−1=4, H_c⁰=0, H_c²=E(−1) | trace fibre only degree 1 | n≥2 restored |
| 5.13 parity tensors | dim V=2,m=2,n=4,5 | dim ∧²V=1 versus dim Sym²V=3 | omitting sign exchanges dimensions | none |
| 5.14 stratum degree | n=4,d=2,m=1 | configuration exponent a−13; degree 2 gives a=15 | equals reduced degree 3+shift 2+affine shift 8+configuration degree 2 | none |
| 6.1 universal pairs | cubic Fermat,x=(1,ζ,0,…) | f₀(x)=1+ζ³=0; x≠0 | incidence and nonzero condition | none |
| 6.2 relative support | n=4 | degrees 3 and 6; top E(−3), Frobenius Q³ | twist matches dimension | none |
| 6.3 primitive extension | n=4 | boundary degree 2; closure degree 3; boundary Tate increment 0 | restriction sequence, not Gysin | none |
| 6.4 pullback | n=3 connected boundary curve; n=2 cubic | connected punctured cone; binary cubic cone has 3 components | n=2 fails connected-fibre hypothesis | IG.5.7 route, explicit n≥3 |
| 6.5 Goursat and eigenvalues | cubic/quartic surfaces; 2×2 Jordan block | ranks 6 and 21; [[−1,1],[0,−1]]²=[[1,−2],[0,1]] | rank threshold safe, lift not scalar | corrected rank witness to 21 |
| 6.6 relative stratum | n=4,d=2,m=1 | fibre configuration exponent a−13, a=15; twist before configuration −5 | same absolute/relative degree | none |
| 7.1 finite filtration | one stratum and two strata | one column gives E₁=E∞; d₁ changes (m,s) by (1,0), total +1 | finite, not necessarily first quadrant | none |
| 7.2 first page | n=4,d=2,m=1; n=2,d=1 | first exponent s−12, nonzero at s=14; zero column degree 4 for curve case | agrees with §5.14 | large ranges dropped |
| 7.3 relative pages | m=0; opposite column eigenvalues | constant E[−2nd](−nd); λ=+1 and −1 give (1−(−1))u=2u=0 | E characteristic zero gives u=0 | none |
| 7.4 odd pages | p=7,ℓ=2,n=5,k=3,d=1; r=1,2 | ord₇2=3; eigenvalues at distance 1 are opposite, at distance 2 equal | odd r forced zero, even r not forced | coefficient-order condition removed |
| 7.5 normalized page | n=40,k=3,d=2,m=0; n=4,d=2,m=1 | E(6−80)=E(−74) in total 0; s+4=2 at s=−2 | normalized total m+s=−1 in second test | none |
| 8.1 difference locus and iteratedPhaseDifference | k=1 constant/linear; G=a²,k=2,3 | dimensions 0/−∞; V₂={0}, dimension 0; V₃=𝔸², dimension 2 | order parameter cannot be inferred from actual degree | none |
| 8.2 cohomological degree | constant, nonzero linear, a^p−a on 𝔸¹ | 2,−∞,2 | nonconstant polynomial can have constant character sheaf | none |
| 8.3 coefficient conjugation | p=5,ℓ=2; p=7,ℓ=2 | 2²≡−1 mod5; subgroup {1,2,4} misses −1 mod7 | even-order hypothesis used exactly here | conventions corrected |
| 8.4 tensor/difference | G constant on 𝔸¹; one acyclic factor | 2+2=4 on 𝔸²; −∞+2=−∞ | absorbing empty-degree convention | none |
| 8.5 support detection | support Spec 𝔽_(q²) | no initial rational point; two geometric stalk tests at r=2 | all extension degrees necessary | none |
| 8.6 Weyl estimate | G=a²,p=5; k=2 and 3; constant | RHS 1 and 2, actual cd=1; constant RHS=2=actual | degree drop and normalization agree | none |
| 8.7 polarization | f₀=Y³; characteristic 3 | Ψ=6uv, diagonal 6u²=2!·3u², locus two axes dim1,deg2; char3 gives whole plane dim2 | invertibility and sign factors necessary | new local target |
| 8.7 difference sign/top phase | a² and a³; add constant 1 | Δ_y(a²)=−2ay−y²; a-linear term of Δ_uΔ_v(a³)=6auv; constant changes residue b₁ but not polar locus | signs −,+ and lower-term independence | new local target |
| 8.8 polarCount / count identity | Q=5 and 7,k=3,n=1,d=2,α=T⁻⁴ | enumerated N=225,637; N₁=9,13; Q²N₁=225,637 | exact identity and shrinking equality | new local target |
| 8.8 zero phase/boundary | α=0,d=2,k=3,n=1,s=1; s=d | N=Q⁴, N₁=Q², factor Q²; N_d=1 | zero tuple prevents division by zero | new local target |
| Native count hypotheses | scalar cubic, zero frequency over 𝔽₅; characteristic 3 and rank-3 frequency | counts 625>250 when rank fails; 81>54 when p>k fails | both omitted-hypothesis variants false | added README negative controls |
| 8.9 minor_arc_polar_count (Lean) | full finite differences over 𝔽₅,𝔽₇ with x=0 and x=1, lower quadratic coefficient 0 and 2 | G=a₁³+6xa₀a₁+2λxa₁; constancy iff y₁z₁=0; counts 225≤250 and 637≤686 in both cases | native count agrees, leading vector/incidence not needed | new deep headline; geometric smoothness explicit |
| 8.9 rank exclusion/count | same scalar cubic test,m=2 | 3×3 anti-minor determinant −1; exponents −4=−kd+m; N=225≤250,637≤686 | strict approximation and uniform constant 2 | new local target |
| 8.10 dimension from counts | affine line; Spec 𝔽_(q²); dual numbers | counts q^r; 0 at odd r,2 at even r; 1 always; dimensions 1,0,0 | components after extension and nilpotents included | new local target |
| 9.1 differencing dimension | scalar cubic test; zero frequency | polynomial be=0 in 𝔸⁴ has dimension 3=4−1; b=0 dimension 4 | exclusion hypothesis distinguishes them | local count used |
| 9.2 stalk cutoff | n=24,k=3,d=4,m=5 | 24(8−2/2)=168; adding support dimension term 24 gives 192 | consistent with next layer | none |
| 9.3 minor cover | L=9,d=3; L=12,d=4 | strata indexed {3,4}; {4,5} | ceiling includes last odd-length stratum | none |
| 9.4 conservative bound | k=3,d=4,n=24,m=4,5 | δ=1,t=2; B(4)=188, B(5)=192; uniform cutoff 192 | remainder cannot be dropped | none |
| 9.5 sharp proposition | same parameters; a=188,190,193 | cutoff 188; equality 188 excluded; 190 sharp-only; 193 covered conservatively | no assertion that sharp proposition holds | hypothesis definition |
| 10.1 spreading | f over ℚ, x containing transcendental u | coefficient ring ℤ omits u; model ℤ[u,…] includes x; invert nonzero coordinate | pair, not only polynomial, must spread | none |
| 10.2 conservative comparison | n=40,k=3,d=2 | 2dn=160,2L=12,2D=148; i>−4 | shifts and strict range agree | none |
| 10.3 sharp comparison | tδ=3,k=3; tδ=1 | sharp i>−8 versus conservative i>−4; at 1 sharp i>0 excludes 0 | explicit extra hypothesis, no endpoint theorem | hypothesis use |
| 10.4 support | n=40,m=1,2 | s=−38 for m=1; −77≤s≤−76 for m=2 | configuration degrees 2;3,4 | AT2 gap explicit |
| 10.5 total-degree bands | n=40,m=1,2 | total −37; interval [−75,−74]; −1 absent | H_c¹⁴⁷=0 in comparison range | none |
| 10.6 top degeneration | n=4,r=2 | threshold i>−3; possible source column ≥4 has total ≤−4 | incoming/outgoing support below retained range | none |
| 10.7 component criterion | line disjoint point,D=1; one affine line | first has top rank1 but point dim0<1; second dim1 and top rank1 | componentwise lower bound excludes first | none |
| 10.8 irreducibility headline | Fermat n=40,k=3,d=2; n=24,k=3,d=4 | hrange 2<3, D=74; second range 2<2 false | hypotheses satisfiable, equality excluded | Lean headline unchanged |
| 10.9 excess-dimension control | n=3,k=3,d=1; n=2 | D=0; g₂=0 gives three affine lines, dimension1=0−1+2; n=2 restricted equation 1=0 | excess dimension >D, third coordinate needed | README only |
| 10.10 degeneration proposition | n=40,i=0; formal d₂ example | m>0 totals <0, zero column dimension1; odd differentials 0 permit nonzero d₂ | conjecture distinct from parity | none |
| 11.1 germ set | Fermat reference; normal 2z^d,z^(d+1) | lift [1:ζ:z^d:…:z^d]; normalized ratios 1,2,z | only first has prescribed leading ratio 1 | none |
| 11.2 compact-open space | escaping loop | ambient projective errors have size R^(−d), but normalized deviation reaches 2 | continuous in Hco, no uniform normalized control | originality attribution |
| 11.3 polynomial inclusion | leading vector fixed versus approaching 0 | fixed x gives limit [x:0]; constants/lower coefficients bounded give error O(1/R); x→0 loses that bound | fixed leading vector needed | none |
| 11.4 shrinking phase | r=1/4,s=0,3/8,1 | h=0,1/2,1; phases 1,−1,1 | endpoint agreement plus lift increment1 | original construction marked |
| 11.5 nonuniformity | fixed s>0 and moving s=3r/2 | r<s/2 gives phase1; moving parameter gives −1 for every r | pointwise tail cannot be made common | original statement marked |
| 11.6 Fermat reference | k=3,d=2 | T⁶+ζ³T⁶+1=1; leading (1,ζ,0,…) | smoothness and incidence hold | original example marked |
| 11.7 escaping loop | finite T and infinity | abs(a_s(T))=abs(T)^d; at s=0,1 reference exactly; limit [1:ζ:0:…] | joint projective continuity, individual fixed germ | original construction marked |
| 11.8 common chart | compact loop at large R | v=1/(R^dσ) is nonzero of size R^(−d); ratio v/z^d ranges on unit circle | common chart does not force ratio near1 | original statement marked |
| 11.9 winding definition | reference loop,F,F concatenated F | ratios 1,σ⁻¹, concatenated σ⁻¹; windings 0,−1,−2 | excludes zero/trivial winding model | original definition marked |
| 11.10 independence | two large radii R₁,R₂; F followed by reverse | winding −1 at both radii; sum −1+1=0 | compact homotopy keeps nonzero normal coordinate | original statement marked |
| 11.11 infinite-order loop | j-fold concatenation of F | endWind(F^j)=−j; F image −1 | integer quotient surjective, no filling of F | original theorem marked |
| 11.12 compact-open obstruction | cubic forty-variable Fermat | Ω² bouquet S³⁹ has π₁=π₃(X)=0; Hco has quotient ℤ | no weak equivalence | original counterexample marked |
| 12.1 weighted collar | u=z,w=1+z; w=1.1; w=−1 | seminorms1,1; constant offset seminorm∞; deviation2>1/2 | correct model distinguished | original definition marked |
| 12.2 cutoff homotopy | t=1,χ=1/2,z=1/10,u=z,w=1+z | new u=1/20,w=21/20; deviation1/20<1/2 | avoids zero but moves transition annulus | original construction marked |
| 12.3 restriction fibre | constant β,X=S²; contractible X | fibre Map_*(S²,S²), components ℤ; contractible target gives point type | correct full double-loop fibre | existing DGFloer input |
| 12.4 StrongGermData | escaping loop; bounded coefficients a,b | moving ratio −1 gives weighted deviation 2R→∞; u=az,w=1+bz gives ‖a‖,abs(b) | first cannot be compact continuous family with required control | explicit data, no existence claim |
| 12.5 conditional equivalence | point target; Fermat Hco | Ω²point and extension model both point; Fermat π₁ values0 versus quotientℤ | supplied comparison necessary, Hco excluded | implication from data |
| 13.1 trace pairing proposition | n=40,k=3,d=2,j=0,1,8 | range0≤j<8; top trace line at0; j=1 algebraic factor0; j=8 excluded | topology and trace are parameters | hypothesis data explicit |
| 13.2 compact-open failure | j=1 in Fermat example | H_c¹⁴⁷=0, H¹(Hco,ℚ) contains Hom(ℤ,ℚ)≠0 | 0⊗nonzero→ℚ not perfect | original theorem marked |
| 13.3 conditional degeneration | n=40,d=2,k=3; stable test n=4,N=1,d=1,j=1 | trace range j<8≤74=d(n−3); stable diagonal coefficient1=loop coefficient1 | dimension comparison only where actual abutment is known | StrongGermData explicit; sharp extension explicit |

## Maintainer consequences

The provisional arithmetic rank witness above exposed an error introduced while applying F06: the quartic-surface primitive rank is **21**, not 20. All corresponding README and final report statements now use 21; 21 still exceeds the orthogonal exceptional dimensions 3 and 5. The remaining entry showing the failed value is intentional evidence of the adversarial pass.

The package title is unchanged. F05 adds `residuePhase`, `hankelMatrix`, `iteratedPhaseDifference`, `polarCount` and the deep headline `minor_arc_polar_count`, all named in the README. The only deleted Lean name is `TauCetiRoadmap.ExponentialSumsAndCircleMethodPartII.small_degree_excess_dimension`; consumers should cite the README §10.9 control instead. The retained irreducibility signature is unchanged. No external file or consumer was edited. The original target-node records and their historical proof-status fields in `design/plan.json` remain untouched because only its top-level `gaps` list may change; the README specifies the actual conditional assertions.

The generic shrinking request follows GeometryOfNumbersAndQuadraticArithmeticPartII's proposed *FunctionFieldLatticesAndShrinking* section. Any decision to split or publish that supplier is external to this package. Likewise the six AT2 interfaces remain explicit supplier work; their presence in the merge order is not treated as publication. Mathematical dependence now follows one direction and has no specialized polar-system object in a supplier contract.
