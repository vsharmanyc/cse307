fun F (functions, elements) = 
	if elements = []
		then []
	else
		[(hd(elements), hd(functions)(hd(elements)))] @ F(tl(functions),tl(elements))


(* TESTING *)

fun Increment(x) = x+1

fun Double(x) = 2*x

fun Triple(x) = 3*x

val functions = [Increment, Double, Triple]

val elements = [40, 10, 5]

val result = F(functions, elements)