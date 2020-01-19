## Category Theory

This post is the second post in a series whose purpose is to talk about spectra from a modern point of view. In this post we will define what a category is. I will use the word category to mean what is commonly referred to as $(\infty,1)$ categories and as sets are for me discrete spaces, normal categories will be for me, categories with discrete mapping spaces. 

The approach to category theory will be more operadic. The preference of this approach for me is that one, there will be no straightening-unstraightening arguments, and two, it will generalize readily to other enriched categories.

To define a category we proceed as in normal category theory. We start with a collection (by this I always mean some type; there is no homotopy information here) of objects. Given any two objects $x$ and $y$, we will have a space of maps $\Hom(x,y)$. We will have two types of functions. Identity functions and composition functions. The starting point is as follows. For any object $x$, there should be a distinguished $0$-cell in the space $\mathrm{Hom}(x,x)$.

