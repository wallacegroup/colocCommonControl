\name{coloc.var.test.summary}
\alias{coloc.var.test.summary}
\title{Colocalisation testing for shared controls using regression coefficients}
\usage{
  coloc.var.test.summary(b1, b2, V, k = 1,
    plot.coeff = TRUE, plots.extra = NULL,
    bayes = !is.null(bayes.factor), n.approx = 1001,
    level.ci = 0.95, bayes.factor = NULL, bma = FALSE,
    nsnps = 2)
}
\arguments{
  \item{b1}{regression coefficients for trait 1}

  \item{b2}{regression coefficients for trait 2}

  \item{V}{variance-covariance matrix}

  \item{k}{Theta has a Cauchy(0,k) prior.  The default,
  k=1, is equivalent to a uniform (uninformative) prior.
  We have found varying k to have little effect on the
  results.}

  \item{plot.coeff}{\code{TRUE} if you want to generate a
  plot showing the coefficients from the two regressions
  together with confidence regions.}

  \item{bma}{parameter set to \code{TRUE} when
  \code{coloc.test} is called by \code{coloc.bma}.  DO NOT
  SET THIS WHEN CALLING \code{coloc.test} DIRECTLY!}

  \item{plots.extra}{list with 2 named elements, x and y,
  equal length character vectors containing the names of
  the quantities to be plotted on the x and y axes.

  \code{x} is generally a sequence of \code{theta} and
  \code{eta}, with \code{y} selected from
  \code{post.theta}, the posterior density of theta,
  \code{chisq}, the chi-square values of the test, and
  \code{lhood}, the likelihood function.}

  \item{bayes}{Logical, indicating whether to perform
  Bayesian inference for the coefficient of
  proportionality, eta.  If \code{bayes.factor} is
  supplied, Bayes factors are additionally computed for the
  specificed values.  This can add a little time as it
  requires numerical integration, so can be set to FALSE to
  save time in simulations, for example.}

  \item{bayes.factor}{Either a numeric vector, giving
  single value(s) of \code{eta} or a list of numeric
  vectors, each of length two and specifying ranges of eta
  which should be compared to each other.  Thus, the vector
  or list needs to have length at least two.}

  \item{level.ci,n.approx}{\code{level.ci} denotes the
  required level of the credible interval for \code{eta}.
  This is calculated numerically by approximating the
  posterior distribution at \code{n.approx} distinct
  values.}

  \item{nsnps}{The SNPs to consider as potential
  explanatory variables}

  \item{n.approx}{number of values at which to numerically
  approximate the posterior}
}
\value{
  an object of class coloc, colocBayes or colocBMA
}
\description{
  Colocalisation testing supplying only regression
  coefficients and their variance-covariants matrices
}
\details{
  Typically this should be called from
  \code{\link{coloc.var.test}()}, but is left as a public
  function, to use at your own risk, if you have some other
  way to define the SNPs under test.
}
\author{
  Chris Wallace

  Mary Fortune
}

