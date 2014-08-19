\name{ses}
\alias{ses}
\docType{data}
\title{
Synthetic SES survey data
}
\description{
This data set is a subset of synthetically generated real Austrian SES (Structural Earnings Survey) data.
}
\usage{data(ses)}
\format{
  A data frame with 115691  observations on the following 28 variables.
  \describe{
    \item{\code{location}}{geographical location with levels \code{AT1} 
      (eastern Austria), \code{AT2} (southern Austria), and \code{AT3} 
      (western Austria).
    } 
    \item{\code{NACE1}}{economic branch given in NACE (C - O) 1-digit 
      classification.
    }
    \item{\code{size}}{employment size range in 5 categories.}
    \item{\code{economicFinanc}}{form of economic and financial control (levels 
      \code{A} = public and financial control, \code{B} = private control).
    }
    \item{\code{payAgreement}}{collective bargaining agreement with levels 
    \code{A} = national level pay agreement or interconfederal agreement, 
    \code{B} = industry agreement, 
    \code{C} = agreement of individual industries in individual regions,
    \code{D} = enterprise or single employer agreement,
    \code{E} = agreement applying only to workers in the local unit,
    \code{F} = any other type of agreement,  
    \code{N} = no collective agreement exists
    }
    \item{\code{IDunit}}{ID for place of employment.}
    \item{\code{sex}}{gender with levels \code{female} and \code{male}.}
    \item{\code{age}}{age in age classes.}
    \item{\code{education}}{highest education.}
    \item{\code{occupation}}{occupation with levels \code{11} = Legislators and 
      seniors officials,
    \code{12} = Corporate managers,
    \code{13} = Managers of small enterprises,
	\code{21} = Physical, mathematical and engineering science professionals,
	\code{22} = Life science and health professionals,	
	\code{23} = Teaching professionals,
    \code{24} = Other professionals,
	\code{31} = Physical and engineering science associate professionals,
	\code{32} = Life science and health associate professionals, 
	\code{33} = Teaching associate professionals, 
	\code{34} = Other associate professionals,
	\code{41} = Office clerks, 
	\code{42} = Customer services clerks,
	\code{51} = Personal and protective services workers, 
	\code{52} = Models, salespersons and demonstrators,
	\code{61} = Skilled agricultural and fishery workers,	
	\code{71} = Extraction and building trades workers, 
	\code{72} = Metal, machinery and related trades workers,
	\code{73} = Precision, handicraft, craft printing and related trades workers,
	\code{74} = Other craft and related trades workers,
	\code{81} = Stationary plant and related operators,
	\code{82} = Machine operators and assemblers,
	\code{83} = Drivers and mobile plant operators,
	\code{91} = Sales and services elementary occupations,
	\code{92} = Agricultural, fishery and related labourers, 
	\code{93} = Labourers in mining, construction, manufacturing and transport 
	}
    \item{\code{contract}}{type of contract.  Levels \code{A} = indefinite 
      duration, employment contract, \code{B} = temporary fixed duration 
      \code{C} = apprentice.
    }
    \item{\code{fullPart}}{full-time working time (FT) or part-time employee 
      (PT).
    }
    \item{\code{lengthService}}{The total length of service in the enterprises 
      in the reference month is be based on the number of completed years of 
      service.}
    \item{\code{weeks}}{the number of weeks in the reference year to which 
      the gross annual earnings relate is mentioned.  That is the employee's 
      working time actually paid during the year and should correspond to the 
      actual gross annual earnings.
      }
    \item{\code{hoursPaid}}{the number of hours paid in the reference month 
      which means these hours actually paid including all normal and overtime 
      hours worked and remunerated by the employee during the month.
    }
    \item{\code{overtimeHours}}{the number of overtime hours paid in the 
      reference month.  Overtime hours are those worked in addition to those of 
      the normal working month.
    }
    \item{\code{shareNormalHours}}{the share of a full timer's normal 
      hours.  The hours contractually worked of a part-time employee are 
      expressed as percentages of the number of normal hours worked by a 
      full-time employee in the local unit.
    }
    \item{\code{holiday}}{the annual days of holiday leave (in full days).}
    \item{\code{notPaid}}{examples of annual bonuses and allowances are 
      Christmas and holiday bonuses, 13th and 14th month payments and 
      productivity bonuses, hence any periodic, irregular and exceptional 
      bonuses and other payments that do not feature every pay period.  Besides 
      the main difference between annual earnings and monthly earnings is the 
      inclusion of payments that do not regularly occur in each pay period.
    }
    \item{\code{earningsOvertime}}{earnings related to overtime.}
    \item{\code{paymentsShiftWork}}{These special payments for shift work are 
      premium payments during the reference month for shirt work, night work or 
      weekend work where they are not treated as overtime.
    }
    \item{\code{earningsMonth}}{the gross earnings in the reference month 
      covers remuneration in cash paid during the reference month before any 
      tax deductions and social security deductions and social security 
      contributions payable by wage earners and retained by the employer.
    }
    \item{\code{earnings}}{gross annual earnings in the reference year.}
    \item{\code{earningsHour}}{hourly earnings, being the quotient of monthly 
      earnings and the number of hours paid in the reference month.
    }
    \item{\code{weightsEmployers}}{sampling weights in the first stage at 
      employer level.
    }
    \item{\code{weightsEmployees}}{sampling weights corresponding to the second 
      stage at employee level.
    }
    \item{\code{weights}}{the final sampling weights, which is the product of 
      \code{weightsEmployers} and \code{weighsEmployees}.
    }
  }
}
\details{
The Structural Earnings Survey (SES) is conducted in almost all European
Countries, and the most important figures are reported to Eurostat.  SES is a 
complex survey of enterprises and establishments with more than 10 employees, 
NACE C-O, including a large sample of employees.  In many countries, a 
two-stage design is used where in the first stage a stratified sample of 
enterprises and establishments on NACE 1-digit level, NUTS 1 and employment 
size range is used, and large enterprises have higher inclusion 
probabilities.  In stage 2, systematic sampling is applied in each enterprise 
using unequal inclusion probabilities regarding employment size range 
categories.

The data set in the package consists of enterprise and employees data from 500 
places of work.  Note that this is a subset of synthetic data set that is 
simulated from the original Austrian SES data.
}
\author{
  Matthias Templ, Karoline Geissler
}
\source{
This is a synthetic data set based on Austrian SES data from 2006. 
}
\references{
A. Alfons and M. Templ (2013) Estimation of Social Exclusion Indicators from 
Complex Surveys: The \R Package \pkg{laeken}.  \emph{Journal of Statistical 
Software}, \bold{54}(15), 1--25.  URL \url{http://www.jstatsoft.org/v54/i15/}

T. Geissberger (2009) Verdienststrukturerhebung 2006, Struktur und Verteilung 
der Verdienste in Oesterreich, Statistik Austria, ISBN 978-3-902587-97-8.

M. Templ (2012) Comparison of perturbation methods based on pre-defined quality 
indicators, \emph{UNECE Work Session on Statistical Data Editing}, Tarragona, 
Spain.
}
\examples{
data(ses)
summary(ses)
}
\keyword{datasets}
