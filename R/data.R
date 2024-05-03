#' Observed discharge data
#'
#' Observed discharge, stage, temperature and flow speed data 2004-2024 provided
#' by Autonomous Region FVG (Servizio Gestione Risorse Idriche)
#'
#' @format ## `obs_discharge`
#' A data frame with 9768 rows and 20 columns:
#' \describe{
#'   \item{Variable}{Variable}
#'   \item{Unit}{Unit}
#'   \item{Value}{Value}
#'   \item{IdMeasure}{ID of the measure}
#'   \item{Date}{Day of sampling}
#'   \item{TimeStart}{Begin of sampling time}
#'   \item{TimeEnd}{End of sampling time}
#'   \item{NoBranches}{Number of river's branches at the time of the measure}
#'   \item{Instrument}{Instrument}
#'   \item{Method}{Method}
#'   \item{NotesMeasure}{Notes to the measure}
#'   \item{StationCode}{ID of the station}
#'   \item{Municipality}{Municipality}
#'   \item{Province}{Province}
#'   \item{Location}{Location}
#'   \item{River}{River}
#'   \item{Basin}{Basin}
#'   \item{SubBasin}{Sub-basin}
#'   \item{Description}{ID of the station or something else}
#'   \item{NotesStation}{Notes to the station}
#' }
#' @source Regione Autonoma Friuli Venezia Giulia -- \href{https://www.regione.fvg.it/rafvg/cms/RAFVG/ambiente-territorio/tutela-ambiente-gestione-risorse-naturali/FOGLIA202/}{Servizio Gestione Risorse Idriche}
"obs_discharge"

#' Observed data of station N105
#'
#' Observed discharge and stage data 2008-2023 of station N105 provided
#' by Autonomous Region FVG (Servizio Gestione Risorse Idriche)
#'
#' @format ## `obs_n105`
#' A data frame with 29 rows and 4 columns:
#' \describe{
#'   \item{TimeStart}{Begin of sampling time}
#'   \item{StationCode}{ID of the station}
#'   \item{H}{Stage level (cm)}
#'   \item{Q}{River discharge (m3/s)}
#' }
#' @source Regione Autonoma Friuli Venezia Giulia -- \href{https://www.regione.fvg.it/rafvg/cms/RAFVG/ambiente-territorio/tutela-ambiente-gestione-risorse-naturali/FOGLIA202/}{Servizio Gestione Risorse Idriche}
"obs_n105"

#' Hourly stage data at station N105
#'
#' Observed hourly stage data 2003-2023 of station N105 provided
#' by ARPA FVG (OSMER)
#'
#' @format ## `hourly_n105`
#' A data frame with 176034 rows and 2 columns:
#' \describe{
#'   \item{datetime}{Time of observation}
#'   \item{H}{Stage level (m)}
#' }
#' @source ARPA FVG -- \href{https://www.meteo.fvg.it/}{OSMER}
"hourly_n105"
