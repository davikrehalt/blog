## Zeta Functions

Let's talk a little bit about zeta functions.

First let's consider the following simple question. Suppose $X$ over some finite field is a proper smooth variety. We can count the number of points of $X$ over any extension field. Then we can put these integers (let me call them $\abs{X_n}$ ) into some generating function. Here are two common ones
$$\sum{|X_n|/n^s}$$
and
$$\sum{|X_n|q^n}$$
where $q=e^{2 \pi i t}$ and these are related by some form of Mellin Transform.

Let's look at something related. Take the Frobenius on l-adic cohomology (or something similar), then we have 
$$|X_n| = tr(F,H^*(X))$$
