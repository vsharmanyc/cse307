fun SplitF1(list) =
		if list = []
			then list
		else 
			[hd(list)] @ SplitF2(tl(list))
and 
	SplitF2(list) =
		if list = []
			then list
		else 
			[hd(list)] @ SplitF3(tl(list))
and
	SplitF3(list) =
		if list = []
			then list
		else 
			[hd(list)] @ SplitF1(tl(list))






(* TESTING *)

val list = [1,2,3,4,5,6,7,8,9]

(* returns a string of the numbers in a list *)
fun StringOfListNumbers(list) = 
	if list = []
		then ""
	else if List.length list = 1
		then Int.toString(hd(list))
	else
		Int.toString(hd(list)) ^ ", " ^ StringOfListNumbers(tl(list))

val _ = print("\nlist: [" ^ StringOfListNumbers(list) ^ "]\nSplitF1(list): [" ^ StringOfListNumbers(SplitF1(list)) ^ "]\n\n")
val _ = print("\nlist: [" ^ StringOfListNumbers(list) ^ "]\nSplitF2(list): [" ^ StringOfListNumbers(SplitF2(list)) ^ "]\n\n")
val _ = print("\nlist: [" ^ StringOfListNumbers(list) ^ "]\nSplitF3(list): [" ^ StringOfListNumbers(SplitF3(list)) ^ "]\n\n")