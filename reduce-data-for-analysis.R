df <- read.csv("data/opendata_export.csv")

# nur spalte q12
koenig_frage <- df$q12

koenig_frage <- koenig_frage[koenig_frage != "NULL"] # fehlende Daten sind als "NULL" kodiert -> rausschmeissen
koenig_frage <- koenig_frage[koenig_frage != "\n"] # some people only hit enter
koenig_frage <- koenig_frage[koenig_frage != " "] # some people only  hit space bar

# back into data frame format
koenig_frage_df <- data.frame(txt = koenig_frage)
write.csv(koenig_frage_df, "data/koenig_frage.csv")

# funky analysis
table(koenig_frage[nchar(koenig_frage) == 1])
