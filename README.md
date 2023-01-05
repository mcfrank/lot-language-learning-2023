# lot-language-learning-2023

Materials for LOT School 2023, "Language Learning: A Data-Driven Approach"

Instructor: [Michael C. Frank](http://web.stanford.edu/~mcfrank) (Stanford)

## Course Description

In this course, we will examine early language learning through the lens of new data resources that facilitate quantitative studies. Our framework will be the "Standard Model" of Kachergis, Marchman, and Frank (2022) that links language input to processing and learning outcomes, and we will consider the strengths and weaknesses of this model for describing vocabulary learning as well as the learning of some morphology and syntax. Our hands-on approach will involve learning the use of CHILDES and childes-db for studying language input, Wordbank for studying language outcomes, and Peekbank for studying processing.

Prerequisite: Some knowledge of R sufficient to manipulate datasets from these resources.

Additional useful tools: familiarity with github for version control and the [tidyverse](http://www.tidyverse.org) for data manipulation and visualization.

## Learning Goals

-   Discuss the "standard model" framework for early word learning, focusing on input, processing, and uptake constructs,
-   Learn a reproducible workflow for exploring language acquisition data in R, and
-   Explore data from Wordbank, CHILDES, and Peekbank as a source of insights into language learning.

## Software

Before we start, please ensure you have installed a recent version of:

- R and R Studio - follow instructions here: [https://posit.co/download/rstudio-desktop/]()
- The tidyverse - write `install.packages("tidyverse")` in R once you have it installed

If these are not working on your computer, you won't be able to do any of the in-class assignments, which will make up the bulk of the course.

## Course Schedule

### Day 1: Foundations and workflow

Readings:

-   [Frank et al. (2021) Chapter 1, "Theoretical Foundations"](https://langcog.github.io/wordbank-book/intro-theory.html)
-   [Kachergis, Marchman, & Frank (2022), "Towards a standard model"](https://journals.sagepub.com/doi/full/10.1177/09637214211057836)

Agenda:

-   Introduce the data-driven perspective on early language learning acquisition
-   Discuss the three instruments/data sources used in the course: the MacArthur-Bates CDI, CHILDES, and the Looking While Listening paradigm
-   Practice the toolset (github, RMarkdown, and the Tidyverse) that we will use for the remainder of the course

### Day 2: Characterizing vocabulary growth with Wordbank

Readings:

-   [Bates et al. (1994), "Developmental and stylistic variation"](https://web.stanford.edu/group/langlearninglab/cgi-bin/publications/Bates,%20Marchman,%20Thal,%20et%20al%201994.pdf)
-   Frank et al. (2021), Chapters 11 and 13, ["Vocabulary composition"](https://langcog.github.io/wordbank-book/categories-syntactic.html) and ["Morphology, Grammar, and the Lexicon"](https://langcog.github.io/wordbank-book/grammar.html)

Agenda:

-   Take an in-depth look at Wordbank and the use of CDI data
-   Explore how to create reproducible pipelines with Wordbank data
-   Reproduce analyses on the composition of early vocabulary from Bates et al. (1994)

### Day 3: Accessing language input with CHILDES and childes-db

We'll be using [CHILDES](https://childes.talkbank.org) and accessing it via [childes-db](http://childes-db.stanford.edu). You can install `childesr` from CRAN via `install.packages("childesr")`. 

Readings:

-   [MacWhinney & Snow (1990), "CHILDES: an update"](https://psyling.talkbank.org/years/1990/jcl-update.pdf)
-   [Sanchez\**,* Meylan\* et al. (2019), "childes-db: a a flexible and reproducible interface"](https://link.springer.com/article/10.3758/s13428-018-1176-7)

Goals:

-   Learn about CHILDES and the CHAT format
-   Discuss issues of frequency and frequency estimation from corpus data
-   Reproduce analyses of the development of disjunction from [Jasbi, Jaggi, Clark, & Frank (2022)](https://www.cambridge.org/core/journals/journal-of-child-language/article/abs/contextdependent-learning-of-linguistic-disjunction/D88F848F43230EE00A6474E4400A75AF). 

### Day 4: Exploring online processing using Peekbank

We'll be working with data from [Peekbank](http://peekbank.stanford.edu) and using the `peekbankr` package, which can be installed via `remotes::install_github("langcog/peekbankr")`.

Readings:

-   [Fernald et al. (1998), "Rapid gains in speed of verbal processing"](https://journals.sagepub.com/doi/10.1111/1467-9280.00044)
-   [Zettersten et al. (2022), "Peekbank: an open, large-scale repository"](https://link.springer.com/article/10.3758/s13428-022-01906-4)

Agenda:

-   Introduce the looking-while-listening paradigm
-   Discuss the role of online language processing in language learning
-   Reproduce and extend results from [Swingley & Aslin (2002)](https://doi.org/10.1111%2F1467-9280.00485).

We will devote five minutes at the end of class to talking about the group projects on Friday.

### Day 5: Group projects

On the final day of the course, we will primarily be doing group projects. The goal of a group project is to work together to develop some of the ideas we have discussed. 

Groups will be 2 - 3 people (more makes it impossible to code together all looking at the same screen). 

You are encouraged to come up with your own project idea, and I am happy to talk with students about how to use these resources to explore your own interests. Here are a few "starter ideas":

- Explore effects of maternal education on vocabulary growth (Wordbank)
- Characterize the developmental trajectory of children's lexical diversity (e.g., MTLD) and how it differs by gender (CHILDES)
- Estimate the frequencies of color terms (or some other interesting set of words) in speech to children over age (CHILDES)
- Explore cross-linguistic linkages between CHILDES frequency and learning outcomes in either Wordbank or Peekbank

