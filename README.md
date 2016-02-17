## Introduction

The files in this repo contain exploratory graphs along with the code to generate them. The data set they depict can be found at <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets.The zip file with the data is here: 

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]


## Using the R scripts

In order to use the four plotting scripts, you must first save the "download_and_read_in_data.R" file in your working directory. The plotting scripts all use this one as a primary source and will not run otherwise. This file contains a script that loads relevant libraries, then downloads and unzips the dataset to your working directory if it is not already there. If the data set is already downloaded (and stored as a .txt), this script will simply parse the file to tidy it up for use by the plotting scripts.


## Making Plots

To replicate the png file plots in this repo, run each of the four plot scripts. Note that because they save the plots to png, you will not see them generate on the screen device during you R session. 


