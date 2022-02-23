lab_1:

	awk -f awk_script.awk data_lab1/data.csv > output.csv

	awk '{print $$0 | "sort -u"}' output.csv > temp.csv

	awk '{print NR  " " $0}' temp.csv > output.csv

	nl -w3 -s' ' temp.csv > output.csv

	awk 'BEGIN { OFS=", "; print "rank", "total", "car_id", "year", "car make", "car model" } { print $$1, $$2, $$3, $$4, $$5, $$6 }' output.csv > temp.csv