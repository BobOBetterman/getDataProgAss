# Analysis of the UCI Data Set for the Getting Data Coursera Class Project

This document describes how the accompanying code, `run_analysis.R`, takes the dataset given on the course project page and converts it into the tidy data set titled `tidyData.txt`.

## Code Documentation

1. The first thing the code does is load in each of the relevant parts of the data. It creates objects for the sets of measurements (`X_test` and `X_train`), as well as the identifying information for each set (`y_test`, `y_train`, and `subject_test`). It also creates an object for `features`, as this is necessary to label the measurements. After the measurement data is read in, each of the columns are labeled using the names from the `features` file.

2. The objects for the test set and train set each have to be combined into data sets describing which measurements belong to which subjects. These two data frames are then combined into one large data frame.

3. All the columns that don't identify the subject, measure the mean, or the standard deviation are then deleted from the data frame.

4. The current data frame describes each of the possible activies by a number, rather than a name. By reading in the activity labels from `activity_labels`, these values can be replaced with human readable values describing the actions taken.

5. Finally, the data is melted and recast to give us the means of each of the measurements for each possible combiniation of **Subject.ID** and **Activity.Labels**.
