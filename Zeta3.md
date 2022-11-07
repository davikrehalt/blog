## Zeta Functions Part III : Functional Equations and Tate's Thesis

Last time we saw that using étale K-theory, we have the equation

$$Z(s) = det((1-q^{-s}Fr)^{-1}| H(X))$$

for the Zeta function. Now, we will endeavor to show the functional equation.

First, what is a functional equation? It is a statement of the form that 
$$Z(k-s) = (something) Z(s)$$
where the something is easy.

How could this happen? Basically, we need to compare $Fr^{\vee}$ with $Fr$ on $H(X)$, which is canonically self-dual. The key input
is that pullback and pushforward along the Frobenius is (after decategorification) multiplication by $q^{dimension}$. We omit the details here.
The pushforward along the Frobenius is the dual to Frobenius pullback.

Now let's turn to the second part of this post, which is tribute to curves, which Grothendieck viewed as the fundamental building blocks
of varieties (someone said this to me once, idk if he thought this way or not).

Here is something we can do (only) in the curves case, we also have the equation.

$$Z(s) = \sum_{L \in Pic(X)(\mathbb{F}_q)}{(\frac{q^{h^0(L)}-1}{q-1}q^{-s deg(L)}})$$

coming from the first definition of the Zeta function. This uses the fact that divisors define line bundles for curves, and the number
of states/divisors of each line bundle is the size of the ($\mathbb{F}_q$ points of) the projectivized global sections.

The zeta function is some sort of Fourier analysis on the number of states of the variety. We make a note here that in Fourier analysis,
the fourier transform of distributions/hyperfunctions are distributions/hyperfunctions which means they have meaningful contributions away
from the real points of the domain. These are where the zeros of the Zeta functions live.

The number of states of a given energy $q^n$ can also be calculate as follows. It is the number of $\mathbb{F}_q$ points of $Sym^n(X)$.
In the non-stacky sense. We can see this also from the $H(X)$ presentation. Namely, since it is (in the genuine Sym sense)
$$Tr(Sym^n(Fr) | Sym^n H(X))$$

So the Zeta function is a Fourier analysis of the number of points on $Sym^n(X)$ as a function of n.
But since $Sym$ is fibered over $Pic(X)(\mathbb{F}_q)$, we can do Fourier Analysis on Pic(X) instead. In particular,
we can restrict to any point of $Pic^0$ and do Fourier analysis on the points of $Sym$ above translates of that point (using a fixed
point of the curve). This sort of computation is what Tate did, and why Riemann-Roch can prove functional equations for curves.

Comparing with Riemann Zeta, we have to conclude that theta function serves as cohomology on $Sym^t(\bar{\mathbb{Z}})=\bar{\mathbb{Z}}$
and the cohomology should be $L^2(S^1)$ with the exponential action of the laplacian. 
Maybe the l-adic sheaf theory should have an analogue of $\mathbb{C}^{\times}$-equivariant sheaves on complex manifolds, which can recover
certain sheaves on $\mathbb{RP}^n$. This should have some form of function-sheaf correspondence maybe.
