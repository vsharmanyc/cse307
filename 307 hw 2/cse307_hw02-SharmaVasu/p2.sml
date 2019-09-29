
(* PART A
Cycle List once function *)
fun CycleListOnce(list) = tl(list) @ [hd(list)]

(* PART B
Cycle List i times function *)
fun CycleList(i, list) = 
	if i = 0
		then list
	else
		CycleList(i - 1, CycleListOnce(list))






(* TESTING OF THE FUNCTIONS *)

(* returns a string of the numbers in a list *)
fun StringOfListNumbers(list) = 
	if List.length list = 1
		then Int.toString(hd(list))
	else
		Int.toString(hd(list)) ^ ", " ^ StringOfListNumbers(tl(list))

(* returns the string representation of a list of Numbers *)
fun StringOfList(list) = "[ " ^ StringOfListNumbers(list) ^ " ]" 

val list = [0,1,2,3]
val list2 = [22,45,3,9]

(* Testing  CycleListOnce Function*)
val _ = print("\nlist: " ^ StringOfList(list) ^ "\nCycleListOnce(list): " ^ StringOfList(CycleListOnce(list)) ^ "\n")
val _ = print("\nlist2: " ^ StringOfList(list2) ^ "\nCycleListOnce(list2): " ^ StringOfList(CycleListOnce(list2)) ^ "\n")

(* Testing CycleList Function *)
val _ = print("\nlist: " ^ StringOfList(list) ^ "\n")
val _ = print("CycleList(0, list): " ^ StringOfList(CycleList(0, list)) ^ "\n")
val _ = print("CycleList(1, list): " ^ StringOfList(CycleList(1, list)) ^ "\n")
val _ = print("CycleList(2, list): " ^ StringOfList(CycleList(2, list)) ^ "\n")
val _ = print("CycleList(3, list): " ^ StringOfList(CycleList(3, list)) ^ "\n")
val _ = print("CycleList(4, list): " ^ StringOfList(CycleList(4, list)) ^ "\n")
val _ = print("CycleList(5, list): " ^ StringOfList(CycleList(5, list)) ^ "\n")

val _ = print("\nlist2: " ^ StringOfList(list2) ^ "\n")
val _ = print("CycleList(0, list2): " ^ StringOfList(CycleList(0, list2)) ^ "\n")
val _ = print("CycleList(1, list2): " ^ StringOfList(CycleList(1, list2)) ^ "\n")
val _ = print("CycleList(2, list2): " ^ StringOfList(CycleList(2, list2)) ^ "\n")
val _ = print("CycleList(3, list2): " ^ StringOfList(CycleList(3, list2)) ^ "\n")
val _ = print("CycleList(4, list2): " ^ StringOfList(CycleList(4, list2)) ^ "\n")
val _ = print("CycleList(5, list2): " ^ StringOfList(CycleList(5, list2)) ^ "\n\n")