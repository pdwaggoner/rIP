% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rIP.R
\name{getIPinfo}
\alias{getIPinfo}
\title{Passes an array of IP addresses to iphub.info and returns a dataframe with details of IP}
\usage{
getIPinfo(d, "i", "key")
}
\arguments{
\item{d}{Data frame where IP addresses are stored}

\item{i}{Name of the vector in data frame, d, corresponding to IP addresses in quotation marks}

\item{key}{User's X-key in quotation marks}
}
\value{
ipDF A dataframe with the IP address, country code, country name, asn, isp, block, and hostname.
}
\description{
Makes a call to an IP address verification service (iphub.info) that returns the information on the IP address, including the internet service provider (ISP) and whether it is likely a server farm being used to disguise a respondent's location.
}
\details{
Takes an array of IPs and the user's X-Key, and passes these to iphub.info. Returns a dataframe with the IP address (used for merging), country code, country name, asn, isp, block, and hostname.
}
\note{
Users must have an active iphub.info account with a valid X-key.
}
\examples{
id <- c(1,2,3,4) # fake respondent id's
ips <- c(123.232, 213.435, 234.764, 543.765) # fake ips
data <- data.frame(id,ips)
getIPinfo(data, "ips", "MzI3NDpJcVJKSTdIdXpQSUJLQVhZY1RvRxaXFsFW3jS3xcQ")
}
