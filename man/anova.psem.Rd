% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anova_psem.R
\name{anova.psem}
\alias{anova.psem}
\title{ANOVA and chi-squared difference test for model comparison}
\usage{
\method{anova}{psem}(object, ..., digits = 3, anovafun = "Anova")
}
\arguments{
\item{object}{a \code{psem} object}

\item{...}{additional objects of the same type}

\item{digits}{number of digits to round results. Default is 3}

\item{anovafun}{The function used for ANOVA. Defaults to \code{Anova}}
}
\value{
an F, LRT, or other table for a single model, or a list of
 comparisons between multiple models
}
\description{
Compute analysis of variance table for one or more structural equation models.
}
\details{
Additional models will be tested against the first model using a Chi-squared difference test.
}
\examples{
data(keeley)

mod1 <- psem(
lm(rich ~ cover, data = keeley),
lm(cover ~ firesev, data = keeley),
lm(firesev ~ age, data = keeley),
data = keeley
)

# get type II Anova
anova(mod1)

# conduct LRT
mod2 <- psem(
  lm(rich ~ cover, data = keeley),
  lm(cover ~ firesev, data = keeley),
  age ~ 1,
  data = keeley
)

anova(mod1, mod2)

}
\seealso{
\code{\link{Anova}}
}
\author{
Jon Lefcheck <lefcheckj@si.edu>, Jarrett Byrnes <jarrett.byrnes@umb.edu>
}
