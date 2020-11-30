## ----knitr, echo=FALSE, results="hide"-----------------------------------
library("knitr")
opts_chunk$set(
  tidy=FALSE,
  fig.show="hide",
  cache=TRUE,
  message=FALSE)

## ----<style,eval=TRUE,echo=FALSE,results='asis'-----------------------------------------
BiocStyle::latex()

## ----include=FALSE----------------------------------------------------------------------
library(knitr)
opts_chunk$set(
concordance=TRUE
)

## ----begain,results="hold",message=FALSE------------------------------------------------
library(xtail)
data(xtaildata)

## ---------------------------------------------------------------------------------------
mrna <- xtaildata$mrna
rpf <- xtaildata$rpf
head(mrna,5)
head(rpf,5)

## ---------------------------------------------------------------------------------------
condition <- c("control","control","treat","treat")

## ---------------------------------------------------------------------------------------
test.results <- xtail(mrna,rpf,condition,bins=1000)

## ----summary----------------------------------------------------------------------------
summary(test.results)

## ----inspectData,echo=TRUE--------------------------------------------------------------
test.tab <- resultsTable(test.results)
head(test.tab,5)

## ----writeResult,eval=FALSE-------------------------------------------------------------
#  write.table(test.tab,"test_results.txt",quote=F,sep="\t")

## ----writextailResult,eval=FALSE--------------------------------------------------------
#  write.xtail(test.results,"test_results.txt",quote=F,sep="\t")

## ----plotFCs,fig.width=5.5, fig.height=5.5----------------------------------------------
plotFCs(test.results)

## ----plotRs,fig.width=5.5, fig.height=5.5-----------------------------------------------
plotRs(test.results)

## ----volcanoPlot,fig.width=5.5, fig.height=5.5------------------------------------------
volcanoPlot(test.results)

## ----sessInfo---------------------------------------------------------------------------
sessionInfo()

