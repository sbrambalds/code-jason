/* Initial beliefs and rules */

/* Initial goals */
!start(1, 10).

/* Plans */

+!start(N, M) : N < M & N mod 2 = 0 <-
    .print("", N, " is even");
	!start(N + 1, M).
	
+!start(N, M) : N < M & N mod 2 = 1 <-
	.print("", N, " is odd");
    !start(N + 1, M).

+!start(M, M) <-
    if (M mod 2 = 0) { E = "is even" } else { E = "is odd" };
	.print("", M, " ", E).
