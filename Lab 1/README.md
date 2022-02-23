Contents in the repo:

data_lab1 : a submodule which holds the file data.csv
awk_script.awk : an awk script that gets the value Total
output.csv : a csv file that holds the unsorted list, which includes total but does not have rank
Temp.csv : a csv file that holds the sorted list for part one
top_thee.awk : an awk script that attempts to find the top three values for each car
Makefile: a makefile which can run make_lab1

Description of data:
	
	for temp.csv:
	There are the fields of rank, total, car_id, year, car make, and car model. Total was obtain from getting the sum of columns 8 to 32 of data.csv. The car_id, year, car make, and car model is taken directly from data.csv, but is ordered using the sort command based on the total. Rank is added to the sorted data by inserting a column in the front of the list which consists of increasing numbers, starting from 1. The header is added at the end.

List of dependancies: 
