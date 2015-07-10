# Exploratory Data Analysis
## Project 1

Within this repository are the 4 R programs for the first project for the Exploratory Data Analysis course from Johns Hopkins University offered through Coursera. The included .png files are generated via the similarly named R programs.

All plots were generated from the [Electric Power Consumption](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip) dataset from the UC Irvine Machine Learning Repository. The target dataset used to generate plots is from February 1, 2007 to February 2, 2007.

**NOTE** While all images in the reference assignment appear to have a white background, they are actually transparent. [Reference](https://github.com/sdfuhdkjfn/ExData_Plotting1/tree/master/figure)

### plot1.R
plot1(dataset_file_location)

This plot was generated using the hist() function to show the global active power use as a function of frequency.

### plot2.R
plot2(dataset_file_location)

This plot was generated using the plot() and axis() functions to show the global active power use as a function of time over the two sampled dates.

### plot3.R
plot3(dataset_file_location)

This plot was generated using the plot(), axis(), lines(), and legend() functions to show the power usage of a kitchen (Sub_metering_1), laundry room (Sub_metering_2), and a water heater / air conditioner (Sub_metering_2) as a function of time over the two sampled dates.

### plot4.R
plot4(dataset_file_location)

This plot was generated using the plot(), axis(), lines(), and legend() functions to show the voltage and global reactive power use as a function of time over hte two sampled dates. It also includes the plots from plot2.R and plot3.R

