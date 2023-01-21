---
  title: "doc10"
author: "nik"
date: "18/10/2021"
output: html_document
---
  
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = F,warning = F)
```

```{r}
library(readxl)
library(ggplot2)
setwd("C:/Users/subha/OneDrive/Desktop/icssr2")
PerQty <- read_excel("PerQty.xlsx")
df<-data.frame(PerQty)


ggplot(df,aes(Age))+ geom_bar()
prop.table(table(df$Gender))*100
ggplot(df,aes(Religion))+ geom_bar()
ggplot(df,aes(Course))+ geom_bar()
ggplot(df,aes(Caste))+ geom_bar()
ggplot(df,aes(Class))+ geom_bar()
ggplot(df,aes(Funding))+ geom_bar()
prop.table(table(df$Urbanity))*100
ggplot(df,aes(Distance))+ geom_histogram()
ggplot(df,aes(Residence))+ geom_bar()
ggplot(df,aes(Transport))+ geom_bar()
ggplot(df,aes(Reference))+ geom_bar()
ggplot(df,aes(Fees))+ geom_freqpoly()
ggplot(df,aes(Avg.Qty.Index))+ geom_histogram()
ggplot(df,aes(Avg.Qty.Index.Round))+ geom_histogram()
ggplot(df,aes(Rating))+ geom_bar()


ggplot(df,aes(fill=Rating,Course))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Rating,Funding))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Rating,Class))+ geom_bar(position = "fill")
ggplot(df,aes(fill=Rating,Residence))+ geom_bar(position = "fill")
ggplot(df,aes(fill=Rating,Reference))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Rating,Religion))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Rating,Caste))+ geom_bar(position = "fill") #gg
ggplot(df[df$Age<25,],aes(fill=Rating,Age))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Rating,Gender))+ geom_bar(position = "fill") #gg

ggplot(df,aes(fill=Rating,Fees.Quart))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Rating,Fees.Quarter.Bin))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Fees.Quarter.Bin,Course))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Fees.Quarter.Bin,Class))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Fees.Quarter.Bin,Gender))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Fees.Quarter.Bin,Caste))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Fees.Quarter.Bin,Funding))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Fees.Quarter.Bin,Uni.name))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Fees.Quarter.Bin,Urbanity))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Fees.Quarter.Bin,Reference))+ geom_bar(position = "fill") #gg
ggplot(df,aes(fill=Fees.Quarter.Bin,Transport))+ geom_bar(position = "fill") #gg


ggplot(df,aes(fill=Fees.Quarter.Bin,Rating))+ geom_bar(position = "fill")+ facet_wrap(~Funding)

ggplot(df,aes(fill=Rating,Fees.Bin))+ 
  geom_bar(position = "fill")+ 
  facet_wrap(~Funding)

```{r}





