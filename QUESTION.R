TargetURL <- ("https://www.mouser.tw/Semiconductors/Discrete-Semiconductors/Transistors/MOSFET/_/N-ax1sf/")
Target <- read_html(TargetURL)
a <- html_nodes(Target, ".SearchResultsTable")
#目前情況
rtest <- html_nodes(a,".PriceBreaks") %>% html_text()
rtest2 <- gsub("\n|\t|\r","q", rtest)
rtest3 <- strsplit (rtest2,"q")


#嘗試替換g
g <- character(0)
rtest <- html_nodes(a,".PriceBreaks") %>% html_text()
rtest2 <- gsub("\n|\t|\r",g, rtest)
rtest3 <- strsplit (rtest2,"q")