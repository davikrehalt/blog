## Stable Categories

For this post we will describe a simple yet extremely important property of the category of spectra, namely the fact that it is an example of a stable infinity category. First we will need some simple category theory. For any two categories $\mathcal{C}$ and $\mathcal{C'}$, the functor category is a category where the $0$-cells are functors as we discussed before. Between two functors, we have a space of natural transformations. There are some cardinality issues, which we will punt to our type theory having universes. (Additionally I would like to note at this point that we also assume some version of choice in our type theory) Suppressing details, we can define such a category where the input category is small ($\mathrm{Fun}(\mathcal{C},\mathcal{C'})$). (Note here that the collections of categories is a $2$-category. We can define $n$-categories as categories enriched over $n-1$-categories fairly easily using a similar definition to our definition of categories)

It is clear how to define initial and final objects, namely just by asking for the relevant $\mathrm{Hom}$ space to be contractible. To define (homotopy, which is assumed because nothing else could make sense) limits and colimits, we ask for the final or initial object of the category of cones with a fixed base (being the diagram we want to find the limit/colimit of). As in normal category theory, if we have all limits of a particular form, then we have an adjunction between the functor category and the original category. A stable category is a pointed category with fibres and cofibre such that every fibre sequence is a cofibre sequence. Let's define what this means. A pointed category is a category with a zero object--which is both initial and final. The fibre of a map $f:a \to b$ is the map $g$ in the following pullback diagram. In this case we say 
$$z \xrightarrow[g] a \xrightarrow[f] b$$
is a fibre sequence.

$$\require{AMScd}
\begin{CD}
z @>{g}>> a;\\
@VVV @V{f}VV \\
0 @>>> b;
\end{CD}$$

The cofibre/cofibre sequence is just the dual (Duality in category theory in the homotopy coherent situation is completely analogous to the duality in normal category theory). 

For the next part, we will show some properties that stable categories have which makes them so nice. To do this, we first note that every limit can be generated with equalizers and products, much as in discrete category theory. We also note that we can define suspension as the pushout of two maps to the zero object (or the 