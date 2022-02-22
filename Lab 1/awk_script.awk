
BEGIN{
	FS = ",";
	#printf("%5s %12s %12s %12s %12s %12s\n" , "rank", "total", "car_id", "year", "car make", "car model");

}

NR>1{
	for(i = 8; i <= NF; i++){
		total +=$i;
	}
	printf("%5s %12s %12s %12s %12s\n", total, $7, $4, $5, $6);
	total = 0;
}


END{	
}
