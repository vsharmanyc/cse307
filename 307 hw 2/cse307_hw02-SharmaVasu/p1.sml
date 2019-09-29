(* Fibonacci function *)
fun Fibonacci(x) = 
	if x <= 1
		then x
	else Fibonacci(x - 1) + Fibonacci(x -2)

(* returns string of Fibonaccis from x to y *)
fun FibonacciFromXToY(x,y) = 
	if x = y
		then "Fibonacci(" ^ Int.toString(x) ^") : " ^ Int.toString(Fibonacci(x)) ^ "\n"
	else  "Fibonacci(" ^ Int.toString(x) ^") : " ^ Int.toString(Fibonacci(x)) ^ "\n" ^ FibonacciFromXToY(x + 1, y)

val _ = print(FibonacciFromXToY(0,44))

(* ANSWER: 
45 is the smallest value for which you get an "uncaught exception Overflow" raised*)