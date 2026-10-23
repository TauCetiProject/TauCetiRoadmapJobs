# Roadmap: arithmetic statistics, counting fields and Selmer distributions

**Summary.** Build finite-height arithmetic families and integral orbit dictionaries, prove uniform counting and sieve estimates, then compute field densities, class-group moments and Selmer averages. Compare the arithmetic results with precisely specified finite-group, quadratic-intersection and geometric probability laws. The complete specification is arranged in the eight parts below.

## Scope and ownership

Each target has one owner among the parts. The numbering §k.n follows the common six-layer build, so the original mathematical locators remain unambiguous across the parts. Parts IV and V share Layer 3; Parts VII and VIII share Layer 5. The exact links in each part identify its earlier suppliers.

AnalyticNumberTheory is a prerequisite of every part and takes no input from any part. From AnalyticNumberTheory require the [binary-cubic action and discriminant](../AnalyticNumberTheory/README.md#cubic-action-discriminant) (§5.4), [projective cubic-algebra equivalence](../AnalyticNumberTheory/README.md#proof-cubic-projective-parametrization) (§5.5), [finite weighted cubic coefficients](../AnalyticNumberTheory/README.md#cubic-coefficient-finiteness) (§5.6), [uniform small-degree field bound](../AnalyticNumberTheory/README.md#cubic-uniform-field-count) (§5.7), [cubic continuation and residues](../AnalyticNumberTheory/README.md#the-two-cubic-poles-and-their-residues-cubic-residues-and-entire-clearance) (§5.21), [pole-aware cubic convexity](../AnalyticNumberTheory/README.md#pole-aware-cubic-convexity-bound-cubic-pole-cleared-convexity) (§5.28), and [quadratic large sieve and real-character moment](../AnalyticNumberTheory/README.md#quadratic-large-sieve) (§5.29). The projective equivalence includes nonprincipal rank-two modules, stabilizers and determinant-line discriminants; restricting to the free coefficient lattice does not discard those general inputs. The cubic descriptions below are import and compatibility contracts for those objects, with the displayed basis/sign adapters, rather than a second construction of them. The source-specific local selectors, sieve estimates and statistical applications remain the targets here. AnalyticNumberTheory's analytic layers also supply the Dirichlet-series continuation, Perron/partial-summation, Tauberian and convergent-product statements used below, with their pole order, convergence domain and coefficient hypotheses. AnalyticNumberTheory supplies every part and takes no input from any part. Generic number-field, elliptic-curve, duality, moduli and finite-quadratic carriers belong to the named Mathlib, Tau Ceti and roadmap suppliers specified in each part.

## Conventions

A field count uses base-field isomorphism classes unless an embedded or rigid family is named. Stabilizer weights, signed discriminants, local Haar measures, height cutoffs and the order of limits are part of every theorem. Arithmetic conjectures remain propositions. Positive limiting denominators precede every limiting average; distribution convergence alone does not imply moment convergence.

## Exact supplier contracts

The exact external contracts are stated in every part. A cross-part link names a target, not an unspecified package. Later parts retain every hypothesis and normalization of that target. In particular, the number-field three-isogeny applications retain C(F,φ,Σ), including the normalized SL₂ volume supplier; even-degree binary consumers retain their summed tail and both strict cutoff inequalities.

## How to read the build

Read Parts I–III for families, orbit dictionaries and uniform counts. Part IV supplies finite-group probability and moment tools before Part V applies them to field and class-group statistics. Part VI computes Selmer averages. Part VII builds quadratic probability models and their conditional twist consequences. Part VIII proves the geometric and function-field comparisons.

| Part | Mathematical scope |
| --- | --- |
| [I](../ArithmeticStatisticsPartI/README.md) | Families, heights and local specifications. |
| [II](../ArithmeticStatisticsPartII/README.md) | Integral orbit dictionaries. |
| [III](../ArithmeticStatisticsPartIII/README.md) | Uniform orbit counts and sieves. |
| [IV](../ArithmeticStatisticsPartIV/README.md) | Finite groups, matrix laws and moment tools. |
| [V](../ArithmeticStatisticsPartV/README.md) | Fields and class-group statistics. |
| [VI](../ArithmeticStatisticsPartVI/README.md) | Selmer averages and arithmetic applications. |
| [VII](../ArithmeticStatisticsPartVII/README.md) | Quadratic probability models and twist applications. |
| [VIII](../ArithmeticStatisticsPartVIII/README.md) | Function-field distributions and geometric statistics. |

Each linked folder contains its own README, representative `Suggested.lean` and topic metadata. The part README is the full mathematical specification; its Lean file states only light definitions, milestones and discriminating examples on existing carriers.

## Downstream consumers

Arithmetic distribution comparisons use the exact field, height, local weights and equivalence relation of the supplying part. Higher Selmer and twist arguments consume the local Kummer comparison and the applicable means with their hypotheses. AnalyticNumberTheory supplies analytic inputs throughout the sequence.

## References

The source editions and target-specific theorem, section and page locators are given in the owning part. The bibliography of each part contains every source it cites. The complete source register is retained here, including background references not attached to a target.

<a id="ref-1"></a>

[1] Manjul Bhargava and Arul Shankar. [Binary quartic forms having bounded invariants, and the boundedness of the average rank of elliptic curves](https://arxiv.org/abs/1006.1002v3). arXiv:1006.1002v3 (latest version), dated 24 December 2013, 36 pp.; published in Annals of Mathematics 181 (2015), 191–242.

<a id="ref-2"></a>

[2] Ashay A. Burungale and Ye Tian. [A rank zero p-converse to a theorem of Gross–Zagier, Kolyvagin and Rubin](https://arxiv.org/abs/2506.03465v2). arXiv:2506.03465v2 (latest version), 11 October 2025, 7 pp.; Annals of Mathematics 203 (2026), no. 1, 1–13.

<a id="ref-3"></a>

[3] Manjul Bhargava, Zev Klagsbrun, Robert J. Lemke Oliver and Ari Shnidman. [Three-isogeny Selmer groups and ranks of abelian varieties in quadratic twist families over a number field](https://lemkeoliver.github.io/papers/19-3IsogenySelmer.pdf). Author version (25 pp.) of Duke Mathematical Journal 168 (2019), 2951–2989.

<a id="ref-4"></a>

[4] Ramon M. Nunes. [Squarefree numbers in arithmetic progressions](https://arxiv.org/abs/1402.0684). arXiv:1402.0684v2 (6 July 2014); Journal of Number Theory 153 (2015).

<a id="ref-5"></a>

[5] Manjul Bhargava, Arul Shankar and Jacob Tsimerman. [On the Davenport-Heilbronn theorems and second order terms](https://arxiv.org/abs/1005.0672). arXiv:1005.0672v3 (20 June 2012), 38 pp.; published in Inventiones Mathematicae 193 (2013), 439-499.

<a id="ref-6"></a>

[6] Manjul Bhargava, Arul Shankar and Jacob Tsimerman. [On the Davenport-Heilbronn theorems and second order terms](https://arxiv.org/abs/1005.0672). arXiv:1005.0672v3 (20 June 2012); Inventiones Mathematicae 193 (2013), 439-499.

<a id="ref-7"></a>

[7] Benedict H. Gross and Mark Lucianovic. [On cubic rings and quaternion rings](https://people.math.harvard.edu/~gross/preprints/cubquat.pdf). Journal of Number Theory 129 (2009), 1468-1478; author preprint (11 pp.).

<a id="ref-8"></a>

[8] Wee Teck Gan, Benedict Gross and Gordan Savin. [Fourier coefficients of modular forms on G2](https://www.math.utoronto.ca/~ila/GanGrossSavin.pdf). Duke Mathematical Journal 115 (2002), 105-169 (published version).

<a id="ref-9"></a>

[9] Manjul Bhargava. [Higher composition laws III: The parametrization of quartic rings](https://annals.math.princeton.edu/wp-content/uploads/annals-v159-n3-p08.pdf). Annals of Mathematics 159 (2004), 1329-1360 (published version, open access).

<a id="ref-10"></a>

[10] Manjul Bhargava. [Higher composition laws IV: The parametrization of quintic rings](https://annals.math.princeton.edu/wp-content/uploads/annals-v167-n1-p02.pdf). Annals of Mathematics 167 (2008), 53-94 (published version, open access).

<a id="ref-11"></a>

[11] J. E. Cremona and T. A. Fisher. [On the equivalence of binary quartics](https://www.dpmms.cam.ac.uk/~taf1000/papers/quarticequiv.pdf). Journal of Symbolic Computation 44 (2009), 673-682; author preprint dated 3 December 2008.

<a id="ref-12"></a>

[12] J. E. Cremona, T. A. Fisher and M. Stoll. [Minimisation and reduction of 2-, 3- and 4-coverings of elliptic curves](https://arxiv.org/abs/0908.1741). arXiv:0908.1741v1 (12 August 2009); Algebra & Number Theory 4 (2010), 763-820.

<a id="ref-13"></a>

[13] Tom Fisher. [The invariants of a genus one curve](https://arxiv.org/abs/math/0610318). arXiv:math/0610318v1 (10 October 2006); Proceedings of the London Mathematical Society (3) 97 (2008), 753-782.

<a id="ref-14"></a>

[14] Tom Fisher. [On binary quartics and the Cassels-Tate pairing](https://arxiv.org/abs/2208.14977). arXiv:2208.14977v1 (31 August 2022); Research in Number Theory 8 (2022).

<a id="ref-15"></a>

[15] Manjul Bhargava and Wei Ho. [Coregular spaces and genus one curves](https://arxiv.org/abs/1306.4424). arXiv:1306.4424v1 (19 June 2013); Cambridge Journal of Mathematics 4 (2016).

<a id="ref-16"></a>

[16] Melanie Matchett Wood. [Quartic rings associated to binary quartic forms](https://arxiv.org/abs/1007.5501). arXiv:1007.5501 (15 pp.); International Mathematics Research Notices 2012, no. 6, 1300-1320.

<a id="ref-17"></a>

[17] Michael Stoll. [Descent on elliptic curves](https://arxiv.org/abs/math/0611694). arXiv:math/0611694v1 (22 November 2006); Panoramas et Syntheses 36 (2012), 151-179.

<a id="ref-18"></a>

[18] J. E. Cremona, T. A. Fisher, C. O'Neil, D. Simon and M. Stoll. [Explicit n-descent on elliptic curves I. Algebra](https://www.mathe2.uni-bayreuth.de/stoll/papers/paperI-01-03-06.pdf). Journal fuer die reine und angewandte Mathematik 615 (2008), 121-155; preprint from M. Stoll's web page.

<a id="ref-19"></a>

[19] Manjul Bhargava. [The geometric sieve and the density of squarefree values of invariant polynomials](https://arxiv.org/abs/1402.0031). arXiv:1402.0031v1 (31 January 2014; title date 4 February 2014), 31 pp.

<a id="ref-20"></a>

[20] Manjul Bhargava, Arul Shankar and Xiaoheng Wang. [Geometry-of-numbers methods over global fields I: Prehomogeneous vector spaces](https://arxiv.org/abs/1512.03035). arXiv:1512.03035v2 (11 March 2026), 38 pp.

<a id="ref-21"></a>

[21] Melanie Matchett Wood. [Asymptotics for number fields and class groups](https://people.math.harvard.edu/~mmwood/Publications/ArithStats.pdf). In: Directions in Number Theory (Proceedings of the 2014 WIN3 Workshop), Association for Women in Mathematics Series 3, Springer, 2016, 291-339.

<a id="ref-22"></a>

[22] Etienne Fouvry and Juergen Kluners. [On the 4-rank of class groups of quadratic number fields](https://math.uni-paderborn.de/fileadmin-eim/mathematik/AG-Computeralgebra/Publications-klueners/ranks.pdf). Inventiones Mathematicae 167 (2007), 455-513.

<a id="ref-23"></a>

[23] Juergen Kluners. [A counter example to Malle's conjecture on the asymptotics of discriminants](https://arxiv.org/abs/math/0411486). Comptes Rendus Mathematique 340 (2005), 411-414.

<a id="ref-24"></a>

[24] Alexander Smith. [The distribution of ℓ^∞-Selmer groups in degree ℓ twist families I](https://arxiv.org/pdf/2207.05674v2). arXiv:2207.05674v2 (8 February 2023); published J. Amer. Math. Soc. 39 (2026), 1–72.

<a id="ref-25"></a>

[25] Alexander Smith. [The distribution of ℓ^∞-Selmer groups in degree ℓ twist families II](https://arxiv.org/pdf/2207.05143v2). arXiv:2207.05143v2 (8 February 2023).

<a id="ref-26"></a>

[26] Manjul Bhargava, Zev Klagsbrun, Robert J. Lemke Oliver, Ari Shnidman. [Three-isogeny Selmer groups and ranks of abelian varieties in quadratic twist families over a number field](https://arxiv.org/pdf/1709.09790v2). arXiv:1709.09790v2 (30 November 2017); published Duke Math. J. 168 (2019), 2951–2989.

<a id="ref-27"></a>

[27] Manjul Bhargava, Noam Elkies, Ari Shnidman. [The average size of the 3-isogeny Selmer groups of elliptic curves y² = x³ + k](https://arxiv.org/pdf/1610.05759v1). arXiv:1610.05759v1 (18 October 2016).

<a id="ref-28"></a>

[28] Bjorn Poonen, Eric Rains. [Random maximal isotropic subspaces and Selmer groups](https://arxiv.org/pdf/1009.0287v2). arXiv:1009.0287v2 (12 April 2011); published J. Amer. Math. Soc. 25 (2012), 245–269.

<a id="ref-29"></a>

[29] Manjul Bhargava, Daniel M. Kane, Hendrik W. Lenstra Jr., Bjorn Poonen, Eric Rains. [Modeling the distribution of ranks, Selmer groups, and Shafarevich–Tate groups of elliptic curves](https://arxiv.org/pdf/1304.3971v2). arXiv:1304.3971v2 (6 August 2013); published Cambridge J. Math. 3 (2015), 275–321.

<a id="ref-30"></a>

[30] Manjul Bhargava, Arul Shankar. [Ternary cubic forms having bounded invariants, and the existence of a positive proportion of elliptic curves having rank 0](https://arxiv.org/pdf/1007.0052v2). arXiv:1007.0052v2 (24 December 2013); published Annals of Math. 181 (2015), 587–621.

<a id="ref-31"></a>

[31] Manjul Bhargava, Arul Shankar. [The average number of elements in the 4-Selmer groups of elliptic curves is 7](https://arxiv.org/pdf/1312.7333v1). arXiv:1312.7333v1 (27 December 2013).

<a id="ref-32"></a>

[32] Manjul Bhargava, Arul Shankar. [The average size of the 5-Selmer group of elliptic curves is 6, and the average rank is less than 1](https://arxiv.org/pdf/1312.7859v1). arXiv:1312.7859v1 (30 December 2013).

<a id="ref-33"></a>

[33] Manjul Bhargava, Arul Shankar, Ashvin A. Swaminathan. [The second moment of the size of the 2-Selmer group of elliptic curves](https://arxiv.org/pdf/2110.09063v1). arXiv:2110.09063v1 (18 October 2021).

<a id="ref-34"></a>

[34] Daniel M. Kane. [On the ranks of the 2-Selmer groups of twists of a given elliptic curve](https://arxiv.org/pdf/1009.1365v4). arXiv:1009.1365v4 (3 September 2013); published Algebra & Number Theory 7 (2013), 1253–1279.

<a id="ref-35"></a>

[35] Francesc Castella, Giada Grossi, Jaehoon Lee, Christopher Skinner. [On the anticyclotomic Iwasawa theory of rational elliptic curves at Eisenstein primes](https://arxiv.org/pdf/2008.02571v2). arXiv:2008.02571v2 (14 September 2021); published Invent. Math. 227 (2022), 517–580.

<a id="ref-36"></a>

[36] Tim Dokchitser. [Notes on the parity conjecture](https://arxiv.org/pdf/1009.5389v2). arXiv:1009.5389v2 (17 January 2012); in Elliptic curves, Hilbert modular forms and Galois deformations, Birkhäuser 2013.

<a id="ref-37"></a>

[37] Jordan S. Ellenberg, Akshay Venkatesh, Craig Westerland. [Homological stability for Hurwitz spaces and the Cohen-Lenstra conjecture over function fields](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n3-p01-p.pdf). Annals of Mathematics 183 (2016), no. 3, 729–786 (published PDF); compared with arXiv 0912.0325v4 (1 Dec 2015).

<a id="ref-38"></a>

[38] Melanie Matchett Wood. [Random integral matrices and the Cohen Lenstra heuristics](https://arxiv.org/pdf/1504.04391). Amer. J. Math. 141 (2019), 383–398.

<a id="ref-39"></a>

[39] Pritam Majumder. [An elementary proof of a power series identity for the weighted sum of all finite abelian p-groups](https://arxiv.org/pdf/1407.3066). arXiv 1407.3066v1 (11 Jul 2014).

<a id="ref-40"></a>

[40] Christopher J. Hillar, Darren L. Rhea. [Automorphisms of finite abelian groups](https://arxiv.org/pdf/math/0605185). Amer. Math. Monthly 114 (2007), 917–923.

<a id="ref-41"></a>

[41] Peter Koymans, Carlo Pagano. [On Stevenhagen's conjecture](https://arxiv.org/pdf/2201.13424v1). arXiv 2201.13424v1 (31 Jan 2022); Acta Mathematica, to appear.

<a id="ref-42"></a>

[42] Peter Koymans, Carlo Pagano. [Higher Rédei reciprocity and integral points on conics](https://arxiv.org/pdf/2005.14157v2). arXiv 2005.14157v2 (14 May 2024).

<a id="ref-43"></a>

[43] Badriah Safarji, Cian O'Brien, Rachel Quinlan. [The rank distribution of matrices representing graphs with a long induced path over the field of two elements](https://arxiv.org/pdf/2509.10332). arXiv 2509.10332 (2025).

<a id="ref-44"></a>

[44] Robert J. Lemke Oliver, Jiuya Wang, Melanie Matchett Wood. [The average size of 3-torsion in class groups of 2-extensions](https://doi.org/10.1017/S2050508625000009). Forum of Mathematics, Pi 13 (2025), e19 (open-access published PDF); compared with arXiv 2110.07712v2.

<a id="ref-45"></a>

[45] Michael Lipnowski, Jacob Tsimerman. [How large is A_g(F_q)?](https://arxiv.org/pdf/1511.02212v1). Duke Math. J. 167 (2018), 3403–3453.

<a id="ref-46"></a>

[46] Tim Browning, Pierre Le Boudec, Will Sawin. [The Hasse principle for random Fano hypersurfaces](https://arxiv.org/pdf/2006.02356v1). arXiv:2006.02356v1 (3 June 2020, 66 pp.; the only arXiv version, checked 2026-09-24); published Annals of Mathematics 197 (2023), 1115–1203,.

<a id="ref-47"></a>

[47] T. D. Browning, L. Matthiesen. [Norm forms for arbitrary number fields as products of linear polynomials](https://arxiv.org/pdf/1307.7641v4). arXiv:1307.7641v4 (7 September 2016); published Ann. Sci. Éc. Norm. Supér. (4) 50 (2017), no. 6,.

<a id="ref-48"></a>

[48] Jeffrey D. Achter, Rachel Pries. [The integral monodromy of hyperelliptic and trielliptic curves](https://www.math.colostate.edu/~pries/Preprints/00DecPreprints/07finaltrielliptic.pdf). Mathematische Annalen 338 (2007), 187–206; author-hosted final PDF (20 pages).

<a id="ref-49"></a>

[49] Adrian Vasiu. [Surjectivity criteria for p-adic representations, Part I](https://arxiv.org/pdf/math/0209237v2). Manuscripta Mathematica 112 (2003), 325–355; arXiv math/0209237v2 (8 April 2004).

<a id="ref-50"></a>

[50] Melanie Matchett Wood (appendix with Philip Matchett Wood). [Nonabelian Cohen–Lenstra moments](https://arxiv.org/pdf/1702.04644v2). arXiv 1702.04644v2 (13 July 2018).

<a id="ref-51"></a>

[51] Yuan Liu, Melanie Matchett Wood, David Zureick-Brown. [A predicted distribution for Galois groups of maximal unramified extensions](https://arxiv.org/pdf/1907.05002v2). arXiv 1907.05002v2 (21 July 2022); published Inventiones mathematicae 237 (2024), 49–116.

<a id="ref-52"></a>

[52] Richard P. Stanley. [Spanning Trees and a Conjecture of Kontsevich](https://math.mit.edu/~rstan/pubs/pubfiles/114.pdf). Annals of Combinatorics 2 (1998), 351–363; journal-formatted author-hosted copy.

<a id="ref-53"></a>

[53] Evan M. O’Dorney. [Rings of small rank over a Dedekind domain and their ideals](https://link.springer.com/article/10.1186/s40687-016-0054-0). Research in the Mathematical Sciences 3, 8 (2016), published HTML, DOI 10.1186/s40687-016-0054-0; retrieved 2026-10-05..

<a id="ref-54"></a>

[54] Julio C. Andrade and Hwanyup Jung. [Mean value of the class number in function fields revisited](https://link.springer.com/content/pdf/10.1007/s00605-018-1162-2.pdf). Monatshefte für Mathematik187 (2018),577–602, published PDF; DOI10.1007/s00605-018-1162-2. Retrieved2026-10-05..

<a id="ref-55"></a>

[55] Karl Rubin. [Elliptic Curves with Complex Multiplication and the Conjecture of Birch and Swinnerton-Dyer](https://swc-math.github.io/notes/files/99RubinCM.pdf). 1999 Cetraro notes; public SWC-hosted 68-page author text.

<a id="ref-56"></a>

[56] A. J. de Jong. [Counting elliptic surfaces over finite fields](https://www.math.columbia.edu/~dejong/papers/surfaces2.dvi). Author-hosted DVI, 30 pages; journal reference Moscow Mathematical Journal 2 (2002), 281–311. Locators use the author DVI pagination.

<a id="ref-57"></a>

[57] Bhargava, Gross, Wang. [A positive proportion of locally soluble hyperelliptic curves over Q have no point over any odd degree extension](https://arxiv.org/pdf/1310.7692v2). arXiv:1310.7692v2.

<a id="ref-58"></a>

[58] Bhargava, Shankar, Wang. [Squarefree values of polynomial discriminants I](https://arxiv.org/pdf/1611.09806v3). arXiv:1611.09806v3.

<a id="ref-59"></a>

[59] Bhargava, Shankar, Wang. [Squarefree values of polynomial discriminants II](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/FD680BEF350C0140B682AB604D45F415/S2050508625000095a.pdf/squarefree-values-of-polynomial-discriminants-ii.pdf). published Forum of Mathematics Pi 13 (2025), e17.

<a id="ref-60"></a>

[60] Ash, Brakenhoff, Zarrabi. [Equality of Polynomial and Field Discriminants](https://drive.google.com/uc?export=download&id=1lZ2HQrPDEugaMn1J3ERpqDp9g6C-t6Vd). published Experimental Mathematics 16 (2007), 367–374; public author link.

<a id="ref-61"></a>

[61] Browning, Le Boudec, Sawin. [The Hasse principle for random Fano hypersurfaces](https://arxiv.org/pdf/2006.02356v1). arXiv:2006.02356v1.

<a id="ref-62"></a>

[62] Koymans, Pagano. [On Stevenhagen's conjecture](https://arxiv.org/pdf/2201.13424v1). arXiv:2201.13424v1.

<a id="ref-63"></a>

[63] Lipnowski, Tsimerman. [How large is A_g(F_q)?](https://arxiv.org/pdf/1511.02212v1). arXiv:1511.02212v1.

<a id="ref-64"></a>

[64] Shende, Tsimerman. [Equidistribution in Bun₂(P¹)](https://arxiv.org/pdf/1307.8237v1). arXiv:1307.8237v1.

<a id="ref-65"></a>

[65] Melanie Matchett Wood. [Nonabelian Cohen–Lenstra moments](https://par.nsf.gov/servlets/purl/10152050). published Duke Mathematical Journal 168 (2019), 377–427; NSF author manuscript.

<a id="ref-66"></a>

[66] Ellenberg, Venkatesh, Westerland. [Homological stability for Hurwitz spaces and the Cohen–Lenstra conjecture over function fields](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n3-p01-p.pdf). published Annals of Mathematics 183 (2016),729–786.

<a id="ref-67"></a>

[67] Skorobogatov, Sofos. [Schinzel Hypothesis on average and rational points](https://eprints.gla.ac.uk/292484/1/292484.pdf). published Inventiones Mathematicae 231 (2023),673–739.

<a id="ref-68"></a>

[68] Bhargava, Klagsbrun, Lemke Oliver, Shnidman. [3-isogeny Selmer groups and ranks of abelian varieties in quadratic twist families over a number field](https://lemkeoliver.github.io/papers/19-3IsogenySelmer.pdf). public author copy (2019).

<a id="ref-69"></a>

[69] Bhargava, Shankar, Taniguchi, Thorne, Tsimerman, Zhao. [Bounds on 2-torsion in class groups of number fields and integral points on elliptic curves](https://www.math.kobe-u.ac.jp/HOME/tani/bstttz.pdf). Public author preprint dated February 18, 2017; locators use this manuscript.

<a id="ref-70"></a>

[70] Manjul Bhargava. [Higher composition laws III: The parametrization of quartic rings](https://annals.math.princeton.edu/wp-content/uploads/annals-v159-n3-p08.pdf). Annals of Mathematics 159 (2004), 1329–1360.

<a id="ref-71"></a>

[71] Manjul Bhargava. [Higher composition laws IV: The parametrization of quintic rings](https://annals.math.princeton.edu/wp-content/uploads/annals-v167-n1-p02.pdf). Annals of Mathematics 167 (2008), 53–94.

<a id="ref-72"></a>

[72] Melanie Matchett Wood. [Quartic rings associated to binary quartic forms](https://arxiv.org/pdf/1007.5501v2). arXiv:1007.5501v2, 31 March 2011, 15 pages.

<a id="ref-73"></a>

[73] Manjul Bhargava, Benedict H. Gross, Xiaoheng Wang. [A positive proportion of locally soluble hyperelliptic curves over Q have no point over any odd degree extension](https://arxiv.org/pdf/1310.7692v2). arXiv:1310.7692v2, 24 February 2017, 42 pages.

<a id="ref-74"></a>

[74] Manjul Bhargava, Arul Shankar, Xiaoheng Wang. [Squarefree values of polynomial discriminants I](https://arxiv.org/pdf/1611.09806v3). arXiv:1611.09806v3, 31 December 2021, 29 pages.

<a id="ref-75"></a>

[75] Manjul Bhargava, Arul Shankar, Xiaoheng Wang. [Squarefree values of polynomial discriminants II](https://www.math.uwaterloo.ca/~x46wang/Papers/Squarefree_2.pdf). Author-hosted PDF dated 4 April 2025.

<a id="ref-76"></a>

[76] Manjul Bhargava, Wei Ho. [Coregular spaces and genus one curves](https://arxiv.org/pdf/1306.4424v1). arXiv:1306.4424v1, 19 June 2013, 82 pages; published text.

<a id="ref-77"></a>

[77] Manjul Bhargava. [The density of discriminants of quartic rings and fields](https://annals.math.princeton.edu/wp-content/uploads/annals-v162-n2-p10.pdf). Annals of Mathematics 162 (2005), 1031–1063.

<a id="ref-78"></a>

[78] Manjul Bhargava. [The density of discriminants of quintic rings and fields](https://annals.math.princeton.edu/wp-content/uploads/annals-v172-n3-p02-p.pdf). Annals of Mathematics 172 (2010), 1559–1591.

<a id="ref-79"></a>

[79] Manjul Bhargava, Arul Shankar, Jacob Tsimerman. [On the Davenport–Heilbronn theorems and second order terms](https://arxiv.org/pdf/1005.0672v3). arXiv:1005.0672v3, 20 June 2012, 38 pages.

<a id="ref-80"></a>

[80] Manjul Bhargava, Arul Shankar, Xiaoheng Wang. [Geometry-of-numbers methods over global fields I: Prehomogeneous vector spaces](https://arxiv.org/pdf/1512.03035v2). arXiv:1512.03035v2.

<a id="ref-81"></a>

[81] Manjul Bhargava. [The geometric sieve and the density of squarefree values of invariant polynomials](https://arxiv.org/pdf/1402.0031). arXiv:1402.0031, public PDF accessed 10 October 2026.

<a id="ref-82"></a>

[82] Manjul Bhargava, Arul Shankar, Xiaoheng Wang. [Squarefree values of polynomial discriminants II](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/FD680BEF350C0140B682AB604D45F415/S2050508625000095a.pdf/squarefree-values-of-polynomial-discriminants-ii.pdf). Forum of Mathematics Pi 13 (2025), e17, 57 pages.

<a id="ref-83"></a>

[83] Bjorn Poonen, José Felipe Voloch. [Random Diophantine equations](https://math.mit.edu/~poonen/papers/random.pdf). Author PDF dated 19 June 2003, 8 pages; published pp.175–184 (2004).

<a id="ref-84"></a>

[84] Tim Browning, Pierre Le Boudec, Will Sawin. [The Hasse principle for random Fano hypersurfaces](https://arxiv.org/pdf/2006.02356v1). arXiv:2006.02356v1, 3 June 2020.

<a id="ref-85"></a>

[85] Manjul Bhargava, Arul Shankar. [Ternary cubic forms having bounded invariants, and the existence of a positive proportion of elliptic curves having rank 0](https://arxiv.org/pdf/1007.0052v2). arXiv:1007.0052v2.

<a id="ref-86"></a>

[86] Manjul Bhargava, Arul Shankar. [The average number of elements in the 4-Selmer groups of elliptic curves is 7](https://arxiv.org/pdf/1312.7333v1). arXiv:1312.7333v1.

<a id="ref-87"></a>

[87] Manjul Bhargava, Arul Shankar. [The average size of the 5-Selmer group of elliptic curves is 6](https://arxiv.org/pdf/1312.7859v1). arXiv:1312.7859v1.

<a id="ref-88"></a>

[88] Manjul Bhargava, Arul Shankar, Ashvin Swaminathan. [The second moment of the size of the 2-Selmer group of elliptic curves](https://arxiv.org/pdf/2110.09063v1). arXiv:2110.09063v1.

<a id="ref-89"></a>

[89] Manjul Bhargava, Zev Klagsbrun, Robert Lemke Oliver, Ari Shnidman. [Three-isogeny Selmer groups and ranks of abelian varieties in quadratic twist families over a number field](https://lemkeoliver.github.io/papers/19-3IsogenySelmer.pdf). Author PDF 19-3IsogenySelmer, accessed 10 October 2026.

<a id="ref-90"></a>

[90] Étienne Fouvry and Jürgen Klüners. [On the 4-rank of class groups of quadratic number fields](https://math.uni-paderborn.de/fileadmin/mathematik/AG-Computeralgebra/Publications-klueners/ranks.pdf). Author manuscript corresponding to Inventiones Mathematicae 167 (2007), 455–513; manuscript page numbers.

<a id="ref-91"></a>

[91] Manjul Bhargava, Arul Shankar and Jacob Tsimerman. [On the Davenport–Heilbronn theorems and second order terms](https://arxiv.org/pdf/1005.0672v3). arXiv:1005.0672v3; manuscript pagination.

<a id="ref-92"></a>

[92] Manjul Bhargava, Arul Shankar and Xiaoheng Wang. [Geometry-of-numbers methods over global fields I: Prehomogeneous vector spaces](https://arxiv.org/pdf/1512.03035v2). arXiv:1512.03035v2 (13 March 2026); manuscript pagination.

<a id="ref-93"></a>

[93] Karim Belabas, Manjul Bhargava and Carl Pomerance. [Error terms for the Davenport–Heilbronn theorems](https://math.dartmouth.edu/~carlp/BBPnew23.pdf). Author manuscript corresponding to Duke Mathematical Journal 153 (2010), 173–210; manuscript pagination.

<a id="ref-94"></a>

[94] Christophe Delaunay and Frédéric Jouhet. [The Cohen–Lenstra heuristics, moments and pʲ-ranks of some groups](https://arxiv.org/pdf/1303.7337). arXiv:1303.7337v1; manuscript pagination.

<a id="ref-95"></a>

[95] Robert J. Lemke Oliver, Jiuya Wang and Melanie Matchett Wood. [The average size of 3-torsion in class groups of 2-extensions](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/6AABE169B5BA8192FE036455DE4F806F/S2050508625000009a.pdf/the-average-size-of-3-torsion-in-class-groups-of-2-extensions.pdf). Forum of Mathematics, Pi 13 (2025), e2; publisher PDF pagination.

<a id="ref-96"></a>

[96] Melanie Matchett Wood; appendix with Philip Matchett Wood. [Nonabelian Cohen–Lenstra moments](https://par.nsf.gov/servlets/purl/10152050). Duke Mathematical Journal168 (2019),377–427; published pagination.

<a id="ref-97"></a>

[97] Brandon Alberts. [Cohen–Lenstra moments for some nonabelian groups](https://www.numdam.org/item/JTNB_2020__32_3_631_0.pdf). Journal de Théorie des Nombres de Bordeaux32(2020),631–664; published pagination.

<a id="ref-98"></a>

[98] Robert J. Lemke Oliver and Frank Thorne. [Upper bounds on number fields of given degree and bounded discriminant](https://lemkeoliver.github.io/papers/25-NumberFieldBounds.pdf). Author manuscript corresponding to Duke Mathematical Journal171(2022),3077–3087; manuscript pagination.

<a id="ref-99"></a>

[99] Manjul Bhargava, Arul Shankar, Takashi Taniguchi, Frank Thorne, Jacob Tsimerman and Yongqiang Zhao. [Bounds on2-torsion in class groups of number fields and integral points on elliptic curves](https://www.math.kobe-u.ac.jp/HOME/tani/bstttz.pdf). Author manuscript dated18February2017; manuscript pagination.

<a id="ref-100"></a>

[100] Manjul Bhargava. [Galois groups of random integer polynomials and van der Waerden’s conjecture](https://arxiv.org/pdf/2111.06507v3). arXiv:2111.06507v3; manuscript pagination.

<a id="ref-101"></a>

[101] Wolfgang M. Schmidt. [Number fields of given degree and bounded discriminant](https://www.numdam.org/article/AST_1995__228__189_0.pdf). Astérisque228(1995),189–195.

<a id="ref-102"></a>

[102] Jordan S. Ellenberg and Akshay Venkatesh. [The number of extensions of a number field with fixed degree and bounded discriminant](https://annals.math.princeton.edu/wp-content/uploads/annals-v163-n2-p11.pdf). Annals of Mathematics163(2006),723–741.

<a id="ref-103"></a>

[103] Peter Koymans and Djordjo Milovic. [Joint distribution of spins](https://arxiv.org/pdf/1809.09597v1). arXiv:1809.09597v1, 2018; manuscript pagination.

<a id="ref-104"></a>

[104] Peter Koymans and Carlo Pagano. [On Stevenhagen’s conjecture](https://arxiv.org/pdf/2201.13424). arXiv:2201.13424v1, 2022; manuscript pagination.

<a id="ref-105"></a>

[105] Manjul Bhargava, Arul Shankar and Xiaoheng Wang. [Squarefree values of polynomial discriminants I](https://arxiv.org/pdf/1611.09806v3). arXiv:1611.09806v3, corresponding to Inventiones228(2022),1037–1073; manuscript pagination.

<a id="ref-106"></a>

[106] Manjul Bhargava, Arul Shankar and Xiaoheng Wang. [Squarefree values of polynomial discriminants II](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/FD680BEF350C0140B682AB604D45F415/S2050508625000095a.pdf/squarefree-values-of-polynomial-discriminants-ii.pdf). Forum of Mathematics,Pi13(2025),e17; publisher PDF pagination.

<a id="ref-107"></a>

[107] Jürgen Klüners. [A counter example to Malle’s conjecture on the asymptotics of discriminants](https://arxiv.org/pdf/math/0411486v1). arXiv:math/0411486v1, 2004; manuscript pagination.

<a id="ref-108"></a>

[108] Manjul Bhargava and Ariel Shnidman. [On the number of cubic orders of bounded discriminant having automorphism group C₃, and related problems](https://msp.org/ant/2014/8-1/ant-v8-n1-p03-s.pdf). Published Algebra & Number Theory 8 (2014), 53–88; journal page numbers.

<a id="ref-109"></a>

[109] Henri Cohen and Anna Morra. [Counting cubic extensions with given quadratic resolvent](https://arxiv.org/pdf/1003.1869v1). arXiv:1003.1869v1, submitted 9 March 2010 (PDF title-page date 12 November 2018); manuscript page numbers.

<a id="ref-110"></a>

[110] Manjul Bhargava, Benedict Gross, Xiaoheng Wang; appendix by Tim and Vladimir Dokchitser. [A positive proportion of locally soluble hyperelliptic curves over Q have no point over any odd degree extension](https://arxiv.org/pdf/1310.7692v2). arXiv:1310.7692v2, 42 pages.

<a id="ref-111"></a>

[111] Manjul Bhargava, Benedict Gross, Xiaoheng Wang. [A positive proportion of locally soluble hyperelliptic curves over Q have no point over any odd degree extension](https://www.math.uwaterloo.ca/~x46wang/Papers/hyper.pdf). JAMS 30 (2017), 451–493, author copy.

<a id="ref-112"></a>

[112] Manjul Bhargava, Christopher Skinner. [A positive proportion of elliptic curves over Q have rank one](https://arxiv.org/pdf/1401.0233). arXiv:1401.0233v1, 19 pages.

<a id="ref-113"></a>

[113] Manjul Bhargava. [A positive proportion of plane cubics fail the Hasse principle](https://arxiv.org/pdf/1402.1131). arXiv:1402.1131v1.

<a id="ref-114"></a>

[114] Christopher Skinner. [A converse to a theorem of Gross, Zagier, and Kolyvagin](https://annals.math.princeton.edu/wp-content/uploads/annals-v191-n2-p01-s.pdf). Annals of Mathematics 191 (2020), 329–354.

<a id="ref-115"></a>

[115] Bjorn Poonen, Michael Stoll. [The Cassels–Tate pairing on polarized abelian varieties](https://math.mit.edu/~poonen/papers/sha.pdf). Author copy, 28 pages; Annals of Mathematics 150 (1999), 1109–1149.

<a id="ref-116"></a>

[116] Tim Dokchitser, Vladimir Dokchitser. [Self-duality of Selmer groups](https://arxiv.org/pdf/0705.1899v2). arXiv:0705.1899v2, 11 pages.

<a id="ref-117"></a>

[117] Tim Dokchitser, Vladimir Dokchitser. [Regulator constants and the parity conjecture](https://arxiv.org/pdf/0709.2852). Public arXiv PDF, 49 pages; source numbering differs from the published version.

<a id="ref-118"></a>

[118] Amir Dembo, Bjorn Poonen, Qi-Man Shao, Ofer Zeitouni. [Random polynomials having few or no real zeros](https://math.mit.edu/~poonen/papers/fewzeros.pdf). Author copy dated 29 May 2000; JAMS 15 (2002), 857–892.

<a id="ref-119"></a>

[119] Bjorn Poonen; Eric Rains. [Random maximal isotropic subspaces and Selmer groups](https://arxiv.org/pdf/1009.0287v2). arXiv:1009.0287v2; all page locators below are the preprint’s printed pages.

<a id="ref-120"></a>

[120] Manjul Bhargava; Daniel M. Kane; Hendrik W. Lenstra Jr.; Bjorn Poonen; Eric Rains. [Modeling the distribution of ranks, Selmer groups, and Shafarevich–Tate groups of elliptic curves](https://arxiv.org/pdf/1304.3971v2). arXiv:1304.3971v2; printed preprint pages.

<a id="ref-121"></a>

[121] Melanie Matchett Wood. [The distribution of sandpile groups of random graphs](https://arxiv.org/pdf/1402.5149v2). arXiv:1402.5149v2; printed preprint pages.

<a id="ref-122"></a>

[122] Melanie Matchett Wood. [Random integral matrices and the Cohen–Lenstra heuristics](https://arxiv.org/pdf/1504.04391). arXiv:1504.04391.

<a id="ref-123"></a>

[123] Manjul Bhargava; Arul Shankar. [Ternary cubic forms having bounded invariants, and the existence of a positive proportion of elliptic curves having rank 0](https://arxiv.org/pdf/1007.0052v2). arXiv:1007.0052v2; printed preprint pages.

<a id="ref-124"></a>

[124] Manjul Bhargava; Arul Shankar. [The average number of elements in the 4-Selmer groups of elliptic curves is 7](https://arxiv.org/pdf/1312.7333v1). arXiv:1312.7333v1; printed preprint pages.

<a id="ref-125"></a>

[125] Manjul Bhargava; Arul Shankar. [The average size of the 5-Selmer group of elliptic curves is 6, and the average rank is less than 1](https://arxiv.org/pdf/1312.7859v1). arXiv:1312.7859v1; printed preprint pages.

<a id="ref-126"></a>

[126] Manjul Bhargava; Arul Shankar; Ashvin A. Swaminathan. [The second moment of the size of the 2-Selmer group of elliptic curves](https://arxiv.org/pdf/2110.09063v1). arXiv:2110.09063v1; printed preprint pages.

<a id="ref-127"></a>

[127] Manjul Bhargava; Zev Klagsbrun; Robert J. Lemke Oliver; Ari Shnidman. [3-isogeny Selmer groups and ranks of abelian varieties in quadratic twist families over a number field](https://arxiv.org/pdf/1709.09790v2). arXiv:1709.09790v2; printed preprint pages.

<a id="ref-128"></a>

[128] Daniel M. Kane. [On the ranks of the 2-Selmer groups of twists of a given elliptic curve](https://arxiv.org/pdf/1009.1365v4). arXiv:1009.1365v4; printed preprint pages.

<a id="ref-129"></a>

[129] Bhargava; Kane; Lenstra; Poonen; Rains. [Modeling distributions: author final copy](https://math.mit.edu/~poonen/papers/rst_distribution.pdf). Author final copy dated July5,2015; different numbering from arXivv2.

<a id="ref-130"></a>

[130] Bhargava; Klagsbrun; Lemke Oliver; Shnidman. [Three-isogeny Selmer groups: author copy](https://lemkeoliver.github.io/papers/19-3IsogenySelmer.pdf). Author copy linked from Robert Lemke Oliver’s publication list.

<a id="ref-131"></a>

[131] Manjul Bhargava, Arul Shankar, Xiaoheng Wang. [Geometry-of-numbers methods over global fields II: Coregular representations](https://arxiv.org/pdf/2604.16978v1). arXiv:2604.16978v1, 18 April 2026. Locators use the printed preprint pages; §2.2 pp.6–9, §3 pp.10–16 and §4.1 pp.16–20.

<a id="ref-132"></a>

[132] Attila Bérczes, Jan-Hendrik Evertse, Kálmán Győry. [On the number of equivalence classes of binary forms of given degree and given discriminant](https://arxiv.org/pdf/math/0312234v1). arXiv:math/0312234v1, 11 December 2003. Locators use the printed preprint pages: Theorem 2.1 and Corollary 2.1 pp.5–6; Proposition 5.3 p.31 and §6 pp.32–37.
