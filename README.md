## getDataProject is a repo for a course project of "Getting and Cleanning Data"
###There are 4 files in this repo:
1. README.md: this file to explain basic information for this repo.
2. run_analsysis.R: The R script to download the raw data and processes to a tidy data by the following steps:
	* load libraries (plyr,dplyr,reshape2) required by this script. If these libraries haven't be installed, please use install.packages() to install these libraries before running the script.
	* download the raw data and unzip it.
	* merges the training and the test sets to create one data set
	* extracts the columns on the means and standard deviation
	* replace numric values in activity labels column with descriptive activity names 
	* update the column names with descriptive variable names
	* create a tidy set with the average of each variable for each actvitity and each subject, save it as a text file "tidySet.txt"
	
3. codebook.md: the code book describing the data and variables in the tidy dataset.
4. tidySet.txt: the tidy data set generated by the script run_analysis.R
 
