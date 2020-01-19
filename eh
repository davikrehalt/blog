<!-- wp:paragraph -->
<p>This post will be the first section of a story on spectra. I have to warn the reader that I have not made the maximal possible effort to verify the statements presented below and I have made no effort to verify that they are consistent with existing literature.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>To be an internal model is to give an explicit description of an object. The difference is somewhat similar to the difference between a construction of the real numbers (internal) and an axiomatization of the properties of the real numbers. That is, though the axiomatization will allow us to talk about properties of the reals as a whole, it will not lend itself to easy manipulation of actual real numbers. This example of the reals, however, is less catastrophic than other examples of external models, such as external models of sets or spaces.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>The internal model of spaces I will give will be similar to the definition of Kan complexes. In fact, there will be no real difference between them. I have, however, made an effort to eliminate the notion of equality from the model I will give. The reason is two-fold. One, I would like the model to be foundational. This means I would like all other parts of mathematics to follow the homotopical foundations given here. As is the case with any writing on foundations, it will be very difficult to verify many desirable traits, such as consistency. I will ignore them. Rather, I would like to punt these difficulties to some nice type theory foundation which I will build on, the existence of which I will simply accept. The second reason is that it gives the following concrete advantage. As there is no notion of equality, there is a certain indistinguishability of filled simplices and points. This is completely analogous to the situation of category theory built on types in that two copies of an object which are isomorphic is no different (by categorical equivalence) to one. The viewpoint taken by category built on type theory is that there can be no notion of categorical isomorphism which is more stringent than that of categorical equivalence.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>With so much preamble, we can finally start defining this model. The definition unfolds by levels, corresponding to the dimension of the simplices. That is, to define a space in this setting, we should define the $k$-simplices by increasing values of $k$. (For the truly pedantic, as I am building foundations, I do assume that I have already built $\mathbb{N}$ with type theory) For defining $0$-simplices, we simply require the data to consist of some collection, or type. For $1$-simplices, however, what we require is the following. For every pair of $0$-simplices (what will be the boundary), there should be a type consisting of $1$-simplices which have that boundary. Additionally, we will need a few helping functions. One, there should be a degeneracy function from $0$-cells to $1$-cells. Two, there should be a function from $1$-cells to $1$-cells corresponding to the fact that the boundary is ordered, so any $1$-simplex with boundary $a,b$ should give another with boundary $b,a$. The double application of this function needs to be identity. To state this identity, we need to have higher cells identifying them later. This process will continue. The data of $2$-simplices is as follows. Given three $0$-cells $a$, $b$, $c$ and three $1$-cells $l_1$, $l_2$, $l_3$ with boundaries $(b,c)$, $(a,c)$, and $(a,b)$, respectively, to allow a triangle in the middle, there is a collection of triangles with the specified boundaries. Here, once again we have degeneracy functions from $1$-cells to $2$-cells. Note that we need higher cells to ensure the commuting of degeneracies. Specifically, the commuting of degeneracies from level $0$ to $2$ will be fixed in levels $3$ and above. The permuting identifications (by permuting the boundaries) of level $1$ will start to be fixed at level $2$, but fix needs to be continued at every level. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>The above definition, continued, does give a definition of spaces, but it has a problem. That is, in our spaces, we would like edges to be joinable. To do this, we add in another function whose purpose is to join edges. This function, as do the others, has higher analogues. Namely, we will require all horns to be fillable. Extending what we've said so far gives our internal model of spaces. In fact, this filling will be unique in the sense that the space of fillings (which can be made sense of) will be contractible. A space $X$ is contractible if there is a homotopy from $X \times I$ to $X$ from the identity map to the map to a point.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>We of course are punting many details to the reader, but I hope the main idea is understandable. Next time, we will give a similar internal model for spectra. We note here that the definition of the classifying space of a groupoid may seem less mysterious now, with all its baggage, as we have seen that much of the data is intrinsic to our model of spaces.</p>
<!-- /wp:paragraph -->





<!-- wp:paragraph -->
<p>This post is the second post in a series whose purpose is to talk about spectra from a modern point of view. In this post we will define what a category is. I will use the word category to mean what is commonly referred to as $(\infty,1)$ categories and as sets are for me discrete spaces, normal categories will be for me, categories with discrete mapping spaces. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>The approach to category theory will be more operadic. The preference of this approach for me is that one, there will be no straightening-unstraightening arguments, and two, it will generalize readily to other enriched categories.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>To define a category we proceed as in normal category theory. We start with a collection (by this I always mean some type; there is no homotopy information here) of objects. Given any two objects $x$ and $y$, we will have a space of maps $latex \Hom(x,y)$. We will have two types of functions. Identity functions and composition functions. The starting point is as follows. For any object, there should be a distinguished $0$-cell in the space $\</p>
<!-- /wp:paragraph -->
