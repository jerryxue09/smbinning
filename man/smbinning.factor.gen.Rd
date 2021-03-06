% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smbinning.R
\name{smbinning.factor.gen}
\alias{smbinning.factor.gen}
\title{Utility to generate a new characteristic from a factor variable}
\usage{
smbinning.factor.gen(df, ivout, chrname = "NewChar")
}
\arguments{
\item{df}{Dataset to be updated with the new characteristic.}

\item{ivout}{An object generated after \code{smbinning.factor}.}

\item{chrname}{Name of the new characteristic.}
}
\value{
A data frame with the binned version of the characteristic analyzed with \code{smbinning.factor}.
}
\description{
It generates a data frame with a new predictive characteristic from a factor variable after the binning process.
}
\examples{
# Package loading and data exploration
library(smbinning) # Load package and its data
data(chileancredit) # Load smbinning sample dataset (Chilean Credit)
chileancredit.train=subset(chileancredit,FlagSample==1)
chileancredit.test=subset(chileancredit,FlagSample==0)
result=
smbinning.factor(df=chileancredit.train,y="FlagGB",x="IncomeLevel")
result$ivtable

# Generate new binned characteristic into a existing data frame
chileancredit=
  smbinning.factor.gen(chileancredit,result,"gInc") # Update population
}

