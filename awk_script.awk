
BEGIN{
	FS = ","
	printf("%5s %12s %12s %12s %12s\n" ,"car_id", "year", "car make", "car model", "total")

}

NR>1{
	for(i = 9; i < NF-1; i++){
		total +=$i;
	}
	printf("%5s %12s %12s %12s %12s\n", $7, $4, $5, $6, total);
	total = 0;
}

END{
	
}
