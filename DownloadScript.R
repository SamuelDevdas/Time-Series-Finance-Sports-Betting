##THE Beginning of great stuff
#RSA win

date <- as.Date("2023-05-23")

while (date<"2023-12-04") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesrsawin",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/rsa/win/dwbfpricesrsawin",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}
#################################################################################################################################################################################################

#RSA place

date <- as.Date("2023-05-23")

while (date<"2023-12-04") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesrsaplace",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/RSA/place/dwbfpricesrsaplace",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}
############################################################################################################################


#IRE win

date <- as.Date("2023-05-23")

while (date<"2023-12-04") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesirewin",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/IRE/win/dwbfpricesirewin",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}
#################################################################################################################################################################################################

#IRE place

date <- as.Date("2023-05-23")

while (date<"2023-12-04") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesireplace",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/IRE/place/dwbfpricesireplace",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}
############################################################################################################################
###########################################################################################################################################
#UK win

date <- as.Date("2023-12-04")

while (date<"2024-05-03") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesukwin",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/UK/win/dwbfpricesukwin",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}
#################################################################################################################################################################################################

#UK place

date <- as.Date("2023-12-04")

while (date<"2024-05-03") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesukplace",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/UK/place/dwbfpricesukplace",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}
############################################################################################################################
#USA win


date <- as.Date("2012-10-01")

while (date<"2022-05-18") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesusawin",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/USA/win/dwbfpricesusawin",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}


#################################################################################################################################################################################################

#USA place

date <- as.Date("2012-10-01")

while (date<"2022-05-18") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesusaplace",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/USA/place/dwbfpricesusaplace",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}
############################################################################################################################
#AUS win

date <- as.Date("2012-10-01")

while (date<"2022-05-18") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesauswin",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/AUS/win/dwbfpricesauswin",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}
#################################################################################################################################################################################################

#AUS place

date <- as.Date("2012-10-01")

while (date<"2022-05-18") {
  
  form_date <- format(date,"%d%m%Y")
  url<-paste0("https://promo.betfair.com/betfairsp/prices/dwbfpricesausplace",form_date,".csv")
  destfile<-paste0("C:/Users/RonaldSchwalb/9124505 GRS Actuarial Consulting (Pty) Ltd/R+S Personal - Documents/Betbot/HorseRacingData/AUS/place/dwbfpricesausplace",form_date,".csv")
  
  skip_to_next <- FALSE
  
  tryCatch(download.file(url, destfile), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { date <- date+1 }  
  
  date <- date+1
  
}

###########################################################################################################################################










