
require(mosaic)
read.file("AccountInfo.csv", header=FALSE, stringsAsFactors = FALSE) -> Accts
names(Accts) <- c("user","passwd")


for (i in 1:nrow(Accts)) {
  cat("\n\nHere is your login information for RStudio.\n\n")
  cat("url: http://104.237.138.79:8787\n\n")
  cat(paste("userid: ", Accts[i,"user"], "\n\n"))
  cat(paste("passwd: ", Accts[i,"passwd"], "\n\n"))
  cat("===\n")
  cat(Accts[i,"user"])
  cat("\n===\n")
}
