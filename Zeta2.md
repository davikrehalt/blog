## Zeta Functions Part II: Using Cohomology Theories (Weil Conjectures \ Riemann Hypothesis)

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

Now, suppose we have some symmetric monoidal functor $H$ from $\bar{\mathbb{F}_q}$-Categories to Vector spaces over some ring. This happens
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
This gives the action of arithmetic Frobenius on the bott-inverted étale cohomology. 


By the way, the above story sheafifies to a scheme of course. Give

Now that we've established the definitions of the cohomology theories, let us see how this allows the resolution of Weil Conjectures.
By the formula of the Zeta function we gave last time, we have
$$Z(s) = \exp(\sum_{n=1}^{\infty}{\frac{Tr(q^{-ns}Fr^n| H(X)}{n}})$$

But this is also the same as (after 
