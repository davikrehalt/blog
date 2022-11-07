## Zeta Functions Part III : Functional Equations and Tate's Thesis

Last time we saw that using étale K-theory, we have the equation

$$Z(s) = det((1-q^{-s}Fr)| H(X))$$

for the Zeta function. Now, we will endeavor to show the functional equation.

First, what is a functional equation? It is a statement of the form that 
$$Z(k-s) = (something) Z(s)$$
where the something is easy.

How could this happen? Basically, we need to compare $Fr^{\vee}$ with $Fr$ on $H(X)$, which is canonically self-dual.

We again split off l-adic case and p-adic case.

Now let's turn to the second part of this post, which is tribute to curves, which Grothendieck viewed as the fundamental building blocks
of varieties (someone said this to me once, idk if he thought this way or not).

Here is something we can do (only) in the curves case, we also have the equation.

$$Z(s) = \sum_{L \in Pic(X)(\mathbb{F}_q)}{(\frac{q^{h^0(L)}-1}{q-1}q^{-s deg(L)}})$$

coming from the first definition of the Zeta function. This uses the fact that divisors define line bundles for curves, and the number
of states/divisors of each line bundle is the size of the ($\mathbb{F}_q$ points of) the projectivized global sections.
