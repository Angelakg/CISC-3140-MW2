
BEGIN{
	FS = ",";
	print("help")

}

{		
	a = 0;
	if($2 == $"Chevy"){
		print("help")
		if(a < 3){		
			printf("%5s %12s %12s %12s %12s %12s\n", $1, $2, $3, $4, $5, $6)
		a++;
		}
	}
}


END{	
}
