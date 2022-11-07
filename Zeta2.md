## Zeta Functions Part II: Using Cohomology Theories (Some of the Weil Conjectures)

OK so last time, we defined the Hasse-Weil Zeta function for a variety over a finite field. Now, let's discuss how we can deduce properties of
the Zeta function using cohomology theories. After Grothendieck, we can consider the étale topology on schemes over finite fields. The covers 
are composed of algebraic analogues of (open subsets of) covering maps in topology. By considering sheaves on this topology, we associate
a topos to any scheme over a finite field, $Shv(X_{ét})$, which we can think of as sheaves over the space $X_{ét}$. This also associates a cohomology to $X$ (usually take cohomology of some sort of constant sheaf on the base-change to alg. closure of the base-field)

How can we use this to count points? The basic idea is that any scheme over char p has a Frobenius endomorphism (relative to ${\mathbb{F}}_q$)

The scheme $X \times_{\mathbb{F}_q} {\bar{\mathbb{F}_q}}$, which we denote by $\bar{X}$ then has two Frobenii, 
one from the $\bar{X}$ itself and one from $\bar{\mathbb{F}_q}$. The 
difference of the two is a $\bar{\mathbb{F}_q}$-linear endomorphism from $\bar{X}$ to $\bar{X}^{(1)}$. Since $X$ was defined over $\mathbb{F}_q$
there's an isomorphism between $\bar{X}^{(1)}$ and $\bar{X}$. Hence, there's a $\bar{\mathbb{F}_q}$-linear endomorphism of $\bar{X}$ whose
fixed points are exactly the $\mathbb{F}_q$ points of $X$ (and they are index one fixed points).

Now, suppose we have some symmetric monoidal functor $H$ from $\bar{\mathbb{F}_q}$-(smooth and proper) Categories 
to Vector spaces over some ring. This happens
with etale K-theory over any characteristic. Over $l$-adics (for the base-change to alg closure) it is $K(1)$-local K-theory which is the same as bott-inverted étale cohomology
(for schemes!).
Over $p$-adics it coincides with TP. Then the calculation of traces can be done on either side. If we compute the traces of Frobenius
on QC(\bar{X}), we will get simply the category of sheaves on the points of $\bar{X}$ coming from $\mathbb{F}_q$ points. Mapping this category
to the right hand side gives a vector space with dimension equal to the number of points. Which means the trace of $\bar{\mathbb{F}_q}$
linear Frobenius on Bott-inverted étale cohomology or TP is equal to a vector space with dimension equal to the size of $X(\mathbb{F}_q)$. 
Instantly proving the Grothendieck-Lefshetz Trace Formula. (OK there was some work needed to prove that the functor is symmetric monoidal,
for TP see Antieau-Mathew-Nikolaus, for étale it is in SGA4.5 for example)

Let's think about this story a little bit more. The Frobenius on the l-adic etale K-theory can be constructed by the following.
Take a category $C$ over $\mathbb{F}_q$, and base-change to $\bar{\mathbb{F}_q}$. This has a canonical arithmetic (non-linear) Frobenius.
This gives the action of arithmetic Frobenius on the bott-inverted étale cohomology. For p-adic cohomology theory, one relates cyclotomic
Frobenius on TP to the Absolute Frobenius on Crystalline cohomology and use that to conclude. (Maybe a later post will touch on this)
Hence, the story really starts with just a $\mathbb{F}_q$-linear category. For the l-adic story see (Clausen-Mathew, 
Antieau-Mathew-Naumann-Noel, Antieau-Mathew-Morrow. For the p-adic story, there's Nikolaus-Scholze, and Tabuada. Note that on l-adic theory
the eigenvalues over KU_{\hat{l}} is coming from the standard eigenvalues. And in the TP story, in the absolute case, the eigenvalues
are size (in C) equal to degree because the eigenvalues are shifted.

By the way, the above story sheafifies to a scheme of course. Given a QC sheaf of categories, we can decategorify with l-adic or p-adic.
By G-L theory, we can translate the pushforward (do nothing) and pullback (QC pullback) of categories to the analogous operations on 
(2-periodic) sheaf theories. One can comtemplate a proof of Weil conjectures using QC sheaves of categories (conjecturally follows from the
theory at a point--$\mathbb{F}_q$-linear smooth proper categories.

Now that we've established the definitions of the cohomology theories, let us see how this allows us to attack the Weil Conjectures.
By the formula of the Zeta function we gave last time, we have
$$Z(s) = \exp(\sum_{n=1}^{\infty}{\frac{Tr(q^{-ns}Fr^n| H(X)}{n}})$$

But this is also the same as (after tensoring up to $\mathbb{C}$)

$$Z(s) = det ((1-q^{-s}Fr)^{-1}| H(X))$$

Finiteness of cohomology theories (which also comes directly from symmetric monoidalness in the 2-periodic case) immediately gives rationality.

Betti numbers comes from proper base-change of l-adic cohomology together with etale-singular comparison over $\mathbb{C}$, which is not 
something we have easy access to in 2-periodic sitations. Maybe p-adic should refer to prismatic cohomology.

Functional Equations next time!
