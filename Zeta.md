## Zeta Functions Part I: Varieties Finite Fields Generalities

Some credits to begin with, I'm kind of mostly copying from Mircea's notes https://dept.math.lsa.umich.edu/~mmustata/zeta_book.pdf for this post.
OK there'll be some interpretations from me but if you want the correct maths, probably good to look there for all the right formulas. Anyways,
let's begin.

Fix a prime power $q=p^b$. Mostly I'll think about the case $b=1$. Let $X$ be a variety over $\mathbb{F}_q$, smooth and projective. 
Let's first define the Zeta function using effective $0$-cycles (formal sum of points with nonnegative weights). For curves, $0$-dimensional
subschemes is also ok I think.

$$Z(s)=\sum_{v \in eff. 0-cycles}{|v|^{-s}}$$

where $|v|$ is the size of the $0$-cycle (for a point it will be the size of the residue field). Some people put like $T=q^{-s}$, but I'll mostly
try to avoid this. The advantage of $T$ is that it'll turn out that $Z(T)$ is a (derived) polynomial (LMAO ok I mean like rational function).

OK so I think one way you can think about these things is that there's some collection of physical systems indexed by points of $X$. Like
$X$ parametrizes particles by type or something (particles are basically irreducible representations of groups so you can think that way too if you hate
physics). So why is this perspective useful? Well in Statistical Mechanics there's this thing called like the partition function, and it's a sum
over representations, sorry I mean states, weighted by the energy of the states. You can read about this stuff here ->

https://en.wikipedia.org/wiki/Partition_function_(statistical_mechanics)
or here ->

https://twitter.com/johncarlosbaez/status/1522590103058587648

OK in case Twitter lasts shorter than this blog does (which at the time of writing this is not impossible?) Let me plagarize John Baez (big fan!)
here blatantly

""
In statistical mechanics the key function describing any system is its 'partition function' - I'll explain that soon.

Imagine a gas of 'primons', one for each prime, and say the primon p has energy ln(p).   
The partition function of this gas is the Riemann zeta function!

To get the 'partition function' of a system, sum exp(-E/kT) over all states where E is the energy of the state, k is Boltzmann's constant and T is temperature.

If you work this out for the primon gas, you get the Riemann zeta function ζ(s) where s=1/kT.
"" 
  
He says more cool stuff but if I quote it all I'll have nothing left to say so let's stop here. So anyway let's return to our topic.
In statistical mechanics, they define the partition function by
$$Z(Temp)=\sum_{v \in states}{e^{-E_v/Temp}}$$
I don't really care about Boltzmann's constant so I just didn't include it. So let me tell you the only thing I know about this function.
When $T$ is small, the system is too weak to reach high energy states. So main contributions are from small $E_v$. When $T$ is large basically
all states count the same. OK and how does it relate to us? Well we said the points are particles are irreducible representations, so the 
(non-interacting) states are given by giving a count of the number of each type of particle there are. (Maybe there's also some interpretation
of this stuff as interacting theories but that's above my pay-grade right now). And the particles with larger residue fields are supposed to have
higher energy levels (maybe they're heavier or something).

But all this gives another way to count our states. We can represent a state by specifying how many particles there are of each type. Then we have

$$Z(s) = \prod_{v \in particles/points}{\frac{1}{1-\|v\|^{-s}}}$$

and also

$$Z(s) = \exp(\sum_{v \in particles}{\sum_{n=1}^{\infty}{\frac{\|v\|^{ns}}{n}}})$$

and hence also

$$Z(s) = \exp(\sum_{n=1}^{\infty}{q^{-ns}\frac{|X(\mathbb{F}_{q^n})|}{n}})$$

OK so let's see some examples, for the first time in this blog. Mostly because I'm not sure I can ever remember these formulae/formuals correctly.
Let's just compute for $\mathbb{P}^K$ over $\mathbb{F}_q$. 
  
$$|\mathbb{P}^k(\mathbb{F}_{q^n})| = q^nK+q^{n(K-1)}+ \ldots + 1 = \frac{q^{K(n+1)}-1}{q^n-1}$$

And hence

$$Z(s) = \prod_{i=0}^{k}{\frac{1}{1-q^{i-s}}$$

