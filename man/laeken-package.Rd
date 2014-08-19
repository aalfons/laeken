\name{laeken-package}
\alias{laeken-package}
\alias{laeken}
\docType{package}
\title{
Estimation of indicators on social exclusion and poverty
}
\description{
Estimation of indicators on social exclusion and poverty, as well
    as Pareto tail modeling for empirical income distributions.
}
\details{
\tabular{ll}{
Package: \tab laeken\cr
Type: \tab Package\cr
Version: \tab 0.4.6\cr
Date: \tab 2014-08-19\cr
Depends: \tab R (>= 2.10.0), boot, MASS\cr
License: \tab GPL (>= 2)\cr
}

Index:
\preformatted{
arpr                    At-risk-of-poverty rate
arpt                    At-risk-of-poverty threshold
bootVar                 Bootstrap variance and confidence intervals of
                        indicators on social exclusion and poverty
calibVars               Construct a matrix of binary variables for
                        calibration
calibWeights            Calibrate sample weights
eqInc                   Equivalized disposable income
eqSS                    Equivalized household size
eusilc                  Synthetic EU-SILC survey data
fitPareto               Fit income distribution models with the Pareto
                        distribution
gini                    Gini coefficient
gpg                     Gender pay (wage) gap.
incMean                 Weighted mean income
incMedian               Weighted median income
incQuintile             Weighted income quintile
laeken-package          Estimation of indicators on social exclusion
                        and poverty
meanExcessPlot          Mean excess plot
minAMSE                 Weighted asymptotic mean squared error (AMSE)
                        estimator
paretoQPlot             Pareto quantile plot
paretoScale             Estimate the scale parameter of a Pareto
                        distribution
paretoTail              Pareto tail modeling for income distributions
plot.paretoTail         Diagnostic plot for the Pareto tail model
prop                    Proportion of an alternative distribution
qsr                     Quintile share ratio
replaceTail             Replace observations under a Pareto model
reweightOut             Reweight outliers in the Pareto model
rmpg                    Relative median at-risk-of-poverty gap
ses                     Synthetic SES survey data
shrinkOut               Shrink outliers in the Pareto model
thetaHill               Hill estimator
thetaISE                Integrated squared error (ISE) estimator
thetaLS                 Least squares (LS) estimator
thetaMoment             Moment estimator
thetaPDC                Partial density component (PDC) estimator
thetaQQ                 QQ-estimator
thetaTM                 Trimmed mean estimator
thetaWML                Weighted maximum likelihood estimator
utils                   Utility functions for indicators on social
                        exclusion and poverty
variance                Variance and confidence intervals of indicators
                        on social exclusion and poverty
weightedMean            Weighted mean
weightedMedian          Weighted median
weightedQuantile        Weighted quantiles
}

Further information is available in the following vignettes:
\tabular{ll}{
\code{laeken-intro} \tab Estimation of Social Exclusion Indicators From Complex Surveys: The R Package laeken (source, pdf)\cr
\code{laeken-pareto} \tab Robust Pareto Tail Modeling for the Estimation of Indicators on Social Exclusion using the R Package laeken (source, pdf)\cr
\code{laeken-standard} \tab Standard Methods for Point Estimation of Indicators on Social Exclusion and Poverty using the R Package laeken (source, pdf)\cr
\code{laeken-variance} \tab Variance Estimation of Indicators on Social Exclusion and Poverty using the R Package laeken (source, pdf)\cr
}
}
\author{
Andreas Alfons [aut, cre],
  Josef Holzer [aut],
  Matthias Templ [aut]

Maintainer: Andreas Alfons <alfons@ese.eur.nl>
}
\references{
A. Alfons and M. Templ (2013) Estimation of Social Exclusion Indicators from
Complex Surveys: The \R Package \pkg{laeken}.  \emph{Journal of Statistical
Software}, \bold{54}(15), 1--25.  URL \url{http://www.jstatsoft.org/v54/i15/}

A. Alfons, M. Templ, P. Filzmoser (2013) Robust estimation of economic
indicators from survey samples based on Pareto tail modeling. \emph{Journal of
the Royal Statistical Society, Series C}, \bold{62}(2), 271--286.
}
\keyword{package}
