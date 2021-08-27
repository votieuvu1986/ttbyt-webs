library(DBI)
# Kết nối trực tiếp với database DA Server
con <- dbConnect(RPostgres::Postgres(),dbname = 'dadb', 
                 host = '10.0.0.23', 
                 port = 5432, 
                 user = 'da_user',
                 password = 'isofh#12345')

dbListTables(con)

# Tạo bạo dữ liệu của TBYT trong RStudio
res1 <- dbSendQuery(con, "SELECT * FROM tbyt")
while(!dbHasCompleted(res1)){
  tbyt <- dbFetch(res1)
  print(nrow(tbyt))
}

# Tạo bạo dữ liệu của VTYT trong RStudio
res2 <- dbSendQuery(con, "SELECT * FROM vtyt")
while(!dbHasCompleted(res2)){
  vtyt <- dbFetch(res2)
  print(nrow(vtyt))
}

# Tạo bạo dữ liệu của IVD trong RStudio
res3 <- dbSendQuery(con, "SELECT * FROM ivd")
while(!dbHasCompleted(res3)){
  ivd <- dbFetch(res3)
  print(nrow(ivd))
}



