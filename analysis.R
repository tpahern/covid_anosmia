# Ansomia and Covid-19 positivity
# UVMMC prospective cohort study
# Analysis by Thomas Ahern, PhD, MPH (02tahern@med.uvm.edu)

# clear objects and console
rm(list=ls())
cat("\f")

library(gmodels)

# load REDCap data created by cleaning script (clean_*.r)
load("~/OneDrive - UVM Larner College of Medicine/Projects/covid_anosmia/anosmia.Rdata")

sink("summary.txt")
summary(data)
sink()

tab_sex_race <- CrossTable(data$sex.factor, data$race.factor)