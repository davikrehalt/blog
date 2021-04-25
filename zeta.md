## Zeta Functions

Let's talk a little bit about zeta functions.

First let's consider the following simple question. Suppose $X$ over some finite field is a proper smooth variety. We can count the number of points of $X$ over any extension field. Then we can put these integers (let me call them $#(X_n)$) into some generating function.
$$\sum{#(X_n)/q^{ns}}$$

Let's look at something related. Take the Frobenius on l-adic cohomology (or something similar), then we have 
$$#(X_n) = tr(F,H^*(X))$$

So the first generating function above is in a undefined sense the same as 
$$tr(\frac{1}{1-q^{-s}F},H^*(X))$$

More familar is to take the characteristic function of $F$ wrt to $q^{-s}$
This has a sum interpretation as
$$exp(\sum{#(X_n)}{nq^{ns}}})$$
