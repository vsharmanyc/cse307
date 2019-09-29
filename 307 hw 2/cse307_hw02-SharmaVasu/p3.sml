(* Duplicate Function *)
fun Duplicate(list) = 
	if list = []
		then list
	else 
		[hd(list)] @ [hd(list)] @ Duplicate(tl(list))





(* TESTING OF THE DUPLICATE FUNCTION *)

(* returns a string of the numbers in a list *)
fun StringOfListNumbers(list) = 
	if list = []
		then ""
	else if List.length list = 1
		then Int.toString(hd(list))
	else
		Int.toString(hd(list)) ^ ", " ^ StringOfListNumbers(tl(list))

(* returns a string of the strings in a list *)
fun StringOfListStrings(list) = 
	if list = []
		then ""
	else if List.length list = 1
		then "\"" ^ hd(list) ^ "\""
	else
		"\"" ^ hd(list) ^ "\"" ^ ", " ^ StringOfListStrings(tl(list))

(* returns a string of the lists in a list *)
fun StringOfListOfLists(list) = 
	if list = []
		then ""
	else if List.length list = 1
		then "[" ^ StringOfListStrings(hd(list)) ^ "]"
	else
		"[" ^ StringOfListStrings(hd(list)) ^ "], " ^ StringOfListOfLists(tl(list))


val list = [0,1,2,3]
val list2 = ["a","b","c"]
val list3 = [ ["hi", "there"], ["my", "name", "is"], ["vasu"], ["sharma"]]

val _ = print("\nlist: [" ^ StringOfListNumbers(list) ^ "]\nDuplicate(list): [" ^ StringOfListNumbers(Duplicate(list)) ^ "]\n")
val _ = print("\nlist2: [" ^ StringOfListStrings(list2) ^ "]\nDuplicate(list2): [" ^ StringOfListStrings(Duplicate(list2)) ^ "]\n")
val _ = print("\nlist3: [" ^ StringOfListOfLists(list3) ^ "]\nDuplicate(list3): [" ^ StringOfListOfLists(Duplicate(list3)) ^ "]\n\n")