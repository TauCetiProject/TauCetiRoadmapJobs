import Mathlib

/-!
# Galois sections and p-adic period mappings: target signatures

The roadmap is README.md; this file is not the roadmap. It records which headline theorems
can be stated against the pinned Mathlib and Tau Ceti APIs. None of the following headline
theorems is statable at these pins. Their missing carriers require substantive constructions,
rather than a few simple definitions on native carriers.

* Harari–Stix finite-descent/section equivalence is not statable: it lacks arithmetic étale fundamental groups, their section classes and the finite-torsor descent construction.
* Selmer sections localise into the Lawrence–Venkatesh locus (Theorem 7.1) is not statable: it lacks section classes and relative étale H¹ of polarised abelian-by-finite families, with their actual fibre and Galois structures.
* Automorphism algebraicity and dimension bounds (Proposition 2.16) is not statable: it lacks the algebraic-unramified (φ,N,G_v)-module category and its algebraic automorphism group functors.
* Conjugate-place and average Hodge–Tate identities (Proposition 2.19 and Corollary 2.21) is not statable: it lacks de Rham Galois representations, their period functors and labelled local filtered realisations.
* Horizontal D_pst transport (Theorem 3.22) is not statable: it lacks rigid closed polydiscs/polyannuli, de Rham pairs and horizontal potentially semistable period realisations.
* Model-free period control of local representations and symplectic pairs (Theorem 3.3; Propositions 3.5, 4.11) is not statable: it lacks smooth proper rigid families, their relative cohomology and Gauss–Manin bundles, the p-adic period map and filtered discrete comparisons.
* Principal trichotomy (Proposition 6.7) is not statable: it lacks symplectic Galois pairs, their period realisations and the self-conjugate-place weight interface.
* Type-(a)/(b) period non-density and finiteness (Propositions 6.9, 6.15; Corollaries 6.10, 6.16) is not statable: it lacks the actual Lagrangian period domains, filtered discrete retwists and their local-system period maps.
* Kodaira–Parshin exclusion of type (c) and auxiliary-family existence (Proposition 6.20; Corollary 6.22) is not statable: it lacks the Kodaira–Parshin family and its finite étale base fibres as local Galois sets.
* Finiteness of the Lawrence–Venkatesh locus at self-conjugate places (Theorem 6.5) is not statable: it lacks the Lawrence–Venkatesh locus attached to actual polarised abelian-by-finite families and their curve-completion cohomology.
* Finiteness of the Selmer-localisation image at every finite place without CM subfields (Theorem A) is not statable: it lacks arithmetic curve section classes, Selmer sections and their localisation into the actual curve points over completions.
* Finiteness of the finite-descent projection at every finite place without CM subfields (Theorem B) is not statable: it lacks modified adelic points of a curve and its finite étale torsor descent locus.

The Mordell consequence has its owner in MordellLawrenceVenkatesh, Layer LV.11. The roadmap
uses its new locus theorem to give another proof, without adding a second declaration here.
-/

namespace TauCetiRoadmap.GaloisSectionsPadicPeriodMaps

end TauCetiRoadmap.GaloisSectionsPadicPeriodMaps
